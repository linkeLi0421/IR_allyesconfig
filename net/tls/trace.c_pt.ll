; ModuleID = '/llk/IR_all_yes/net/tls/trace.c_pt.bc'
source_filename = "../net/tls/trace.c"
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
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%union.anon.104 = type { %struct.bpf_raw_event_map }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_tls_device_offload_set = type { %struct.trace_entry, ptr, i64, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_tls_device_decrypted = type { %struct.trace_entry, ptr, i64, i32, i32, i8, i8, [0 x i8] }
%struct.trace_event_raw_tls_device_rx_resync_send = type { %struct.trace_entry, ptr, i64, i32, i32, [0 x i8] }
%struct.trace_event_raw_tls_device_rx_resync_nh_schedule = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_event_raw_tls_device_rx_resync_nh_delay = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_tls_device_tx_resync_req = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_tls_device_tx_resync_send = type { %struct.trace_entry, ptr, i64, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_tls_device_offload_set = internal constant [23 x i8] c"tls_device_offload_set\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tls_device_offload_set = dso_local global %struct.static_call_key { ptr @__traceiter_tls_device_offload_set }, align 4
@__tracepoint_tls_device_offload_set = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tls_device_offload_set, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tls_device_offload_set, ptr null, ptr @__traceiter_tls_device_offload_set, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tls_device_offload_set = internal constant ptr @__tracepoint_tls_device_offload_set, section "__tracepoints_ptrs", align 4
@__tpstrtab_tls_device_decrypted = internal constant [21 x i8] c"tls_device_decrypted\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tls_device_decrypted = dso_local global %struct.static_call_key { ptr @__traceiter_tls_device_decrypted }, align 4
@__tracepoint_tls_device_decrypted = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tls_device_decrypted, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tls_device_decrypted, ptr null, ptr @__traceiter_tls_device_decrypted, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tls_device_decrypted = internal constant ptr @__tracepoint_tls_device_decrypted, section "__tracepoints_ptrs", align 4
@__tpstrtab_tls_device_rx_resync_send = internal constant [26 x i8] c"tls_device_rx_resync_send\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tls_device_rx_resync_send = dso_local global %struct.static_call_key { ptr @__traceiter_tls_device_rx_resync_send }, align 4
@__tracepoint_tls_device_rx_resync_send = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tls_device_rx_resync_send, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tls_device_rx_resync_send, ptr null, ptr @__traceiter_tls_device_rx_resync_send, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tls_device_rx_resync_send = internal constant ptr @__tracepoint_tls_device_rx_resync_send, section "__tracepoints_ptrs", align 4
@__tpstrtab_tls_device_rx_resync_nh_schedule = internal constant [33 x i8] c"tls_device_rx_resync_nh_schedule\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tls_device_rx_resync_nh_schedule = dso_local global %struct.static_call_key { ptr @__traceiter_tls_device_rx_resync_nh_schedule }, align 4
@__tracepoint_tls_device_rx_resync_nh_schedule = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tls_device_rx_resync_nh_schedule, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tls_device_rx_resync_nh_schedule, ptr null, ptr @__traceiter_tls_device_rx_resync_nh_schedule, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tls_device_rx_resync_nh_schedule = internal constant ptr @__tracepoint_tls_device_rx_resync_nh_schedule, section "__tracepoints_ptrs", align 4
@__tpstrtab_tls_device_rx_resync_nh_delay = internal constant [30 x i8] c"tls_device_rx_resync_nh_delay\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tls_device_rx_resync_nh_delay = dso_local global %struct.static_call_key { ptr @__traceiter_tls_device_rx_resync_nh_delay }, align 4
@__tracepoint_tls_device_rx_resync_nh_delay = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tls_device_rx_resync_nh_delay, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tls_device_rx_resync_nh_delay, ptr null, ptr @__traceiter_tls_device_rx_resync_nh_delay, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tls_device_rx_resync_nh_delay = internal constant ptr @__tracepoint_tls_device_rx_resync_nh_delay, section "__tracepoints_ptrs", align 4
@__tpstrtab_tls_device_tx_resync_req = internal constant [25 x i8] c"tls_device_tx_resync_req\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tls_device_tx_resync_req = dso_local global %struct.static_call_key { ptr @__traceiter_tls_device_tx_resync_req }, align 4
@__tracepoint_tls_device_tx_resync_req = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tls_device_tx_resync_req, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tls_device_tx_resync_req, ptr null, ptr @__traceiter_tls_device_tx_resync_req, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tls_device_tx_resync_req = internal constant ptr @__tracepoint_tls_device_tx_resync_req, section "__tracepoints_ptrs", align 4
@__tpstrtab_tls_device_tx_resync_send = internal constant [26 x i8] c"tls_device_tx_resync_send\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tls_device_tx_resync_send = dso_local global %struct.static_call_key { ptr @__traceiter_tls_device_tx_resync_send }, align 4
@__tracepoint_tls_device_tx_resync_send = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tls_device_tx_resync_send, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tls_device_tx_resync_send, ptr null, ptr @__traceiter_tls_device_tx_resync_send, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tls_device_tx_resync_send = internal constant ptr @__tracepoint_tls_device_tx_resync_send, section "__tracepoints_ptrs", align 4
@str__tls__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tls\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_tls_device_offload_set = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.0 { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_tls_device_offload_set = internal global %struct.trace_event_class { ptr @str__tls__trace_system_name, ptr @trace_event_raw_event_tls_device_offload_set, ptr @perf_trace_tls_device_offload_set, ptr @trace_event_reg, ptr @trace_event_fields_tls_device_offload_set, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tls_device_offload_set, i64 24), ptr getelementptr (i8, ptr @event_class_tls_device_offload_set, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tls_device_offload_set = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tls_device_offload_set, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tls_device_offload_set = internal global { [107 x i8], [53 x i8] } { [107 x i8] c"\22sk=%p direction=%d tcp_seq=%u rec_no=%llu ret=%d\22, REC->sk, REC->dir, REC->tcp_seq, REC->rec_no, REC->ret\00", [53 x i8] zeroinitializer }, align 32
@event_tls_device_offload_set = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tls_device_offload_set, %union.anon.1 { ptr @__tracepoint_tls_device_offload_set }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tls_device_offload_set }, ptr @print_fmt_tls_device_offload_set, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tls_device_offload_set = internal global ptr @event_tls_device_offload_set, section "_ftrace_events", align 4
@trace_event_fields_tls_device_decrypted = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.0 { %struct.anon { ptr @.str.12, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.0 { %struct.anon { ptr @.str.13, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_tls_device_decrypted = internal global %struct.trace_event_class { ptr @str__tls__trace_system_name, ptr @trace_event_raw_event_tls_device_decrypted, ptr @perf_trace_tls_device_decrypted, ptr @trace_event_reg, ptr @trace_event_fields_tls_device_decrypted, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tls_device_decrypted, i64 24), ptr getelementptr (i8, ptr @event_class_tls_device_decrypted, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tls_device_decrypted = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tls_device_decrypted, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tls_device_decrypted = internal global { [146 x i8], [46 x i8] } { [146 x i8] c"\22sk=%p tcp_seq=%u rec_no=%llu len=%u encrypted=%d decrypted=%d\22, REC->sk, REC->tcp_seq, REC->rec_no, REC->rec_len, REC->encrypted, REC->decrypted\00", [46 x i8] zeroinitializer }, align 32
@event_tls_device_decrypted = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tls_device_decrypted, %union.anon.1 { ptr @__tracepoint_tls_device_decrypted }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tls_device_decrypted }, ptr @print_fmt_tls_device_decrypted, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tls_device_decrypted = internal global ptr @event_tls_device_decrypted, section "_ftrace_events", align 4
@trace_event_fields_tls_device_rx_resync_send = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.0 { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_tls_device_rx_resync_send = internal global %struct.trace_event_class { ptr @str__tls__trace_system_name, ptr @trace_event_raw_event_tls_device_rx_resync_send, ptr @perf_trace_tls_device_rx_resync_send, ptr @trace_event_reg, ptr @trace_event_fields_tls_device_rx_resync_send, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tls_device_rx_resync_send, i64 24), ptr getelementptr (i8, ptr @event_class_tls_device_rx_resync_send, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tls_device_rx_resync_send = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tls_device_rx_resync_send, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tls_device_rx_resync_send = internal global { [96 x i8], [32 x i8] } { [96 x i8] c"\22sk=%p tcp_seq=%u rec_no=%llu sync_type=%d\22, REC->sk, REC->tcp_seq, REC->rec_no, REC->sync_type\00", [32 x i8] zeroinitializer }, align 32
@event_tls_device_rx_resync_send = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tls_device_rx_resync_send, %union.anon.1 { ptr @__tracepoint_tls_device_rx_resync_send }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tls_device_rx_resync_send }, ptr @print_fmt_tls_device_rx_resync_send, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tls_device_rx_resync_send = internal global ptr @event_tls_device_rx_resync_send, section "_ftrace_events", align 4
@trace_event_fields_tls_device_rx_resync_nh_schedule = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_tls_device_rx_resync_nh_schedule = internal global %struct.trace_event_class { ptr @str__tls__trace_system_name, ptr @trace_event_raw_event_tls_device_rx_resync_nh_schedule, ptr @perf_trace_tls_device_rx_resync_nh_schedule, ptr @trace_event_reg, ptr @trace_event_fields_tls_device_rx_resync_nh_schedule, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tls_device_rx_resync_nh_schedule, i64 24), ptr getelementptr (i8, ptr @event_class_tls_device_rx_resync_nh_schedule, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tls_device_rx_resync_nh_schedule = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tls_device_rx_resync_nh_schedule, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tls_device_rx_resync_nh_schedule = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\22sk=%p\22, REC->sk\00", [47 x i8] zeroinitializer }, align 32
@event_tls_device_rx_resync_nh_schedule = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tls_device_rx_resync_nh_schedule, %union.anon.1 { ptr @__tracepoint_tls_device_rx_resync_nh_schedule }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tls_device_rx_resync_nh_schedule }, ptr @print_fmt_tls_device_rx_resync_nh_schedule, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tls_device_rx_resync_nh_schedule = internal global ptr @event_tls_device_rx_resync_nh_schedule, section "_ftrace_events", align 4
@trace_event_fields_tls_device_rx_resync_nh_delay = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_tls_device_rx_resync_nh_delay = internal global %struct.trace_event_class { ptr @str__tls__trace_system_name, ptr @trace_event_raw_event_tls_device_rx_resync_nh_delay, ptr @perf_trace_tls_device_rx_resync_nh_delay, ptr @trace_event_reg, ptr @trace_event_fields_tls_device_rx_resync_nh_delay, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tls_device_rx_resync_nh_delay, i64 24), ptr getelementptr (i8, ptr @event_class_tls_device_rx_resync_nh_delay, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tls_device_rx_resync_nh_delay = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tls_device_rx_resync_nh_delay, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tls_device_rx_resync_nh_delay = internal global { [71 x i8], [57 x i8] } { [71 x i8] c"\22sk=%p sock_data=%u rec_len=%u\22, REC->sk, REC->sock_data, REC->rec_len\00", [57 x i8] zeroinitializer }, align 32
@event_tls_device_rx_resync_nh_delay = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tls_device_rx_resync_nh_delay, %union.anon.1 { ptr @__tracepoint_tls_device_rx_resync_nh_delay }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tls_device_rx_resync_nh_delay }, ptr @print_fmt_tls_device_rx_resync_nh_delay, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tls_device_rx_resync_nh_delay = internal global ptr @event_tls_device_rx_resync_nh_delay, section "_ftrace_events", align 4
@trace_event_fields_tls_device_tx_resync_req = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_tls_device_tx_resync_req = internal global %struct.trace_event_class { ptr @str__tls__trace_system_name, ptr @trace_event_raw_event_tls_device_tx_resync_req, ptr @perf_trace_tls_device_tx_resync_req, ptr @trace_event_reg, ptr @trace_event_fields_tls_device_tx_resync_req, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tls_device_tx_resync_req, i64 24), ptr getelementptr (i8, ptr @event_class_tls_device_tx_resync_req, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tls_device_tx_resync_req = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tls_device_tx_resync_req, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tls_device_tx_resync_req = internal global { [75 x i8], [53 x i8] } { [75 x i8] c"\22sk=%p tcp_seq=%u exp_tcp_seq=%u\22, REC->sk, REC->tcp_seq, REC->exp_tcp_seq\00", [53 x i8] zeroinitializer }, align 32
@event_tls_device_tx_resync_req = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tls_device_tx_resync_req, %union.anon.1 { ptr @__tracepoint_tls_device_tx_resync_req }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tls_device_tx_resync_req }, ptr @print_fmt_tls_device_tx_resync_req, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tls_device_tx_resync_req = internal global ptr @event_tls_device_tx_resync_req, section "_ftrace_events", align 4
@trace_event_fields_tls_device_tx_resync_send = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_tls_device_tx_resync_send = internal global %struct.trace_event_class { ptr @str__tls__trace_system_name, ptr @trace_event_raw_event_tls_device_tx_resync_send, ptr @perf_trace_tls_device_tx_resync_send, ptr @trace_event_reg, ptr @trace_event_fields_tls_device_tx_resync_send, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tls_device_tx_resync_send, i64 24), ptr getelementptr (i8, ptr @event_class_tls_device_tx_resync_send, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tls_device_tx_resync_send = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tls_device_tx_resync_send, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tls_device_tx_resync_send = internal global { [67 x i8], [61 x i8] } { [67 x i8] c"\22sk=%p tcp_seq=%u rec_no=%llu\22, REC->sk, REC->tcp_seq, REC->rec_no\00", [61 x i8] zeroinitializer }, align 32
@event_tls_device_tx_resync_send = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tls_device_tx_resync_send, %union.anon.1 { ptr @__tracepoint_tls_device_tx_resync_send }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tls_device_tx_resync_send }, ptr @print_fmt_tls_device_tx_resync_send, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tls_device_tx_resync_send = internal global ptr @event_tls_device_tx_resync_send, section "_ftrace_events", align 4
@__bpf_trace_tp_map_tls_device_offload_set = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_tls_device_offload_set, ptr @__bpf_trace_tls_device_offload_set, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tls_device_decrypted = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_tls_device_decrypted, ptr @__bpf_trace_tls_device_decrypted, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tls_device_rx_resync_send = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_tls_device_rx_resync_send, ptr @__bpf_trace_tls_device_rx_resync_send, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tls_device_rx_resync_nh_schedule = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_tls_device_rx_resync_nh_schedule, ptr @__bpf_trace_tls_device_rx_resync_nh_schedule, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tls_device_rx_resync_nh_delay = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_tls_device_rx_resync_nh_delay, ptr @__bpf_trace_tls_device_rx_resync_nh_delay, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tls_device_tx_resync_req = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_tls_device_tx_resync_req, ptr @__bpf_trace_tls_device_tx_resync_req, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tls_device_tx_resync_send = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_tls_device_tx_resync_send, ptr @__bpf_trace_tls_device_tx_resync_send, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"struct sock *\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sk\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rec_no\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tcp_seq\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sk=%p direction=%d tcp_seq=%u rec_no=%llu ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rec_len\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"encrypted\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"decrypted\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"sk=%p tcp_seq=%u rec_no=%llu len=%u encrypted=%d decrypted=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sync_type\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sk=%p tcp_seq=%u rec_no=%llu sync_type=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sk=%p\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sock_data\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sk=%p sock_data=%u rec_len=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exp_tcp_seq\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sk=%p tcp_seq=%u exp_tcp_seq=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sk=%p tcp_seq=%u rec_no=%llu\0A\00", [34 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [19 x i8] c"../net/tls/trace.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [28 x i8] c"str__tls__trace_system_name\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 36, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [42 x i8] c"trace_event_fields_tls_device_offload_set\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_tls_device_offload_set\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [33 x i8] c"print_fmt_tls_device_offload_set\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [29 x i8] c"event_tls_device_offload_set\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [40 x i8] c"trace_event_fields_tls_device_decrypted\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_tls_device_decrypted\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"print_fmt_tls_device_decrypted\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"event_tls_device_decrypted\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [45 x i8] c"trace_event_fields_tls_device_rx_resync_send\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [49 x i8] c"trace_event_type_funcs_tls_device_rx_resync_send\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [36 x i8] c"print_fmt_tls_device_rx_resync_send\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [32 x i8] c"event_tls_device_rx_resync_send\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [52 x i8] c"trace_event_fields_tls_device_rx_resync_nh_schedule\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [56 x i8] c"trace_event_type_funcs_tls_device_rx_resync_nh_schedule\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [43 x i8] c"print_fmt_tls_device_rx_resync_nh_schedule\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [39 x i8] c"event_tls_device_rx_resync_nh_schedule\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [49 x i8] c"trace_event_fields_tls_device_rx_resync_nh_delay\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [53 x i8] c"trace_event_type_funcs_tls_device_rx_resync_nh_delay\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [40 x i8] c"print_fmt_tls_device_rx_resync_nh_delay\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [36 x i8] c"event_tls_device_rx_resync_nh_delay\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [44 x i8] c"trace_event_fields_tls_device_tx_resync_req\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_tls_device_tx_resync_req\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [35 x i8] c"print_fmt_tls_device_tx_resync_req\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"event_tls_device_tx_resync_req\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [45 x i8] c"trace_event_fields_tls_device_tx_resync_send\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [49 x i8] c"trace_event_type_funcs_tls_device_tx_resync_send\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [36 x i8] c"print_fmt_tls_device_tx_resync_send\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [32 x i8] c"event_tls_device_tx_resync_send\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 15, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 44, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 77, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 104, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 123, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 147, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [21 x i8] c"../net/tls/./trace.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 171, i32 1 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__bpf_trace_tp_map_tls_device_decrypted, ptr @__bpf_trace_tp_map_tls_device_offload_set, ptr @__bpf_trace_tp_map_tls_device_rx_resync_nh_delay, ptr @__bpf_trace_tp_map_tls_device_rx_resync_nh_schedule, ptr @__bpf_trace_tp_map_tls_device_rx_resync_send, ptr @__bpf_trace_tp_map_tls_device_tx_resync_req, ptr @__bpf_trace_tp_map_tls_device_tx_resync_send, ptr @__event_tls_device_decrypted, ptr @__event_tls_device_offload_set, ptr @__event_tls_device_rx_resync_nh_delay, ptr @__event_tls_device_rx_resync_nh_schedule, ptr @__event_tls_device_rx_resync_send, ptr @__event_tls_device_tx_resync_req, ptr @__event_tls_device_tx_resync_send, ptr @__tracepoint_ptr_tls_device_decrypted, ptr @__tracepoint_ptr_tls_device_offload_set, ptr @__tracepoint_ptr_tls_device_rx_resync_nh_delay, ptr @__tracepoint_ptr_tls_device_rx_resync_nh_schedule, ptr @__tracepoint_ptr_tls_device_rx_resync_send, ptr @__tracepoint_ptr_tls_device_tx_resync_req, ptr @__tracepoint_ptr_tls_device_tx_resync_send, ptr @__tracepoint_tls_device_decrypted, ptr @__tracepoint_tls_device_offload_set, ptr @__tracepoint_tls_device_rx_resync_nh_delay, ptr @__tracepoint_tls_device_rx_resync_nh_schedule, ptr @__tracepoint_tls_device_rx_resync_send, ptr @__tracepoint_tls_device_tx_resync_req, ptr @__tracepoint_tls_device_tx_resync_send, ptr @event_class_tls_device_decrypted, ptr @event_class_tls_device_offload_set, ptr @event_class_tls_device_rx_resync_nh_delay, ptr @event_class_tls_device_rx_resync_nh_schedule, ptr @event_class_tls_device_rx_resync_send, ptr @event_class_tls_device_tx_resync_req, ptr @event_class_tls_device_tx_resync_send, ptr @event_tls_device_decrypted, ptr @event_tls_device_offload_set, ptr @event_tls_device_rx_resync_nh_delay, ptr @event_tls_device_rx_resync_nh_schedule, ptr @event_tls_device_rx_resync_send, ptr @event_tls_device_tx_resync_req, ptr @event_tls_device_tx_resync_send, ptr @str__tls__trace_system_name, ptr @trace_event_fields_tls_device_offload_set, ptr @trace_event_type_funcs_tls_device_offload_set, ptr @print_fmt_tls_device_offload_set, ptr @trace_event_fields_tls_device_decrypted, ptr @trace_event_type_funcs_tls_device_decrypted, ptr @print_fmt_tls_device_decrypted, ptr @trace_event_fields_tls_device_rx_resync_send, ptr @trace_event_type_funcs_tls_device_rx_resync_send, ptr @print_fmt_tls_device_rx_resync_send, ptr @trace_event_fields_tls_device_rx_resync_nh_schedule, ptr @trace_event_type_funcs_tls_device_rx_resync_nh_schedule, ptr @print_fmt_tls_device_rx_resync_nh_schedule, ptr @trace_event_fields_tls_device_rx_resync_nh_delay, ptr @trace_event_type_funcs_tls_device_rx_resync_nh_delay, ptr @print_fmt_tls_device_rx_resync_nh_delay, ptr @trace_event_fields_tls_device_tx_resync_req, ptr @trace_event_type_funcs_tls_device_tx_resync_req, ptr @print_fmt_tls_device_tx_resync_req, ptr @trace_event_fields_tls_device_tx_resync_send, ptr @trace_event_type_funcs_tls_device_tx_resync_send, ptr @print_fmt_tls_device_tx_resync_send, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__tls__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tls_device_offload_set to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tls_device_offload_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tls_device_offload_set to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tls_device_offload_set to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tls_device_decrypted to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tls_device_decrypted to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tls_device_decrypted to i32), i32 146, i32 192, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tls_device_decrypted to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tls_device_rx_resync_send to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tls_device_rx_resync_send to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tls_device_rx_resync_send to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tls_device_rx_resync_send to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tls_device_rx_resync_nh_schedule to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tls_device_rx_resync_nh_schedule to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tls_device_rx_resync_nh_schedule to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tls_device_rx_resync_nh_schedule to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tls_device_rx_resync_nh_delay to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tls_device_rx_resync_nh_delay to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tls_device_rx_resync_nh_delay to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tls_device_rx_resync_nh_delay to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tls_device_tx_resync_req to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tls_device_tx_resync_req to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tls_device_tx_resync_req to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tls_device_tx_resync_req to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tls_device_tx_resync_send to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tls_device_tx_resync_send to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tls_device_tx_resync_send to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tls_device_tx_resync_send to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tls_device_offload_set(ptr nocapture readnone %__data, ptr noundef %sk, i32 noundef %dir, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tls_device_offload_set, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, i32 noundef %dir, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %ret) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tls_device_decrypted(ptr nocapture readnone %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %rec_len, i1 noundef zeroext %encrypted, i1 noundef zeroext %decrypted) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tls_device_decrypted, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body3.do.body3_crit_edge ], [ %0, %entry.do.body3_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %rec_len, i1 noundef zeroext %encrypted, i1 noundef zeroext %decrypted) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %do.body3.if.end_crit_edge, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body3.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tls_device_rx_resync_send(ptr nocapture readnone %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %sync_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tls_device_rx_resync_send, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %sync_type) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tls_device_rx_resync_nh_schedule(ptr nocapture readnone %__data, ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tls_device_rx_resync_nh_schedule, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %sk) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tls_device_rx_resync_nh_delay(ptr nocapture readnone %__data, ptr noundef %sk, i32 noundef %sock_data, i32 noundef %rec_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tls_device_rx_resync_nh_delay, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, i32 noundef %sock_data, i32 noundef %rec_len) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tls_device_tx_resync_req(ptr nocapture readnone %__data, ptr noundef %sk, i32 noundef %tcp_seq, i32 noundef %exp_tcp_seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tls_device_tx_resync_req, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, i32 noundef %tcp_seq, i32 noundef %exp_tcp_seq) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tls_device_tx_resync_send(ptr nocapture readnone %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tls_device_tx_resync_send, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tls_device_offload_set(ptr noundef %__data, ptr noundef %sk, i32 noundef %dir, i32 noundef %tcp_seq, ptr nocapture noundef readonly %rec_no, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !119

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !120

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sk6 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sk6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sk, ptr %sk6, align 8
  %4 = ptrtoint ptr %rec_no to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %rec_no, align 1
  %rec_no8 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %rec_no8 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %rec_no8, align 8
  %dir9 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %dir9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dir, ptr %dir9, align 8
  %tcp_seq10 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %tcp_seq10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tcp_seq, ptr %tcp_seq10, align 4
  %ret11 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %ret11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ret, ptr %ret11, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tls_device_offload_set(ptr noundef %__data, ptr noundef %sk, i32 noundef %dir, i32 noundef %tcp_seq, ptr nocapture noundef readonly %rec_no, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !121
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !109) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !109) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sk17 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sk17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sk, ptr %sk17, align 8
  %28 = ptrtoint ptr %rec_no to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %rec_no, align 1
  %rec_no19 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %rec_no19 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %rec_no19, align 8
  %dir20 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %dir20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dir, ptr %dir20, align 8
  %tcp_seq21 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %tcp_seq21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %tcp_seq, ptr %tcp_seq21, align 4
  %ret22 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %call13, i32 0, i32 5
  %33 = ptrtoint ptr %ret22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %ret, ptr %ret22, align 8
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tls_device_decrypted(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr nocapture noundef readonly %rec_no, i32 noundef %rec_len, i1 noundef zeroext %encrypted, i1 noundef zeroext %decrypted) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %frombool = zext i1 %encrypted to i8
  %frombool1 = zext i1 %decrypted to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !119

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !120

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sk9 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call5, i32 0, i32 1
  %3 = ptrtoint ptr %sk9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sk, ptr %sk9, align 8
  %4 = ptrtoint ptr %rec_no to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %rec_no, align 1
  %rec_no11 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call5, i32 0, i32 2
  %6 = ptrtoint ptr %rec_no11 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %rec_no11, align 8
  %tcp_seq12 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call5, i32 0, i32 3
  %7 = ptrtoint ptr %tcp_seq12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tcp_seq, ptr %tcp_seq12, align 8
  %rec_len13 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call5, i32 0, i32 4
  %8 = ptrtoint ptr %rec_len13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rec_len, ptr %rec_len13, align 4
  %encrypted15 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call5, i32 0, i32 5
  %9 = ptrtoint ptr %encrypted15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %encrypted15, align 8
  %decrypted18 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call5, i32 0, i32 6
  %10 = ptrtoint ptr %decrypted18 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool1, ptr %decrypted18, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tls_device_decrypted(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr nocapture noundef readonly %rec_no, i32 noundef %rec_len, i1 noundef zeroext %encrypted, i1 noundef zeroext %decrypted) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %frombool = zext i1 %encrypted to i8
  %frombool1 = zext i1 %decrypted to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !121
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !109) #5
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
  br i1 %tobool.i.not, label %land.lhs.true10, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true10:                                  ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %entry.if.end_crit_edge
  %call16 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !109) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sk20 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call16, i32 0, i32 1
  %27 = ptrtoint ptr %sk20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sk, ptr %sk20, align 8
  %28 = ptrtoint ptr %rec_no to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %rec_no, align 1
  %rec_no22 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call16, i32 0, i32 2
  %30 = ptrtoint ptr %rec_no22 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %rec_no22, align 8
  %tcp_seq23 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call16, i32 0, i32 3
  %31 = ptrtoint ptr %tcp_seq23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %tcp_seq, ptr %tcp_seq23, align 8
  %rec_len24 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call16, i32 0, i32 4
  %32 = ptrtoint ptr %rec_len24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rec_len, ptr %rec_len24, align 4
  %encrypted26 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call16, i32 0, i32 5
  %33 = ptrtoint ptr %encrypted26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %encrypted26, align 8
  %decrypted29 = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %call16, i32 0, i32 6
  %34 = ptrtoint ptr %decrypted29 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool1, ptr %decrypted29, align 1
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call16, i32 noundef 44, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tls_device_rx_resync_send(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr nocapture noundef readonly %rec_no, i32 noundef %sync_type) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !119

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !120

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sk6 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sk6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sk, ptr %sk6, align 8
  %4 = ptrtoint ptr %rec_no to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %rec_no, align 1
  %rec_no8 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %rec_no8 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %rec_no8, align 8
  %tcp_seq9 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %tcp_seq9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tcp_seq, ptr %tcp_seq9, align 8
  %sync_type10 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %sync_type10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sync_type, ptr %sync_type10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tls_device_rx_resync_send(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr nocapture noundef readonly %rec_no, i32 noundef %sync_type) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !121
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !109) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !109) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sk17 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sk17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sk, ptr %sk17, align 8
  %28 = ptrtoint ptr %rec_no to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %rec_no, align 1
  %rec_no19 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %rec_no19 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %rec_no19, align 8
  %tcp_seq20 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %tcp_seq20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %tcp_seq, ptr %tcp_seq20, align 8
  %sync_type21 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %sync_type21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sync_type, ptr %sync_type21, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tls_device_rx_resync_nh_schedule(ptr noundef %__data, ptr noundef %sk) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !119

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !120

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sk6 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_schedule, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sk6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sk, ptr %sk6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tls_device_rx_resync_nh_schedule(ptr noundef %__data, ptr noundef %sk) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !121
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !109) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !109) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sk17 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_schedule, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sk17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sk, ptr %sk17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tls_device_rx_resync_nh_delay(ptr noundef %__data, ptr noundef %sk, i32 noundef %sock_data, i32 noundef %rec_len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !119

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !120

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sk6 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_delay, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sk6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sk, ptr %sk6, align 4
  %sock_data7 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_delay, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %sock_data7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sock_data, ptr %sock_data7, align 4
  %rec_len8 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_delay, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %rec_len8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %rec_len, ptr %rec_len8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tls_device_rx_resync_nh_delay(ptr noundef %__data, ptr noundef %sk, i32 noundef %sock_data, i32 noundef %rec_len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !121
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !109) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !109) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sk17 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_delay, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sk17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sk, ptr %sk17, align 4
  %sock_data18 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_delay, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %sock_data18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sock_data, ptr %sock_data18, align 4
  %rec_len19 = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_delay, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %rec_len19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rec_len, ptr %rec_len19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tls_device_tx_resync_req(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, i32 noundef %exp_tcp_seq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !119

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !120

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sk6 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_req, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sk6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sk, ptr %sk6, align 4
  %tcp_seq7 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_req, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %tcp_seq7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tcp_seq, ptr %tcp_seq7, align 4
  %exp_tcp_seq8 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_req, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %exp_tcp_seq8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %exp_tcp_seq, ptr %exp_tcp_seq8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tls_device_tx_resync_req(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, i32 noundef %exp_tcp_seq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !121
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !109) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !109) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sk17 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_req, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sk17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sk, ptr %sk17, align 4
  %tcp_seq18 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_req, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %tcp_seq18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tcp_seq, ptr %tcp_seq18, align 4
  %exp_tcp_seq19 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_req, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %exp_tcp_seq19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %exp_tcp_seq, ptr %exp_tcp_seq19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tls_device_tx_resync_send(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr nocapture noundef readonly %rec_no) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !119

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !120

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sk6 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_send, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sk6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sk, ptr %sk6, align 8
  %4 = ptrtoint ptr %rec_no to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %rec_no, align 1
  %rec_no8 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_send, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %rec_no8 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %rec_no8, align 8
  %tcp_seq9 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_send, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %tcp_seq9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tcp_seq, ptr %tcp_seq9, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tls_device_tx_resync_send(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr nocapture noundef readonly %rec_no) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !121
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !109) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !109) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sk17 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_send, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sk17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sk, ptr %sk17, align 8
  %28 = ptrtoint ptr %rec_no to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %rec_no, align 1
  %rec_no19 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_send, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %rec_no19 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %rec_no19, align 8
  %tcp_seq20 = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_send, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %tcp_seq20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %tcp_seq, ptr %tcp_seq20, align 8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tls_device_offload_set(ptr noundef %__data, ptr noundef %sk, i32 noundef %dir, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sk to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %dir to i64
  %conv8 = zext i32 %tcp_seq to i64
  %1 = ptrtoint ptr %rec_no to i32
  %conv12 = zext i32 %1 to i64
  %conv16 = zext i32 %ret to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tls_device_decrypted(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %rec_len, i1 noundef zeroext %encrypted, i1 noundef zeroext %decrypted) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sk to i32
  %conv = zext i32 %0 to i64
  %conv5 = zext i32 %tcp_seq to i64
  %1 = ptrtoint ptr %rec_no to i32
  %conv9 = zext i32 %1 to i64
  %conv13 = zext i32 %rec_len to i64
  %conv18 = zext i1 %encrypted to i64
  %conv24 = zext i1 %decrypted to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv9, i64 noundef %conv13, i64 noundef %conv18, i64 noundef %conv24) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tls_device_rx_resync_send(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no, i32 noundef %sync_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sk to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %tcp_seq to i64
  %1 = ptrtoint ptr %rec_no to i32
  %conv8 = zext i32 %1 to i64
  %conv12 = zext i32 %sync_type to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tls_device_rx_resync_nh_schedule(ptr noundef %__data, ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sk to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tls_device_rx_resync_nh_delay(ptr noundef %__data, ptr noundef %sk, i32 noundef %sock_data, i32 noundef %rec_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sk to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %sock_data to i64
  %conv8 = zext i32 %rec_len to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tls_device_tx_resync_req(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, i32 noundef %exp_tcp_seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sk to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %tcp_seq to i64
  %conv8 = zext i32 %exp_tcp_seq to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tls_device_tx_resync_send(ptr noundef %__data, ptr noundef %sk, i32 noundef %tcp_seq, ptr noundef %rec_no) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sk to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %tcp_seq to i64
  %1 = ptrtoint ptr %rec_no to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tls_device_offload_set(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sk = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 8
  %dir = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 8
  %tcp_seq = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %tcp_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tcp_seq, align 4
  %rec_no = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rec_no to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rec_no, align 8
  %ret1 = getelementptr inbounds %struct.trace_event_raw_tls_device_offload_set, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ret1, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, ptr noundef %3, i32 noundef %5, i32 noundef %7, i64 noundef %9, i32 noundef %11) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
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
define internal i32 @trace_raw_output_tls_device_decrypted(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sk = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 8
  %tcp_seq = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tcp_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcp_seq, align 8
  %rec_no = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %rec_no to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rec_no, align 8
  %rec_len = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rec_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rec_len, align 4
  %encrypted = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %encrypted to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %encrypted, align 8, !range !122
  %12 = zext i8 %11 to i32
  %decrypted = getelementptr inbounds %struct.trace_event_raw_tls_device_decrypted, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %decrypted to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %decrypted, align 1, !range !122
  %15 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, ptr noundef %3, i32 noundef %5, i64 noundef %7, i32 noundef %9, i32 noundef %12, i32 noundef %15) #5
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tls_device_rx_resync_send(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sk = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 8
  %tcp_seq = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tcp_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcp_seq, align 8
  %rec_no = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %rec_no to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rec_no, align 8
  %sync_type = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_send, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %sync_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sync_type, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, ptr noundef %3, i32 noundef %5, i64 noundef %7, i32 noundef %9) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tls_device_rx_resync_nh_schedule(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sk = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_schedule, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, ptr noundef %3) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tls_device_rx_resync_nh_delay(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sk = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_delay, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %sock_data = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_delay, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sock_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sock_data, align 4
  %rec_len = getelementptr inbounds %struct.trace_event_raw_tls_device_rx_resync_nh_delay, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %rec_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rec_len, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, ptr noundef %3, i32 noundef %5, i32 noundef %7) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tls_device_tx_resync_req(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sk = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_req, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %tcp_seq = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_req, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tcp_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcp_seq, align 4
  %exp_tcp_seq = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_req, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %exp_tcp_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %exp_tcp_seq, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.21, ptr noundef %3, i32 noundef %5, i32 noundef %7) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tls_device_tx_resync_send(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sk = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_send, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 8
  %tcp_seq = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_send, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tcp_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcp_seq, align 8
  %rec_no = getelementptr inbounds %struct.trace_event_raw_tls_device_tx_resync_send, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %rec_no to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rec_no, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, ptr noundef %3, i32 noundef %5, i64 noundef %7) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
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
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run6(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!llvm.named.register.sp = !{!109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__tracepoint_tls_device_offload_set, !1, !"__tracepoint_tls_device_offload_set", i1 false, i1 false}
!1 = !{!"../net/tls/./trace.h", i32 15, i32 1}
!2 = !{ptr @__tracepoint_ptr_tls_device_offload_set, !1, !"__tracepoint_ptr_tls_device_offload_set", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_tls_device_offload_set, !1, !"__SCK__tp_func_tls_device_offload_set", i1 false, i1 false}
!4 = !{ptr @__tracepoint_tls_device_decrypted, !5, !"__tracepoint_tls_device_decrypted", i1 false, i1 false}
!5 = !{!"../net/tls/./trace.h", i32 44, i32 1}
!6 = !{ptr @__tracepoint_ptr_tls_device_decrypted, !5, !"__tracepoint_ptr_tls_device_decrypted", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_tls_device_decrypted, !5, !"__SCK__tp_func_tls_device_decrypted", i1 false, i1 false}
!8 = !{ptr @__tracepoint_tls_device_rx_resync_send, !9, !"__tracepoint_tls_device_rx_resync_send", i1 false, i1 false}
!9 = !{!"../net/tls/./trace.h", i32 77, i32 1}
!10 = !{ptr @__tracepoint_ptr_tls_device_rx_resync_send, !9, !"__tracepoint_ptr_tls_device_rx_resync_send", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_tls_device_rx_resync_send, !9, !"__SCK__tp_func_tls_device_rx_resync_send", i1 false, i1 false}
!12 = !{ptr @__tracepoint_tls_device_rx_resync_nh_schedule, !13, !"__tracepoint_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!13 = !{!"../net/tls/./trace.h", i32 104, i32 1}
!14 = !{ptr @__tracepoint_ptr_tls_device_rx_resync_nh_schedule, !13, !"__tracepoint_ptr_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_tls_device_rx_resync_nh_schedule, !13, !"__SCK__tp_func_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!16 = !{ptr @__tracepoint_tls_device_rx_resync_nh_delay, !17, !"__tracepoint_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!17 = !{!"../net/tls/./trace.h", i32 123, i32 1}
!18 = !{ptr @__tracepoint_ptr_tls_device_rx_resync_nh_delay, !17, !"__tracepoint_ptr_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_tls_device_rx_resync_nh_delay, !17, !"__SCK__tp_func_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!20 = !{ptr @__tracepoint_tls_device_tx_resync_req, !21, !"__tracepoint_tls_device_tx_resync_req", i1 false, i1 false}
!21 = !{!"../net/tls/./trace.h", i32 147, i32 1}
!22 = !{ptr @__tracepoint_ptr_tls_device_tx_resync_req, !21, !"__tracepoint_ptr_tls_device_tx_resync_req", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_tls_device_tx_resync_req, !21, !"__SCK__tp_func_tls_device_tx_resync_req", i1 false, i1 false}
!24 = !{ptr @__tracepoint_tls_device_tx_resync_send, !25, !"__tracepoint_tls_device_tx_resync_send", i1 false, i1 false}
!25 = !{!"../net/tls/./trace.h", i32 171, i32 1}
!26 = !{ptr @__tracepoint_ptr_tls_device_tx_resync_send, !25, !"__tracepoint_ptr_tls_device_tx_resync_send", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_tls_device_tx_resync_send, !25, !"__SCK__tp_func_tls_device_tx_resync_send", i1 false, i1 false}
!28 = !{ptr @event_class_tls_device_offload_set, !1, !"event_class_tls_device_offload_set", i1 false, i1 false}
!29 = !{ptr @event_tls_device_offload_set, !1, !"event_tls_device_offload_set", i1 false, i1 false}
!30 = !{ptr @__event_tls_device_offload_set, !1, !"__event_tls_device_offload_set", i1 false, i1 false}
!31 = !{ptr @event_class_tls_device_decrypted, !5, !"event_class_tls_device_decrypted", i1 false, i1 false}
!32 = !{ptr @event_tls_device_decrypted, !5, !"event_tls_device_decrypted", i1 false, i1 false}
!33 = !{ptr @__event_tls_device_decrypted, !5, !"__event_tls_device_decrypted", i1 false, i1 false}
!34 = !{ptr @event_class_tls_device_rx_resync_send, !9, !"event_class_tls_device_rx_resync_send", i1 false, i1 false}
!35 = !{ptr @event_tls_device_rx_resync_send, !9, !"event_tls_device_rx_resync_send", i1 false, i1 false}
!36 = !{ptr @__event_tls_device_rx_resync_send, !9, !"__event_tls_device_rx_resync_send", i1 false, i1 false}
!37 = !{ptr @event_class_tls_device_rx_resync_nh_schedule, !13, !"event_class_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!38 = !{ptr @event_tls_device_rx_resync_nh_schedule, !13, !"event_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!39 = !{ptr @__event_tls_device_rx_resync_nh_schedule, !13, !"__event_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!40 = !{ptr @event_class_tls_device_rx_resync_nh_delay, !17, !"event_class_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!41 = !{ptr @event_tls_device_rx_resync_nh_delay, !17, !"event_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!42 = !{ptr @__event_tls_device_rx_resync_nh_delay, !17, !"__event_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!43 = !{ptr @event_class_tls_device_tx_resync_req, !21, !"event_class_tls_device_tx_resync_req", i1 false, i1 false}
!44 = !{ptr @event_tls_device_tx_resync_req, !21, !"event_tls_device_tx_resync_req", i1 false, i1 false}
!45 = !{ptr @__event_tls_device_tx_resync_req, !21, !"__event_tls_device_tx_resync_req", i1 false, i1 false}
!46 = !{ptr @event_class_tls_device_tx_resync_send, !25, !"event_class_tls_device_tx_resync_send", i1 false, i1 false}
!47 = !{ptr @event_tls_device_tx_resync_send, !25, !"event_tls_device_tx_resync_send", i1 false, i1 false}
!48 = !{ptr @__event_tls_device_tx_resync_send, !25, !"__event_tls_device_tx_resync_send", i1 false, i1 false}
!49 = !{ptr @__bpf_trace_tp_map_tls_device_offload_set, !1, !"__bpf_trace_tp_map_tls_device_offload_set", i1 false, i1 false}
!50 = !{ptr @__bpf_trace_tp_map_tls_device_decrypted, !5, !"__bpf_trace_tp_map_tls_device_decrypted", i1 false, i1 false}
!51 = !{ptr @__bpf_trace_tp_map_tls_device_rx_resync_send, !9, !"__bpf_trace_tp_map_tls_device_rx_resync_send", i1 false, i1 false}
!52 = !{ptr @__bpf_trace_tp_map_tls_device_rx_resync_nh_schedule, !13, !"__bpf_trace_tp_map_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!53 = !{ptr @__bpf_trace_tp_map_tls_device_rx_resync_nh_delay, !17, !"__bpf_trace_tp_map_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!54 = !{ptr @__bpf_trace_tp_map_tls_device_tx_resync_req, !21, !"__bpf_trace_tp_map_tls_device_tx_resync_req", i1 false, i1 false}
!55 = !{ptr @__bpf_trace_tp_map_tls_device_tx_resync_send, !25, !"__bpf_trace_tp_map_tls_device_tx_resync_send", i1 false, i1 false}
!56 = !{ptr @__tpstrtab_tls_device_offload_set, !1, !"__tpstrtab_tls_device_offload_set", i1 false, i1 false}
!57 = !{ptr @__tpstrtab_tls_device_decrypted, !5, !"__tpstrtab_tls_device_decrypted", i1 false, i1 false}
!58 = !{ptr @__tpstrtab_tls_device_rx_resync_send, !9, !"__tpstrtab_tls_device_rx_resync_send", i1 false, i1 false}
!59 = !{ptr @__tpstrtab_tls_device_rx_resync_nh_schedule, !13, !"__tpstrtab_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!60 = !{ptr @__tpstrtab_tls_device_rx_resync_nh_delay, !17, !"__tpstrtab_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!61 = !{ptr @__tpstrtab_tls_device_tx_resync_req, !21, !"__tpstrtab_tls_device_tx_resync_req", i1 false, i1 false}
!62 = !{ptr @__tpstrtab_tls_device_tx_resync_send, !25, !"__tpstrtab_tls_device_tx_resync_send", i1 false, i1 false}
!63 = !{ptr @str__tls__trace_system_name, !64, !"str__tls__trace_system_name", i1 false, i1 false}
!64 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!65 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @trace_event_fields_tls_device_offload_set, !1, !"trace_event_fields_tls_device_offload_set", i1 false, i1 false}
!75 = !{ptr @trace_event_type_funcs_tls_device_offload_set, !1, !"trace_event_type_funcs_tls_device_offload_set", i1 false, i1 false}
!76 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @print_fmt_tls_device_offload_set, !1, !"print_fmt_tls_device_offload_set", i1 false, i1 false}
!78 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @trace_event_fields_tls_device_decrypted, !5, !"trace_event_fields_tls_device_decrypted", i1 false, i1 false}
!83 = !{ptr @trace_event_type_funcs_tls_device_decrypted, !5, !"trace_event_type_funcs_tls_device_decrypted", i1 false, i1 false}
!84 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @print_fmt_tls_device_decrypted, !5, !"print_fmt_tls_device_decrypted", i1 false, i1 false}
!86 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @trace_event_fields_tls_device_rx_resync_send, !9, !"trace_event_fields_tls_device_rx_resync_send", i1 false, i1 false}
!88 = !{ptr @trace_event_type_funcs_tls_device_rx_resync_send, !9, !"trace_event_type_funcs_tls_device_rx_resync_send", i1 false, i1 false}
!89 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @print_fmt_tls_device_rx_resync_send, !9, !"print_fmt_tls_device_rx_resync_send", i1 false, i1 false}
!91 = !{ptr @trace_event_fields_tls_device_rx_resync_nh_schedule, !13, !"trace_event_fields_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!92 = !{ptr @trace_event_type_funcs_tls_device_rx_resync_nh_schedule, !13, !"trace_event_type_funcs_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!93 = !{ptr @.str.17, !13, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @print_fmt_tls_device_rx_resync_nh_schedule, !13, !"print_fmt_tls_device_rx_resync_nh_schedule", i1 false, i1 false}
!95 = !{ptr @.str.18, !17, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @trace_event_fields_tls_device_rx_resync_nh_delay, !17, !"trace_event_fields_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!97 = !{ptr @trace_event_type_funcs_tls_device_rx_resync_nh_delay, !17, !"trace_event_type_funcs_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!98 = !{ptr @.str.19, !17, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @print_fmt_tls_device_rx_resync_nh_delay, !17, !"print_fmt_tls_device_rx_resync_nh_delay", i1 false, i1 false}
!100 = !{ptr @.str.20, !21, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @trace_event_fields_tls_device_tx_resync_req, !21, !"trace_event_fields_tls_device_tx_resync_req", i1 false, i1 false}
!102 = !{ptr @trace_event_type_funcs_tls_device_tx_resync_req, !21, !"trace_event_type_funcs_tls_device_tx_resync_req", i1 false, i1 false}
!103 = !{ptr @.str.21, !21, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @print_fmt_tls_device_tx_resync_req, !21, !"print_fmt_tls_device_tx_resync_req", i1 false, i1 false}
!105 = !{ptr @trace_event_fields_tls_device_tx_resync_send, !25, !"trace_event_fields_tls_device_tx_resync_send", i1 false, i1 false}
!106 = !{ptr @trace_event_type_funcs_tls_device_tx_resync_send, !25, !"trace_event_type_funcs_tls_device_tx_resync_send", i1 false, i1 false}
!107 = !{ptr @.str.22, !25, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @print_fmt_tls_device_tx_resync_send, !25, !"print_fmt_tls_device_tx_resync_send", i1 false, i1 false}
!109 = !{!"sp"}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{!"auto-init"}
!122 = !{i8 0, i8 2}
