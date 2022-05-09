; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/trace.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.316 }
%union.anon.316 = type { %struct.anon.317 }
%struct.anon.317 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.318, %struct.trace_event, ptr, ptr, %union.anon.319, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.318 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.319 = type { ptr }
%union.anon.320 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.321 = type { %struct.bpf_raw_event_map }
%union.anon.322 = type { %struct.bpf_raw_event_map }
%union.anon.323 = type { %struct.bpf_raw_event_map }
%union.anon.324 = type { %struct.bpf_raw_event_map }
%union.anon.325 = type { %struct.bpf_raw_event_map }
%union.anon.326 = type { %struct.bpf_raw_event_map }
%union.anon.327 = type { %struct.bpf_raw_event_map }
%union.anon.328 = type { %struct.bpf_raw_event_map }
%union.anon.329 = type { %struct.bpf_raw_event_map }
%union.anon.330 = type { %struct.bpf_raw_event_map }
%union.anon.331 = type { %struct.bpf_raw_event_map }
%union.anon.332 = type { %struct.bpf_raw_event_map }
%union.anon.333 = type { %struct.bpf_raw_event_map }
%union.anon.334 = type { %struct.bpf_raw_event_map }
%union.anon.335 = type { %struct.bpf_raw_event_map }
%union.anon.336 = type { %struct.bpf_raw_event_map }
%union.anon.337 = type { %struct.bpf_raw_event_map }
%union.anon.338 = type { %struct.bpf_raw_event_map }
%union.anon.339 = type { %struct.bpf_raw_event_map }
%union.anon.340 = type { %struct.bpf_raw_event_map }
%union.anon.341 = type { %struct.bpf_raw_event_map }
%union.anon.342 = type { %struct.bpf_raw_event_map }
%union.anon.343 = type { %struct.bpf_raw_event_map }
%union.anon.344 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_irdma_create_listen = type { %struct.trace_entry, ptr, i32, i16, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.irdma_cm_info = type { ptr, i16, i16, [4 x i32], [4 x i32], i32, i16, i32, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_irdma_dec_refcnt_listen = type { %struct.trace_entry, ptr, i32, i32, i16, i8, ptr, [0 x i8] }
%struct.irdma_cm_listener = type { %struct.list_head, ptr, ptr, ptr, %struct.list_head, ptr, i32, %struct.refcount_struct, %struct.atomic_t, [4 x i32], i32, i32, i16, i16, [6 x i8], i8, i8, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.trace_event_raw_listener_template = type { %struct.trace_entry, ptr, i16, i16, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_irdma_negotiate_mpa_v2 = type { %struct.trace_entry, ptr, i16, i16, [0 x i8] }
%struct.irdma_cm_node = type { ptr, ptr, ptr, %struct.irdma_cm_tcp_context, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.callback_head, %struct.irdma_mpa_priv_info, ptr, %union.anon.294, %struct.irdma_kmem_info, ptr, %struct.hlist_node, %struct.completion, %struct.spinlock, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, [4 x i32], [4 x i32], i16, i16, i32, i32, i16, i16, i16, i16, i16, [512 x i8], [6 x i8], [6 x i8], i8, i8, i8 }
%struct.irdma_cm_tcp_context = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.irdma_mpa_priv_info = type { ptr, i32 }
%union.anon.294 = type { %struct.ietf_mpa_v2 }
%struct.ietf_mpa_v2 = type { [16 x i8], i8, i8, i16, %struct.ietf_rtr_msg, [0 x i8] }
%struct.ietf_rtr_msg = type { i16, i16 }
%struct.irdma_kmem_info = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.trace_event_raw_tos_template = type { %struct.trace_entry, ptr, i8, i8, [0 x i8] }
%struct.trace_event_raw_qhash_template = type { %struct.trace_entry, ptr, i16, i16, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_irdma_addr_resolve = type { %struct.trace_entry, ptr, i32, [0 x i8] }
%struct.trace_event_raw_irdma_send_cm_event = type { %struct.trace_entry, ptr, ptr, ptr, i32, i16, i16, i32, i8, i16, i32, i32, i32, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_irdma_send_cm_event_no_node = type { %struct.trace_entry, ptr, i32, i32, ptr, [0 x i8] }
%struct.trace_event_raw_cm_node_template = type { %struct.trace_entry, ptr, ptr, i32, i16, i16, i32, i8, i16, i32, i32, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_open_err_template = type { %struct.trace_entry, ptr, ptr, i32, i8, ptr, [0 x i8] }
%struct.trace_event_raw_cm_node_ah_template = type { %struct.trace_entry, ptr, ptr, ptr, i32, i16, i16, i32, i8, i16, i32, i32, i32, [0 x i8] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__tpstrtab_irdma_create_listen = internal constant [20 x i8] c"irdma_create_listen\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_create_listen = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_create_listen }, align 4
@__tracepoint_irdma_create_listen = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_create_listen, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_create_listen, ptr null, ptr @__traceiter_irdma_create_listen, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_create_listen = internal constant ptr @__tracepoint_irdma_create_listen, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_dec_refcnt_listen = internal constant [24 x i8] c"irdma_dec_refcnt_listen\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_dec_refcnt_listen = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_dec_refcnt_listen }, align 4
@__tracepoint_irdma_dec_refcnt_listen = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_dec_refcnt_listen, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_dec_refcnt_listen, ptr null, ptr @__traceiter_irdma_dec_refcnt_listen, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_dec_refcnt_listen = internal constant ptr @__tracepoint_irdma_dec_refcnt_listen, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_find_listener = internal constant [20 x i8] c"irdma_find_listener\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_find_listener = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_find_listener }, align 4
@__tracepoint_irdma_find_listener = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_find_listener, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_find_listener, ptr null, ptr @__traceiter_irdma_find_listener, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_find_listener = internal constant ptr @__tracepoint_irdma_find_listener, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_del_multiple_qhash = internal constant [25 x i8] c"irdma_del_multiple_qhash\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_del_multiple_qhash = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_del_multiple_qhash }, align 4
@__tracepoint_irdma_del_multiple_qhash = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_del_multiple_qhash, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_del_multiple_qhash, ptr null, ptr @__traceiter_irdma_del_multiple_qhash, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_del_multiple_qhash = internal constant ptr @__tracepoint_irdma_del_multiple_qhash, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_negotiate_mpa_v2 = internal constant [23 x i8] c"irdma_negotiate_mpa_v2\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_negotiate_mpa_v2 = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_negotiate_mpa_v2 }, align 4
@__tracepoint_irdma_negotiate_mpa_v2 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_negotiate_mpa_v2, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_negotiate_mpa_v2, ptr null, ptr @__traceiter_irdma_negotiate_mpa_v2, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_negotiate_mpa_v2 = internal constant ptr @__tracepoint_irdma_negotiate_mpa_v2, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_listener_tos = internal constant [19 x i8] c"irdma_listener_tos\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_listener_tos = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_listener_tos }, align 4
@__tracepoint_irdma_listener_tos = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_listener_tos, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_listener_tos, ptr null, ptr @__traceiter_irdma_listener_tos, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_listener_tos = internal constant ptr @__tracepoint_irdma_listener_tos, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_dcb_tos = internal constant [14 x i8] c"irdma_dcb_tos\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_dcb_tos = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_dcb_tos }, align 4
@__tracepoint_irdma_dcb_tos = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_dcb_tos, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_dcb_tos, ptr null, ptr @__traceiter_irdma_dcb_tos, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_dcb_tos = internal constant ptr @__tracepoint_irdma_dcb_tos, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_add_mqh_6 = internal constant [16 x i8] c"irdma_add_mqh_6\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_add_mqh_6 = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_add_mqh_6 }, align 4
@__tracepoint_irdma_add_mqh_6 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_add_mqh_6, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_add_mqh_6, ptr null, ptr @__traceiter_irdma_add_mqh_6, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_add_mqh_6 = internal constant ptr @__tracepoint_irdma_add_mqh_6, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_add_mqh_4 = internal constant [16 x i8] c"irdma_add_mqh_4\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_add_mqh_4 = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_add_mqh_4 }, align 4
@__tracepoint_irdma_add_mqh_4 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_add_mqh_4, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_add_mqh_4, ptr null, ptr @__traceiter_irdma_add_mqh_4, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_add_mqh_4 = internal constant ptr @__tracepoint_irdma_add_mqh_4, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_addr_resolve = internal constant [19 x i8] c"irdma_addr_resolve\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_addr_resolve = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_addr_resolve }, align 4
@__tracepoint_irdma_addr_resolve = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_addr_resolve, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_addr_resolve, ptr null, ptr @__traceiter_irdma_addr_resolve, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_addr_resolve = internal constant ptr @__tracepoint_irdma_addr_resolve, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_send_cm_event = internal constant [20 x i8] c"irdma_send_cm_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_send_cm_event = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_send_cm_event }, align 4
@__tracepoint_irdma_send_cm_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_send_cm_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_send_cm_event, ptr null, ptr @__traceiter_irdma_send_cm_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_send_cm_event = internal constant ptr @__tracepoint_irdma_send_cm_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_send_cm_event_no_node = internal constant [28 x i8] c"irdma_send_cm_event_no_node\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_send_cm_event_no_node = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_send_cm_event_no_node }, align 4
@__tracepoint_irdma_send_cm_event_no_node = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_send_cm_event_no_node, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_send_cm_event_no_node, ptr null, ptr @__traceiter_irdma_send_cm_event_no_node, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_send_cm_event_no_node = internal constant ptr @__tracepoint_irdma_send_cm_event_no_node, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_create_event = internal constant [19 x i8] c"irdma_create_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_create_event = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_create_event }, align 4
@__tracepoint_irdma_create_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_create_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_create_event, ptr null, ptr @__traceiter_irdma_create_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_create_event = internal constant ptr @__tracepoint_irdma_create_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_accept = internal constant [13 x i8] c"irdma_accept\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_accept = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_accept }, align 4
@__tracepoint_irdma_accept = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_accept, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_accept, ptr null, ptr @__traceiter_irdma_accept, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_accept = internal constant ptr @__tracepoint_irdma_accept, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_connect = internal constant [14 x i8] c"irdma_connect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_connect = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_connect }, align 4
@__tracepoint_irdma_connect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_connect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_connect, ptr null, ptr @__traceiter_irdma_connect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_connect = internal constant ptr @__tracepoint_irdma_connect, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_reject = internal constant [13 x i8] c"irdma_reject\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_reject = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_reject }, align 4
@__tracepoint_irdma_reject = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_reject, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_reject, ptr null, ptr @__traceiter_irdma_reject, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_reject = internal constant ptr @__tracepoint_irdma_reject, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_find_node = internal constant [16 x i8] c"irdma_find_node\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_find_node = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_find_node }, align 4
@__tracepoint_irdma_find_node = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_find_node, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_find_node, ptr null, ptr @__traceiter_irdma_find_node, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_find_node = internal constant ptr @__tracepoint_irdma_find_node, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_send_reset = internal constant [17 x i8] c"irdma_send_reset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_send_reset = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_send_reset }, align 4
@__tracepoint_irdma_send_reset = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_send_reset, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_send_reset, ptr null, ptr @__traceiter_irdma_send_reset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_send_reset = internal constant ptr @__tracepoint_irdma_send_reset, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_rem_ref_cm_node = internal constant [22 x i8] c"irdma_rem_ref_cm_node\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_rem_ref_cm_node = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_rem_ref_cm_node }, align 4
@__tracepoint_irdma_rem_ref_cm_node = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_rem_ref_cm_node, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_rem_ref_cm_node, ptr null, ptr @__traceiter_irdma_rem_ref_cm_node, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_rem_ref_cm_node = internal constant ptr @__tracepoint_irdma_rem_ref_cm_node, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_cm_event_handler = internal constant [23 x i8] c"irdma_cm_event_handler\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_cm_event_handler = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_cm_event_handler }, align 4
@__tracepoint_irdma_cm_event_handler = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_cm_event_handler, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_cm_event_handler, ptr null, ptr @__traceiter_irdma_cm_event_handler, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_cm_event_handler = internal constant ptr @__tracepoint_irdma_cm_event_handler, section "__tracepoints_ptrs", align 4
@__tpstrtab_open_err_template = internal constant [18 x i8] c"open_err_template\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_open_err_template = dso_local global %struct.static_call_key { ptr @__traceiter_open_err_template }, align 4
@__tracepoint_open_err_template = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_open_err_template, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_open_err_template, ptr null, ptr @__traceiter_open_err_template, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_open_err_template = internal constant ptr @__tracepoint_open_err_template, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_active_open_err = internal constant [22 x i8] c"irdma_active_open_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_active_open_err = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_active_open_err }, align 4
@__tracepoint_irdma_active_open_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_active_open_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_active_open_err, ptr null, ptr @__traceiter_irdma_active_open_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_active_open_err = internal constant ptr @__tracepoint_irdma_active_open_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_passive_open_err = internal constant [23 x i8] c"irdma_passive_open_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_passive_open_err = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_passive_open_err }, align 4
@__tracepoint_irdma_passive_open_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_passive_open_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_passive_open_err, ptr null, ptr @__traceiter_irdma_passive_open_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_passive_open_err = internal constant ptr @__tracepoint_irdma_passive_open_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_cm_free_ah = internal constant [17 x i8] c"irdma_cm_free_ah\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_cm_free_ah = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_cm_free_ah }, align 4
@__tracepoint_irdma_cm_free_ah = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_cm_free_ah, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_cm_free_ah, ptr null, ptr @__traceiter_irdma_cm_free_ah, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_cm_free_ah = internal constant ptr @__tracepoint_irdma_cm_free_ah, section "__tracepoints_ptrs", align 4
@__tpstrtab_irdma_create_ah = internal constant [16 x i8] c"irdma_create_ah\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irdma_create_ah = dso_local global %struct.static_call_key { ptr @__traceiter_irdma_create_ah }, align 4
@__tracepoint_irdma_create_ah = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irdma_create_ah, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irdma_create_ah, ptr null, ptr @__traceiter_irdma_create_ah, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irdma_create_ah = internal constant ptr @__tracepoint_irdma_create_ah, section "__tracepoints_ptrs", align 4
@str__irdma_cm__trace_system_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irdma_cm\00", [23 x i8] zeroinitializer }, align 32
@trace_event_fields_irdma_create_listen = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.39, %union.anon.316 { %struct.anon.317 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.44, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.316 { %struct.anon.317 { ptr @.str.46, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_irdma_create_listen = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_irdma_create_listen, ptr @perf_trace_irdma_create_listen, ptr @trace_event_reg, ptr @trace_event_fields_irdma_create_listen, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_irdma_create_listen, i64 24), ptr getelementptr (i8, ptr @event_class_irdma_create_listen, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_irdma_create_listen = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_irdma_create_listen, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_irdma_create_listen = internal global { [101 x i8], [59 x i8] } { [101 x i8] c"\22iwdev=%p  loc: %s\22, REC->iwdev, print_ip_addr(p, __get_dynamic_array(laddr), REC->lport, REC->ipv4)\00", [59 x i8] zeroinitializer }, align 32
@event_irdma_create_listen = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_irdma_create_listen, %union.anon.318 { ptr @__tracepoint_irdma_create_listen }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_irdma_create_listen }, ptr @print_fmt_irdma_create_listen, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_create_listen = internal global ptr @event_irdma_create_listen, section "_ftrace_events", align 4
@trace_event_fields_irdma_dec_refcnt_listen = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.39, %union.anon.316 { %struct.anon.317 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.48, %union.anon.316 { %struct.anon.317 { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.44, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.316 { %struct.anon.317 { ptr @.str.46, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.316 { %struct.anon.317 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_irdma_dec_refcnt_listen = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_irdma_dec_refcnt_listen, ptr @perf_trace_irdma_dec_refcnt_listen, ptr @trace_event_reg, ptr @trace_event_fields_irdma_dec_refcnt_listen, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_irdma_dec_refcnt_listen, i64 24), ptr getelementptr (i8, ptr @event_class_irdma_dec_refcnt_listen, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_irdma_dec_refcnt_listen = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_irdma_dec_refcnt_listen, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_irdma_dec_refcnt_listen = internal global { [126 x i8], [34 x i8] } { [126 x i8] c"\22iwdev=%p  caller=%pS  loc: %s\22, REC->iwdev, REC->caller, print_ip_addr(p, __get_dynamic_array(laddr), REC->lport, REC->ipv4)\00", [34 x i8] zeroinitializer }, align 32
@event_irdma_dec_refcnt_listen = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_irdma_dec_refcnt_listen, %union.anon.318 { ptr @__tracepoint_irdma_dec_refcnt_listen }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_irdma_dec_refcnt_listen }, ptr @print_fmt_irdma_dec_refcnt_listen, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_dec_refcnt_listen = internal global ptr @event_irdma_dec_refcnt_listen, section "_ftrace_events", align 4
@trace_event_fields_listener_template = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.39, %union.anon.316 { %struct.anon.317 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.44, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.53, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.316 { %struct.anon.317 { ptr @.str.46, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.316 { %struct.anon.317 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_listener_template = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_listener_template, ptr @perf_trace_listener_template, ptr @trace_event_reg, ptr @trace_event_fields_listener_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_listener_template, i64 24), ptr getelementptr (i8, ptr @event_class_listener_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_listener_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_listener_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_listener_template = internal global { [124 x i8], [36 x i8] } { [124 x i8] c"\22iwdev=%p  vlan=%d  loc: %s\22, REC->iwdev, REC->vlan_id, print_ip_addr(p, __get_dynamic_array(laddr), REC->lport, REC->ipv4)\00", [36 x i8] zeroinitializer }, align 32
@event_irdma_find_listener = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_listener_template, %union.anon.318 { ptr @__tracepoint_irdma_find_listener }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_listener_template }, ptr @print_fmt_listener_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_find_listener = internal global ptr @event_irdma_find_listener, section "_ftrace_events", align 4
@event_irdma_del_multiple_qhash = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_listener_template, %union.anon.318 { ptr @__tracepoint_irdma_del_multiple_qhash }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_listener_template }, ptr @print_fmt_listener_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_del_multiple_qhash = internal global ptr @event_irdma_del_multiple_qhash, section "_ftrace_events", align 4
@trace_event_fields_irdma_negotiate_mpa_v2 = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.57, %union.anon.316 { %struct.anon.317 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.59, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.60, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_irdma_negotiate_mpa_v2 = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_irdma_negotiate_mpa_v2, ptr @perf_trace_irdma_negotiate_mpa_v2, ptr @trace_event_reg, ptr @trace_event_fields_irdma_negotiate_mpa_v2, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_irdma_negotiate_mpa_v2, i64 24), ptr getelementptr (i8, ptr @event_class_irdma_negotiate_mpa_v2, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_irdma_negotiate_mpa_v2 = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_irdma_negotiate_mpa_v2, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_irdma_negotiate_mpa_v2 = internal global { [93 x i8], [35 x i8] } { [93 x i8] c"\22MPVA2 Negotiated cm_node=%p ORD:[%d], IRD:[%d]\22, REC->cm_node, REC->ord_size, REC->ird_size\00", [35 x i8] zeroinitializer }, align 32
@event_irdma_negotiate_mpa_v2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_irdma_negotiate_mpa_v2, %union.anon.318 { ptr @__tracepoint_irdma_negotiate_mpa_v2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_irdma_negotiate_mpa_v2 }, ptr @print_fmt_irdma_negotiate_mpa_v2, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_negotiate_mpa_v2 = internal global ptr @event_irdma_negotiate_mpa_v2, section "_ftrace_events", align 4
@trace_event_fields_tos_template = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.39, %union.anon.316 { %struct.anon.317 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.62, %union.anon.316 { %struct.anon.317 { ptr @.str.63, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.62, %union.anon.316 { %struct.anon.317 { ptr @.str.64, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_tos_template = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_tos_template, ptr @perf_trace_tos_template, ptr @trace_event_reg, ptr @trace_event_fields_tos_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tos_template, i64 24), ptr getelementptr (i8, ptr @event_class_tos_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tos_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tos_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tos_template = internal global { [67 x i8], [61 x i8] } { [67 x i8] c"\22iwdev=%p  TOS:[%d]  UP:[%d]\22, REC->iwdev, REC->tos, REC->user_pri\00", [61 x i8] zeroinitializer }, align 32
@event_irdma_listener_tos = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tos_template, %union.anon.318 { ptr @__tracepoint_irdma_listener_tos }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tos_template }, ptr @print_fmt_tos_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_listener_tos = internal global ptr @event_irdma_listener_tos, section "_ftrace_events", align 4
@event_irdma_dcb_tos = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tos_template, %union.anon.318 { ptr @__tracepoint_irdma_dcb_tos }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tos_template }, ptr @print_fmt_tos_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_dcb_tos = internal global ptr @event_irdma_dcb_tos, section "_ftrace_events", align 4
@trace_event_fields_qhash_template = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.39, %union.anon.316 { %struct.anon.317 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.44, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.53, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.316 { %struct.anon.317 { ptr @.str.46, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.66, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_qhash_template = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_qhash_template, ptr @perf_trace_qhash_template, ptr @trace_event_reg, ptr @trace_event_fields_qhash_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_qhash_template, i64 24), ptr getelementptr (i8, ptr @event_class_qhash_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_qhash_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_qhash_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_qhash_template = internal global { [161 x i8], [63 x i8] } { [161 x i8] c"\22iwdev=%p  vlan=%d  MAC=%6phC  loc: %s\22, REC->iwdev, REC->vlan_id, __get_dynamic_array(mac), print_ip_addr(p, __get_dynamic_array(laddr), REC->lport, REC->ipv4)\00", [63 x i8] zeroinitializer }, align 32
@event_irdma_add_mqh_6 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_qhash_template, %union.anon.318 { ptr @__tracepoint_irdma_add_mqh_6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_qhash_template }, ptr @print_fmt_qhash_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_add_mqh_6 = internal global ptr @event_irdma_add_mqh_6, section "_ftrace_events", align 4
@event_irdma_add_mqh_4 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_qhash_template, %union.anon.318 { ptr @__tracepoint_irdma_add_mqh_4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_qhash_template }, ptr @print_fmt_qhash_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_add_mqh_4 = internal global ptr @event_irdma_add_mqh_4, section "_ftrace_events", align 4
@trace_event_fields_irdma_addr_resolve = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.39, %union.anon.316 { %struct.anon.317 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.316 { %struct.anon.317 { ptr @.str.66, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_irdma_addr_resolve = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_irdma_addr_resolve, ptr @perf_trace_irdma_addr_resolve, ptr @trace_event_reg, ptr @trace_event_fields_irdma_addr_resolve, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_irdma_addr_resolve, i64 24), ptr getelementptr (i8, ptr @event_class_irdma_addr_resolve, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_irdma_addr_resolve = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_irdma_addr_resolve, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_irdma_addr_resolve = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\22iwdev=%p   MAC=%6phC\22, REC->iwdev, __get_dynamic_array(mac)\00", [35 x i8] zeroinitializer }, align 32
@event_irdma_addr_resolve = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_irdma_addr_resolve, %union.anon.318 { ptr @__tracepoint_irdma_addr_resolve }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_irdma_addr_resolve }, ptr @print_fmt_irdma_addr_resolve, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_addr_resolve = internal global ptr @event_irdma_addr_resolve, section "_ftrace_events", align 4
@trace_event_fields_irdma_send_cm_event = internal global { [16 x %struct.trace_event_fields], [96 x i8] } { [16 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.39, %union.anon.316 { %struct.anon.317 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.57, %union.anon.316 { %struct.anon.317 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.70, %union.anon.316 { %struct.anon.317 { ptr @.str.71, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.48, %union.anon.316 { %struct.anon.317 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.44, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.73, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.316 { %struct.anon.317 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.316 { %struct.anon.317 { ptr @.str.46, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.53, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.75, %union.anon.316 { %struct.anon.317 { ptr @.str.76, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.77, %union.anon.316 { %struct.anon.317 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.75, %union.anon.316 { %struct.anon.317 { ptr @.str.79, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.316 { %struct.anon.317 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.80, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [96 x i8] zeroinitializer }, align 32
@event_class_irdma_send_cm_event = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_irdma_send_cm_event, ptr @perf_trace_irdma_send_cm_event, ptr @trace_event_reg, ptr @trace_event_fields_irdma_send_cm_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_irdma_send_cm_event, i64 24), ptr getelementptr (i8, ptr @event_class_irdma_send_cm_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_irdma_send_cm_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_irdma_send_cm_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_irdma_send_cm_event = internal global { [432 x i8], [112 x i8] } { [432 x i8] c"\22iwdev=%p  caller=%pS  cm_id=%p  node=%p  refcnt=%d  vlan_id=%d  accel=%d  state=%s  event_type=%s  status=%d  loc: %s  rem: %s\22, REC->iwdev, REC->caller, REC->cm_id, REC->cm_node, REC->refcount, REC->vlan_id, REC->accel, parse_cm_state(REC->state), parse_iw_event_type(REC->type), REC->status, print_ip_addr(p, __get_dynamic_array(laddr), REC->lport, REC->ipv4), print_ip_addr(p, __get_dynamic_array(raddr), REC->rport, REC->ipv4)\00", [112 x i8] zeroinitializer }, align 32
@event_irdma_send_cm_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_irdma_send_cm_event, %union.anon.318 { ptr @__tracepoint_irdma_send_cm_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_irdma_send_cm_event }, ptr @print_fmt_irdma_send_cm_event, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_send_cm_event = internal global ptr @event_irdma_send_cm_event, section "_ftrace_events", align 4
@trace_event_fields_irdma_send_cm_event_no_node = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.70, %union.anon.316 { %struct.anon.317 { ptr @.str.71, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.77, %union.anon.316 { %struct.anon.317 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.75, %union.anon.316 { %struct.anon.317 { ptr @.str.79, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.316 { %struct.anon.317 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_irdma_send_cm_event_no_node = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_irdma_send_cm_event_no_node, ptr @perf_trace_irdma_send_cm_event_no_node, ptr @trace_event_reg, ptr @trace_event_fields_irdma_send_cm_event_no_node, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_irdma_send_cm_event_no_node, i64 24), ptr getelementptr (i8, ptr @event_class_irdma_send_cm_event_no_node, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_irdma_send_cm_event_no_node = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_irdma_send_cm_event_no_node, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_irdma_send_cm_event_no_node = internal global { [119 x i8], [41 x i8] } { [119 x i8] c"\22cm_id=%p  caller=%pS  event_type=%s  status=%d\22, REC->cm_id, REC->caller, parse_iw_event_type(REC->type), REC->status\00", [41 x i8] zeroinitializer }, align 32
@event_irdma_send_cm_event_no_node = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_irdma_send_cm_event_no_node, %union.anon.318 { ptr @__tracepoint_irdma_send_cm_event_no_node }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_irdma_send_cm_event_no_node }, ptr @print_fmt_irdma_send_cm_event_no_node, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_send_cm_event_no_node = internal global ptr @event_irdma_send_cm_event_no_node, section "_ftrace_events", align 4
@trace_event_fields_cm_node_template = internal global { [14 x %struct.trace_event_fields], [80 x i8] } { [14 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.39, %union.anon.316 { %struct.anon.317 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.57, %union.anon.316 { %struct.anon.317 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.48, %union.anon.316 { %struct.anon.317 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.44, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.73, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.316 { %struct.anon.317 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.316 { %struct.anon.317 { ptr @.str.46, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.53, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.75, %union.anon.316 { %struct.anon.317 { ptr @.str.76, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.83, %union.anon.316 { %struct.anon.317 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.316 { %struct.anon.317 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.80, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [80 x i8] zeroinitializer }, align 32
@event_class_cm_node_template = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_cm_node_template, ptr @perf_trace_cm_node_template, ptr @trace_event_reg, ptr @trace_event_fields_cm_node_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cm_node_template, i64 24), ptr getelementptr (i8, ptr @event_class_cm_node_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cm_node_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cm_node_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cm_node_template = internal global { [386 x i8], [126 x i8] } { [386 x i8] c"\22iwdev=%p  caller=%pS  node=%p  refcnt=%d  vlan_id=%d  accel=%d  state=%s  event_type=%s  loc: %s  rem: %s\22, REC->iwdev, REC->caller, REC->cm_node, REC->refcount, REC->vlan_id, REC->accel, parse_cm_state(REC->state), parse_cm_event_type(REC->type), print_ip_addr(p, __get_dynamic_array(laddr), REC->lport, REC->ipv4), print_ip_addr(p, __get_dynamic_array(raddr), REC->rport, REC->ipv4)\00", [126 x i8] zeroinitializer }, align 32
@event_irdma_create_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_node_template, %union.anon.318 { ptr @__tracepoint_irdma_create_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_node_template }, ptr @print_fmt_cm_node_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_create_event = internal global ptr @event_irdma_create_event, section "_ftrace_events", align 4
@event_irdma_accept = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_node_template, %union.anon.318 { ptr @__tracepoint_irdma_accept }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_node_template }, ptr @print_fmt_cm_node_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_accept = internal global ptr @event_irdma_accept, section "_ftrace_events", align 4
@event_irdma_connect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_node_template, %union.anon.318 { ptr @__tracepoint_irdma_connect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_node_template }, ptr @print_fmt_cm_node_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_connect = internal global ptr @event_irdma_connect, section "_ftrace_events", align 4
@event_irdma_reject = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_node_template, %union.anon.318 { ptr @__tracepoint_irdma_reject }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_node_template }, ptr @print_fmt_cm_node_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_reject = internal global ptr @event_irdma_reject, section "_ftrace_events", align 4
@event_irdma_find_node = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_node_template, %union.anon.318 { ptr @__tracepoint_irdma_find_node }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_node_template }, ptr @print_fmt_cm_node_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_find_node = internal global ptr @event_irdma_find_node, section "_ftrace_events", align 4
@event_irdma_send_reset = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_node_template, %union.anon.318 { ptr @__tracepoint_irdma_send_reset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_node_template }, ptr @print_fmt_cm_node_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_send_reset = internal global ptr @event_irdma_send_reset, section "_ftrace_events", align 4
@event_irdma_rem_ref_cm_node = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_node_template, %union.anon.318 { ptr @__tracepoint_irdma_rem_ref_cm_node }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_node_template }, ptr @print_fmt_cm_node_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_rem_ref_cm_node = internal global ptr @event_irdma_rem_ref_cm_node, section "_ftrace_events", align 4
@event_irdma_cm_event_handler = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_node_template, %union.anon.318 { ptr @__tracepoint_irdma_cm_event_handler }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_node_template }, ptr @print_fmt_cm_node_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_cm_event_handler = internal global ptr @event_irdma_cm_event_handler, section "_ftrace_events", align 4
@trace_event_fields_open_err_template = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.39, %union.anon.316 { %struct.anon.317 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.57, %union.anon.316 { %struct.anon.317 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.316 { %struct.anon.317 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.316 { %struct.anon.317 { ptr @.str.85, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.316 { %struct.anon.317 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_open_err_template = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_open_err_template, ptr @perf_trace_open_err_template, ptr @trace_event_reg, ptr @trace_event_fields_open_err_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_open_err_template, i64 24), ptr getelementptr (i8, ptr @event_class_open_err_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_open_err_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_open_err_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_open_err_template = internal global { [129 x i8], [63 x i8] } { [129 x i8] c"\22iwdev=%p  caller=%pS  node%p reset=%d  state=%s\22, REC->iwdev, REC->caller, REC->cm_node, REC->reset, parse_cm_state(REC->state)\00", [63 x i8] zeroinitializer }, align 32
@event_open_err_template = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_open_err_template, %union.anon.318 { ptr @__tracepoint_open_err_template }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_open_err_template }, ptr @print_fmt_open_err_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_open_err_template = internal global ptr @event_open_err_template, section "_ftrace_events", align 4
@event_irdma_active_open_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_open_err_template, %union.anon.318 { ptr @__tracepoint_irdma_active_open_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_open_err_template }, ptr @print_fmt_open_err_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_active_open_err = internal global ptr @event_irdma_active_open_err, section "_ftrace_events", align 4
@event_irdma_passive_open_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_open_err_template, %union.anon.318 { ptr @__tracepoint_irdma_passive_open_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_open_err_template }, ptr @print_fmt_open_err_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_passive_open_err = internal global ptr @event_irdma_passive_open_err, section "_ftrace_events", align 4
@trace_event_fields_cm_node_ah_template = internal global { [13 x %struct.trace_event_fields], [72 x i8] } { [13 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.39, %union.anon.316 { %struct.anon.317 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.57, %union.anon.316 { %struct.anon.317 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.87, %union.anon.316 { %struct.anon.317 { ptr @.str.88, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.48, %union.anon.316 { %struct.anon.317 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.44, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.73, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.74, %union.anon.316 { %struct.anon.317 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.316 { %struct.anon.317 { ptr @.str.46, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.316 { %struct.anon.317 { ptr @.str.53, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.75, %union.anon.316 { %struct.anon.317 { ptr @.str.76, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.316 { %struct.anon.317 { ptr @.str.80, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [72 x i8] zeroinitializer }, align 32
@event_class_cm_node_ah_template = internal global %struct.trace_event_class { ptr @str__irdma_cm__trace_system_name, ptr @trace_event_raw_event_cm_node_ah_template, ptr @perf_trace_cm_node_ah_template, ptr @trace_event_reg, ptr @trace_event_fields_cm_node_ah_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cm_node_ah_template, i64 24), ptr getelementptr (i8, ptr @event_class_cm_node_ah_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cm_node_ah_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cm_node_ah_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cm_node_ah_template = internal global { [329 x i8], [87 x i8] } { [329 x i8] c"\22iwdev=%p  node=%p  ah=%p  refcnt=%d  vlan_id=%d  accel=%d  state=%s loc: %s  rem: %s\22, REC->iwdev, REC->cm_node, REC->ah, REC->refcount, REC->vlan_id, REC->accel, parse_cm_state(REC->state), print_ip_addr(p, __get_dynamic_array(laddr), REC->lport, REC->ipv4), print_ip_addr(p, __get_dynamic_array(raddr), REC->rport, REC->ipv4)\00", [87 x i8] zeroinitializer }, align 32
@event_irdma_cm_free_ah = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_node_ah_template, %union.anon.318 { ptr @__tracepoint_irdma_cm_free_ah }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_node_ah_template }, ptr @print_fmt_cm_node_ah_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_cm_free_ah = internal global ptr @event_irdma_cm_free_ah, section "_ftrace_events", align 4
@event_irdma_create_ah = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cm_node_ah_template, %union.anon.318 { ptr @__tracepoint_irdma_create_ah }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cm_node_ah_template }, ptr @print_fmt_cm_node_ah_template, ptr null, %union.anon.319 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irdma_create_ah = internal global ptr @event_irdma_create_ah, section "_ftrace_events", align 4
@__bpf_trace_tp_map_irdma_create_listen = internal global %union.anon.320 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_create_listen, ptr @__bpf_trace_irdma_create_listen, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_dec_refcnt_listen = internal global %union.anon.321 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_dec_refcnt_listen, ptr @__bpf_trace_irdma_dec_refcnt_listen, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_find_listener = internal global %union.anon.322 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_find_listener, ptr @__bpf_trace_listener_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_del_multiple_qhash = internal global %union.anon.323 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_del_multiple_qhash, ptr @__bpf_trace_listener_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_negotiate_mpa_v2 = internal global %union.anon.324 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_negotiate_mpa_v2, ptr @__bpf_trace_irdma_negotiate_mpa_v2, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_listener_tos = internal global %union.anon.325 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_listener_tos, ptr @__bpf_trace_tos_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_dcb_tos = internal global %union.anon.326 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_dcb_tos, ptr @__bpf_trace_tos_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_add_mqh_6 = internal global %union.anon.327 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_add_mqh_6, ptr @__bpf_trace_qhash_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_add_mqh_4 = internal global %union.anon.328 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_add_mqh_4, ptr @__bpf_trace_qhash_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_addr_resolve = internal global %union.anon.329 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_addr_resolve, ptr @__bpf_trace_irdma_addr_resolve, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_send_cm_event = internal global %union.anon.330 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_send_cm_event, ptr @__bpf_trace_irdma_send_cm_event, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_send_cm_event_no_node = internal global %union.anon.331 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_send_cm_event_no_node, ptr @__bpf_trace_irdma_send_cm_event_no_node, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_create_event = internal global %union.anon.332 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_create_event, ptr @__bpf_trace_cm_node_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_accept = internal global %union.anon.333 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_accept, ptr @__bpf_trace_cm_node_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_connect = internal global %union.anon.334 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_connect, ptr @__bpf_trace_cm_node_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_reject = internal global %union.anon.335 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_reject, ptr @__bpf_trace_cm_node_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_find_node = internal global %union.anon.336 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_find_node, ptr @__bpf_trace_cm_node_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_send_reset = internal global %union.anon.337 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_send_reset, ptr @__bpf_trace_cm_node_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_rem_ref_cm_node = internal global %union.anon.338 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_rem_ref_cm_node, ptr @__bpf_trace_cm_node_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_cm_event_handler = internal global %union.anon.339 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_cm_event_handler, ptr @__bpf_trace_cm_node_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_open_err_template = internal global %union.anon.340 { %struct.bpf_raw_event_map { ptr @__tracepoint_open_err_template, ptr @__bpf_trace_open_err_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_active_open_err = internal global %union.anon.341 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_active_open_err, ptr @__bpf_trace_open_err_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_passive_open_err = internal global %union.anon.342 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_passive_open_err, ptr @__bpf_trace_open_err_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_cm_free_ah = internal global %union.anon.343 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_cm_free_ah, ptr @__bpf_trace_cm_node_ah_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irdma_create_ah = internal global %union.anon.344 { %struct.bpf_raw_event_map { ptr @__tracepoint_irdma_create_ah, ptr @__bpf_trace_cm_node_ah_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%pI4:%d\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%pI6:%d\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IwRequest\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IwReply\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IwEstablished\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IwDisconnect\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IwClose\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CmEstablished\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CmMPA_REQ\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CmMPA_CONNECT\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CmMPA_ACCEPT\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CmMPA_REJECT\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CmMPA_ESTABLISHED\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CmConnected\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CmReset\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CmAborted\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INITED\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LISTENING\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYN_RCVD\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYN_SENT\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ONE_SIDE_ESTABLISHED\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ESTABLISHED\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ACCEPTING\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MPAREQ_SENT\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MPAREQ_RCVD\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MPAREJ_RECVD\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OFFLOADED\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FIN_WAIT1\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FIN_WAIT2\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLOSE_WAIT\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TIME_WAIT\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LAST_ACK\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLOSING\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LISTENER_DESTROYED\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLOSED\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Bad state\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"struct irdma_device *\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iwdev\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__data_loc u32[]\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"laddr\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lport\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv4\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iwdev=%p  loc: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refcnt\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"caller\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iwdev=%p  caller=%pS  loc: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vlan_id\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enum irdma_cm_listener_state\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iwdev=%p  vlan=%d  loc: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"struct irdma_cm_node *\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cm_node\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ord_size\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ird_size\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MPVA2 Negotiated cm_node=%p ORD:[%d], IRD:[%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tos\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"user_pri\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iwdev=%p  TOS:[%d]  UP:[%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iwdev=%p  vlan=%d  MAC=%6phC  loc: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__data_loc u8[]\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iwdev=%p   MAC=%6phC\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct iw_cm_id *\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cm_id\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"refcount\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rport\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enum irdma_cm_node_state\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"accel\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enum iw_cm_event_type\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raddr\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"iwdev=%p  caller=%pS  cm_id=%p  node=%p  refcnt=%d  vlan_id=%d  accel=%d  state=%s  event_type=%s  status=%d  loc: %s  rem: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cm_id=%p  caller=%pS  event_type=%s  status=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enum irdma_cm_event_type\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"iwdev=%p  caller=%pS  node=%p  refcnt=%d  vlan_id=%d  accel=%d  state=%s  event_type=%s  loc: %s  rem: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"iwdev=%p  caller=%pS  node%p reset=%d  state=%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct irdma_sc_ah *\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ah\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"iwdev=%p  node=%p  ah=%p  refcnt=%d  vlan_id=%d  accel=%d  state=%s loc: %s  rem: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@switch.table.parse_iw_event_type = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [44 x i8] zeroinitializer }, align 32
@switch.table.parse_cm_event_type = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.17, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [56 x i8] zeroinitializer }, align 32
@switch.table.parse_cm_state = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [48 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_irdma_send_cm_event = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [48 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_irdma_send_cm_event.90 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [44 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_irdma_send_cm_event_no_node = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [44 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_cm_node_template = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [48 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_cm_node_template.91 = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.17, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [56 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_open_err_template = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [48 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_cm_node_ah_template = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.92 = private unnamed_addr constant [33 x i8] c"str__irdma_cm__trace_system_name\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 36, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [39 x i8] c"trace_event_fields_irdma_create_listen\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_irdma_create_listen\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [30 x i8] c"print_fmt_irdma_create_listen\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"event_irdma_create_listen\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [43 x i8] c"trace_event_fields_irdma_dec_refcnt_listen\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_irdma_dec_refcnt_listen\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [34 x i8] c"print_fmt_irdma_dec_refcnt_listen\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [30 x i8] c"event_irdma_dec_refcnt_listen\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [37 x i8] c"trace_event_fields_listener_template\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_listener_template\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"print_fmt_listener_template\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"event_irdma_find_listener\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 92, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"event_irdma_del_multiple_qhash\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 96, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [42 x i8] c"trace_event_fields_irdma_negotiate_mpa_v2\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_irdma_negotiate_mpa_v2\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [33 x i8] c"print_fmt_irdma_negotiate_mpa_v2\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [29 x i8] c"event_irdma_negotiate_mpa_v2\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [32 x i8] c"trace_event_fields_tos_template\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_tos_template\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [23 x i8] c"print_fmt_tos_template\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [25 x i8] c"event_irdma_listener_tos\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 136, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"event_irdma_dcb_tos\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 140, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant [34 x i8] c"trace_event_fields_qhash_template\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_qhash_template\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [25 x i8] c"print_fmt_qhash_template\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"event_irdma_add_mqh_6\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 174, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant [22 x i8] c"event_irdma_add_mqh_4\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 180, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [38 x i8] c"trace_event_fields_irdma_addr_resolve\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_irdma_addr_resolve\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [29 x i8] c"print_fmt_irdma_addr_resolve\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [25 x i8] c"event_irdma_addr_resolve\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [39 x i8] c"trace_event_fields_irdma_send_cm_event\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_irdma_send_cm_event\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [30 x i8] c"print_fmt_irdma_send_cm_event\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [26 x i8] c"event_irdma_send_cm_event\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [47 x i8] c"trace_event_fields_irdma_send_cm_event_no_node\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_irdma_send_cm_event_no_node\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [38 x i8] c"print_fmt_irdma_send_cm_event_no_node\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [34 x i8] c"event_irdma_send_cm_event_no_node\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [36 x i8] c"trace_event_fields_cm_node_template\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_cm_node_template\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [27 x i8] c"print_fmt_cm_node_template\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [25 x i8] c"event_irdma_create_event\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 328, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"event_irdma_accept\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 333, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"event_irdma_connect\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 338, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"event_irdma_reject\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 343, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant [22 x i8] c"event_irdma_find_node\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 348, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant [23 x i8] c"event_irdma_send_reset\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 353, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant [28 x i8] c"event_irdma_rem_ref_cm_node\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 358, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant [29 x i8] c"event_irdma_cm_event_handler\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 363, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant [37 x i8] c"trace_event_fields_open_err_template\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_open_err_template\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [28 x i8] c"print_fmt_open_err_template\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [24 x i8] c"event_open_err_template\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [28 x i8] c"event_irdma_active_open_err\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 392, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant [29 x i8] c"event_irdma_passive_open_err\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 396, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant [39 x i8] c"trace_event_fields_cm_node_ah_template\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_cm_node_ah_template\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [30 x i8] c"print_fmt_cm_node_ah_template\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [23 x i8] c"event_irdma_cm_free_ah\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 446, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant [22 x i8] c"event_irdma_create_ah\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 450, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 13, i32 23 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 15, i32 23 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 26, i32 10 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 28, i32 10 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 30, i32 10 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 32, i32 10 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 34, i32 10 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 37, i32 9 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 44, i32 10 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 46, i32 10 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 48, i32 10 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 50, i32 10 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 52, i32 10 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 54, i32 10 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 56, i32 10 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 58, i32 10 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 60, i32 10 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 62, i32 10 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 71, i32 10 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 73, i32 10 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 75, i32 10 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 77, i32 10 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 79, i32 10 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 81, i32 10 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 83, i32 10 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 85, i32 10 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 87, i32 10 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 89, i32 10 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 91, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 93, i32 10 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 95, i32 10 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 97, i32 10 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 99, i32 10 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 101, i32 10 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 103, i32 10 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 105, i32 10 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 107, i32 10 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 109, i32 10 }
@___asan_gen_.393 = private constant [39 x i8] c"../drivers/infiniband/hw/irdma/trace.c\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 111, i32 10 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 20, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 41, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 65, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 100, i32 1 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 118, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 144, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 186, i32 1 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 200, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 256, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 278, i32 1 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 368, i32 1 }
@___asan_gen_.545 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [44 x i8] c"../drivers/infiniband/hw/irdma/./trace_cm.h\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 400, i32 1 }
@___asan_gen_.548 = private unnamed_addr constant [33 x i8] c"switch.table.parse_iw_event_type\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [33 x i8] c"switch.table.parse_cm_event_type\00", align 1
@___asan_gen_.550 = private unnamed_addr constant [28 x i8] c"switch.table.parse_cm_state\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [50 x i8] c"switch.table.trace_raw_output_irdma_send_cm_event\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [53 x i8] c"switch.table.trace_raw_output_irdma_send_cm_event.90\00", align 1
@___asan_gen_.553 = private unnamed_addr constant [58 x i8] c"switch.table.trace_raw_output_irdma_send_cm_event_no_node\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [47 x i8] c"switch.table.trace_raw_output_cm_node_template\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [50 x i8] c"switch.table.trace_raw_output_cm_node_template.91\00", align 1
@___asan_gen_.556 = private unnamed_addr constant [48 x i8] c"switch.table.trace_raw_output_open_err_template\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [50 x i8] c"switch.table.trace_raw_output_cm_node_ah_template\00", align 1
@llvm.compiler.used = appending global [274 x ptr] [ptr @__bpf_trace_tp_map_irdma_accept, ptr @__bpf_trace_tp_map_irdma_active_open_err, ptr @__bpf_trace_tp_map_irdma_add_mqh_4, ptr @__bpf_trace_tp_map_irdma_add_mqh_6, ptr @__bpf_trace_tp_map_irdma_addr_resolve, ptr @__bpf_trace_tp_map_irdma_cm_event_handler, ptr @__bpf_trace_tp_map_irdma_cm_free_ah, ptr @__bpf_trace_tp_map_irdma_connect, ptr @__bpf_trace_tp_map_irdma_create_ah, ptr @__bpf_trace_tp_map_irdma_create_event, ptr @__bpf_trace_tp_map_irdma_create_listen, ptr @__bpf_trace_tp_map_irdma_dcb_tos, ptr @__bpf_trace_tp_map_irdma_dec_refcnt_listen, ptr @__bpf_trace_tp_map_irdma_del_multiple_qhash, ptr @__bpf_trace_tp_map_irdma_find_listener, ptr @__bpf_trace_tp_map_irdma_find_node, ptr @__bpf_trace_tp_map_irdma_listener_tos, ptr @__bpf_trace_tp_map_irdma_negotiate_mpa_v2, ptr @__bpf_trace_tp_map_irdma_passive_open_err, ptr @__bpf_trace_tp_map_irdma_reject, ptr @__bpf_trace_tp_map_irdma_rem_ref_cm_node, ptr @__bpf_trace_tp_map_irdma_send_cm_event, ptr @__bpf_trace_tp_map_irdma_send_cm_event_no_node, ptr @__bpf_trace_tp_map_irdma_send_reset, ptr @__bpf_trace_tp_map_open_err_template, ptr @__event_irdma_accept, ptr @__event_irdma_active_open_err, ptr @__event_irdma_add_mqh_4, ptr @__event_irdma_add_mqh_6, ptr @__event_irdma_addr_resolve, ptr @__event_irdma_cm_event_handler, ptr @__event_irdma_cm_free_ah, ptr @__event_irdma_connect, ptr @__event_irdma_create_ah, ptr @__event_irdma_create_event, ptr @__event_irdma_create_listen, ptr @__event_irdma_dcb_tos, ptr @__event_irdma_dec_refcnt_listen, ptr @__event_irdma_del_multiple_qhash, ptr @__event_irdma_find_listener, ptr @__event_irdma_find_node, ptr @__event_irdma_listener_tos, ptr @__event_irdma_negotiate_mpa_v2, ptr @__event_irdma_passive_open_err, ptr @__event_irdma_reject, ptr @__event_irdma_rem_ref_cm_node, ptr @__event_irdma_send_cm_event, ptr @__event_irdma_send_cm_event_no_node, ptr @__event_irdma_send_reset, ptr @__event_open_err_template, ptr @__tracepoint_irdma_accept, ptr @__tracepoint_irdma_active_open_err, ptr @__tracepoint_irdma_add_mqh_4, ptr @__tracepoint_irdma_add_mqh_6, ptr @__tracepoint_irdma_addr_resolve, ptr @__tracepoint_irdma_cm_event_handler, ptr @__tracepoint_irdma_cm_free_ah, ptr @__tracepoint_irdma_connect, ptr @__tracepoint_irdma_create_ah, ptr @__tracepoint_irdma_create_event, ptr @__tracepoint_irdma_create_listen, ptr @__tracepoint_irdma_dcb_tos, ptr @__tracepoint_irdma_dec_refcnt_listen, ptr @__tracepoint_irdma_del_multiple_qhash, ptr @__tracepoint_irdma_find_listener, ptr @__tracepoint_irdma_find_node, ptr @__tracepoint_irdma_listener_tos, ptr @__tracepoint_irdma_negotiate_mpa_v2, ptr @__tracepoint_irdma_passive_open_err, ptr @__tracepoint_irdma_reject, ptr @__tracepoint_irdma_rem_ref_cm_node, ptr @__tracepoint_irdma_send_cm_event, ptr @__tracepoint_irdma_send_cm_event_no_node, ptr @__tracepoint_irdma_send_reset, ptr @__tracepoint_open_err_template, ptr @__tracepoint_ptr_irdma_accept, ptr @__tracepoint_ptr_irdma_active_open_err, ptr @__tracepoint_ptr_irdma_add_mqh_4, ptr @__tracepoint_ptr_irdma_add_mqh_6, ptr @__tracepoint_ptr_irdma_addr_resolve, ptr @__tracepoint_ptr_irdma_cm_event_handler, ptr @__tracepoint_ptr_irdma_cm_free_ah, ptr @__tracepoint_ptr_irdma_connect, ptr @__tracepoint_ptr_irdma_create_ah, ptr @__tracepoint_ptr_irdma_create_event, ptr @__tracepoint_ptr_irdma_create_listen, ptr @__tracepoint_ptr_irdma_dcb_tos, ptr @__tracepoint_ptr_irdma_dec_refcnt_listen, ptr @__tracepoint_ptr_irdma_del_multiple_qhash, ptr @__tracepoint_ptr_irdma_find_listener, ptr @__tracepoint_ptr_irdma_find_node, ptr @__tracepoint_ptr_irdma_listener_tos, ptr @__tracepoint_ptr_irdma_negotiate_mpa_v2, ptr @__tracepoint_ptr_irdma_passive_open_err, ptr @__tracepoint_ptr_irdma_reject, ptr @__tracepoint_ptr_irdma_rem_ref_cm_node, ptr @__tracepoint_ptr_irdma_send_cm_event, ptr @__tracepoint_ptr_irdma_send_cm_event_no_node, ptr @__tracepoint_ptr_irdma_send_reset, ptr @__tracepoint_ptr_open_err_template, ptr @event_class_cm_node_ah_template, ptr @event_class_cm_node_template, ptr @event_class_irdma_addr_resolve, ptr @event_class_irdma_create_listen, ptr @event_class_irdma_dec_refcnt_listen, ptr @event_class_irdma_negotiate_mpa_v2, ptr @event_class_irdma_send_cm_event, ptr @event_class_irdma_send_cm_event_no_node, ptr @event_class_listener_template, ptr @event_class_open_err_template, ptr @event_class_qhash_template, ptr @event_class_tos_template, ptr @event_irdma_accept, ptr @event_irdma_active_open_err, ptr @event_irdma_add_mqh_4, ptr @event_irdma_add_mqh_6, ptr @event_irdma_addr_resolve, ptr @event_irdma_cm_event_handler, ptr @event_irdma_cm_free_ah, ptr @event_irdma_connect, ptr @event_irdma_create_ah, ptr @event_irdma_create_event, ptr @event_irdma_create_listen, ptr @event_irdma_dcb_tos, ptr @event_irdma_dec_refcnt_listen, ptr @event_irdma_del_multiple_qhash, ptr @event_irdma_find_listener, ptr @event_irdma_find_node, ptr @event_irdma_listener_tos, ptr @event_irdma_negotiate_mpa_v2, ptr @event_irdma_passive_open_err, ptr @event_irdma_reject, ptr @event_irdma_rem_ref_cm_node, ptr @event_irdma_send_cm_event, ptr @event_irdma_send_cm_event_no_node, ptr @event_irdma_send_reset, ptr @event_open_err_template, ptr @str__irdma_cm__trace_system_name, ptr @trace_event_fields_irdma_create_listen, ptr @trace_event_type_funcs_irdma_create_listen, ptr @print_fmt_irdma_create_listen, ptr @trace_event_fields_irdma_dec_refcnt_listen, ptr @trace_event_type_funcs_irdma_dec_refcnt_listen, ptr @print_fmt_irdma_dec_refcnt_listen, ptr @trace_event_fields_listener_template, ptr @trace_event_type_funcs_listener_template, ptr @print_fmt_listener_template, ptr @trace_event_fields_irdma_negotiate_mpa_v2, ptr @trace_event_type_funcs_irdma_negotiate_mpa_v2, ptr @print_fmt_irdma_negotiate_mpa_v2, ptr @trace_event_fields_tos_template, ptr @trace_event_type_funcs_tos_template, ptr @print_fmt_tos_template, ptr @trace_event_fields_qhash_template, ptr @trace_event_type_funcs_qhash_template, ptr @print_fmt_qhash_template, ptr @trace_event_fields_irdma_addr_resolve, ptr @trace_event_type_funcs_irdma_addr_resolve, ptr @print_fmt_irdma_addr_resolve, ptr @trace_event_fields_irdma_send_cm_event, ptr @trace_event_type_funcs_irdma_send_cm_event, ptr @print_fmt_irdma_send_cm_event, ptr @trace_event_fields_irdma_send_cm_event_no_node, ptr @trace_event_type_funcs_irdma_send_cm_event_no_node, ptr @print_fmt_irdma_send_cm_event_no_node, ptr @trace_event_fields_cm_node_template, ptr @trace_event_type_funcs_cm_node_template, ptr @print_fmt_cm_node_template, ptr @trace_event_fields_open_err_template, ptr @trace_event_type_funcs_open_err_template, ptr @print_fmt_open_err_template, ptr @trace_event_fields_cm_node_ah_template, ptr @trace_event_type_funcs_cm_node_ah_template, ptr @print_fmt_cm_node_ah_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @switch.table.parse_iw_event_type, ptr @switch.table.parse_cm_event_type, ptr @switch.table.parse_cm_state, ptr @switch.table.trace_raw_output_irdma_send_cm_event, ptr @switch.table.trace_raw_output_irdma_send_cm_event.90, ptr @switch.table.trace_raw_output_irdma_send_cm_event_no_node, ptr @switch.table.trace_raw_output_cm_node_template, ptr @switch.table.trace_raw_output_cm_node_template.91, ptr @switch.table.trace_raw_output_open_err_template, ptr @switch.table.trace_raw_output_cm_node_ah_template], section "llvm.metadata"
@0 = internal global [162 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__irdma_cm__trace_system_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_irdma_create_listen to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_irdma_create_listen to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_irdma_create_listen to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_create_listen to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_irdma_dec_refcnt_listen to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_irdma_dec_refcnt_listen to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_irdma_dec_refcnt_listen to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_dec_refcnt_listen to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_listener_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_listener_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_listener_template to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_find_listener to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_del_multiple_qhash to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_irdma_negotiate_mpa_v2 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_irdma_negotiate_mpa_v2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_irdma_negotiate_mpa_v2 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_negotiate_mpa_v2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tos_template to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tos_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tos_template to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_listener_tos to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_dcb_tos to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_qhash_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_qhash_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_qhash_template to i32), i32 161, i32 224, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_add_mqh_6 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_add_mqh_4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_irdma_addr_resolve to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_irdma_addr_resolve to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_irdma_addr_resolve to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_addr_resolve to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_irdma_send_cm_event to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_irdma_send_cm_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_irdma_send_cm_event to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_send_cm_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_irdma_send_cm_event_no_node to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_irdma_send_cm_event_no_node to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_irdma_send_cm_event_no_node to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_send_cm_event_no_node to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cm_node_template to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cm_node_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cm_node_template to i32), i32 386, i32 512, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_create_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_accept to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_connect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_reject to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_find_node to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_send_reset to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_rem_ref_cm_node to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_cm_event_handler to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_open_err_template to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_open_err_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_open_err_template to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_open_err_template to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_active_open_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_passive_open_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cm_node_ah_template to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cm_node_ah_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cm_node_ah_template to i32), i32 329, i32 416, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_cm_free_ah to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irdma_create_ah to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.parse_iw_event_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.parse_cm_event_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.parse_cm_state to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_irdma_send_cm_event to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_irdma_send_cm_event.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_irdma_send_cm_event_no_node to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_cm_node_template to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_cm_node_template.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_open_err_template to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_cm_node_ah_template to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_irdma_create_listen(ptr nocapture readnone %__data, ptr noundef %iwdev, ptr noundef %cm_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_create_listen, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %iwdev, ptr noundef %cm_info) #7
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
define dso_local i32 @__traceiter_irdma_dec_refcnt_listen(ptr nocapture readnone %__data, ptr noundef %listener, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_dec_refcnt_listen, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %listener, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_irdma_find_listener(ptr nocapture readnone %__data, ptr noundef %listener) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_find_listener, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %listener) #7
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
define dso_local i32 @__traceiter_irdma_del_multiple_qhash(ptr nocapture readnone %__data, ptr noundef %listener) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_del_multiple_qhash, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %listener) #7
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
define dso_local i32 @__traceiter_irdma_negotiate_mpa_v2(ptr nocapture readnone %__data, ptr noundef %cm_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_negotiate_mpa_v2, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node) #7
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
define dso_local i32 @__traceiter_irdma_listener_tos(ptr nocapture readnone %__data, ptr noundef %iwdev, i8 noundef zeroext %tos, i8 noundef zeroext %user_pri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_listener_tos, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %iwdev, i8 noundef zeroext %tos, i8 noundef zeroext %user_pri) #7
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
define dso_local i32 @__traceiter_irdma_dcb_tos(ptr nocapture readnone %__data, ptr noundef %iwdev, i8 noundef zeroext %tos, i8 noundef zeroext %user_pri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_dcb_tos, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %iwdev, i8 noundef zeroext %tos, i8 noundef zeroext %user_pri) #7
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
define dso_local i32 @__traceiter_irdma_add_mqh_6(ptr nocapture readnone %__data, ptr noundef %iwdev, ptr noundef %listener, ptr noundef %dev_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_add_mqh_6, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %iwdev, ptr noundef %listener, ptr noundef %dev_addr) #7
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
define dso_local i32 @__traceiter_irdma_add_mqh_4(ptr nocapture readnone %__data, ptr noundef %iwdev, ptr noundef %listener, ptr noundef %dev_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_add_mqh_4, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %iwdev, ptr noundef %listener, ptr noundef %dev_addr) #7
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
define dso_local i32 @__traceiter_irdma_addr_resolve(ptr nocapture readnone %__data, ptr noundef %iwdev, ptr noundef %dev_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_addr_resolve, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %iwdev, ptr noundef %dev_addr) #7
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
define dso_local i32 @__traceiter_irdma_send_cm_event(ptr nocapture readnone %__data, ptr noundef %cm_node, ptr noundef %cm_id, i32 noundef %type, i32 noundef %status, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_send_cm_event, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, ptr noundef %cm_id, i32 noundef %type, i32 noundef %status, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_irdma_send_cm_event_no_node(ptr nocapture readnone %__data, ptr noundef %cm_id, i32 noundef %type, i32 noundef %status, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_send_cm_event_no_node, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_id, i32 noundef %type, i32 noundef %status, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_irdma_create_event(ptr nocapture readnone %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_create_event, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_irdma_accept(ptr nocapture readnone %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_accept, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_irdma_connect(ptr nocapture readnone %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_connect, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_irdma_reject(ptr nocapture readnone %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_reject, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_irdma_find_node(ptr nocapture readnone %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_find_node, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_irdma_send_reset(ptr nocapture readnone %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_send_reset, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_irdma_rem_ref_cm_node(ptr nocapture readnone %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_rem_ref_cm_node, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_irdma_cm_event_handler(ptr nocapture readnone %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_cm_event_handler, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #7
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
define dso_local i32 @__traceiter_open_err_template(ptr nocapture readnone %__data, ptr noundef %cm_node, i1 noundef zeroext %reset, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_open_err_template, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i1 noundef zeroext %reset, ptr noundef %caller) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_irdma_active_open_err(ptr nocapture readnone %__data, ptr noundef %cm_node, i1 noundef zeroext %reset, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_active_open_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i1 noundef zeroext %reset, ptr noundef %caller) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_irdma_passive_open_err(ptr nocapture readnone %__data, ptr noundef %cm_node, i1 noundef zeroext %reset, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_passive_open_err, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node, i1 noundef zeroext %reset, ptr noundef %caller) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_irdma_cm_free_ah(ptr nocapture readnone %__data, ptr noundef %cm_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_cm_free_ah, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node) #7
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
define dso_local i32 @__traceiter_irdma_create_ah(ptr nocapture readnone %__data, ptr noundef %cm_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irdma_create_ah, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cm_node) #7
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
define internal void @trace_event_raw_event_irdma_create_listen(ptr noundef %__data, ptr noundef %iwdev, ptr nocapture noundef readonly %cm_info) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 36) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1048595, ptr %__data_loc_laddr, align 4
  %iwdev6 = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %iwdev6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %iwdev, ptr %iwdev6, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_info, ptr %cm_info, i32 0, i32 1
  %5 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.irdma_cm_info, ptr %cm_info, i32 0, i32 10
  %8 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ipv4, align 2, !range !396
  %ipv48 = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %ipv48 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ipv48, align 2
  %add.ptr = getelementptr i8, ptr %call3, i32 19
  %loc_addr = getelementptr inbounds %struct.irdma_cm_info, ptr %cm_info, i32 0, i32 3
  %11 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %loc_addr, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %add.ptr, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_irdma_create_listen(ptr noundef %__data, ptr noundef %iwdev, ptr nocapture noundef readonly %cm_info) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048595, ptr %__data_loc_laddr, align 4
  %iwdev17 = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %iwdev17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %iwdev, ptr %iwdev17, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_info, ptr %cm_info, i32 0, i32 1
  %29 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.irdma_cm_info, ptr %cm_info, i32 0, i32 10
  %32 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ipv4, align 2, !range !396
  %ipv419 = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %ipv419 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %ipv419, align 2
  %add.ptr = getelementptr i8, ptr %call13, i32 19
  %loc_addr = getelementptr inbounds %struct.irdma_cm_info, ptr %cm_info, i32 0, i32 3
  %35 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %loc_addr, align 4
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %add.ptr, align 1
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #7
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
define internal void @trace_event_raw_event_irdma_dec_refcnt_listen(ptr noundef %__data, ptr nocapture noundef readonly %listener, ptr nocapture noundef readnone %caller) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1048604, ptr %__data_loc_laddr, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 3
  %4 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iwdev, align 4
  %iwdev6 = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %iwdev6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %iwdev6, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 12
  %7 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 17
  %10 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv47 = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %call3, i32 0, i32 5
  %11 = lshr i8 %bf.load, 6
  %.lobit = and i8 %11, 1
  %12 = ptrtoint ptr %ipv47 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.lobit, ptr %ipv47, align 2
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %loc_addr = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 9
  %13 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %loc_addr, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %add.ptr, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_irdma_dec_refcnt_listen(ptr noundef %__data, ptr nocapture noundef readonly %listener, ptr nocapture noundef readnone %caller) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048604, ptr %__data_loc_laddr, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 3
  %28 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iwdev, align 4
  %iwdev17 = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %iwdev17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %iwdev17, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 12
  %31 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 17
  %34 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv418 = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %call13, i32 0, i32 5
  %35 = lshr i8 %bf.load, 6
  %.lobit = and i8 %35, 1
  %36 = ptrtoint ptr %ipv418 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.lobit, ptr %ipv418, align 2
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %loc_addr = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 9
  %37 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %loc_addr, align 4
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %add.ptr, align 1
  %40 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rctx, align 4
  %42 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %41, ptr noundef %__data, i64 noundef 1, ptr noundef %43, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_listener_template(ptr noundef %__data, ptr nocapture noundef readonly %listener) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call3, i32 0, i32 6
  %3 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1048604, ptr %__data_loc_laddr, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 3
  %4 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iwdev, align 4
  %iwdev6 = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %iwdev6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %iwdev6, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 12
  %7 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %lport, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 13
  %10 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_id, align 2
  %vlan_id7 = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %vlan_id7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vlan_id7, align 2
  %ipv4 = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 17
  %13 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv48 = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call3, i32 0, i32 4
  %14 = lshr i8 %bf.load, 6
  %.lobit = and i8 %14, 1
  %15 = ptrtoint ptr %ipv48 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.lobit, ptr %ipv48, align 4
  %listener_state = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 6
  %16 = ptrtoint ptr %listener_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %listener_state, align 4
  %state = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call3, i32 0, i32 5
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %state, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %loc_addr = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 9
  %19 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %loc_addr, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %add.ptr, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_listener_template(ptr noundef %__data, ptr nocapture noundef readonly %listener) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call13, i32 0, i32 6
  %27 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048604, ptr %__data_loc_laddr, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 3
  %28 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iwdev, align 4
  %iwdev17 = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %iwdev17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %iwdev17, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 12
  %31 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %lport, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 13
  %34 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vlan_id, align 2
  %vlan_id18 = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %vlan_id18 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %vlan_id18, align 2
  %ipv4 = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 17
  %37 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv419 = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call13, i32 0, i32 4
  %38 = lshr i8 %bf.load, 6
  %.lobit = and i8 %38, 1
  %39 = ptrtoint ptr %ipv419 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.lobit, ptr %ipv419, align 4
  %listener_state = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 6
  %40 = ptrtoint ptr %listener_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %listener_state, align 4
  %state = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %call13, i32 0, i32 5
  %42 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %state, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %loc_addr = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 9
  %43 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %loc_addr, align 4
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %add.ptr, align 1
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_irdma_negotiate_mpa_v2(ptr noundef %__data, ptr noundef %cm_node) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cm_node6 = getelementptr inbounds %struct.trace_event_raw_irdma_negotiate_mpa_v2, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %cm_node6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cm_node, ptr %cm_node6, align 4
  %ord_size = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 34
  %4 = ptrtoint ptr %ord_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ord_size, align 4
  %ord_size7 = getelementptr inbounds %struct.trace_event_raw_irdma_negotiate_mpa_v2, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %ord_size7 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %ord_size7, align 4
  %ird_size = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 33
  %7 = ptrtoint ptr %ird_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ird_size, align 2
  %ird_size8 = getelementptr inbounds %struct.trace_event_raw_irdma_negotiate_mpa_v2, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %ird_size8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %ird_size8, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_irdma_negotiate_mpa_v2(ptr noundef %__data, ptr noundef %cm_node) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %cm_node17 = getelementptr inbounds %struct.trace_event_raw_irdma_negotiate_mpa_v2, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %cm_node17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cm_node, ptr %cm_node17, align 4
  %ord_size = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 34
  %28 = ptrtoint ptr %ord_size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ord_size, align 4
  %ord_size18 = getelementptr inbounds %struct.trace_event_raw_irdma_negotiate_mpa_v2, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %ord_size18 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %ord_size18, align 4
  %ird_size = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 33
  %31 = ptrtoint ptr %ird_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ird_size, align 2
  %ird_size19 = getelementptr inbounds %struct.trace_event_raw_irdma_negotiate_mpa_v2, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %ird_size19 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %ird_size19, align 2
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tos_template(ptr noundef %__data, ptr noundef %iwdev, i8 noundef zeroext %tos, i8 noundef zeroext %user_pri) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %iwdev6 = getelementptr inbounds %struct.trace_event_raw_tos_template, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %iwdev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %iwdev, ptr %iwdev6, align 4
  %tos7 = getelementptr inbounds %struct.trace_event_raw_tos_template, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %tos7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %tos, ptr %tos7, align 4
  %user_pri8 = getelementptr inbounds %struct.trace_event_raw_tos_template, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %user_pri8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %user_pri, ptr %user_pri8, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tos_template(ptr noundef %__data, ptr noundef %iwdev, i8 noundef zeroext %tos, i8 noundef zeroext %user_pri) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %iwdev17 = getelementptr inbounds %struct.trace_event_raw_tos_template, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %iwdev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %iwdev, ptr %iwdev17, align 4
  %tos18 = getelementptr inbounds %struct.trace_event_raw_tos_template, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %tos18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %tos, ptr %tos18, align 4
  %user_pri19 = getelementptr inbounds %struct.trace_event_raw_tos_template, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %user_pri19 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %user_pri, ptr %user_pri19, align 1
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_qhash_template(ptr noundef %__data, ptr noundef %iwdev, ptr nocapture noundef readonly %listener, ptr nocapture noundef readonly %dev_addr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 68) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call3, i32 0, i32 5
  %3 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1048604, ptr %__data_loc_laddr, align 4
  %__data_loc_mac = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call3, i32 0, i32 6
  %4 = ptrtoint ptr %__data_loc_mac to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1572908, ptr %__data_loc_mac, align 4
  %iwdev6 = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %iwdev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %iwdev, ptr %iwdev6, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 12
  %6 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %lport, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 13
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 2
  %vlan_id7 = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %vlan_id7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %vlan_id7, align 2
  %ipv4 = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 17
  %12 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv48 = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call3, i32 0, i32 4
  %13 = lshr i8 %bf.load, 6
  %.lobit = and i8 %13, 1
  %14 = ptrtoint ptr %ipv48 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.lobit, ptr %ipv48, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %loc_addr = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 9
  %15 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %loc_addr, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %add.ptr, align 1
  %add.ptr12 = getelementptr i8, ptr %call3, i32 44
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_addr, align 4
  %20 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %add.ptr12, align 4
  %add.ptr.i = getelementptr i8, ptr %dev_addr, i32 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call3, i32 48
  %23 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr1.i, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_qhash_template(ptr noundef %__data, ptr noundef %iwdev, ptr nocapture noundef readonly %listener, ptr nocapture noundef readonly %dev_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call13, i32 0, i32 5
  %27 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048604, ptr %__data_loc_laddr, align 4
  %__data_loc_mac = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call13, i32 0, i32 6
  %28 = ptrtoint ptr %__data_loc_mac to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1572908, ptr %__data_loc_mac, align 4
  %iwdev17 = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %iwdev17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %iwdev, ptr %iwdev17, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 12
  %30 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %lport, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 13
  %33 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vlan_id, align 2
  %vlan_id18 = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %vlan_id18 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %vlan_id18, align 2
  %ipv4 = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 17
  %36 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv419 = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %call13, i32 0, i32 4
  %37 = lshr i8 %bf.load, 6
  %.lobit = and i8 %37, 1
  %38 = ptrtoint ptr %ipv419 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.lobit, ptr %ipv419, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %loc_addr = getelementptr inbounds %struct.irdma_cm_listener, ptr %listener, i32 0, i32 9
  %39 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %loc_addr, align 4
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %add.ptr, align 1
  %add.ptr24 = getelementptr i8, ptr %call13, i32 44
  %42 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dev_addr, align 4
  %44 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %add.ptr24, align 4
  %add.ptr.i = getelementptr i8, ptr %dev_addr, i32 4
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call13, i32 48
  %47 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %add.ptr1.i, align 2
  %48 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rctx, align 4
  %50 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 68, i32 noundef %49, ptr noundef %__data, i64 noundef 1, ptr noundef %51, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_irdma_addr_resolve(ptr noundef %__data, ptr noundef %iwdev, ptr nocapture noundef readonly %dev_addr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 22) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_mac = getelementptr inbounds %struct.trace_event_raw_irdma_addr_resolve, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %__data_loc_mac to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 393232, ptr %__data_loc_mac, align 4
  %iwdev6 = getelementptr inbounds %struct.trace_event_raw_irdma_addr_resolve, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %iwdev6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %iwdev, ptr %iwdev6, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_addr, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %dev_addr, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call3, i32 20
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr1.i, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_irdma_addr_resolve(ptr noundef %__data, ptr noundef %iwdev, ptr nocapture noundef readonly %dev_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_mac = getelementptr inbounds %struct.trace_event_raw_irdma_addr_resolve, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %__data_loc_mac to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 393232, ptr %__data_loc_mac, align 4
  %iwdev17 = getelementptr inbounds %struct.trace_event_raw_irdma_addr_resolve, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %iwdev17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %iwdev, ptr %iwdev17, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %29 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_addr, align 4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %dev_addr, i32 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call13, i32 20
  %34 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %add.ptr1.i, align 2
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_irdma_send_cm_event(ptr noundef %__data, ptr noundef %cm_node, ptr noundef %cm_id, i32 noundef %type, i32 noundef %status, ptr noundef %caller) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 92) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 14
  %3 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1048636, ptr %__data_loc_laddr, align 4
  %__data_loc_raddr = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 15
  %4 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1048652, ptr %__data_loc_raddr, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 1
  %5 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iwdev, align 4
  %iwdev6 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %iwdev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %iwdev6, align 4
  %cm_node7 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %cm_node7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cm_node, ptr %cm_node7, align 4
  %cm_id8 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %cm_id8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cm_id, ptr %cm_id8, align 4
  %refcnt = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 22
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %10 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %refcnt, align 4
  %refcount = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %refcount, align 4
  %state = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 23
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %state10 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 7
  %15 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %state10, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 28
  %16 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 5
  %18 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %lport, align 4
  %rem_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 29
  %19 = ptrtoint ptr %rem_port to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rem_port, align 2
  %rport = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 6
  %21 = ptrtoint ptr %rport to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %rport, align 2
  %ipv4 = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 42
  %22 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv411 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 8
  %23 = lshr i8 %bf.load, 5
  %.lobit = and i8 %23, 1
  %24 = ptrtoint ptr %ipv411 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.lobit, ptr %ipv411, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 32
  %25 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vlan_id, align 4
  %vlan_id12 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 9
  %27 = ptrtoint ptr %vlan_id12 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %vlan_id12, align 2
  %bf.load13 = load i8, ptr %ipv4, align 4
  %28 = lshr i8 %bf.load13, 1
  %.lobit64 = and i8 %28, 1
  %29 = zext i8 %.lobit64 to i32
  %accel = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 10
  %30 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %accel, align 4
  %type17 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 11
  %31 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %type, ptr %type17, align 4
  %status18 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 12
  %32 = ptrtoint ptr %status18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %status, ptr %status18, align 4
  %caller19 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call3, i32 0, i32 13
  %33 = ptrtoint ptr %caller19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %caller, ptr %caller19, align 4
  %34 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %__data_loc_laddr, align 4
  %and = and i32 %35, 65535
  %add.ptr = getelementptr i8, ptr %call3, i32 %and
  %loc_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 26
  %36 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %loc_addr, align 4
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %add.ptr, align 1
  %39 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %__data_loc_raddr, align 4
  %and22 = and i32 %40, 65535
  %add.ptr23 = getelementptr i8, ptr %call3, i32 %and22
  %rem_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 27
  %41 = ptrtoint ptr %rem_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rem_addr, align 4
  %43 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %add.ptr23, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_irdma_send_cm_event(ptr noundef %__data, ptr noundef %cm_node, ptr noundef %cm_id, i32 noundef %type, i32 noundef %status, ptr noundef %caller) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 92, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 14
  %27 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048636, ptr %__data_loc_laddr, align 4
  %__data_loc_raddr = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 15
  %28 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1048652, ptr %__data_loc_raddr, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 1
  %29 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iwdev, align 4
  %iwdev17 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %iwdev17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %iwdev17, align 4
  %cm_node18 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %cm_node18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cm_node, ptr %cm_node18, align 4
  %cm_id19 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %cm_id19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cm_id, ptr %cm_id19, align 4
  %refcnt = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 22
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %34 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %refcnt, align 4
  %refcount = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %refcount, align 4
  %state = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 23
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 4
  %state21 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 7
  %39 = ptrtoint ptr %state21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %state21, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 28
  %40 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 5
  %42 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %lport, align 4
  %rem_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 29
  %43 = ptrtoint ptr %rem_port to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rem_port, align 2
  %rport = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 6
  %45 = ptrtoint ptr %rport to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %rport, align 2
  %ipv4 = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 42
  %46 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv422 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 8
  %47 = lshr i8 %bf.load, 5
  %.lobit = and i8 %47, 1
  %48 = ptrtoint ptr %ipv422 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.lobit, ptr %ipv422, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 32
  %49 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vlan_id, align 4
  %vlan_id23 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 9
  %51 = ptrtoint ptr %vlan_id23 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %vlan_id23, align 2
  %bf.load24 = load i8, ptr %ipv4, align 4
  %52 = lshr i8 %bf.load24, 1
  %.lobit88 = and i8 %52, 1
  %53 = zext i8 %.lobit88 to i32
  %accel = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 10
  %54 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %accel, align 4
  %type28 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 11
  %55 = ptrtoint ptr %type28 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %type, ptr %type28, align 4
  %status29 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 12
  %56 = ptrtoint ptr %status29 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %status, ptr %status29, align 4
  %caller30 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %call13, i32 0, i32 13
  %57 = ptrtoint ptr %caller30 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %caller, ptr %caller30, align 4
  %58 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %__data_loc_laddr, align 4
  %and32 = and i32 %59, 65535
  %add.ptr = getelementptr i8, ptr %call13, i32 %and32
  %loc_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 26
  %60 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %loc_addr, align 4
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %add.ptr, align 1
  %63 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %__data_loc_raddr, align 4
  %and34 = and i32 %64, 65535
  %add.ptr35 = getelementptr i8, ptr %call13, i32 %and34
  %rem_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 27
  %65 = ptrtoint ptr %rem_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rem_addr, align 4
  %67 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %add.ptr35, align 1
  %68 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rctx, align 4
  %70 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 92, i32 noundef %69, ptr noundef %__data, i64 noundef 1, ptr noundef %71, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_irdma_send_cm_event_no_node(ptr noundef %__data, ptr noundef %cm_id, i32 noundef %type, i32 noundef %status, ptr noundef %caller) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cm_id6 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %cm_id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cm_id, ptr %cm_id6, align 4
  %type7 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %type7, align 4
  %status8 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %status8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %status, ptr %status8, align 4
  %caller9 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %caller9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %caller, ptr %caller9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_irdma_send_cm_event_no_node(ptr noundef %__data, ptr noundef %cm_id, i32 noundef %type, i32 noundef %status, ptr noundef %caller) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %cm_id17 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %cm_id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cm_id, ptr %cm_id17, align 4
  %type18 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %type, ptr %type18, align 4
  %status19 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %status19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %status, ptr %status19, align 4
  %caller20 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %caller20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %caller, ptr %caller20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cm_node_template(ptr noundef %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 84) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 12
  %3 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1048628, ptr %__data_loc_laddr, align 4
  %__data_loc_raddr = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 13
  %4 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1048644, ptr %__data_loc_raddr, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 1
  %5 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iwdev, align 4
  %iwdev6 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %iwdev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %iwdev6, align 4
  %cm_node7 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %cm_node7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cm_node, ptr %cm_node7, align 4
  %refcnt = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 22
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %9 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcnt, align 4
  %refcount = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %refcount, align 4
  %state = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 23
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %state9 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 6
  %14 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %state9, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 28
  %15 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %lport, align 4
  %rem_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 29
  %18 = ptrtoint ptr %rem_port to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rem_port, align 2
  %rport = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 5
  %20 = ptrtoint ptr %rport to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %rport, align 2
  %ipv4 = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 42
  %21 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv410 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 7
  %22 = lshr i8 %bf.load, 5
  %.lobit = and i8 %22, 1
  %23 = ptrtoint ptr %ipv410 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.lobit, ptr %ipv410, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 32
  %24 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vlan_id, align 4
  %vlan_id11 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 8
  %26 = ptrtoint ptr %vlan_id11 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %vlan_id11, align 2
  %bf.load12 = load i8, ptr %ipv4, align 4
  %27 = lshr i8 %bf.load12, 1
  %.lobit58 = and i8 %27, 1
  %28 = zext i8 %.lobit58 to i32
  %accel = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 9
  %29 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %accel, align 4
  %type16 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 10
  %30 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %type, ptr %type16, align 4
  %caller17 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call3, i32 0, i32 11
  %31 = ptrtoint ptr %caller17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %caller, ptr %caller17, align 4
  %32 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %__data_loc_laddr, align 4
  %and = and i32 %33, 65535
  %add.ptr = getelementptr i8, ptr %call3, i32 %and
  %loc_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 26
  %34 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %loc_addr, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %add.ptr, align 1
  %37 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %__data_loc_raddr, align 4
  %and20 = and i32 %38, 65535
  %add.ptr21 = getelementptr i8, ptr %call3, i32 %and20
  %rem_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 27
  %39 = ptrtoint ptr %rem_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rem_addr, align 4
  %41 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %add.ptr21, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cm_node_template(ptr noundef %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 84, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 12
  %27 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048628, ptr %__data_loc_laddr, align 4
  %__data_loc_raddr = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 13
  %28 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1048644, ptr %__data_loc_raddr, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 1
  %29 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iwdev, align 4
  %iwdev17 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %iwdev17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %iwdev17, align 4
  %cm_node18 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %cm_node18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cm_node, ptr %cm_node18, align 4
  %refcnt = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 22
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %33 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %refcnt, align 4
  %refcount = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %refcount, align 4
  %state = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 23
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  %state20 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 6
  %38 = ptrtoint ptr %state20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %state20, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 28
  %39 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %lport, align 4
  %rem_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 29
  %42 = ptrtoint ptr %rem_port to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rem_port, align 2
  %rport = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 5
  %44 = ptrtoint ptr %rport to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %rport, align 2
  %ipv4 = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 42
  %45 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv421 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 7
  %46 = lshr i8 %bf.load, 5
  %.lobit = and i8 %46, 1
  %47 = ptrtoint ptr %ipv421 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.lobit, ptr %ipv421, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 32
  %48 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vlan_id, align 4
  %vlan_id22 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 8
  %50 = ptrtoint ptr %vlan_id22 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %vlan_id22, align 2
  %bf.load23 = load i8, ptr %ipv4, align 4
  %51 = lshr i8 %bf.load23, 1
  %.lobit82 = and i8 %51, 1
  %52 = zext i8 %.lobit82 to i32
  %accel = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 9
  %53 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %accel, align 4
  %type27 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 10
  %54 = ptrtoint ptr %type27 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %type, ptr %type27, align 4
  %caller28 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %call13, i32 0, i32 11
  %55 = ptrtoint ptr %caller28 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %caller, ptr %caller28, align 4
  %56 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %__data_loc_laddr, align 4
  %and30 = and i32 %57, 65535
  %add.ptr = getelementptr i8, ptr %call13, i32 %and30
  %loc_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 26
  %58 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %loc_addr, align 4
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %add.ptr, align 1
  %61 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %__data_loc_raddr, align 4
  %and32 = and i32 %62, 65535
  %add.ptr33 = getelementptr i8, ptr %call13, i32 %and32
  %rem_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 27
  %63 = ptrtoint ptr %rem_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rem_addr, align 4
  %65 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %add.ptr33, align 1
  %66 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rctx, align 4
  %68 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 84, i32 noundef %67, ptr noundef %__data, i64 noundef 1, ptr noundef %69, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_open_err_template(ptr noundef %__data, ptr noundef %cm_node, i1 noundef zeroext %reset, ptr noundef %caller) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %reset to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %iwdev = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 1
  %3 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iwdev, align 4
  %iwdev7 = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %iwdev7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %iwdev7, align 4
  %cm_node8 = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %cm_node8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cm_node, ptr %cm_node8, align 4
  %state = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 23
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %state9 = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %state9, align 4
  %reset11 = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %reset11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %reset11, align 4
  %caller13 = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %call3, i32 0, i32 5
  %11 = ptrtoint ptr %caller13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %caller, ptr %caller13, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_open_err_template(ptr noundef %__data, ptr noundef %cm_node, i1 noundef zeroext %reset, ptr noundef %caller) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %reset to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 1
  %27 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iwdev, align 4
  %iwdev18 = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %call14, i32 0, i32 1
  %29 = ptrtoint ptr %iwdev18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %iwdev18, align 4
  %cm_node19 = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %call14, i32 0, i32 2
  %30 = ptrtoint ptr %cm_node19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cm_node, ptr %cm_node19, align 4
  %state = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 23
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  %state20 = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %call14, i32 0, i32 3
  %33 = ptrtoint ptr %state20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %state20, align 4
  %reset22 = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %call14, i32 0, i32 4
  %34 = ptrtoint ptr %reset22 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %reset22, align 4
  %caller24 = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %call14, i32 0, i32 5
  %35 = ptrtoint ptr %caller24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %caller, ptr %caller24, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 28, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cm_node_ah_template(ptr noundef %__data, ptr noundef %cm_node) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !394

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !395

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 80) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 11
  %3 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1048624, ptr %__data_loc_laddr, align 4
  %__data_loc_raddr = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 12
  %4 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1048640, ptr %__data_loc_raddr, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 1
  %5 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iwdev, align 4
  %iwdev6 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %iwdev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %iwdev6, align 4
  %cm_node7 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %cm_node7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cm_node, ptr %cm_node7, align 4
  %ah = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 14
  %9 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah, align 4
  %ah8 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %ah8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %ah8, align 4
  %refcnt = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 22
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %12 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %refcnt, align 4
  %refcount = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %refcount, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 28
  %15 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %lport, align 4
  %rem_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 29
  %18 = ptrtoint ptr %rem_port to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rem_port, align 2
  %rport = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 6
  %20 = ptrtoint ptr %rport to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %rport, align 2
  %state = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 23
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %state10 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 7
  %23 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %state10, align 4
  %ipv4 = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 42
  %24 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv411 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 8
  %25 = lshr i8 %bf.load, 5
  %.lobit = and i8 %25, 1
  %26 = ptrtoint ptr %ipv411 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.lobit, ptr %ipv411, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 32
  %27 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vlan_id, align 4
  %vlan_id12 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 9
  %29 = ptrtoint ptr %vlan_id12 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vlan_id12, align 2
  %bf.load13 = load i8, ptr %ipv4, align 4
  %30 = lshr i8 %bf.load13, 1
  %.lobit55 = and i8 %30, 1
  %31 = zext i8 %.lobit55 to i32
  %accel = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call3, i32 0, i32 10
  %32 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %accel, align 4
  %33 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %__data_loc_laddr, align 4
  %and = and i32 %34, 65535
  %add.ptr = getelementptr i8, ptr %call3, i32 %and
  %loc_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 26
  %35 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %loc_addr, align 4
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %add.ptr, align 1
  %38 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %__data_loc_raddr, align 4
  %and19 = and i32 %39, 65535
  %add.ptr20 = getelementptr i8, ptr %call3, i32 %and19
  %rem_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 27
  %40 = ptrtoint ptr %rem_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rem_addr, align 4
  %42 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %add.ptr20, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cm_node_ah_template(ptr noundef %__data, ptr noundef %cm_node) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !397
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !384) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 84, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !384) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 11
  %27 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048624, ptr %__data_loc_laddr, align 4
  %__data_loc_raddr = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 12
  %28 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1048640, ptr %__data_loc_raddr, align 4
  %iwdev = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 1
  %29 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iwdev, align 4
  %iwdev17 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %iwdev17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %iwdev17, align 4
  %cm_node18 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %cm_node18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cm_node, ptr %cm_node18, align 4
  %ah = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 14
  %33 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ah, align 4
  %ah19 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %ah19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %ah19, align 4
  %refcnt = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 22
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %36 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %refcnt, align 4
  %refcount = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %refcount, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 28
  %39 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %loc_port, align 4
  %lport = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %lport, align 4
  %rem_port = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 29
  %42 = ptrtoint ptr %rem_port to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rem_port, align 2
  %rport = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 6
  %44 = ptrtoint ptr %rport to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %rport, align 2
  %state = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 23
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state, align 4
  %state21 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 7
  %47 = ptrtoint ptr %state21 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %state21, align 4
  %ipv4 = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 42
  %48 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %ipv4, align 4
  %ipv422 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 8
  %49 = lshr i8 %bf.load, 5
  %.lobit = and i8 %49, 1
  %50 = ptrtoint ptr %ipv422 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.lobit, ptr %ipv422, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 32
  %51 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vlan_id, align 4
  %vlan_id23 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 9
  %53 = ptrtoint ptr %vlan_id23 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %vlan_id23, align 2
  %bf.load24 = load i8, ptr %ipv4, align 4
  %54 = lshr i8 %bf.load24, 1
  %.lobit79 = and i8 %54, 1
  %55 = zext i8 %.lobit79 to i32
  %accel = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %call13, i32 0, i32 10
  %56 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %accel, align 4
  %57 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %__data_loc_laddr, align 4
  %and29 = and i32 %58, 65535
  %add.ptr = getelementptr i8, ptr %call13, i32 %and29
  %loc_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 26
  %59 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %loc_addr, align 4
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %add.ptr, align 1
  %62 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %__data_loc_raddr, align 4
  %and31 = and i32 %63, 65535
  %add.ptr32 = getelementptr i8, ptr %call13, i32 %and31
  %rem_addr = getelementptr inbounds %struct.irdma_cm_node, ptr %cm_node, i32 0, i32 27
  %64 = ptrtoint ptr %rem_addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rem_addr, align 4
  %66 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %add.ptr32, align 1
  %67 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rctx, align 4
  %69 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 84, i32 noundef %68, ptr noundef %__data, i64 noundef 1, ptr noundef %70, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_irdma_create_listen(ptr noundef %__data, ptr noundef %iwdev, ptr noundef %cm_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %iwdev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %cm_info to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_irdma_dec_refcnt_listen(ptr noundef %__data, ptr noundef %listener, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %listener to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %caller to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_listener_template(ptr noundef %__data, ptr noundef %listener) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %listener to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_irdma_negotiate_mpa_v2(ptr noundef %__data, ptr noundef %cm_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %cm_node to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tos_template(ptr noundef %__data, ptr noundef %iwdev, i8 noundef zeroext %tos, i8 noundef zeroext %user_pri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %iwdev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %tos to i64
  %conv8 = zext i8 %user_pri to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_qhash_template(ptr noundef %__data, ptr noundef %iwdev, ptr noundef %listener, ptr noundef %dev_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %iwdev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %listener to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %dev_addr to i32
  %conv8 = zext i32 %2 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_irdma_addr_resolve(ptr noundef %__data, ptr noundef %iwdev, ptr noundef %dev_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %iwdev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %dev_addr to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_irdma_send_cm_event(ptr noundef %__data, ptr noundef %cm_node, ptr noundef %cm_id, i32 noundef %type, i32 noundef %status, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %cm_node to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %cm_id to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %type to i64
  %conv12 = zext i32 %status to i64
  %2 = ptrtoint ptr %caller to i32
  %conv16 = zext i32 %2 to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_irdma_send_cm_event_no_node(ptr noundef %__data, ptr noundef %cm_id, i32 noundef %type, i32 noundef %status, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %cm_id to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %type to i64
  %conv8 = zext i32 %status to i64
  %1 = ptrtoint ptr %caller to i32
  %conv12 = zext i32 %1 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cm_node_template(ptr noundef %__data, ptr noundef %cm_node, i32 noundef %type, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %cm_node to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %type to i64
  %1 = ptrtoint ptr %caller to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_open_err_template(ptr noundef %__data, ptr noundef %cm_node, i1 noundef zeroext %reset, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %cm_node to i32
  %conv = zext i32 %0 to i64
  %conv5 = zext i1 %reset to i64
  %1 = ptrtoint ptr %caller to i32
  %conv9 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cm_node_ah_template(ptr noundef %__data, ptr noundef %cm_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %cm_node to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @print_ip_addr(ptr noundef %p, ptr noundef %addr, i16 noundef zeroext %port, i1 noundef zeroext %ipv4) local_unnamed_addr #0 align 64 {
entry:
  %myaddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i, align 4
  br i1 %ipv4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr) #7
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %6 = ptrtoint ptr %myaddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %myaddr, align 4
  %conv = zext i16 %port to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr, i32 noundef %conv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv1 = zext i16 %port to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.1, ptr noundef %addr, i32 noundef %conv1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = call i32 @llvm.umin.i32(i32 %1, i32 %3) #7
  %add.ptr.i = getelementptr i8, ptr %p, i32 %7
  call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #7
  ret ptr %add.ptr.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @parse_iw_event_type(i32 noundef %iw_type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %iw_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.parse_iw_event_type, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.7, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @parse_cm_event_type(i32 noundef %cm_type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cm_type)
  %0 = icmp ult i32 %cm_type, 10
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.parse_cm_event_type, i32 0, i32 %cm_type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.7, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @parse_cm_state(i32 noundef %state) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %state)
  %0 = icmp ult i32 %state, 20
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [20 x ptr], ptr @switch.table.parse_cm_state, i32 0, i32 %state
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.38, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_irdma_create_listen(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %myaddr.i = alloca i32, align 4
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %iwdev = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 4
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_laddr, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %lport = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.trace_event_raw_irdma_create_listen, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ipv4, align 2, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %len.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 2
  %10 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 1
  %12 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i.i.i, align 4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr.i) #7
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  %16 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %myaddr.i, align 4
  %conv.i = zext i16 %7 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr.i, i32 noundef %conv.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr.i) #7
  br label %print_ip_addr.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1, ptr noundef %add.ptr, i32 noundef %conv1.i) #7
  br label %print_ip_addr.exit

print_ip_addr.exit:                               ; preds = %if.else.i, %if.then.i
  %17 = call i32 @llvm.umin.i32(i32 %11, i32 %13) #7
  %add.ptr.i.i = getelementptr i8, ptr %tmp_seq, i32 %17
  call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #7
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.47, ptr noundef %3, ptr noundef %add.ptr.i.i) #7
  %call2 = call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %print_ip_addr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %print_ip_addr.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_irdma_dec_refcnt_listen(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %myaddr.i = alloca i32, align 4
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %iwdev = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 4
  %caller = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caller, align 4
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_laddr, align 4
  %and = and i32 %7, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %lport = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.trace_event_raw_irdma_dec_refcnt_listen, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ipv4, align 2, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %len.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 2
  %12 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 1
  %14 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i.i.i, align 4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr.i) #7
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %18 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %myaddr.i, align 4
  %conv.i = zext i16 %9 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr.i, i32 noundef %conv.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr.i) #7
  br label %print_ip_addr.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1, ptr noundef %add.ptr, i32 noundef %conv1.i) #7
  br label %print_ip_addr.exit

print_ip_addr.exit:                               ; preds = %if.else.i, %if.then.i
  %19 = call i32 @llvm.umin.i32(i32 %13, i32 %15) #7
  %add.ptr.i.i = getelementptr i8, ptr %tmp_seq, i32 %19
  call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #7
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.52, ptr noundef %3, ptr noundef %5, ptr noundef %add.ptr.i.i) #7
  %call2 = call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %print_ip_addr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %print_ip_addr.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_listener_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %myaddr.i = alloca i32, align 4
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %iwdev = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 4
  %vlan_id = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_id, align 2
  %conv = zext i16 %5 to i32
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_laddr, align 4
  %and = and i32 %7, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %lport = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.trace_event_raw_listener_template, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ipv4, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %len.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 2
  %12 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 1
  %14 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i.i.i, align 4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr.i) #7
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %18 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %myaddr.i, align 4
  %conv.i = zext i16 %9 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr.i, i32 noundef %conv.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr.i) #7
  br label %print_ip_addr.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1, ptr noundef %add.ptr, i32 noundef %conv1.i) #7
  br label %print_ip_addr.exit

print_ip_addr.exit:                               ; preds = %if.else.i, %if.then.i
  %19 = call i32 @llvm.umin.i32(i32 %13, i32 %15) #7
  %add.ptr.i.i = getelementptr i8, ptr %tmp_seq, i32 %19
  call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #7
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.56, ptr noundef %3, i32 noundef %conv, ptr noundef %add.ptr.i.i) #7
  %call2 = call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %print_ip_addr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %print_ip_addr.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_irdma_negotiate_mpa_v2(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cm_node = getelementptr inbounds %struct.trace_event_raw_irdma_negotiate_mpa_v2, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cm_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_node, align 4
  %ord_size = getelementptr inbounds %struct.trace_event_raw_irdma_negotiate_mpa_v2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ord_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ord_size, align 4
  %conv = zext i16 %5 to i32
  %ird_size = getelementptr inbounds %struct.trace_event_raw_irdma_negotiate_mpa_v2, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ird_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ird_size, align 2
  %conv1 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.61, ptr noundef %3, i32 noundef %conv, i32 noundef %conv1) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tos_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %iwdev = getelementptr inbounds %struct.trace_event_raw_tos_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 4
  %tos = getelementptr inbounds %struct.trace_event_raw_tos_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tos, align 4
  %conv = zext i8 %5 to i32
  %user_pri = getelementptr inbounds %struct.trace_event_raw_tos_template, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %user_pri to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %user_pri, align 1
  %conv1 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.65, ptr noundef %3, i32 noundef %conv, i32 noundef %conv1) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_qhash_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %myaddr.i = alloca i32, align 4
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %iwdev = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 4
  %vlan_id = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_id, align 2
  %conv = zext i16 %5 to i32
  %__data_loc_mac = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %__data_loc_mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_mac, align 4
  %and = and i32 %7, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_loc_laddr, align 4
  %and1 = and i32 %9, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %lport = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.trace_event_raw_qhash_template, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ipv4, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %len.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 2
  %14 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 1
  %16 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i.i, align 4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr.i) #7
  %18 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr2, align 4
  %20 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %myaddr.i, align 4
  %conv.i = zext i16 %11 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr.i, i32 noundef %conv.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr.i) #7
  br label %print_ip_addr.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1, ptr noundef %add.ptr2, i32 noundef %conv1.i) #7
  br label %print_ip_addr.exit

print_ip_addr.exit:                               ; preds = %if.else.i, %if.then.i
  %21 = call i32 @llvm.umin.i32(i32 %15, i32 %17) #7
  %add.ptr.i.i = getelementptr i8, ptr %tmp_seq, i32 %21
  call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #7
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.67, ptr noundef %3, i32 noundef %conv, ptr noundef %add.ptr, ptr noundef %add.ptr.i.i) #7
  %call4 = call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %print_ip_addr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %print_ip_addr.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_irdma_addr_resolve(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %iwdev = getelementptr inbounds %struct.trace_event_raw_irdma_addr_resolve, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 4
  %__data_loc_mac = getelementptr inbounds %struct.trace_event_raw_irdma_addr_resolve, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_mac, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.69, ptr noundef %3, ptr noundef %add.ptr) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_irdma_send_cm_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %myaddr.i42 = alloca i32, align 4
  %myaddr.i = alloca i32, align 4
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %iwdev = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 4
  %caller = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caller, align 4
  %cm_id = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cm_id, align 4
  %cm_node = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %cm_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cm_node, align 4
  %refcount = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refcount, align 4
  %vlan_id = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan_id, align 2
  %conv = zext i16 %13 to i32
  %accel = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %accel, align 4
  %state = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %17)
  %18 = icmp ult i32 %17, 20
  br i1 %18, label %switch.lookup, label %if.end.parse_cm_state.exit_crit_edge

if.end.parse_cm_state.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_cm_state.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [20 x ptr], ptr @switch.table.trace_raw_output_irdma_send_cm_event, i32 0, i32 %17
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %parse_cm_state.exit

parse_cm_state.exit:                              ; preds = %switch.lookup, %if.end.parse_cm_state.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.38, %if.end.parse_cm_state.exit_crit_edge ]
  %type = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 5
  br i1 %22, label %switch.lookup51, label %parse_cm_state.exit.parse_iw_event_type.exit_crit_edge

parse_cm_state.exit.parse_iw_event_type.exit_crit_edge: ; preds = %parse_cm_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_iw_event_type.exit

switch.lookup51:                                  ; preds = %parse_cm_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep52 = getelementptr inbounds [5 x ptr], ptr @switch.table.trace_raw_output_irdma_send_cm_event.90, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load53 = load ptr, ptr %switch.gep52, align 4
  br label %parse_iw_event_type.exit

parse_iw_event_type.exit:                         ; preds = %switch.lookup51, %parse_cm_state.exit.parse_iw_event_type.exit_crit_edge
  %retval.0.i41 = phi ptr [ %switch.load53, %switch.lookup51 ], [ @.str.7, %parse_cm_state.exit.parse_iw_event_type.exit_crit_edge ]
  %status = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 14
  %26 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %__data_loc_laddr, align 4
  %and = and i32 %27, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %lport = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ipv4, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  %len.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 2
  %32 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 1
  %34 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.i.i, align 4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %parse_iw_event_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr.i) #7
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr, align 4
  %38 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %myaddr.i, align 4
  %conv.i = zext i16 %29 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr.i, i32 noundef %conv.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr.i) #7
  br label %print_ip_addr.exit

if.else.i:                                        ; preds = %parse_iw_event_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1, ptr noundef %add.ptr, i32 noundef %conv1.i) #7
  br label %print_ip_addr.exit

print_ip_addr.exit:                               ; preds = %if.else.i, %if.then.i
  %39 = call i32 @llvm.umin.i32(i32 %33, i32 %35) #7
  %add.ptr.i.i = getelementptr i8, ptr %tmp_seq, i32 %39
  call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #7
  %__data_loc_raddr = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 15
  %40 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %__data_loc_raddr, align 4
  %and4 = and i32 %41, 65535
  %add.ptr5 = getelementptr i8, ptr %1, i32 %and4
  %rport = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %rport to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rport, align 2
  %44 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ipv4, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool7.not = icmp eq i8 %45, 0
  %46 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i.i, align 8
  %48 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.i.i.i, align 4
  br i1 %tobool7.not, label %if.else.i48, label %if.then.i46

if.then.i46:                                      ; preds = %print_ip_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr.i42) #7
  %50 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr5, align 4
  %52 = ptrtoint ptr %myaddr.i42 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %myaddr.i42, align 4
  %conv.i45 = zext i16 %43 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr.i42, i32 noundef %conv.i45) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr.i42) #7
  br label %print_ip_addr.exit50

if.else.i48:                                      ; preds = %print_ip_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i47 = zext i16 %43 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1, ptr noundef %add.ptr5, i32 noundef %conv1.i47) #7
  br label %print_ip_addr.exit50

print_ip_addr.exit50:                             ; preds = %if.else.i48, %if.then.i46
  %53 = call i32 @llvm.umin.i32(i32 %47, i32 %49) #7
  %add.ptr.i.i49 = getelementptr i8, ptr %tmp_seq, i32 %53
  call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #7
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.81, ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %conv, i32 noundef %15, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %retval.0.i41, i32 noundef %25, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr.i.i49) #7
  %call9 = call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %print_ip_addr.exit50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %print_ip_addr.exit50 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_irdma_send_cm_event_no_node(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cm_id = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_id, align 4
  %caller = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caller, align 4
  %type = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 5
  br i1 %8, label %switch.lookup, label %if.end.parse_iw_event_type.exit_crit_edge

if.end.parse_iw_event_type.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_iw_event_type.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.trace_raw_output_irdma_send_cm_event_no_node, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %parse_iw_event_type.exit

parse_iw_event_type.exit:                         ; preds = %switch.lookup, %if.end.parse_iw_event_type.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.7, %if.end.parse_iw_event_type.exit_crit_edge ]
  %status = getelementptr inbounds %struct.trace_event_raw_irdma_send_cm_event_no_node, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.82, ptr noundef %3, ptr noundef %5, ptr noundef nonnull %retval.0.i, i32 noundef %11) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %parse_iw_event_type.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %parse_iw_event_type.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cm_node_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %myaddr.i45 = alloca i32, align 4
  %myaddr.i = alloca i32, align 4
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %iwdev = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 4
  %caller = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caller, align 4
  %cm_node = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cm_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cm_node, align 4
  %refcount = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refcount, align 4
  %vlan_id = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_id, align 2
  %conv = zext i16 %11 to i32
  %accel = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %accel, align 4
  %state = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %15)
  %16 = icmp ult i32 %15, 20
  br i1 %16, label %switch.lookup, label %if.end.parse_cm_state.exit_crit_edge

if.end.parse_cm_state.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_cm_state.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [20 x ptr], ptr @switch.table.trace_raw_output_cm_node_template, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %parse_cm_state.exit

parse_cm_state.exit:                              ; preds = %switch.lookup, %if.end.parse_cm_state.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.38, %if.end.parse_cm_state.exit_crit_edge ]
  %type = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %19)
  %20 = icmp ult i32 %19, 10
  br i1 %20, label %switch.lookup54, label %parse_cm_state.exit.parse_cm_event_type.exit_crit_edge

parse_cm_state.exit.parse_cm_event_type.exit_crit_edge: ; preds = %parse_cm_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_cm_event_type.exit

switch.lookup54:                                  ; preds = %parse_cm_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep55 = getelementptr inbounds [10 x ptr], ptr @switch.table.trace_raw_output_cm_node_template.91, i32 0, i32 %19
  %21 = ptrtoint ptr %switch.gep55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load56 = load ptr, ptr %switch.gep55, align 4
  br label %parse_cm_event_type.exit

parse_cm_event_type.exit:                         ; preds = %switch.lookup54, %parse_cm_state.exit.parse_cm_event_type.exit_crit_edge
  %retval.0.i44 = phi ptr [ %switch.load56, %switch.lookup54 ], [ @.str.7, %parse_cm_state.exit.parse_cm_event_type.exit_crit_edge ]
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__data_loc_laddr, align 4
  %and = and i32 %23, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %lport = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ipv4, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  %len.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 2
  %28 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 1
  %30 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i.i.i, align 4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %parse_cm_event_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr.i) #7
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr, align 4
  %34 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %myaddr.i, align 4
  %conv.i = zext i16 %25 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr.i, i32 noundef %conv.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr.i) #7
  br label %print_ip_addr.exit

if.else.i:                                        ; preds = %parse_cm_event_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1, ptr noundef %add.ptr, i32 noundef %conv1.i) #7
  br label %print_ip_addr.exit

print_ip_addr.exit:                               ; preds = %if.else.i, %if.then.i
  %35 = call i32 @llvm.umin.i32(i32 %29, i32 %31) #7
  %add.ptr.i.i = getelementptr i8, ptr %tmp_seq, i32 %35
  call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #7
  %__data_loc_raddr = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 13
  %36 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %__data_loc_raddr, align 4
  %and4 = and i32 %37, 65535
  %add.ptr5 = getelementptr i8, ptr %1, i32 %and4
  %rport = getelementptr inbounds %struct.trace_event_raw_cm_node_template, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %rport to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rport, align 2
  %40 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ipv4, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool7.not = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i.i, align 8
  %44 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i.i.i, align 4
  br i1 %tobool7.not, label %if.else.i51, label %if.then.i49

if.then.i49:                                      ; preds = %print_ip_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr.i45) #7
  %46 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr5, align 4
  %48 = ptrtoint ptr %myaddr.i45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %myaddr.i45, align 4
  %conv.i48 = zext i16 %39 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr.i45, i32 noundef %conv.i48) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr.i45) #7
  br label %print_ip_addr.exit53

if.else.i51:                                      ; preds = %print_ip_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i50 = zext i16 %39 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1, ptr noundef %add.ptr5, i32 noundef %conv1.i50) #7
  br label %print_ip_addr.exit53

print_ip_addr.exit53:                             ; preds = %if.else.i51, %if.then.i49
  %49 = call i32 @llvm.umin.i32(i32 %43, i32 %45) #7
  %add.ptr.i.i52 = getelementptr i8, ptr %tmp_seq, i32 %49
  call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #7
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.84, ptr noundef %3, ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %conv, i32 noundef %13, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %retval.0.i44, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr.i.i52) #7
  %call9 = call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %print_ip_addr.exit53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %print_ip_addr.exit53 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_open_err_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %iwdev = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 4
  %caller = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caller, align 4
  %cm_node = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cm_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cm_node, align 4
  %reset = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reset, align 4, !range !396
  %10 = zext i8 %9 to i32
  %state = getelementptr inbounds %struct.trace_event_raw_open_err_template, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %12)
  %13 = icmp ult i32 %12, 20
  br i1 %13, label %switch.lookup, label %if.end.parse_cm_state.exit_crit_edge

if.end.parse_cm_state.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_cm_state.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [20 x ptr], ptr @switch.table.trace_raw_output_open_err_template, i32 0, i32 %12
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %parse_cm_state.exit

parse_cm_state.exit:                              ; preds = %switch.lookup, %if.end.parse_cm_state.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.38, %if.end.parse_cm_state.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.86, ptr noundef %3, ptr noundef %5, ptr noundef %7, i32 noundef %10, ptr noundef nonnull %retval.0.i) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %parse_cm_state.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %parse_cm_state.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cm_node_ah_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %myaddr.i32 = alloca i32, align 4
  %myaddr.i = alloca i32, align 4
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %iwdev = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 4
  %cm_node = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cm_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cm_node, align 4
  %ah = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %refcount = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refcount, align 4
  %vlan_id = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_id, align 2
  %conv = zext i16 %11 to i32
  %accel = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %accel, align 4
  %state = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %15)
  %16 = icmp ult i32 %15, 20
  br i1 %16, label %switch.lookup, label %if.end.parse_cm_state.exit_crit_edge

if.end.parse_cm_state.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_cm_state.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [20 x ptr], ptr @switch.table.trace_raw_output_cm_node_ah_template, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %parse_cm_state.exit

parse_cm_state.exit:                              ; preds = %switch.lookup, %if.end.parse_cm_state.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.38, %if.end.parse_cm_state.exit_crit_edge ]
  %__data_loc_laddr = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %__data_loc_laddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__data_loc_laddr, align 4
  %and = and i32 %19, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %lport = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %lport, align 4
  %ipv4 = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ipv4, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  %len.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 2
  %24 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 1
  %26 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i.i.i, align 4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %parse_cm_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr.i) #7
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr, align 4
  %30 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %myaddr.i, align 4
  %conv.i = zext i16 %21 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr.i, i32 noundef %conv.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr.i) #7
  br label %print_ip_addr.exit

if.else.i:                                        ; preds = %parse_cm_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1, ptr noundef %add.ptr, i32 noundef %conv1.i) #7
  br label %print_ip_addr.exit

print_ip_addr.exit:                               ; preds = %if.else.i, %if.then.i
  %31 = call i32 @llvm.umin.i32(i32 %25, i32 %27) #7
  %add.ptr.i.i = getelementptr i8, ptr %tmp_seq, i32 %31
  call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #7
  %__data_loc_raddr = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %__data_loc_raddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %__data_loc_raddr, align 4
  %and3 = and i32 %33, 65535
  %add.ptr4 = getelementptr i8, ptr %1, i32 %and3
  %rport = getelementptr inbounds %struct.trace_event_raw_cm_node_ah_template, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %rport to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rport, align 2
  %36 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ipv4, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool6.not = icmp eq i8 %37, 0
  %38 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i.i.i, align 8
  %40 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i.i.i, align 4
  br i1 %tobool6.not, label %if.else.i38, label %if.then.i36

if.then.i36:                                      ; preds = %print_ip_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %myaddr.i32) #7
  %42 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr4, align 4
  %44 = ptrtoint ptr %myaddr.i32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %myaddr.i32, align 4
  %conv.i35 = zext i16 %35 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef nonnull %myaddr.i32, i32 noundef %conv.i35) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %myaddr.i32) #7
  br label %print_ip_addr.exit40

if.else.i38:                                      ; preds = %print_ip_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i37 = zext i16 %35 to i32
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1, ptr noundef %add.ptr4, i32 noundef %conv1.i37) #7
  br label %print_ip_addr.exit40

print_ip_addr.exit40:                             ; preds = %if.else.i38, %if.then.i36
  %45 = call i32 @llvm.umin.i32(i32 %39, i32 %41) #7
  %add.ptr.i.i39 = getelementptr i8, ptr %tmp_seq, i32 %45
  call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #7
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.89, ptr noundef %3, ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %conv, i32 noundef %13, ptr noundef nonnull %retval.0.i, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr.i.i39) #7
  %call8 = call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %print_ip_addr.exit40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %print_ip_addr.exit40 ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !102, !103, !104, !105, !106, !108, !109, !110, !111, !112, !113, !114, !115, !117, !118, !119, !120, !121, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!llvm.named.register.sp = !{!384}
!llvm.module.flags = !{!385, !386, !387, !388, !389, !390, !391, !392}
!llvm.ident = !{!393}

!0 = !{ptr @__tracepoint_irdma_create_listen, !1, !"__tracepoint_irdma_create_listen", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 20, i32 1}
!2 = !{ptr @__tracepoint_ptr_irdma_create_listen, !1, !"__tracepoint_ptr_irdma_create_listen", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_irdma_create_listen, !1, !"__SCK__tp_func_irdma_create_listen", i1 false, i1 false}
!4 = !{ptr @__tracepoint_irdma_dec_refcnt_listen, !5, !"__tracepoint_irdma_dec_refcnt_listen", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 41, i32 1}
!6 = !{ptr @__tracepoint_ptr_irdma_dec_refcnt_listen, !5, !"__tracepoint_ptr_irdma_dec_refcnt_listen", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_irdma_dec_refcnt_listen, !5, !"__SCK__tp_func_irdma_dec_refcnt_listen", i1 false, i1 false}
!8 = !{ptr @__tracepoint_irdma_find_listener, !9, !"__tracepoint_irdma_find_listener", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 92, i32 1}
!10 = !{ptr @__tracepoint_ptr_irdma_find_listener, !9, !"__tracepoint_ptr_irdma_find_listener", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_irdma_find_listener, !9, !"__SCK__tp_func_irdma_find_listener", i1 false, i1 false}
!12 = !{ptr @__tracepoint_irdma_del_multiple_qhash, !13, !"__tracepoint_irdma_del_multiple_qhash", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 96, i32 1}
!14 = !{ptr @__tracepoint_ptr_irdma_del_multiple_qhash, !13, !"__tracepoint_ptr_irdma_del_multiple_qhash", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_irdma_del_multiple_qhash, !13, !"__SCK__tp_func_irdma_del_multiple_qhash", i1 false, i1 false}
!16 = !{ptr @__tracepoint_irdma_negotiate_mpa_v2, !17, !"__tracepoint_irdma_negotiate_mpa_v2", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 100, i32 1}
!18 = !{ptr @__tracepoint_ptr_irdma_negotiate_mpa_v2, !17, !"__tracepoint_ptr_irdma_negotiate_mpa_v2", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_irdma_negotiate_mpa_v2, !17, !"__SCK__tp_func_irdma_negotiate_mpa_v2", i1 false, i1 false}
!20 = !{ptr @__tracepoint_irdma_listener_tos, !21, !"__tracepoint_irdma_listener_tos", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 136, i32 1}
!22 = !{ptr @__tracepoint_ptr_irdma_listener_tos, !21, !"__tracepoint_ptr_irdma_listener_tos", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_irdma_listener_tos, !21, !"__SCK__tp_func_irdma_listener_tos", i1 false, i1 false}
!24 = !{ptr @__tracepoint_irdma_dcb_tos, !25, !"__tracepoint_irdma_dcb_tos", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 140, i32 1}
!26 = !{ptr @__tracepoint_ptr_irdma_dcb_tos, !25, !"__tracepoint_ptr_irdma_dcb_tos", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_irdma_dcb_tos, !25, !"__SCK__tp_func_irdma_dcb_tos", i1 false, i1 false}
!28 = !{ptr @__tracepoint_irdma_add_mqh_6, !29, !"__tracepoint_irdma_add_mqh_6", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 174, i32 1}
!30 = !{ptr @__tracepoint_ptr_irdma_add_mqh_6, !29, !"__tracepoint_ptr_irdma_add_mqh_6", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_irdma_add_mqh_6, !29, !"__SCK__tp_func_irdma_add_mqh_6", i1 false, i1 false}
!32 = !{ptr @__tracepoint_irdma_add_mqh_4, !33, !"__tracepoint_irdma_add_mqh_4", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 180, i32 1}
!34 = !{ptr @__tracepoint_ptr_irdma_add_mqh_4, !33, !"__tracepoint_ptr_irdma_add_mqh_4", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_irdma_add_mqh_4, !33, !"__SCK__tp_func_irdma_add_mqh_4", i1 false, i1 false}
!36 = !{ptr @__tracepoint_irdma_addr_resolve, !37, !"__tracepoint_irdma_addr_resolve", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 186, i32 1}
!38 = !{ptr @__tracepoint_ptr_irdma_addr_resolve, !37, !"__tracepoint_ptr_irdma_addr_resolve", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_irdma_addr_resolve, !37, !"__SCK__tp_func_irdma_addr_resolve", i1 false, i1 false}
!40 = !{ptr @__tracepoint_irdma_send_cm_event, !41, !"__tracepoint_irdma_send_cm_event", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 200, i32 1}
!42 = !{ptr @__tracepoint_ptr_irdma_send_cm_event, !41, !"__tracepoint_ptr_irdma_send_cm_event", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_irdma_send_cm_event, !41, !"__SCK__tp_func_irdma_send_cm_event", i1 false, i1 false}
!44 = !{ptr @__tracepoint_irdma_send_cm_event_no_node, !45, !"__tracepoint_irdma_send_cm_event_no_node", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 256, i32 1}
!46 = !{ptr @__tracepoint_ptr_irdma_send_cm_event_no_node, !45, !"__tracepoint_ptr_irdma_send_cm_event_no_node", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_irdma_send_cm_event_no_node, !45, !"__SCK__tp_func_irdma_send_cm_event_no_node", i1 false, i1 false}
!48 = !{ptr @__tracepoint_irdma_create_event, !49, !"__tracepoint_irdma_create_event", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 328, i32 1}
!50 = !{ptr @__tracepoint_ptr_irdma_create_event, !49, !"__tracepoint_ptr_irdma_create_event", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_irdma_create_event, !49, !"__SCK__tp_func_irdma_create_event", i1 false, i1 false}
!52 = !{ptr @__tracepoint_irdma_accept, !53, !"__tracepoint_irdma_accept", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 333, i32 1}
!54 = !{ptr @__tracepoint_ptr_irdma_accept, !53, !"__tracepoint_ptr_irdma_accept", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_irdma_accept, !53, !"__SCK__tp_func_irdma_accept", i1 false, i1 false}
!56 = !{ptr @__tracepoint_irdma_connect, !57, !"__tracepoint_irdma_connect", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 338, i32 1}
!58 = !{ptr @__tracepoint_ptr_irdma_connect, !57, !"__tracepoint_ptr_irdma_connect", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_irdma_connect, !57, !"__SCK__tp_func_irdma_connect", i1 false, i1 false}
!60 = !{ptr @__tracepoint_irdma_reject, !61, !"__tracepoint_irdma_reject", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 343, i32 1}
!62 = !{ptr @__tracepoint_ptr_irdma_reject, !61, !"__tracepoint_ptr_irdma_reject", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_irdma_reject, !61, !"__SCK__tp_func_irdma_reject", i1 false, i1 false}
!64 = !{ptr @__tracepoint_irdma_find_node, !65, !"__tracepoint_irdma_find_node", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 348, i32 1}
!66 = !{ptr @__tracepoint_ptr_irdma_find_node, !65, !"__tracepoint_ptr_irdma_find_node", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_irdma_find_node, !65, !"__SCK__tp_func_irdma_find_node", i1 false, i1 false}
!68 = !{ptr @__tracepoint_irdma_send_reset, !69, !"__tracepoint_irdma_send_reset", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 353, i32 1}
!70 = !{ptr @__tracepoint_ptr_irdma_send_reset, !69, !"__tracepoint_ptr_irdma_send_reset", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_irdma_send_reset, !69, !"__SCK__tp_func_irdma_send_reset", i1 false, i1 false}
!72 = !{ptr @__tracepoint_irdma_rem_ref_cm_node, !73, !"__tracepoint_irdma_rem_ref_cm_node", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 358, i32 1}
!74 = !{ptr @__tracepoint_ptr_irdma_rem_ref_cm_node, !73, !"__tracepoint_ptr_irdma_rem_ref_cm_node", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_irdma_rem_ref_cm_node, !73, !"__SCK__tp_func_irdma_rem_ref_cm_node", i1 false, i1 false}
!76 = !{ptr @__tracepoint_irdma_cm_event_handler, !77, !"__tracepoint_irdma_cm_event_handler", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 363, i32 1}
!78 = !{ptr @__tracepoint_ptr_irdma_cm_event_handler, !77, !"__tracepoint_ptr_irdma_cm_event_handler", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_irdma_cm_event_handler, !77, !"__SCK__tp_func_irdma_cm_event_handler", i1 false, i1 false}
!80 = !{ptr @__tracepoint_open_err_template, !81, !"__tracepoint_open_err_template", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 368, i32 1}
!82 = !{ptr @__tracepoint_ptr_open_err_template, !81, !"__tracepoint_ptr_open_err_template", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_open_err_template, !81, !"__SCK__tp_func_open_err_template", i1 false, i1 false}
!84 = !{ptr @__tracepoint_irdma_active_open_err, !85, !"__tracepoint_irdma_active_open_err", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 392, i32 1}
!86 = !{ptr @__tracepoint_ptr_irdma_active_open_err, !85, !"__tracepoint_ptr_irdma_active_open_err", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_irdma_active_open_err, !85, !"__SCK__tp_func_irdma_active_open_err", i1 false, i1 false}
!88 = !{ptr @__tracepoint_irdma_passive_open_err, !89, !"__tracepoint_irdma_passive_open_err", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 396, i32 1}
!90 = !{ptr @__tracepoint_ptr_irdma_passive_open_err, !89, !"__tracepoint_ptr_irdma_passive_open_err", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_irdma_passive_open_err, !89, !"__SCK__tp_func_irdma_passive_open_err", i1 false, i1 false}
!92 = !{ptr @__tracepoint_irdma_cm_free_ah, !93, !"__tracepoint_irdma_cm_free_ah", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 446, i32 1}
!94 = !{ptr @__tracepoint_ptr_irdma_cm_free_ah, !93, !"__tracepoint_ptr_irdma_cm_free_ah", i1 false, i1 false}
!95 = !{ptr @__SCK__tp_func_irdma_cm_free_ah, !93, !"__SCK__tp_func_irdma_cm_free_ah", i1 false, i1 false}
!96 = !{ptr @__tracepoint_irdma_create_ah, !97, !"__tracepoint_irdma_create_ah", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 450, i32 1}
!98 = !{ptr @__tracepoint_ptr_irdma_create_ah, !97, !"__tracepoint_ptr_irdma_create_ah", i1 false, i1 false}
!99 = !{ptr @__SCK__tp_func_irdma_create_ah, !97, !"__SCK__tp_func_irdma_create_ah", i1 false, i1 false}
!100 = !{ptr @event_class_irdma_create_listen, !1, !"event_class_irdma_create_listen", i1 false, i1 false}
!101 = !{ptr @event_irdma_create_listen, !1, !"event_irdma_create_listen", i1 false, i1 false}
!102 = !{ptr @__event_irdma_create_listen, !1, !"__event_irdma_create_listen", i1 false, i1 false}
!103 = !{ptr @event_class_irdma_dec_refcnt_listen, !5, !"event_class_irdma_dec_refcnt_listen", i1 false, i1 false}
!104 = !{ptr @event_irdma_dec_refcnt_listen, !5, !"event_irdma_dec_refcnt_listen", i1 false, i1 false}
!105 = !{ptr @__event_irdma_dec_refcnt_listen, !5, !"__event_irdma_dec_refcnt_listen", i1 false, i1 false}
!106 = !{ptr @event_class_listener_template, !107, !"event_class_listener_template", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 65, i32 1}
!108 = !{ptr @event_irdma_find_listener, !9, !"event_irdma_find_listener", i1 false, i1 false}
!109 = !{ptr @__event_irdma_find_listener, !9, !"__event_irdma_find_listener", i1 false, i1 false}
!110 = !{ptr @event_irdma_del_multiple_qhash, !13, !"event_irdma_del_multiple_qhash", i1 false, i1 false}
!111 = !{ptr @__event_irdma_del_multiple_qhash, !13, !"__event_irdma_del_multiple_qhash", i1 false, i1 false}
!112 = !{ptr @event_class_irdma_negotiate_mpa_v2, !17, !"event_class_irdma_negotiate_mpa_v2", i1 false, i1 false}
!113 = !{ptr @event_irdma_negotiate_mpa_v2, !17, !"event_irdma_negotiate_mpa_v2", i1 false, i1 false}
!114 = !{ptr @__event_irdma_negotiate_mpa_v2, !17, !"__event_irdma_negotiate_mpa_v2", i1 false, i1 false}
!115 = !{ptr @event_class_tos_template, !116, !"event_class_tos_template", i1 false, i1 false}
!116 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 118, i32 1}
!117 = !{ptr @event_irdma_listener_tos, !21, !"event_irdma_listener_tos", i1 false, i1 false}
!118 = !{ptr @__event_irdma_listener_tos, !21, !"__event_irdma_listener_tos", i1 false, i1 false}
!119 = !{ptr @event_irdma_dcb_tos, !25, !"event_irdma_dcb_tos", i1 false, i1 false}
!120 = !{ptr @__event_irdma_dcb_tos, !25, !"__event_irdma_dcb_tos", i1 false, i1 false}
!121 = !{ptr @event_class_qhash_template, !122, !"event_class_qhash_template", i1 false, i1 false}
!122 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 144, i32 1}
!123 = !{ptr @event_irdma_add_mqh_6, !29, !"event_irdma_add_mqh_6", i1 false, i1 false}
!124 = !{ptr @__event_irdma_add_mqh_6, !29, !"__event_irdma_add_mqh_6", i1 false, i1 false}
!125 = !{ptr @event_irdma_add_mqh_4, !33, !"event_irdma_add_mqh_4", i1 false, i1 false}
!126 = !{ptr @__event_irdma_add_mqh_4, !33, !"__event_irdma_add_mqh_4", i1 false, i1 false}
!127 = !{ptr @event_class_irdma_addr_resolve, !37, !"event_class_irdma_addr_resolve", i1 false, i1 false}
!128 = !{ptr @event_irdma_addr_resolve, !37, !"event_irdma_addr_resolve", i1 false, i1 false}
!129 = !{ptr @__event_irdma_addr_resolve, !37, !"__event_irdma_addr_resolve", i1 false, i1 false}
!130 = !{ptr @event_class_irdma_send_cm_event, !41, !"event_class_irdma_send_cm_event", i1 false, i1 false}
!131 = !{ptr @event_irdma_send_cm_event, !41, !"event_irdma_send_cm_event", i1 false, i1 false}
!132 = !{ptr @__event_irdma_send_cm_event, !41, !"__event_irdma_send_cm_event", i1 false, i1 false}
!133 = !{ptr @event_class_irdma_send_cm_event_no_node, !45, !"event_class_irdma_send_cm_event_no_node", i1 false, i1 false}
!134 = !{ptr @event_irdma_send_cm_event_no_node, !45, !"event_irdma_send_cm_event_no_node", i1 false, i1 false}
!135 = !{ptr @__event_irdma_send_cm_event_no_node, !45, !"__event_irdma_send_cm_event_no_node", i1 false, i1 false}
!136 = !{ptr @event_class_cm_node_template, !137, !"event_class_cm_node_template", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 278, i32 1}
!138 = !{ptr @event_irdma_create_event, !49, !"event_irdma_create_event", i1 false, i1 false}
!139 = !{ptr @__event_irdma_create_event, !49, !"__event_irdma_create_event", i1 false, i1 false}
!140 = !{ptr @event_irdma_accept, !53, !"event_irdma_accept", i1 false, i1 false}
!141 = !{ptr @__event_irdma_accept, !53, !"__event_irdma_accept", i1 false, i1 false}
!142 = !{ptr @event_irdma_connect, !57, !"event_irdma_connect", i1 false, i1 false}
!143 = !{ptr @__event_irdma_connect, !57, !"__event_irdma_connect", i1 false, i1 false}
!144 = !{ptr @event_irdma_reject, !61, !"event_irdma_reject", i1 false, i1 false}
!145 = !{ptr @__event_irdma_reject, !61, !"__event_irdma_reject", i1 false, i1 false}
!146 = !{ptr @event_irdma_find_node, !65, !"event_irdma_find_node", i1 false, i1 false}
!147 = !{ptr @__event_irdma_find_node, !65, !"__event_irdma_find_node", i1 false, i1 false}
!148 = !{ptr @event_irdma_send_reset, !69, !"event_irdma_send_reset", i1 false, i1 false}
!149 = !{ptr @__event_irdma_send_reset, !69, !"__event_irdma_send_reset", i1 false, i1 false}
!150 = !{ptr @event_irdma_rem_ref_cm_node, !73, !"event_irdma_rem_ref_cm_node", i1 false, i1 false}
!151 = !{ptr @__event_irdma_rem_ref_cm_node, !73, !"__event_irdma_rem_ref_cm_node", i1 false, i1 false}
!152 = !{ptr @event_irdma_cm_event_handler, !77, !"event_irdma_cm_event_handler", i1 false, i1 false}
!153 = !{ptr @__event_irdma_cm_event_handler, !77, !"__event_irdma_cm_event_handler", i1 false, i1 false}
!154 = !{ptr @event_class_open_err_template, !81, !"event_class_open_err_template", i1 false, i1 false}
!155 = !{ptr @event_open_err_template, !81, !"event_open_err_template", i1 false, i1 false}
!156 = !{ptr @__event_open_err_template, !81, !"__event_open_err_template", i1 false, i1 false}
!157 = !{ptr @event_irdma_active_open_err, !85, !"event_irdma_active_open_err", i1 false, i1 false}
!158 = !{ptr @__event_irdma_active_open_err, !85, !"__event_irdma_active_open_err", i1 false, i1 false}
!159 = !{ptr @event_irdma_passive_open_err, !89, !"event_irdma_passive_open_err", i1 false, i1 false}
!160 = !{ptr @__event_irdma_passive_open_err, !89, !"__event_irdma_passive_open_err", i1 false, i1 false}
!161 = !{ptr @event_class_cm_node_ah_template, !162, !"event_class_cm_node_ah_template", i1 false, i1 false}
!162 = !{!"../drivers/infiniband/hw/irdma/./trace_cm.h", i32 400, i32 1}
!163 = !{ptr @event_irdma_cm_free_ah, !93, !"event_irdma_cm_free_ah", i1 false, i1 false}
!164 = !{ptr @__event_irdma_cm_free_ah, !93, !"__event_irdma_cm_free_ah", i1 false, i1 false}
!165 = !{ptr @event_irdma_create_ah, !97, !"event_irdma_create_ah", i1 false, i1 false}
!166 = !{ptr @__event_irdma_create_ah, !97, !"__event_irdma_create_ah", i1 false, i1 false}
!167 = !{ptr @__bpf_trace_tp_map_irdma_create_listen, !1, !"__bpf_trace_tp_map_irdma_create_listen", i1 false, i1 false}
!168 = !{ptr @__bpf_trace_tp_map_irdma_dec_refcnt_listen, !5, !"__bpf_trace_tp_map_irdma_dec_refcnt_listen", i1 false, i1 false}
!169 = !{ptr @__bpf_trace_tp_map_irdma_find_listener, !9, !"__bpf_trace_tp_map_irdma_find_listener", i1 false, i1 false}
!170 = !{ptr @__bpf_trace_tp_map_irdma_del_multiple_qhash, !13, !"__bpf_trace_tp_map_irdma_del_multiple_qhash", i1 false, i1 false}
!171 = !{ptr @__bpf_trace_tp_map_irdma_negotiate_mpa_v2, !17, !"__bpf_trace_tp_map_irdma_negotiate_mpa_v2", i1 false, i1 false}
!172 = !{ptr @__bpf_trace_tp_map_irdma_listener_tos, !21, !"__bpf_trace_tp_map_irdma_listener_tos", i1 false, i1 false}
!173 = !{ptr @__bpf_trace_tp_map_irdma_dcb_tos, !25, !"__bpf_trace_tp_map_irdma_dcb_tos", i1 false, i1 false}
!174 = !{ptr @__bpf_trace_tp_map_irdma_add_mqh_6, !29, !"__bpf_trace_tp_map_irdma_add_mqh_6", i1 false, i1 false}
!175 = !{ptr @__bpf_trace_tp_map_irdma_add_mqh_4, !33, !"__bpf_trace_tp_map_irdma_add_mqh_4", i1 false, i1 false}
!176 = !{ptr @__bpf_trace_tp_map_irdma_addr_resolve, !37, !"__bpf_trace_tp_map_irdma_addr_resolve", i1 false, i1 false}
!177 = !{ptr @__bpf_trace_tp_map_irdma_send_cm_event, !41, !"__bpf_trace_tp_map_irdma_send_cm_event", i1 false, i1 false}
!178 = !{ptr @__bpf_trace_tp_map_irdma_send_cm_event_no_node, !45, !"__bpf_trace_tp_map_irdma_send_cm_event_no_node", i1 false, i1 false}
!179 = !{ptr @__bpf_trace_tp_map_irdma_create_event, !49, !"__bpf_trace_tp_map_irdma_create_event", i1 false, i1 false}
!180 = !{ptr @__bpf_trace_tp_map_irdma_accept, !53, !"__bpf_trace_tp_map_irdma_accept", i1 false, i1 false}
!181 = !{ptr @__bpf_trace_tp_map_irdma_connect, !57, !"__bpf_trace_tp_map_irdma_connect", i1 false, i1 false}
!182 = !{ptr @__bpf_trace_tp_map_irdma_reject, !61, !"__bpf_trace_tp_map_irdma_reject", i1 false, i1 false}
!183 = !{ptr @__bpf_trace_tp_map_irdma_find_node, !65, !"__bpf_trace_tp_map_irdma_find_node", i1 false, i1 false}
!184 = !{ptr @__bpf_trace_tp_map_irdma_send_reset, !69, !"__bpf_trace_tp_map_irdma_send_reset", i1 false, i1 false}
!185 = !{ptr @__bpf_trace_tp_map_irdma_rem_ref_cm_node, !73, !"__bpf_trace_tp_map_irdma_rem_ref_cm_node", i1 false, i1 false}
!186 = !{ptr @__bpf_trace_tp_map_irdma_cm_event_handler, !77, !"__bpf_trace_tp_map_irdma_cm_event_handler", i1 false, i1 false}
!187 = !{ptr @__bpf_trace_tp_map_open_err_template, !81, !"__bpf_trace_tp_map_open_err_template", i1 false, i1 false}
!188 = !{ptr @__bpf_trace_tp_map_irdma_active_open_err, !85, !"__bpf_trace_tp_map_irdma_active_open_err", i1 false, i1 false}
!189 = !{ptr @__bpf_trace_tp_map_irdma_passive_open_err, !89, !"__bpf_trace_tp_map_irdma_passive_open_err", i1 false, i1 false}
!190 = !{ptr @__bpf_trace_tp_map_irdma_cm_free_ah, !93, !"__bpf_trace_tp_map_irdma_cm_free_ah", i1 false, i1 false}
!191 = !{ptr @__bpf_trace_tp_map_irdma_create_ah, !97, !"__bpf_trace_tp_map_irdma_create_ah", i1 false, i1 false}
!192 = !{ptr @.str, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 13, i32 23}
!194 = !{ptr @.str.1, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 15, i32 23}
!196 = !{ptr @.str.2, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 26, i32 10}
!198 = !{ptr @.str.3, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 28, i32 10}
!200 = !{ptr @.str.4, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 30, i32 10}
!202 = !{ptr @.str.5, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 32, i32 10}
!204 = !{ptr @.str.6, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 34, i32 10}
!206 = !{ptr @.str.7, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 37, i32 9}
!208 = !{ptr @.str.8, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 44, i32 10}
!210 = !{ptr @.str.9, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 46, i32 10}
!212 = !{ptr @.str.10, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 48, i32 10}
!214 = !{ptr @.str.11, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 50, i32 10}
!216 = !{ptr @.str.12, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 52, i32 10}
!218 = !{ptr @.str.13, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 54, i32 10}
!220 = !{ptr @.str.14, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 56, i32 10}
!222 = !{ptr @.str.15, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 58, i32 10}
!224 = !{ptr @.str.16, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 60, i32 10}
!226 = !{ptr @.str.17, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 62, i32 10}
!228 = !{ptr @.str.18, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 71, i32 10}
!230 = !{ptr @.str.19, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 73, i32 10}
!232 = !{ptr @.str.20, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 75, i32 10}
!234 = !{ptr @.str.21, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 77, i32 10}
!236 = !{ptr @.str.22, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 79, i32 10}
!238 = !{ptr @.str.23, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 81, i32 10}
!240 = !{ptr @.str.24, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 83, i32 10}
!242 = !{ptr @.str.25, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 85, i32 10}
!244 = !{ptr @.str.26, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 87, i32 10}
!246 = !{ptr @.str.27, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 89, i32 10}
!248 = !{ptr @.str.28, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 91, i32 10}
!250 = !{ptr @.str.29, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 93, i32 10}
!252 = !{ptr @.str.30, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 95, i32 10}
!254 = !{ptr @.str.31, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 97, i32 10}
!256 = !{ptr @.str.32, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 99, i32 10}
!258 = !{ptr @.str.33, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 101, i32 10}
!260 = !{ptr @.str.34, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 103, i32 10}
!262 = !{ptr @.str.35, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 105, i32 10}
!264 = !{ptr @.str.36, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 107, i32 10}
!266 = !{ptr @.str.37, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 109, i32 10}
!268 = !{ptr @.str.38, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/infiniband/hw/irdma/trace.c", i32 111, i32 10}
!270 = !{ptr @__tpstrtab_irdma_create_listen, !1, !"__tpstrtab_irdma_create_listen", i1 false, i1 false}
!271 = !{ptr @__tpstrtab_irdma_dec_refcnt_listen, !5, !"__tpstrtab_irdma_dec_refcnt_listen", i1 false, i1 false}
!272 = !{ptr @__tpstrtab_irdma_find_listener, !9, !"__tpstrtab_irdma_find_listener", i1 false, i1 false}
!273 = !{ptr @__tpstrtab_irdma_del_multiple_qhash, !13, !"__tpstrtab_irdma_del_multiple_qhash", i1 false, i1 false}
!274 = !{ptr @__tpstrtab_irdma_negotiate_mpa_v2, !17, !"__tpstrtab_irdma_negotiate_mpa_v2", i1 false, i1 false}
!275 = !{ptr @__tpstrtab_irdma_listener_tos, !21, !"__tpstrtab_irdma_listener_tos", i1 false, i1 false}
!276 = !{ptr @__tpstrtab_irdma_dcb_tos, !25, !"__tpstrtab_irdma_dcb_tos", i1 false, i1 false}
!277 = !{ptr @__tpstrtab_irdma_add_mqh_6, !29, !"__tpstrtab_irdma_add_mqh_6", i1 false, i1 false}
!278 = !{ptr @__tpstrtab_irdma_add_mqh_4, !33, !"__tpstrtab_irdma_add_mqh_4", i1 false, i1 false}
!279 = !{ptr @__tpstrtab_irdma_addr_resolve, !37, !"__tpstrtab_irdma_addr_resolve", i1 false, i1 false}
!280 = !{ptr @__tpstrtab_irdma_send_cm_event, !41, !"__tpstrtab_irdma_send_cm_event", i1 false, i1 false}
!281 = !{ptr @__tpstrtab_irdma_send_cm_event_no_node, !45, !"__tpstrtab_irdma_send_cm_event_no_node", i1 false, i1 false}
!282 = !{ptr @__tpstrtab_irdma_create_event, !49, !"__tpstrtab_irdma_create_event", i1 false, i1 false}
!283 = !{ptr @__tpstrtab_irdma_accept, !53, !"__tpstrtab_irdma_accept", i1 false, i1 false}
!284 = !{ptr @__tpstrtab_irdma_connect, !57, !"__tpstrtab_irdma_connect", i1 false, i1 false}
!285 = !{ptr @__tpstrtab_irdma_reject, !61, !"__tpstrtab_irdma_reject", i1 false, i1 false}
!286 = !{ptr @__tpstrtab_irdma_find_node, !65, !"__tpstrtab_irdma_find_node", i1 false, i1 false}
!287 = !{ptr @__tpstrtab_irdma_send_reset, !69, !"__tpstrtab_irdma_send_reset", i1 false, i1 false}
!288 = !{ptr @__tpstrtab_irdma_rem_ref_cm_node, !73, !"__tpstrtab_irdma_rem_ref_cm_node", i1 false, i1 false}
!289 = !{ptr @__tpstrtab_irdma_cm_event_handler, !77, !"__tpstrtab_irdma_cm_event_handler", i1 false, i1 false}
!290 = !{ptr @__tpstrtab_open_err_template, !81, !"__tpstrtab_open_err_template", i1 false, i1 false}
!291 = !{ptr @__tpstrtab_irdma_active_open_err, !85, !"__tpstrtab_irdma_active_open_err", i1 false, i1 false}
!292 = !{ptr @__tpstrtab_irdma_passive_open_err, !89, !"__tpstrtab_irdma_passive_open_err", i1 false, i1 false}
!293 = !{ptr @__tpstrtab_irdma_cm_free_ah, !93, !"__tpstrtab_irdma_cm_free_ah", i1 false, i1 false}
!294 = !{ptr @__tpstrtab_irdma_create_ah, !97, !"__tpstrtab_irdma_create_ah", i1 false, i1 false}
!295 = !{ptr @str__irdma_cm__trace_system_name, !296, !"str__irdma_cm__trace_system_name", i1 false, i1 false}
!296 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!297 = !{ptr @.str.39, !1, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.40, !1, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.41, !1, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.42, !1, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.43, !1, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.44, !1, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.45, !1, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.46, !1, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @trace_event_fields_irdma_create_listen, !1, !"trace_event_fields_irdma_create_listen", i1 false, i1 false}
!306 = !{ptr @trace_event_type_funcs_irdma_create_listen, !1, !"trace_event_type_funcs_irdma_create_listen", i1 false, i1 false}
!307 = !{ptr @.str.47, !1, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @print_fmt_irdma_create_listen, !1, !"print_fmt_irdma_create_listen", i1 false, i1 false}
!309 = !{ptr @.str.48, !5, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.49, !5, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.50, !5, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.51, !5, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @trace_event_fields_irdma_dec_refcnt_listen, !5, !"trace_event_fields_irdma_dec_refcnt_listen", i1 false, i1 false}
!314 = !{ptr @trace_event_type_funcs_irdma_dec_refcnt_listen, !5, !"trace_event_type_funcs_irdma_dec_refcnt_listen", i1 false, i1 false}
!315 = !{ptr @.str.52, !5, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @print_fmt_irdma_dec_refcnt_listen, !5, !"print_fmt_irdma_dec_refcnt_listen", i1 false, i1 false}
!317 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @trace_event_fields_listener_template, !107, !"trace_event_fields_listener_template", i1 false, i1 false}
!321 = !{ptr @trace_event_type_funcs_listener_template, !107, !"trace_event_type_funcs_listener_template", i1 false, i1 false}
!322 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @print_fmt_listener_template, !107, !"print_fmt_listener_template", i1 false, i1 false}
!324 = !{ptr @.str.57, !17, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.58, !17, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.59, !17, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.60, !17, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @trace_event_fields_irdma_negotiate_mpa_v2, !17, !"trace_event_fields_irdma_negotiate_mpa_v2", i1 false, i1 false}
!329 = !{ptr @trace_event_type_funcs_irdma_negotiate_mpa_v2, !17, !"trace_event_type_funcs_irdma_negotiate_mpa_v2", i1 false, i1 false}
!330 = !{ptr @.str.61, !17, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @print_fmt_irdma_negotiate_mpa_v2, !17, !"print_fmt_irdma_negotiate_mpa_v2", i1 false, i1 false}
!332 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @trace_event_fields_tos_template, !116, !"trace_event_fields_tos_template", i1 false, i1 false}
!336 = !{ptr @trace_event_type_funcs_tos_template, !116, !"trace_event_type_funcs_tos_template", i1 false, i1 false}
!337 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @print_fmt_tos_template, !116, !"print_fmt_tos_template", i1 false, i1 false}
!339 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @trace_event_fields_qhash_template, !122, !"trace_event_fields_qhash_template", i1 false, i1 false}
!341 = !{ptr @trace_event_type_funcs_qhash_template, !122, !"trace_event_type_funcs_qhash_template", i1 false, i1 false}
!342 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @print_fmt_qhash_template, !122, !"print_fmt_qhash_template", i1 false, i1 false}
!344 = !{ptr @.str.68, !37, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @trace_event_fields_irdma_addr_resolve, !37, !"trace_event_fields_irdma_addr_resolve", i1 false, i1 false}
!346 = !{ptr @trace_event_type_funcs_irdma_addr_resolve, !37, !"trace_event_type_funcs_irdma_addr_resolve", i1 false, i1 false}
!347 = !{ptr @.str.69, !37, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @print_fmt_irdma_addr_resolve, !37, !"print_fmt_irdma_addr_resolve", i1 false, i1 false}
!349 = !{ptr @.str.70, !41, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.71, !41, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.72, !41, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.73, !41, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.74, !41, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.75, !41, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.76, !41, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.77, !41, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.78, !41, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.79, !41, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.80, !41, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @trace_event_fields_irdma_send_cm_event, !41, !"trace_event_fields_irdma_send_cm_event", i1 false, i1 false}
!361 = !{ptr @trace_event_type_funcs_irdma_send_cm_event, !41, !"trace_event_type_funcs_irdma_send_cm_event", i1 false, i1 false}
!362 = !{ptr @.str.81, !41, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @print_fmt_irdma_send_cm_event, !41, !"print_fmt_irdma_send_cm_event", i1 false, i1 false}
!364 = !{ptr @trace_event_fields_irdma_send_cm_event_no_node, !45, !"trace_event_fields_irdma_send_cm_event_no_node", i1 false, i1 false}
!365 = !{ptr @trace_event_type_funcs_irdma_send_cm_event_no_node, !45, !"trace_event_type_funcs_irdma_send_cm_event_no_node", i1 false, i1 false}
!366 = !{ptr @.str.82, !45, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @print_fmt_irdma_send_cm_event_no_node, !45, !"print_fmt_irdma_send_cm_event_no_node", i1 false, i1 false}
!368 = !{ptr @.str.83, !137, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @trace_event_fields_cm_node_template, !137, !"trace_event_fields_cm_node_template", i1 false, i1 false}
!370 = !{ptr @trace_event_type_funcs_cm_node_template, !137, !"trace_event_type_funcs_cm_node_template", i1 false, i1 false}
!371 = !{ptr @.str.84, !137, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @print_fmt_cm_node_template, !137, !"print_fmt_cm_node_template", i1 false, i1 false}
!373 = !{ptr @.str.85, !81, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @trace_event_fields_open_err_template, !81, !"trace_event_fields_open_err_template", i1 false, i1 false}
!375 = !{ptr @trace_event_type_funcs_open_err_template, !81, !"trace_event_type_funcs_open_err_template", i1 false, i1 false}
!376 = !{ptr @.str.86, !81, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @print_fmt_open_err_template, !81, !"print_fmt_open_err_template", i1 false, i1 false}
!378 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @trace_event_fields_cm_node_ah_template, !162, !"trace_event_fields_cm_node_ah_template", i1 false, i1 false}
!381 = !{ptr @trace_event_type_funcs_cm_node_ah_template, !162, !"trace_event_type_funcs_cm_node_ah_template", i1 false, i1 false}
!382 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @print_fmt_cm_node_ah_template, !162, !"print_fmt_cm_node_ah_template", i1 false, i1 false}
!384 = !{!"sp"}
!385 = !{i32 1, !"wchar_size", i32 2}
!386 = !{i32 1, !"min_enum_size", i32 4}
!387 = !{i32 8, !"branch-target-enforcement", i32 0}
!388 = !{i32 8, !"sign-return-address", i32 0}
!389 = !{i32 8, !"sign-return-address-all", i32 0}
!390 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!391 = !{i32 7, !"uwtable", i32 1}
!392 = !{i32 7, !"frame-pointer", i32 2}
!393 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!394 = !{!"branch_weights", i32 2000, i32 1}
!395 = !{!"branch_weights", i32 1, i32 2000}
!396 = !{i8 0, i8 2}
!397 = !{!"auto-init"}
