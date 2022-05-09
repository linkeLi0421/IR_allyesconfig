; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/trace.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.173 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.175, %struct.trace_event, ptr, ptr, %union.anon.176, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.175 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.176 = type { ptr }
%union.anon.177 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.178 = type { %struct.bpf_raw_event_map }
%union.anon.179 = type { %struct.bpf_raw_event_map }
%union.anon.180 = type { %struct.bpf_raw_event_map }
%union.anon.181 = type { %struct.bpf_raw_event_map }
%union.anon.182 = type { %struct.bpf_raw_event_map }
%union.anon.183 = type { %struct.bpf_raw_event_map }
%union.anon.184 = type { %struct.bpf_raw_event_map }
%union.anon.185 = type { %struct.bpf_raw_event_map }
%union.anon.186 = type { %struct.bpf_raw_event_map }
%union.anon.187 = type { %struct.bpf_raw_event_map }
%union.anon.188 = type { %struct.bpf_raw_event_map }
%union.anon.189 = type { %struct.bpf_raw_event_map }
%union.anon.190 = type { %struct.bpf_raw_event_map }
%union.anon.191 = type { %struct.bpf_raw_event_map }
%union.anon.192 = type { %struct.bpf_raw_event_map }
%union.anon.193 = type { %struct.bpf_raw_event_map }
%union.anon.194 = type { %struct.bpf_raw_event_map }
%union.anon.195 = type { %struct.bpf_raw_event_map }
%union.anon.196 = type { %struct.bpf_raw_event_map }
%union.anon.197 = type { %struct.bpf_raw_event_map }
%union.anon.198 = type { %struct.bpf_raw_event_map }
%union.anon.199 = type { %struct.bpf_raw_event_map }
%union.anon.200 = type { %struct.bpf_raw_event_map }
%union.anon.201 = type { %struct.bpf_raw_event_map }
%union.anon.202 = type { %struct.bpf_raw_event_map }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.3, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.3 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.trace_event_raw_rpcgss_gssapi_event = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.136, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.136 = type { %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_rpcgss_import_ctx = type { %struct.trace_entry, i32, [0 x i8] }
%struct.gss_cred = type { %struct.rpc_cred, i32, ptr, ptr, ptr, i32 }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.trace_event_raw_rpcgss_ctx_class = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.131 }
%union.anon.131 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_event_raw_rpcgss_svc_gssapi_class = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_svc_unwrap_failed = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_svc_seqno_bad = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_svc_accept_upcall = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_svc_authenticate = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.rpc_gss_wire_cred = type { i32, i32, i32, i32, %struct.xdr_netobj }
%struct.xdr_netobj = type { i32, ptr }
%struct.trace_event_raw_rpcgss_unwrap_failed = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_bad_seqno = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_seqno = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.137, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.137 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.trace_event_raw_rpcgss_need_reencode = type { %struct.trace_entry, i32, i32, i32, i32, i32, i8, [0 x i8] }
%struct.trace_event_raw_rpcgss_update_slack = type { %struct.trace_entry, i32, i32, i32, ptr, i32, i32, i32, [0 x i8] }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.trace_event_raw_rpcgss_svc_seqno_class = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_svc_seqno_low = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_upcall_msg = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_upcall_result = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_context = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_createauth = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rpcgss_oid_to_mech = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_rpcgss_import_ctx = internal constant [18 x i8] c"rpcgss_import_ctx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_import_ctx = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_import_ctx }, align 4
@__tracepoint_rpcgss_import_ctx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_import_ctx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_import_ctx, ptr null, ptr @__traceiter_rpcgss_import_ctx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_import_ctx = internal constant ptr @__tracepoint_rpcgss_import_ctx, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_get_mic = internal constant [15 x i8] c"rpcgss_get_mic\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_get_mic = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_get_mic }, align 4
@__tracepoint_rpcgss_get_mic = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_get_mic, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_get_mic, ptr null, ptr @__traceiter_rpcgss_get_mic, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_get_mic = internal constant ptr @__tracepoint_rpcgss_get_mic, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_verify_mic = internal constant [18 x i8] c"rpcgss_verify_mic\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_verify_mic = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_verify_mic }, align 4
@__tracepoint_rpcgss_verify_mic = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_verify_mic, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_verify_mic, ptr null, ptr @__traceiter_rpcgss_verify_mic, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_verify_mic = internal constant ptr @__tracepoint_rpcgss_verify_mic, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_wrap = internal constant [12 x i8] c"rpcgss_wrap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_wrap = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_wrap }, align 4
@__tracepoint_rpcgss_wrap = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_wrap, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_wrap, ptr null, ptr @__traceiter_rpcgss_wrap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_wrap = internal constant ptr @__tracepoint_rpcgss_wrap, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_unwrap = internal constant [14 x i8] c"rpcgss_unwrap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_unwrap = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_unwrap }, align 4
@__tracepoint_rpcgss_unwrap = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_unwrap, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_unwrap, ptr null, ptr @__traceiter_rpcgss_unwrap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_unwrap = internal constant ptr @__tracepoint_rpcgss_unwrap, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_ctx_init = internal constant [16 x i8] c"rpcgss_ctx_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_ctx_init = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_ctx_init }, align 4
@__tracepoint_rpcgss_ctx_init = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_ctx_init, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_ctx_init, ptr null, ptr @__traceiter_rpcgss_ctx_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_ctx_init = internal constant ptr @__tracepoint_rpcgss_ctx_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_ctx_destroy = internal constant [19 x i8] c"rpcgss_ctx_destroy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_ctx_destroy = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_ctx_destroy }, align 4
@__tracepoint_rpcgss_ctx_destroy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_ctx_destroy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_ctx_destroy, ptr null, ptr @__traceiter_rpcgss_ctx_destroy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_ctx_destroy = internal constant ptr @__tracepoint_rpcgss_ctx_destroy, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_unwrap = internal constant [18 x i8] c"rpcgss_svc_unwrap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_unwrap = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_unwrap }, align 4
@__tracepoint_rpcgss_svc_unwrap = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_svc_unwrap, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_unwrap, ptr null, ptr @__traceiter_rpcgss_svc_unwrap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_unwrap = internal constant ptr @__tracepoint_rpcgss_svc_unwrap, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_mic = internal constant [15 x i8] c"rpcgss_svc_mic\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_mic = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_mic }, align 4
@__tracepoint_rpcgss_svc_mic = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_svc_mic, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_mic, ptr null, ptr @__traceiter_rpcgss_svc_mic, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_mic = internal constant ptr @__tracepoint_rpcgss_svc_mic, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_unwrap_failed = internal constant [25 x i8] c"rpcgss_svc_unwrap_failed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_unwrap_failed = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_unwrap_failed }, align 4
@__tracepoint_rpcgss_svc_unwrap_failed = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_svc_unwrap_failed, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_unwrap_failed, ptr null, ptr @__traceiter_rpcgss_svc_unwrap_failed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_unwrap_failed = internal constant ptr @__tracepoint_rpcgss_svc_unwrap_failed, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_seqno_bad = internal constant [21 x i8] c"rpcgss_svc_seqno_bad\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_seqno_bad = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_seqno_bad }, align 4
@__tracepoint_rpcgss_svc_seqno_bad = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_svc_seqno_bad, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_seqno_bad, ptr null, ptr @__traceiter_rpcgss_svc_seqno_bad, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_seqno_bad = internal constant ptr @__tracepoint_rpcgss_svc_seqno_bad, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_accept_upcall = internal constant [25 x i8] c"rpcgss_svc_accept_upcall\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_accept_upcall = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_accept_upcall }, align 4
@__tracepoint_rpcgss_svc_accept_upcall = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_svc_accept_upcall, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_accept_upcall, ptr null, ptr @__traceiter_rpcgss_svc_accept_upcall, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_accept_upcall = internal constant ptr @__tracepoint_rpcgss_svc_accept_upcall, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_authenticate = internal constant [24 x i8] c"rpcgss_svc_authenticate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_authenticate = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_authenticate }, align 4
@__tracepoint_rpcgss_svc_authenticate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_svc_authenticate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_authenticate, ptr null, ptr @__traceiter_rpcgss_svc_authenticate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_authenticate = internal constant ptr @__tracepoint_rpcgss_svc_authenticate, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_unwrap_failed = internal constant [21 x i8] c"rpcgss_unwrap_failed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_unwrap_failed = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_unwrap_failed }, align 4
@__tracepoint_rpcgss_unwrap_failed = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_unwrap_failed, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_unwrap_failed, ptr null, ptr @__traceiter_rpcgss_unwrap_failed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_unwrap_failed = internal constant ptr @__tracepoint_rpcgss_unwrap_failed, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_bad_seqno = internal constant [17 x i8] c"rpcgss_bad_seqno\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_bad_seqno = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_bad_seqno }, align 4
@__tracepoint_rpcgss_bad_seqno = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_bad_seqno, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_bad_seqno, ptr null, ptr @__traceiter_rpcgss_bad_seqno, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_bad_seqno = internal constant ptr @__tracepoint_rpcgss_bad_seqno, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_seqno = internal constant [13 x i8] c"rpcgss_seqno\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_seqno = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_seqno }, align 4
@__tracepoint_rpcgss_seqno = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_seqno, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_seqno, ptr null, ptr @__traceiter_rpcgss_seqno, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_seqno = internal constant ptr @__tracepoint_rpcgss_seqno, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_need_reencode = internal constant [21 x i8] c"rpcgss_need_reencode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_need_reencode = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_need_reencode }, align 4
@__tracepoint_rpcgss_need_reencode = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_need_reencode, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_need_reencode, ptr null, ptr @__traceiter_rpcgss_need_reencode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_need_reencode = internal constant ptr @__tracepoint_rpcgss_need_reencode, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_update_slack = internal constant [20 x i8] c"rpcgss_update_slack\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_update_slack = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_update_slack }, align 4
@__tracepoint_rpcgss_update_slack = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_update_slack, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_update_slack, ptr null, ptr @__traceiter_rpcgss_update_slack, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_update_slack = internal constant ptr @__tracepoint_rpcgss_update_slack, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_seqno_large = internal constant [23 x i8] c"rpcgss_svc_seqno_large\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_seqno_large = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_seqno_large }, align 4
@__tracepoint_rpcgss_svc_seqno_large = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_svc_seqno_large, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_seqno_large, ptr null, ptr @__traceiter_rpcgss_svc_seqno_large, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_seqno_large = internal constant ptr @__tracepoint_rpcgss_svc_seqno_large, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_seqno_seen = internal constant [22 x i8] c"rpcgss_svc_seqno_seen\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_seqno_seen = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_seqno_seen }, align 4
@__tracepoint_rpcgss_svc_seqno_seen = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_svc_seqno_seen, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_seqno_seen, ptr null, ptr @__traceiter_rpcgss_svc_seqno_seen, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_seqno_seen = internal constant ptr @__tracepoint_rpcgss_svc_seqno_seen, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_svc_seqno_low = internal constant [21 x i8] c"rpcgss_svc_seqno_low\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_svc_seqno_low = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_svc_seqno_low }, align 4
@__tracepoint_rpcgss_svc_seqno_low = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_svc_seqno_low, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_svc_seqno_low, ptr null, ptr @__traceiter_rpcgss_svc_seqno_low, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_svc_seqno_low = internal constant ptr @__tracepoint_rpcgss_svc_seqno_low, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_upcall_msg = internal constant [18 x i8] c"rpcgss_upcall_msg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_upcall_msg = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_upcall_msg }, align 4
@__tracepoint_rpcgss_upcall_msg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_upcall_msg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_upcall_msg, ptr null, ptr @__traceiter_rpcgss_upcall_msg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_upcall_msg = internal constant ptr @__tracepoint_rpcgss_upcall_msg, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_upcall_result = internal constant [21 x i8] c"rpcgss_upcall_result\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_upcall_result = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_upcall_result }, align 4
@__tracepoint_rpcgss_upcall_result = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_upcall_result, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_upcall_result, ptr null, ptr @__traceiter_rpcgss_upcall_result, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_upcall_result = internal constant ptr @__tracepoint_rpcgss_upcall_result, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_context = internal constant [15 x i8] c"rpcgss_context\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_context = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_context }, align 4
@__tracepoint_rpcgss_context = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_context, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_context, ptr null, ptr @__traceiter_rpcgss_context, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_context = internal constant ptr @__tracepoint_rpcgss_context, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_createauth = internal constant [18 x i8] c"rpcgss_createauth\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_createauth = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_createauth }, align 4
@__tracepoint_rpcgss_createauth = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_createauth, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_createauth, ptr null, ptr @__traceiter_rpcgss_createauth, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_createauth = internal constant ptr @__tracepoint_rpcgss_createauth, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpcgss_oid_to_mech = internal constant [19 x i8] c"rpcgss_oid_to_mech\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpcgss_oid_to_mech = dso_local global %struct.static_call_key { ptr @__traceiter_rpcgss_oid_to_mech }, align 4
@__tracepoint_rpcgss_oid_to_mech = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpcgss_oid_to_mech, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpcgss_oid_to_mech, ptr null, ptr @__traceiter_rpcgss_oid_to_mech, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpcgss_oid_to_mech = internal constant ptr @__tracepoint_rpcgss_oid_to_mech, section "__tracepoints_ptrs", align 4
@str__rpcgss__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rpcgss\00", [25 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RPC_GSS_SVC_NONE\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RPC_GSS_SVC_NONE = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_GSS_SVC_NONE = internal global ptr @__TRACE_SYSTEM_RPC_GSS_SVC_NONE, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RPC_GSS_SVC_INTEGRITY\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.1, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY = internal global ptr @__TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RPC_GSS_SVC_PRIVACY\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.2, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY = internal global ptr @__TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GSS_S_BAD_MECH\00", [17 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_BAD_MECH = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.3, i32 65536 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_MECH = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_MECH, section "_ftrace_eval_map", align 4
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GSS_S_BAD_NAME\00", [17 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_BAD_NAME = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.4, i32 131072 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_NAME = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_NAME, section "_ftrace_eval_map", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GSS_S_BAD_NAMETYPE\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_BAD_NAMETYPE = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.5, i32 196608 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_NAMETYPE = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_NAMETYPE, section "_ftrace_eval_map", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GSS_S_BAD_BINDINGS\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_BAD_BINDINGS = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.6, i32 262144 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_BINDINGS = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_BINDINGS, section "_ftrace_eval_map", align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GSS_S_BAD_STATUS\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_BAD_STATUS = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.7, i32 327680 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_STATUS = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_STATUS, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GSS_S_BAD_SIG\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_BAD_SIG = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.8, i32 393216 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_SIG = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_SIG, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GSS_S_NO_CRED\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_NO_CRED = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.9, i32 458752 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_NO_CRED = internal global ptr @__TRACE_SYSTEM_GSS_S_NO_CRED, section "_ftrace_eval_map", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GSS_S_NO_CONTEXT\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_NO_CONTEXT = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.10, i32 524288 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_NO_CONTEXT = internal global ptr @__TRACE_SYSTEM_GSS_S_NO_CONTEXT, section "_ftrace_eval_map", align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GSS_S_DEFECTIVE_TOKEN\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.11, i32 589824 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN = internal global ptr @__TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN, section "_ftrace_eval_map", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GSS_S_DEFECTIVE_CREDENTIAL\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.12, i32 655360 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL = internal global ptr @__TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL, section "_ftrace_eval_map", align 4
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GSS_S_CREDENTIALS_EXPIRED\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.13, i32 720896 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED = internal global ptr @__TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED, section "_ftrace_eval_map", align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GSS_S_CONTEXT_EXPIRED\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.14, i32 786432 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED = internal global ptr @__TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED, section "_ftrace_eval_map", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GSS_S_FAILURE\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_FAILURE = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.15, i32 851968 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_FAILURE = internal global ptr @__TRACE_SYSTEM_GSS_S_FAILURE, section "_ftrace_eval_map", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GSS_S_BAD_QOP\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_BAD_QOP = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.16, i32 917504 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_BAD_QOP = internal global ptr @__TRACE_SYSTEM_GSS_S_BAD_QOP, section "_ftrace_eval_map", align 4
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GSS_S_UNAUTHORIZED\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_UNAUTHORIZED = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.17, i32 983040 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_UNAUTHORIZED = internal global ptr @__TRACE_SYSTEM_GSS_S_UNAUTHORIZED, section "_ftrace_eval_map", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GSS_S_UNAVAILABLE\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_UNAVAILABLE = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.18, i32 1048576 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_UNAVAILABLE = internal global ptr @__TRACE_SYSTEM_GSS_S_UNAVAILABLE, section "_ftrace_eval_map", align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GSS_S_DUPLICATE_ELEMENT\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.19, i32 1114112 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT = internal global ptr @__TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT, section "_ftrace_eval_map", align 4
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GSS_S_NAME_NOT_MN\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_NAME_NOT_MN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.20, i32 1179648 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_NAME_NOT_MN = internal global ptr @__TRACE_SYSTEM_GSS_S_NAME_NOT_MN, section "_ftrace_eval_map", align 4
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GSS_S_CONTINUE_NEEDED\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.21, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED = internal global ptr @__TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED, section "_ftrace_eval_map", align 4
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GSS_S_DUPLICATE_TOKEN\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.22, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN = internal global ptr @__TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN, section "_ftrace_eval_map", align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GSS_S_OLD_TOKEN\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_OLD_TOKEN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.23, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_OLD_TOKEN = internal global ptr @__TRACE_SYSTEM_GSS_S_OLD_TOKEN, section "_ftrace_eval_map", align 4
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GSS_S_UNSEQ_TOKEN\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.24, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN = internal global ptr @__TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN, section "_ftrace_eval_map", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GSS_S_GAP_TOKEN\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_GSS_S_GAP_TOKEN = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.25, i32 16 }, section ".init.data", align 4
@TRACE_SYSTEM_GSS_S_GAP_TOKEN = internal global ptr @__TRACE_SYSTEM_GSS_S_GAP_TOKEN, section "_ftrace_eval_map", align 4
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RPC_AUTH_GSS_KRB5\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5 = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.26, i32 390003 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_AUTH_GSS_KRB5 = internal global ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5, section "_ftrace_eval_map", align 4
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RPC_AUTH_GSS_KRB5I\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.27, i32 390004 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I = internal global ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I, section "_ftrace_eval_map", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RPC_AUTH_GSS_KRB5P\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P = internal global %struct.trace_eval_map { ptr @str__rpcgss__trace_system_name, ptr @.str.28, i32 390005 }, section ".init.data", align 4
@TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P = internal global ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P, section "_ftrace_eval_map", align 4
@trace_event_fields_rpcgss_gssapi_event = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_rpcgss_gssapi_event = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_gssapi_event, ptr @perf_trace_rpcgss_gssapi_event, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_gssapi_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_gssapi_event, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_gssapi_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_fields_rpcgss_import_ctx = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.34, %union.anon.173 { %struct.anon.174 { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_rpcgss_import_ctx = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_import_ctx, ptr @perf_trace_rpcgss_import_ctx, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_import_ctx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_import_ctx, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_import_ctx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_import_ctx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_import_ctx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_import_ctx = internal global { [25 x i8], [39 x i8] } { [25 x i8] c"\22status=%d\22, REC->status\00", [39 x i8] zeroinitializer }, align 32
@event_rpcgss_import_ctx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_import_ctx, %union.anon.175 { ptr @__tracepoint_rpcgss_import_ctx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_import_ctx }, ptr @print_fmt_rpcgss_import_ctx, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_import_ctx = internal global ptr @event_rpcgss_import_ctx, section "_ftrace_events", align 4
@trace_event_type_funcs_rpcgss_gssapi_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_gssapi_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_gssapi_event = internal global { [1298 x i8], [334 x i8] } { [1298 x i8] c"\22task:%08x@%08x maj_stat=%s\22, REC->task_id, REC->client_id, REC->maj_stat == 0 ? \22GSS_S_COMPLETE\22 : __print_flags(REC->maj_stat, \22|\22, { (((OM_uint32) 1ul) << 16), \22GSS_S_BAD_MECH\22 }, { (((OM_uint32) 2ul) << 16), \22GSS_S_BAD_NAME\22 }, { (((OM_uint32) 3ul) << 16), \22GSS_S_BAD_NAMETYPE\22 }, { (((OM_uint32) 4ul) << 16), \22GSS_S_BAD_BINDINGS\22 }, { (((OM_uint32) 5ul) << 16), \22GSS_S_BAD_STATUS\22 }, { (((OM_uint32) 6ul) << 16), \22GSS_S_BAD_SIG\22 }, { (((OM_uint32) 7ul) << 16), \22GSS_S_NO_CRED\22 }, { (((OM_uint32) 8ul) << 16), \22GSS_S_NO_CONTEXT\22 }, { (((OM_uint32) 9ul) << 16), \22GSS_S_DEFECTIVE_TOKEN\22 }, { (((OM_uint32) 10ul) << 16), \22GSS_S_DEFECTIVE_CREDENTIAL\22 }, { (((OM_uint32) 11ul) << 16), \22GSS_S_CREDENTIALS_EXPIRED\22 }, { (((OM_uint32) 12ul) << 16), \22GSS_S_CONTEXT_EXPIRED\22 }, { (((OM_uint32) 13ul) << 16), \22GSS_S_FAILURE\22 }, { (((OM_uint32) 14ul) << 16), \22GSS_S_BAD_QOP\22 }, { (((OM_uint32) 15ul) << 16), \22GSS_S_UNAUTHORIZED\22 }, { (((OM_uint32) 16ul) << 16), \22GSS_S_UNAVAILABLE\22 }, { (((OM_uint32) 17ul) << 16), \22GSS_S_DUPLICATE_ELEMENT\22 }, { (((OM_uint32) 18ul) << 16), \22GSS_S_NAME_NOT_MN\22 }, { (1 << (0 + 0)), \22GSS_S_CONTINUE_NEEDED\22 }, { (1 << (0 + 1)), \22GSS_S_DUPLICATE_TOKEN\22 }, { (1 << (0 + 2)), \22GSS_S_OLD_TOKEN\22 }, { (1 << (0 + 3)), \22GSS_S_UNSEQ_TOKEN\22 }, { (1 << (0 + 4)), \22GSS_S_GAP_TOKEN\22 })\00", [334 x i8] zeroinitializer }, align 32
@event_rpcgss_get_mic = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_gssapi_event, %union.anon.175 { ptr @__tracepoint_rpcgss_get_mic }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_gssapi_event }, ptr @print_fmt_rpcgss_gssapi_event, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_get_mic = internal global ptr @event_rpcgss_get_mic, section "_ftrace_events", align 4
@event_rpcgss_verify_mic = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_gssapi_event, %union.anon.175 { ptr @__tracepoint_rpcgss_verify_mic }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_gssapi_event }, ptr @print_fmt_rpcgss_gssapi_event, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_verify_mic = internal global ptr @event_rpcgss_verify_mic, section "_ftrace_events", align 4
@event_rpcgss_wrap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_gssapi_event, %union.anon.175 { ptr @__tracepoint_rpcgss_wrap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_gssapi_event }, ptr @print_fmt_rpcgss_gssapi_event, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_wrap = internal global ptr @event_rpcgss_wrap, section "_ftrace_events", align 4
@event_rpcgss_unwrap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_gssapi_event, %union.anon.175 { ptr @__tracepoint_rpcgss_unwrap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_gssapi_event }, ptr @print_fmt_rpcgss_gssapi_event, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_unwrap = internal global ptr @event_rpcgss_unwrap, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_ctx_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.41, %union.anon.173 { %struct.anon.174 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.173 { %struct.anon.174 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.173 { %struct.anon.174 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_rpcgss_ctx_class = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_ctx_class, ptr @perf_trace_rpcgss_ctx_class, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_ctx_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_ctx_class, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_ctx_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_ctx_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_ctx_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_ctx_class = internal global { [207 x i8], [49 x i8] } { [207 x i8] c"\22cred=%p service=%s principal='%s'\22, REC->cred, __print_symbolic(REC->service, { RPC_GSS_SVC_NONE, \22none\22 }, { RPC_GSS_SVC_INTEGRITY, \22integrity\22 }, { RPC_GSS_SVC_PRIVACY, \22privacy\22 }), __get_str(principal)\00", [49 x i8] zeroinitializer }, align 32
@event_rpcgss_ctx_init = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_ctx_class, %union.anon.175 { ptr @__tracepoint_rpcgss_ctx_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_ctx_class }, ptr @print_fmt_rpcgss_ctx_class, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_ctx_init = internal global ptr @event_rpcgss_ctx_init, section "_ftrace_events", align 4
@event_rpcgss_ctx_destroy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_ctx_class, %union.anon.175 { ptr @__tracepoint_rpcgss_ctx_destroy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_ctx_class }, ptr @print_fmt_rpcgss_ctx_class, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_ctx_destroy = internal global ptr @event_rpcgss_ctx_destroy, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_gssapi_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.173 { %struct.anon.174 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_rpcgss_svc_gssapi_class = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_gssapi_class, ptr @perf_trace_rpcgss_svc_gssapi_class, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_gssapi_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_gssapi_class, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_gssapi_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_gssapi_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_gssapi_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_svc_gssapi_class = internal global { [1299 x i8], [333 x i8] } { [1299 x i8] c"\22addr=%s xid=0x%08x maj_stat=%s\22, __get_str(addr), REC->xid, REC->maj_stat == 0 ? \22GSS_S_COMPLETE\22 : __print_flags(REC->maj_stat, \22|\22, { (((OM_uint32) 1ul) << 16), \22GSS_S_BAD_MECH\22 }, { (((OM_uint32) 2ul) << 16), \22GSS_S_BAD_NAME\22 }, { (((OM_uint32) 3ul) << 16), \22GSS_S_BAD_NAMETYPE\22 }, { (((OM_uint32) 4ul) << 16), \22GSS_S_BAD_BINDINGS\22 }, { (((OM_uint32) 5ul) << 16), \22GSS_S_BAD_STATUS\22 }, { (((OM_uint32) 6ul) << 16), \22GSS_S_BAD_SIG\22 }, { (((OM_uint32) 7ul) << 16), \22GSS_S_NO_CRED\22 }, { (((OM_uint32) 8ul) << 16), \22GSS_S_NO_CONTEXT\22 }, { (((OM_uint32) 9ul) << 16), \22GSS_S_DEFECTIVE_TOKEN\22 }, { (((OM_uint32) 10ul) << 16), \22GSS_S_DEFECTIVE_CREDENTIAL\22 }, { (((OM_uint32) 11ul) << 16), \22GSS_S_CREDENTIALS_EXPIRED\22 }, { (((OM_uint32) 12ul) << 16), \22GSS_S_CONTEXT_EXPIRED\22 }, { (((OM_uint32) 13ul) << 16), \22GSS_S_FAILURE\22 }, { (((OM_uint32) 14ul) << 16), \22GSS_S_BAD_QOP\22 }, { (((OM_uint32) 15ul) << 16), \22GSS_S_UNAUTHORIZED\22 }, { (((OM_uint32) 16ul) << 16), \22GSS_S_UNAVAILABLE\22 }, { (((OM_uint32) 17ul) << 16), \22GSS_S_DUPLICATE_ELEMENT\22 }, { (((OM_uint32) 18ul) << 16), \22GSS_S_NAME_NOT_MN\22 }, { (1 << (0 + 0)), \22GSS_S_CONTINUE_NEEDED\22 }, { (1 << (0 + 1)), \22GSS_S_DUPLICATE_TOKEN\22 }, { (1 << (0 + 2)), \22GSS_S_OLD_TOKEN\22 }, { (1 << (0 + 3)), \22GSS_S_UNSEQ_TOKEN\22 }, { (1 << (0 + 4)), \22GSS_S_GAP_TOKEN\22 })\00", [333 x i8] zeroinitializer }, align 32
@event_rpcgss_svc_unwrap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_gssapi_class, %union.anon.175 { ptr @__tracepoint_rpcgss_svc_unwrap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_gssapi_class }, ptr @print_fmt_rpcgss_svc_gssapi_class, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_svc_unwrap = internal global ptr @event_rpcgss_svc_unwrap, section "_ftrace_events", align 4
@event_rpcgss_svc_mic = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_gssapi_class, %union.anon.175 { ptr @__tracepoint_rpcgss_svc_mic }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_gssapi_class }, ptr @print_fmt_rpcgss_svc_gssapi_class, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_svc_mic = internal global ptr @event_rpcgss_svc_mic, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_unwrap_failed = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.173 { %struct.anon.174 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rpcgss_svc_unwrap_failed = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_unwrap_failed, ptr @perf_trace_rpcgss_svc_unwrap_failed, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_unwrap_failed, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_unwrap_failed, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_unwrap_failed, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_unwrap_failed = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_unwrap_failed, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_svc_unwrap_failed = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\22addr=%s xid=0x%08x\22, __get_str(addr), REC->xid\00", [48 x i8] zeroinitializer }, align 32
@event_rpcgss_svc_unwrap_failed = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_unwrap_failed, %union.anon.175 { ptr @__tracepoint_rpcgss_svc_unwrap_failed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_unwrap_failed }, ptr @print_fmt_rpcgss_svc_unwrap_failed, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_svc_unwrap_failed = internal global ptr @event_rpcgss_svc_unwrap_failed, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_seqno_bad = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.56, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.173 { %struct.anon.174 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_rpcgss_svc_seqno_bad = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_seqno_bad, ptr @perf_trace_rpcgss_svc_seqno_bad, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_seqno_bad, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_bad, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_bad, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_seqno_bad = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_seqno_bad, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_svc_seqno_bad = internal global { [115 x i8], [45 x i8] } { [115 x i8] c"\22addr=%s xid=0x%08x expected seqno %u, received seqno %u\22, __get_str(addr), REC->xid, REC->expected, REC->received\00", [45 x i8] zeroinitializer }, align 32
@event_rpcgss_svc_seqno_bad = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_seqno_bad, %union.anon.175 { ptr @__tracepoint_rpcgss_svc_seqno_bad }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_seqno_bad }, ptr @print_fmt_rpcgss_svc_seqno_bad, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_svc_seqno_bad = internal global ptr @event_rpcgss_svc_seqno_bad, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_accept_upcall = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.173 { %struct.anon.174 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.173 { %struct.anon.174 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_rpcgss_svc_accept_upcall = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_accept_upcall, ptr @perf_trace_rpcgss_svc_accept_upcall, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_accept_upcall, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_accept_upcall, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_accept_upcall, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_accept_upcall = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_accept_upcall, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_svc_accept_upcall = internal global { [1377 x i8], [351 x i8] } { [1377 x i8] c"\22addr=%s xid=0x%08x major_status=%s (0x%08lx) minor_status=%u\22, __get_str(addr), REC->xid, (REC->major_status == 0) ? \22GSS_S_COMPLETE\22 : __print_flags(REC->major_status, \22|\22, { (((OM_uint32) 1ul) << 16), \22GSS_S_BAD_MECH\22 }, { (((OM_uint32) 2ul) << 16), \22GSS_S_BAD_NAME\22 }, { (((OM_uint32) 3ul) << 16), \22GSS_S_BAD_NAMETYPE\22 }, { (((OM_uint32) 4ul) << 16), \22GSS_S_BAD_BINDINGS\22 }, { (((OM_uint32) 5ul) << 16), \22GSS_S_BAD_STATUS\22 }, { (((OM_uint32) 6ul) << 16), \22GSS_S_BAD_SIG\22 }, { (((OM_uint32) 7ul) << 16), \22GSS_S_NO_CRED\22 }, { (((OM_uint32) 8ul) << 16), \22GSS_S_NO_CONTEXT\22 }, { (((OM_uint32) 9ul) << 16), \22GSS_S_DEFECTIVE_TOKEN\22 }, { (((OM_uint32) 10ul) << 16), \22GSS_S_DEFECTIVE_CREDENTIAL\22 }, { (((OM_uint32) 11ul) << 16), \22GSS_S_CREDENTIALS_EXPIRED\22 }, { (((OM_uint32) 12ul) << 16), \22GSS_S_CONTEXT_EXPIRED\22 }, { (((OM_uint32) 13ul) << 16), \22GSS_S_FAILURE\22 }, { (((OM_uint32) 14ul) << 16), \22GSS_S_BAD_QOP\22 }, { (((OM_uint32) 15ul) << 16), \22GSS_S_UNAUTHORIZED\22 }, { (((OM_uint32) 16ul) << 16), \22GSS_S_UNAVAILABLE\22 }, { (((OM_uint32) 17ul) << 16), \22GSS_S_DUPLICATE_ELEMENT\22 }, { (((OM_uint32) 18ul) << 16), \22GSS_S_NAME_NOT_MN\22 }, { (1 << (0 + 0)), \22GSS_S_CONTINUE_NEEDED\22 }, { (1 << (0 + 1)), \22GSS_S_DUPLICATE_TOKEN\22 }, { (1 << (0 + 2)), \22GSS_S_OLD_TOKEN\22 }, { (1 << (0 + 3)), \22GSS_S_UNSEQ_TOKEN\22 }, { (1 << (0 + 4)), \22GSS_S_GAP_TOKEN\22 }), REC->major_status, REC->minor_status\00", [351 x i8] zeroinitializer }, align 32
@event_rpcgss_svc_accept_upcall = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_accept_upcall, %union.anon.175 { ptr @__tracepoint_rpcgss_svc_accept_upcall }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_accept_upcall }, ptr @print_fmt_rpcgss_svc_accept_upcall, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_svc_accept_upcall = internal global ptr @event_rpcgss_svc_accept_upcall, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_authenticate = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.173 { %struct.anon.174 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_rpcgss_svc_authenticate = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_authenticate, ptr @perf_trace_rpcgss_svc_authenticate, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_authenticate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_authenticate, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_authenticate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_authenticate = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_authenticate, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_svc_authenticate = internal global { [69 x i8], [59 x i8] } { [69 x i8] c"\22addr=%s xid=0x%08x seqno=%u\22, __get_str(addr), REC->xid, REC->seqno\00", [59 x i8] zeroinitializer }, align 32
@event_rpcgss_svc_authenticate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_authenticate, %union.anon.175 { ptr @__tracepoint_rpcgss_svc_authenticate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_authenticate }, ptr @print_fmt_rpcgss_svc_authenticate, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_svc_authenticate = internal global ptr @event_rpcgss_svc_authenticate, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_unwrap_failed = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rpcgss_unwrap_failed = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_unwrap_failed, ptr @perf_trace_rpcgss_unwrap_failed, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_unwrap_failed, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_unwrap_failed, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_unwrap_failed, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_unwrap_failed = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_unwrap_failed, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_unwrap_failed = internal global { [47 x i8], [49 x i8] } { [47 x i8] c"\22task:%08x@%08x\22, REC->task_id, REC->client_id\00", [49 x i8] zeroinitializer }, align 32
@event_rpcgss_unwrap_failed = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_unwrap_failed, %union.anon.175 { ptr @__tracepoint_rpcgss_unwrap_failed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_unwrap_failed }, ptr @print_fmt_rpcgss_unwrap_failed, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_unwrap_failed = internal global ptr @event_rpcgss_unwrap_failed, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_bad_seqno = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.56, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_rpcgss_bad_seqno = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_bad_seqno, ptr @perf_trace_rpcgss_bad_seqno, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_bad_seqno, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_bad_seqno, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_bad_seqno, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_bad_seqno = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_bad_seqno, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_bad_seqno = internal global { [114 x i8], [46 x i8] } { [114 x i8] c"\22task:%08x@%08x expected seqno %u, received seqno %u\22, REC->task_id, REC->client_id, REC->expected, REC->received\00", [46 x i8] zeroinitializer }, align 32
@event_rpcgss_bad_seqno = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_bad_seqno, %union.anon.175 { ptr @__tracepoint_rpcgss_bad_seqno }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_bad_seqno }, ptr @print_fmt_rpcgss_bad_seqno, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_bad_seqno = internal global ptr @event_rpcgss_bad_seqno, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_seqno = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_rpcgss_seqno = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_seqno, ptr @perf_trace_rpcgss_seqno, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_seqno, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_seqno, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_seqno, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_seqno = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_seqno, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_seqno = internal global { [89 x i8], [39 x i8] } { [89 x i8] c"\22task:%08x@%08x xid=0x%08x seqno=%u\22, REC->task_id, REC->client_id, REC->xid, REC->seqno\00", [39 x i8] zeroinitializer }, align 32
@event_rpcgss_seqno = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_seqno, %union.anon.175 { ptr @__tracepoint_rpcgss_seqno }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_seqno }, ptr @print_fmt_rpcgss_seqno, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_seqno = internal global ptr @event_rpcgss_seqno, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_need_reencode = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.66, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.173 { %struct.anon.174 { ptr @.str.68, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rpcgss_need_reencode = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_need_reencode, ptr @perf_trace_rpcgss_need_reencode, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_need_reencode, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_need_reencode, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_need_reencode, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_need_reencode = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_need_reencode, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_need_reencode = internal global { [159 x i8], [33 x i8] } { [159 x i8] c"\22task:%08x@%08x xid=0x%08x rq_seqno=%u seq_xmit=%u reencode %sneeded\22, REC->task_id, REC->client_id, REC->xid, REC->seqno, REC->seq_xmit, REC->ret ? \22\22 : \22un\22\00", [33 x i8] zeroinitializer }, align 32
@event_rpcgss_need_reencode = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_need_reencode, %union.anon.175 { ptr @__tracepoint_rpcgss_need_reencode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_need_reencode }, ptr @print_fmt_rpcgss_need_reencode, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_need_reencode = internal global ptr @event_rpcgss_need_reencode, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_update_slack = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.173 { %struct.anon.174 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.73, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.74, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.75, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_rpcgss_update_slack = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_update_slack, ptr @perf_trace_rpcgss_update_slack, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_update_slack, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_update_slack, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_update_slack, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_update_slack = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_update_slack, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_update_slack = internal global { [161 x i8], [63 x i8] } { [161 x i8] c"\22task:%08x@%08x xid=0x%08x auth=%p rslack=%u ralign=%u verfsize=%u\0A\22, REC->task_id, REC->client_id, REC->xid, REC->auth, REC->rslack, REC->ralign, REC->verfsize\00", [63 x i8] zeroinitializer }, align 32
@event_rpcgss_update_slack = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_update_slack, %union.anon.175 { ptr @__tracepoint_rpcgss_update_slack }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_update_slack }, ptr @print_fmt_rpcgss_update_slack, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_update_slack = internal global ptr @event_rpcgss_update_slack, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_seqno_class = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rpcgss_svc_seqno_class = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_seqno_class, ptr @perf_trace_rpcgss_svc_seqno_class, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_seqno_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_class, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_seqno_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_seqno_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_svc_seqno_class = internal global { [44 x i8], [52 x i8] } { [44 x i8] c"\22xid=0x%08x seqno=%u\22, REC->xid, REC->seqno\00", [52 x i8] zeroinitializer }, align 32
@event_rpcgss_svc_seqno_large = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_seqno_class, %union.anon.175 { ptr @__tracepoint_rpcgss_svc_seqno_large }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_seqno_class }, ptr @print_fmt_rpcgss_svc_seqno_class, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_svc_seqno_large = internal global ptr @event_rpcgss_svc_seqno_large, section "_ftrace_events", align 4
@event_rpcgss_svc_seqno_seen = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_seqno_class, %union.anon.175 { ptr @__tracepoint_rpcgss_svc_seqno_seen }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_seqno_class }, ptr @print_fmt_rpcgss_svc_seqno_class, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_svc_seqno_seen = internal global ptr @event_rpcgss_svc_seqno_seen, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_svc_seqno_low = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.79, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_rpcgss_svc_seqno_low = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_svc_seqno_low, ptr @perf_trace_rpcgss_svc_seqno_low, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_svc_seqno_low, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_low, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_svc_seqno_low, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_svc_seqno_low = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_svc_seqno_low, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_svc_seqno_low = internal global { [80 x i8], [48 x i8] } { [80 x i8] c"\22xid=0x%08x seqno=%u window=[%u..%u]\22, REC->xid, REC->seqno, REC->min, REC->max\00", [48 x i8] zeroinitializer }, align 32
@event_rpcgss_svc_seqno_low = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_svc_seqno_low, %union.anon.175 { ptr @__tracepoint_rpcgss_svc_seqno_low }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_svc_seqno_low }, ptr @print_fmt_rpcgss_svc_seqno_low, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_svc_seqno_low = internal global ptr @event_rpcgss_svc_seqno_low, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_upcall_msg = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.45, %union.anon.173 { %struct.anon.174 { ptr @.str.81, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_rpcgss_upcall_msg = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_upcall_msg, ptr @perf_trace_rpcgss_upcall_msg, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_upcall_msg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_upcall_msg, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_upcall_msg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_upcall_msg = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_upcall_msg, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_upcall_msg = internal global { [27 x i8], [37 x i8] } { [27 x i8] c"\22msg='%s'\22, __get_str(msg)\00", [37 x i8] zeroinitializer }, align 32
@event_rpcgss_upcall_msg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_upcall_msg, %union.anon.175 { ptr @__tracepoint_rpcgss_upcall_msg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_upcall_msg }, ptr @print_fmt_rpcgss_upcall_msg, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_upcall_msg = internal global ptr @event_rpcgss_upcall_msg, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_upcall_result = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.83, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.173 { %struct.anon.174 { ptr @.str.84, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rpcgss_upcall_result = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_upcall_result, ptr @perf_trace_rpcgss_upcall_result, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_upcall_result, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_upcall_result, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_upcall_result, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_upcall_result = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_upcall_result, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_upcall_result = internal global { [47 x i8], [49 x i8] } { [47 x i8] c"\22for uid %u, result=%d\22, REC->uid, REC->result\00", [49 x i8] zeroinitializer }, align 32
@event_rpcgss_upcall_result = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_upcall_result, %union.anon.175 { ptr @__tracepoint_rpcgss_upcall_result }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_upcall_result }, ptr @print_fmt_rpcgss_upcall_result, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_upcall_result = internal global ptr @event_rpcgss_upcall_result, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_context = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.43, %union.anon.173 { %struct.anon.174 { ptr @.str.86, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.43, %union.anon.173 { %struct.anon.174 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.88, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.173 { %struct.anon.174 { ptr @.str.89, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.173 { %struct.anon.174 { ptr @.str.90, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.173 { %struct.anon.174 { ptr @.str.91, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rpcgss_context = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_context, ptr @perf_trace_rpcgss_context, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_context, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_context, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_context, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_context = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_context, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_context = internal global { [144 x i8], [48 x i8] } { [144 x i8] c"\22win_size=%u expiry=%lu now=%lu timeout=%u acceptor=%.*s\22, REC->window_size, REC->expiry, REC->now, REC->timeout, REC->len, __get_str(acceptor)\00", [48 x i8] zeroinitializer }, align 32
@event_rpcgss_context = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_context, %union.anon.175 { ptr @__tracepoint_rpcgss_context }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_context }, ptr @print_fmt_rpcgss_context, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_context = internal global ptr @event_rpcgss_context, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_createauth = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.173 { %struct.anon.174 { ptr @.str.93, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.173 { %struct.anon.174 { ptr @.str.94, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rpcgss_createauth = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_createauth, ptr @perf_trace_rpcgss_createauth, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_createauth, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_createauth, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_createauth, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_createauth = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_createauth, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_createauth = internal global { [200 x i8], [56 x i8] } { [200 x i8] c"\22flavor=%s error=%d\22, __print_symbolic(REC->flavor, { RPC_AUTH_GSS_KRB5, \22RPC_AUTH_GSS_KRB5\22 }, { RPC_AUTH_GSS_KRB5I, \22RPC_AUTH_GSS_KRB5I\22 }, { RPC_AUTH_GSS_KRB5P, \22RPC_AUTH_GSS_KRB5P\22 }), REC->error\00", [56 x i8] zeroinitializer }, align 32
@event_rpcgss_createauth = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_createauth, %union.anon.175 { ptr @__tracepoint_rpcgss_createauth }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_createauth }, ptr @print_fmt_rpcgss_createauth, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_createauth = internal global ptr @event_rpcgss_createauth, section "_ftrace_events", align 4
@trace_event_fields_rpcgss_oid_to_mech = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.45, %union.anon.173 { %struct.anon.174 { ptr @.str.96, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_rpcgss_oid_to_mech = internal global %struct.trace_event_class { ptr @str__rpcgss__trace_system_name, ptr @trace_event_raw_event_rpcgss_oid_to_mech, ptr @perf_trace_rpcgss_oid_to_mech, ptr @trace_event_reg, ptr @trace_event_fields_rpcgss_oid_to_mech, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpcgss_oid_to_mech, i64 24), ptr getelementptr (i8, ptr @event_class_rpcgss_oid_to_mech, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpcgss_oid_to_mech = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpcgss_oid_to_mech, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpcgss_oid_to_mech = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\22mech for oid %s was not found\22, __get_str(oid)\00", [48 x i8] zeroinitializer }, align 32
@event_rpcgss_oid_to_mech = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpcgss_oid_to_mech, %union.anon.175 { ptr @__tracepoint_rpcgss_oid_to_mech }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpcgss_oid_to_mech }, ptr @print_fmt_rpcgss_oid_to_mech, ptr null, %union.anon.176 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpcgss_oid_to_mech = internal global ptr @event_rpcgss_oid_to_mech, section "_ftrace_events", align 4
@__bpf_trace_tp_map_rpcgss_import_ctx = internal global %union.anon.177 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_import_ctx, ptr @__bpf_trace_rpcgss_import_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_get_mic = internal global %union.anon.178 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_get_mic, ptr @__bpf_trace_rpcgss_gssapi_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_verify_mic = internal global %union.anon.179 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_verify_mic, ptr @__bpf_trace_rpcgss_gssapi_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_wrap = internal global %union.anon.180 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_wrap, ptr @__bpf_trace_rpcgss_gssapi_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_unwrap = internal global %union.anon.181 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_unwrap, ptr @__bpf_trace_rpcgss_gssapi_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_ctx_init = internal global %union.anon.182 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_ctx_init, ptr @__bpf_trace_rpcgss_ctx_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_ctx_destroy = internal global %union.anon.183 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_ctx_destroy, ptr @__bpf_trace_rpcgss_ctx_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_svc_unwrap = internal global %union.anon.184 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_svc_unwrap, ptr @__bpf_trace_rpcgss_svc_gssapi_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_svc_mic = internal global %union.anon.185 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_svc_mic, ptr @__bpf_trace_rpcgss_svc_gssapi_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_svc_unwrap_failed = internal global %union.anon.186 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_svc_unwrap_failed, ptr @__bpf_trace_rpcgss_svc_unwrap_failed, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_svc_seqno_bad = internal global %union.anon.187 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_svc_seqno_bad, ptr @__bpf_trace_rpcgss_svc_seqno_bad, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_svc_accept_upcall = internal global %union.anon.188 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_svc_accept_upcall, ptr @__bpf_trace_rpcgss_svc_accept_upcall, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_svc_authenticate = internal global %union.anon.189 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_svc_authenticate, ptr @__bpf_trace_rpcgss_svc_authenticate, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_unwrap_failed = internal global %union.anon.190 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_unwrap_failed, ptr @__bpf_trace_rpcgss_unwrap_failed, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_bad_seqno = internal global %union.anon.191 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_bad_seqno, ptr @__bpf_trace_rpcgss_bad_seqno, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_seqno = internal global %union.anon.192 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_seqno, ptr @__bpf_trace_rpcgss_seqno, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_need_reencode = internal global %union.anon.193 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_need_reencode, ptr @__bpf_trace_rpcgss_need_reencode, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_update_slack = internal global %union.anon.194 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_update_slack, ptr @__bpf_trace_rpcgss_update_slack, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_svc_seqno_large = internal global %union.anon.195 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_svc_seqno_large, ptr @__bpf_trace_rpcgss_svc_seqno_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_svc_seqno_seen = internal global %union.anon.196 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_svc_seqno_seen, ptr @__bpf_trace_rpcgss_svc_seqno_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_svc_seqno_low = internal global %union.anon.197 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_svc_seqno_low, ptr @__bpf_trace_rpcgss_svc_seqno_low, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_upcall_msg = internal global %union.anon.198 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_upcall_msg, ptr @__bpf_trace_rpcgss_upcall_msg, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_upcall_result = internal global %union.anon.199 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_upcall_result, ptr @__bpf_trace_rpcgss_upcall_result, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_context = internal global %union.anon.200 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_context, ptr @__bpf_trace_rpcgss_context, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_createauth = internal global %union.anon.201 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_createauth, ptr @__bpf_trace_rpcgss_createauth, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpcgss_oid_to_mech = internal global %union.anon.202 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpcgss_oid_to_mech, ptr @__bpf_trace_rpcgss_oid_to_mech, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"task_id\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"client_id\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maj_stat\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"status=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"task:%08x@%08x maj_stat=%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GSS_S_COMPLETE\00", [17 x i8] zeroinitializer }, align 32
@trace_raw_output_rpcgss_gssapi_event.__flags = internal constant { [24 x %struct.trace_print_flags], [32 x i8] } { [24 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 65536, ptr @.str.3 }, %struct.trace_print_flags { i32 131072, ptr @.str.4 }, %struct.trace_print_flags { i32 196608, ptr @.str.5 }, %struct.trace_print_flags { i32 262144, ptr @.str.6 }, %struct.trace_print_flags { i32 327680, ptr @.str.7 }, %struct.trace_print_flags { i32 393216, ptr @.str.8 }, %struct.trace_print_flags { i32 458752, ptr @.str.9 }, %struct.trace_print_flags { i32 524288, ptr @.str.10 }, %struct.trace_print_flags { i32 589824, ptr @.str.11 }, %struct.trace_print_flags { i32 655360, ptr @.str.12 }, %struct.trace_print_flags { i32 720896, ptr @.str.13 }, %struct.trace_print_flags { i32 786432, ptr @.str.14 }, %struct.trace_print_flags { i32 851968, ptr @.str.15 }, %struct.trace_print_flags { i32 917504, ptr @.str.16 }, %struct.trace_print_flags { i32 983040, ptr @.str.17 }, %struct.trace_print_flags { i32 1048576, ptr @.str.18 }, %struct.trace_print_flags { i32 1114112, ptr @.str.19 }, %struct.trace_print_flags { i32 1179648, ptr @.str.20 }, %struct.trace_print_flags { i32 1, ptr @.str.21 }, %struct.trace_print_flags { i32 2, ptr @.str.22 }, %struct.trace_print_flags { i32 4, ptr @.str.23 }, %struct.trace_print_flags { i32 8, ptr @.str.24 }, %struct.trace_print_flags { i32 16, ptr @.str.25 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const void *\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cred\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"service\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"principal\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cred=%p service=%s principal='%s'\0A\00", [61 x i8] zeroinitializer }, align 32
@trace_raw_output_rpcgss_ctx_class.symbols = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.48 }, %struct.trace_print_flags { i32 2, ptr @.str.49 }, %struct.trace_print_flags { i32 3, ptr @.str.50 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"integrity\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"privacy\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xid\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"addr=%s xid=0x%08x maj_stat=%s\0A\00", [32 x i8] zeroinitializer }, align 32
@trace_raw_output_rpcgss_svc_gssapi_class.__flags = internal constant { [24 x %struct.trace_print_flags], [32 x i8] } { [24 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 65536, ptr @.str.3 }, %struct.trace_print_flags { i32 131072, ptr @.str.4 }, %struct.trace_print_flags { i32 196608, ptr @.str.5 }, %struct.trace_print_flags { i32 262144, ptr @.str.6 }, %struct.trace_print_flags { i32 327680, ptr @.str.7 }, %struct.trace_print_flags { i32 393216, ptr @.str.8 }, %struct.trace_print_flags { i32 458752, ptr @.str.9 }, %struct.trace_print_flags { i32 524288, ptr @.str.10 }, %struct.trace_print_flags { i32 589824, ptr @.str.11 }, %struct.trace_print_flags { i32 655360, ptr @.str.12 }, %struct.trace_print_flags { i32 720896, ptr @.str.13 }, %struct.trace_print_flags { i32 786432, ptr @.str.14 }, %struct.trace_print_flags { i32 851968, ptr @.str.15 }, %struct.trace_print_flags { i32 917504, ptr @.str.16 }, %struct.trace_print_flags { i32 983040, ptr @.str.17 }, %struct.trace_print_flags { i32 1048576, ptr @.str.18 }, %struct.trace_print_flags { i32 1114112, ptr @.str.19 }, %struct.trace_print_flags { i32 1179648, ptr @.str.20 }, %struct.trace_print_flags { i32 1, ptr @.str.21 }, %struct.trace_print_flags { i32 2, ptr @.str.22 }, %struct.trace_print_flags { i32 4, ptr @.str.23 }, %struct.trace_print_flags { i32 8, ptr @.str.24 }, %struct.trace_print_flags { i32 16, ptr @.str.25 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"addr=%s xid=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"expected\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"received\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"addr=%s xid=0x%08x expected seqno %u, received seqno %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"minor_status\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"major_status\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"addr=%s xid=0x%08x major_status=%s (0x%08lx) minor_status=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@trace_raw_output_rpcgss_svc_accept_upcall.__flags = internal constant { [24 x %struct.trace_print_flags], [32 x i8] } { [24 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 65536, ptr @.str.3 }, %struct.trace_print_flags { i32 131072, ptr @.str.4 }, %struct.trace_print_flags { i32 196608, ptr @.str.5 }, %struct.trace_print_flags { i32 262144, ptr @.str.6 }, %struct.trace_print_flags { i32 327680, ptr @.str.7 }, %struct.trace_print_flags { i32 393216, ptr @.str.8 }, %struct.trace_print_flags { i32 458752, ptr @.str.9 }, %struct.trace_print_flags { i32 524288, ptr @.str.10 }, %struct.trace_print_flags { i32 589824, ptr @.str.11 }, %struct.trace_print_flags { i32 655360, ptr @.str.12 }, %struct.trace_print_flags { i32 720896, ptr @.str.13 }, %struct.trace_print_flags { i32 786432, ptr @.str.14 }, %struct.trace_print_flags { i32 851968, ptr @.str.15 }, %struct.trace_print_flags { i32 917504, ptr @.str.16 }, %struct.trace_print_flags { i32 983040, ptr @.str.17 }, %struct.trace_print_flags { i32 1048576, ptr @.str.18 }, %struct.trace_print_flags { i32 1114112, ptr @.str.19 }, %struct.trace_print_flags { i32 1179648, ptr @.str.20 }, %struct.trace_print_flags { i32 1, ptr @.str.21 }, %struct.trace_print_flags { i32 2, ptr @.str.22 }, %struct.trace_print_flags { i32 4, ptr @.str.23 }, %struct.trace_print_flags { i32 8, ptr @.str.24 }, %struct.trace_print_flags { i32 16, ptr @.str.25 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seqno\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"addr=%s xid=0x%08x seqno=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"task:%08x@%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"task:%08x@%08x expected seqno %u, received seqno %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"task:%08x@%08x xid=0x%08x seqno=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"seq_xmit\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"task:%08x@%08x xid=0x%08x rq_seqno=%u seq_xmit=%u reencode %sneeded\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auth\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rslack\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ralign\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"verfsize\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"task:%08x@%08x xid=0x%08x auth=%p rslack=%u ralign=%u verfsize=%u\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xid=0x%08x seqno=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"min\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xid=0x%08x seqno=%u window=[%u..%u]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msg='%s'\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"for uid %u, result=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"expiry\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"now\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"window_size\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acceptor\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"win_size=%u expiry=%lu now=%lu timeout=%u acceptor=%.*s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"flavor\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flavor=%s error=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@trace_raw_output_rpcgss_createauth.symbols = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 390003, ptr @.str.26 }, %struct.trace_print_flags { i32 390004, ptr @.str.27 }, %struct.trace_print_flags { i32 390005, ptr @.str.28 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oid\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mech for oid %s was not found\0A\00", [33 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [31 x i8] c"../net/sunrpc/auth_gss/trace.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"str__rpcgss__trace_system_name\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 36, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 22, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 23, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 24, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 32, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 33, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 34, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 35, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 36, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 37, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 38, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 39, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 40, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 41, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 42, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 43, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 44, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 45, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 46, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 47, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 48, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 49, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 50, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 51, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 52, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 53, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 54, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 612, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 613, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 614, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant [39 x i8] c"trace_event_fields_rpcgss_gssapi_event\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [37 x i8] c"trace_event_fields_rpcgss_import_ctx\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_rpcgss_import_ctx\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [28 x i8] c"print_fmt_rpcgss_import_ctx\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [24 x i8] c"event_rpcgss_import_ctx\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_rpcgss_gssapi_event\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [30 x i8] c"print_fmt_rpcgss_gssapi_event\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [21 x i8] c"event_rpcgss_get_mic\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 136, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant [24 x i8] c"event_rpcgss_verify_mic\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 137, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"event_rpcgss_wrap\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 138, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"event_rpcgss_unwrap\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 139, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant [36 x i8] c"trace_event_fields_rpcgss_ctx_class\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_rpcgss_ctx_class\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [27 x i8] c"print_fmt_rpcgss_ctx_class\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [22 x i8] c"event_rpcgss_ctx_init\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 172, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant [25 x i8] c"event_rpcgss_ctx_destroy\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 173, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant [43 x i8] c"trace_event_fields_rpcgss_svc_gssapi_class\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_rpcgss_svc_gssapi_class\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [34 x i8] c"print_fmt_rpcgss_svc_gssapi_class\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [24 x i8] c"event_rpcgss_svc_unwrap\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 209, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant [21 x i8] c"event_rpcgss_svc_mic\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 210, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant [44 x i8] c"trace_event_fields_rpcgss_svc_unwrap_failed\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_rpcgss_svc_unwrap_failed\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [35 x i8] c"print_fmt_rpcgss_svc_unwrap_failed\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [31 x i8] c"event_rpcgss_svc_unwrap_failed\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [40 x i8] c"trace_event_fields_rpcgss_svc_seqno_bad\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_rpcgss_svc_seqno_bad\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [31 x i8] c"print_fmt_rpcgss_svc_seqno_bad\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [27 x i8] c"event_rpcgss_svc_seqno_bad\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [44 x i8] c"trace_event_fields_rpcgss_svc_accept_upcall\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_rpcgss_svc_accept_upcall\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [35 x i8] c"print_fmt_rpcgss_svc_accept_upcall\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [31 x i8] c"event_rpcgss_svc_accept_upcall\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [43 x i8] c"trace_event_fields_rpcgss_svc_authenticate\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_rpcgss_svc_authenticate\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [34 x i8] c"print_fmt_rpcgss_svc_authenticate\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [30 x i8] c"event_rpcgss_svc_authenticate\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [40 x i8] c"trace_event_fields_rpcgss_unwrap_failed\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_rpcgss_unwrap_failed\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [31 x i8] c"print_fmt_rpcgss_unwrap_failed\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [27 x i8] c"event_rpcgss_unwrap_failed\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [36 x i8] c"trace_event_fields_rpcgss_bad_seqno\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_rpcgss_bad_seqno\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [27 x i8] c"print_fmt_rpcgss_bad_seqno\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [23 x i8] c"event_rpcgss_bad_seqno\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [32 x i8] c"trace_event_fields_rpcgss_seqno\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_rpcgss_seqno\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [23 x i8] c"print_fmt_rpcgss_seqno\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [19 x i8] c"event_rpcgss_seqno\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [40 x i8] c"trace_event_fields_rpcgss_need_reencode\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_rpcgss_need_reencode\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [31 x i8] c"print_fmt_rpcgss_need_reencode\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [27 x i8] c"event_rpcgss_need_reencode\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [39 x i8] c"trace_event_fields_rpcgss_update_slack\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_rpcgss_update_slack\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [30 x i8] c"print_fmt_rpcgss_update_slack\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [26 x i8] c"event_rpcgss_update_slack\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [42 x i8] c"trace_event_fields_rpcgss_svc_seqno_class\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_rpcgss_svc_seqno_class\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [33 x i8] c"print_fmt_rpcgss_svc_seqno_class\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [29 x i8] c"event_rpcgss_svc_seqno_large\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 497, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant [28 x i8] c"event_rpcgss_svc_seqno_seen\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 498, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [40 x i8] c"trace_event_fields_rpcgss_svc_seqno_low\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_rpcgss_svc_seqno_low\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [31 x i8] c"print_fmt_rpcgss_svc_seqno_low\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [27 x i8] c"event_rpcgss_svc_seqno_low\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [37 x i8] c"trace_event_fields_rpcgss_upcall_msg\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_rpcgss_upcall_msg\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [28 x i8] c"print_fmt_rpcgss_upcall_msg\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [24 x i8] c"event_rpcgss_upcall_msg\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [40 x i8] c"trace_event_fields_rpcgss_upcall_result\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_rpcgss_upcall_result\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [31 x i8] c"print_fmt_rpcgss_upcall_result\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [27 x i8] c"event_rpcgss_upcall_result\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [34 x i8] c"trace_event_fields_rpcgss_context\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_rpcgss_context\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [25 x i8] c"print_fmt_rpcgss_context\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [21 x i8] c"event_rpcgss_context\00", align 1
@___asan_gen_.422 = private unnamed_addr constant [37 x i8] c"trace_event_fields_rpcgss_createauth\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_rpcgss_createauth\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [28 x i8] c"print_fmt_rpcgss_createauth\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [24 x i8] c"event_rpcgss_createauth\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [38 x i8] c"trace_event_fields_rpcgss_oid_to_mech\00", align 1
@___asan_gen_.437 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_rpcgss_oid_to_mech\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [29 x i8] c"print_fmt_rpcgss_oid_to_mech\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [25 x i8] c"event_rpcgss_oid_to_mech\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 118, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 83, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 141, i32 1 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 175, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 212, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 232, i32 1 }
@___asan_gen_.551 = private unnamed_addr constant [8 x i8] c"__flags\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 260, i32 1 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 291, i32 1 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 320, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 341, i32 1 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 370, i32 1 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 398, i32 1 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 432, i32 1 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 467, i32 1 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 500, i32 1 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 532, i32 1 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 550, i32 1 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 572, i32 1 }
@___asan_gen_.659 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 623, i32 1 }
@___asan_gen_.665 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [33 x i8] c"../include/trace/events/rpcgss.h\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 646, i32 1 }
@llvm.compiler.used = appending global [372 x ptr] [ptr @TRACE_SYSTEM_GSS_S_BAD_BINDINGS, ptr @TRACE_SYSTEM_GSS_S_BAD_MECH, ptr @TRACE_SYSTEM_GSS_S_BAD_NAME, ptr @TRACE_SYSTEM_GSS_S_BAD_NAMETYPE, ptr @TRACE_SYSTEM_GSS_S_BAD_QOP, ptr @TRACE_SYSTEM_GSS_S_BAD_SIG, ptr @TRACE_SYSTEM_GSS_S_BAD_STATUS, ptr @TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED, ptr @TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED, ptr @TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED, ptr @TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL, ptr @TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN, ptr @TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT, ptr @TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN, ptr @TRACE_SYSTEM_GSS_S_FAILURE, ptr @TRACE_SYSTEM_GSS_S_GAP_TOKEN, ptr @TRACE_SYSTEM_GSS_S_NAME_NOT_MN, ptr @TRACE_SYSTEM_GSS_S_NO_CONTEXT, ptr @TRACE_SYSTEM_GSS_S_NO_CRED, ptr @TRACE_SYSTEM_GSS_S_OLD_TOKEN, ptr @TRACE_SYSTEM_GSS_S_UNAUTHORIZED, ptr @TRACE_SYSTEM_GSS_S_UNAVAILABLE, ptr @TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN, ptr @TRACE_SYSTEM_RPC_AUTH_GSS_KRB5, ptr @TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I, ptr @TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P, ptr @TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY, ptr @TRACE_SYSTEM_RPC_GSS_SVC_NONE, ptr @TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY, ptr @__TRACE_SYSTEM_GSS_S_BAD_BINDINGS, ptr @__TRACE_SYSTEM_GSS_S_BAD_MECH, ptr @__TRACE_SYSTEM_GSS_S_BAD_NAME, ptr @__TRACE_SYSTEM_GSS_S_BAD_NAMETYPE, ptr @__TRACE_SYSTEM_GSS_S_BAD_QOP, ptr @__TRACE_SYSTEM_GSS_S_BAD_SIG, ptr @__TRACE_SYSTEM_GSS_S_BAD_STATUS, ptr @__TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED, ptr @__TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED, ptr @__TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED, ptr @__TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL, ptr @__TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN, ptr @__TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT, ptr @__TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN, ptr @__TRACE_SYSTEM_GSS_S_FAILURE, ptr @__TRACE_SYSTEM_GSS_S_GAP_TOKEN, ptr @__TRACE_SYSTEM_GSS_S_NAME_NOT_MN, ptr @__TRACE_SYSTEM_GSS_S_NO_CONTEXT, ptr @__TRACE_SYSTEM_GSS_S_NO_CRED, ptr @__TRACE_SYSTEM_GSS_S_OLD_TOKEN, ptr @__TRACE_SYSTEM_GSS_S_UNAUTHORIZED, ptr @__TRACE_SYSTEM_GSS_S_UNAVAILABLE, ptr @__TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN, ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5, ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I, ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P, ptr @__TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY, ptr @__TRACE_SYSTEM_RPC_GSS_SVC_NONE, ptr @__TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY, ptr @__bpf_trace_tp_map_rpcgss_bad_seqno, ptr @__bpf_trace_tp_map_rpcgss_context, ptr @__bpf_trace_tp_map_rpcgss_createauth, ptr @__bpf_trace_tp_map_rpcgss_ctx_destroy, ptr @__bpf_trace_tp_map_rpcgss_ctx_init, ptr @__bpf_trace_tp_map_rpcgss_get_mic, ptr @__bpf_trace_tp_map_rpcgss_import_ctx, ptr @__bpf_trace_tp_map_rpcgss_need_reencode, ptr @__bpf_trace_tp_map_rpcgss_oid_to_mech, ptr @__bpf_trace_tp_map_rpcgss_seqno, ptr @__bpf_trace_tp_map_rpcgss_svc_accept_upcall, ptr @__bpf_trace_tp_map_rpcgss_svc_authenticate, ptr @__bpf_trace_tp_map_rpcgss_svc_mic, ptr @__bpf_trace_tp_map_rpcgss_svc_seqno_bad, ptr @__bpf_trace_tp_map_rpcgss_svc_seqno_large, ptr @__bpf_trace_tp_map_rpcgss_svc_seqno_low, ptr @__bpf_trace_tp_map_rpcgss_svc_seqno_seen, ptr @__bpf_trace_tp_map_rpcgss_svc_unwrap, ptr @__bpf_trace_tp_map_rpcgss_svc_unwrap_failed, ptr @__bpf_trace_tp_map_rpcgss_unwrap, ptr @__bpf_trace_tp_map_rpcgss_unwrap_failed, ptr @__bpf_trace_tp_map_rpcgss_upcall_msg, ptr @__bpf_trace_tp_map_rpcgss_upcall_result, ptr @__bpf_trace_tp_map_rpcgss_update_slack, ptr @__bpf_trace_tp_map_rpcgss_verify_mic, ptr @__bpf_trace_tp_map_rpcgss_wrap, ptr @__event_rpcgss_bad_seqno, ptr @__event_rpcgss_context, ptr @__event_rpcgss_createauth, ptr @__event_rpcgss_ctx_destroy, ptr @__event_rpcgss_ctx_init, ptr @__event_rpcgss_get_mic, ptr @__event_rpcgss_import_ctx, ptr @__event_rpcgss_need_reencode, ptr @__event_rpcgss_oid_to_mech, ptr @__event_rpcgss_seqno, ptr @__event_rpcgss_svc_accept_upcall, ptr @__event_rpcgss_svc_authenticate, ptr @__event_rpcgss_svc_mic, ptr @__event_rpcgss_svc_seqno_bad, ptr @__event_rpcgss_svc_seqno_large, ptr @__event_rpcgss_svc_seqno_low, ptr @__event_rpcgss_svc_seqno_seen, ptr @__event_rpcgss_svc_unwrap, ptr @__event_rpcgss_svc_unwrap_failed, ptr @__event_rpcgss_unwrap, ptr @__event_rpcgss_unwrap_failed, ptr @__event_rpcgss_upcall_msg, ptr @__event_rpcgss_upcall_result, ptr @__event_rpcgss_update_slack, ptr @__event_rpcgss_verify_mic, ptr @__event_rpcgss_wrap, ptr @__tracepoint_ptr_rpcgss_bad_seqno, ptr @__tracepoint_ptr_rpcgss_context, ptr @__tracepoint_ptr_rpcgss_createauth, ptr @__tracepoint_ptr_rpcgss_ctx_destroy, ptr @__tracepoint_ptr_rpcgss_ctx_init, ptr @__tracepoint_ptr_rpcgss_get_mic, ptr @__tracepoint_ptr_rpcgss_import_ctx, ptr @__tracepoint_ptr_rpcgss_need_reencode, ptr @__tracepoint_ptr_rpcgss_oid_to_mech, ptr @__tracepoint_ptr_rpcgss_seqno, ptr @__tracepoint_ptr_rpcgss_svc_accept_upcall, ptr @__tracepoint_ptr_rpcgss_svc_authenticate, ptr @__tracepoint_ptr_rpcgss_svc_mic, ptr @__tracepoint_ptr_rpcgss_svc_seqno_bad, ptr @__tracepoint_ptr_rpcgss_svc_seqno_large, ptr @__tracepoint_ptr_rpcgss_svc_seqno_low, ptr @__tracepoint_ptr_rpcgss_svc_seqno_seen, ptr @__tracepoint_ptr_rpcgss_svc_unwrap, ptr @__tracepoint_ptr_rpcgss_svc_unwrap_failed, ptr @__tracepoint_ptr_rpcgss_unwrap, ptr @__tracepoint_ptr_rpcgss_unwrap_failed, ptr @__tracepoint_ptr_rpcgss_upcall_msg, ptr @__tracepoint_ptr_rpcgss_upcall_result, ptr @__tracepoint_ptr_rpcgss_update_slack, ptr @__tracepoint_ptr_rpcgss_verify_mic, ptr @__tracepoint_ptr_rpcgss_wrap, ptr @__tracepoint_rpcgss_bad_seqno, ptr @__tracepoint_rpcgss_context, ptr @__tracepoint_rpcgss_createauth, ptr @__tracepoint_rpcgss_ctx_destroy, ptr @__tracepoint_rpcgss_ctx_init, ptr @__tracepoint_rpcgss_get_mic, ptr @__tracepoint_rpcgss_import_ctx, ptr @__tracepoint_rpcgss_need_reencode, ptr @__tracepoint_rpcgss_oid_to_mech, ptr @__tracepoint_rpcgss_seqno, ptr @__tracepoint_rpcgss_svc_accept_upcall, ptr @__tracepoint_rpcgss_svc_authenticate, ptr @__tracepoint_rpcgss_svc_mic, ptr @__tracepoint_rpcgss_svc_seqno_bad, ptr @__tracepoint_rpcgss_svc_seqno_large, ptr @__tracepoint_rpcgss_svc_seqno_low, ptr @__tracepoint_rpcgss_svc_seqno_seen, ptr @__tracepoint_rpcgss_svc_unwrap, ptr @__tracepoint_rpcgss_svc_unwrap_failed, ptr @__tracepoint_rpcgss_unwrap, ptr @__tracepoint_rpcgss_unwrap_failed, ptr @__tracepoint_rpcgss_upcall_msg, ptr @__tracepoint_rpcgss_upcall_result, ptr @__tracepoint_rpcgss_update_slack, ptr @__tracepoint_rpcgss_verify_mic, ptr @__tracepoint_rpcgss_wrap, ptr @event_class_rpcgss_bad_seqno, ptr @event_class_rpcgss_context, ptr @event_class_rpcgss_createauth, ptr @event_class_rpcgss_ctx_class, ptr @event_class_rpcgss_gssapi_event, ptr @event_class_rpcgss_import_ctx, ptr @event_class_rpcgss_need_reencode, ptr @event_class_rpcgss_oid_to_mech, ptr @event_class_rpcgss_seqno, ptr @event_class_rpcgss_svc_accept_upcall, ptr @event_class_rpcgss_svc_authenticate, ptr @event_class_rpcgss_svc_gssapi_class, ptr @event_class_rpcgss_svc_seqno_bad, ptr @event_class_rpcgss_svc_seqno_class, ptr @event_class_rpcgss_svc_seqno_low, ptr @event_class_rpcgss_svc_unwrap_failed, ptr @event_class_rpcgss_unwrap_failed, ptr @event_class_rpcgss_upcall_msg, ptr @event_class_rpcgss_upcall_result, ptr @event_class_rpcgss_update_slack, ptr @event_rpcgss_bad_seqno, ptr @event_rpcgss_context, ptr @event_rpcgss_createauth, ptr @event_rpcgss_ctx_destroy, ptr @event_rpcgss_ctx_init, ptr @event_rpcgss_get_mic, ptr @event_rpcgss_import_ctx, ptr @event_rpcgss_need_reencode, ptr @event_rpcgss_oid_to_mech, ptr @event_rpcgss_seqno, ptr @event_rpcgss_svc_accept_upcall, ptr @event_rpcgss_svc_authenticate, ptr @event_rpcgss_svc_mic, ptr @event_rpcgss_svc_seqno_bad, ptr @event_rpcgss_svc_seqno_large, ptr @event_rpcgss_svc_seqno_low, ptr @event_rpcgss_svc_seqno_seen, ptr @event_rpcgss_svc_unwrap, ptr @event_rpcgss_svc_unwrap_failed, ptr @event_rpcgss_unwrap, ptr @event_rpcgss_unwrap_failed, ptr @event_rpcgss_upcall_msg, ptr @event_rpcgss_upcall_result, ptr @event_rpcgss_update_slack, ptr @event_rpcgss_verify_mic, ptr @event_rpcgss_wrap, ptr @str__rpcgss__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @trace_event_fields_rpcgss_gssapi_event, ptr @trace_event_fields_rpcgss_import_ctx, ptr @trace_event_type_funcs_rpcgss_import_ctx, ptr @print_fmt_rpcgss_import_ctx, ptr @trace_event_type_funcs_rpcgss_gssapi_event, ptr @print_fmt_rpcgss_gssapi_event, ptr @trace_event_fields_rpcgss_ctx_class, ptr @trace_event_type_funcs_rpcgss_ctx_class, ptr @print_fmt_rpcgss_ctx_class, ptr @trace_event_fields_rpcgss_svc_gssapi_class, ptr @trace_event_type_funcs_rpcgss_svc_gssapi_class, ptr @print_fmt_rpcgss_svc_gssapi_class, ptr @trace_event_fields_rpcgss_svc_unwrap_failed, ptr @trace_event_type_funcs_rpcgss_svc_unwrap_failed, ptr @print_fmt_rpcgss_svc_unwrap_failed, ptr @trace_event_fields_rpcgss_svc_seqno_bad, ptr @trace_event_type_funcs_rpcgss_svc_seqno_bad, ptr @print_fmt_rpcgss_svc_seqno_bad, ptr @trace_event_fields_rpcgss_svc_accept_upcall, ptr @trace_event_type_funcs_rpcgss_svc_accept_upcall, ptr @print_fmt_rpcgss_svc_accept_upcall, ptr @trace_event_fields_rpcgss_svc_authenticate, ptr @trace_event_type_funcs_rpcgss_svc_authenticate, ptr @print_fmt_rpcgss_svc_authenticate, ptr @trace_event_fields_rpcgss_unwrap_failed, ptr @trace_event_type_funcs_rpcgss_unwrap_failed, ptr @print_fmt_rpcgss_unwrap_failed, ptr @trace_event_fields_rpcgss_bad_seqno, ptr @trace_event_type_funcs_rpcgss_bad_seqno, ptr @print_fmt_rpcgss_bad_seqno, ptr @trace_event_fields_rpcgss_seqno, ptr @trace_event_type_funcs_rpcgss_seqno, ptr @print_fmt_rpcgss_seqno, ptr @trace_event_fields_rpcgss_need_reencode, ptr @trace_event_type_funcs_rpcgss_need_reencode, ptr @print_fmt_rpcgss_need_reencode, ptr @trace_event_fields_rpcgss_update_slack, ptr @trace_event_type_funcs_rpcgss_update_slack, ptr @print_fmt_rpcgss_update_slack, ptr @trace_event_fields_rpcgss_svc_seqno_class, ptr @trace_event_type_funcs_rpcgss_svc_seqno_class, ptr @print_fmt_rpcgss_svc_seqno_class, ptr @trace_event_fields_rpcgss_svc_seqno_low, ptr @trace_event_type_funcs_rpcgss_svc_seqno_low, ptr @print_fmt_rpcgss_svc_seqno_low, ptr @trace_event_fields_rpcgss_upcall_msg, ptr @trace_event_type_funcs_rpcgss_upcall_msg, ptr @print_fmt_rpcgss_upcall_msg, ptr @trace_event_fields_rpcgss_upcall_result, ptr @trace_event_type_funcs_rpcgss_upcall_result, ptr @print_fmt_rpcgss_upcall_result, ptr @trace_event_fields_rpcgss_context, ptr @trace_event_type_funcs_rpcgss_context, ptr @print_fmt_rpcgss_context, ptr @trace_event_fields_rpcgss_createauth, ptr @trace_event_type_funcs_rpcgss_createauth, ptr @print_fmt_rpcgss_createauth, ptr @trace_event_fields_rpcgss_oid_to_mech, ptr @trace_event_type_funcs_rpcgss_oid_to_mech, ptr @print_fmt_rpcgss_oid_to_mech, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @trace_raw_output_rpcgss_gssapi_event.__flags, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @trace_raw_output_rpcgss_ctx_class.symbols, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @trace_raw_output_rpcgss_svc_gssapi_class.__flags, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @trace_raw_output_rpcgss_svc_accept_upcall.__flags, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @trace_raw_output_rpcgss_createauth.symbols, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [190 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__rpcgss__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_gssapi_event to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_import_ctx to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_import_ctx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_import_ctx to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_import_ctx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_gssapi_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_gssapi_event to i32), i32 1298, i32 1632, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_get_mic to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_verify_mic to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_wrap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_unwrap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_ctx_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_ctx_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_ctx_class to i32), i32 207, i32 256, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_ctx_init to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_ctx_destroy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_svc_gssapi_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_svc_gssapi_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_svc_gssapi_class to i32), i32 1299, i32 1632, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_svc_unwrap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_svc_mic to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_svc_unwrap_failed to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_svc_unwrap_failed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_svc_unwrap_failed to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_svc_unwrap_failed to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_svc_seqno_bad to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_svc_seqno_bad to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_svc_seqno_bad to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_svc_seqno_bad to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_svc_accept_upcall to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_svc_accept_upcall to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_svc_accept_upcall to i32), i32 1377, i32 1728, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_svc_accept_upcall to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_svc_authenticate to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_svc_authenticate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_svc_authenticate to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_svc_authenticate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_unwrap_failed to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_unwrap_failed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_unwrap_failed to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_unwrap_failed to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_bad_seqno to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_bad_seqno to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_bad_seqno to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_bad_seqno to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_seqno to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_seqno to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_seqno to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_seqno to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_need_reencode to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_need_reencode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_need_reencode to i32), i32 159, i32 192, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_need_reencode to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_update_slack to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_update_slack to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_update_slack to i32), i32 161, i32 224, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_update_slack to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_svc_seqno_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_svc_seqno_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_svc_seqno_class to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_svc_seqno_large to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_svc_seqno_seen to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_svc_seqno_low to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_svc_seqno_low to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_svc_seqno_low to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_svc_seqno_low to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_upcall_msg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_upcall_msg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_upcall_msg to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_upcall_msg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_upcall_result to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_upcall_result to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_upcall_result to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_upcall_result to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_context to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_context to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_context to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_context to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_createauth to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_createauth to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_createauth to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_createauth to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpcgss_oid_to_mech to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpcgss_oid_to_mech to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpcgss_oid_to_mech to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpcgss_oid_to_mech to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_rpcgss_gssapi_event.__flags to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_rpcgss_ctx_class.symbols to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_rpcgss_svc_gssapi_class.__flags to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_rpcgss_svc_accept_upcall.__flags to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_rpcgss_createauth.symbols to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpcgss_import_ctx(ptr nocapture readnone %__data, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_import_ctx, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %status) #7
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
define dso_local i32 @__traceiter_rpcgss_get_mic(ptr nocapture readnone %__data, ptr noundef %task, i32 noundef %maj_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_get_mic, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %task, i32 noundef %maj_stat) #7
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
define dso_local i32 @__traceiter_rpcgss_verify_mic(ptr nocapture readnone %__data, ptr noundef %task, i32 noundef %maj_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_verify_mic, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %task, i32 noundef %maj_stat) #7
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
define dso_local i32 @__traceiter_rpcgss_wrap(ptr nocapture readnone %__data, ptr noundef %task, i32 noundef %maj_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_wrap, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %task, i32 noundef %maj_stat) #7
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
define dso_local i32 @__traceiter_rpcgss_unwrap(ptr nocapture readnone %__data, ptr noundef %task, i32 noundef %maj_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_unwrap, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %task, i32 noundef %maj_stat) #7
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
define dso_local i32 @__traceiter_rpcgss_ctx_init(ptr nocapture readnone %__data, ptr noundef %gc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_ctx_init, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %gc) #7
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
define dso_local i32 @__traceiter_rpcgss_ctx_destroy(ptr nocapture readnone %__data, ptr noundef %gc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_ctx_destroy, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %gc) #7
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
define dso_local i32 @__traceiter_rpcgss_svc_unwrap(ptr nocapture readnone %__data, ptr noundef %rqstp, i32 noundef %maj_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_svc_unwrap, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %rqstp, i32 noundef %maj_stat) #7
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
define dso_local i32 @__traceiter_rpcgss_svc_mic(ptr nocapture readnone %__data, ptr noundef %rqstp, i32 noundef %maj_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_svc_mic, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %rqstp, i32 noundef %maj_stat) #7
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
define dso_local i32 @__traceiter_rpcgss_svc_unwrap_failed(ptr nocapture readnone %__data, ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_svc_unwrap_failed, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %rqstp) #7
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
define dso_local i32 @__traceiter_rpcgss_svc_seqno_bad(ptr nocapture readnone %__data, ptr noundef %rqstp, i32 noundef %expected, i32 noundef %received) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_svc_seqno_bad, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %rqstp, i32 noundef %expected, i32 noundef %received) #7
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
define dso_local i32 @__traceiter_rpcgss_svc_accept_upcall(ptr nocapture readnone %__data, ptr noundef %rqstp, i32 noundef %major_status, i32 noundef %minor_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_svc_accept_upcall, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %rqstp, i32 noundef %major_status, i32 noundef %minor_status) #7
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
define dso_local i32 @__traceiter_rpcgss_svc_authenticate(ptr nocapture readnone %__data, ptr noundef %rqstp, ptr noundef %gc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_svc_authenticate, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %rqstp, ptr noundef %gc) #7
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
define dso_local i32 @__traceiter_rpcgss_unwrap_failed(ptr nocapture readnone %__data, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_unwrap_failed, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %task) #7
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
define dso_local i32 @__traceiter_rpcgss_bad_seqno(ptr nocapture readnone %__data, ptr noundef %task, i32 noundef %expected, i32 noundef %received) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_bad_seqno, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %task, i32 noundef %expected, i32 noundef %received) #7
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
define dso_local i32 @__traceiter_rpcgss_seqno(ptr nocapture readnone %__data, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_seqno, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %task) #7
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
define dso_local i32 @__traceiter_rpcgss_need_reencode(ptr nocapture readnone %__data, ptr noundef %task, i32 noundef %seq_xmit, i1 noundef zeroext %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_need_reencode, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %task, i32 noundef %seq_xmit, i1 noundef zeroext %ret) #7
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
define dso_local i32 @__traceiter_rpcgss_update_slack(ptr nocapture readnone %__data, ptr noundef %task, ptr noundef %auth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_update_slack, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %task, ptr noundef %auth) #7
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
define dso_local i32 @__traceiter_rpcgss_svc_seqno_large(ptr nocapture readnone %__data, ptr noundef %rqstp, i32 noundef %seqno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_svc_seqno_large, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %rqstp, i32 noundef %seqno) #7
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
define dso_local i32 @__traceiter_rpcgss_svc_seqno_seen(ptr nocapture readnone %__data, ptr noundef %rqstp, i32 noundef %seqno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_svc_seqno_seen, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %rqstp, i32 noundef %seqno) #7
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
define dso_local i32 @__traceiter_rpcgss_svc_seqno_low(ptr nocapture readnone %__data, ptr noundef %rqstp, i32 noundef %seqno, i32 noundef %min, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_svc_seqno_low, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %rqstp, i32 noundef %seqno, i32 noundef %min, i32 noundef %max) #7
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
define dso_local i32 @__traceiter_rpcgss_upcall_msg(ptr nocapture readnone %__data, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_upcall_msg, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %buf) #7
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
define dso_local i32 @__traceiter_rpcgss_upcall_result(ptr nocapture readnone %__data, i32 noundef %uid, i32 noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_upcall_result, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %uid, i32 noundef %result) #7
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
define dso_local i32 @__traceiter_rpcgss_context(ptr nocapture readnone %__data, i32 noundef %window_size, i32 noundef %expiry, i32 noundef %now, i32 noundef %timeout, i32 noundef %len, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_context, i32 0, i32 7), align 4
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
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, i32 noundef %window_size, i32 noundef %expiry, i32 noundef %now, i32 noundef %timeout, i32 noundef %len, ptr noundef %data) #7
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
define dso_local i32 @__traceiter_rpcgss_createauth(ptr nocapture readnone %__data, i32 noundef %flavor, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_createauth, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %flavor, i32 noundef %error) #7
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
define dso_local i32 @__traceiter_rpcgss_oid_to_mech(ptr nocapture readnone %__data, ptr noundef %oid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpcgss_oid_to_mech, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %oid) #7
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
define internal void @trace_event_raw_event_rpcgss_gssapi_event(ptr noundef %__data, ptr nocapture noundef readonly %task, i32 noundef %maj_stat) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %3 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %4 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %client_id, align 4
  %maj_stat6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %maj_stat6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %maj_stat, ptr %maj_stat6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_gssapi_event(ptr noundef %__data, ptr nocapture noundef readonly %task, i32 noundef %maj_stat) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %27 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %28 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %30 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %client_id, align 4
  %maj_stat17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %maj_stat17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %maj_stat, ptr %maj_stat17, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #7
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
define internal void @trace_event_raw_event_rpcgss_import_ctx(ptr noundef %__data, i32 noundef %status) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %status6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_import_ctx, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %status6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %status, ptr %status6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_import_ctx(ptr noundef %__data, i32 noundef %status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %status17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_import_ctx, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %status17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %status, ptr %status17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_ctx_class(ptr noundef %__data, ptr noundef %gc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %gc_principal.i = getelementptr inbounds %struct.gss_cred, ptr %gc, i32 0, i32 4
  %3 = ptrtoint ptr %gc_principal.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gc_principal.i, align 4
  %tobool.not.i24 = icmp eq ptr %4, null
  %spec.select.i = select i1 %tobool.not.i24, ptr @.str.40, ptr %4
  %call.i25 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i25, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i25, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_principal = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %__data_loc_principal to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_principal, align 4
  %cred = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %gc, ptr %cred, align 4
  %gc_service = getelementptr inbounds %struct.gss_cred, ptr %gc, i32 0, i32 1
  %7 = ptrtoint ptr %gc_service to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gc_service, align 4
  %service = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %service to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %service, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %10 = ptrtoint ptr %gc_principal.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gc_principal.i, align 4
  %tobool7.not = icmp eq ptr %11, null
  %spec.select = select i1 %tobool7.not, ptr @.str.40, ptr %11
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_ctx_class(ptr noundef %__data, ptr noundef %gc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %gc_principal.i = getelementptr inbounds %struct.gss_cred, ptr %gc, i32 0, i32 4
  %2 = ptrtoint ptr %gc_principal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc_principal.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.40, ptr %3
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i48.not = icmp eq ptr %17, null
  br i1 %tobool.not.i48.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #7
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_principal = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %__data_loc_principal to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_principal, align 4
  %cred = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %gc, ptr %cred, align 4
  %gc_service = getelementptr inbounds %struct.gss_cred, ptr %gc, i32 0, i32 1
  %31 = ptrtoint ptr %gc_service to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gc_service, align 4
  %service = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %service to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %service, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %34 = ptrtoint ptr %gc_principal.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gc_principal.i, align 4
  %tobool19.not = icmp eq ptr %35, null
  %spec.select = select i1 %tobool19.not, ptr @.str.40, ptr %35
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %13, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_gssapi_class(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, i32 noundef %maj_stat) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %3 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %4, i32 0, i32 17
  %call.i27 = tail call i32 @strlen(ptr noundef nonnull %xpt_remotebuf.i) #10
  %add = add i32 %call.i27, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i27, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_addr, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %6 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %xid, align 4
  %maj_stat6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %maj_stat6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %maj_stat, ptr %maj_stat6, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %10 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %11, i32 0, i32 17
  %tobool8.not = icmp eq ptr %xpt_remotebuf, null
  %spec.select = select i1 %tobool8.not, ptr @.str.40, ptr %xpt_remotebuf
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_gssapi_class(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, i32 noundef %maj_stat) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %2 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @strlen(ptr noundef nonnull %xpt_remotebuf.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #7
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_addr, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %30 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %call13, i32 0, i32 1
  %32 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %xid, align 4
  %maj_stat17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %maj_stat17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %maj_stat, ptr %maj_stat17, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %34 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %35, i32 0, i32 17
  %tobool20.not = icmp eq ptr %xpt_remotebuf, null
  %spec.select = select i1 %tobool20.not, ptr @.str.40, ptr %xpt_remotebuf
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %13, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_unwrap_failed(ptr noundef %__data, ptr nocapture noundef readonly %rqstp) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %3 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %4, i32 0, i32 17
  %call.i24 = tail call i32 @strlen(ptr noundef nonnull %xpt_remotebuf.i) #10
  %add = add i32 %call.i24, 17
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i24, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_addr, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %6 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %xid, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %9 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %10, i32 0, i32 17
  %tobool7.not = icmp eq ptr %xpt_remotebuf, null
  %spec.select = select i1 %tobool7.not, ptr @.str.40, ptr %xpt_remotebuf
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_unwrap_failed(ptr noundef %__data, ptr nocapture noundef readonly %rqstp) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %2 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @strlen(ptr noundef nonnull %xpt_remotebuf.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65552
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 28
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #7
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_addr, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %30 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %call13, i32 0, i32 1
  %32 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %xid, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %33 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %34, i32 0, i32 17
  %tobool19.not = icmp eq ptr %xpt_remotebuf, null
  %spec.select = select i1 %tobool19.not, ptr @.str.40, ptr %xpt_remotebuf
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %13, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_seqno_bad(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, i32 noundef %expected, i32 noundef %received) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %3 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %4, i32 0, i32 17
  %call.i30 = tail call i32 @strlen(ptr noundef nonnull %xpt_remotebuf.i) #10
  %add = add i32 %call.i30, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i30, 16
  %or.i = add i32 %add.i, 65560
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_addr, align 4
  %expected6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %expected6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %expected, ptr %expected6, align 4
  %received7 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %received7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %received, ptr %received7, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %8 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %xid, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %11 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %12, i32 0, i32 17
  %tobool9.not = icmp eq ptr %xpt_remotebuf, null
  %spec.select = select i1 %tobool9.not, ptr @.str.40, ptr %xpt_remotebuf
  %call13 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_seqno_bad(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, i32 noundef %expected, i32 noundef %received) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %2 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @strlen(ptr noundef nonnull %xpt_remotebuf.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65560
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #7
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %call13, i32 0, i32 4
  %29 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_addr, align 4
  %expected17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %expected17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %expected, ptr %expected17, align 4
  %received18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %received18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %received, ptr %received18, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %32 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xid, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %35 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %36, i32 0, i32 17
  %tobool21.not = icmp eq ptr %xpt_remotebuf, null
  %spec.select = select i1 %tobool21.not, ptr @.str.40, ptr %xpt_remotebuf
  %call25 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %13, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_accept_upcall(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, i32 noundef %major_status, i32 noundef %minor_status) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %3 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %4, i32 0, i32 17
  %call.i30 = tail call i32 @strlen(ptr noundef nonnull %xpt_remotebuf.i) #10
  %add = add i32 %call.i30, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i30, 16
  %or.i = add i32 %add.i, 65560
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_addr, align 4
  %minor_status6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %minor_status6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %minor_status, ptr %minor_status6, align 4
  %major_status7 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %major_status7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %major_status, ptr %major_status7, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %8 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %xid, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %11 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %12, i32 0, i32 17
  %tobool9.not = icmp eq ptr %xpt_remotebuf, null
  %spec.select = select i1 %tobool9.not, ptr @.str.40, ptr %xpt_remotebuf
  %call13 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_accept_upcall(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, i32 noundef %major_status, i32 noundef %minor_status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %2 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @strlen(ptr noundef nonnull %xpt_remotebuf.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65560
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #7
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %call13, i32 0, i32 4
  %29 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_addr, align 4
  %minor_status17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %minor_status17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %minor_status, ptr %minor_status17, align 4
  %major_status18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %major_status18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %major_status, ptr %major_status18, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %32 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xid, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %35 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %36, i32 0, i32 17
  %tobool21.not = icmp eq ptr %xpt_remotebuf, null
  %spec.select = select i1 %tobool21.not, ptr @.str.40, ptr %xpt_remotebuf
  %call25 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %13, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_authenticate(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, ptr nocapture noundef readonly %gc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %3 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %4, i32 0, i32 17
  %call.i26 = tail call i32 @strlen(ptr noundef nonnull %xpt_remotebuf.i) #10
  %add = add i32 %call.i26, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i26, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_addr, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %6 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %xid, align 4
  %gc_seq = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 2
  %9 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gc_seq, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %seqno to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %seqno, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %12 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %13, i32 0, i32 17
  %tobool7.not = icmp eq ptr %xpt_remotebuf, null
  %spec.select = select i1 %tobool7.not, ptr @.str.40, ptr %xpt_remotebuf
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_authenticate(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, ptr nocapture noundef readonly %gc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %rq_xprt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %2 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @strlen(ptr noundef nonnull %xpt_remotebuf.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #7
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_addr, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %30 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %xid, align 4
  %gc_seq = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 2
  %33 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gc_seq, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %seqno to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %seqno, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %36 = ptrtoint ptr %rq_xprt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rq_xprt.i, align 8
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %37, i32 0, i32 17
  %tobool19.not = icmp eq ptr %xpt_remotebuf, null
  %spec.select = select i1 %tobool19.not, ptr @.str.40, ptr %xpt_remotebuf
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %13, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_unwrap_failed(ptr noundef %__data, ptr nocapture noundef readonly %task) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %3 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %4 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %client_id, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_unwrap_failed(ptr noundef %__data, ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %27 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %28 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %30 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %client_id, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_bad_seqno(ptr noundef %__data, ptr nocapture noundef readonly %task, i32 noundef %expected, i32 noundef %received) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %3 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %4 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %client_id, align 4
  %expected6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %expected6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %expected, ptr %expected6, align 4
  %received7 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %received7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %received, ptr %received7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_bad_seqno(ptr noundef %__data, ptr nocapture noundef readonly %task, i32 noundef %expected, i32 noundef %received) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %27 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %28 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %30 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %client_id, align 4
  %expected17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %expected17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %expected, ptr %expected17, align 4
  %received18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %received18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %received, ptr %received18, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_seqno(ptr noundef %__data, ptr nocapture noundef readonly %task) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %3 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tk_rqstp, align 8
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %5 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %6 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %8 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %client_id, align 4
  %rq_xid = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 5
  %13 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %xid, align 4
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 7
  %16 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rq_seqno, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %call3, i32 0, i32 4
  %18 = ptrtoint ptr %seqno to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %seqno, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_seqno(ptr noundef %__data, ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %27 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tk_rqstp, align 8
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %29 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %30 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %32 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %client_id, align 4
  %rq_xid = getelementptr inbounds %struct.rpc_rqst, ptr %28, i32 0, i32 5
  %37 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %xid, align 4
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %28, i32 0, i32 7
  %40 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rq_seqno, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %call13, i32 0, i32 4
  %42 = ptrtoint ptr %seqno to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %seqno, align 4
  %43 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rctx, align 4
  %45 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %44, ptr noundef %__data, i64 noundef 1, ptr noundef %46, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_need_reencode(ptr noundef %__data, ptr nocapture noundef readonly %task, i32 noundef %seq_xmit, i1 noundef zeroext %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %ret to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %3 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %4 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %client_id, align 4
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %11 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tk_rqstp, align 8
  %rq_xid = getelementptr inbounds %struct.rpc_rqst, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %xid, align 4
  %seq_xmit7 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %seq_xmit7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %seq_xmit, ptr %seq_xmit7, align 4
  %17 = load ptr, ptr %tk_rqstp, align 8
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rq_seqno, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call3, i32 0, i32 5
  %20 = ptrtoint ptr %seqno to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %seqno, align 4
  %ret10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call3, i32 0, i32 6
  %21 = ptrtoint ptr %ret10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %ret10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_need_reencode(ptr noundef %__data, ptr nocapture noundef readonly %task, i32 noundef %seq_xmit, i1 noundef zeroext %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %ret to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %27 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %28 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call14, i32 0, i32 1
  %29 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %30 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call14, i32 0, i32 2
  %34 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %client_id, align 4
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %35 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tk_rqstp, align 8
  %rq_xid = getelementptr inbounds %struct.rpc_rqst, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call14, i32 0, i32 3
  %39 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %xid, align 4
  %seq_xmit18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call14, i32 0, i32 4
  %40 = ptrtoint ptr %seq_xmit18 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %seq_xmit, ptr %seq_xmit18, align 4
  %41 = load ptr, ptr %tk_rqstp, align 8
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rq_seqno, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call14, i32 0, i32 5
  %44 = ptrtoint ptr %seqno to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %seqno, align 4
  %ret21 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %call14, i32 0, i32 6
  %45 = ptrtoint ptr %ret21 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool, ptr %ret21, align 4
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 36, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_update_slack(ptr noundef %__data, ptr nocapture noundef readonly %task, ptr noundef %auth) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %3 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %4 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %6 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %client_id, align 4
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %11 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tk_rqstp, align 8
  %rq_xid = getelementptr inbounds %struct.rpc_rqst, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %xid, align 4
  %auth6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %auth6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %auth, ptr %auth6, align 4
  %au_rslack = getelementptr inbounds %struct.rpc_auth, ptr %auth, i32 0, i32 1
  %17 = ptrtoint ptr %au_rslack to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %au_rslack, align 4
  %rslack = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %rslack to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rslack, align 4
  %au_ralign = getelementptr inbounds %struct.rpc_auth, ptr %auth, i32 0, i32 3
  %20 = ptrtoint ptr %au_ralign to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %au_ralign, align 4
  %ralign = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %ralign to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ralign, align 4
  %au_verfsize = getelementptr inbounds %struct.rpc_auth, ptr %auth, i32 0, i32 2
  %23 = ptrtoint ptr %au_verfsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %au_verfsize, align 4
  %verfsize = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call3, i32 0, i32 7
  %25 = ptrtoint ptr %verfsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %verfsize, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_update_slack(ptr noundef %__data, ptr nocapture noundef readonly %task, ptr noundef %auth) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %27 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %28 to i32
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %task_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %task_id, align 4
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %30 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tk_client, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cl_clid, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %client_id, align 4
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %35 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tk_rqstp, align 8
  %rq_xid = getelementptr inbounds %struct.rpc_rqst, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %xid, align 4
  %auth17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %auth17 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %auth, ptr %auth17, align 4
  %au_rslack = getelementptr inbounds %struct.rpc_auth, ptr %auth, i32 0, i32 1
  %41 = ptrtoint ptr %au_rslack to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %au_rslack, align 4
  %rslack = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %rslack to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rslack, align 4
  %au_ralign = getelementptr inbounds %struct.rpc_auth, ptr %auth, i32 0, i32 3
  %44 = ptrtoint ptr %au_ralign to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %au_ralign, align 4
  %ralign = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %ralign to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ralign, align 4
  %au_verfsize = getelementptr inbounds %struct.rpc_auth, ptr %auth, i32 0, i32 2
  %47 = ptrtoint ptr %au_verfsize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %au_verfsize, align 4
  %verfsize = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %call13, i32 0, i32 7
  %49 = ptrtoint ptr %verfsize to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %verfsize, align 4
  %50 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rctx, align 4
  %52 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %51, ptr noundef %__data, i64 noundef 1, ptr noundef %53, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_seqno_class(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, i32 noundef %seqno) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %3 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %xid, align 4
  %seqno6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %seqno6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %seqno, ptr %seqno6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_seqno_class(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, i32 noundef %seqno) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %27 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %xid, align 4
  %seqno17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %seqno17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %seqno, ptr %seqno17, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_svc_seqno_low(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, i32 noundef %seqno, i32 noundef %min, i32 noundef %max) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %3 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %xid, align 4
  %seqno6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %seqno6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %seqno, ptr %seqno6, align 4
  %min7 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %min7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %min, ptr %min7, align 4
  %max8 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %max8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %max, ptr %max8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_svc_seqno_low(ptr noundef %__data, ptr nocapture noundef readonly %rqstp, i32 noundef %seqno, i32 noundef %min, i32 noundef %max) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %27 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rq_xid, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %xid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %xid, align 4
  %seqno17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %seqno17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %seqno, ptr %seqno17, align 4
  %min18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %min18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %min, ptr %min18, align 4
  %max19 = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %max19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %max, ptr %max19, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_upcall_msg(ptr noundef %__data, ptr noundef readonly %buf) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %tobool.not.i19 = icmp eq ptr %buf, null
  %spec.select.i = select i1 %tobool.not.i19, ptr @.str.40, ptr %buf
  %call.i20 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i20, 13
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i20, 16
  %or.i = add i32 %add.i, 65548
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_msg, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 12
  %call8 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_upcall_msg(ptr noundef %__data, ptr noundef readonly %buf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %tobool.not.i = icmp eq ptr %buf, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.40, ptr %buf
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65548
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %tobool.not.i43.not = icmp eq ptr %15, null
  br i1 %tobool.not.i43.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 24
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_msg, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 12
  %call20 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_upcall_result(ptr noundef %__data, i32 noundef %uid, i32 noundef %result) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %uid6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %uid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %uid, ptr %uid6, align 4
  %result7 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %result7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %result, ptr %result7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_upcall_result(ptr noundef %__data, i32 noundef %uid, i32 noundef %result) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %uid17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %uid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %uid, ptr %uid17, align 4
  %result18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %result18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %result, ptr %result18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_context(ptr noundef %__data, i32 noundef %window_size, i32 noundef %expiry, i32 noundef %now, i32 noundef %timeout, i32 noundef %len, ptr noundef readonly %data) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %tobool.not.i33 = icmp eq ptr %data, null
  %spec.select.i = select i1 %tobool.not.i33, ptr @.str.40, ptr %data
  %call.i34 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i34, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i34, 16
  %or.i = add i32 %add.i, 65568
  %__data_loc_acceptor = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call3, i32 0, i32 6
  %3 = ptrtoint ptr %__data_loc_acceptor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_acceptor, align 4
  %expiry6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %expiry6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %expiry, ptr %expiry6, align 4
  %now7 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %now7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %now, ptr %now7, align 4
  %timeout8 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call3, i32 0, i32 3
  %6 = ptrtoint ptr %timeout8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %timeout, ptr %timeout8, align 4
  %window_size9 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call3, i32 0, i32 4
  %7 = ptrtoint ptr %window_size9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %window_size, ptr %window_size9, align 4
  %len10 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call3, i32 0, i32 5
  %8 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %len10, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %call12 = call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %data, i32 noundef %len)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_context(ptr noundef %__data, i32 noundef %window_size, i32 noundef %expiry, i32 noundef %now, i32 noundef %timeout, i32 noundef %len, ptr noundef readonly %data) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %tobool.not.i = icmp eq ptr %data, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.40, ptr %data
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65568
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %tobool.not.i57.not = icmp eq ptr %15, null
  br i1 %tobool.not.i57.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_acceptor = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call13, i32 0, i32 6
  %27 = ptrtoint ptr %__data_loc_acceptor to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_acceptor, align 4
  %expiry17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %expiry17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %expiry, ptr %expiry17, align 4
  %now18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %now18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %now, ptr %now18, align 4
  %timeout19 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call13, i32 0, i32 3
  %30 = ptrtoint ptr %timeout19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %timeout, ptr %timeout19, align 4
  %window_size20 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call13, i32 0, i32 4
  %31 = ptrtoint ptr %window_size20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %window_size, ptr %window_size20, align 4
  %len21 = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %call13, i32 0, i32 5
  %32 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %len, ptr %len21, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 32
  %call24 = call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %data, i32 noundef %len)
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_createauth(ptr noundef %__data, i32 noundef %flavor, i32 noundef %error) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %flavor6 = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %flavor6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %flavor, ptr %flavor6, align 4
  %error7 = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %error7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %error, ptr %error7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_createauth(ptr noundef %__data, i32 noundef %flavor, i32 noundef %error) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %flavor17 = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %flavor17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %flavor, ptr %flavor17, align 4
  %error18 = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %error18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %error, ptr %error18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpcgss_oid_to_mech(ptr noundef %__data, ptr noundef readonly %oid) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !494

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !495

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
  %tobool.not.i20 = icmp eq ptr %oid, null
  %spec.select.i = select i1 %tobool.not.i20, ptr @.str.40, ptr %oid
  %call.i21 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i21, 13
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i21, 16
  %or.i = add i32 %add.i, 65548
  %__data_loc_oid = getelementptr inbounds %struct.trace_event_raw_rpcgss_oid_to_mech, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_oid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_oid, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 12
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpcgss_oid_to_mech(ptr noundef %__data, ptr noundef readonly %oid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !496
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !496
  %tobool.not.i = icmp eq ptr %oid, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.40, ptr %oid
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65548
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !484) #7
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
  %tobool.not.i44.not = icmp eq ptr %15, null
  br i1 %tobool.not.i44.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 24
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !484) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_oid = getelementptr inbounds %struct.trace_event_raw_rpcgss_oid_to_mech, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_oid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_oid, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 12
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #11
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_import_ctx(ptr noundef %__data, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %status to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_gssapi_event(ptr noundef %__data, ptr noundef %task, i32 noundef %maj_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %task to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %maj_stat to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_ctx_class(ptr noundef %__data, ptr noundef %gc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %gc to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_svc_gssapi_class(ptr noundef %__data, ptr noundef %rqstp, i32 noundef %maj_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %rqstp to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %maj_stat to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_svc_unwrap_failed(ptr noundef %__data, ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %rqstp to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_svc_seqno_bad(ptr noundef %__data, ptr noundef %rqstp, i32 noundef %expected, i32 noundef %received) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %rqstp to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %expected to i64
  %conv8 = zext i32 %received to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_svc_accept_upcall(ptr noundef %__data, ptr noundef %rqstp, i32 noundef %major_status, i32 noundef %minor_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %rqstp to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %major_status to i64
  %conv8 = zext i32 %minor_status to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_svc_authenticate(ptr noundef %__data, ptr noundef %rqstp, ptr noundef %gc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %rqstp to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %gc to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_unwrap_failed(ptr noundef %__data, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %task to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_bad_seqno(ptr noundef %__data, ptr noundef %task, i32 noundef %expected, i32 noundef %received) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %task to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %expected to i64
  %conv8 = zext i32 %received to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_seqno(ptr noundef %__data, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %task to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_need_reencode(ptr noundef %__data, ptr noundef %task, i32 noundef %seq_xmit, i1 noundef zeroext %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %task to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %seq_xmit to i64
  %conv9 = zext i1 %ret to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_update_slack(ptr noundef %__data, ptr noundef %task, ptr noundef %auth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %task to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %auth to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_svc_seqno_class(ptr noundef %__data, ptr noundef %rqstp, i32 noundef %seqno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %rqstp to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %seqno to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_svc_seqno_low(ptr noundef %__data, ptr noundef %rqstp, i32 noundef %seqno, i32 noundef %min, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %rqstp to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %seqno to i64
  %conv8 = zext i32 %min to i64
  %conv12 = zext i32 %max to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_upcall_msg(ptr noundef %__data, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %buf to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_upcall_result(ptr noundef %__data, i32 noundef %uid, i32 noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %uid to i64
  %conv4 = zext i32 %result to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_context(ptr noundef %__data, i32 noundef %window_size, i32 noundef %expiry, i32 noundef %now, i32 noundef %timeout, i32 noundef %len, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %window_size to i64
  %conv4 = zext i32 %expiry to i64
  %conv8 = zext i32 %now to i64
  %conv12 = zext i32 %timeout to i64
  %conv16 = zext i32 %len to i64
  %0 = ptrtoint ptr %data to i32
  %conv20 = zext i32 %0 to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_createauth(ptr noundef %__data, i32 noundef %flavor, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %flavor to i64
  %conv4 = zext i32 %error to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpcgss_oid_to_mech(ptr noundef %__data, ptr noundef %oid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %oid to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_import_ctx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %status = getelementptr inbounds %struct.trace_event_raw_rpcgss_import_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.36, i32 noundef %3) #7
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
define internal i32 @trace_raw_output_rpcgss_gssapi_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
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
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_id, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %client_id, align 4
  %maj_stat = getelementptr inbounds %struct.trace_event_raw_rpcgss_gssapi_event, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %maj_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maj_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.39, i32 noundef %7, ptr noundef nonnull @trace_raw_output_rpcgss_gssapi_event.__flags) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %call3, %cond.false ], [ @.str.38, %if.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %5, ptr noundef %cond) #7
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_ctx_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cred = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cred, align 4
  %service = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_rpcgss_ctx_class.symbols) #7
  %__data_loc_principal = getelementptr inbounds %struct.trace_event_raw_rpcgss_ctx_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_principal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_principal, align 4
  %and = and i32 %7, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.47, ptr noundef %3, ptr noundef %call1, ptr noundef %add.ptr) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_gssapi_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
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
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_addr, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xid, align 4
  %maj_stat = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_gssapi_class, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %maj_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maj_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.39, i32 noundef %7, ptr noundef nonnull @trace_raw_output_rpcgss_svc_gssapi_class.__flags) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %call3, %cond.false ], [ @.str.38, %if.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.53, ptr noundef %add.ptr, i32 noundef %5, ptr noundef %cond) #7
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_unwrap_failed(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_addr, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_unwrap_failed, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xid, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.54, ptr noundef %add.ptr, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_seqno_bad(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_addr, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xid, align 4
  %expected = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %expected, align 4
  %received = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_bad, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %received to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %received, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.57, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_accept_upcall(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
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
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_addr, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xid, align 4
  %major_status = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %major_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %major_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.39, i32 noundef %7, ptr noundef nonnull @trace_raw_output_rpcgss_svc_accept_upcall.__flags) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %call3, %cond.false ], [ @.str.38, %if.end.cond.end_crit_edge ]
  %8 = ptrtoint ptr %major_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %major_status, align 4
  %minor_status = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_accept_upcall, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %minor_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor_status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.60, ptr noundef %add.ptr, i32 noundef %5, ptr noundef %cond, i32 noundef %9, i32 noundef %11) #7
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_authenticate(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_addr = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__data_loc_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_addr, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xid, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_authenticate, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seqno, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.62, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_unwrap_failed(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_id, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_unwrap_failed, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %client_id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.63, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_bad_seqno(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_id, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %client_id, align 4
  %expected = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %expected, align 4
  %received = getelementptr inbounds %struct.trace_event_raw_rpcgss_bad_seqno, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %received to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %received, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.64, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_seqno(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_id, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %client_id, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xid, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_seqno, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seqno, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.65, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_need_reencode(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_id, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %client_id, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xid, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seqno, align 4
  %seq_xmit = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %seq_xmit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq_xmit, align 4
  %ret1 = getelementptr inbounds %struct.trace_event_raw_rpcgss_need_reencode, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ret1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ret1, align 4, !range !497
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool.not, ptr @.str.71, ptr @.str.70
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.69, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %cond) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_update_slack(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %task_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_id, align 4
  %client_id = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %client_id, align 4
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xid, align 4
  %auth = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %auth, align 4
  %rslack = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %rslack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rslack, align 4
  %ralign = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ralign to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ralign, align 4
  %verfsize = getelementptr inbounds %struct.trace_event_raw_rpcgss_update_slack, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %verfsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %verfsize, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.76, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_seqno_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seqno, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.77, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_svc_seqno_low(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %xid = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xid, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seqno, align 4
  %min = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min, align 4
  %max = getelementptr inbounds %struct.trace_event_raw_rpcgss_svc_seqno_low, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.80, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_upcall_msg(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_msg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_msg, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.82, ptr noundef %add.ptr) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_upcall_result(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %uid = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uid, align 4
  %result = getelementptr inbounds %struct.trace_event_raw_rpcgss_upcall_result, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %result, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.85, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_context(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %window_size = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %window_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %window_size, align 4
  %expiry = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %expiry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %expiry, align 4
  %now = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %now, align 4
  %timeout = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %__data_loc_acceptor = getelementptr inbounds %struct.trace_event_raw_rpcgss_context, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %__data_loc_acceptor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__data_loc_acceptor, align 4
  %and = and i32 %13, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.92, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %add.ptr) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_createauth(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %flavor = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flavor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flavor, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %3, ptr noundef nonnull @trace_raw_output_rpcgss_createauth.symbols) #7
  %error = getelementptr inbounds %struct.trace_event_raw_rpcgss_createauth, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.95, ptr noundef %call1, i32 noundef %5) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpcgss_oid_to_mech(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_oid = getelementptr inbounds %struct.trace_event_raw_rpcgss_oid_to_mech, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_oid, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.97, ptr noundef %add.ptr) #7
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
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run6(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !235, !236, !237, !238, !239, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483}
!llvm.named.register.sp = !{!484}
!llvm.module.flags = !{!485, !486, !487, !488, !489, !490, !491, !492}
!llvm.ident = !{!493}

!0 = !{ptr @__tracepoint_rpcgss_import_ctx, !1, !"__tracepoint_rpcgss_import_ctx", i1 false, i1 false}
!1 = !{!"../include/trace/events/rpcgss.h", i32 118, i32 1}
!2 = !{ptr @__tracepoint_ptr_rpcgss_import_ctx, !1, !"__tracepoint_ptr_rpcgss_import_ctx", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_rpcgss_import_ctx, !1, !"__SCK__tp_func_rpcgss_import_ctx", i1 false, i1 false}
!4 = !{ptr @__tracepoint_rpcgss_get_mic, !5, !"__tracepoint_rpcgss_get_mic", i1 false, i1 false}
!5 = !{!"../include/trace/events/rpcgss.h", i32 136, i32 1}
!6 = !{ptr @__tracepoint_ptr_rpcgss_get_mic, !5, !"__tracepoint_ptr_rpcgss_get_mic", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_rpcgss_get_mic, !5, !"__SCK__tp_func_rpcgss_get_mic", i1 false, i1 false}
!8 = !{ptr @__tracepoint_rpcgss_verify_mic, !9, !"__tracepoint_rpcgss_verify_mic", i1 false, i1 false}
!9 = !{!"../include/trace/events/rpcgss.h", i32 137, i32 1}
!10 = !{ptr @__tracepoint_ptr_rpcgss_verify_mic, !9, !"__tracepoint_ptr_rpcgss_verify_mic", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_rpcgss_verify_mic, !9, !"__SCK__tp_func_rpcgss_verify_mic", i1 false, i1 false}
!12 = !{ptr @__tracepoint_rpcgss_wrap, !13, !"__tracepoint_rpcgss_wrap", i1 false, i1 false}
!13 = !{!"../include/trace/events/rpcgss.h", i32 138, i32 1}
!14 = !{ptr @__tracepoint_ptr_rpcgss_wrap, !13, !"__tracepoint_ptr_rpcgss_wrap", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_rpcgss_wrap, !13, !"__SCK__tp_func_rpcgss_wrap", i1 false, i1 false}
!16 = !{ptr @__tracepoint_rpcgss_unwrap, !17, !"__tracepoint_rpcgss_unwrap", i1 false, i1 false}
!17 = !{!"../include/trace/events/rpcgss.h", i32 139, i32 1}
!18 = !{ptr @__tracepoint_ptr_rpcgss_unwrap, !17, !"__tracepoint_ptr_rpcgss_unwrap", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_rpcgss_unwrap, !17, !"__SCK__tp_func_rpcgss_unwrap", i1 false, i1 false}
!20 = !{ptr @__tracepoint_rpcgss_ctx_init, !21, !"__tracepoint_rpcgss_ctx_init", i1 false, i1 false}
!21 = !{!"../include/trace/events/rpcgss.h", i32 172, i32 1}
!22 = !{ptr @__tracepoint_ptr_rpcgss_ctx_init, !21, !"__tracepoint_ptr_rpcgss_ctx_init", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_rpcgss_ctx_init, !21, !"__SCK__tp_func_rpcgss_ctx_init", i1 false, i1 false}
!24 = !{ptr @__tracepoint_rpcgss_ctx_destroy, !25, !"__tracepoint_rpcgss_ctx_destroy", i1 false, i1 false}
!25 = !{!"../include/trace/events/rpcgss.h", i32 173, i32 1}
!26 = !{ptr @__tracepoint_ptr_rpcgss_ctx_destroy, !25, !"__tracepoint_ptr_rpcgss_ctx_destroy", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_rpcgss_ctx_destroy, !25, !"__SCK__tp_func_rpcgss_ctx_destroy", i1 false, i1 false}
!28 = !{ptr @__tracepoint_rpcgss_svc_unwrap, !29, !"__tracepoint_rpcgss_svc_unwrap", i1 false, i1 false}
!29 = !{!"../include/trace/events/rpcgss.h", i32 209, i32 1}
!30 = !{ptr @__tracepoint_ptr_rpcgss_svc_unwrap, !29, !"__tracepoint_ptr_rpcgss_svc_unwrap", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_rpcgss_svc_unwrap, !29, !"__SCK__tp_func_rpcgss_svc_unwrap", i1 false, i1 false}
!32 = !{ptr @__tracepoint_rpcgss_svc_mic, !33, !"__tracepoint_rpcgss_svc_mic", i1 false, i1 false}
!33 = !{!"../include/trace/events/rpcgss.h", i32 210, i32 1}
!34 = !{ptr @__tracepoint_ptr_rpcgss_svc_mic, !33, !"__tracepoint_ptr_rpcgss_svc_mic", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_rpcgss_svc_mic, !33, !"__SCK__tp_func_rpcgss_svc_mic", i1 false, i1 false}
!36 = !{ptr @__tracepoint_rpcgss_svc_unwrap_failed, !37, !"__tracepoint_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!37 = !{!"../include/trace/events/rpcgss.h", i32 212, i32 1}
!38 = !{ptr @__tracepoint_ptr_rpcgss_svc_unwrap_failed, !37, !"__tracepoint_ptr_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_rpcgss_svc_unwrap_failed, !37, !"__SCK__tp_func_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!40 = !{ptr @__tracepoint_rpcgss_svc_seqno_bad, !41, !"__tracepoint_rpcgss_svc_seqno_bad", i1 false, i1 false}
!41 = !{!"../include/trace/events/rpcgss.h", i32 232, i32 1}
!42 = !{ptr @__tracepoint_ptr_rpcgss_svc_seqno_bad, !41, !"__tracepoint_ptr_rpcgss_svc_seqno_bad", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_rpcgss_svc_seqno_bad, !41, !"__SCK__tp_func_rpcgss_svc_seqno_bad", i1 false, i1 false}
!44 = !{ptr @__tracepoint_rpcgss_svc_accept_upcall, !45, !"__tracepoint_rpcgss_svc_accept_upcall", i1 false, i1 false}
!45 = !{!"../include/trace/events/rpcgss.h", i32 260, i32 1}
!46 = !{ptr @__tracepoint_ptr_rpcgss_svc_accept_upcall, !45, !"__tracepoint_ptr_rpcgss_svc_accept_upcall", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_rpcgss_svc_accept_upcall, !45, !"__SCK__tp_func_rpcgss_svc_accept_upcall", i1 false, i1 false}
!48 = !{ptr @__tracepoint_rpcgss_svc_authenticate, !49, !"__tracepoint_rpcgss_svc_authenticate", i1 false, i1 false}
!49 = !{!"../include/trace/events/rpcgss.h", i32 291, i32 1}
!50 = !{ptr @__tracepoint_ptr_rpcgss_svc_authenticate, !49, !"__tracepoint_ptr_rpcgss_svc_authenticate", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_rpcgss_svc_authenticate, !49, !"__SCK__tp_func_rpcgss_svc_authenticate", i1 false, i1 false}
!52 = !{ptr @__tracepoint_rpcgss_unwrap_failed, !53, !"__tracepoint_rpcgss_unwrap_failed", i1 false, i1 false}
!53 = !{!"../include/trace/events/rpcgss.h", i32 320, i32 1}
!54 = !{ptr @__tracepoint_ptr_rpcgss_unwrap_failed, !53, !"__tracepoint_ptr_rpcgss_unwrap_failed", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_rpcgss_unwrap_failed, !53, !"__SCK__tp_func_rpcgss_unwrap_failed", i1 false, i1 false}
!56 = !{ptr @__tracepoint_rpcgss_bad_seqno, !57, !"__tracepoint_rpcgss_bad_seqno", i1 false, i1 false}
!57 = !{!"../include/trace/events/rpcgss.h", i32 341, i32 1}
!58 = !{ptr @__tracepoint_ptr_rpcgss_bad_seqno, !57, !"__tracepoint_ptr_rpcgss_bad_seqno", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_rpcgss_bad_seqno, !57, !"__SCK__tp_func_rpcgss_bad_seqno", i1 false, i1 false}
!60 = !{ptr @__tracepoint_rpcgss_seqno, !61, !"__tracepoint_rpcgss_seqno", i1 false, i1 false}
!61 = !{!"../include/trace/events/rpcgss.h", i32 370, i32 1}
!62 = !{ptr @__tracepoint_ptr_rpcgss_seqno, !61, !"__tracepoint_ptr_rpcgss_seqno", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_rpcgss_seqno, !61, !"__SCK__tp_func_rpcgss_seqno", i1 false, i1 false}
!64 = !{ptr @__tracepoint_rpcgss_need_reencode, !65, !"__tracepoint_rpcgss_need_reencode", i1 false, i1 false}
!65 = !{!"../include/trace/events/rpcgss.h", i32 398, i32 1}
!66 = !{ptr @__tracepoint_ptr_rpcgss_need_reencode, !65, !"__tracepoint_ptr_rpcgss_need_reencode", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_rpcgss_need_reencode, !65, !"__SCK__tp_func_rpcgss_need_reencode", i1 false, i1 false}
!68 = !{ptr @__tracepoint_rpcgss_update_slack, !69, !"__tracepoint_rpcgss_update_slack", i1 false, i1 false}
!69 = !{!"../include/trace/events/rpcgss.h", i32 432, i32 1}
!70 = !{ptr @__tracepoint_ptr_rpcgss_update_slack, !69, !"__tracepoint_ptr_rpcgss_update_slack", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_rpcgss_update_slack, !69, !"__SCK__tp_func_rpcgss_update_slack", i1 false, i1 false}
!72 = !{ptr @__tracepoint_rpcgss_svc_seqno_large, !73, !"__tracepoint_rpcgss_svc_seqno_large", i1 false, i1 false}
!73 = !{!"../include/trace/events/rpcgss.h", i32 497, i32 1}
!74 = !{ptr @__tracepoint_ptr_rpcgss_svc_seqno_large, !73, !"__tracepoint_ptr_rpcgss_svc_seqno_large", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_rpcgss_svc_seqno_large, !73, !"__SCK__tp_func_rpcgss_svc_seqno_large", i1 false, i1 false}
!76 = !{ptr @__tracepoint_rpcgss_svc_seqno_seen, !77, !"__tracepoint_rpcgss_svc_seqno_seen", i1 false, i1 false}
!77 = !{!"../include/trace/events/rpcgss.h", i32 498, i32 1}
!78 = !{ptr @__tracepoint_ptr_rpcgss_svc_seqno_seen, !77, !"__tracepoint_ptr_rpcgss_svc_seqno_seen", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_rpcgss_svc_seqno_seen, !77, !"__SCK__tp_func_rpcgss_svc_seqno_seen", i1 false, i1 false}
!80 = !{ptr @__tracepoint_rpcgss_svc_seqno_low, !81, !"__tracepoint_rpcgss_svc_seqno_low", i1 false, i1 false}
!81 = !{!"../include/trace/events/rpcgss.h", i32 500, i32 1}
!82 = !{ptr @__tracepoint_ptr_rpcgss_svc_seqno_low, !81, !"__tracepoint_ptr_rpcgss_svc_seqno_low", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_rpcgss_svc_seqno_low, !81, !"__SCK__tp_func_rpcgss_svc_seqno_low", i1 false, i1 false}
!84 = !{ptr @__tracepoint_rpcgss_upcall_msg, !85, !"__tracepoint_rpcgss_upcall_msg", i1 false, i1 false}
!85 = !{!"../include/trace/events/rpcgss.h", i32 532, i32 1}
!86 = !{ptr @__tracepoint_ptr_rpcgss_upcall_msg, !85, !"__tracepoint_ptr_rpcgss_upcall_msg", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_rpcgss_upcall_msg, !85, !"__SCK__tp_func_rpcgss_upcall_msg", i1 false, i1 false}
!88 = !{ptr @__tracepoint_rpcgss_upcall_result, !89, !"__tracepoint_rpcgss_upcall_result", i1 false, i1 false}
!89 = !{!"../include/trace/events/rpcgss.h", i32 550, i32 1}
!90 = !{ptr @__tracepoint_ptr_rpcgss_upcall_result, !89, !"__tracepoint_ptr_rpcgss_upcall_result", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_rpcgss_upcall_result, !89, !"__SCK__tp_func_rpcgss_upcall_result", i1 false, i1 false}
!92 = !{ptr @__tracepoint_rpcgss_context, !93, !"__tracepoint_rpcgss_context", i1 false, i1 false}
!93 = !{!"../include/trace/events/rpcgss.h", i32 572, i32 1}
!94 = !{ptr @__tracepoint_ptr_rpcgss_context, !93, !"__tracepoint_ptr_rpcgss_context", i1 false, i1 false}
!95 = !{ptr @__SCK__tp_func_rpcgss_context, !93, !"__SCK__tp_func_rpcgss_context", i1 false, i1 false}
!96 = !{ptr @__tracepoint_rpcgss_createauth, !97, !"__tracepoint_rpcgss_createauth", i1 false, i1 false}
!97 = !{!"../include/trace/events/rpcgss.h", i32 623, i32 1}
!98 = !{ptr @__tracepoint_ptr_rpcgss_createauth, !97, !"__tracepoint_ptr_rpcgss_createauth", i1 false, i1 false}
!99 = !{ptr @__SCK__tp_func_rpcgss_createauth, !97, !"__SCK__tp_func_rpcgss_createauth", i1 false, i1 false}
!100 = !{ptr @__tracepoint_rpcgss_oid_to_mech, !101, !"__tracepoint_rpcgss_oid_to_mech", i1 false, i1 false}
!101 = !{!"../include/trace/events/rpcgss.h", i32 646, i32 1}
!102 = !{ptr @__tracepoint_ptr_rpcgss_oid_to_mech, !101, !"__tracepoint_ptr_rpcgss_oid_to_mech", i1 false, i1 false}
!103 = !{ptr @__SCK__tp_func_rpcgss_oid_to_mech, !101, !"__SCK__tp_func_rpcgss_oid_to_mech", i1 false, i1 false}
!104 = !{ptr @.str, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/trace/events/rpcgss.h", i32 22, i32 1}
!106 = !{ptr @__TRACE_SYSTEM_RPC_GSS_SVC_NONE, !105, !"__TRACE_SYSTEM_RPC_GSS_SVC_NONE", i1 false, i1 false}
!107 = !{ptr @TRACE_SYSTEM_RPC_GSS_SVC_NONE, !105, !"TRACE_SYSTEM_RPC_GSS_SVC_NONE", i1 false, i1 false}
!108 = !{ptr @.str.1, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/trace/events/rpcgss.h", i32 23, i32 1}
!110 = !{ptr @__TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY, !109, !"__TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY", i1 false, i1 false}
!111 = !{ptr @TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY, !109, !"TRACE_SYSTEM_RPC_GSS_SVC_INTEGRITY", i1 false, i1 false}
!112 = !{ptr @.str.2, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/trace/events/rpcgss.h", i32 24, i32 1}
!114 = !{ptr @__TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY, !113, !"__TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY", i1 false, i1 false}
!115 = !{ptr @TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY, !113, !"TRACE_SYSTEM_RPC_GSS_SVC_PRIVACY", i1 false, i1 false}
!116 = !{ptr @.str.3, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/trace/events/rpcgss.h", i32 32, i32 1}
!118 = !{ptr @__TRACE_SYSTEM_GSS_S_BAD_MECH, !117, !"__TRACE_SYSTEM_GSS_S_BAD_MECH", i1 false, i1 false}
!119 = !{ptr @TRACE_SYSTEM_GSS_S_BAD_MECH, !117, !"TRACE_SYSTEM_GSS_S_BAD_MECH", i1 false, i1 false}
!120 = !{ptr @.str.4, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/trace/events/rpcgss.h", i32 33, i32 1}
!122 = !{ptr @__TRACE_SYSTEM_GSS_S_BAD_NAME, !121, !"__TRACE_SYSTEM_GSS_S_BAD_NAME", i1 false, i1 false}
!123 = !{ptr @TRACE_SYSTEM_GSS_S_BAD_NAME, !121, !"TRACE_SYSTEM_GSS_S_BAD_NAME", i1 false, i1 false}
!124 = !{ptr @.str.5, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/trace/events/rpcgss.h", i32 34, i32 1}
!126 = !{ptr @__TRACE_SYSTEM_GSS_S_BAD_NAMETYPE, !125, !"__TRACE_SYSTEM_GSS_S_BAD_NAMETYPE", i1 false, i1 false}
!127 = !{ptr @TRACE_SYSTEM_GSS_S_BAD_NAMETYPE, !125, !"TRACE_SYSTEM_GSS_S_BAD_NAMETYPE", i1 false, i1 false}
!128 = !{ptr @.str.6, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/trace/events/rpcgss.h", i32 35, i32 1}
!130 = !{ptr @__TRACE_SYSTEM_GSS_S_BAD_BINDINGS, !129, !"__TRACE_SYSTEM_GSS_S_BAD_BINDINGS", i1 false, i1 false}
!131 = !{ptr @TRACE_SYSTEM_GSS_S_BAD_BINDINGS, !129, !"TRACE_SYSTEM_GSS_S_BAD_BINDINGS", i1 false, i1 false}
!132 = !{ptr @.str.7, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/trace/events/rpcgss.h", i32 36, i32 1}
!134 = !{ptr @__TRACE_SYSTEM_GSS_S_BAD_STATUS, !133, !"__TRACE_SYSTEM_GSS_S_BAD_STATUS", i1 false, i1 false}
!135 = !{ptr @TRACE_SYSTEM_GSS_S_BAD_STATUS, !133, !"TRACE_SYSTEM_GSS_S_BAD_STATUS", i1 false, i1 false}
!136 = !{ptr @.str.8, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/trace/events/rpcgss.h", i32 37, i32 1}
!138 = !{ptr @__TRACE_SYSTEM_GSS_S_BAD_SIG, !137, !"__TRACE_SYSTEM_GSS_S_BAD_SIG", i1 false, i1 false}
!139 = !{ptr @TRACE_SYSTEM_GSS_S_BAD_SIG, !137, !"TRACE_SYSTEM_GSS_S_BAD_SIG", i1 false, i1 false}
!140 = !{ptr @.str.9, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/trace/events/rpcgss.h", i32 38, i32 1}
!142 = !{ptr @__TRACE_SYSTEM_GSS_S_NO_CRED, !141, !"__TRACE_SYSTEM_GSS_S_NO_CRED", i1 false, i1 false}
!143 = !{ptr @TRACE_SYSTEM_GSS_S_NO_CRED, !141, !"TRACE_SYSTEM_GSS_S_NO_CRED", i1 false, i1 false}
!144 = !{ptr @.str.10, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/trace/events/rpcgss.h", i32 39, i32 1}
!146 = !{ptr @__TRACE_SYSTEM_GSS_S_NO_CONTEXT, !145, !"__TRACE_SYSTEM_GSS_S_NO_CONTEXT", i1 false, i1 false}
!147 = !{ptr @TRACE_SYSTEM_GSS_S_NO_CONTEXT, !145, !"TRACE_SYSTEM_GSS_S_NO_CONTEXT", i1 false, i1 false}
!148 = !{ptr @.str.11, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/trace/events/rpcgss.h", i32 40, i32 1}
!150 = !{ptr @__TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN, !149, !"__TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN", i1 false, i1 false}
!151 = !{ptr @TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN, !149, !"TRACE_SYSTEM_GSS_S_DEFECTIVE_TOKEN", i1 false, i1 false}
!152 = !{ptr @.str.12, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/trace/events/rpcgss.h", i32 41, i32 1}
!154 = !{ptr @__TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL, !153, !"__TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL", i1 false, i1 false}
!155 = !{ptr @TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL, !153, !"TRACE_SYSTEM_GSS_S_DEFECTIVE_CREDENTIAL", i1 false, i1 false}
!156 = !{ptr @.str.13, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../include/trace/events/rpcgss.h", i32 42, i32 1}
!158 = !{ptr @__TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED, !157, !"__TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED", i1 false, i1 false}
!159 = !{ptr @TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED, !157, !"TRACE_SYSTEM_GSS_S_CREDENTIALS_EXPIRED", i1 false, i1 false}
!160 = !{ptr @.str.14, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../include/trace/events/rpcgss.h", i32 43, i32 1}
!162 = !{ptr @__TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED, !161, !"__TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED", i1 false, i1 false}
!163 = !{ptr @TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED, !161, !"TRACE_SYSTEM_GSS_S_CONTEXT_EXPIRED", i1 false, i1 false}
!164 = !{ptr @.str.15, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../include/trace/events/rpcgss.h", i32 44, i32 1}
!166 = !{ptr @__TRACE_SYSTEM_GSS_S_FAILURE, !165, !"__TRACE_SYSTEM_GSS_S_FAILURE", i1 false, i1 false}
!167 = !{ptr @TRACE_SYSTEM_GSS_S_FAILURE, !165, !"TRACE_SYSTEM_GSS_S_FAILURE", i1 false, i1 false}
!168 = !{ptr @.str.16, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../include/trace/events/rpcgss.h", i32 45, i32 1}
!170 = !{ptr @__TRACE_SYSTEM_GSS_S_BAD_QOP, !169, !"__TRACE_SYSTEM_GSS_S_BAD_QOP", i1 false, i1 false}
!171 = !{ptr @TRACE_SYSTEM_GSS_S_BAD_QOP, !169, !"TRACE_SYSTEM_GSS_S_BAD_QOP", i1 false, i1 false}
!172 = !{ptr @.str.17, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../include/trace/events/rpcgss.h", i32 46, i32 1}
!174 = !{ptr @__TRACE_SYSTEM_GSS_S_UNAUTHORIZED, !173, !"__TRACE_SYSTEM_GSS_S_UNAUTHORIZED", i1 false, i1 false}
!175 = !{ptr @TRACE_SYSTEM_GSS_S_UNAUTHORIZED, !173, !"TRACE_SYSTEM_GSS_S_UNAUTHORIZED", i1 false, i1 false}
!176 = !{ptr @.str.18, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/trace/events/rpcgss.h", i32 47, i32 1}
!178 = !{ptr @__TRACE_SYSTEM_GSS_S_UNAVAILABLE, !177, !"__TRACE_SYSTEM_GSS_S_UNAVAILABLE", i1 false, i1 false}
!179 = !{ptr @TRACE_SYSTEM_GSS_S_UNAVAILABLE, !177, !"TRACE_SYSTEM_GSS_S_UNAVAILABLE", i1 false, i1 false}
!180 = !{ptr @.str.19, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../include/trace/events/rpcgss.h", i32 48, i32 1}
!182 = !{ptr @__TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT, !181, !"__TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT", i1 false, i1 false}
!183 = !{ptr @TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT, !181, !"TRACE_SYSTEM_GSS_S_DUPLICATE_ELEMENT", i1 false, i1 false}
!184 = !{ptr @.str.20, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../include/trace/events/rpcgss.h", i32 49, i32 1}
!186 = !{ptr @__TRACE_SYSTEM_GSS_S_NAME_NOT_MN, !185, !"__TRACE_SYSTEM_GSS_S_NAME_NOT_MN", i1 false, i1 false}
!187 = !{ptr @TRACE_SYSTEM_GSS_S_NAME_NOT_MN, !185, !"TRACE_SYSTEM_GSS_S_NAME_NOT_MN", i1 false, i1 false}
!188 = !{ptr @.str.21, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../include/trace/events/rpcgss.h", i32 50, i32 1}
!190 = !{ptr @__TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED, !189, !"__TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED", i1 false, i1 false}
!191 = !{ptr @TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED, !189, !"TRACE_SYSTEM_GSS_S_CONTINUE_NEEDED", i1 false, i1 false}
!192 = !{ptr @.str.22, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../include/trace/events/rpcgss.h", i32 51, i32 1}
!194 = !{ptr @__TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN, !193, !"__TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN", i1 false, i1 false}
!195 = !{ptr @TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN, !193, !"TRACE_SYSTEM_GSS_S_DUPLICATE_TOKEN", i1 false, i1 false}
!196 = !{ptr @.str.23, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../include/trace/events/rpcgss.h", i32 52, i32 1}
!198 = !{ptr @__TRACE_SYSTEM_GSS_S_OLD_TOKEN, !197, !"__TRACE_SYSTEM_GSS_S_OLD_TOKEN", i1 false, i1 false}
!199 = !{ptr @TRACE_SYSTEM_GSS_S_OLD_TOKEN, !197, !"TRACE_SYSTEM_GSS_S_OLD_TOKEN", i1 false, i1 false}
!200 = !{ptr @.str.24, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../include/trace/events/rpcgss.h", i32 53, i32 1}
!202 = !{ptr @__TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN, !201, !"__TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN", i1 false, i1 false}
!203 = !{ptr @TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN, !201, !"TRACE_SYSTEM_GSS_S_UNSEQ_TOKEN", i1 false, i1 false}
!204 = !{ptr @.str.25, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../include/trace/events/rpcgss.h", i32 54, i32 1}
!206 = !{ptr @__TRACE_SYSTEM_GSS_S_GAP_TOKEN, !205, !"__TRACE_SYSTEM_GSS_S_GAP_TOKEN", i1 false, i1 false}
!207 = !{ptr @TRACE_SYSTEM_GSS_S_GAP_TOKEN, !205, !"TRACE_SYSTEM_GSS_S_GAP_TOKEN", i1 false, i1 false}
!208 = !{ptr @.str.26, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../include/trace/events/rpcgss.h", i32 612, i32 1}
!210 = !{ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5, !209, !"__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5", i1 false, i1 false}
!211 = !{ptr @TRACE_SYSTEM_RPC_AUTH_GSS_KRB5, !209, !"TRACE_SYSTEM_RPC_AUTH_GSS_KRB5", i1 false, i1 false}
!212 = !{ptr @.str.27, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../include/trace/events/rpcgss.h", i32 613, i32 1}
!214 = !{ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I, !213, !"__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I", i1 false, i1 false}
!215 = !{ptr @TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I, !213, !"TRACE_SYSTEM_RPC_AUTH_GSS_KRB5I", i1 false, i1 false}
!216 = !{ptr @.str.28, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../include/trace/events/rpcgss.h", i32 614, i32 1}
!218 = !{ptr @__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P, !217, !"__TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P", i1 false, i1 false}
!219 = !{ptr @TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P, !217, !"TRACE_SYSTEM_RPC_AUTH_GSS_KRB5P", i1 false, i1 false}
!220 = !{ptr @event_class_rpcgss_gssapi_event, !221, !"event_class_rpcgss_gssapi_event", i1 false, i1 false}
!221 = !{!"../include/trace/events/rpcgss.h", i32 83, i32 1}
!222 = !{ptr @event_class_rpcgss_import_ctx, !1, !"event_class_rpcgss_import_ctx", i1 false, i1 false}
!223 = !{ptr @event_rpcgss_import_ctx, !1, !"event_rpcgss_import_ctx", i1 false, i1 false}
!224 = !{ptr @__event_rpcgss_import_ctx, !1, !"__event_rpcgss_import_ctx", i1 false, i1 false}
!225 = !{ptr @event_rpcgss_get_mic, !5, !"event_rpcgss_get_mic", i1 false, i1 false}
!226 = !{ptr @__event_rpcgss_get_mic, !5, !"__event_rpcgss_get_mic", i1 false, i1 false}
!227 = !{ptr @event_rpcgss_verify_mic, !9, !"event_rpcgss_verify_mic", i1 false, i1 false}
!228 = !{ptr @__event_rpcgss_verify_mic, !9, !"__event_rpcgss_verify_mic", i1 false, i1 false}
!229 = !{ptr @event_rpcgss_wrap, !13, !"event_rpcgss_wrap", i1 false, i1 false}
!230 = !{ptr @__event_rpcgss_wrap, !13, !"__event_rpcgss_wrap", i1 false, i1 false}
!231 = !{ptr @event_rpcgss_unwrap, !17, !"event_rpcgss_unwrap", i1 false, i1 false}
!232 = !{ptr @__event_rpcgss_unwrap, !17, !"__event_rpcgss_unwrap", i1 false, i1 false}
!233 = !{ptr @event_class_rpcgss_ctx_class, !234, !"event_class_rpcgss_ctx_class", i1 false, i1 false}
!234 = !{!"../include/trace/events/rpcgss.h", i32 141, i32 1}
!235 = !{ptr @event_rpcgss_ctx_init, !21, !"event_rpcgss_ctx_init", i1 false, i1 false}
!236 = !{ptr @__event_rpcgss_ctx_init, !21, !"__event_rpcgss_ctx_init", i1 false, i1 false}
!237 = !{ptr @event_rpcgss_ctx_destroy, !25, !"event_rpcgss_ctx_destroy", i1 false, i1 false}
!238 = !{ptr @__event_rpcgss_ctx_destroy, !25, !"__event_rpcgss_ctx_destroy", i1 false, i1 false}
!239 = !{ptr @event_class_rpcgss_svc_gssapi_class, !240, !"event_class_rpcgss_svc_gssapi_class", i1 false, i1 false}
!240 = !{!"../include/trace/events/rpcgss.h", i32 175, i32 1}
!241 = !{ptr @event_rpcgss_svc_unwrap, !29, !"event_rpcgss_svc_unwrap", i1 false, i1 false}
!242 = !{ptr @__event_rpcgss_svc_unwrap, !29, !"__event_rpcgss_svc_unwrap", i1 false, i1 false}
!243 = !{ptr @event_rpcgss_svc_mic, !33, !"event_rpcgss_svc_mic", i1 false, i1 false}
!244 = !{ptr @__event_rpcgss_svc_mic, !33, !"__event_rpcgss_svc_mic", i1 false, i1 false}
!245 = !{ptr @event_class_rpcgss_svc_unwrap_failed, !37, !"event_class_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!246 = !{ptr @event_rpcgss_svc_unwrap_failed, !37, !"event_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!247 = !{ptr @__event_rpcgss_svc_unwrap_failed, !37, !"__event_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!248 = !{ptr @event_class_rpcgss_svc_seqno_bad, !41, !"event_class_rpcgss_svc_seqno_bad", i1 false, i1 false}
!249 = !{ptr @event_rpcgss_svc_seqno_bad, !41, !"event_rpcgss_svc_seqno_bad", i1 false, i1 false}
!250 = !{ptr @__event_rpcgss_svc_seqno_bad, !41, !"__event_rpcgss_svc_seqno_bad", i1 false, i1 false}
!251 = !{ptr @event_class_rpcgss_svc_accept_upcall, !45, !"event_class_rpcgss_svc_accept_upcall", i1 false, i1 false}
!252 = !{ptr @event_rpcgss_svc_accept_upcall, !45, !"event_rpcgss_svc_accept_upcall", i1 false, i1 false}
!253 = !{ptr @__event_rpcgss_svc_accept_upcall, !45, !"__event_rpcgss_svc_accept_upcall", i1 false, i1 false}
!254 = !{ptr @event_class_rpcgss_svc_authenticate, !49, !"event_class_rpcgss_svc_authenticate", i1 false, i1 false}
!255 = !{ptr @event_rpcgss_svc_authenticate, !49, !"event_rpcgss_svc_authenticate", i1 false, i1 false}
!256 = !{ptr @__event_rpcgss_svc_authenticate, !49, !"__event_rpcgss_svc_authenticate", i1 false, i1 false}
!257 = !{ptr @event_class_rpcgss_unwrap_failed, !53, !"event_class_rpcgss_unwrap_failed", i1 false, i1 false}
!258 = !{ptr @event_rpcgss_unwrap_failed, !53, !"event_rpcgss_unwrap_failed", i1 false, i1 false}
!259 = !{ptr @__event_rpcgss_unwrap_failed, !53, !"__event_rpcgss_unwrap_failed", i1 false, i1 false}
!260 = !{ptr @event_class_rpcgss_bad_seqno, !57, !"event_class_rpcgss_bad_seqno", i1 false, i1 false}
!261 = !{ptr @event_rpcgss_bad_seqno, !57, !"event_rpcgss_bad_seqno", i1 false, i1 false}
!262 = !{ptr @__event_rpcgss_bad_seqno, !57, !"__event_rpcgss_bad_seqno", i1 false, i1 false}
!263 = !{ptr @event_class_rpcgss_seqno, !61, !"event_class_rpcgss_seqno", i1 false, i1 false}
!264 = !{ptr @event_rpcgss_seqno, !61, !"event_rpcgss_seqno", i1 false, i1 false}
!265 = !{ptr @__event_rpcgss_seqno, !61, !"__event_rpcgss_seqno", i1 false, i1 false}
!266 = !{ptr @event_class_rpcgss_need_reencode, !65, !"event_class_rpcgss_need_reencode", i1 false, i1 false}
!267 = !{ptr @event_rpcgss_need_reencode, !65, !"event_rpcgss_need_reencode", i1 false, i1 false}
!268 = !{ptr @__event_rpcgss_need_reencode, !65, !"__event_rpcgss_need_reencode", i1 false, i1 false}
!269 = !{ptr @event_class_rpcgss_update_slack, !69, !"event_class_rpcgss_update_slack", i1 false, i1 false}
!270 = !{ptr @event_rpcgss_update_slack, !69, !"event_rpcgss_update_slack", i1 false, i1 false}
!271 = !{ptr @__event_rpcgss_update_slack, !69, !"__event_rpcgss_update_slack", i1 false, i1 false}
!272 = !{ptr @event_class_rpcgss_svc_seqno_class, !273, !"event_class_rpcgss_svc_seqno_class", i1 false, i1 false}
!273 = !{!"../include/trace/events/rpcgss.h", i32 467, i32 1}
!274 = !{ptr @event_rpcgss_svc_seqno_large, !73, !"event_rpcgss_svc_seqno_large", i1 false, i1 false}
!275 = !{ptr @__event_rpcgss_svc_seqno_large, !73, !"__event_rpcgss_svc_seqno_large", i1 false, i1 false}
!276 = !{ptr @event_rpcgss_svc_seqno_seen, !77, !"event_rpcgss_svc_seqno_seen", i1 false, i1 false}
!277 = !{ptr @__event_rpcgss_svc_seqno_seen, !77, !"__event_rpcgss_svc_seqno_seen", i1 false, i1 false}
!278 = !{ptr @event_class_rpcgss_svc_seqno_low, !81, !"event_class_rpcgss_svc_seqno_low", i1 false, i1 false}
!279 = !{ptr @event_rpcgss_svc_seqno_low, !81, !"event_rpcgss_svc_seqno_low", i1 false, i1 false}
!280 = !{ptr @__event_rpcgss_svc_seqno_low, !81, !"__event_rpcgss_svc_seqno_low", i1 false, i1 false}
!281 = !{ptr @event_class_rpcgss_upcall_msg, !85, !"event_class_rpcgss_upcall_msg", i1 false, i1 false}
!282 = !{ptr @event_rpcgss_upcall_msg, !85, !"event_rpcgss_upcall_msg", i1 false, i1 false}
!283 = !{ptr @__event_rpcgss_upcall_msg, !85, !"__event_rpcgss_upcall_msg", i1 false, i1 false}
!284 = !{ptr @event_class_rpcgss_upcall_result, !89, !"event_class_rpcgss_upcall_result", i1 false, i1 false}
!285 = !{ptr @event_rpcgss_upcall_result, !89, !"event_rpcgss_upcall_result", i1 false, i1 false}
!286 = !{ptr @__event_rpcgss_upcall_result, !89, !"__event_rpcgss_upcall_result", i1 false, i1 false}
!287 = !{ptr @event_class_rpcgss_context, !93, !"event_class_rpcgss_context", i1 false, i1 false}
!288 = !{ptr @event_rpcgss_context, !93, !"event_rpcgss_context", i1 false, i1 false}
!289 = !{ptr @__event_rpcgss_context, !93, !"__event_rpcgss_context", i1 false, i1 false}
!290 = !{ptr @event_class_rpcgss_createauth, !97, !"event_class_rpcgss_createauth", i1 false, i1 false}
!291 = !{ptr @event_rpcgss_createauth, !97, !"event_rpcgss_createauth", i1 false, i1 false}
!292 = !{ptr @__event_rpcgss_createauth, !97, !"__event_rpcgss_createauth", i1 false, i1 false}
!293 = !{ptr @event_class_rpcgss_oid_to_mech, !101, !"event_class_rpcgss_oid_to_mech", i1 false, i1 false}
!294 = !{ptr @event_rpcgss_oid_to_mech, !101, !"event_rpcgss_oid_to_mech", i1 false, i1 false}
!295 = !{ptr @__event_rpcgss_oid_to_mech, !101, !"__event_rpcgss_oid_to_mech", i1 false, i1 false}
!296 = !{ptr @__bpf_trace_tp_map_rpcgss_import_ctx, !1, !"__bpf_trace_tp_map_rpcgss_import_ctx", i1 false, i1 false}
!297 = !{ptr @__bpf_trace_tp_map_rpcgss_get_mic, !5, !"__bpf_trace_tp_map_rpcgss_get_mic", i1 false, i1 false}
!298 = !{ptr @__bpf_trace_tp_map_rpcgss_verify_mic, !9, !"__bpf_trace_tp_map_rpcgss_verify_mic", i1 false, i1 false}
!299 = !{ptr @__bpf_trace_tp_map_rpcgss_wrap, !13, !"__bpf_trace_tp_map_rpcgss_wrap", i1 false, i1 false}
!300 = !{ptr @__bpf_trace_tp_map_rpcgss_unwrap, !17, !"__bpf_trace_tp_map_rpcgss_unwrap", i1 false, i1 false}
!301 = !{ptr @__bpf_trace_tp_map_rpcgss_ctx_init, !21, !"__bpf_trace_tp_map_rpcgss_ctx_init", i1 false, i1 false}
!302 = !{ptr @__bpf_trace_tp_map_rpcgss_ctx_destroy, !25, !"__bpf_trace_tp_map_rpcgss_ctx_destroy", i1 false, i1 false}
!303 = !{ptr @__bpf_trace_tp_map_rpcgss_svc_unwrap, !29, !"__bpf_trace_tp_map_rpcgss_svc_unwrap", i1 false, i1 false}
!304 = !{ptr @__bpf_trace_tp_map_rpcgss_svc_mic, !33, !"__bpf_trace_tp_map_rpcgss_svc_mic", i1 false, i1 false}
!305 = !{ptr @__bpf_trace_tp_map_rpcgss_svc_unwrap_failed, !37, !"__bpf_trace_tp_map_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!306 = !{ptr @__bpf_trace_tp_map_rpcgss_svc_seqno_bad, !41, !"__bpf_trace_tp_map_rpcgss_svc_seqno_bad", i1 false, i1 false}
!307 = !{ptr @__bpf_trace_tp_map_rpcgss_svc_accept_upcall, !45, !"__bpf_trace_tp_map_rpcgss_svc_accept_upcall", i1 false, i1 false}
!308 = !{ptr @__bpf_trace_tp_map_rpcgss_svc_authenticate, !49, !"__bpf_trace_tp_map_rpcgss_svc_authenticate", i1 false, i1 false}
!309 = !{ptr @__bpf_trace_tp_map_rpcgss_unwrap_failed, !53, !"__bpf_trace_tp_map_rpcgss_unwrap_failed", i1 false, i1 false}
!310 = !{ptr @__bpf_trace_tp_map_rpcgss_bad_seqno, !57, !"__bpf_trace_tp_map_rpcgss_bad_seqno", i1 false, i1 false}
!311 = !{ptr @__bpf_trace_tp_map_rpcgss_seqno, !61, !"__bpf_trace_tp_map_rpcgss_seqno", i1 false, i1 false}
!312 = !{ptr @__bpf_trace_tp_map_rpcgss_need_reencode, !65, !"__bpf_trace_tp_map_rpcgss_need_reencode", i1 false, i1 false}
!313 = !{ptr @__bpf_trace_tp_map_rpcgss_update_slack, !69, !"__bpf_trace_tp_map_rpcgss_update_slack", i1 false, i1 false}
!314 = !{ptr @__bpf_trace_tp_map_rpcgss_svc_seqno_large, !73, !"__bpf_trace_tp_map_rpcgss_svc_seqno_large", i1 false, i1 false}
!315 = !{ptr @__bpf_trace_tp_map_rpcgss_svc_seqno_seen, !77, !"__bpf_trace_tp_map_rpcgss_svc_seqno_seen", i1 false, i1 false}
!316 = !{ptr @__bpf_trace_tp_map_rpcgss_svc_seqno_low, !81, !"__bpf_trace_tp_map_rpcgss_svc_seqno_low", i1 false, i1 false}
!317 = !{ptr @__bpf_trace_tp_map_rpcgss_upcall_msg, !85, !"__bpf_trace_tp_map_rpcgss_upcall_msg", i1 false, i1 false}
!318 = !{ptr @__bpf_trace_tp_map_rpcgss_upcall_result, !89, !"__bpf_trace_tp_map_rpcgss_upcall_result", i1 false, i1 false}
!319 = !{ptr @__bpf_trace_tp_map_rpcgss_context, !93, !"__bpf_trace_tp_map_rpcgss_context", i1 false, i1 false}
!320 = !{ptr @__bpf_trace_tp_map_rpcgss_createauth, !97, !"__bpf_trace_tp_map_rpcgss_createauth", i1 false, i1 false}
!321 = !{ptr @__bpf_trace_tp_map_rpcgss_oid_to_mech, !101, !"__bpf_trace_tp_map_rpcgss_oid_to_mech", i1 false, i1 false}
!322 = !{ptr @__tpstrtab_rpcgss_import_ctx, !1, !"__tpstrtab_rpcgss_import_ctx", i1 false, i1 false}
!323 = !{ptr @__tpstrtab_rpcgss_get_mic, !5, !"__tpstrtab_rpcgss_get_mic", i1 false, i1 false}
!324 = !{ptr @__tpstrtab_rpcgss_verify_mic, !9, !"__tpstrtab_rpcgss_verify_mic", i1 false, i1 false}
!325 = !{ptr @__tpstrtab_rpcgss_wrap, !13, !"__tpstrtab_rpcgss_wrap", i1 false, i1 false}
!326 = !{ptr @__tpstrtab_rpcgss_unwrap, !17, !"__tpstrtab_rpcgss_unwrap", i1 false, i1 false}
!327 = !{ptr @__tpstrtab_rpcgss_ctx_init, !21, !"__tpstrtab_rpcgss_ctx_init", i1 false, i1 false}
!328 = !{ptr @__tpstrtab_rpcgss_ctx_destroy, !25, !"__tpstrtab_rpcgss_ctx_destroy", i1 false, i1 false}
!329 = !{ptr @__tpstrtab_rpcgss_svc_unwrap, !29, !"__tpstrtab_rpcgss_svc_unwrap", i1 false, i1 false}
!330 = !{ptr @__tpstrtab_rpcgss_svc_mic, !33, !"__tpstrtab_rpcgss_svc_mic", i1 false, i1 false}
!331 = !{ptr @__tpstrtab_rpcgss_svc_unwrap_failed, !37, !"__tpstrtab_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!332 = !{ptr @__tpstrtab_rpcgss_svc_seqno_bad, !41, !"__tpstrtab_rpcgss_svc_seqno_bad", i1 false, i1 false}
!333 = !{ptr @__tpstrtab_rpcgss_svc_accept_upcall, !45, !"__tpstrtab_rpcgss_svc_accept_upcall", i1 false, i1 false}
!334 = !{ptr @__tpstrtab_rpcgss_svc_authenticate, !49, !"__tpstrtab_rpcgss_svc_authenticate", i1 false, i1 false}
!335 = !{ptr @__tpstrtab_rpcgss_unwrap_failed, !53, !"__tpstrtab_rpcgss_unwrap_failed", i1 false, i1 false}
!336 = !{ptr @__tpstrtab_rpcgss_bad_seqno, !57, !"__tpstrtab_rpcgss_bad_seqno", i1 false, i1 false}
!337 = !{ptr @__tpstrtab_rpcgss_seqno, !61, !"__tpstrtab_rpcgss_seqno", i1 false, i1 false}
!338 = !{ptr @__tpstrtab_rpcgss_need_reencode, !65, !"__tpstrtab_rpcgss_need_reencode", i1 false, i1 false}
!339 = !{ptr @__tpstrtab_rpcgss_update_slack, !69, !"__tpstrtab_rpcgss_update_slack", i1 false, i1 false}
!340 = !{ptr @__tpstrtab_rpcgss_svc_seqno_large, !73, !"__tpstrtab_rpcgss_svc_seqno_large", i1 false, i1 false}
!341 = !{ptr @__tpstrtab_rpcgss_svc_seqno_seen, !77, !"__tpstrtab_rpcgss_svc_seqno_seen", i1 false, i1 false}
!342 = !{ptr @__tpstrtab_rpcgss_svc_seqno_low, !81, !"__tpstrtab_rpcgss_svc_seqno_low", i1 false, i1 false}
!343 = !{ptr @__tpstrtab_rpcgss_upcall_msg, !85, !"__tpstrtab_rpcgss_upcall_msg", i1 false, i1 false}
!344 = !{ptr @__tpstrtab_rpcgss_upcall_result, !89, !"__tpstrtab_rpcgss_upcall_result", i1 false, i1 false}
!345 = !{ptr @__tpstrtab_rpcgss_context, !93, !"__tpstrtab_rpcgss_context", i1 false, i1 false}
!346 = !{ptr @__tpstrtab_rpcgss_createauth, !97, !"__tpstrtab_rpcgss_createauth", i1 false, i1 false}
!347 = !{ptr @__tpstrtab_rpcgss_oid_to_mech, !101, !"__tpstrtab_rpcgss_oid_to_mech", i1 false, i1 false}
!348 = !{ptr @str__rpcgss__trace_system_name, !349, !"str__rpcgss__trace_system_name", i1 false, i1 false}
!349 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!350 = !{ptr @.str.29, !221, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.30, !221, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.31, !221, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.32, !221, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.33, !221, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @trace_event_fields_rpcgss_gssapi_event, !221, !"trace_event_fields_rpcgss_gssapi_event", i1 false, i1 false}
!356 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @trace_event_fields_rpcgss_import_ctx, !1, !"trace_event_fields_rpcgss_import_ctx", i1 false, i1 false}
!359 = !{ptr @trace_event_type_funcs_rpcgss_import_ctx, !1, !"trace_event_type_funcs_rpcgss_import_ctx", i1 false, i1 false}
!360 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @print_fmt_rpcgss_import_ctx, !1, !"print_fmt_rpcgss_import_ctx", i1 false, i1 false}
!362 = !{ptr @trace_event_type_funcs_rpcgss_gssapi_event, !221, !"trace_event_type_funcs_rpcgss_gssapi_event", i1 false, i1 false}
!363 = !{ptr @.str.37, !221, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @.str.38, !221, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @trace_raw_output_rpcgss_gssapi_event.__flags, !221, !"__flags", i1 false, i1 false}
!366 = !{ptr @.str.39, !221, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @print_fmt_rpcgss_gssapi_event, !221, !"print_fmt_rpcgss_gssapi_event", i1 false, i1 false}
!368 = !{ptr @.str.40, !234, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.41, !234, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.42, !234, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.43, !234, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.44, !234, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.45, !234, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.46, !234, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @trace_event_fields_rpcgss_ctx_class, !234, !"trace_event_fields_rpcgss_ctx_class", i1 false, i1 false}
!376 = !{ptr @trace_event_type_funcs_rpcgss_ctx_class, !234, !"trace_event_type_funcs_rpcgss_ctx_class", i1 false, i1 false}
!377 = !{ptr @.str.47, !234, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.48, !234, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.49, !234, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.50, !234, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @trace_raw_output_rpcgss_ctx_class.symbols, !234, !"symbols", i1 false, i1 false}
!382 = !{ptr @print_fmt_rpcgss_ctx_class, !234, !"print_fmt_rpcgss_ctx_class", i1 false, i1 false}
!383 = !{ptr @.str.51, !240, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.52, !240, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @trace_event_fields_rpcgss_svc_gssapi_class, !240, !"trace_event_fields_rpcgss_svc_gssapi_class", i1 false, i1 false}
!386 = !{ptr @trace_event_type_funcs_rpcgss_svc_gssapi_class, !240, !"trace_event_type_funcs_rpcgss_svc_gssapi_class", i1 false, i1 false}
!387 = !{ptr @.str.53, !240, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @trace_raw_output_rpcgss_svc_gssapi_class.__flags, !240, !"__flags", i1 false, i1 false}
!389 = !{ptr @print_fmt_rpcgss_svc_gssapi_class, !240, !"print_fmt_rpcgss_svc_gssapi_class", i1 false, i1 false}
!390 = !{ptr @trace_event_fields_rpcgss_svc_unwrap_failed, !37, !"trace_event_fields_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!391 = !{ptr @trace_event_type_funcs_rpcgss_svc_unwrap_failed, !37, !"trace_event_type_funcs_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!392 = !{ptr @.str.54, !37, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @print_fmt_rpcgss_svc_unwrap_failed, !37, !"print_fmt_rpcgss_svc_unwrap_failed", i1 false, i1 false}
!394 = !{ptr @.str.55, !41, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @.str.56, !41, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @trace_event_fields_rpcgss_svc_seqno_bad, !41, !"trace_event_fields_rpcgss_svc_seqno_bad", i1 false, i1 false}
!397 = !{ptr @trace_event_type_funcs_rpcgss_svc_seqno_bad, !41, !"trace_event_type_funcs_rpcgss_svc_seqno_bad", i1 false, i1 false}
!398 = !{ptr @.str.57, !41, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @print_fmt_rpcgss_svc_seqno_bad, !41, !"print_fmt_rpcgss_svc_seqno_bad", i1 false, i1 false}
!400 = !{ptr @.str.58, !45, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.59, !45, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @trace_event_fields_rpcgss_svc_accept_upcall, !45, !"trace_event_fields_rpcgss_svc_accept_upcall", i1 false, i1 false}
!403 = !{ptr @trace_event_type_funcs_rpcgss_svc_accept_upcall, !45, !"trace_event_type_funcs_rpcgss_svc_accept_upcall", i1 false, i1 false}
!404 = !{ptr @.str.60, !45, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @trace_raw_output_rpcgss_svc_accept_upcall.__flags, !45, !"__flags", i1 false, i1 false}
!406 = !{ptr @print_fmt_rpcgss_svc_accept_upcall, !45, !"print_fmt_rpcgss_svc_accept_upcall", i1 false, i1 false}
!407 = !{ptr @.str.61, !49, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @trace_event_fields_rpcgss_svc_authenticate, !49, !"trace_event_fields_rpcgss_svc_authenticate", i1 false, i1 false}
!409 = !{ptr @trace_event_type_funcs_rpcgss_svc_authenticate, !49, !"trace_event_type_funcs_rpcgss_svc_authenticate", i1 false, i1 false}
!410 = !{ptr @.str.62, !49, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @print_fmt_rpcgss_svc_authenticate, !49, !"print_fmt_rpcgss_svc_authenticate", i1 false, i1 false}
!412 = !{ptr @trace_event_fields_rpcgss_unwrap_failed, !53, !"trace_event_fields_rpcgss_unwrap_failed", i1 false, i1 false}
!413 = !{ptr @trace_event_type_funcs_rpcgss_unwrap_failed, !53, !"trace_event_type_funcs_rpcgss_unwrap_failed", i1 false, i1 false}
!414 = !{ptr @.str.63, !53, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @print_fmt_rpcgss_unwrap_failed, !53, !"print_fmt_rpcgss_unwrap_failed", i1 false, i1 false}
!416 = !{ptr @trace_event_fields_rpcgss_bad_seqno, !57, !"trace_event_fields_rpcgss_bad_seqno", i1 false, i1 false}
!417 = !{ptr @trace_event_type_funcs_rpcgss_bad_seqno, !57, !"trace_event_type_funcs_rpcgss_bad_seqno", i1 false, i1 false}
!418 = !{ptr @.str.64, !57, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @print_fmt_rpcgss_bad_seqno, !57, !"print_fmt_rpcgss_bad_seqno", i1 false, i1 false}
!420 = !{ptr @trace_event_fields_rpcgss_seqno, !61, !"trace_event_fields_rpcgss_seqno", i1 false, i1 false}
!421 = !{ptr @trace_event_type_funcs_rpcgss_seqno, !61, !"trace_event_type_funcs_rpcgss_seqno", i1 false, i1 false}
!422 = !{ptr @.str.65, !61, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @print_fmt_rpcgss_seqno, !61, !"print_fmt_rpcgss_seqno", i1 false, i1 false}
!424 = !{ptr @.str.66, !65, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.67, !65, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @.str.68, !65, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @trace_event_fields_rpcgss_need_reencode, !65, !"trace_event_fields_rpcgss_need_reencode", i1 false, i1 false}
!428 = !{ptr @trace_event_type_funcs_rpcgss_need_reencode, !65, !"trace_event_type_funcs_rpcgss_need_reencode", i1 false, i1 false}
!429 = !{ptr @.str.69, !65, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.70, !65, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @.str.71, !65, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @print_fmt_rpcgss_need_reencode, !65, !"print_fmt_rpcgss_need_reencode", i1 false, i1 false}
!433 = !{ptr @.str.72, !69, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @.str.73, !69, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @.str.74, !69, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @.str.75, !69, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @trace_event_fields_rpcgss_update_slack, !69, !"trace_event_fields_rpcgss_update_slack", i1 false, i1 false}
!438 = !{ptr @trace_event_type_funcs_rpcgss_update_slack, !69, !"trace_event_type_funcs_rpcgss_update_slack", i1 false, i1 false}
!439 = !{ptr @.str.76, !69, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @print_fmt_rpcgss_update_slack, !69, !"print_fmt_rpcgss_update_slack", i1 false, i1 false}
!441 = !{ptr @trace_event_fields_rpcgss_svc_seqno_class, !273, !"trace_event_fields_rpcgss_svc_seqno_class", i1 false, i1 false}
!442 = !{ptr @trace_event_type_funcs_rpcgss_svc_seqno_class, !273, !"trace_event_type_funcs_rpcgss_svc_seqno_class", i1 false, i1 false}
!443 = !{ptr @.str.77, !273, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @print_fmt_rpcgss_svc_seqno_class, !273, !"print_fmt_rpcgss_svc_seqno_class", i1 false, i1 false}
!445 = !{ptr @.str.78, !81, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.79, !81, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @trace_event_fields_rpcgss_svc_seqno_low, !81, !"trace_event_fields_rpcgss_svc_seqno_low", i1 false, i1 false}
!448 = !{ptr @trace_event_type_funcs_rpcgss_svc_seqno_low, !81, !"trace_event_type_funcs_rpcgss_svc_seqno_low", i1 false, i1 false}
!449 = !{ptr @.str.80, !81, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @print_fmt_rpcgss_svc_seqno_low, !81, !"print_fmt_rpcgss_svc_seqno_low", i1 false, i1 false}
!451 = !{ptr @.str.81, !85, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @trace_event_fields_rpcgss_upcall_msg, !85, !"trace_event_fields_rpcgss_upcall_msg", i1 false, i1 false}
!453 = !{ptr @trace_event_type_funcs_rpcgss_upcall_msg, !85, !"trace_event_type_funcs_rpcgss_upcall_msg", i1 false, i1 false}
!454 = !{ptr @.str.82, !85, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @print_fmt_rpcgss_upcall_msg, !85, !"print_fmt_rpcgss_upcall_msg", i1 false, i1 false}
!456 = !{ptr @.str.83, !89, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @.str.84, !89, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @trace_event_fields_rpcgss_upcall_result, !89, !"trace_event_fields_rpcgss_upcall_result", i1 false, i1 false}
!459 = !{ptr @trace_event_type_funcs_rpcgss_upcall_result, !89, !"trace_event_type_funcs_rpcgss_upcall_result", i1 false, i1 false}
!460 = !{ptr @.str.85, !89, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @print_fmt_rpcgss_upcall_result, !89, !"print_fmt_rpcgss_upcall_result", i1 false, i1 false}
!462 = !{ptr @.str.86, !93, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @.str.87, !93, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.88, !93, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.89, !93, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.90, !93, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @.str.91, !93, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @trace_event_fields_rpcgss_context, !93, !"trace_event_fields_rpcgss_context", i1 false, i1 false}
!469 = !{ptr @trace_event_type_funcs_rpcgss_context, !93, !"trace_event_type_funcs_rpcgss_context", i1 false, i1 false}
!470 = !{ptr @.str.92, !93, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @print_fmt_rpcgss_context, !93, !"print_fmt_rpcgss_context", i1 false, i1 false}
!472 = !{ptr @.str.93, !97, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @.str.94, !97, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @trace_event_fields_rpcgss_createauth, !97, !"trace_event_fields_rpcgss_createauth", i1 false, i1 false}
!475 = !{ptr @trace_event_type_funcs_rpcgss_createauth, !97, !"trace_event_type_funcs_rpcgss_createauth", i1 false, i1 false}
!476 = !{ptr @.str.95, !97, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @trace_raw_output_rpcgss_createauth.symbols, !97, !"symbols", i1 false, i1 false}
!478 = !{ptr @print_fmt_rpcgss_createauth, !97, !"print_fmt_rpcgss_createauth", i1 false, i1 false}
!479 = !{ptr @.str.96, !101, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @trace_event_fields_rpcgss_oid_to_mech, !101, !"trace_event_fields_rpcgss_oid_to_mech", i1 false, i1 false}
!481 = !{ptr @trace_event_type_funcs_rpcgss_oid_to_mech, !101, !"trace_event_type_funcs_rpcgss_oid_to_mech", i1 false, i1 false}
!482 = !{ptr @.str.97, !101, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @print_fmt_rpcgss_oid_to_mech, !101, !"print_fmt_rpcgss_oid_to_mech", i1 false, i1 false}
!484 = !{!"sp"}
!485 = !{i32 1, !"wchar_size", i32 2}
!486 = !{i32 1, !"min_enum_size", i32 4}
!487 = !{i32 8, !"branch-target-enforcement", i32 0}
!488 = !{i32 8, !"sign-return-address", i32 0}
!489 = !{i32 8, !"sign-return-address-all", i32 0}
!490 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!491 = !{i32 7, !"uwtable", i32 1}
!492 = !{i32 7, !"frame-pointer", i32 2}
!493 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!494 = !{!"branch_weights", i32 2000, i32 1}
!495 = !{!"branch_weights", i32 1, i32 2000}
!496 = !{!"auto-init"}
!497 = !{i8 0, i8 2}
