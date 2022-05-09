; ModuleID = '/llk/IR_all_yes/net/openvswitch/openvswitch_trace.c_pt.bc'
source_filename = "../net/openvswitch/openvswitch_trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.198 }
%union.anon.198 = type { %struct.anon.199 }
%struct.anon.199 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.200, %struct.trace_event, ptr, ptr, %union.anon.201, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.200 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.201 = type { ptr }
%union.anon.202 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.203 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%struct.trace_event_raw_ovs_do_execute_action = type { %struct.trace_entry, ptr, i32, i32, ptr, i32, i32, i32, i8, i16, i16, i32, i32, ptr, i16, i8, i8, i16, i32, i8, i32, ptr, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sw_flow_key = type { [255 x i8], i8, %struct.ip_tunnel_key, %struct.anon.4, i8, i8, i32, i32, %struct.anon.5, i8, i8, %union.anon.6, i16, %struct.anon.8, %union.anon.9, %struct.anon.21 }
%struct.ip_tunnel_key = type { i64, %union.anon.1, i16, i8, i8, i32, i16, i16 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.3 }
%union.anon.3 = type { [4 x i32] }
%struct.anon.4 = type <{ i32, i32, i16 }>
%struct.anon.5 = type { [6 x i8], [6 x i8], %struct.vlan_head, %struct.vlan_head, i16 }
%struct.vlan_head = type { i16, i16 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i8, i8, i8, i8 }
%struct.anon.8 = type { i16, i16, i16 }
%union.anon.9 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.anon.16, i32, %union.anon.17 }
%struct.anon.16 = type { %struct.in6_addr, %struct.in6_addr }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.21 = type { %struct.anon.22, i32, %struct.ovs_key_ct_labels }
%struct.anon.22 = type { i16, i16 }
%struct.ovs_key_ct_labels = type { %union.anon.23 }
%union.anon.23 = type { [4 x i32] }
%struct.nlattr = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_ovs_dp_upcall = type { %struct.trace_entry, ptr, i32, i32, ptr, i32, i32, i32, i8, i16, i16, i32, i32, ptr, i16, i8, i8, i16, i32, i8, i32, i16, [0 x i8] }
%struct.dp_upcall_info = type { ptr, ptr, ptr, i32, i32, i8, i16 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_ovs_do_execute_action = internal constant [22 x i8] c"ovs_do_execute_action\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ovs_do_execute_action = dso_local global %struct.static_call_key { ptr @__traceiter_ovs_do_execute_action }, align 4
@__tracepoint_ovs_do_execute_action = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ovs_do_execute_action, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ovs_do_execute_action, ptr null, ptr @__traceiter_ovs_do_execute_action, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ovs_do_execute_action = internal constant ptr @__tracepoint_ovs_do_execute_action, section "__tracepoints_ptrs", align 4
@__tpstrtab_ovs_dp_upcall = internal constant [14 x i8] c"ovs_dp_upcall\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ovs_dp_upcall = dso_local global %struct.static_call_key { ptr @__traceiter_ovs_dp_upcall }, align 4
@__tracepoint_ovs_dp_upcall = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ovs_dp_upcall, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ovs_dp_upcall, ptr null, ptr @__traceiter_ovs_dp_upcall, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ovs_dp_upcall = internal constant ptr @__tracepoint_ovs_dp_upcall, section "__tracepoints_ptrs", align 4
@str__openvswitch__trace_system_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"openvswitch\00", [20 x i8] zeroinitializer }, align 32
@trace_event_fields_ovs_do_execute_action = internal global { [23 x %struct.trace_event_fields], [152 x i8] } { [23 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.198 { %struct.anon.199 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.198 { %struct.anon.199 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.198 { %struct.anon.199 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.198 { %struct.anon.199 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.198 { %struct.anon.199 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.198 { %struct.anon.199 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.198 { %struct.anon.199 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.198 { %struct.anon.199 { ptr @.str.12, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.198 { %struct.anon.199 { ptr @.str.14, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.198 { %struct.anon.199 { ptr @.str.15, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.198 { %struct.anon.199 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.198 { %struct.anon.199 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.198 { %struct.anon.199 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.198 { %struct.anon.199 { ptr @.str.20, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.198 { %struct.anon.199 { ptr @.str.21, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.198 { %struct.anon.199 { ptr @.str.22, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.198 { %struct.anon.199 { ptr @.str.23, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.198 { %struct.anon.199 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.198 { %struct.anon.199 { ptr @.str.25, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.198 { %struct.anon.199 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.198 { %struct.anon.199 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.198 { %struct.anon.199 { ptr @.str.28, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [152 x i8] zeroinitializer }, align 32
@event_class_ovs_do_execute_action = internal global %struct.trace_event_class { ptr @str__openvswitch__trace_system_name, ptr @trace_event_raw_event_ovs_do_execute_action, ptr @perf_trace_ovs_do_execute_action, ptr @trace_event_reg, ptr @trace_event_fields_ovs_do_execute_action, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ovs_do_execute_action, i64 24), ptr getelementptr (i8, ptr @event_class_ovs_do_execute_action, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ovs_do_execute_action = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ovs_do_execute_action, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ovs_do_execute_action = internal global { [664 x i8], [168 x i8] } { [664 x i8] c"\22dpaddr=%p dp_name=%s dev=%s skbaddr=%p len=%u data_len=%u truesize=%u nr_frags=%d gso_size=%d gso_type=%#x ovs_flow_hash=0x%08x recirc_id=0x%08x keyaddr=%p eth_type=0x%04x ct_state=%02x ct_orig_proto=%02x ct_Zone=%04x flow_key_valid=%d action_type=%u action_len=%u action_data=%p is_last=%d\22, REC->dpaddr, __get_str(dp_name), __get_str(dev_name), REC->skbaddr, REC->len, REC->data_len, REC->truesize, REC->nr_frags, REC->gso_size, REC->gso_type, REC->ovs_flow_hash, REC->recirc_id, REC->keyaddr, REC->key_eth_type, REC->key_ct_state, REC->key_ct_orig_proto, REC->key_ct_zone, REC->flow_key_valid, REC->action_type, REC->action_len, REC->action_data, REC->is_last\00", [168 x i8] zeroinitializer }, align 32
@event_ovs_do_execute_action = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ovs_do_execute_action, %union.anon.200 { ptr @__tracepoint_ovs_do_execute_action }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ovs_do_execute_action }, ptr @print_fmt_ovs_do_execute_action, ptr null, %union.anon.201 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ovs_do_execute_action = internal global ptr @event_ovs_do_execute_action, section "_ftrace_events", align 4
@trace_event_fields_ovs_dp_upcall = internal global { [22 x %struct.trace_event_fields], [144 x i8] } { [22 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.198 { %struct.anon.199 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.198 { %struct.anon.199 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.198 { %struct.anon.199 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.198 { %struct.anon.199 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.198 { %struct.anon.199 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.198 { %struct.anon.199 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.198 { %struct.anon.199 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.198 { %struct.anon.199 { ptr @.str.12, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.198 { %struct.anon.199 { ptr @.str.14, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.198 { %struct.anon.199 { ptr @.str.15, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.198 { %struct.anon.199 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.198 { %struct.anon.199 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.198 { %struct.anon.199 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.198 { %struct.anon.199 { ptr @.str.20, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.198 { %struct.anon.199 { ptr @.str.21, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.198 { %struct.anon.199 { ptr @.str.22, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.198 { %struct.anon.199 { ptr @.str.23, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.198 { %struct.anon.199 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.198 { %struct.anon.199 { ptr @.str.31, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.198 { %struct.anon.199 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.198 { %struct.anon.199 { ptr @.str.33, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [144 x i8] zeroinitializer }, align 32
@event_class_ovs_dp_upcall = internal global %struct.trace_event_class { ptr @str__openvswitch__trace_system_name, ptr @trace_event_raw_event_ovs_dp_upcall, ptr @perf_trace_ovs_dp_upcall, ptr @trace_event_reg, ptr @trace_event_fields_ovs_dp_upcall, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ovs_dp_upcall, i64 24), ptr getelementptr (i8, ptr @event_class_ovs_dp_upcall, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ovs_dp_upcall = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ovs_dp_upcall, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ovs_dp_upcall = internal global { [637 x i8], [131 x i8] } { [637 x i8] c"\22dpaddr=%p dp_name=%s dev=%s skbaddr=%p len=%u data_len=%u truesize=%u nr_frags=%d gso_size=%d gso_type=%#x ovs_flow_hash=0x%08x recirc_id=0x%08x keyaddr=%p eth_type=0x%04x ct_state=%02x ct_orig_proto=%02x ct_zone=%04x flow_key_valid=%d upcall_cmd=%u upcall_port=%u upcall_mru=%u\22, REC->dpaddr, __get_str(dp_name), __get_str(dev_name), REC->skbaddr, REC->len, REC->data_len, REC->truesize, REC->nr_frags, REC->gso_size, REC->gso_type, REC->ovs_flow_hash, REC->recirc_id, REC->keyaddr, REC->key_eth_type, REC->key_ct_state, REC->key_ct_orig_proto, REC->key_ct_zone, REC->flow_key_valid, REC->upcall_cmd, REC->upcall_port, REC->upcall_mru\00", [131 x i8] zeroinitializer }, align 32
@event_ovs_dp_upcall = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ovs_dp_upcall, %union.anon.200 { ptr @__tracepoint_ovs_dp_upcall }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ovs_dp_upcall }, ptr @print_fmt_ovs_dp_upcall, ptr null, %union.anon.201 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ovs_dp_upcall = internal global ptr @event_ovs_dp_upcall, section "_ftrace_events", align 4
@__bpf_trace_tp_map_ovs_do_execute_action = internal global %union.anon.202 { %struct.bpf_raw_event_map { ptr @__tracepoint_ovs_do_execute_action, ptr @__bpf_trace_ovs_do_execute_action, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ovs_dp_upcall = internal global %union.anon.203 { %struct.bpf_raw_event_map { ptr @__tracepoint_ovs_dp_upcall, ptr @__bpf_trace_ovs_dp_upcall, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dpaddr\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dp_name\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_name\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"skbaddr\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"data_len\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"truesize\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_frags\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gso_size\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gso_type\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovs_flow_hash\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recirc_id\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"keyaddr\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"key_eth_type\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"key_ct_state\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"key_ct_orig_proto\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"key_ct_zone\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flow_key_valid\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"action_type\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"action_len\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"action_data\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"is_last\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [292 x i8], [92 x i8] } { [292 x i8] c"dpaddr=%p dp_name=%s dev=%s skbaddr=%p len=%u data_len=%u truesize=%u nr_frags=%d gso_size=%d gso_type=%#x ovs_flow_hash=0x%08x recirc_id=0x%08x keyaddr=%p eth_type=0x%04x ct_state=%02x ct_orig_proto=%02x ct_Zone=%04x flow_key_valid=%d action_type=%u action_len=%u action_data=%p is_last=%d\0A\00", [92 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const void *\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"upcall_cmd\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"upcall_port\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"upcall_mru\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [280 x i8], [72 x i8] } { [280 x i8] c"dpaddr=%p dp_name=%s dev=%s skbaddr=%p len=%u data_len=%u truesize=%u nr_frags=%d gso_size=%d gso_type=%#x ovs_flow_hash=0x%08x recirc_id=0x%08x keyaddr=%p eth_type=0x%04x ct_state=%02x ct_orig_proto=%02x ct_zone=%04x flow_key_valid=%d upcall_cmd=%u upcall_port=%u upcall_mru=%u\0A\00", [72 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [39 x i8] c"../net/openvswitch/openvswitch_trace.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [36 x i8] c"str__openvswitch__trace_system_name\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 36, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [41 x i8] c"trace_event_fields_ovs_do_execute_action\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_ovs_do_execute_action\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [32 x i8] c"print_fmt_ovs_do_execute_action\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"event_ovs_do_execute_action\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [33 x i8] c"trace_event_fields_ovs_dp_upcall\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_ovs_dp_upcall\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [24 x i8] c"print_fmt_ovs_dp_upcall\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"event_ovs_dp_upcall\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 12, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [41 x i8] c"../net/openvswitch/./openvswitch_trace.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 82, i32 1 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__bpf_trace_tp_map_ovs_do_execute_action, ptr @__bpf_trace_tp_map_ovs_dp_upcall, ptr @__event_ovs_do_execute_action, ptr @__event_ovs_dp_upcall, ptr @__tracepoint_ovs_do_execute_action, ptr @__tracepoint_ovs_dp_upcall, ptr @__tracepoint_ptr_ovs_do_execute_action, ptr @__tracepoint_ptr_ovs_dp_upcall, ptr @event_class_ovs_do_execute_action, ptr @event_class_ovs_dp_upcall, ptr @event_ovs_do_execute_action, ptr @event_ovs_dp_upcall, ptr @str__openvswitch__trace_system_name, ptr @trace_event_fields_ovs_do_execute_action, ptr @trace_event_type_funcs_ovs_do_execute_action, ptr @print_fmt_ovs_do_execute_action, ptr @trace_event_fields_ovs_dp_upcall, ptr @trace_event_type_funcs_ovs_dp_upcall, ptr @print_fmt_ovs_dp_upcall, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__openvswitch__trace_system_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ovs_do_execute_action to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ovs_do_execute_action to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ovs_do_execute_action to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ovs_do_execute_action to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ovs_dp_upcall to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ovs_dp_upcall to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ovs_dp_upcall to i32), i32 637, i32 768, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ovs_dp_upcall to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 292, i32 384, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ovs_do_execute_action(ptr nocapture readnone %__data, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %a, i32 noundef %rem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ovs_do_execute_action, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %a, i32 noundef %rem) #7
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
define dso_local i32 @__traceiter_ovs_dp_upcall(ptr nocapture readnone %__data, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %upcall_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ovs_dp_upcall, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %upcall_info) #7
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
define internal void @trace_event_raw_event_ovs_do_execute_action(ptr noundef %__data, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %a, i32 noundef %rem) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !71

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !72

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
  %call.i98 = tail call ptr @ovs_dp_name(ptr noundef %dp) #7
  %tobool.not.i99 = icmp eq ptr %call.i98, null
  br i1 %tobool.not.i99, label %if.end.trace_event_get_offsets_ovs_do_execute_action.exit_crit_edge, label %cond.true.i

if.end.trace_event_get_offsets_ovs_do_execute_action.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %trace_event_get_offsets_ovs_do_execute_action.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call ptr @ovs_dp_name(ptr noundef %dp) #7
  br label %trace_event_get_offsets_ovs_do_execute_action.exit

trace_event_get_offsets_ovs_do_execute_action.exit: ; preds = %cond.true.i, %if.end.trace_event_get_offsets_ovs_do_execute_action.exit_crit_edge
  %cond.i = phi ptr [ %call2.i, %cond.true.i ], [ @.str, %if.end.trace_event_get_offsets_ovs_do_execute_action.exit_crit_edge ]
  %call3.i = tail call i32 @strlen(ptr noundef %cond.i) #10
  %3 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool7.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool7.not.i, ptr @.str, ptr %5
  %call14.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add15.i = add i32 %call14.i, 1
  %add21.i = add i32 %call3.i, 85
  %add = add i32 %add21.i, %add15.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ovs_do_execute_action.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ovs_do_execute_action.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ovs_do_execute_action.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ovs_do_execute_action.exit
  %shl18.i = shl i32 %add15.i, 16
  %add17.i = add i32 %call3.i, 82
  %or20.i = or i32 %shl18.i, %add17.i
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65617
  %__data_loc_dp_name = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %__data_loc_dp_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %__data_loc_dp_name, align 4
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or20.i, ptr %__data_loc_dev_name, align 4
  %dpaddr = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %dpaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dp, ptr %dpaddr, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 81
  %call7 = call ptr @ovs_dp_name(ptr noundef %dp) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call ptr @ovs_dp_name(ptr noundef %dp) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ %call9, %cond.true ], [ @.str, %if.end5.cond.end_crit_edge ]
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #11
  %9 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %__data_loc_dev_name, align 4
  %and12 = and i32 %10, 65535
  %add.ptr13 = getelementptr i8, ptr %call3, i32 %and12
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %tobool14.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool14.not, ptr @.str, ptr %12
  %call21 = call ptr @strcpy(ptr noundef %add.ptr13, ptr noundef nonnull %spec.select) #11
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %skb, ptr %skbaddr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %len22 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %len22, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %17 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len, align 8
  %data_len23 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 6
  %19 = ptrtoint ptr %data_len23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %data_len23, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %20 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %truesize, align 8
  %truesize24 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 7
  %22 = ptrtoint ptr %truesize24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %truesize24, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr_frags, align 2
  %nr_frags26 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 8
  %27 = ptrtoint ptr %nr_frags26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %nr_frags26, align 4
  %28 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %gso_size, align 4
  %gso_size28 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 9
  %31 = ptrtoint ptr %gso_size28 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %gso_size28, align 2
  %32 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gso_type, align 8
  %conv = trunc i32 %34 to i16
  %gso_type30 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 10
  %35 = ptrtoint ptr %gso_type30 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %gso_type30, align 4
  %ovs_flow_hash = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 6
  %36 = ptrtoint ptr %ovs_flow_hash to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ovs_flow_hash, align 4
  %ovs_flow_hash31 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 11
  %38 = ptrtoint ptr %ovs_flow_hash31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ovs_flow_hash31, align 4
  %recirc_id = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 7
  %39 = ptrtoint ptr %recirc_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %recirc_id, align 8
  %recirc_id32 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 12
  %41 = ptrtoint ptr %recirc_id32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %recirc_id32, align 4
  %keyaddr = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 13
  %42 = ptrtoint ptr %keyaddr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %key, ptr %keyaddr, align 4
  %type = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %type, align 4
  %key_eth_type = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 14
  %45 = ptrtoint ptr %key_eth_type to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %key_eth_type, align 4
  %ct_state = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 9
  %46 = ptrtoint ptr %ct_state to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ct_state, align 2
  %key_ct_state = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 15
  %48 = ptrtoint ptr %key_ct_state to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %key_ct_state, align 2
  %ct_orig_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 10
  %49 = ptrtoint ptr %ct_orig_proto to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ct_orig_proto, align 1
  %key_ct_orig_proto = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 16
  %51 = ptrtoint ptr %key_ct_orig_proto to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %key_ct_orig_proto, align 1
  %ct_zone = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 12
  %52 = ptrtoint ptr %ct_zone to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ct_zone, align 8
  %key_ct_zone = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 17
  %54 = ptrtoint ptr %key_ct_zone to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %key_ct_zone, align 4
  %mac_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %55 = ptrtoint ptr %mac_proto to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %mac_proto, align 2
  %57 = xor i8 %56, -1
  %58 = lshr i8 %57, 7
  %.not = zext i8 %58 to i32
  %flow_key_valid = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 18
  %59 = ptrtoint ptr %flow_key_valid to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.not, ptr %flow_key_valid, align 4
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %a, i32 0, i32 1
  %60 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nla_type.i, align 2
  %conv37 = trunc i16 %61 to i8
  %action_type = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 19
  %62 = ptrtoint ptr %action_type to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv37, ptr %action_type, align 4
  %63 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %a, align 2
  %conv.i = zext i16 %64 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %action_len = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 20
  %65 = ptrtoint ptr %action_len to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub.i, ptr %action_len, align 4
  %add.ptr.i = getelementptr i8, ptr %a, i32 4
  %action_data = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 21
  %66 = ptrtoint ptr %action_data to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i, ptr %action_data, align 4
  %67 = load i16, ptr %a, align 2
  %conv.i103 = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i103, i32 %rem)
  %cmp.i = icmp eq i32 %conv.i103, %rem
  %conv41 = zext i1 %cmp.i to i8
  %is_last = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call3, i32 0, i32 22
  %68 = ptrtoint ptr %is_last to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv41, ptr %is_last, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_ovs_do_execute_action.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ovs_do_execute_action(ptr noundef %__data, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %a, i32 noundef %rem) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !73
  %call.i = tail call ptr @ovs_dp_name(ptr noundef %dp) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.trace_event_get_offsets_ovs_do_execute_action.exit_crit_edge, label %cond.true.i

entry.trace_event_get_offsets_ovs_do_execute_action.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %trace_event_get_offsets_ovs_do_execute_action.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call ptr @ovs_dp_name(ptr noundef %dp) #7
  br label %trace_event_get_offsets_ovs_do_execute_action.exit

trace_event_get_offsets_ovs_do_execute_action.exit: ; preds = %cond.true.i, %entry.trace_event_get_offsets_ovs_do_execute_action.exit_crit_edge
  %cond.i = phi ptr [ %call2.i, %cond.true.i ], [ @.str, %entry.trace_event_get_offsets_ovs_do_execute_action.exit_crit_edge ]
  %call3.i = tail call i32 @strlen(ptr noundef %cond.i) #10
  %add.i = shl i32 %call3.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 81
  %2 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool7.not.i = icmp eq ptr %4, null
  %spec.select.i = select i1 %tobool7.not.i, ptr @.str, ptr %4
  %call14.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add15.i = add i32 %call14.i, 1
  %add17.i = add i32 %call3.i, 82
  %shl18.i = shl i32 %add15.i, 16
  %or20.i = or i32 %shl18.i, %add17.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %5 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %perf_events, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %15 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %16, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ovs_do_execute_action.exit.if.end_crit_edge

trace_event_get_offsets_ovs_do_execute_action.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ovs_do_execute_action.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ovs_do_execute_action.exit
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %14, align 4
  %tobool.not.i124.not = icmp eq ptr %18, null
  br i1 %tobool.not.i124.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ovs_do_execute_action.exit.if.end_crit_edge
  %add21.i = add i32 %call3.i, 96
  %add12 = add i32 %add21.i, %add15.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %19 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__regs, align 4
  %21 = call ptr @llvm.returnaddress(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %20, i32 0, i32 15
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.i, align 4
  %24 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %25 = ptrtoint ptr %24 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %20, i32 0, i32 11
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx2.i, align 4
  %27 = call i32 @llvm.read_register.i32(metadata !61) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %20, i32 0, i32 13
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %20, i32 0, i32 16
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dp_name = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %__data_loc_dp_name to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i, ptr %__data_loc_dp_name, align 4
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or20.i, ptr %__data_loc_dev_name, align 4
  %dpaddr = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 1
  %32 = ptrtoint ptr %dpaddr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dp, ptr %dpaddr, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 81
  %call19 = call ptr @ovs_dp_name(ptr noundef %dp) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call ptr @ovs_dp_name(ptr noundef %dp) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ %call21, %cond.true ], [ @.str, %if.end16.cond.end_crit_edge ]
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #11
  %33 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %__data_loc_dev_name, align 4
  %and24 = and i32 %34, 65535
  %add.ptr25 = getelementptr i8, ptr %call13, i32 %and24
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %2, align 8
  %tobool26.not = icmp eq ptr %36, null
  %spec.select = select i1 %tobool26.not, ptr @.str, ptr %36
  %call33 = call ptr @strcpy(ptr noundef %add.ptr25, ptr noundef nonnull %spec.select) #11
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %skb, ptr %skbaddr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %len34 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %len34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %len34, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %41 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len, align 8
  %data_len35 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 6
  %43 = ptrtoint ptr %data_len35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %data_len35, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %44 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %truesize, align 8
  %truesize36 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 7
  %46 = ptrtoint ptr %truesize36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %truesize36, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nr_frags, align 2
  %nr_frags38 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 8
  %51 = ptrtoint ptr %nr_frags38 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %nr_frags38, align 4
  %52 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %gso_size, align 4
  %gso_size40 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 9
  %55 = ptrtoint ptr %gso_size40 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %gso_size40, align 2
  %56 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %gso_type, align 8
  %conv = trunc i32 %58 to i16
  %gso_type42 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 10
  %59 = ptrtoint ptr %gso_type42 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv, ptr %gso_type42, align 4
  %ovs_flow_hash = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 6
  %60 = ptrtoint ptr %ovs_flow_hash to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ovs_flow_hash, align 4
  %ovs_flow_hash43 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 11
  %62 = ptrtoint ptr %ovs_flow_hash43 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %ovs_flow_hash43, align 4
  %recirc_id = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 7
  %63 = ptrtoint ptr %recirc_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %recirc_id, align 8
  %recirc_id44 = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 12
  %65 = ptrtoint ptr %recirc_id44 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %recirc_id44, align 4
  %keyaddr = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 13
  %66 = ptrtoint ptr %keyaddr to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %key, ptr %keyaddr, align 4
  %type = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %67 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %type, align 4
  %key_eth_type = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 14
  %69 = ptrtoint ptr %key_eth_type to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %key_eth_type, align 4
  %ct_state = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 9
  %70 = ptrtoint ptr %ct_state to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ct_state, align 2
  %key_ct_state = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 15
  %72 = ptrtoint ptr %key_ct_state to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %key_ct_state, align 2
  %ct_orig_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 10
  %73 = ptrtoint ptr %ct_orig_proto to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ct_orig_proto, align 1
  %key_ct_orig_proto = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 16
  %75 = ptrtoint ptr %key_ct_orig_proto to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %key_ct_orig_proto, align 1
  %ct_zone = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 12
  %76 = ptrtoint ptr %ct_zone to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %ct_zone, align 8
  %key_ct_zone = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 17
  %78 = ptrtoint ptr %key_ct_zone to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %key_ct_zone, align 4
  %mac_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %79 = ptrtoint ptr %mac_proto to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %mac_proto, align 2
  %81 = xor i8 %80, -1
  %82 = lshr i8 %81, 7
  %.not = zext i8 %82 to i32
  %flow_key_valid = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 18
  %83 = ptrtoint ptr %flow_key_valid to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.not, ptr %flow_key_valid, align 4
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %a, i32 0, i32 1
  %84 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %nla_type.i, align 2
  %conv51 = trunc i16 %85 to i8
  %action_type = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 19
  %86 = ptrtoint ptr %action_type to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv51, ptr %action_type, align 4
  %87 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %a, align 2
  %conv.i = zext i16 %88 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %action_len = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 20
  %89 = ptrtoint ptr %action_len to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub.i, ptr %action_len, align 4
  %add.ptr.i = getelementptr i8, ptr %a, i32 4
  %action_data = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 21
  %90 = ptrtoint ptr %action_data to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr.i, ptr %action_data, align 4
  %91 = load i16, ptr %a, align 2
  %conv.i128 = zext i16 %91 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i128, i32 %rem)
  %cmp.i = icmp eq i32 %conv.i128, %rem
  %conv55 = zext i1 %cmp.i to i8
  %is_last = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %call13, i32 0, i32 22
  %92 = ptrtoint ptr %is_last to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv55, ptr %is_last, align 4
  %93 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rctx, align 4
  %95 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %94, ptr noundef %__data, i64 noundef 1, ptr noundef %96, ptr noundef %14, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ovs_dp_upcall(ptr noundef %__data, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr nocapture noundef readonly %upcall_info) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !71

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !72

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
  %call.i89 = tail call ptr @ovs_dp_name(ptr noundef %dp) #7
  %tobool.not.i90 = icmp eq ptr %call.i89, null
  br i1 %tobool.not.i90, label %if.end.trace_event_get_offsets_ovs_dp_upcall.exit_crit_edge, label %cond.true.i

if.end.trace_event_get_offsets_ovs_dp_upcall.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %trace_event_get_offsets_ovs_dp_upcall.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call ptr @ovs_dp_name(ptr noundef %dp) #7
  br label %trace_event_get_offsets_ovs_dp_upcall.exit

trace_event_get_offsets_ovs_dp_upcall.exit:       ; preds = %cond.true.i, %if.end.trace_event_get_offsets_ovs_dp_upcall.exit_crit_edge
  %cond.i = phi ptr [ %call2.i, %cond.true.i ], [ @.str, %if.end.trace_event_get_offsets_ovs_dp_upcall.exit_crit_edge ]
  %call3.i = tail call i32 @strlen(ptr noundef %cond.i) #10
  %3 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool7.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool7.not.i, ptr @.str, ptr %5
  %call14.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add15.i = add i32 %call14.i, 1
  %add21.i = add i32 %call3.i, 81
  %add = add i32 %add21.i, %add15.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ovs_dp_upcall.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ovs_dp_upcall.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ovs_dp_upcall.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ovs_dp_upcall.exit
  %shl18.i = shl i32 %add15.i, 16
  %add17.i = add i32 %call3.i, 79
  %or20.i = or i32 %shl18.i, %add17.i
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65614
  %__data_loc_dp_name = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %__data_loc_dp_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %__data_loc_dp_name, align 4
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or20.i, ptr %__data_loc_dev_name, align 4
  %dpaddr = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %dpaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dp, ptr %dpaddr, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 78
  %call7 = call ptr @ovs_dp_name(ptr noundef %dp) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call ptr @ovs_dp_name(ptr noundef %dp) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ %call9, %cond.true ], [ @.str, %if.end5.cond.end_crit_edge ]
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #11
  %9 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %__data_loc_dev_name, align 4
  %and12 = and i32 %10, 65535
  %add.ptr13 = getelementptr i8, ptr %call3, i32 %and12
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %tobool14.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool14.not, ptr @.str, ptr %12
  %call21 = call ptr @strcpy(ptr noundef %add.ptr13, ptr noundef nonnull %spec.select) #11
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %skb, ptr %skbaddr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %len22 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %len22, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %17 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len, align 8
  %data_len23 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 6
  %19 = ptrtoint ptr %data_len23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %data_len23, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %20 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %truesize, align 8
  %truesize24 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 7
  %22 = ptrtoint ptr %truesize24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %truesize24, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr_frags, align 2
  %nr_frags26 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 8
  %27 = ptrtoint ptr %nr_frags26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %nr_frags26, align 4
  %28 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %gso_size, align 4
  %gso_size28 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 9
  %31 = ptrtoint ptr %gso_size28 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %gso_size28, align 2
  %32 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gso_type, align 8
  %conv = trunc i32 %34 to i16
  %gso_type30 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 10
  %35 = ptrtoint ptr %gso_type30 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %gso_type30, align 4
  %ovs_flow_hash = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 6
  %36 = ptrtoint ptr %ovs_flow_hash to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ovs_flow_hash, align 4
  %ovs_flow_hash31 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 11
  %38 = ptrtoint ptr %ovs_flow_hash31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ovs_flow_hash31, align 4
  %recirc_id = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 7
  %39 = ptrtoint ptr %recirc_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %recirc_id, align 8
  %recirc_id32 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 12
  %41 = ptrtoint ptr %recirc_id32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %recirc_id32, align 4
  %keyaddr = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 13
  %42 = ptrtoint ptr %keyaddr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %key, ptr %keyaddr, align 4
  %type = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %type, align 4
  %key_eth_type = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 14
  %45 = ptrtoint ptr %key_eth_type to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %key_eth_type, align 4
  %ct_state = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 9
  %46 = ptrtoint ptr %ct_state to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ct_state, align 2
  %key_ct_state = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 15
  %48 = ptrtoint ptr %key_ct_state to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %key_ct_state, align 2
  %ct_orig_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 10
  %49 = ptrtoint ptr %ct_orig_proto to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ct_orig_proto, align 1
  %key_ct_orig_proto = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 16
  %51 = ptrtoint ptr %key_ct_orig_proto to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %key_ct_orig_proto, align 1
  %ct_zone = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 12
  %52 = ptrtoint ptr %ct_zone to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ct_zone, align 8
  %key_ct_zone = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 17
  %54 = ptrtoint ptr %key_ct_zone to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %key_ct_zone, align 4
  %mac_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %55 = ptrtoint ptr %mac_proto to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %mac_proto, align 2
  %57 = xor i8 %56, -1
  %58 = lshr i8 %57, 7
  %.not = zext i8 %58 to i32
  %flow_key_valid = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 18
  %59 = ptrtoint ptr %flow_key_valid to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.not, ptr %flow_key_valid, align 4
  %cmd = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 5
  %60 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cmd, align 4
  %upcall_cmd = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 19
  %62 = ptrtoint ptr %upcall_cmd to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %upcall_cmd, align 4
  %portid = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 4
  %63 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %portid, align 4
  %upcall_port = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 20
  %65 = ptrtoint ptr %upcall_port to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %upcall_port, align 4
  %mru = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 6
  %66 = ptrtoint ptr %mru to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %mru, align 2
  %upcall_mru = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call3, i32 0, i32 21
  %68 = ptrtoint ptr %upcall_mru to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %upcall_mru, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_ovs_dp_upcall.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ovs_dp_upcall(ptr noundef %__data, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr nocapture noundef readonly %upcall_info) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !73
  %call.i = tail call ptr @ovs_dp_name(ptr noundef %dp) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.trace_event_get_offsets_ovs_dp_upcall.exit_crit_edge, label %cond.true.i

entry.trace_event_get_offsets_ovs_dp_upcall.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %trace_event_get_offsets_ovs_dp_upcall.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call ptr @ovs_dp_name(ptr noundef %dp) #7
  br label %trace_event_get_offsets_ovs_dp_upcall.exit

trace_event_get_offsets_ovs_dp_upcall.exit:       ; preds = %cond.true.i, %entry.trace_event_get_offsets_ovs_dp_upcall.exit_crit_edge
  %cond.i = phi ptr [ %call2.i, %cond.true.i ], [ @.str, %entry.trace_event_get_offsets_ovs_dp_upcall.exit_crit_edge ]
  %call3.i = tail call i32 @strlen(ptr noundef %cond.i) #10
  %add.i = shl i32 %call3.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 78
  %2 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool7.not.i = icmp eq ptr %4, null
  %spec.select.i = select i1 %tobool7.not.i, ptr @.str, ptr %4
  %call14.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add15.i = add i32 %call14.i, 1
  %add17.i = add i32 %call3.i, 79
  %shl18.i = shl i32 %add15.i, 16
  %or20.i = or i32 %shl18.i, %add17.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %5 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %perf_events, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %15 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %16, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ovs_dp_upcall.exit.if.end_crit_edge

trace_event_get_offsets_ovs_dp_upcall.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ovs_dp_upcall.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ovs_dp_upcall.exit
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %14, align 4
  %tobool.not.i115.not = icmp eq ptr %18, null
  br i1 %tobool.not.i115.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ovs_dp_upcall.exit.if.end_crit_edge
  %add21.i = add i32 %call3.i, 92
  %add12 = add i32 %add21.i, %add15.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %19 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__regs, align 4
  %21 = call ptr @llvm.returnaddress(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %20, i32 0, i32 15
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.i, align 4
  %24 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %25 = ptrtoint ptr %24 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %20, i32 0, i32 11
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx2.i, align 4
  %27 = call i32 @llvm.read_register.i32(metadata !61) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %20, i32 0, i32 13
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %20, i32 0, i32 16
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dp_name = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %__data_loc_dp_name to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i, ptr %__data_loc_dp_name, align 4
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or20.i, ptr %__data_loc_dev_name, align 4
  %dpaddr = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 1
  %32 = ptrtoint ptr %dpaddr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dp, ptr %dpaddr, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 78
  %call19 = call ptr @ovs_dp_name(ptr noundef %dp) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call ptr @ovs_dp_name(ptr noundef %dp) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ %call21, %cond.true ], [ @.str, %if.end16.cond.end_crit_edge ]
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #11
  %33 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %__data_loc_dev_name, align 4
  %and24 = and i32 %34, 65535
  %add.ptr25 = getelementptr i8, ptr %call13, i32 %and24
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %2, align 8
  %tobool26.not = icmp eq ptr %36, null
  %spec.select = select i1 %tobool26.not, ptr @.str, ptr %36
  %call33 = call ptr @strcpy(ptr noundef %add.ptr25, ptr noundef nonnull %spec.select) #11
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %skbaddr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %skb, ptr %skbaddr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %len34 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %len34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %len34, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %41 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len, align 8
  %data_len35 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 6
  %43 = ptrtoint ptr %data_len35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %data_len35, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %44 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %truesize, align 8
  %truesize36 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 7
  %46 = ptrtoint ptr %truesize36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %truesize36, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nr_frags, align 2
  %nr_frags38 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 8
  %51 = ptrtoint ptr %nr_frags38 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %nr_frags38, align 4
  %52 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %gso_size, align 4
  %gso_size40 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 9
  %55 = ptrtoint ptr %gso_size40 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %gso_size40, align 2
  %56 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %gso_type, align 8
  %conv = trunc i32 %58 to i16
  %gso_type42 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 10
  %59 = ptrtoint ptr %gso_type42 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv, ptr %gso_type42, align 4
  %ovs_flow_hash = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 6
  %60 = ptrtoint ptr %ovs_flow_hash to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ovs_flow_hash, align 4
  %ovs_flow_hash43 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 11
  %62 = ptrtoint ptr %ovs_flow_hash43 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %ovs_flow_hash43, align 4
  %recirc_id = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 7
  %63 = ptrtoint ptr %recirc_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %recirc_id, align 8
  %recirc_id44 = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 12
  %65 = ptrtoint ptr %recirc_id44 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %recirc_id44, align 4
  %keyaddr = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 13
  %66 = ptrtoint ptr %keyaddr to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %key, ptr %keyaddr, align 4
  %type = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %67 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %type, align 4
  %key_eth_type = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 14
  %69 = ptrtoint ptr %key_eth_type to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %key_eth_type, align 4
  %ct_state = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 9
  %70 = ptrtoint ptr %ct_state to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ct_state, align 2
  %key_ct_state = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 15
  %72 = ptrtoint ptr %key_ct_state to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %key_ct_state, align 2
  %ct_orig_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 10
  %73 = ptrtoint ptr %ct_orig_proto to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ct_orig_proto, align 1
  %key_ct_orig_proto = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 16
  %75 = ptrtoint ptr %key_ct_orig_proto to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %key_ct_orig_proto, align 1
  %ct_zone = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 12
  %76 = ptrtoint ptr %ct_zone to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %ct_zone, align 8
  %key_ct_zone = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 17
  %78 = ptrtoint ptr %key_ct_zone to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %key_ct_zone, align 4
  %mac_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %79 = ptrtoint ptr %mac_proto to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %mac_proto, align 2
  %81 = xor i8 %80, -1
  %82 = lshr i8 %81, 7
  %.not = zext i8 %82 to i32
  %flow_key_valid = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 18
  %83 = ptrtoint ptr %flow_key_valid to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.not, ptr %flow_key_valid, align 4
  %cmd = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 5
  %84 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %cmd, align 4
  %upcall_cmd = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 19
  %86 = ptrtoint ptr %upcall_cmd to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %upcall_cmd, align 4
  %portid = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 4
  %87 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %portid, align 4
  %upcall_port = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 20
  %89 = ptrtoint ptr %upcall_port to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %upcall_port, align 4
  %mru = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 6
  %90 = ptrtoint ptr %mru to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %mru, align 2
  %upcall_mru = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %call13, i32 0, i32 21
  %92 = ptrtoint ptr %upcall_mru to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %upcall_mru, align 4
  %93 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rctx, align 4
  %95 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %94, ptr noundef %__data, i64 noundef 1, ptr noundef %96, ptr noundef %14, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ovs_do_execute_action(ptr noundef %__data, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %a, i32 noundef %rem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dp to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %skb to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %key to i32
  %conv8 = zext i32 %2 to i64
  %3 = ptrtoint ptr %a to i32
  %conv12 = zext i32 %3 to i64
  %conv16 = zext i32 %rem to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ovs_dp_upcall(ptr noundef %__data, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %upcall_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dp to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %skb to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %key to i32
  %conv8 = zext i32 %2 to i64
  %3 = ptrtoint ptr %upcall_info to i32
  %conv12 = zext i32 %3 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_dp_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ovs_do_execute_action(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %dpaddr = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dpaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpaddr, align 4
  %__data_loc_dp_name = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_dp_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_dp_name, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_dev_name, align 4
  %and1 = and i32 %7, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %skbaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skbaddr, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len, align 4
  %truesize = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %truesize, align 4
  %nr_frags = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags, align 4
  %conv = zext i8 %17 to i32
  %gso_size = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_size, align 2
  %conv3 = zext i16 %19 to i32
  %gso_type = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %gso_type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %gso_type, align 4
  %conv4 = zext i16 %21 to i32
  %ovs_flow_hash = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %ovs_flow_hash to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ovs_flow_hash, align 4
  %recirc_id = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %recirc_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %recirc_id, align 4
  %keyaddr = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %keyaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %keyaddr, align 4
  %key_eth_type = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 14
  %28 = ptrtoint ptr %key_eth_type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %key_eth_type, align 4
  %conv5 = zext i16 %29 to i32
  %key_ct_state = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %key_ct_state to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %key_ct_state, align 2
  %conv6 = zext i8 %31 to i32
  %key_ct_orig_proto = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %key_ct_orig_proto to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %key_ct_orig_proto, align 1
  %conv7 = zext i8 %33 to i32
  %key_ct_zone = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %key_ct_zone to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_ct_zone, align 4
  %conv8 = zext i16 %35 to i32
  %flow_key_valid = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 18
  %36 = ptrtoint ptr %flow_key_valid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flow_key_valid, align 4
  %action_type = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 19
  %38 = ptrtoint ptr %action_type to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %action_type, align 4
  %conv9 = zext i8 %39 to i32
  %action_len = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 20
  %40 = ptrtoint ptr %action_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %action_len, align 4
  %action_data = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 21
  %42 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %action_data, align 4
  %is_last = getelementptr inbounds %struct.trace_event_raw_ovs_do_execute_action, ptr %1, i32 0, i32 22
  %44 = ptrtoint ptr %is_last to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_last, align 4
  %conv10 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.29, ptr noundef %3, ptr noundef %add.ptr, ptr noundef %add.ptr2, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %23, i32 noundef %25, ptr noundef %27, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %37, i32 noundef %conv9, i32 noundef %41, ptr noundef %43, i32 noundef %conv10) #7
  %call11 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ovs_dp_upcall(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %dpaddr = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dpaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpaddr, align 4
  %__data_loc_dp_name = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_dp_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_dp_name, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_dev_name, align 4
  %and1 = and i32 %7, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %skbaddr = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %skbaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skbaddr, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len, align 4
  %truesize = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %truesize, align 4
  %nr_frags = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags, align 4
  %conv = zext i8 %17 to i32
  %gso_size = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_size, align 2
  %conv3 = zext i16 %19 to i32
  %gso_type = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %gso_type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %gso_type, align 4
  %conv4 = zext i16 %21 to i32
  %ovs_flow_hash = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %ovs_flow_hash to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ovs_flow_hash, align 4
  %recirc_id = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %recirc_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %recirc_id, align 4
  %keyaddr = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %keyaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %keyaddr, align 4
  %key_eth_type = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 14
  %28 = ptrtoint ptr %key_eth_type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %key_eth_type, align 4
  %conv5 = zext i16 %29 to i32
  %key_ct_state = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %key_ct_state to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %key_ct_state, align 2
  %conv6 = zext i8 %31 to i32
  %key_ct_orig_proto = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %key_ct_orig_proto to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %key_ct_orig_proto, align 1
  %conv7 = zext i8 %33 to i32
  %key_ct_zone = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %key_ct_zone to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_ct_zone, align 4
  %conv8 = zext i16 %35 to i32
  %flow_key_valid = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 18
  %36 = ptrtoint ptr %flow_key_valid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flow_key_valid, align 4
  %upcall_cmd = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 19
  %38 = ptrtoint ptr %upcall_cmd to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %upcall_cmd, align 4
  %conv9 = zext i8 %39 to i32
  %upcall_port = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 20
  %40 = ptrtoint ptr %upcall_port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %upcall_port, align 4
  %upcall_mru = getelementptr inbounds %struct.trace_event_raw_ovs_dp_upcall, ptr %1, i32 0, i32 21
  %42 = ptrtoint ptr %upcall_mru to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %upcall_mru, align 4
  %conv10 = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.34, ptr noundef %3, ptr noundef %add.ptr, ptr noundef %add.ptr2, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %23, i32 noundef %25, ptr noundef %27, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %37, i32 noundef %conv9, i32 noundef %41, i32 noundef %conv10) #7
  %call11 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__tracepoint_ovs_do_execute_action, !1, !"__tracepoint_ovs_do_execute_action", i1 false, i1 false}
!1 = !{!"../net/openvswitch/./openvswitch_trace.h", i32 12, i32 1}
!2 = !{ptr @__tracepoint_ptr_ovs_do_execute_action, !1, !"__tracepoint_ptr_ovs_do_execute_action", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_ovs_do_execute_action, !1, !"__SCK__tp_func_ovs_do_execute_action", i1 false, i1 false}
!4 = !{ptr @__tracepoint_ovs_dp_upcall, !5, !"__tracepoint_ovs_dp_upcall", i1 false, i1 false}
!5 = !{!"../net/openvswitch/./openvswitch_trace.h", i32 82, i32 1}
!6 = !{ptr @__tracepoint_ptr_ovs_dp_upcall, !5, !"__tracepoint_ptr_ovs_dp_upcall", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_ovs_dp_upcall, !5, !"__SCK__tp_func_ovs_dp_upcall", i1 false, i1 false}
!8 = !{ptr @event_class_ovs_do_execute_action, !1, !"event_class_ovs_do_execute_action", i1 false, i1 false}
!9 = !{ptr @event_ovs_do_execute_action, !1, !"event_ovs_do_execute_action", i1 false, i1 false}
!10 = !{ptr @__event_ovs_do_execute_action, !1, !"__event_ovs_do_execute_action", i1 false, i1 false}
!11 = !{ptr @event_class_ovs_dp_upcall, !5, !"event_class_ovs_dp_upcall", i1 false, i1 false}
!12 = !{ptr @event_ovs_dp_upcall, !5, !"event_ovs_dp_upcall", i1 false, i1 false}
!13 = !{ptr @__event_ovs_dp_upcall, !5, !"__event_ovs_dp_upcall", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_ovs_do_execute_action, !1, !"__bpf_trace_tp_map_ovs_do_execute_action", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_ovs_dp_upcall, !5, !"__bpf_trace_tp_map_ovs_dp_upcall", i1 false, i1 false}
!16 = !{ptr @__tpstrtab_ovs_do_execute_action, !1, !"__tpstrtab_ovs_do_execute_action", i1 false, i1 false}
!17 = !{ptr @__tpstrtab_ovs_dp_upcall, !5, !"__tpstrtab_ovs_dp_upcall", i1 false, i1 false}
!18 = !{ptr @str__openvswitch__trace_system_name, !19, !"str__openvswitch__trace_system_name", i1 false, i1 false}
!19 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!20 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @trace_event_fields_ovs_do_execute_action, !1, !"trace_event_fields_ovs_do_execute_action", i1 false, i1 false}
!50 = !{ptr @trace_event_type_funcs_ovs_do_execute_action, !1, !"trace_event_type_funcs_ovs_do_execute_action", i1 false, i1 false}
!51 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @print_fmt_ovs_do_execute_action, !1, !"print_fmt_ovs_do_execute_action", i1 false, i1 false}
!53 = !{ptr @.str.30, !5, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.31, !5, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.32, !5, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.33, !5, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @trace_event_fields_ovs_dp_upcall, !5, !"trace_event_fields_ovs_dp_upcall", i1 false, i1 false}
!58 = !{ptr @trace_event_type_funcs_ovs_dp_upcall, !5, !"trace_event_type_funcs_ovs_dp_upcall", i1 false, i1 false}
!59 = !{ptr @.str.34, !5, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @print_fmt_ovs_dp_upcall, !5, !"print_fmt_ovs_dp_upcall", i1 false, i1 false}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{!"auto-init"}
