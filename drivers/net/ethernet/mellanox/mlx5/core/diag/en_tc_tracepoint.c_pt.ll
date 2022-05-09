; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/diag/en_tc_tracepoint.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/diag/en_tc_tracepoint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.259 }
%union.anon.259 = type { %struct.anon.260 }
%struct.anon.260 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.261, %struct.trace_event, ptr, ptr, %union.anon.262, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.261 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.262 = type { ptr }
%union.anon.263 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.264 = type { %struct.bpf_raw_event_map }
%union.anon.265 = type { %struct.bpf_raw_event_map }
%union.anon.266 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.1, ptr }
%union.anon.1 = type { %struct.anon.169 }
%struct.anon.169 = type { i32, i64, i64, i64, i32 }
%struct.trace_event_raw_mlx5e_flower_template = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mlx5e_stats_flower = type { %struct.trace_entry, ptr, i64, i64, i64, [0 x i8] }
%struct.mlx5e_neigh_hash_entry = type { %struct.rhash_head, %struct.mlx5e_neigh, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.refcount_struct, i32, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.mlx5e_neigh = type { %union.anon.182, i32 }
%union.anon.182 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.17 }
%union.anon.17 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.trace_event_raw_mlx5e_tc_update_neigh_used_value = type { %struct.trace_entry, i32, [4 x i8], [16 x i8], i8, [0 x i8] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__tpstrtab_mlx5e_configure_flower = internal constant [23 x i8] c"mlx5e_configure_flower\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5e_configure_flower = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5e_configure_flower }, align 4
@__tracepoint_mlx5e_configure_flower = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5e_configure_flower, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5e_configure_flower, ptr null, ptr @__traceiter_mlx5e_configure_flower, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5e_configure_flower = internal constant ptr @__tracepoint_mlx5e_configure_flower, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5e_delete_flower = internal constant [20 x i8] c"mlx5e_delete_flower\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5e_delete_flower = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5e_delete_flower }, align 4
@__tracepoint_mlx5e_delete_flower = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5e_delete_flower, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5e_delete_flower, ptr null, ptr @__traceiter_mlx5e_delete_flower, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5e_delete_flower = internal constant ptr @__tracepoint_mlx5e_delete_flower, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5e_stats_flower = internal constant [19 x i8] c"mlx5e_stats_flower\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5e_stats_flower = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5e_stats_flower }, align 4
@__tracepoint_mlx5e_stats_flower = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5e_stats_flower, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5e_stats_flower, ptr null, ptr @__traceiter_mlx5e_stats_flower, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5e_stats_flower = internal constant ptr @__tracepoint_mlx5e_stats_flower, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5e_tc_update_neigh_used_value = internal constant [33 x i8] c"mlx5e_tc_update_neigh_used_value\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5e_tc_update_neigh_used_value = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5e_tc_update_neigh_used_value }, align 4
@__tracepoint_mlx5e_tc_update_neigh_used_value = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5e_tc_update_neigh_used_value, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5e_tc_update_neigh_used_value, ptr null, ptr @__traceiter_mlx5e_tc_update_neigh_used_value, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5e_tc_update_neigh_used_value = internal constant ptr @__tracepoint_mlx5e_tc_update_neigh_used_value, section "__tracepoints_ptrs", align 4
@str__mlx5__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlx5\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_mlx5e_flower_template = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.259 { %struct.anon.260 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.259 { %struct.anon.260 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.259 { %struct.anon.260 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mlx5e_flower_template = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5e_flower_template, ptr @perf_trace_mlx5e_flower_template, ptr @trace_event_reg, ptr @trace_event_fields_mlx5e_flower_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5e_flower_template, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5e_flower_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5e_flower_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5e_flower_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5e_flower_template = internal global { [111 x i8], [49 x i8] } { [111 x i8] c"\22cookie=%p actions= %s\0A\22, REC->cookie, REC->num ? parse_action(p, __get_dynamic_array(ids), REC->num) : \22NULL\22\00", [49 x i8] zeroinitializer }, align 32
@event_mlx5e_configure_flower = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5e_flower_template, %union.anon.261 { ptr @__tracepoint_mlx5e_configure_flower }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5e_flower_template }, ptr @print_fmt_mlx5e_flower_template, ptr null, %union.anon.262 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5e_configure_flower = internal global ptr @event_mlx5e_configure_flower, section "_ftrace_events", align 4
@event_mlx5e_delete_flower = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5e_flower_template, %union.anon.261 { ptr @__tracepoint_mlx5e_delete_flower }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5e_flower_template }, ptr @print_fmt_mlx5e_flower_template, ptr null, %union.anon.262 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5e_delete_flower = internal global ptr @event_mlx5e_delete_flower, section "_ftrace_events", align 4
@trace_event_fields_mlx5e_stats_flower = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.259 { %struct.anon.260 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.259 { %struct.anon.260 { ptr @.str.11, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.259 { %struct.anon.260 { ptr @.str.12, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.259 { %struct.anon.260 { ptr @.str.13, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mlx5e_stats_flower = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5e_stats_flower, ptr @perf_trace_mlx5e_stats_flower, ptr @trace_event_reg, ptr @trace_event_fields_mlx5e_stats_flower, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5e_stats_flower, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5e_stats_flower, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5e_stats_flower = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5e_stats_flower, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5e_stats_flower = internal global { [105 x i8], [55 x i8] } { [105 x i8] c"\22cookie=%p bytes=%llu packets=%llu lastused=%llu\0A\22, REC->cookie, REC->bytes, REC->packets, REC->lastused\00", [55 x i8] zeroinitializer }, align 32
@event_mlx5e_stats_flower = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5e_stats_flower, %union.anon.261 { ptr @__tracepoint_mlx5e_stats_flower }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5e_stats_flower }, ptr @print_fmt_mlx5e_stats_flower, ptr null, %union.anon.262 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5e_stats_flower = internal global ptr @event_mlx5e_stats_flower, section "_ftrace_events", align 4
@trace_event_fields_mlx5e_tc_update_neigh_used_value = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.259 { %struct.anon.260 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.259 { %struct.anon.260 { ptr @.str.19, i32 4, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.259 { %struct.anon.260 { ptr @.str.21, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.259 { %struct.anon.260 { ptr @.str.23, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mlx5e_tc_update_neigh_used_value = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5e_tc_update_neigh_used_value, ptr @perf_trace_mlx5e_tc_update_neigh_used_value, ptr @trace_event_reg, ptr @trace_event_fields_mlx5e_tc_update_neigh_used_value, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5e_tc_update_neigh_used_value, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5e_tc_update_neigh_used_value, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5e_tc_update_neigh_used_value = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5e_tc_update_neigh_used_value, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5e_tc_update_neigh_used_value = internal global { [106 x i8], [54 x i8] } { [106 x i8] c"\22netdev: %s IPv4: %pI4 IPv6: %pI6c neigh_used=%d\0A\22, __get_str(devname), REC->v4, REC->v6, REC->neigh_used\00", [54 x i8] zeroinitializer }, align 32
@event_mlx5e_tc_update_neigh_used_value = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5e_tc_update_neigh_used_value, %union.anon.261 { ptr @__tracepoint_mlx5e_tc_update_neigh_used_value }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5e_tc_update_neigh_used_value }, ptr @print_fmt_mlx5e_tc_update_neigh_used_value, ptr null, %union.anon.262 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5e_tc_update_neigh_used_value = internal global ptr @event_mlx5e_tc_update_neigh_used_value, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mlx5e_configure_flower = internal global %union.anon.263 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5e_configure_flower, ptr @__bpf_trace_mlx5e_flower_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5e_delete_flower = internal global %union.anon.264 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5e_delete_flower, ptr @__bpf_trace_mlx5e_flower_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5e_stats_flower = internal global %union.anon.265 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5e_stats_flower, ptr @__bpf_trace_mlx5e_stats_flower, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5e_tc_update_neigh_used_value = internal global %union.anon.266 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5e_tc_update_neigh_used_value, ptr @__bpf_trace_mlx5e_tc_update_neigh_used_value, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@FLOWACT2STR = internal constant { [30 x [16 x i8]], [96 x i8] } { [30 x [16 x i8]] [[16 x i8] c"ACCEPT\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"DROP\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"TRAP\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"GOTO\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"REDIRECT\00\00\00\00\00\00\00\00", [16 x i8] c"MIRRED\00\00\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] c"VLAN_PUSH\00\00\00\00\00\00\00", [16 x i8] c"VLAN_POP\00\00\00\00\00\00\00\00", [16 x i8] c"VLAN_MANGLE\00\00\00\00\00", [16 x i8] c"TUNNEL_ENCAP\00\00\00\00", [16 x i8] c"TUNNEL_DECAP\00\00\00\00", [16 x i8] c"MANGLE\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"ADD\00\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"CSUM\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"MARK\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] c"WAKE\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"QUEUE\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"SAMPLE\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"POLICE\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"CT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UNKNOWN \00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cookie\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"num\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__data_loc int[]\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ids\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cookie=%p actions= %s\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bytes\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"packets\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lastused\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cookie=%p bytes=%llu packets=%llu lastused=%llu\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devname\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"u8[4]\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v4\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u8[16]\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v6\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"neigh_used\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"netdev: %s IPv4: %pI4 IPv6: %pI6c neigh_used=%d\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@___asan_gen_.26 = private unnamed_addr constant [29 x i8] c"str__mlx5__trace_system_name\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 36, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [41 x i8] c"trace_event_fields_mlx5e_flower_template\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_mlx5e_flower_template\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [32 x i8] c"print_fmt_mlx5e_flower_template\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [29 x i8] c"event_mlx5e_configure_flower\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 48, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"event_mlx5e_delete_flower\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 53, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [38 x i8] c"trace_event_fields_mlx5e_stats_flower\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_mlx5e_stats_flower\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [29 x i8] c"print_fmt_mlx5e_stats_flower\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"event_mlx5e_stats_flower\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [52 x i8] c"trace_event_fields_mlx5e_tc_update_neigh_used_value\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [56 x i8] c"trace_event_type_funcs_mlx5e_tc_update_neigh_used_value\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [43 x i8] c"print_fmt_mlx5e_tc_update_neigh_used_value\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [39 x i8] c"event_mlx5e_tc_update_neigh_used_value\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 51, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"FLOWACT2STR\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 19, i32 19 }
@___asan_gen_.75 = private constant [67 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/diag/en_tc_tracepoint.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 53, i32 24 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 25, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 58, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [69 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/./diag/en_tc_tracepoint.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 77, i32 1 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__bpf_trace_tp_map_mlx5e_configure_flower, ptr @__bpf_trace_tp_map_mlx5e_delete_flower, ptr @__bpf_trace_tp_map_mlx5e_stats_flower, ptr @__bpf_trace_tp_map_mlx5e_tc_update_neigh_used_value, ptr @__event_mlx5e_configure_flower, ptr @__event_mlx5e_delete_flower, ptr @__event_mlx5e_stats_flower, ptr @__event_mlx5e_tc_update_neigh_used_value, ptr @__tracepoint_mlx5e_configure_flower, ptr @__tracepoint_mlx5e_delete_flower, ptr @__tracepoint_mlx5e_stats_flower, ptr @__tracepoint_mlx5e_tc_update_neigh_used_value, ptr @__tracepoint_ptr_mlx5e_configure_flower, ptr @__tracepoint_ptr_mlx5e_delete_flower, ptr @__tracepoint_ptr_mlx5e_stats_flower, ptr @__tracepoint_ptr_mlx5e_tc_update_neigh_used_value, ptr @event_class_mlx5e_flower_template, ptr @event_class_mlx5e_stats_flower, ptr @event_class_mlx5e_tc_update_neigh_used_value, ptr @event_mlx5e_configure_flower, ptr @event_mlx5e_delete_flower, ptr @event_mlx5e_stats_flower, ptr @event_mlx5e_tc_update_neigh_used_value, ptr @str__mlx5__trace_system_name, ptr @trace_event_fields_mlx5e_flower_template, ptr @trace_event_type_funcs_mlx5e_flower_template, ptr @print_fmt_mlx5e_flower_template, ptr @trace_event_fields_mlx5e_stats_flower, ptr @trace_event_type_funcs_mlx5e_stats_flower, ptr @print_fmt_mlx5e_stats_flower, ptr @trace_event_fields_mlx5e_tc_update_neigh_used_value, ptr @trace_event_type_funcs_mlx5e_tc_update_neigh_used_value, ptr @print_fmt_mlx5e_tc_update_neigh_used_value, ptr @.str, ptr @FLOWACT2STR, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mlx5__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5e_flower_template to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5e_flower_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5e_flower_template to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5e_configure_flower to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5e_delete_flower to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5e_stats_flower to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5e_stats_flower to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5e_stats_flower to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5e_stats_flower to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5e_tc_update_neigh_used_value to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5e_tc_update_neigh_used_value to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5e_tc_update_neigh_used_value to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5e_tc_update_neigh_used_value to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FLOWACT2STR to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5e_configure_flower(ptr nocapture readnone %__data, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5e_configure_flower, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %f) #9
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
define dso_local i32 @__traceiter_mlx5e_delete_flower(ptr nocapture readnone %__data, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5e_delete_flower, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %f) #9
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
define dso_local i32 @__traceiter_mlx5e_stats_flower(ptr nocapture readnone %__data, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5e_stats_flower, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %f) #9
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
define dso_local i32 @__traceiter_mlx5e_tc_update_neigh_used_value(ptr nocapture readnone %__data, ptr noundef %nhe, i1 noundef zeroext %neigh_used) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5e_tc_update_neigh_used_value, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %nhe, i1 noundef zeroext %neigh_used) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define internal void @trace_event_raw_event_mlx5e_flower_template(ptr noundef %__data, ptr nocapture noundef readonly %f) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !87

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
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %3 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rule.i, align 8
  %tobool.not.i35 = icmp eq ptr %4, null
  br i1 %tobool.not.i35, label %if.end.trace_event_get_offsets_mlx5e_flower_template.exit_crit_edge, label %cond.true.i

if.end.trace_event_get_offsets_mlx5e_flower_template.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_mlx5e_flower_template.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %action.i = getelementptr inbounds %struct.flow_rule, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %action.i, align 8
  %phi.bo.i = shl i32 %6, 2
  br label %trace_event_get_offsets_mlx5e_flower_template.exit

trace_event_get_offsets_mlx5e_flower_template.exit: ; preds = %cond.true.i, %if.end.trace_event_get_offsets_mlx5e_flower_template.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.true.i ], [ 0, %if.end.trace_event_get_offsets_mlx5e_flower_template.exit_crit_edge ]
  %add = add i32 %cond.i, 20
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5e_flower_template.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5e_flower_template.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5e_flower_template.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5e_flower_template.exit
  %shl.i = shl i32 %cond.i, 16
  %or.i = or i32 %shl.i, 20
  %__data_loc_ids = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %__data_loc_ids to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_ids, align 4
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie, align 4
  %10 = inttoptr i32 %9 to ptr
  %cookie6 = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %cookie6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %cookie6, align 4
  %12 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rule.i, align 8
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %num38 = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %num38 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %num38, align 4
  br label %if.end18

cond.end:                                         ; preds = %if.end5
  %action = getelementptr inbounds %struct.flow_rule, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %action, align 8
  %num = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %call3, i32 0, i32 2
  %17 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %cond.end.if.end18_crit_edge, label %if.then11

cond.end.if.end18_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then11:                                        ; preds = %cond.end
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %18 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rule.i, align 8
  %action14 = getelementptr inbounds %struct.flow_rule, ptr %19, i32 0, i32 1
  %entries = getelementptr inbounds %struct.flow_rule, ptr %19, i32 1
  %20 = ptrtoint ptr %action14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %action14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp5.not.i = icmp eq i32 %21, 0
  br i1 %cmp5.not.i, label %if.then11.if.end18_crit_edge, label %if.then11.for.body.i_crit_edge

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.flow_action_entry, ptr %entries, i32 %i.06.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %add.ptr, i32 %i.06.i
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx1.i, align 4
  %inc.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.body.i.if.end18_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end18_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %for.body.i.if.end18_crit_edge, %if.then11.if.end18_crit_edge, %cond.end.if.end18_crit_edge, %cond.end.thread
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %trace_event_get_offsets_mlx5e_flower_template.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5e_flower_template(ptr noundef %__data, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !88
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.trace_event_get_offsets_mlx5e_flower_template.exit_crit_edge, label %cond.true.i

entry.trace_event_get_offsets_mlx5e_flower_template.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %trace_event_get_offsets_mlx5e_flower_template.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %action.i = getelementptr inbounds %struct.flow_rule, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %action.i, align 8
  %phi.bo.i = shl i32 %5, 2
  br label %trace_event_get_offsets_mlx5e_flower_template.exit

trace_event_get_offsets_mlx5e_flower_template.exit: ; preds = %cond.true.i, %entry.trace_event_get_offsets_mlx5e_flower_template.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.true.i ], [ 0, %entry.trace_event_get_offsets_mlx5e_flower_template.exit_crit_edge ]
  %shl.i = shl i32 %cond.i, 16
  %or.i = or i32 %shl.i, 20
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5e_flower_template.exit.if.end_crit_edge

trace_event_get_offsets_mlx5e_flower_template.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5e_flower_template.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5e_flower_template.exit
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i59.not = icmp eq ptr %19, null
  br i1 %tobool.not.i59.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5e_flower_template.exit.if.end_crit_edge
  %add12 = add i32 %cond.i, 31
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #9
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !76) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_ids = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %__data_loc_ids to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_ids, align 4
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %32 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cookie, align 4
  %34 = inttoptr i32 %33 to ptr
  %cookie17 = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %cookie17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %cookie17, align 4
  %36 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rule.i, align 8
  %tobool18.not = icmp eq ptr %37, null
  br i1 %tobool18.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %num62 = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %num62 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %num62, align 4
  br label %if.end30

cond.end:                                         ; preds = %if.end16
  %action = getelementptr inbounds %struct.flow_rule, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %action, align 8
  %num = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %call13, i32 0, i32 2
  %41 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool21.not = icmp eq i32 %40, 0
  br i1 %tobool21.not, label %cond.end.if.end30_crit_edge, label %if.then22

cond.end.if.end30_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then22:                                        ; preds = %cond.end
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %42 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rule.i, align 8
  %action26 = getelementptr inbounds %struct.flow_rule, ptr %43, i32 0, i32 1
  %entries = getelementptr inbounds %struct.flow_rule, ptr %43, i32 1
  %44 = ptrtoint ptr %action26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %action26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp5.not.i = icmp eq i32 %45, 0
  br i1 %cmp5.not.i, label %if.then22.if.end30_crit_edge, label %if.then22.for.body.i_crit_edge

if.then22.for.body.i_crit_edge:                   ; preds = %if.then22
  br label %for.body.i

if.then22.if.end30_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then22.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then22.for.body.i_crit_edge ]
  %arrayidx.i60 = getelementptr %struct.flow_action_entry, ptr %entries, i32 %i.06.i
  %46 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i60, align 8
  %arrayidx1.i = getelementptr i32, ptr %add.ptr, i32 %i.06.i
  %48 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx1.i, align 4
  %inc.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %45
  br i1 %exitcond.not.i, label %for.body.i.if.end30_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end30_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %for.body.i.if.end30_crit_edge, %if.then22.if.end30_crit_edge, %cond.end.if.end30_crit_edge, %cond.end.thread
  %49 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rctx, align 4
  %51 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %50, ptr noundef %__data, i64 noundef 1, ptr noundef %52, ptr noundef %15, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5e_stats_flower(ptr noundef %__data, ptr nocapture noundef readonly %f) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !87

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %3 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie, align 4
  %5 = inttoptr i32 %4 to ptr
  %cookie6 = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %cookie6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %cookie6, align 8
  %stats = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4
  %bytes = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bytes, align 8
  %bytes7 = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %bytes7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %bytes7, align 8
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %stats, align 8
  %packets = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %packets, align 8
  %lastused = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %lastused to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %lastused, align 8
  %lastused10 = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %call3, i32 0, i32 4
  %15 = ptrtoint ptr %lastused10 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %lastused10, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5e_stats_flower(ptr noundef %__data, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !88
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
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
  %24 = call i32 @llvm.read_register.i32(metadata !76) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %27 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cookie, align 4
  %29 = inttoptr i32 %28 to ptr
  %cookie17 = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %cookie17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %cookie17, align 8
  %stats = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4
  %bytes = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes, align 8
  %bytes18 = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %bytes18 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %bytes18, align 8
  %34 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %stats, align 8
  %packets = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %packets, align 8
  %lastused = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %lastused to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %lastused, align 8
  %lastused21 = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %call13, i32 0, i32 4
  %39 = ptrtoint ptr %lastused21 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %lastused21, align 8
  %40 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rctx, align 4
  %42 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %41, ptr noundef %__data, i64 noundef 1, ptr noundef %43, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5e_tc_update_neigh_used_value(ptr noundef %__data, ptr nocapture noundef readonly %nhe, i1 noundef zeroext %neigh_used) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %frombool = zext i1 %neigh_used to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !87

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
  %neigh_dev.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 3
  %3 = ptrtoint ptr %neigh_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %neigh_dev.i, align 4
  %tobool.not.i46 = icmp eq ptr %4, null
  %spec.select.i = select i1 %tobool.not.i46, ptr @.str.15, ptr %4
  %call.i47 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #12
  %add = add i32 %call.i47, 37
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.i = shl i32 %call.i47, 16
  %or.i = add i32 %add.i, 65569
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %m_neigh = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %call3, i32 33
  %6 = ptrtoint ptr %neigh_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %neigh_dev.i, align 4
  %tobool8.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool8.not, ptr @.str.15, ptr %7
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #13
  %neigh_used14 = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %neigh_used14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %neigh_used14, align 4
  %v6 = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call3, i32 0, i32 3
  %family = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %family, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end6.if.end24_crit_edge [
    i32 2, label %if.then18
    i32 10, label %if.then21
  ]

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %v4 = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %m_neigh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_neigh, align 4
  %14 = ptrtoint ptr %v4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %v4, align 4
  %15 = ptrtoint ptr %v6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %v6, align 4
  %arrayidx1.i.i.i = getelementptr %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call3, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx1.i.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call3, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65535, ptr %arrayidx2.i.i, align 4
  %arrayidx1.i1.i.i = getelementptr %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call3, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %arrayidx1.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %arrayidx1.i1.i.i, align 4
  br label %if.end24

if.then21:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %19 = call ptr @memcpy(ptr %v6, ptr %m_neigh, i32 16)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then18, %if.end6.if.end24_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5e_tc_update_neigh_used_value(ptr noundef %__data, ptr nocapture noundef readonly %nhe, i1 noundef zeroext %neigh_used) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %frombool = zext i1 %neigh_used to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !88
  %neigh_dev.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 3
  %2 = ptrtoint ptr %neigh_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %neigh_dev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.15, ptr %3
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #12
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65569
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i70.not = icmp eq ptr %17, null
  br i1 %tobool.not.i70.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %add13 = add i32 %call.i, 48
  %and = and i32 %add13, -8
  %sub = add i32 %and, -4
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
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
  %26 = call i32 @llvm.read_register.i32(metadata !76) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call14, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %m_neigh = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %call14, i32 33
  %30 = ptrtoint ptr %neigh_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %neigh_dev.i, align 4
  %tobool20.not = icmp eq ptr %31, null
  %spec.select = select i1 %tobool20.not, ptr @.str.15, ptr %31
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #13
  %neigh_used26 = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call14, i32 0, i32 4
  %32 = ptrtoint ptr %neigh_used26 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool, ptr %neigh_used26, align 4
  %v6 = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call14, i32 0, i32 3
  %family = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %family, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %34, label %if.end17.if.end36_crit_edge [
    i32 2, label %if.then30
    i32 10, label %if.then33
  ]

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %v4 = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call14, i32 0, i32 2
  %36 = ptrtoint ptr %m_neigh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m_neigh, align 4
  %38 = ptrtoint ptr %v4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %v4, align 4
  %39 = ptrtoint ptr %v6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %v6, align 4
  %arrayidx1.i.i.i = getelementptr %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call14, i32 0, i32 3, i32 4
  %40 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx1.i.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call14, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 65535, ptr %arrayidx2.i.i, align 4
  %arrayidx1.i1.i.i = getelementptr %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %call14, i32 0, i32 3, i32 12
  %42 = ptrtoint ptr %arrayidx1.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %37, ptr %arrayidx1.i1.i.i, align 4
  br label %if.end36

if.then33:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %43 = call ptr @memcpy(ptr %v6, ptr %m_neigh, i32 16)
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then30, %if.end17.if.end36_crit_edge
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef %sub, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %13, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5e_flower_template(ptr noundef %__data, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %f to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5e_stats_flower(ptr noundef %__data, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %f to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5e_tc_update_neigh_used_value(ptr noundef %__data, ptr noundef %nhe, i1 noundef zeroext %neigh_used) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %nhe to i32
  %conv = zext i32 %0 to i64
  %conv5 = zext i1 %neigh_used to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5) #9
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_ids_to_array(ptr nocapture noundef writeonly %ids, ptr nocapture noundef readonly %entries, i32 noundef %num) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp5.not = icmp eq i32 %num, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.flow_action_entry, ptr %entries, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i32, ptr %ids, i32 %i.06
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx1, align 4
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @parse_action(ptr noundef %p, ptr nocapture noundef readonly %ids, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp11.not = icmp eq i32 %num, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %ids, i32 %i.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %5)
  %cmp1 = icmp slt i32 %5, 30
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3 = getelementptr [30 x [16 x i8]], ptr @FLOWACT2STR, i32 0, i32 %5
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str, ptr noundef %arrayidx3) #9
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.1) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3) #9
  %add.ptr.i = getelementptr i8, ptr %p, i32 %6
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #9
  ret ptr %add.ptr.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5e_flower_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
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
  %cookie = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cookie, align 4
  %num = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end
  %__data_loc_ids = getelementptr inbounds %struct.trace_event_raw_mlx5e_flower_template, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_ids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_ids, align 4
  %and = and i32 %7, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %len.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 2
  %8 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 1
  %10 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.true
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %cond.true ]
  %arrayidx.i = getelementptr i32, ptr %add.ptr, i32 %i.012.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %13)
  %cmp1.i = icmp slt i32 %13, 30
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr [30 x [16 x i8]], ptr @FLOWACT2STR, i32 0, i32 %13
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str, ptr noundef %arrayidx3.i) #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %tmp_seq, ptr noundef nonnull @.str.1) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %parse_action.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

parse_action.exit:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11) #9
  %add.ptr.i.i = getelementptr i8, ptr %tmp_seq, i32 %14
  tail call void @trace_seq_putc(ptr noundef %tmp_seq, i8 noundef zeroext 0) #9
  br label %cond.end

cond.end:                                         ; preds = %parse_action.exit, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr.i.i, %parse_action.exit ], [ @.str.9, %if.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.8, ptr noundef %3, ptr noundef %cond) #9
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5e_stats_flower(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cookie = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cookie, align 8
  %bytes = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytes, align 8
  %packets = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %packets, align 8
  %lastused = getelementptr inbounds %struct.trace_event_raw_mlx5e_stats_flower, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %lastused to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lastused, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, ptr noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5e_tc_update_neigh_used_value(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %v4 = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %1, i32 0, i32 2
  %v6 = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %1, i32 0, i32 3
  %neigh_used = getelementptr inbounds %struct.trace_event_raw_mlx5e_tc_update_neigh_used_value, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %neigh_used to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %neigh_used, align 4, !range !89
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, ptr noundef %add.ptr, ptr noundef %v4, ptr noundef %v6, i32 noundef %6) #9
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__tracepoint_mlx5e_configure_flower, !1, !"__tracepoint_mlx5e_configure_flower", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/./diag/en_tc_tracepoint.h", i32 48, i32 1}
!2 = !{ptr @__tracepoint_ptr_mlx5e_configure_flower, !1, !"__tracepoint_ptr_mlx5e_configure_flower", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mlx5e_configure_flower, !1, !"__SCK__tp_func_mlx5e_configure_flower", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mlx5e_delete_flower, !5, !"__tracepoint_mlx5e_delete_flower", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/./diag/en_tc_tracepoint.h", i32 53, i32 1}
!6 = !{ptr @__tracepoint_ptr_mlx5e_delete_flower, !5, !"__tracepoint_ptr_mlx5e_delete_flower", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mlx5e_delete_flower, !5, !"__SCK__tp_func_mlx5e_delete_flower", i1 false, i1 false}
!8 = !{ptr @__tracepoint_mlx5e_stats_flower, !9, !"__tracepoint_mlx5e_stats_flower", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/./diag/en_tc_tracepoint.h", i32 58, i32 1}
!10 = !{ptr @__tracepoint_ptr_mlx5e_stats_flower, !9, !"__tracepoint_ptr_mlx5e_stats_flower", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_mlx5e_stats_flower, !9, !"__SCK__tp_func_mlx5e_stats_flower", i1 false, i1 false}
!12 = !{ptr @__tracepoint_mlx5e_tc_update_neigh_used_value, !13, !"__tracepoint_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/./diag/en_tc_tracepoint.h", i32 77, i32 1}
!14 = !{ptr @__tracepoint_ptr_mlx5e_tc_update_neigh_used_value, !13, !"__tracepoint_ptr_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_mlx5e_tc_update_neigh_used_value, !13, !"__SCK__tp_func_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!16 = !{ptr @event_class_mlx5e_flower_template, !17, !"event_class_mlx5e_flower_template", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/./diag/en_tc_tracepoint.h", i32 25, i32 1}
!18 = !{ptr @event_mlx5e_configure_flower, !1, !"event_mlx5e_configure_flower", i1 false, i1 false}
!19 = !{ptr @__event_mlx5e_configure_flower, !1, !"__event_mlx5e_configure_flower", i1 false, i1 false}
!20 = !{ptr @event_mlx5e_delete_flower, !5, !"event_mlx5e_delete_flower", i1 false, i1 false}
!21 = !{ptr @__event_mlx5e_delete_flower, !5, !"__event_mlx5e_delete_flower", i1 false, i1 false}
!22 = !{ptr @event_class_mlx5e_stats_flower, !9, !"event_class_mlx5e_stats_flower", i1 false, i1 false}
!23 = !{ptr @event_mlx5e_stats_flower, !9, !"event_mlx5e_stats_flower", i1 false, i1 false}
!24 = !{ptr @__event_mlx5e_stats_flower, !9, !"__event_mlx5e_stats_flower", i1 false, i1 false}
!25 = !{ptr @event_class_mlx5e_tc_update_neigh_used_value, !13, !"event_class_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!26 = !{ptr @event_mlx5e_tc_update_neigh_used_value, !13, !"event_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!27 = !{ptr @__event_mlx5e_tc_update_neigh_used_value, !13, !"__event_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!28 = !{ptr @__bpf_trace_tp_map_mlx5e_configure_flower, !1, !"__bpf_trace_tp_map_mlx5e_configure_flower", i1 false, i1 false}
!29 = !{ptr @__bpf_trace_tp_map_mlx5e_delete_flower, !5, !"__bpf_trace_tp_map_mlx5e_delete_flower", i1 false, i1 false}
!30 = !{ptr @__bpf_trace_tp_map_mlx5e_stats_flower, !9, !"__bpf_trace_tp_map_mlx5e_stats_flower", i1 false, i1 false}
!31 = !{ptr @__bpf_trace_tp_map_mlx5e_tc_update_neigh_used_value, !13, !"__bpf_trace_tp_map_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/en_tc_tracepoint.c", i32 51, i32 24}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/en_tc_tracepoint.c", i32 53, i32 24}
!36 = !{ptr @__tpstrtab_mlx5e_configure_flower, !1, !"__tpstrtab_mlx5e_configure_flower", i1 false, i1 false}
!37 = !{ptr @__tpstrtab_mlx5e_delete_flower, !5, !"__tpstrtab_mlx5e_delete_flower", i1 false, i1 false}
!38 = !{ptr @__tpstrtab_mlx5e_stats_flower, !9, !"__tpstrtab_mlx5e_stats_flower", i1 false, i1 false}
!39 = !{ptr @__tpstrtab_mlx5e_tc_update_neigh_used_value, !13, !"__tpstrtab_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!40 = !{ptr @str__mlx5__trace_system_name, !41, !"str__mlx5__trace_system_name", i1 false, i1 false}
!41 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!42 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @trace_event_fields_mlx5e_flower_template, !17, !"trace_event_fields_mlx5e_flower_template", i1 false, i1 false}
!49 = !{ptr @trace_event_type_funcs_mlx5e_flower_template, !17, !"trace_event_type_funcs_mlx5e_flower_template", i1 false, i1 false}
!50 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @print_fmt_mlx5e_flower_template, !17, !"print_fmt_mlx5e_flower_template", i1 false, i1 false}
!53 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.12, !9, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @trace_event_fields_mlx5e_stats_flower, !9, !"trace_event_fields_mlx5e_stats_flower", i1 false, i1 false}
!58 = !{ptr @trace_event_type_funcs_mlx5e_stats_flower, !9, !"trace_event_type_funcs_mlx5e_stats_flower", i1 false, i1 false}
!59 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @print_fmt_mlx5e_stats_flower, !9, !"print_fmt_mlx5e_stats_flower", i1 false, i1 false}
!61 = !{ptr @.str.15, !13, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.16, !13, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.17, !13, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.18, !13, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.19, !13, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.20, !13, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.21, !13, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.22, !13, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.23, !13, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @trace_event_fields_mlx5e_tc_update_neigh_used_value, !13, !"trace_event_fields_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!71 = !{ptr @trace_event_type_funcs_mlx5e_tc_update_neigh_used_value, !13, !"trace_event_type_funcs_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!72 = !{ptr @.str.24, !13, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @print_fmt_mlx5e_tc_update_neigh_used_value, !13, !"print_fmt_mlx5e_tc_update_neigh_used_value", i1 false, i1 false}
!74 = !{ptr @FLOWACT2STR, !75, !"FLOWACT2STR", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/en_tc_tracepoint.c", i32 19, i32 19}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{!"auto-init"}
!89 = !{i8 0, i8 2}
