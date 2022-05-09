; ModuleID = '/llk/IR_all_yes/net/tipc/trace.c_pt.bc'
source_filename = "../net/tipc/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.167 }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.169, %struct.trace_event, ptr, ptr, %union.anon.170, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.169 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.170 = type { ptr }
%union.anon.171 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.172 = type { %struct.bpf_raw_event_map }
%union.anon.173 = type { %struct.bpf_raw_event_map }
%union.anon.174 = type { %struct.bpf_raw_event_map }
%union.anon.175 = type { %struct.bpf_raw_event_map }
%union.anon.176 = type { %struct.bpf_raw_event_map }
%union.anon.177 = type { %struct.bpf_raw_event_map }
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
%union.anon.203 = type { %struct.bpf_raw_event_map }
%union.anon.204 = type { %struct.bpf_raw_event_map }
%union.anon.205 = type { %struct.bpf_raw_event_map }
%union.anon.206 = type { %struct.bpf_raw_event_map }
%union.anon.207 = type { %struct.bpf_raw_event_map }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_tipc_skb_class = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_tipc_list_class = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_tipc_sk_class = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_tipc_link_class = type { %struct.trace_entry, i32, [68 x i8], i32, [0 x i8] }
%struct.trace_event_raw_tipc_link_transmq_class = type { %struct.trace_entry, [68 x i8], i16, i16, i32, i16, i16, [0 x i8] }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.126, %union.anon.127, [48 x i8], %union.anon.128, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.130, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.126 = type { ptr }
%union.anon.127 = type { i64 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, ptr }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.132, i32, i32, i32, i16, i16, %union.anon.134, i32, %union.anon.135, %union.anon.136, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.132 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.trace_event_raw_tipc_node_class = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_tipc_fsm_class = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.tipc_bearer = type { ptr, i32, %struct.tipc_media_addr, [32 x i8], ptr, %struct.tipc_media_addr, %struct.packet_type, %struct.callback_head, i32, i32, i32, i32, i32, i32, ptr, i8, i32, %struct.refcount_struct }
%struct.tipc_media_addr = type { [32 x i8], i8, i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.trace_event_raw_tipc_l2_device_event = type { %struct.trace_entry, i32, i32, i32, i8, i8, i8, [0 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.125, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.125 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_tipc_skb_dump = internal constant [14 x i8] c"tipc_skb_dump\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_skb_dump = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_skb_dump }, align 4
@__tracepoint_tipc_skb_dump = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_skb_dump, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_skb_dump, ptr null, ptr @__traceiter_tipc_skb_dump, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_skb_dump = internal constant ptr @__tracepoint_tipc_skb_dump, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_proto_build = internal constant [17 x i8] c"tipc_proto_build\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_proto_build = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_proto_build }, align 4
@__tracepoint_tipc_proto_build = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_proto_build, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_proto_build, ptr null, ptr @__traceiter_tipc_proto_build, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_proto_build = internal constant ptr @__tracepoint_tipc_proto_build, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_proto_rcv = internal constant [15 x i8] c"tipc_proto_rcv\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_proto_rcv = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_proto_rcv }, align 4
@__tracepoint_tipc_proto_rcv = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_proto_rcv, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_proto_rcv, ptr null, ptr @__traceiter_tipc_proto_rcv, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_proto_rcv = internal constant ptr @__tracepoint_tipc_proto_rcv, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_list_dump = internal constant [15 x i8] c"tipc_list_dump\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_list_dump = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_list_dump }, align 4
@__tracepoint_tipc_list_dump = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_list_dump, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_list_dump, ptr null, ptr @__traceiter_tipc_list_dump, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_list_dump = internal constant ptr @__tracepoint_tipc_list_dump, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_dump = internal constant [13 x i8] c"tipc_sk_dump\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_dump = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_dump }, align 4
@__tracepoint_tipc_sk_dump = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_dump, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_dump, ptr null, ptr @__traceiter_tipc_sk_dump, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_dump = internal constant ptr @__tracepoint_tipc_sk_dump, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_create = internal constant [15 x i8] c"tipc_sk_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_create = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_create }, align 4
@__tracepoint_tipc_sk_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_create, ptr null, ptr @__traceiter_tipc_sk_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_create = internal constant ptr @__tracepoint_tipc_sk_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_sendmcast = internal constant [18 x i8] c"tipc_sk_sendmcast\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_sendmcast = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_sendmcast }, align 4
@__tracepoint_tipc_sk_sendmcast = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_sendmcast, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_sendmcast, ptr null, ptr @__traceiter_tipc_sk_sendmcast, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_sendmcast = internal constant ptr @__tracepoint_tipc_sk_sendmcast, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_sendmsg = internal constant [16 x i8] c"tipc_sk_sendmsg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_sendmsg = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_sendmsg }, align 4
@__tracepoint_tipc_sk_sendmsg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_sendmsg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_sendmsg, ptr null, ptr @__traceiter_tipc_sk_sendmsg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_sendmsg = internal constant ptr @__tracepoint_tipc_sk_sendmsg, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_sendstream = internal constant [19 x i8] c"tipc_sk_sendstream\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_sendstream = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_sendstream }, align 4
@__tracepoint_tipc_sk_sendstream = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_sendstream, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_sendstream, ptr null, ptr @__traceiter_tipc_sk_sendstream, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_sendstream = internal constant ptr @__tracepoint_tipc_sk_sendstream, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_poll = internal constant [13 x i8] c"tipc_sk_poll\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_poll = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_poll }, align 4
@__tracepoint_tipc_sk_poll = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_poll, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_poll, ptr null, ptr @__traceiter_tipc_sk_poll, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_poll = internal constant ptr @__tracepoint_tipc_sk_poll, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_filter_rcv = internal constant [19 x i8] c"tipc_sk_filter_rcv\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_filter_rcv = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_filter_rcv }, align 4
@__tracepoint_tipc_sk_filter_rcv = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_filter_rcv, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_filter_rcv, ptr null, ptr @__traceiter_tipc_sk_filter_rcv, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_filter_rcv = internal constant ptr @__tracepoint_tipc_sk_filter_rcv, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_advance_rx = internal constant [19 x i8] c"tipc_sk_advance_rx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_advance_rx = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_advance_rx }, align 4
@__tracepoint_tipc_sk_advance_rx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_advance_rx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_advance_rx, ptr null, ptr @__traceiter_tipc_sk_advance_rx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_advance_rx = internal constant ptr @__tracepoint_tipc_sk_advance_rx, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_rej_msg = internal constant [16 x i8] c"tipc_sk_rej_msg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_rej_msg = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_rej_msg }, align 4
@__tracepoint_tipc_sk_rej_msg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_rej_msg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_rej_msg, ptr null, ptr @__traceiter_tipc_sk_rej_msg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_rej_msg = internal constant ptr @__tracepoint_tipc_sk_rej_msg, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_drop_msg = internal constant [17 x i8] c"tipc_sk_drop_msg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_drop_msg = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_drop_msg }, align 4
@__tracepoint_tipc_sk_drop_msg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_drop_msg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_drop_msg, ptr null, ptr @__traceiter_tipc_sk_drop_msg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_drop_msg = internal constant ptr @__tracepoint_tipc_sk_drop_msg, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_release = internal constant [16 x i8] c"tipc_sk_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_release = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_release }, align 4
@__tracepoint_tipc_sk_release = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_release, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_release, ptr null, ptr @__traceiter_tipc_sk_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_release = internal constant ptr @__tracepoint_tipc_sk_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_shutdown = internal constant [17 x i8] c"tipc_sk_shutdown\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_shutdown = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_shutdown }, align 4
@__tracepoint_tipc_sk_shutdown = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_shutdown, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_shutdown, ptr null, ptr @__traceiter_tipc_sk_shutdown, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_shutdown = internal constant ptr @__tracepoint_tipc_sk_shutdown, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_overlimit1 = internal constant [19 x i8] c"tipc_sk_overlimit1\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_overlimit1 = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_overlimit1 }, align 4
@__tracepoint_tipc_sk_overlimit1 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_overlimit1, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_overlimit1, ptr null, ptr @__traceiter_tipc_sk_overlimit1, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_overlimit1 = internal constant ptr @__tracepoint_tipc_sk_overlimit1, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_sk_overlimit2 = internal constant [19 x i8] c"tipc_sk_overlimit2\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_sk_overlimit2 = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_sk_overlimit2 }, align 4
@__tracepoint_tipc_sk_overlimit2 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_sk_overlimit2, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_sk_overlimit2, ptr null, ptr @__traceiter_tipc_sk_overlimit2, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_sk_overlimit2 = internal constant ptr @__tracepoint_tipc_sk_overlimit2, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_link_dump = internal constant [15 x i8] c"tipc_link_dump\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_link_dump = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_link_dump }, align 4
@__tracepoint_tipc_link_dump = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_link_dump, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_link_dump, ptr null, ptr @__traceiter_tipc_link_dump, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_link_dump = internal constant ptr @__tracepoint_tipc_link_dump, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_link_conges = internal constant [17 x i8] c"tipc_link_conges\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_link_conges = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_link_conges }, align 4
@__tracepoint_tipc_link_conges = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_link_conges, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_link_conges, ptr null, ptr @__traceiter_tipc_link_conges, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_link_conges = internal constant ptr @__tracepoint_tipc_link_conges, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_link_timeout = internal constant [18 x i8] c"tipc_link_timeout\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_link_timeout = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_link_timeout }, align 4
@__tracepoint_tipc_link_timeout = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_link_timeout, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_link_timeout, ptr null, ptr @__traceiter_tipc_link_timeout, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_link_timeout = internal constant ptr @__tracepoint_tipc_link_timeout, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_link_reset = internal constant [16 x i8] c"tipc_link_reset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_link_reset = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_link_reset }, align 4
@__tracepoint_tipc_link_reset = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_link_reset, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_link_reset, ptr null, ptr @__traceiter_tipc_link_reset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_link_reset = internal constant ptr @__tracepoint_tipc_link_reset, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_link_too_silent = internal constant [21 x i8] c"tipc_link_too_silent\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_link_too_silent = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_link_too_silent }, align 4
@__tracepoint_tipc_link_too_silent = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_link_too_silent, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_link_too_silent, ptr null, ptr @__traceiter_tipc_link_too_silent, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_link_too_silent = internal constant ptr @__tracepoint_tipc_link_too_silent, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_link_retrans = internal constant [18 x i8] c"tipc_link_retrans\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_link_retrans = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_link_retrans }, align 4
@__tracepoint_tipc_link_retrans = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_link_retrans, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_link_retrans, ptr null, ptr @__traceiter_tipc_link_retrans, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_link_retrans = internal constant ptr @__tracepoint_tipc_link_retrans, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_link_bc_ack = internal constant [17 x i8] c"tipc_link_bc_ack\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_link_bc_ack = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_link_bc_ack }, align 4
@__tracepoint_tipc_link_bc_ack = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_link_bc_ack, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_link_bc_ack, ptr null, ptr @__traceiter_tipc_link_bc_ack, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_link_bc_ack = internal constant ptr @__tracepoint_tipc_link_bc_ack, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_node_dump = internal constant [15 x i8] c"tipc_node_dump\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_node_dump = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_node_dump }, align 4
@__tracepoint_tipc_node_dump = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_node_dump, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_node_dump, ptr null, ptr @__traceiter_tipc_node_dump, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_node_dump = internal constant ptr @__tracepoint_tipc_node_dump, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_node_create = internal constant [17 x i8] c"tipc_node_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_node_create = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_node_create }, align 4
@__tracepoint_tipc_node_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_node_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_node_create, ptr null, ptr @__traceiter_tipc_node_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_node_create = internal constant ptr @__tracepoint_tipc_node_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_node_delete = internal constant [17 x i8] c"tipc_node_delete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_node_delete = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_node_delete }, align 4
@__tracepoint_tipc_node_delete = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_node_delete, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_node_delete, ptr null, ptr @__traceiter_tipc_node_delete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_node_delete = internal constant ptr @__tracepoint_tipc_node_delete, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_node_lost_contact = internal constant [23 x i8] c"tipc_node_lost_contact\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_node_lost_contact = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_node_lost_contact }, align 4
@__tracepoint_tipc_node_lost_contact = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_node_lost_contact, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_node_lost_contact, ptr null, ptr @__traceiter_tipc_node_lost_contact, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_node_lost_contact = internal constant ptr @__tracepoint_tipc_node_lost_contact, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_node_timeout = internal constant [18 x i8] c"tipc_node_timeout\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_node_timeout = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_node_timeout }, align 4
@__tracepoint_tipc_node_timeout = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_node_timeout, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_node_timeout, ptr null, ptr @__traceiter_tipc_node_timeout, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_node_timeout = internal constant ptr @__tracepoint_tipc_node_timeout, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_node_link_up = internal constant [18 x i8] c"tipc_node_link_up\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_node_link_up = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_node_link_up }, align 4
@__tracepoint_tipc_node_link_up = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_node_link_up, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_node_link_up, ptr null, ptr @__traceiter_tipc_node_link_up, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_node_link_up = internal constant ptr @__tracepoint_tipc_node_link_up, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_node_link_down = internal constant [20 x i8] c"tipc_node_link_down\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_node_link_down = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_node_link_down }, align 4
@__tracepoint_tipc_node_link_down = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_node_link_down, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_node_link_down, ptr null, ptr @__traceiter_tipc_node_link_down, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_node_link_down = internal constant ptr @__tracepoint_tipc_node_link_down, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_node_reset_links = internal constant [22 x i8] c"tipc_node_reset_links\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_node_reset_links = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_node_reset_links }, align 4
@__tracepoint_tipc_node_reset_links = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_node_reset_links, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_node_reset_links, ptr null, ptr @__traceiter_tipc_node_reset_links, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_node_reset_links = internal constant ptr @__tracepoint_tipc_node_reset_links, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_node_check_state = internal constant [22 x i8] c"tipc_node_check_state\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_node_check_state = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_node_check_state }, align 4
@__tracepoint_tipc_node_check_state = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_node_check_state, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_node_check_state, ptr null, ptr @__traceiter_tipc_node_check_state, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_node_check_state = internal constant ptr @__tracepoint_tipc_node_check_state, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_link_fsm = internal constant [14 x i8] c"tipc_link_fsm\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_link_fsm = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_link_fsm }, align 4
@__tracepoint_tipc_link_fsm = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_link_fsm, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_link_fsm, ptr null, ptr @__traceiter_tipc_link_fsm, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_link_fsm = internal constant ptr @__tracepoint_tipc_link_fsm, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_node_fsm = internal constant [14 x i8] c"tipc_node_fsm\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_node_fsm = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_node_fsm }, align 4
@__tracepoint_tipc_node_fsm = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_node_fsm, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_node_fsm, ptr null, ptr @__traceiter_tipc_node_fsm, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_node_fsm = internal constant ptr @__tracepoint_tipc_node_fsm, section "__tracepoints_ptrs", align 4
@__tpstrtab_tipc_l2_device_event = internal constant [21 x i8] c"tipc_l2_device_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tipc_l2_device_event = dso_local global %struct.static_call_key { ptr @__traceiter_tipc_l2_device_event }, align 4
@__tracepoint_tipc_l2_device_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tipc_l2_device_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tipc_l2_device_event, ptr null, ptr @__traceiter_tipc_l2_device_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tipc_l2_device_event = internal constant ptr @__tracepoint_tipc_l2_device_event, section "__tracepoints_ptrs", align 4
@str__tipc__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tipc\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_tipc_skb_class = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_tipc_skb_class = internal global %struct.trace_event_class { ptr @str__tipc__trace_system_name, ptr @trace_event_raw_event_tipc_skb_class, ptr @perf_trace_tipc_skb_class, ptr @trace_event_reg, ptr @trace_event_fields_tipc_skb_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tipc_skb_class, i64 24), ptr getelementptr (i8, ptr @event_class_tipc_skb_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tipc_skb_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tipc_skb_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tipc_skb_class = internal global { [43 x i8], [53 x i8] } { [43 x i8] c"\22%s\0A%s\22, __get_str(header), __get_str(buf)\00", [53 x i8] zeroinitializer }, align 32
@event_tipc_skb_dump = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_skb_class, %union.anon.169 { ptr @__tracepoint_tipc_skb_dump }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_skb_class }, ptr @print_fmt_tipc_skb_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_skb_dump = internal global ptr @event_tipc_skb_dump, section "_ftrace_events", align 4
@event_tipc_proto_build = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_skb_class, %union.anon.169 { ptr @__tracepoint_tipc_proto_build }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_skb_class }, ptr @print_fmt_tipc_skb_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_proto_build = internal global ptr @event_tipc_proto_build, section "_ftrace_events", align 4
@event_tipc_proto_rcv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_skb_class, %union.anon.169 { ptr @__tracepoint_tipc_proto_rcv }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_skb_class }, ptr @print_fmt_tipc_skb_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_proto_rcv = internal global ptr @event_tipc_proto_rcv, section "_ftrace_events", align 4
@trace_event_fields_tipc_list_class = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_tipc_list_class = internal global %struct.trace_event_class { ptr @str__tipc__trace_system_name, ptr @trace_event_raw_event_tipc_list_class, ptr @perf_trace_tipc_list_class, ptr @trace_event_reg, ptr @trace_event_fields_tipc_list_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tipc_list_class, i64 24), ptr getelementptr (i8, ptr @event_class_tipc_list_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tipc_list_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tipc_list_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tipc_list_class = internal global { [43 x i8], [53 x i8] } { [43 x i8] c"\22%s\0A%s\22, __get_str(header), __get_str(buf)\00", [53 x i8] zeroinitializer }, align 32
@event_tipc_list_dump = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_list_class, %union.anon.169 { ptr @__tracepoint_tipc_list_dump }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_list_class }, ptr @print_fmt_tipc_list_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_list_dump = internal global ptr @event_tipc_list_dump, section "_ftrace_events", align 4
@trace_event_fields_tipc_sk_class = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.167 { %struct.anon.168 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_tipc_sk_class = internal global %struct.trace_event_class { ptr @str__tipc__trace_system_name, ptr @trace_event_raw_event_tipc_sk_class, ptr @perf_trace_tipc_sk_class, ptr @trace_event_reg, ptr @trace_event_fields_tipc_sk_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tipc_sk_class, i64 24), ptr getelementptr (i8, ptr @event_class_tipc_sk_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tipc_sk_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tipc_sk_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tipc_sk_class = internal global { [83 x i8], [45 x i8] } { [83 x i8] c"\22<%u> %s\0A%s%s\22, REC->portid, __get_str(header), __get_str(skb_buf), __get_str(buf)\00", [45 x i8] zeroinitializer }, align 32
@event_tipc_sk_dump = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_dump }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_dump = internal global ptr @event_tipc_sk_dump, section "_ftrace_events", align 4
@event_tipc_sk_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_create = internal global ptr @event_tipc_sk_create, section "_ftrace_events", align 4
@event_tipc_sk_sendmcast = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_sendmcast }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_sendmcast = internal global ptr @event_tipc_sk_sendmcast, section "_ftrace_events", align 4
@event_tipc_sk_sendmsg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_sendmsg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_sendmsg = internal global ptr @event_tipc_sk_sendmsg, section "_ftrace_events", align 4
@event_tipc_sk_sendstream = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_sendstream }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_sendstream = internal global ptr @event_tipc_sk_sendstream, section "_ftrace_events", align 4
@event_tipc_sk_poll = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_poll }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_poll = internal global ptr @event_tipc_sk_poll, section "_ftrace_events", align 4
@event_tipc_sk_filter_rcv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_filter_rcv }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_filter_rcv = internal global ptr @event_tipc_sk_filter_rcv, section "_ftrace_events", align 4
@event_tipc_sk_advance_rx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_advance_rx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_advance_rx = internal global ptr @event_tipc_sk_advance_rx, section "_ftrace_events", align 4
@event_tipc_sk_rej_msg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_rej_msg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_rej_msg = internal global ptr @event_tipc_sk_rej_msg, section "_ftrace_events", align 4
@event_tipc_sk_drop_msg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_drop_msg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_drop_msg = internal global ptr @event_tipc_sk_drop_msg, section "_ftrace_events", align 4
@event_tipc_sk_release = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_release = internal global ptr @event_tipc_sk_release, section "_ftrace_events", align 4
@event_tipc_sk_shutdown = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_shutdown }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_shutdown = internal global ptr @event_tipc_sk_shutdown, section "_ftrace_events", align 4
@event_tipc_sk_overlimit1 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_overlimit1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_overlimit1 = internal global ptr @event_tipc_sk_overlimit1, section "_ftrace_events", align 4
@event_tipc_sk_overlimit2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_sk_class, %union.anon.169 { ptr @__tracepoint_tipc_sk_overlimit2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_sk_class }, ptr @print_fmt_tipc_sk_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_sk_overlimit2 = internal global ptr @event_tipc_sk_overlimit2, section "_ftrace_events", align 4
@trace_event_fields_tipc_link_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.167 { %struct.anon.168 { ptr @.str.30, i32 68, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_tipc_link_class = internal global %struct.trace_event_class { ptr @str__tipc__trace_system_name, ptr @trace_event_raw_event_tipc_link_class, ptr @perf_trace_tipc_link_class, ptr @trace_event_reg, ptr @trace_event_fields_tipc_link_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tipc_link_class, i64 24), ptr getelementptr (i8, ptr @event_class_tipc_link_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tipc_link_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tipc_link_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tipc_link_class = internal global { [59 x i8], [37 x i8] } { [59 x i8] c"\22<%s> %s\0A%s\22, REC->name, __get_str(header), __get_str(buf)\00", [37 x i8] zeroinitializer }, align 32
@event_tipc_link_dump = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_link_class, %union.anon.169 { ptr @__tracepoint_tipc_link_dump }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_link_class }, ptr @print_fmt_tipc_link_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_link_dump = internal global ptr @event_tipc_link_dump, section "_ftrace_events", align 4
@event_tipc_link_conges = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_link_class, %union.anon.169 { ptr @__tracepoint_tipc_link_conges }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_link_class }, ptr @print_fmt_tipc_link_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_link_conges = internal global ptr @event_tipc_link_conges, section "_ftrace_events", align 4
@event_tipc_link_timeout = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_link_class, %union.anon.169 { ptr @__tracepoint_tipc_link_timeout }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_link_class }, ptr @print_fmt_tipc_link_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_link_timeout = internal global ptr @event_tipc_link_timeout, section "_ftrace_events", align 4
@event_tipc_link_reset = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_link_class, %union.anon.169 { ptr @__tracepoint_tipc_link_reset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_link_class }, ptr @print_fmt_tipc_link_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_link_reset = internal global ptr @event_tipc_link_reset, section "_ftrace_events", align 4
@event_tipc_link_too_silent = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_link_class, %union.anon.169 { ptr @__tracepoint_tipc_link_too_silent }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_link_class }, ptr @print_fmt_tipc_link_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_link_too_silent = internal global ptr @event_tipc_link_too_silent, section "_ftrace_events", align 4
@trace_event_fields_tipc_link_transmq_class = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.167 { %struct.anon.168 { ptr @.str.30, i32 68, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.167 { %struct.anon.168 { ptr @.str.33, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.167 { %struct.anon.168 { ptr @.str.34, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.167 { %struct.anon.168 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.167 { %struct.anon.168 { ptr @.str.36, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.167 { %struct.anon.168 { ptr @.str.37, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_tipc_link_transmq_class = internal global %struct.trace_event_class { ptr @str__tipc__trace_system_name, ptr @trace_event_raw_event_tipc_link_transmq_class, ptr @perf_trace_tipc_link_transmq_class, ptr @trace_event_reg, ptr @trace_event_fields_tipc_link_transmq_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tipc_link_transmq_class, i64 24), ptr getelementptr (i8, ptr @event_class_tipc_link_transmq_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tipc_link_transmq_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tipc_link_transmq_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tipc_link_transmq_class = internal global { [116 x i8], [44 x i8] } { [116 x i8] c"\22<%s> retrans req: [%u-%u] transmq: %u [%u-%u]\0A\22, REC->name, REC->from, REC->to, REC->len, REC->fseqno, REC->lseqno\00", [44 x i8] zeroinitializer }, align 32
@event_tipc_link_retrans = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_link_transmq_class, %union.anon.169 { ptr @__tracepoint_tipc_link_retrans }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_link_transmq_class }, ptr @print_fmt_tipc_link_transmq_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_link_retrans = internal global ptr @event_tipc_link_retrans, section "_ftrace_events", align 4
@trace_event_type_funcs_tipc_link_bc_ack = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tipc_link_bc_ack, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tipc_link_bc_ack = internal global { [113 x i8], [47 x i8] } { [113 x i8] c"\22<%s> acked: %u gap: %u transmq: %u [%u-%u]\0A\22, REC->name, REC->from, REC->to, REC->len, REC->fseqno, REC->lseqno\00", [47 x i8] zeroinitializer }, align 32
@event_tipc_link_bc_ack = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_link_transmq_class, %union.anon.169 { ptr @__tracepoint_tipc_link_bc_ack }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_link_bc_ack }, ptr @print_fmt_tipc_link_bc_ack, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_link_bc_ack = internal global ptr @event_tipc_link_bc_ack, section "_ftrace_events", align 4
@trace_event_fields_tipc_node_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.167 { %struct.anon.168 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_tipc_node_class = internal global %struct.trace_event_class { ptr @str__tipc__trace_system_name, ptr @trace_event_raw_event_tipc_node_class, ptr @perf_trace_tipc_node_class, ptr @trace_event_reg, ptr @trace_event_fields_tipc_node_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tipc_node_class, i64 24), ptr getelementptr (i8, ptr @event_class_tipc_node_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tipc_node_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tipc_node_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tipc_node_class = internal global { [59 x i8], [37 x i8] } { [59 x i8] c"\22<%x> %s\0A%s\22, REC->addr, __get_str(header), __get_str(buf)\00", [37 x i8] zeroinitializer }, align 32
@event_tipc_node_dump = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_node_class, %union.anon.169 { ptr @__tracepoint_tipc_node_dump }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_node_class }, ptr @print_fmt_tipc_node_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_node_dump = internal global ptr @event_tipc_node_dump, section "_ftrace_events", align 4
@event_tipc_node_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_node_class, %union.anon.169 { ptr @__tracepoint_tipc_node_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_node_class }, ptr @print_fmt_tipc_node_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_node_create = internal global ptr @event_tipc_node_create, section "_ftrace_events", align 4
@event_tipc_node_delete = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_node_class, %union.anon.169 { ptr @__tracepoint_tipc_node_delete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_node_class }, ptr @print_fmt_tipc_node_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_node_delete = internal global ptr @event_tipc_node_delete, section "_ftrace_events", align 4
@event_tipc_node_lost_contact = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_node_class, %union.anon.169 { ptr @__tracepoint_tipc_node_lost_contact }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_node_class }, ptr @print_fmt_tipc_node_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_node_lost_contact = internal global ptr @event_tipc_node_lost_contact, section "_ftrace_events", align 4
@event_tipc_node_timeout = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_node_class, %union.anon.169 { ptr @__tracepoint_tipc_node_timeout }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_node_class }, ptr @print_fmt_tipc_node_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_node_timeout = internal global ptr @event_tipc_node_timeout, section "_ftrace_events", align 4
@event_tipc_node_link_up = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_node_class, %union.anon.169 { ptr @__tracepoint_tipc_node_link_up }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_node_class }, ptr @print_fmt_tipc_node_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_node_link_up = internal global ptr @event_tipc_node_link_up, section "_ftrace_events", align 4
@event_tipc_node_link_down = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_node_class, %union.anon.169 { ptr @__tracepoint_tipc_node_link_down }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_node_class }, ptr @print_fmt_tipc_node_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_node_link_down = internal global ptr @event_tipc_node_link_down, section "_ftrace_events", align 4
@event_tipc_node_reset_links = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_node_class, %union.anon.169 { ptr @__tracepoint_tipc_node_reset_links }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_node_class }, ptr @print_fmt_tipc_node_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_node_reset_links = internal global ptr @event_tipc_node_reset_links, section "_ftrace_events", align 4
@event_tipc_node_check_state = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_node_class, %union.anon.169 { ptr @__tracepoint_tipc_node_check_state }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_node_class }, ptr @print_fmt_tipc_node_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_node_check_state = internal global ptr @event_tipc_node_check_state, section "_ftrace_events", align 4
@trace_event_fields_tipc_fsm_class = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.167 { %struct.anon.168 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.167 { %struct.anon.168 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.167 { %struct.anon.168 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_tipc_fsm_class = internal global %struct.trace_event_class { ptr @str__tipc__trace_system_name, ptr @trace_event_raw_event_tipc_fsm_class, ptr @perf_trace_tipc_fsm_class, ptr @trace_event_reg, ptr @trace_event_fields_tipc_fsm_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tipc_fsm_class, i64 24), ptr getelementptr (i8, ptr @event_class_tipc_fsm_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tipc_fsm_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tipc_fsm_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tipc_fsm_class = internal global { [1576 x i8], [408 x i8] } { [1576 x i8] c"\22<%s> %s--(%s)->%s\0A\22, __get_str(name), __print_symbolic(REC->os, {(0xe), \22ESTABLISHED\22 }, {(0xe << 4), \22ESTABLISHING\22 }, {(0x1 << 8), \22RESET\22 }, {(0x2 << 12), \22RESETTING\22 }, {(0xd << 16), \22PEER_RESET\22 }, {(0xf << 20), \22FAILINGOVER\22 }, {(0xc << 24), \22SYNCHING\22 }, {(0xdd), \22SELF_DOWN_PEER_DOWN\22 }, {(0xaa), \22SELF_UP_PEER_UP\22 }, {(0xd1), \22SELF_DOWN_PEER_LEAVING\22 }, {(0xac), \22SELF_UP_PEER_COMING\22 }, {(0xca), \22SELF_COMING_PEER_UP\22 }, {(0x1d), \22SELF_LEAVING_PEER_DOWN\22 }, {(0xf0), \22FAILINGOVER\22 }, {(0xcc), \22SYNCHING\22 }), __print_symbolic(REC->evt, {(0xec1ab1e), \22ESTABLISH_EVT\22 }, {(0x9eed0e), \22PEER_RESET_EVT\22 }, {(0xfa110e), \22FAILURE_EVT\22 }, {(0x10ca1d0e), \22RESET_EVT\22 }, {(0xfa110bee), \22FAILOVER_BEGIN_EVT\22 }, {(0xfa110ede), \22FAILOVER_END_EVT\22 }, {(0xc1ccbee), \22SYNCH_BEGIN_EVT\22 }, {(0xc1ccede), \22SYNCH_END_EVT\22 }, {(0xece), \22SELF_ESTABL_CONTACT_EVT\22 }, {(0x1ce), \22SELF_LOST_CONTACT_EVT\22 }, {(0x9ece), \22PEER_ESTABL_CONTACT_EVT\22 }, {(0x91ce), \22PEER_LOST_CONTACT_EVT\22 }, {(0xfbe), \22FAILOVER_BEGIN_EVT\22 }, {(0xfee), \22FAILOVER_END_EVT\22 }, {(0xcbe), \22SYNCH_BEGIN_EVT\22 }, {(0xcee), \22SYNCH_END_EVT\22 }), __print_symbolic(REC->ns, {(0xe), \22ESTABLISHED\22 }, {(0xe << 4), \22ESTABLISHING\22 }, {(0x1 << 8), \22RESET\22 }, {(0x2 << 12), \22RESETTING\22 }, {(0xd << 16), \22PEER_RESET\22 }, {(0xf << 20), \22FAILINGOVER\22 }, {(0xc << 24), \22SYNCHING\22 }, {(0xdd), \22SELF_DOWN_PEER_DOWN\22 }, {(0xaa), \22SELF_UP_PEER_UP\22 }, {(0xd1), \22SELF_DOWN_PEER_LEAVING\22 }, {(0xac), \22SELF_UP_PEER_COMING\22 }, {(0xca), \22SELF_COMING_PEER_UP\22 }, {(0x1d), \22SELF_LEAVING_PEER_DOWN\22 }, {(0xf0), \22FAILINGOVER\22 }, {(0xcc), \22SYNCHING\22 })\00", [408 x i8] zeroinitializer }, align 32
@event_tipc_link_fsm = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_fsm_class, %union.anon.169 { ptr @__tracepoint_tipc_link_fsm }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_fsm_class }, ptr @print_fmt_tipc_fsm_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_link_fsm = internal global ptr @event_tipc_link_fsm, section "_ftrace_events", align 4
@event_tipc_node_fsm = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_fsm_class, %union.anon.169 { ptr @__tracepoint_tipc_node_fsm }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_fsm_class }, ptr @print_fmt_tipc_fsm_class, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_node_fsm = internal global ptr @event_tipc_node_fsm, section "_ftrace_events", align 4
@trace_event_fields_tipc_l2_device_event = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.75, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.167 { %struct.anon.168 { ptr @.str.76, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.77, %union.anon.167 { %struct.anon.168 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.78, %union.anon.167 { %struct.anon.168 { ptr @.str.79, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.78, %union.anon.167 { %struct.anon.168 { ptr @.str.80, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.78, %union.anon.167 { %struct.anon.168 { ptr @.str.81, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_tipc_l2_device_event = internal global %struct.trace_event_class { ptr @str__tipc__trace_system_name, ptr @trace_event_raw_event_tipc_l2_device_event, ptr @perf_trace_tipc_l2_device_event, ptr @trace_event_reg, ptr @trace_event_fields_tipc_l2_device_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tipc_l2_device_event, i64 24), ptr getelementptr (i8, ptr @event_class_tipc_l2_device_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tipc_l2_device_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tipc_l2_device_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tipc_l2_device_event = internal global { [500 x i8], [108 x i8] } { [500 x i8] c"\22%s on: <%s>/<%s> oper: %s carrier: %s bearer: %s\0A\22, __print_symbolic(REC->evt, {(NETDEV_CHANGE), \22NETDEV_CHANGE\22 }, {(NETDEV_GOING_DOWN), \22NETDEV_GOING_DOWN\22 }, {(NETDEV_UP), \22NETDEV_UP\22 }, {(NETDEV_CHANGEMTU), \22NETDEV_CHANGEMTU\22 }, {(NETDEV_CHANGEADDR), \22NETDEV_CHANGEADDR\22 }, {(NETDEV_UNREGISTER), \22NETDEV_UNREGISTER\22 }, {(NETDEV_CHANGENAME), \22NETDEV_CHANGENAME\22 }), __get_str(dev_name), __get_str(b_name), (REC->oper) ? \22up\22 : \22down\22, (REC->carrier) ? \22ok\22 : \22notok\22, (REC->b_up) ? \22up\22 : \22down\22\00", [108 x i8] zeroinitializer }, align 32
@event_tipc_l2_device_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tipc_l2_device_event, %union.anon.169 { ptr @__tracepoint_tipc_l2_device_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tipc_l2_device_event }, ptr @print_fmt_tipc_l2_device_event, ptr null, %union.anon.170 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tipc_l2_device_event = internal global ptr @event_tipc_l2_device_event, section "_ftrace_events", align 4
@__bpf_trace_tp_map_tipc_skb_dump = internal global %union.anon.171 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_skb_dump, ptr @__bpf_trace_tipc_skb_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_proto_build = internal global %union.anon.172 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_proto_build, ptr @__bpf_trace_tipc_skb_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_proto_rcv = internal global %union.anon.173 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_proto_rcv, ptr @__bpf_trace_tipc_skb_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_list_dump = internal global %union.anon.174 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_list_dump, ptr @__bpf_trace_tipc_list_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_dump = internal global %union.anon.175 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_dump, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_create = internal global %union.anon.176 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_create, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_sendmcast = internal global %union.anon.177 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_sendmcast, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_sendmsg = internal global %union.anon.178 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_sendmsg, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_sendstream = internal global %union.anon.179 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_sendstream, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_poll = internal global %union.anon.180 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_poll, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_filter_rcv = internal global %union.anon.181 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_filter_rcv, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_advance_rx = internal global %union.anon.182 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_advance_rx, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_rej_msg = internal global %union.anon.183 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_rej_msg, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_drop_msg = internal global %union.anon.184 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_drop_msg, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_release = internal global %union.anon.185 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_release, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_shutdown = internal global %union.anon.186 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_shutdown, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_overlimit1 = internal global %union.anon.187 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_overlimit1, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_sk_overlimit2 = internal global %union.anon.188 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_sk_overlimit2, ptr @__bpf_trace_tipc_sk_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_link_dump = internal global %union.anon.189 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_link_dump, ptr @__bpf_trace_tipc_link_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_link_conges = internal global %union.anon.190 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_link_conges, ptr @__bpf_trace_tipc_link_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_link_timeout = internal global %union.anon.191 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_link_timeout, ptr @__bpf_trace_tipc_link_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_link_reset = internal global %union.anon.192 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_link_reset, ptr @__bpf_trace_tipc_link_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_link_too_silent = internal global %union.anon.193 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_link_too_silent, ptr @__bpf_trace_tipc_link_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_link_retrans = internal global %union.anon.194 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_link_retrans, ptr @__bpf_trace_tipc_link_transmq_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_link_bc_ack = internal global %union.anon.195 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_link_bc_ack, ptr @__bpf_trace_tipc_link_transmq_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_node_dump = internal global %union.anon.196 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_node_dump, ptr @__bpf_trace_tipc_node_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_node_create = internal global %union.anon.197 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_node_create, ptr @__bpf_trace_tipc_node_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_node_delete = internal global %union.anon.198 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_node_delete, ptr @__bpf_trace_tipc_node_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_node_lost_contact = internal global %union.anon.199 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_node_lost_contact, ptr @__bpf_trace_tipc_node_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_node_timeout = internal global %union.anon.200 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_node_timeout, ptr @__bpf_trace_tipc_node_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_node_link_up = internal global %union.anon.201 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_node_link_up, ptr @__bpf_trace_tipc_node_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_node_link_down = internal global %union.anon.202 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_node_link_down, ptr @__bpf_trace_tipc_node_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_node_reset_links = internal global %union.anon.203 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_node_reset_links, ptr @__bpf_trace_tipc_node_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_node_check_state = internal global %union.anon.204 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_node_check_state, ptr @__bpf_trace_tipc_node_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_link_fsm = internal global %union.anon.205 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_link_fsm, ptr @__bpf_trace_tipc_fsm_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_node_fsm = internal global %union.anon.206 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_node_fsm, ptr @__bpf_trace_tipc_fsm_class, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tipc_l2_device_event = internal global %union.anon.207 { %struct.bpf_raw_event_map { ptr @__tracepoint_tipc_l2_device_event, ptr @__bpf_trace_tipc_l2_device_event, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@sysctl_tipc_sk_filter = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, section ".data..read_mostly", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msg: (null)\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msg: %u\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %x\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %c\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" | %u\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"skb: %s\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"n/a\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %p\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %llx\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %llx\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cb[]: %u\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %u\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(null)\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"len = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  head \00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  tail \00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  .\0A  .\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"  #%d \00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"header\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s\0A%s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"portid\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"skb_buf\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"<%u> %s\0A%s%s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[68]\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"<%s> %s\0A%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"from\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"to\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fseqno\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lseqno\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"<%s> retrans req: [%u-%u] transmq: %u [%u-%u]\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@trace_raw_output_tipc_link_bc_ack.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/tipc/./trace.h\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tipc_link_bc_ack\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"<%s> acked: %u gap: %u transmq: %u [%u-%u]\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"<%x> %s\0A%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"os\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ns\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"evt\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"<%s> %s--(%s)->%s\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@trace_raw_output_tipc_fsm_class.symbols = internal constant { [16 x %struct.trace_print_flags], [32 x i8] } { [16 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 14, ptr @.str.48 }, %struct.trace_print_flags { i32 224, ptr @.str.49 }, %struct.trace_print_flags { i32 256, ptr @.str.50 }, %struct.trace_print_flags { i32 8192, ptr @.str.51 }, %struct.trace_print_flags { i32 851968, ptr @.str.52 }, %struct.trace_print_flags { i32 15728640, ptr @.str.53 }, %struct.trace_print_flags { i32 201326592, ptr @.str.54 }, %struct.trace_print_flags { i32 221, ptr @.str.55 }, %struct.trace_print_flags { i32 170, ptr @.str.56 }, %struct.trace_print_flags { i32 209, ptr @.str.57 }, %struct.trace_print_flags { i32 172, ptr @.str.58 }, %struct.trace_print_flags { i32 202, ptr @.str.59 }, %struct.trace_print_flags { i32 29, ptr @.str.60 }, %struct.trace_print_flags { i32 240, ptr @.str.53 }, %struct.trace_print_flags { i32 204, ptr @.str.54 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ESTABLISHED\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ESTABLISHING\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RESET\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RESETTING\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PEER_RESET\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FAILINGOVER\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYNCHING\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SELF_DOWN_PEER_DOWN\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SELF_UP_PEER_UP\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SELF_DOWN_PEER_LEAVING\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SELF_UP_PEER_COMING\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SELF_COMING_PEER_UP\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SELF_LEAVING_PEER_DOWN\00", [41 x i8] zeroinitializer }, align 32
@trace_raw_output_tipc_fsm_class.symbols.61 = internal constant { [17 x %struct.trace_print_flags], [56 x i8] } { [17 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 247573278, ptr @.str.62 }, %struct.trace_print_flags { i32 10415374, ptr @.str.63 }, %struct.trace_print_flags { i32 16388366, ptr @.str.64 }, %struct.trace_print_flags { i32 281681166, ptr @.str.65 }, %struct.trace_print_flags { i32 -99546130, ptr @.str.66 }, %struct.trace_print_flags { i32 -99545378, ptr @.str.67 }, %struct.trace_print_flags { i32 203213806, ptr @.str.68 }, %struct.trace_print_flags { i32 203214558, ptr @.str.69 }, %struct.trace_print_flags { i32 3790, ptr @.str.70 }, %struct.trace_print_flags { i32 462, ptr @.str.71 }, %struct.trace_print_flags { i32 40654, ptr @.str.72 }, %struct.trace_print_flags { i32 37326, ptr @.str.73 }, %struct.trace_print_flags { i32 4030, ptr @.str.66 }, %struct.trace_print_flags { i32 4078, ptr @.str.67 }, %struct.trace_print_flags { i32 3262, ptr @.str.68 }, %struct.trace_print_flags { i32 3310, ptr @.str.69 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ESTABLISH_EVT\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PEER_RESET_EVT\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FAILURE_EVT\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RESET_EVT\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FAILOVER_BEGIN_EVT\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FAILOVER_END_EVT\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SYNCH_BEGIN_EVT\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SYNCH_END_EVT\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SELF_ESTABL_CONTACT_EVT\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SELF_LOST_CONTACT_EVT\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PEER_ESTABL_CONTACT_EVT\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PEER_LOST_CONTACT_EVT\00", [42 x i8] zeroinitializer }, align 32
@trace_raw_output_tipc_fsm_class.symbols.74 = internal constant { [16 x %struct.trace_print_flags], [32 x i8] } { [16 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 14, ptr @.str.48 }, %struct.trace_print_flags { i32 224, ptr @.str.49 }, %struct.trace_print_flags { i32 256, ptr @.str.50 }, %struct.trace_print_flags { i32 8192, ptr @.str.51 }, %struct.trace_print_flags { i32 851968, ptr @.str.52 }, %struct.trace_print_flags { i32 15728640, ptr @.str.53 }, %struct.trace_print_flags { i32 201326592, ptr @.str.54 }, %struct.trace_print_flags { i32 221, ptr @.str.55 }, %struct.trace_print_flags { i32 170, ptr @.str.56 }, %struct.trace_print_flags { i32 209, ptr @.str.57 }, %struct.trace_print_flags { i32 172, ptr @.str.58 }, %struct.trace_print_flags { i32 202, ptr @.str.59 }, %struct.trace_print_flags { i32 29, ptr @.str.60 }, %struct.trace_print_flags { i32 240, ptr @.str.53 }, %struct.trace_print_flags { i32 204, ptr @.str.54 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_name\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"b_name\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"b_up\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"carrier\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"oper\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s on: <%s>/<%s> oper: %s carrier: %s bearer: %s\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@trace_raw_output_tipc_l2_device_event.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 4, ptr @.str.83 }, %struct.trace_print_flags { i32 10, ptr @.str.84 }, %struct.trace_print_flags { i32 1, ptr @.str.85 }, %struct.trace_print_flags { i32 7, ptr @.str.86 }, %struct.trace_print_flags { i32 8, ptr @.str.87 }, %struct.trace_print_flags { i32 6, ptr @.str.88 }, %struct.trace_print_flags { i32 11, ptr @.str.89 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NETDEV_CHANGE\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NETDEV_GOING_DOWN\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NETDEV_UP\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NETDEV_CHANGEMTU\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NETDEV_CHANGEADDR\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NETDEV_UNREGISTER\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NETDEV_CHANGENAME\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"notok\00", [26 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7, i64 8, i64 14]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.95 = private unnamed_addr constant [29 x i8] c"str__tipc__trace_system_name\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 36, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [34 x i8] c"trace_event_fields_tipc_skb_class\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_tipc_skb_class\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [25 x i8] c"print_fmt_tipc_skb_class\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"event_tipc_skb_dump\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 159, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"event_tipc_proto_build\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 160, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"event_tipc_proto_rcv\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 161, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [35 x i8] c"trace_event_fields_tipc_list_class\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_tipc_list_class\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [26 x i8] c"print_fmt_tipc_list_class\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 163, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"event_tipc_list_dump\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 186, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [33 x i8] c"trace_event_fields_tipc_sk_class\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_tipc_sk_class\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [24 x i8] c"print_fmt_tipc_sk_class\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [19 x i8] c"event_tipc_sk_dump\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 222, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"event_tipc_sk_create\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 223, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [24 x i8] c"event_tipc_sk_sendmcast\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 224, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"event_tipc_sk_sendmsg\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 225, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant [25 x i8] c"event_tipc_sk_sendstream\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 226, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"event_tipc_sk_poll\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 227, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant [25 x i8] c"event_tipc_sk_filter_rcv\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 228, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [25 x i8] c"event_tipc_sk_advance_rx\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 229, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant [22 x i8] c"event_tipc_sk_rej_msg\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 230, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant [23 x i8] c"event_tipc_sk_drop_msg\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 231, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [22 x i8] c"event_tipc_sk_release\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 232, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant [23 x i8] c"event_tipc_sk_shutdown\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 233, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant [25 x i8] c"event_tipc_sk_overlimit1\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 241, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [25 x i8] c"event_tipc_sk_overlimit2\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 242, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [35 x i8] c"trace_event_fields_tipc_link_class\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_tipc_link_class\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"print_fmt_tipc_link_class\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"event_tipc_link_dump\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 270, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant [23 x i8] c"event_tipc_link_conges\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 271, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant [24 x i8] c"event_tipc_link_timeout\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 272, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [22 x i8] c"event_tipc_link_reset\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 273, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant [27 x i8] c"event_tipc_link_too_silent\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 280, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant [43 x i8] c"trace_event_fields_tipc_link_transmq_class\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_tipc_link_transmq_class\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [34 x i8] c"print_fmt_tipc_link_transmq_class\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [24 x i8] c"event_tipc_link_retrans\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 313, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_tipc_link_bc_ack\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [27 x i8] c"print_fmt_tipc_link_bc_ack\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [23 x i8] c"event_tipc_link_bc_ack\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [35 x i8] c"trace_event_fields_tipc_node_class\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_tipc_node_class\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [26 x i8] c"print_fmt_tipc_node_class\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [21 x i8] c"event_tipc_node_dump\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 353, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant [23 x i8] c"event_tipc_node_create\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 354, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant [23 x i8] c"event_tipc_node_delete\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 355, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant [29 x i8] c"event_tipc_node_lost_contact\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 356, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant [24 x i8] c"event_tipc_node_timeout\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 357, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant [24 x i8] c"event_tipc_node_link_up\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 358, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant [26 x i8] c"event_tipc_node_link_down\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 359, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant [28 x i8] c"event_tipc_node_reset_links\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 360, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant [28 x i8] c"event_tipc_node_check_state\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 361, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant [34 x i8] c"trace_event_fields_tipc_fsm_class\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_tipc_fsm_class\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [25 x i8] c"print_fmt_tipc_fsm_class\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c"event_tipc_link_fsm\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 392, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant [20 x i8] c"event_tipc_node_fsm\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 393, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant [40 x i8] c"trace_event_fields_tipc_l2_device_event\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_tipc_l2_device_event\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [31 x i8] c"print_fmt_tipc_l2_device_event\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [27 x i8] c"event_tipc_l2_device_event\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 61, i32 27 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 69, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 70, i32 34 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 73, i32 34 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 80, i32 35 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 95, i32 35 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 127, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 132, i32 34 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 133, i32 40 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 139, i32 34 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 141, i32 34 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 143, i32 34 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 147, i32 34 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 153, i32 34 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 174, i32 27 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 179, i32 26 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 186, i32 35 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 190, i32 36 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 198, i32 37 }
@___asan_gen_.345 = private constant [20 x i8] c"../net/tipc/trace.c\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 201, i32 36 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 136, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 188, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 244, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 282, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 319, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 327, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 363, i32 1 }
@___asan_gen_.539 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [22 x i8] c"../net/tipc/./trace.h\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 395, i32 1 }
@llvm.compiler.used = appending global [316 x ptr] [ptr @__bpf_trace_tp_map_tipc_l2_device_event, ptr @__bpf_trace_tp_map_tipc_link_bc_ack, ptr @__bpf_trace_tp_map_tipc_link_conges, ptr @__bpf_trace_tp_map_tipc_link_dump, ptr @__bpf_trace_tp_map_tipc_link_fsm, ptr @__bpf_trace_tp_map_tipc_link_reset, ptr @__bpf_trace_tp_map_tipc_link_retrans, ptr @__bpf_trace_tp_map_tipc_link_timeout, ptr @__bpf_trace_tp_map_tipc_link_too_silent, ptr @__bpf_trace_tp_map_tipc_list_dump, ptr @__bpf_trace_tp_map_tipc_node_check_state, ptr @__bpf_trace_tp_map_tipc_node_create, ptr @__bpf_trace_tp_map_tipc_node_delete, ptr @__bpf_trace_tp_map_tipc_node_dump, ptr @__bpf_trace_tp_map_tipc_node_fsm, ptr @__bpf_trace_tp_map_tipc_node_link_down, ptr @__bpf_trace_tp_map_tipc_node_link_up, ptr @__bpf_trace_tp_map_tipc_node_lost_contact, ptr @__bpf_trace_tp_map_tipc_node_reset_links, ptr @__bpf_trace_tp_map_tipc_node_timeout, ptr @__bpf_trace_tp_map_tipc_proto_build, ptr @__bpf_trace_tp_map_tipc_proto_rcv, ptr @__bpf_trace_tp_map_tipc_sk_advance_rx, ptr @__bpf_trace_tp_map_tipc_sk_create, ptr @__bpf_trace_tp_map_tipc_sk_drop_msg, ptr @__bpf_trace_tp_map_tipc_sk_dump, ptr @__bpf_trace_tp_map_tipc_sk_filter_rcv, ptr @__bpf_trace_tp_map_tipc_sk_overlimit1, ptr @__bpf_trace_tp_map_tipc_sk_overlimit2, ptr @__bpf_trace_tp_map_tipc_sk_poll, ptr @__bpf_trace_tp_map_tipc_sk_rej_msg, ptr @__bpf_trace_tp_map_tipc_sk_release, ptr @__bpf_trace_tp_map_tipc_sk_sendmcast, ptr @__bpf_trace_tp_map_tipc_sk_sendmsg, ptr @__bpf_trace_tp_map_tipc_sk_sendstream, ptr @__bpf_trace_tp_map_tipc_sk_shutdown, ptr @__bpf_trace_tp_map_tipc_skb_dump, ptr @__event_tipc_l2_device_event, ptr @__event_tipc_link_bc_ack, ptr @__event_tipc_link_conges, ptr @__event_tipc_link_dump, ptr @__event_tipc_link_fsm, ptr @__event_tipc_link_reset, ptr @__event_tipc_link_retrans, ptr @__event_tipc_link_timeout, ptr @__event_tipc_link_too_silent, ptr @__event_tipc_list_dump, ptr @__event_tipc_node_check_state, ptr @__event_tipc_node_create, ptr @__event_tipc_node_delete, ptr @__event_tipc_node_dump, ptr @__event_tipc_node_fsm, ptr @__event_tipc_node_link_down, ptr @__event_tipc_node_link_up, ptr @__event_tipc_node_lost_contact, ptr @__event_tipc_node_reset_links, ptr @__event_tipc_node_timeout, ptr @__event_tipc_proto_build, ptr @__event_tipc_proto_rcv, ptr @__event_tipc_sk_advance_rx, ptr @__event_tipc_sk_create, ptr @__event_tipc_sk_drop_msg, ptr @__event_tipc_sk_dump, ptr @__event_tipc_sk_filter_rcv, ptr @__event_tipc_sk_overlimit1, ptr @__event_tipc_sk_overlimit2, ptr @__event_tipc_sk_poll, ptr @__event_tipc_sk_rej_msg, ptr @__event_tipc_sk_release, ptr @__event_tipc_sk_sendmcast, ptr @__event_tipc_sk_sendmsg, ptr @__event_tipc_sk_sendstream, ptr @__event_tipc_sk_shutdown, ptr @__event_tipc_skb_dump, ptr @__tracepoint_ptr_tipc_l2_device_event, ptr @__tracepoint_ptr_tipc_link_bc_ack, ptr @__tracepoint_ptr_tipc_link_conges, ptr @__tracepoint_ptr_tipc_link_dump, ptr @__tracepoint_ptr_tipc_link_fsm, ptr @__tracepoint_ptr_tipc_link_reset, ptr @__tracepoint_ptr_tipc_link_retrans, ptr @__tracepoint_ptr_tipc_link_timeout, ptr @__tracepoint_ptr_tipc_link_too_silent, ptr @__tracepoint_ptr_tipc_list_dump, ptr @__tracepoint_ptr_tipc_node_check_state, ptr @__tracepoint_ptr_tipc_node_create, ptr @__tracepoint_ptr_tipc_node_delete, ptr @__tracepoint_ptr_tipc_node_dump, ptr @__tracepoint_ptr_tipc_node_fsm, ptr @__tracepoint_ptr_tipc_node_link_down, ptr @__tracepoint_ptr_tipc_node_link_up, ptr @__tracepoint_ptr_tipc_node_lost_contact, ptr @__tracepoint_ptr_tipc_node_reset_links, ptr @__tracepoint_ptr_tipc_node_timeout, ptr @__tracepoint_ptr_tipc_proto_build, ptr @__tracepoint_ptr_tipc_proto_rcv, ptr @__tracepoint_ptr_tipc_sk_advance_rx, ptr @__tracepoint_ptr_tipc_sk_create, ptr @__tracepoint_ptr_tipc_sk_drop_msg, ptr @__tracepoint_ptr_tipc_sk_dump, ptr @__tracepoint_ptr_tipc_sk_filter_rcv, ptr @__tracepoint_ptr_tipc_sk_overlimit1, ptr @__tracepoint_ptr_tipc_sk_overlimit2, ptr @__tracepoint_ptr_tipc_sk_poll, ptr @__tracepoint_ptr_tipc_sk_rej_msg, ptr @__tracepoint_ptr_tipc_sk_release, ptr @__tracepoint_ptr_tipc_sk_sendmcast, ptr @__tracepoint_ptr_tipc_sk_sendmsg, ptr @__tracepoint_ptr_tipc_sk_sendstream, ptr @__tracepoint_ptr_tipc_sk_shutdown, ptr @__tracepoint_ptr_tipc_skb_dump, ptr @__tracepoint_tipc_l2_device_event, ptr @__tracepoint_tipc_link_bc_ack, ptr @__tracepoint_tipc_link_conges, ptr @__tracepoint_tipc_link_dump, ptr @__tracepoint_tipc_link_fsm, ptr @__tracepoint_tipc_link_reset, ptr @__tracepoint_tipc_link_retrans, ptr @__tracepoint_tipc_link_timeout, ptr @__tracepoint_tipc_link_too_silent, ptr @__tracepoint_tipc_list_dump, ptr @__tracepoint_tipc_node_check_state, ptr @__tracepoint_tipc_node_create, ptr @__tracepoint_tipc_node_delete, ptr @__tracepoint_tipc_node_dump, ptr @__tracepoint_tipc_node_fsm, ptr @__tracepoint_tipc_node_link_down, ptr @__tracepoint_tipc_node_link_up, ptr @__tracepoint_tipc_node_lost_contact, ptr @__tracepoint_tipc_node_reset_links, ptr @__tracepoint_tipc_node_timeout, ptr @__tracepoint_tipc_proto_build, ptr @__tracepoint_tipc_proto_rcv, ptr @__tracepoint_tipc_sk_advance_rx, ptr @__tracepoint_tipc_sk_create, ptr @__tracepoint_tipc_sk_drop_msg, ptr @__tracepoint_tipc_sk_dump, ptr @__tracepoint_tipc_sk_filter_rcv, ptr @__tracepoint_tipc_sk_overlimit1, ptr @__tracepoint_tipc_sk_overlimit2, ptr @__tracepoint_tipc_sk_poll, ptr @__tracepoint_tipc_sk_rej_msg, ptr @__tracepoint_tipc_sk_release, ptr @__tracepoint_tipc_sk_sendmcast, ptr @__tracepoint_tipc_sk_sendmsg, ptr @__tracepoint_tipc_sk_sendstream, ptr @__tracepoint_tipc_sk_shutdown, ptr @__tracepoint_tipc_skb_dump, ptr @event_class_tipc_fsm_class, ptr @event_class_tipc_l2_device_event, ptr @event_class_tipc_link_class, ptr @event_class_tipc_link_transmq_class, ptr @event_class_tipc_list_class, ptr @event_class_tipc_node_class, ptr @event_class_tipc_sk_class, ptr @event_class_tipc_skb_class, ptr @event_tipc_l2_device_event, ptr @event_tipc_link_bc_ack, ptr @event_tipc_link_conges, ptr @event_tipc_link_dump, ptr @event_tipc_link_fsm, ptr @event_tipc_link_reset, ptr @event_tipc_link_retrans, ptr @event_tipc_link_timeout, ptr @event_tipc_link_too_silent, ptr @event_tipc_list_dump, ptr @event_tipc_node_check_state, ptr @event_tipc_node_create, ptr @event_tipc_node_delete, ptr @event_tipc_node_dump, ptr @event_tipc_node_fsm, ptr @event_tipc_node_link_down, ptr @event_tipc_node_link_up, ptr @event_tipc_node_lost_contact, ptr @event_tipc_node_reset_links, ptr @event_tipc_node_timeout, ptr @event_tipc_proto_build, ptr @event_tipc_proto_rcv, ptr @event_tipc_sk_advance_rx, ptr @event_tipc_sk_create, ptr @event_tipc_sk_drop_msg, ptr @event_tipc_sk_dump, ptr @event_tipc_sk_filter_rcv, ptr @event_tipc_sk_overlimit1, ptr @event_tipc_sk_overlimit2, ptr @event_tipc_sk_poll, ptr @event_tipc_sk_rej_msg, ptr @event_tipc_sk_release, ptr @event_tipc_sk_sendmcast, ptr @event_tipc_sk_sendmsg, ptr @event_tipc_sk_sendstream, ptr @event_tipc_sk_shutdown, ptr @event_tipc_skb_dump, ptr @str__tipc__trace_system_name, ptr @trace_event_fields_tipc_skb_class, ptr @trace_event_type_funcs_tipc_skb_class, ptr @print_fmt_tipc_skb_class, ptr @trace_event_fields_tipc_list_class, ptr @trace_event_type_funcs_tipc_list_class, ptr @print_fmt_tipc_list_class, ptr @trace_event_fields_tipc_sk_class, ptr @trace_event_type_funcs_tipc_sk_class, ptr @print_fmt_tipc_sk_class, ptr @trace_event_fields_tipc_link_class, ptr @trace_event_type_funcs_tipc_link_class, ptr @print_fmt_tipc_link_class, ptr @trace_event_fields_tipc_link_transmq_class, ptr @trace_event_type_funcs_tipc_link_transmq_class, ptr @print_fmt_tipc_link_transmq_class, ptr @trace_event_type_funcs_tipc_link_bc_ack, ptr @print_fmt_tipc_link_bc_ack, ptr @trace_event_fields_tipc_node_class, ptr @trace_event_type_funcs_tipc_node_class, ptr @print_fmt_tipc_node_class, ptr @trace_event_fields_tipc_fsm_class, ptr @trace_event_type_funcs_tipc_fsm_class, ptr @print_fmt_tipc_fsm_class, ptr @trace_event_fields_tipc_l2_device_event, ptr @trace_event_type_funcs_tipc_l2_device_event, ptr @print_fmt_tipc_l2_device_event, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @trace_raw_output_tipc_fsm_class.symbols, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @trace_raw_output_tipc_fsm_class.symbols.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @trace_raw_output_tipc_fsm_class.symbols.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @trace_raw_output_tipc_l2_device_event.symbols, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__tipc__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tipc_skb_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tipc_skb_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tipc_skb_class to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_skb_dump to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_proto_build to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_proto_rcv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tipc_list_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tipc_list_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tipc_list_class to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_list_dump to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tipc_sk_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tipc_sk_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tipc_sk_class to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_dump to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_sendmcast to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_sendmsg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_sendstream to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_poll to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_filter_rcv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_advance_rx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_rej_msg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_drop_msg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_release to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_shutdown to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_overlimit1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_sk_overlimit2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tipc_link_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tipc_link_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tipc_link_class to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_link_dump to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_link_conges to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_link_timeout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_link_reset to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_link_too_silent to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tipc_link_transmq_class to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tipc_link_transmq_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tipc_link_transmq_class to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_link_retrans to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tipc_link_bc_ack to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tipc_link_bc_ack to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_link_bc_ack to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tipc_node_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tipc_node_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tipc_node_class to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_node_dump to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_node_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_node_delete to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_node_lost_contact to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_node_timeout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_node_link_up to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_node_link_down to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_node_reset_links to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_node_check_state to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tipc_fsm_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tipc_fsm_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tipc_fsm_class to i32), i32 1576, i32 1984, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_link_fsm to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_node_fsm to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tipc_l2_device_event to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tipc_l2_device_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tipc_l2_device_event to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tipc_l2_device_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tipc_fsm_class.symbols to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tipc_fsm_class.symbols.61 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tipc_fsm_class.symbols.74 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tipc_l2_device_event.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_skb_dump(ptr nocapture readnone %__data, ptr noundef %skb, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_skb_dump, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %skb, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_proto_build(ptr nocapture readnone %__data, ptr noundef %skb, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_proto_build, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %skb, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_proto_rcv(ptr nocapture readnone %__data, ptr noundef %skb, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_proto_rcv, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %skb, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_list_dump(ptr nocapture readnone %__data, ptr noundef %list, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_list_dump, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %list, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_dump(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_dump, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_create(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_create, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_sendmcast(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_sendmcast, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_sendmsg(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_sendmsg, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_sendstream(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_sendstream, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_poll(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_poll, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_filter_rcv(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_filter_rcv, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_advance_rx(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_advance_rx, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_rej_msg(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_rej_msg, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_drop_msg(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_drop_msg, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_release(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_release, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_shutdown(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_shutdown, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_overlimit1(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_overlimit1, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_sk_overlimit2(ptr nocapture readnone %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_sk_overlimit2, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_link_dump(ptr nocapture readnone %__data, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_link_dump, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_link_conges(ptr nocapture readnone %__data, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_link_conges, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_link_timeout(ptr nocapture readnone %__data, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_link_timeout, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_link_reset(ptr nocapture readnone %__data, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_link_reset, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_link_too_silent(ptr nocapture readnone %__data, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_link_too_silent, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_link_retrans(ptr nocapture readnone %__data, ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_link_retrans, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_link_bc_ack(ptr nocapture readnone %__data, ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_link_bc_ack, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_node_dump(ptr nocapture readnone %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_node_dump, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_node_create(ptr nocapture readnone %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_node_create, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_node_delete(ptr nocapture readnone %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_node_delete, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_node_lost_contact(ptr nocapture readnone %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_node_lost_contact, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_node_timeout(ptr nocapture readnone %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_node_timeout, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_node_link_up(ptr nocapture readnone %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_node_link_up, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_node_link_down(ptr nocapture readnone %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_node_link_down, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_node_reset_links(ptr nocapture readnone %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_node_reset_links, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_node_check_state(ptr nocapture readnone %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_node_check_state, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_link_fsm(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_link_fsm, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_node_fsm(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_node_fsm, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tipc_l2_device_event(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %b, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tipc_l2_device_event, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %b, i32 noundef %evt) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tipc_skb_class(ptr noundef %__data, ptr noundef %skb, i1 noundef zeroext %more, ptr noundef readonly %header) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !468

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !469

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i31 = icmp eq ptr %header, null
  %spec.select.i = select i1 %tobool.not.i31, ptr @.str.20, ptr %header
  %call.i32 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = add i32 %call.i32, 1
  %cond7.i = select i1 %more, i32 200, i32 100
  %add13.i = or i32 %cond7.i, 16
  %add = add i32 %add13.i, %add.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add9.i = add i32 %call.i32, 17
  %shl10.i = shl nuw nsw i32 %cond7.i, 16
  %or12.i = or i32 %add9.i, %shl10.i
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 16
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_skb_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_header, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_skb_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or12.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %and13 = and i32 %add9.i, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %call15 = call i32 @tipc_skb_dump(ptr noundef %skb, i1 noundef zeroext %more, ptr noundef %add.ptr14)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tipc_skb_class(ptr noundef %__data, ptr noundef %skb, i1 noundef zeroext %more, ptr noundef readonly %header) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !470
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !470
  %tobool.not.i = icmp eq ptr %header, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %header
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = add i32 %call.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 16
  %cond7.i = select i1 %more, i32 200, i32 100
  %add9.i = add i32 %call.i, 17
  %shl10.i = shl nuw nsw i32 %cond7.i, 16
  %or12.i = or i32 %add9.i, %shl10.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !458) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i55.not = icmp eq ptr %15, null
  br i1 %tobool.not.i55.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %add13.i = add nuw nsw i32 %cond7.i, 27
  %add13 = add i32 %add13.i, %add.i
  %and = and i32 %add13, -8
  %sub = add i32 %and, -4
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !458) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_skb_class, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_header, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_skb_class, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or12.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call14, i32 16
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %and25 = and i32 %add9.i, 65535
  %add.ptr26 = getelementptr i8, ptr %call14, i32 %and25
  %call27 = call i32 @tipc_skb_dump(ptr noundef %skb, i1 noundef zeroext %more, ptr noundef %add.ptr26)
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef %sub, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tipc_list_class(ptr noundef %__data, ptr noundef %list, i1 noundef zeroext %more, ptr noundef readonly %header) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !468

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !469

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i31 = icmp eq ptr %header, null
  %spec.select.i = select i1 %tobool.not.i31, ptr @.str.20, ptr %header
  %call.i32 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = add i32 %call.i32, 1
  %cond7.i = select i1 %more, i32 1100, i32 300
  %add13.i = or i32 %cond7.i, 16
  %add = add i32 %add13.i, %add.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add9.i = add i32 %call.i32, 17
  %shl10.i = shl nuw nsw i32 %cond7.i, 16
  %or12.i = or i32 %add9.i, %shl10.i
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 16
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_list_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_header, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_list_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or12.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %and13 = and i32 %add9.i, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %call15 = call i32 @tipc_list_dump(ptr noundef %list, i1 noundef zeroext %more, ptr noundef %add.ptr14)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tipc_list_class(ptr noundef %__data, ptr noundef %list, i1 noundef zeroext %more, ptr noundef readonly %header) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !470
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !470
  %tobool.not.i = icmp eq ptr %header, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %header
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = add i32 %call.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 16
  %cond7.i = select i1 %more, i32 1100, i32 300
  %add9.i = add i32 %call.i, 17
  %shl10.i = shl nuw nsw i32 %cond7.i, 16
  %or12.i = or i32 %add9.i, %shl10.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !458) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i55.not = icmp eq ptr %15, null
  br i1 %tobool.not.i55.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %add13.i = add nuw nsw i32 %cond7.i, 27
  %add13 = add i32 %add13.i, %add.i
  %and = and i32 %add13, -8
  %sub = add i32 %and, -4
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !458) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_list_class, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_header, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_list_class, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or12.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call14, i32 16
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %and25 = and i32 %add9.i, 65535
  %add.ptr26 = getelementptr i8, ptr %call14, i32 %and25
  %call27 = call i32 @tipc_list_dump(ptr noundef %list, i1 noundef zeroext %more, ptr noundef %add.ptr26)
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef %sub, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tipc_sk_class(ptr noundef %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef readonly %header) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !468

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !469

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i49 = icmp eq ptr %header, null
  %spec.select.i = select i1 %tobool.not.i49, ptr @.str.20, ptr %header
  %call.i50 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = add i32 %call.i50, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dqueues)
  %tobool6.not.i = icmp eq i16 %dqueues, 0
  %cond7.i = select i1 %tobool6.not.i, i32 200, i32 1100
  %add13.i = add i32 %add.i, %cond7.i
  %tobool14.not.i = icmp eq ptr %skb, null
  %cond15.i = select i1 %tobool14.not.i, i32 1, i32 100
  %add21.i = add i32 %add13.i, 24
  %add = add i32 %add21.i, %cond15.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl18.i = shl nuw nsw i32 %cond15.i, 16
  %or20.i = or i32 %add21.i, %shl18.i
  %add9.i = add i32 %call.i50, 25
  %shl10.i = shl nuw nsw i32 %cond7.i, 16
  %or12.i = or i32 %add9.i, %shl10.i
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 24
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_header, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or12.i, ptr %__data_loc_buf, align 4
  %__data_loc_skb_buf = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %__data_loc_skb_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or20.i, ptr %__data_loc_skb_buf, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %call10 = call i32 @tipc_sock_get_portid(ptr noundef %sk) #8
  %portid = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call10, ptr %portid, align 4
  %7 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %__data_loc_buf, align 4
  %and12 = and i32 %8, 65535
  %add.ptr13 = getelementptr i8, ptr %call3, i32 %and12
  %call14 = call i32 @tipc_sk_dump(ptr noundef %sk, i16 noundef zeroext %dqueues, ptr noundef %add.ptr13) #8
  %9 = ptrtoint ptr %__data_loc_skb_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %__data_loc_skb_buf, align 4
  %and22 = and i32 %10, 65535
  %add.ptr23 = getelementptr i8, ptr %call3, i32 %and22
  br i1 %tobool14.not.i, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 @tipc_skb_dump(ptr noundef nonnull %skb, i1 noundef zeroext false, ptr noundef %add.ptr23)
  br label %if.end24

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %add.ptr23, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then16
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tipc_sk_class(ptr noundef %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef readonly %header) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !470
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !470
  %tobool.not.i = icmp eq ptr %header, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %header
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = add i32 %call.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dqueues)
  %tobool6.not.i = icmp eq i16 %dqueues, 0
  %cond7.i = select i1 %tobool6.not.i, i32 200, i32 1100
  %add9.i = add i32 %call.i, 25
  %shl10.i = shl nuw nsw i32 %cond7.i, 16
  %or12.i = or i32 %add9.i, %shl10.i
  %add13.i = add i32 %add.i, %cond7.i
  %tobool14.not.i = icmp eq ptr %skb, null
  %cond15.i = select i1 %tobool14.not.i, i32 1, i32 100
  %add17.i = add i32 %add13.i, 24
  %shl18.i = shl nuw nsw i32 %cond15.i, 16
  %or20.i = or i32 %add17.i, %shl18.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !458) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i73.not = icmp eq ptr %15, null
  br i1 %tobool.not.i73.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add21.i = add nuw nsw i32 %cond15.i, 35
  %add12 = add i32 %add21.i, %add13.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !458) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_header, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %call13, i32 0, i32 3
  %28 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or12.i, ptr %__data_loc_buf, align 4
  %__data_loc_skb_buf = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %call13, i32 0, i32 4
  %29 = ptrtoint ptr %__data_loc_skb_buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or20.i, ptr %__data_loc_skb_buf, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %call22 = call i32 @tipc_sock_get_portid(ptr noundef %sk) #8
  %portid = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %portid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call22, ptr %portid, align 4
  %31 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %__data_loc_buf, align 4
  %and24 = and i32 %32, 65535
  %add.ptr25 = getelementptr i8, ptr %call13, i32 %and24
  %call26 = call i32 @tipc_sk_dump(ptr noundef %sk, i16 noundef zeroext %dqueues, ptr noundef %add.ptr25) #8
  %33 = ptrtoint ptr %__data_loc_skb_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %__data_loc_skb_buf, align 4
  %and34 = and i32 %34, 65535
  %add.ptr35 = getelementptr i8, ptr %call13, i32 %and34
  br i1 %tobool14.not.i, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = call i32 @tipc_skb_dump(ptr noundef nonnull %skb, i1 noundef zeroext false, ptr noundef %add.ptr35)
  br label %if.end36

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %add.ptr35, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then28
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tipc_link_class(ptr noundef %__data, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef readonly %header) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !468

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !469

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i32 = icmp eq ptr %header, null
  %spec.select.i = select i1 %tobool.not.i32, ptr @.str.20, ptr %header
  %call.i33 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = add i32 %call.i33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dqueues)
  %tobool6.not.i = icmp eq i16 %dqueues, 0
  %cond7.i = select i1 %tobool6.not.i, i32 100, i32 1600
  %add13.i = add nuw nsw i32 %cond7.i, 84
  %add = add i32 %add13.i, %add.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add9.i = add i32 %call.i33, 85
  %shl10.i = shl nuw nsw i32 %cond7.i, 16
  %or12.i = or i32 %add9.i, %shl10.i
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 84
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_link_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_header, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_link_class, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or12.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 84
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %name = getelementptr inbounds %struct.trace_event_raw_tipc_link_class, ptr %call3, i32 0, i32 2
  %call10 = call ptr @tipc_link_name(ptr noundef %l) #8
  %5 = call ptr @memcpy(ptr %name, ptr %call10, i32 68)
  %6 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_buf, align 4
  %and12 = and i32 %7, 65535
  %add.ptr13 = getelementptr i8, ptr %call3, i32 %and12
  %call14 = call i32 @tipc_link_dump(ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %add.ptr13) #8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tipc_link_class(ptr noundef %__data, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef readonly %header) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !470
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !470
  %tobool.not.i = icmp eq ptr %header, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %header
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = add i32 %call.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 84
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dqueues)
  %tobool6.not.i = icmp eq i16 %dqueues, 0
  %cond7.i = select i1 %tobool6.not.i, i32 100, i32 1600
  %add9.i = add i32 %call.i, 85
  %shl10.i = shl nuw nsw i32 %cond7.i, 16
  %or12.i = or i32 %add9.i, %shl10.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !458) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i56.not = icmp eq ptr %15, null
  br i1 %tobool.not.i56.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add13.i = add nuw nsw i32 %cond7.i, 95
  %add12 = add i32 %add13.i, %add.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !458) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_link_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_header, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_link_class, ptr %call13, i32 0, i32 3
  %28 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or12.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 84
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %name = getelementptr inbounds %struct.trace_event_raw_tipc_link_class, ptr %call13, i32 0, i32 2
  %call22 = call ptr @tipc_link_name(ptr noundef %l) #8
  %29 = call ptr @memcpy(ptr %name, ptr %call22, i32 68)
  %30 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %__data_loc_buf, align 4
  %and24 = and i32 %31, 65535
  %add.ptr25 = getelementptr i8, ptr %call13, i32 %and24
  %call26 = call i32 @tipc_link_dump(ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %add.ptr25) #8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tipc_link_transmq_class(ptr noundef %__data, ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !468

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !469

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 88) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call3, i32 0, i32 1
  %call6 = call ptr @tipc_link_name(ptr noundef %r) #8
  %3 = call ptr @memcpy(ptr %name, ptr %call6, i32 68)
  %from = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %from to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %f, ptr %from, align 4
  %to = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %to to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %t, ptr %to, align 2
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %tq, i32 0, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %cond.end.thread, label %cond.true16

cond.end.thread:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %fseqno51 = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %fseqno51 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %fseqno51, align 4
  br label %cond.end22

cond.true16:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %tq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tq, align 4
  %cmp.i = icmp eq ptr %11, %tq
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i = trunc i32 %15 to i16
  %fseqno = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %fseqno to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %fseqno, align 4
  %prev.i = getelementptr inbounds %struct.anon.95, ptr %tq, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i44 = icmp eq ptr %18, %tq
  %spec.store.select.i45 = select i1 %cmp.i44, ptr null, ptr %18
  %data.i46 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i45, i32 0, i32 19
  %19 = ptrtoint ptr %data.i46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i46, align 4
  %arrayidx.i.i.i47 = getelementptr [15 x i32], ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i47, align 4
  %conv.i48 = trunc i32 %22 to i16
  br label %cond.end22

cond.end22:                                       ; preds = %cond.true16, %cond.end.thread
  %cond23 = phi i16 [ %conv.i48, %cond.true16 ], [ 0, %cond.end.thread ]
  %lseqno = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call3, i32 0, i32 6
  %23 = ptrtoint ptr %lseqno to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %cond23, ptr %lseqno, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end22, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tipc_link_transmq_class(ptr noundef %__data, ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !470
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !470
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !458) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 92, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !458) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call13, i32 0, i32 1
  %call17 = call ptr @tipc_link_name(ptr noundef %r) #8
  %27 = call ptr @memcpy(ptr %name, ptr %call17, i32 68)
  %from = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %from to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %f, ptr %from, align 4
  %to = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %to to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %t, ptr %to, align 2
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %tq, i32 0, i32 1
  %30 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool20.not = icmp eq i32 %31, 0
  br i1 %tobool20.not, label %cond.end.thread, label %cond.true27

cond.end.thread:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %fseqno73 = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call13, i32 0, i32 5
  %33 = ptrtoint ptr %fseqno73 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %fseqno73, align 4
  br label %cond.end33

cond.true27:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %tq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tq, align 4
  %cmp.i = icmp eq ptr %35, %tq
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %35
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i = trunc i32 %39 to i16
  %fseqno = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %fseqno to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %fseqno, align 4
  %prev.i = getelementptr inbounds %struct.anon.95, ptr %tq, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i67 = icmp eq ptr %42, %tq
  %spec.store.select.i68 = select i1 %cmp.i67, ptr null, ptr %42
  %data.i69 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i68, i32 0, i32 19
  %43 = ptrtoint ptr %data.i69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i69, align 4
  %arrayidx.i.i.i70 = getelementptr [15 x i32], ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i70, align 4
  %conv.i71 = trunc i32 %46 to i16
  br label %cond.end33

cond.end33:                                       ; preds = %cond.true27, %cond.end.thread
  %cond34 = phi i16 [ %conv.i71, %cond.true27 ], [ 0, %cond.end.thread ]
  %lseqno = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %call13, i32 0, i32 6
  %47 = ptrtoint ptr %lseqno to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %cond34, ptr %lseqno, align 2
  %48 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rctx, align 4
  %50 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 92, i32 noundef %49, ptr noundef %__data, i64 noundef 1, ptr noundef %51, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end33, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tipc_node_class(ptr noundef %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef readonly %header) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !468

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !469

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i34 = icmp eq ptr %header, null
  %spec.select.i = select i1 %tobool.not.i34, ptr @.str.20, ptr %header
  %call.i35 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = add i32 %call.i35, 1
  %cond7.i = select i1 %more, i32 1100, i32 100
  %add13.i = add nuw nsw i32 %cond7.i, 20
  %add = add i32 %add13.i, %add.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add9.i = add i32 %call.i35, 21
  %shl10.i = shl nuw nsw i32 %cond7.i, 16
  %or12.i = or i32 %add9.i, %shl10.i
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 20
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_node_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_header, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_node_class, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or12.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %call11 = call i32 @tipc_node_get_addr(ptr noundef %n) #8
  %addr = getelementptr inbounds %struct.trace_event_raw_tipc_node_class, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call11, ptr %addr, align 4
  %6 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_buf, align 4
  %and14 = and i32 %7, 65535
  %add.ptr15 = getelementptr i8, ptr %call3, i32 %and14
  %call16 = call i32 @tipc_node_dump(ptr noundef %n, i1 noundef zeroext %more, ptr noundef %add.ptr15) #8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tipc_node_class(ptr noundef %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef readonly %header) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !470
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !470
  %tobool.not.i = icmp eq ptr %header, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %header
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = add i32 %call.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 20
  %cond7.i = select i1 %more, i32 1100, i32 100
  %add9.i = add i32 %call.i, 21
  %shl10.i = shl nuw nsw i32 %cond7.i, 16
  %or12.i = or i32 %add9.i, %shl10.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !458) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i58.not = icmp eq ptr %15, null
  br i1 %tobool.not.i58.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %add13.i = add nuw nsw i32 %cond7.i, 31
  %add13 = add i32 %add13.i, %add.i
  %and = and i32 %add13, -8
  %sub = add i32 %and, -4
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !458) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_node_class, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_header, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_node_class, ptr %call14, i32 0, i32 3
  %28 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or12.i, ptr %__data_loc_buf, align 4
  %add.ptr = getelementptr i8, ptr %call14, i32 20
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %call23 = call i32 @tipc_node_get_addr(ptr noundef %n) #8
  %addr = getelementptr inbounds %struct.trace_event_raw_tipc_node_class, ptr %call14, i32 0, i32 2
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call23, ptr %addr, align 4
  %30 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %__data_loc_buf, align 4
  %and26 = and i32 %31, 65535
  %add.ptr27 = getelementptr i8, ptr %call14, i32 %and26
  %call28 = call i32 @tipc_node_dump(ptr noundef %n, i1 noundef zeroext %more, ptr noundef %add.ptr27) #8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef %sub, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tipc_fsm_class(ptr noundef %__data, ptr noundef readonly %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !468

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !469

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i29 = icmp eq ptr %name, null
  %spec.select.i = select i1 %tobool.not.i29, ptr @.str.20, ptr %name
  %call.i30 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add = add i32 %call.i30, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = shl i32 %call.i30, 16
  %or.i = add i32 %add.i, 65560
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %os10 = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %os10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %os, ptr %os10, align 4
  %ns11 = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %ns11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ns, ptr %ns11, align 4
  %evt12 = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %evt12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %evt, ptr %evt12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tipc_fsm_class(ptr noundef %__data, ptr noundef readonly %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !470
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !470
  %tobool.not.i = icmp eq ptr %name, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %name
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65560
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !458) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i53.not = icmp eq ptr %15, null
  br i1 %tobool.not.i53.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !458) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %os22 = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %os22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %os, ptr %os22, align 4
  %ns23 = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %ns23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %ns, ptr %ns23, align 4
  %evt24 = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %evt24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %evt, ptr %evt24, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tipc_l2_device_event(ptr noundef %__data, ptr noundef %dev, ptr noundef %b, i32 noundef %evt) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !468

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !469

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i53 = icmp eq ptr %dev, null
  %spec.select.i = select i1 %tobool.not.i53, ptr @.str.20, ptr %dev
  %call.i54 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %name7.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 3
  %call16.i = tail call i32 @strlen(ptr noundef nonnull %name7.i) #11
  %add17.i = add i32 %call16.i, 1
  %add23.i = add i32 %call.i54, 25
  %add = add i32 %add23.i, %add17.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl20.i = shl i32 %add17.i, 16
  %add19.i = add i32 %call.i54, 24
  %or22.i = or i32 %shl20.i, %add19.i
  %add.i = shl i32 %call.i54, 16
  %or.i = add i32 %add.i, 65559
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_dev_name, align 4
  %__data_loc_b_name = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_b_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or22.i, ptr %__data_loc_b_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 23
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %and12 = and i32 %add19.i, 65535
  %add.ptr13 = getelementptr i8, ptr %call3, i32 %and12
  %tobool16.not = icmp eq ptr %name7.i, null
  %cond22 = select i1 %tobool16.not, ptr @.str.20, ptr %name7.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr13, ptr noundef nonnull %cond22) #12
  %evt24 = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %evt24 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %evt, ptr %evt24, align 4
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 16
  %6 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %up, align 4
  %8 = trunc i32 %7 to i8
  %conv = and i8 %8, 1
  %b_up = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %b_up to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %b_up, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 2
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %carrier = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %carrier to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %carrier, align 1
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 50
  %17 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %operstate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %18)
  %cmp.i = icmp eq i8 %18, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp4.i = icmp eq i8 %18, 0
  %spec.select.i56 = or i1 %cmp.i, %cmp4.i
  %conv29 = zext i1 %spec.select.i56 to i8
  %oper = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call3, i32 0, i32 6
  %19 = ptrtoint ptr %oper to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv29, ptr %oper, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tipc_l2_device_event(ptr noundef %__data, ptr noundef %dev, ptr noundef %b, i32 noundef %evt) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !470
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !470
  %tobool.not.i = icmp eq ptr %dev, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.20, ptr %dev
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = shl i32 %call.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 23
  %name7.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 3
  %call16.i = tail call i32 @strlen(ptr noundef nonnull %name7.i) #11
  %add17.i = add i32 %call16.i, 1
  %add19.i = add i32 %call.i, 24
  %shl20.i = shl i32 %add17.i, 16
  %or22.i = or i32 %shl20.i, %add19.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !458) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i77.not = icmp eq ptr %15, null
  br i1 %tobool.not.i77.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add23.i = add i32 %call.i, 36
  %add12 = add i32 %add23.i, %add17.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !458) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_dev_name, align 4
  %__data_loc_b_name = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %__data_loc_b_name to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or22.i, ptr %__data_loc_b_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 23
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %and24 = and i32 %add19.i, 65535
  %add.ptr25 = getelementptr i8, ptr %call13, i32 %and24
  %tobool28.not = icmp eq ptr %name7.i, null
  %cond34 = select i1 %tobool28.not, ptr @.str.20, ptr %name7.i
  %call35 = call ptr @strcpy(ptr noundef %add.ptr25, ptr noundef nonnull %cond34) #12
  %evt36 = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %evt36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %evt, ptr %evt36, align 4
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 16
  %30 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %up, align 4
  %32 = trunc i32 %31 to i8
  %conv = and i8 %32, 1
  %b_up = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %b_up to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %b_up, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i, align 4
  %36 = trunc i32 %35 to i8
  %37 = lshr i8 %36, 2
  %38 = and i8 %37, 1
  %39 = xor i8 %38, 1
  %carrier = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %carrier to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %carrier, align 1
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 50
  %41 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %operstate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %42)
  %cmp.i = icmp eq i8 %42, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp4.i = icmp eq i8 %42, 0
  %spec.select.i79 = or i1 %cmp.i, %cmp4.i
  %conv41 = zext i1 %spec.select.i79 to i8
  %oper = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %call13, i32 0, i32 6
  %43 = ptrtoint ptr %oper to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv41, ptr %oper, align 2
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tipc_skb_class(ptr noundef %__data, ptr noundef %skb, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %skb to i32
  %conv = zext i32 %0 to i64
  %conv5 = zext i1 %more to i64
  %1 = ptrtoint ptr %header to i32
  %conv9 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tipc_list_class(ptr noundef %__data, ptr noundef %list, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %list to i32
  %conv = zext i32 %0 to i64
  %conv5 = zext i1 %more to i64
  %1 = ptrtoint ptr %header to i32
  %conv9 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tipc_sk_class(ptr noundef %__data, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %sk to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %skb to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i16 %dqueues to i64
  %2 = ptrtoint ptr %header to i32
  %conv12 = zext i32 %2 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tipc_link_class(ptr noundef %__data, ptr noundef %l, i16 noundef zeroext %dqueues, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %l to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i16 %dqueues to i64
  %1 = ptrtoint ptr %header to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tipc_link_transmq_class(ptr noundef %__data, ptr noundef %r, i16 noundef zeroext %f, i16 noundef zeroext %t, ptr noundef %tq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %r to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i16 %f to i64
  %conv8 = zext i16 %t to i64
  %1 = ptrtoint ptr %tq to i32
  %conv12 = zext i32 %1 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tipc_node_class(ptr noundef %__data, ptr noundef %n, i1 noundef zeroext %more, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %n to i32
  %conv = zext i32 %0 to i64
  %conv5 = zext i1 %more to i64
  %1 = ptrtoint ptr %header to i32
  %conv9 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tipc_fsm_class(ptr noundef %__data, ptr noundef %name, i32 noundef %os, i32 noundef %ns, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %os to i64
  %conv8 = zext i32 %ns to i64
  %conv12 = zext i32 %evt to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tipc_l2_device_event(ptr noundef %__data, ptr noundef %dev, ptr noundef %b, i32 noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %b to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %evt to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_skb_dump(ptr noundef readonly %skb, i1 noundef zeroext %more, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %more, i32 200, i32 100
  %tobool1.not = icmp eq ptr %skb, null
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr.i.i = lshr i32 %3, 25
  %and.i.i = and i32 %shr.i.i, 15
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str.1, i32 noundef %and.i.i) #8
  %add.ptr = getelementptr i8, ptr %buf, i32 %call4
  %sub = sub i32 %cond, %call4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i513 = lshr i32 %5, 29
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.2, i32 noundef %shr.i.i513) #8
  %add8 = add i32 %call7, %call4
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add8
  %sub10 = sub i32 %cond, %add8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = lshr i32 %7, 19
  %shl.i = and i32 %8, 60
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.2, i32 noundef %shl.i) #8
  %add13 = add i32 %call12, %add8
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %add13
  %sub15 = sub i32 %cond, %add13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %and.i.i.i = and i32 %10, 131071
  %11 = lshr i32 %10, 19
  %shl.i.i = and i32 %11, 60
  %sub.i = sub nsw i32 %and.i.i.i, %shl.i.i
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.2, i32 noundef %sub.i) #8
  %add18 = add i32 %call17, %add13
  %add.ptr19 = getelementptr i8, ptr %buf, i32 %add18
  %sub20 = sub i32 %cond, %add18
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = and i32 %13, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, 12582912
  %..i = select i1 %cmp.i.not.i, i32 3, i32 6, !prof !468
  %arrayidx.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 %..i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.0.i = load i32, ptr %arrayidx.i.i, align 4
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i) #8
  %add23 = add i32 %call22, %add18
  %add.ptr24 = getelementptr i8, ptr %buf, i32 %add23
  %sub25 = sub i32 %cond, %add23
  %arrayidx.i.i514 = getelementptr [15 x i32], ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx.i.i514 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i514, align 4
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.3, i32 noundef %17) #8
  %add28 = add i32 %call27, %add23
  %add.ptr29 = getelementptr i8, ptr %buf, i32 %add28
  %sub30 = sub i32 %cond, %add28
  %arrayidx.i.i.i515 = getelementptr [15 x i32], ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i.i515 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i515, align 4
  %conv = and i32 %19, 65535
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.2, i32 noundef %conv) #8
  %add33 = add i32 %call32, %add28
  %add.ptr34 = getelementptr i8, ptr %buf, i32 %add33
  %sub35 = sub i32 %cond, %add33
  %20 = ptrtoint ptr %arrayidx.i.i.i515 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i.i515, align 4
  %shr.i.i517 = lshr i32 %21, 16
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.2, i32 noundef %shr.i.i517) #8
  %add39 = add i32 %call38, %add33
  %add.ptr40 = getelementptr i8, ptr %buf, i32 %add39
  %sub41 = sub i32 %cond, %add39
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv43 = and i32 %23, 65535
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.2, i32 noundef %conv43) #8
  %add45 = add i32 %call44, %add39
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %shr.i.i521 = lshr i32 %25, 25
  %and.i.i522 = and i32 %shr.i.i521, 15
  %26 = zext i32 %and.i.i522 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i522, label %if.end.sw.epilog150_crit_edge [
    i32 7, label %sw.bb
    i32 0, label %if.end.sw.bb90_crit_edge
    i32 1, label %if.end.sw.bb90_crit_edge572
    i32 2, label %if.end.sw.bb90_crit_edge573
    i32 3, label %if.end.sw.bb90_crit_edge574
    i32 8, label %if.end.sw.bb90_crit_edge575
    i32 14, label %if.end.sw.bb90_crit_edge576
  ]

if.end.sw.bb90_crit_edge576:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end.sw.bb90_crit_edge575:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end.sw.bb90_crit_edge574:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end.sw.bb90_crit_edge573:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end.sw.bb90_crit_edge572:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end.sw.bb90_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end.sw.epilog150_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog150

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr47 = getelementptr i8, ptr %buf, i32 %add45
  %sub48 = sub i32 %cond, %add45
  %arrayidx.i.i.i523 = getelementptr [15 x i32], ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx.i.i.i523 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i523, align 4
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 7
  %conv.i524 = add nuw nsw i32 %30, 65
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.4, i32 noundef %conv.i524) #8
  %add52 = add i32 %call51, %add45
  %add.ptr53 = getelementptr i8, ptr %buf, i32 %add52
  %sub54 = sub i32 %cond, %add52
  %31 = ptrtoint ptr %arrayidx.i.i.i523 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i523, align 4
  %and.i.i526 = and i32 %32, 1
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.2, i32 noundef %and.i.i526) #8
  %add57 = add i32 %call56, %add52
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %add57
  %sub59 = sub i32 %cond, %add57
  %33 = ptrtoint ptr %arrayidx.i.i.i523 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i523, align 4
  %shr.i.i528 = lshr i32 %34, 13
  %and.i.i529 = and i32 %shr.i.i528, 1
  %call61 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.2, i32 noundef %and.i.i529) #8
  %add62 = add i32 %call61, %add57
  %add.ptr63 = getelementptr i8, ptr %buf, i32 %add62
  %sub64 = sub i32 %cond, %add62
  %35 = ptrtoint ptr %arrayidx.i.i.i523 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i523, align 4
  %shr.i.i531 = lshr i32 %36, 16
  %call67 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.2, i32 noundef %shr.i.i531) #8
  %add68 = add i32 %call67, %add62
  %add.ptr69 = getelementptr i8, ptr %buf, i32 %add68
  %sub70 = sub i32 %cond, %add68
  %arrayidx.i.i.i533 = getelementptr [15 x i32], ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx.i.i.i533 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i533, align 4
  %conv72 = and i32 %38, 65535
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69, i32 noundef %sub70, ptr noundef nonnull @.str.2, i32 noundef %conv72) #8
  %add74 = add i32 %call73, %add68
  %add.ptr75 = getelementptr i8, ptr %buf, i32 %add74
  %sub76 = sub i32 %cond, %add74
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i536 = lshr i32 %40, 16
  %and.i.i537 = and i32 %shr.i.i536, 8191
  %call78 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr75, i32 noundef %sub76, ptr noundef nonnull @.str.2, i32 noundef %and.i.i537) #8
  %add79 = add i32 %call78, %add74
  %add.ptr80 = getelementptr i8, ptr %buf, i32 %add79
  %sub81 = sub i32 %cond, %add79
  %41 = ptrtoint ptr %arrayidx.i.i.i533 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i.i533, align 4
  %shr.i.i.i = lshr i32 %42, 16
  %add.i = add nuw nsw i32 %shr.i.i.i, 1
  %call83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr80, i32 noundef %sub81, ptr noundef nonnull @.str.2, i32 noundef %add.i) #8
  %add84 = add i32 %call83, %add79
  %add.ptr85 = getelementptr i8, ptr %buf, i32 %add84
  %sub86 = sub i32 %cond, %add84
  %arrayidx.i.i.i538 = getelementptr [15 x i32], ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %arrayidx.i.i.i538 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i538, align 4
  %and.i.i539 = and i32 %44, 1023
  %call88 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr85, i32 noundef %sub86, ptr noundef nonnull @.str.2, i32 noundef %and.i.i539) #8
  %add89 = add i32 %call88, %add84
  br label %sw.epilog150

sw.bb90:                                          ; preds = %if.end.sw.bb90_crit_edge, %if.end.sw.bb90_crit_edge572, %if.end.sw.bb90_crit_edge573, %if.end.sw.bb90_crit_edge574, %if.end.sw.bb90_crit_edge575, %if.end.sw.bb90_crit_edge576
  %add.ptr91 = getelementptr i8, ptr %buf, i32 %add45
  %sub92 = sub i32 %cond, %add45
  %45 = and i32 %25, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %45)
  %cmp.i = icmp eq i32 %45, 402653184
  %46 = lshr i32 %25, 19
  %shl.i.i.i.i = and i32 %46, 60
  %m.addr.0.idx.i = select i1 %cmp.i, i32 %shl.i.i.i.i, i32 0
  %m.addr.0.i = getelementptr i8, ptr %1, i32 %m.addr.0.idx.i
  %arrayidx.i.i540 = getelementptr [15 x i32], ptr %m.addr.0.i, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx.i.i540 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i540, align 4
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91, i32 noundef %sub92, ptr noundef nonnull @.str.5, i32 noundef %48) #8
  %add95 = add i32 %call94, %add45
  %add.ptr96 = getelementptr i8, ptr %buf, i32 %add95
  %sub97 = sub i32 %cond, %add95
  %arrayidx.i.i541 = getelementptr [15 x i32], ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %arrayidx.i.i541 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i541, align 4
  %call99 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.2, i32 noundef %50) #8
  %add100 = add i32 %call99, %add95
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i543 = lshr i32 %52, 29
  %53 = zext i32 %shr.i.i543 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %shr.i.i543, label %sw.bb90.sw.epilog_crit_edge [
    i32 2, label %sw.bb90.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb113
  ]

sw.bb90.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb90.sw.epilog_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb113:                                         ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr114 = getelementptr i8, ptr %buf, i32 %add100
  %sub115 = sub i32 %cond, %add100
  %arrayidx.i.i546 = getelementptr [15 x i32], ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %arrayidx.i.i546 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i546, align 4
  %call117 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr114, i32 noundef %sub115, ptr noundef nonnull @.str.2, i32 noundef %55) #8
  %add118 = add i32 %call117, %add100
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb113, %sw.bb90.sw.epilog.sink.split_crit_edge
  %add100.sink571 = phi i32 [ %add118, %sw.bb113 ], [ %add100, %sw.bb90.sw.epilog.sink.split_crit_edge ]
  %.sink569 = phi i32 [ 9, %sw.bb113 ], [ 8, %sw.bb90.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 10, %sw.bb113 ], [ 9, %sw.bb90.sw.epilog.sink.split_crit_edge ]
  %add.ptr103 = getelementptr i8, ptr %buf, i32 %add100.sink571
  %sub104 = sub i32 %cond, %add100.sink571
  %arrayidx.i.i544 = getelementptr [15 x i32], ptr %1, i32 0, i32 %.sink569
  %56 = ptrtoint ptr %arrayidx.i.i544 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i544, align 4
  %call106 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr103, i32 noundef %sub104, ptr noundef nonnull @.str.2, i32 noundef %57) #8
  %add107 = add i32 %call106, %add100.sink571
  %add.ptr124 = getelementptr i8, ptr %buf, i32 %add107
  %sub125 = sub i32 %cond, %add107
  %arrayidx.i.i548 = getelementptr [15 x i32], ptr %1, i32 0, i32 %.sink
  %58 = ptrtoint ptr %arrayidx.i.i548 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i548, align 4
  %call127 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr124, i32 noundef %sub125, ptr noundef nonnull @.str.2, i32 noundef %59) #8
  %add128 = add i32 %call127, %add107
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb90.sw.epilog_crit_edge
  %i.0 = phi i32 [ %add100, %sw.bb90.sw.epilog_crit_edge ], [ %add128, %sw.epilog.sink.split ]
  %add.ptr129 = getelementptr i8, ptr %buf, i32 %i.0
  %sub130 = sub i32 %cond, %i.0
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %1, align 4
  %shr.i.i549 = lshr i32 %61, 18
  %and.i.i550 = and i32 %shr.i.i549, 1
  %call132 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr129, i32 noundef %sub130, ptr noundef nonnull @.str.5, i32 noundef %and.i.i550) #8
  %add133 = add i32 %call132, %i.0
  %add.ptr134 = getelementptr i8, ptr %buf, i32 %add133
  %sub135 = sub i32 %cond, %add133
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %1, align 4
  %shr.i.i551 = lshr i32 %63, 19
  %and.i.i552 = and i32 %shr.i.i551, 1
  %call137 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr134, i32 noundef %sub135, ptr noundef nonnull @.str.2, i32 noundef %and.i.i552) #8
  %add138 = add i32 %call137, %add133
  %add.ptr139 = getelementptr i8, ptr %buf, i32 %add138
  %sub140 = sub i32 %cond, %add138
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i554 = lshr i32 %65, 25
  %and.i.i555 = and i32 %shr.i.i554, 15
  %call142 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr139, i32 noundef %sub140, ptr noundef nonnull @.str.2, i32 noundef %and.i.i555) #8
  %add143 = add i32 %call142, %add138
  %add.ptr144 = getelementptr i8, ptr %buf, i32 %add143
  %sub145 = sub i32 %cond, %add143
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i557 = lshr i32 %67, 21
  %and.i.i558 = and i32 %shr.i.i557, 15
  %call147 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr144, i32 noundef %sub145, ptr noundef nonnull @.str.2, i32 noundef %and.i.i558) #8
  %add148 = add i32 %call147, %add143
  br label %sw.epilog150

sw.epilog150:                                     ; preds = %sw.epilog, %sw.bb, %if.end.sw.epilog150_crit_edge
  %i.1 = phi i32 [ %add45, %if.end.sw.epilog150_crit_edge ], [ %add148, %sw.epilog ], [ %add89, %sw.bb ]
  %add.ptr151 = getelementptr i8, ptr %buf, i32 %i.1
  %sub152 = sub i32 %cond, %i.1
  %call153 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr151, i32 noundef %sub152, ptr noundef nonnull @.str.6) #8
  %add154 = add i32 %call153, %i.1
  br i1 %more, label %if.end157, label %sw.epilog150.cleanup_crit_edge

sw.epilog150.cleanup_crit_edge:                   ; preds = %sw.epilog150
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end157:                                        ; preds = %sw.epilog150
  %add.ptr158 = getelementptr i8, ptr %buf, i32 %add154
  %sub159 = sub i32 %cond, %add154
  %68 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %tobool160.not = icmp eq ptr %70, null
  %spec.select = select i1 %tobool160.not, ptr @.str.8, ptr %70
  %call162 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr158, i32 noundef %sub159, ptr noundef nonnull @.str.7, ptr noundef nonnull %spec.select) #8
  %add163 = add i32 %call162, %add154
  %add.ptr164 = getelementptr i8, ptr %buf, i32 %add163
  %sub165 = sub i32 %cond, %add163
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %71 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len, align 4
  %call166 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr164, i32 noundef %sub165, ptr noundef nonnull @.str.2, i32 noundef %72) #8
  %add167 = add i32 %call166, %add163
  %add.ptr168 = getelementptr i8, ptr %buf, i32 %add167
  %sub169 = sub i32 %cond, %add167
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %73 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_len, align 8
  %call170 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr168, i32 noundef %sub169, ptr noundef nonnull @.str.2, i32 noundef %74) #8
  %add171 = add i32 %call170, %add167
  %add.ptr172 = getelementptr i8, ptr %buf, i32 %add171
  %sub173 = sub i32 %cond, %add171
  %hdr_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %75 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hdr_len, align 2
  %conv174 = zext i16 %76 to i32
  %call175 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr172, i32 noundef %sub173, ptr noundef nonnull @.str.2, i32 noundef %conv174) #8
  %add176 = add i32 %call175, %add171
  %add.ptr177 = getelementptr i8, ptr %buf, i32 %add176
  %sub178 = sub i32 %cond, %add176
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %77 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %truesize, align 8
  %call179 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr177, i32 noundef %sub178, ptr noundef nonnull @.str.2, i32 noundef %78) #8
  %add180 = add i32 %call179, %add176
  %add.ptr181 = getelementptr i8, ptr %buf, i32 %add180
  %sub182 = sub i32 %cond, %add180
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %79 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end157.skb_cloned.exit_crit_edge, label %land.rhs.i

if.end157.skb_cloned.exit_crit_edge:              ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_cloned.exit

land.rhs.i:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %80 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %81, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #8
  %82 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %83, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i559 = icmp ne i32 %and.i, 1
  %phi.cast.i = zext i1 %cmp.i559 to i32
  br label %skb_cloned.exit

skb_cloned.exit:                                  ; preds = %land.rhs.i, %if.end157.skb_cloned.exit_crit_edge
  %84 = phi i32 [ 0, %if.end157.skb_cloned.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %call184 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr181, i32 noundef %sub182, ptr noundef nonnull @.str.2, i32 noundef %84) #8
  %add185 = add i32 %call184, %add180
  %add.ptr186 = getelementptr i8, ptr %buf, i32 %add185
  %sub187 = sub i32 %cond, %add185
  %85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %call188 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr186, i32 noundef %sub187, ptr noundef nonnull @.str.9, ptr noundef %87) #8
  %add189 = add i32 %call188, %add185
  %add.ptr190 = getelementptr i8, ptr %buf, i32 %add189
  %sub191 = sub i32 %cond, %add189
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %88 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %nr_frags, align 2
  %conv193 = zext i8 %91 to i32
  %call194 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr190, i32 noundef %sub191, ptr noundef nonnull @.str.2, i32 noundef %conv193) #8
  %add195 = add i32 %call194, %add189
  %add.ptr196 = getelementptr i8, ptr %buf, i32 %add195
  %sub197 = sub i32 %cond, %add195
  %92 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %92, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %94)
  %cmp8.i.i = icmp slt i64 %94, 0
  %95 = tail call i64 @llvm.abs.i64(i64 %94, i1 false) #8
  %96 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %95) #13, !srcloc !471
  %97 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %95, i64 %96, i32 0) #13, !srcloc !472
  %asmresult10.i.i.i = extractvalue { i64, i32 } %97, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %call200 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr196, i32 noundef %sub197, ptr noundef nonnull @.str.10, i64 noundef %cond213.i.i) #8
  %add201 = add i32 %call200, %add195
  %add.ptr202 = getelementptr i8, ptr %buf, i32 %add201
  %sub203 = sub i32 %cond, %add201
  %98 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %end.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %hwtstamps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %101)
  %cmp8.i.i561 = icmp slt i64 %101, 0
  %102 = tail call i64 @llvm.abs.i64(i64 %101, i1 false) #8
  %103 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %102) #13, !srcloc !471
  %104 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %102, i64 %103, i32 0) #13, !srcloc !472
  %asmresult10.i.i.i562 = extractvalue { i64, i32 } %104, 0
  %div1811.i.i563 = lshr i64 %asmresult10.i.i.i562, 18
  %sub210.i.i564 = sub nsw i64 0, %div1811.i.i563
  %cond213.i.i565 = select i1 %cmp8.i.i561, i64 %sub210.i.i564, i64 %div1811.i.i563
  %call206 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr202, i32 noundef %sub203, ptr noundef nonnull @.str.11, i64 noundef %cond213.i.i565) #8
  %add207 = add i32 %call206, %add201
  %add.ptr208 = getelementptr i8, ptr %buf, i32 %add207
  %sub209 = sub i32 %cond, %add207
  %bytes_read = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %105 = ptrtoint ptr %bytes_read to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %bytes_read, align 1
  %call210 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr208, i32 noundef %sub209, ptr noundef nonnull @.str.12, i32 noundef %106) #8
  %add211 = add i32 %call210, %add207
  %add.ptr212 = getelementptr i8, ptr %buf, i32 %add211
  %sub213 = sub i32 %cond, %add211
  %orig_member = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %107 = ptrtoint ptr %orig_member to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %orig_member, align 1
  %call214 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr212, i32 noundef %sub213, ptr noundef nonnull @.str.2, i32 noundef %108) #8
  %add215 = add i32 %call214, %add211
  %add.ptr216 = getelementptr i8, ptr %buf, i32 %add215
  %sub217 = sub i32 %cond, %add215
  %nxt_retr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %109 = ptrtoint ptr %nxt_retr to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %nxt_retr, align 1
  %call218 = tail call i32 @jiffies_to_msecs(i32 noundef %110) #8
  %call219 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr216, i32 noundef %sub217, ptr noundef nonnull @.str.2, i32 noundef %call218) #8
  %add220 = add i32 %call219, %add215
  %add.ptr221 = getelementptr i8, ptr %buf, i32 %add220
  %sub222 = sub i32 %cond, %add220
  %111 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load = load i8, ptr %111, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %conv223 = zext i8 %bf.lshr to i32
  %call224 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr221, i32 noundef %sub222, ptr noundef nonnull @.str.2, i32 noundef %conv223) #8
  %add225 = add i32 %call224, %add220
  %add.ptr226 = getelementptr i8, ptr %buf, i32 %add225
  %sub227 = sub i32 %cond, %add225
  %chain_imp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %113 = ptrtoint ptr %chain_imp to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %chain_imp, align 1
  %conv228 = zext i16 %114 to i32
  %call229 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr226, i32 noundef %sub227, ptr noundef nonnull @.str.2, i32 noundef %conv228) #8
  %add230 = add i32 %call229, %add225
  %add.ptr231 = getelementptr i8, ptr %buf, i32 %add230
  %sub232 = sub i32 %cond, %add230
  %ackers = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %115 = ptrtoint ptr %ackers to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %ackers, align 1
  %conv233 = zext i16 %116 to i32
  %call234 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr231, i32 noundef %sub232, ptr noundef nonnull @.str.13, i32 noundef %conv233) #8
  %add235 = add i32 %call234, %add230
  br label %cleanup

cleanup:                                          ; preds = %skb_cloned.exit, %sw.epilog150.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %add235, %skb_cloned.exit ], [ %call, %if.then ], [ %add154, %sw.epilog150.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_list_dump(ptr noundef %list, i1 noundef zeroext %more, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %more, i32 1100, i32 300
  %tobool1.not = icmp eq ptr %list, null
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str.15, i32 noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %cmp27.not110 = icmp eq ptr %3, %list
  br i1 %more, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %spec.store.select.i = select i1 %cmp27.not110, ptr null, ptr %3
  %add.ptr = getelementptr i8, ptr %buf, i32 %call3
  %sub = sub i32 %cond, %call3
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.16) #8
  %add12 = add i32 %call11, %call3
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %add12
  %call14 = tail call i32 @tipc_skb_dump(ptr noundef %spec.store.select.i, i1 noundef zeroext false, ptr noundef %add.ptr13)
  %add15 = add i32 %add12, %call14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then16, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i = getelementptr inbounds %struct.anon.95, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i107 = icmp eq ptr %5, %list
  %spec.store.select.i108 = select i1 %cmp.i107, ptr null, ptr %5
  %add.ptr18 = getelementptr i8, ptr %buf, i32 %add15
  %sub19 = sub i32 %cond, %add15
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.17) #8
  %add21 = add i32 %call20, %add15
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %add21
  %call23 = tail call i32 @tipc_skb_dump(ptr noundef %spec.store.select.i108, i1 noundef zeroext false, ptr noundef %add.ptr22)
  %add24 = add i32 %add21, %call23
  br label %cleanup

if.else:                                          ; preds = %if.end7
  br i1 %cmp27.not110, label %if.else.cleanup_crit_edge, label %for.body.lr.ph

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.else
  %sub36 = add i32 %1, -5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.0113 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp.0114, %for.inc.for.body_crit_edge ]
  %count.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %i.0111 = phi i32 [ %call3, %for.body.lr.ph ], [ %i.2, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %skb.0113 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0114 = load ptr, ptr %skb.0113, align 8
  %inc = add i32 %count.0112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc)
  %cmp28 = icmp eq i32 %inc, 6
  br i1 %cmp28, label %if.then29, label %for.body.if.end34_crit_edge

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr30 = getelementptr i8, ptr %buf, i32 %i.0111
  %sub31 = sub i32 %cond, %i.0111
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.18) #8
  %add33 = add i32 %call32, %i.0111
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %for.body.if.end34_crit_edge
  %i.1 = phi i32 [ %add33, %if.then29 ], [ %i.0111, %for.body.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc)
  %cmp35 = icmp ult i32 %inc, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub36)
  %cmp37.not = icmp ugt i32 %inc, %sub36
  %or.cond = or i1 %cmp35, %cmp37.not
  br i1 %or.cond, label %if.end39, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr40 = getelementptr i8, ptr %buf, i32 %i.1
  %sub41 = sub i32 %cond, %i.1
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.19, i32 noundef %inc) #8
  %add43 = add i32 %call42, %i.1
  %add.ptr44 = getelementptr i8, ptr %buf, i32 %add43
  %call45 = tail call i32 @tipc_skb_dump(ptr noundef %skb.0113, i1 noundef zeroext false, ptr noundef %add.ptr44)
  %add46 = add i32 %add43, %call45
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %if.end34.for.inc_crit_edge
  %i.2 = phi i32 [ %add46, %if.end39 ], [ %i.1, %if.end34.for.inc_crit_edge ]
  %cmp27.not = icmp eq ptr %tmp.0114, %list
  br i1 %cmp27.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then16, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end.cleanup_crit_edge ], [ %add24, %if.then16 ], [ %add15, %if.then9.cleanup_crit_edge ], [ %call3, %if.else.cleanup_crit_edge ], [ %i.2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tipc_skb_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_skb_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_header, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_skb_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_buf, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, ptr noundef %add.ptr, ptr noundef %add.ptr2) #8
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
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
define internal i32 @trace_raw_output_tipc_list_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_list_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_header, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_list_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_buf, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, ptr noundef %add.ptr, ptr noundef %add.ptr2) #8
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_sock_get_portid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_sk_dump(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tipc_sk_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %portid = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 4
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_header, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_skb_buf = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %__data_loc_skb_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_skb_buf, align 4
  %and1 = and i32 %7, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_sk_class, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_loc_buf, align 4
  %and3 = and i32 %9, 65535
  %add.ptr4 = getelementptr i8, ptr %1, i32 %and3
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.28, i32 noundef %3, ptr noundef %add.ptr, ptr noundef %add.ptr2, ptr noundef %add.ptr4) #8
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_link_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_link_dump(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tipc_link_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_tipc_link_class, ptr %1, i32 0, i32 2
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_link_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_header, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_link_class, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_buf, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef %add.ptr, ptr noundef %add.ptr2) #8
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tipc_link_transmq_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 1
  %from = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %from to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %from, align 4
  %conv = zext i16 %3 to i32
  %to = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %to to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %to, align 2
  %conv1 = zext i16 %5 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %fseqno = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %fseqno to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fseqno, align 4
  %conv2 = zext i16 %9 to i32
  %lseqno = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %lseqno to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lseqno, align 2
  %conv3 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %conv, i32 noundef %conv1, i32 noundef %7, i32 noundef %conv2, i32 noundef %conv3) #8
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tipc_link_bc_ack(ptr noundef %iter, i32 noundef %flags, ptr nocapture noundef readnone %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %conv = zext i16 %3 to i32
  %4 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_tipc_link_bc_ack, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp eq i32 %4, %conv
  br i1 %cmp.not, label %if.end37, label %land.end

land.end:                                         ; preds = %entry
  %.b54 = load i1, ptr @trace_raw_output_tipc_link_bc_ack.__already_done, align 1
  br i1 %.b54, label %land.end.cleanup_crit_edge, label %if.then8, !prof !468

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_raw_output_tipc_link_bc_ack.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 325, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tmp_seq, ptr %seq.i, align 8
  %size1.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 1
  %6 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %size1.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 2
  %7 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %len.i.i.i, align 8
  %readpos.i.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 1, i32 3
  %8 = ptrtoint ptr %readpos.i.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %readpos.i.i.i, align 8
  %full.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %full.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %full.i, align 8
  %name = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 1
  %from = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %from to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %from, align 4
  %conv38 = zext i16 %11 to i32
  %to = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %to to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %to, align 2
  %conv39 = zext i16 %13 to i32
  %len = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %fseqno = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %fseqno to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fseqno, align 4
  %conv40 = zext i16 %17 to i32
  %lseqno = getelementptr inbounds %struct.trace_event_raw_tipc_link_transmq_class, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %lseqno to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %lseqno, align 2
  %conv41 = zext i16 %19 to i32
  %call = tail call i32 (ptr, ptr, ptr, ...) @trace_output_call(ptr noundef %iter, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %conv38, i32 noundef %conv39, i32 noundef %15, i32 noundef %conv40, i32 noundef %conv41) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then8, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end37 ], [ 2, %if.then8 ], [ 2, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_output_call(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_node_get_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_node_dump(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tipc_node_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %addr = getelementptr inbounds %struct.trace_event_raw_tipc_node_class, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %__data_loc_header = getelementptr inbounds %struct.trace_event_raw_tipc_node_class, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_header, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_tipc_node_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_buf, align 4
  %and1 = and i32 %7, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.43, i32 noundef %3, ptr noundef %add.ptr, ptr noundef %add.ptr2) #8
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tipc_fsm_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %os = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %os to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %os, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_tipc_fsm_class.symbols) #8
  %evt = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evt, align 4
  %call3 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_tipc_fsm_class.symbols.61) #8
  %ns = getelementptr inbounds %struct.trace_event_raw_tipc_fsm_class, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ns, align 4
  %call5 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %9, ptr noundef nonnull @trace_raw_output_tipc_fsm_class.symbols.74) #8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.47, ptr noundef %add.ptr, ptr noundef %call1, ptr noundef %call3, ptr noundef %call5) #8
  %call6 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tipc_l2_device_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %evt = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %evt, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %3, ptr noundef nonnull @trace_raw_output_tipc_l2_device_event.symbols) #8
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_dev_name, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_b_name = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %__data_loc_b_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_b_name, align 4
  %and2 = and i32 %7, 65535
  %add.ptr3 = getelementptr i8, ptr %1, i32 %and2
  %oper = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %oper to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %oper, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool.not, ptr @.str.91, ptr @.str.90
  %carrier = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %carrier to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %carrier, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.93, ptr @.str.92
  %b_up = getelementptr inbounds %struct.trace_event_raw_tipc_l2_device_event, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %b_up to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %b_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.91, ptr @.str.90
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.82, ptr noundef %call1, ptr noundef %add.ptr, ptr noundef %add.ptr3, ptr noundef nonnull %cond, ptr noundef nonnull %cond6, ptr noundef nonnull %cond9) #8
  %call10 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !204, !205, !206, !207, !208, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!llvm.named.register.sp = !{!458}
!llvm.module.flags = !{!459, !460, !461, !462, !463, !464, !465, !466}
!llvm.ident = !{!467}

!0 = !{ptr @__tracepoint_tipc_skb_dump, !1, !"__tracepoint_tipc_skb_dump", i1 false, i1 false}
!1 = !{!"../net/tipc/./trace.h", i32 159, i32 1}
!2 = !{ptr @__tracepoint_ptr_tipc_skb_dump, !1, !"__tracepoint_ptr_tipc_skb_dump", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_tipc_skb_dump, !1, !"__SCK__tp_func_tipc_skb_dump", i1 false, i1 false}
!4 = !{ptr @__tracepoint_tipc_proto_build, !5, !"__tracepoint_tipc_proto_build", i1 false, i1 false}
!5 = !{!"../net/tipc/./trace.h", i32 160, i32 1}
!6 = !{ptr @__tracepoint_ptr_tipc_proto_build, !5, !"__tracepoint_ptr_tipc_proto_build", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_tipc_proto_build, !5, !"__SCK__tp_func_tipc_proto_build", i1 false, i1 false}
!8 = !{ptr @__tracepoint_tipc_proto_rcv, !9, !"__tracepoint_tipc_proto_rcv", i1 false, i1 false}
!9 = !{!"../net/tipc/./trace.h", i32 161, i32 1}
!10 = !{ptr @__tracepoint_ptr_tipc_proto_rcv, !9, !"__tracepoint_ptr_tipc_proto_rcv", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_tipc_proto_rcv, !9, !"__SCK__tp_func_tipc_proto_rcv", i1 false, i1 false}
!12 = !{ptr @__tracepoint_tipc_list_dump, !13, !"__tracepoint_tipc_list_dump", i1 false, i1 false}
!13 = !{!"../net/tipc/./trace.h", i32 186, i32 1}
!14 = !{ptr @__tracepoint_ptr_tipc_list_dump, !13, !"__tracepoint_ptr_tipc_list_dump", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_tipc_list_dump, !13, !"__SCK__tp_func_tipc_list_dump", i1 false, i1 false}
!16 = !{ptr @__tracepoint_tipc_sk_dump, !17, !"__tracepoint_tipc_sk_dump", i1 false, i1 false}
!17 = !{!"../net/tipc/./trace.h", i32 222, i32 1}
!18 = !{ptr @__tracepoint_ptr_tipc_sk_dump, !17, !"__tracepoint_ptr_tipc_sk_dump", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_tipc_sk_dump, !17, !"__SCK__tp_func_tipc_sk_dump", i1 false, i1 false}
!20 = !{ptr @__tracepoint_tipc_sk_create, !21, !"__tracepoint_tipc_sk_create", i1 false, i1 false}
!21 = !{!"../net/tipc/./trace.h", i32 223, i32 1}
!22 = !{ptr @__tracepoint_ptr_tipc_sk_create, !21, !"__tracepoint_ptr_tipc_sk_create", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_tipc_sk_create, !21, !"__SCK__tp_func_tipc_sk_create", i1 false, i1 false}
!24 = !{ptr @__tracepoint_tipc_sk_sendmcast, !25, !"__tracepoint_tipc_sk_sendmcast", i1 false, i1 false}
!25 = !{!"../net/tipc/./trace.h", i32 224, i32 1}
!26 = !{ptr @__tracepoint_ptr_tipc_sk_sendmcast, !25, !"__tracepoint_ptr_tipc_sk_sendmcast", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_tipc_sk_sendmcast, !25, !"__SCK__tp_func_tipc_sk_sendmcast", i1 false, i1 false}
!28 = !{ptr @__tracepoint_tipc_sk_sendmsg, !29, !"__tracepoint_tipc_sk_sendmsg", i1 false, i1 false}
!29 = !{!"../net/tipc/./trace.h", i32 225, i32 1}
!30 = !{ptr @__tracepoint_ptr_tipc_sk_sendmsg, !29, !"__tracepoint_ptr_tipc_sk_sendmsg", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_tipc_sk_sendmsg, !29, !"__SCK__tp_func_tipc_sk_sendmsg", i1 false, i1 false}
!32 = !{ptr @__tracepoint_tipc_sk_sendstream, !33, !"__tracepoint_tipc_sk_sendstream", i1 false, i1 false}
!33 = !{!"../net/tipc/./trace.h", i32 226, i32 1}
!34 = !{ptr @__tracepoint_ptr_tipc_sk_sendstream, !33, !"__tracepoint_ptr_tipc_sk_sendstream", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_tipc_sk_sendstream, !33, !"__SCK__tp_func_tipc_sk_sendstream", i1 false, i1 false}
!36 = !{ptr @__tracepoint_tipc_sk_poll, !37, !"__tracepoint_tipc_sk_poll", i1 false, i1 false}
!37 = !{!"../net/tipc/./trace.h", i32 227, i32 1}
!38 = !{ptr @__tracepoint_ptr_tipc_sk_poll, !37, !"__tracepoint_ptr_tipc_sk_poll", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_tipc_sk_poll, !37, !"__SCK__tp_func_tipc_sk_poll", i1 false, i1 false}
!40 = !{ptr @__tracepoint_tipc_sk_filter_rcv, !41, !"__tracepoint_tipc_sk_filter_rcv", i1 false, i1 false}
!41 = !{!"../net/tipc/./trace.h", i32 228, i32 1}
!42 = !{ptr @__tracepoint_ptr_tipc_sk_filter_rcv, !41, !"__tracepoint_ptr_tipc_sk_filter_rcv", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_tipc_sk_filter_rcv, !41, !"__SCK__tp_func_tipc_sk_filter_rcv", i1 false, i1 false}
!44 = !{ptr @__tracepoint_tipc_sk_advance_rx, !45, !"__tracepoint_tipc_sk_advance_rx", i1 false, i1 false}
!45 = !{!"../net/tipc/./trace.h", i32 229, i32 1}
!46 = !{ptr @__tracepoint_ptr_tipc_sk_advance_rx, !45, !"__tracepoint_ptr_tipc_sk_advance_rx", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_tipc_sk_advance_rx, !45, !"__SCK__tp_func_tipc_sk_advance_rx", i1 false, i1 false}
!48 = !{ptr @__tracepoint_tipc_sk_rej_msg, !49, !"__tracepoint_tipc_sk_rej_msg", i1 false, i1 false}
!49 = !{!"../net/tipc/./trace.h", i32 230, i32 1}
!50 = !{ptr @__tracepoint_ptr_tipc_sk_rej_msg, !49, !"__tracepoint_ptr_tipc_sk_rej_msg", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_tipc_sk_rej_msg, !49, !"__SCK__tp_func_tipc_sk_rej_msg", i1 false, i1 false}
!52 = !{ptr @__tracepoint_tipc_sk_drop_msg, !53, !"__tracepoint_tipc_sk_drop_msg", i1 false, i1 false}
!53 = !{!"../net/tipc/./trace.h", i32 231, i32 1}
!54 = !{ptr @__tracepoint_ptr_tipc_sk_drop_msg, !53, !"__tracepoint_ptr_tipc_sk_drop_msg", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_tipc_sk_drop_msg, !53, !"__SCK__tp_func_tipc_sk_drop_msg", i1 false, i1 false}
!56 = !{ptr @__tracepoint_tipc_sk_release, !57, !"__tracepoint_tipc_sk_release", i1 false, i1 false}
!57 = !{!"../net/tipc/./trace.h", i32 232, i32 1}
!58 = !{ptr @__tracepoint_ptr_tipc_sk_release, !57, !"__tracepoint_ptr_tipc_sk_release", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_tipc_sk_release, !57, !"__SCK__tp_func_tipc_sk_release", i1 false, i1 false}
!60 = !{ptr @__tracepoint_tipc_sk_shutdown, !61, !"__tracepoint_tipc_sk_shutdown", i1 false, i1 false}
!61 = !{!"../net/tipc/./trace.h", i32 233, i32 1}
!62 = !{ptr @__tracepoint_ptr_tipc_sk_shutdown, !61, !"__tracepoint_ptr_tipc_sk_shutdown", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_tipc_sk_shutdown, !61, !"__SCK__tp_func_tipc_sk_shutdown", i1 false, i1 false}
!64 = !{ptr @__tracepoint_tipc_sk_overlimit1, !65, !"__tracepoint_tipc_sk_overlimit1", i1 false, i1 false}
!65 = !{!"../net/tipc/./trace.h", i32 241, i32 1}
!66 = !{ptr @__tracepoint_ptr_tipc_sk_overlimit1, !65, !"__tracepoint_ptr_tipc_sk_overlimit1", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_tipc_sk_overlimit1, !65, !"__SCK__tp_func_tipc_sk_overlimit1", i1 false, i1 false}
!68 = !{ptr @__tracepoint_tipc_sk_overlimit2, !69, !"__tracepoint_tipc_sk_overlimit2", i1 false, i1 false}
!69 = !{!"../net/tipc/./trace.h", i32 242, i32 1}
!70 = !{ptr @__tracepoint_ptr_tipc_sk_overlimit2, !69, !"__tracepoint_ptr_tipc_sk_overlimit2", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_tipc_sk_overlimit2, !69, !"__SCK__tp_func_tipc_sk_overlimit2", i1 false, i1 false}
!72 = !{ptr @__tracepoint_tipc_link_dump, !73, !"__tracepoint_tipc_link_dump", i1 false, i1 false}
!73 = !{!"../net/tipc/./trace.h", i32 270, i32 1}
!74 = !{ptr @__tracepoint_ptr_tipc_link_dump, !73, !"__tracepoint_ptr_tipc_link_dump", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_tipc_link_dump, !73, !"__SCK__tp_func_tipc_link_dump", i1 false, i1 false}
!76 = !{ptr @__tracepoint_tipc_link_conges, !77, !"__tracepoint_tipc_link_conges", i1 false, i1 false}
!77 = !{!"../net/tipc/./trace.h", i32 271, i32 1}
!78 = !{ptr @__tracepoint_ptr_tipc_link_conges, !77, !"__tracepoint_ptr_tipc_link_conges", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_tipc_link_conges, !77, !"__SCK__tp_func_tipc_link_conges", i1 false, i1 false}
!80 = !{ptr @__tracepoint_tipc_link_timeout, !81, !"__tracepoint_tipc_link_timeout", i1 false, i1 false}
!81 = !{!"../net/tipc/./trace.h", i32 272, i32 1}
!82 = !{ptr @__tracepoint_ptr_tipc_link_timeout, !81, !"__tracepoint_ptr_tipc_link_timeout", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_tipc_link_timeout, !81, !"__SCK__tp_func_tipc_link_timeout", i1 false, i1 false}
!84 = !{ptr @__tracepoint_tipc_link_reset, !85, !"__tracepoint_tipc_link_reset", i1 false, i1 false}
!85 = !{!"../net/tipc/./trace.h", i32 273, i32 1}
!86 = !{ptr @__tracepoint_ptr_tipc_link_reset, !85, !"__tracepoint_ptr_tipc_link_reset", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_tipc_link_reset, !85, !"__SCK__tp_func_tipc_link_reset", i1 false, i1 false}
!88 = !{ptr @__tracepoint_tipc_link_too_silent, !89, !"__tracepoint_tipc_link_too_silent", i1 false, i1 false}
!89 = !{!"../net/tipc/./trace.h", i32 280, i32 1}
!90 = !{ptr @__tracepoint_ptr_tipc_link_too_silent, !89, !"__tracepoint_ptr_tipc_link_too_silent", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_tipc_link_too_silent, !89, !"__SCK__tp_func_tipc_link_too_silent", i1 false, i1 false}
!92 = !{ptr @__tracepoint_tipc_link_retrans, !93, !"__tracepoint_tipc_link_retrans", i1 false, i1 false}
!93 = !{!"../net/tipc/./trace.h", i32 313, i32 1}
!94 = !{ptr @__tracepoint_ptr_tipc_link_retrans, !93, !"__tracepoint_ptr_tipc_link_retrans", i1 false, i1 false}
!95 = !{ptr @__SCK__tp_func_tipc_link_retrans, !93, !"__SCK__tp_func_tipc_link_retrans", i1 false, i1 false}
!96 = !{ptr @__tracepoint_tipc_link_bc_ack, !97, !"__tracepoint_tipc_link_bc_ack", i1 false, i1 false}
!97 = !{!"../net/tipc/./trace.h", i32 319, i32 1}
!98 = !{ptr @__tracepoint_ptr_tipc_link_bc_ack, !97, !"__tracepoint_ptr_tipc_link_bc_ack", i1 false, i1 false}
!99 = !{ptr @__SCK__tp_func_tipc_link_bc_ack, !97, !"__SCK__tp_func_tipc_link_bc_ack", i1 false, i1 false}
!100 = !{ptr @__tracepoint_tipc_node_dump, !101, !"__tracepoint_tipc_node_dump", i1 false, i1 false}
!101 = !{!"../net/tipc/./trace.h", i32 353, i32 1}
!102 = !{ptr @__tracepoint_ptr_tipc_node_dump, !101, !"__tracepoint_ptr_tipc_node_dump", i1 false, i1 false}
!103 = !{ptr @__SCK__tp_func_tipc_node_dump, !101, !"__SCK__tp_func_tipc_node_dump", i1 false, i1 false}
!104 = !{ptr @__tracepoint_tipc_node_create, !105, !"__tracepoint_tipc_node_create", i1 false, i1 false}
!105 = !{!"../net/tipc/./trace.h", i32 354, i32 1}
!106 = !{ptr @__tracepoint_ptr_tipc_node_create, !105, !"__tracepoint_ptr_tipc_node_create", i1 false, i1 false}
!107 = !{ptr @__SCK__tp_func_tipc_node_create, !105, !"__SCK__tp_func_tipc_node_create", i1 false, i1 false}
!108 = !{ptr @__tracepoint_tipc_node_delete, !109, !"__tracepoint_tipc_node_delete", i1 false, i1 false}
!109 = !{!"../net/tipc/./trace.h", i32 355, i32 1}
!110 = !{ptr @__tracepoint_ptr_tipc_node_delete, !109, !"__tracepoint_ptr_tipc_node_delete", i1 false, i1 false}
!111 = !{ptr @__SCK__tp_func_tipc_node_delete, !109, !"__SCK__tp_func_tipc_node_delete", i1 false, i1 false}
!112 = !{ptr @__tracepoint_tipc_node_lost_contact, !113, !"__tracepoint_tipc_node_lost_contact", i1 false, i1 false}
!113 = !{!"../net/tipc/./trace.h", i32 356, i32 1}
!114 = !{ptr @__tracepoint_ptr_tipc_node_lost_contact, !113, !"__tracepoint_ptr_tipc_node_lost_contact", i1 false, i1 false}
!115 = !{ptr @__SCK__tp_func_tipc_node_lost_contact, !113, !"__SCK__tp_func_tipc_node_lost_contact", i1 false, i1 false}
!116 = !{ptr @__tracepoint_tipc_node_timeout, !117, !"__tracepoint_tipc_node_timeout", i1 false, i1 false}
!117 = !{!"../net/tipc/./trace.h", i32 357, i32 1}
!118 = !{ptr @__tracepoint_ptr_tipc_node_timeout, !117, !"__tracepoint_ptr_tipc_node_timeout", i1 false, i1 false}
!119 = !{ptr @__SCK__tp_func_tipc_node_timeout, !117, !"__SCK__tp_func_tipc_node_timeout", i1 false, i1 false}
!120 = !{ptr @__tracepoint_tipc_node_link_up, !121, !"__tracepoint_tipc_node_link_up", i1 false, i1 false}
!121 = !{!"../net/tipc/./trace.h", i32 358, i32 1}
!122 = !{ptr @__tracepoint_ptr_tipc_node_link_up, !121, !"__tracepoint_ptr_tipc_node_link_up", i1 false, i1 false}
!123 = !{ptr @__SCK__tp_func_tipc_node_link_up, !121, !"__SCK__tp_func_tipc_node_link_up", i1 false, i1 false}
!124 = !{ptr @__tracepoint_tipc_node_link_down, !125, !"__tracepoint_tipc_node_link_down", i1 false, i1 false}
!125 = !{!"../net/tipc/./trace.h", i32 359, i32 1}
!126 = !{ptr @__tracepoint_ptr_tipc_node_link_down, !125, !"__tracepoint_ptr_tipc_node_link_down", i1 false, i1 false}
!127 = !{ptr @__SCK__tp_func_tipc_node_link_down, !125, !"__SCK__tp_func_tipc_node_link_down", i1 false, i1 false}
!128 = !{ptr @__tracepoint_tipc_node_reset_links, !129, !"__tracepoint_tipc_node_reset_links", i1 false, i1 false}
!129 = !{!"../net/tipc/./trace.h", i32 360, i32 1}
!130 = !{ptr @__tracepoint_ptr_tipc_node_reset_links, !129, !"__tracepoint_ptr_tipc_node_reset_links", i1 false, i1 false}
!131 = !{ptr @__SCK__tp_func_tipc_node_reset_links, !129, !"__SCK__tp_func_tipc_node_reset_links", i1 false, i1 false}
!132 = !{ptr @__tracepoint_tipc_node_check_state, !133, !"__tracepoint_tipc_node_check_state", i1 false, i1 false}
!133 = !{!"../net/tipc/./trace.h", i32 361, i32 1}
!134 = !{ptr @__tracepoint_ptr_tipc_node_check_state, !133, !"__tracepoint_ptr_tipc_node_check_state", i1 false, i1 false}
!135 = !{ptr @__SCK__tp_func_tipc_node_check_state, !133, !"__SCK__tp_func_tipc_node_check_state", i1 false, i1 false}
!136 = !{ptr @__tracepoint_tipc_link_fsm, !137, !"__tracepoint_tipc_link_fsm", i1 false, i1 false}
!137 = !{!"../net/tipc/./trace.h", i32 392, i32 1}
!138 = !{ptr @__tracepoint_ptr_tipc_link_fsm, !137, !"__tracepoint_ptr_tipc_link_fsm", i1 false, i1 false}
!139 = !{ptr @__SCK__tp_func_tipc_link_fsm, !137, !"__SCK__tp_func_tipc_link_fsm", i1 false, i1 false}
!140 = !{ptr @__tracepoint_tipc_node_fsm, !141, !"__tracepoint_tipc_node_fsm", i1 false, i1 false}
!141 = !{!"../net/tipc/./trace.h", i32 393, i32 1}
!142 = !{ptr @__tracepoint_ptr_tipc_node_fsm, !141, !"__tracepoint_ptr_tipc_node_fsm", i1 false, i1 false}
!143 = !{ptr @__SCK__tp_func_tipc_node_fsm, !141, !"__SCK__tp_func_tipc_node_fsm", i1 false, i1 false}
!144 = !{ptr @__tracepoint_tipc_l2_device_event, !145, !"__tracepoint_tipc_l2_device_event", i1 false, i1 false}
!145 = !{!"../net/tipc/./trace.h", i32 395, i32 1}
!146 = !{ptr @__tracepoint_ptr_tipc_l2_device_event, !145, !"__tracepoint_ptr_tipc_l2_device_event", i1 false, i1 false}
!147 = !{ptr @__SCK__tp_func_tipc_l2_device_event, !145, !"__SCK__tp_func_tipc_l2_device_event", i1 false, i1 false}
!148 = !{ptr @event_class_tipc_skb_class, !149, !"event_class_tipc_skb_class", i1 false, i1 false}
!149 = !{!"../net/tipc/./trace.h", i32 136, i32 1}
!150 = !{ptr @event_tipc_skb_dump, !1, !"event_tipc_skb_dump", i1 false, i1 false}
!151 = !{ptr @__event_tipc_skb_dump, !1, !"__event_tipc_skb_dump", i1 false, i1 false}
!152 = !{ptr @event_tipc_proto_build, !5, !"event_tipc_proto_build", i1 false, i1 false}
!153 = !{ptr @__event_tipc_proto_build, !5, !"__event_tipc_proto_build", i1 false, i1 false}
!154 = !{ptr @event_tipc_proto_rcv, !9, !"event_tipc_proto_rcv", i1 false, i1 false}
!155 = !{ptr @__event_tipc_proto_rcv, !9, !"__event_tipc_proto_rcv", i1 false, i1 false}
!156 = !{ptr @event_class_tipc_list_class, !157, !"event_class_tipc_list_class", i1 false, i1 false}
!157 = !{!"../net/tipc/./trace.h", i32 163, i32 1}
!158 = !{ptr @event_tipc_list_dump, !13, !"event_tipc_list_dump", i1 false, i1 false}
!159 = !{ptr @__event_tipc_list_dump, !13, !"__event_tipc_list_dump", i1 false, i1 false}
!160 = !{ptr @event_class_tipc_sk_class, !161, !"event_class_tipc_sk_class", i1 false, i1 false}
!161 = !{!"../net/tipc/./trace.h", i32 188, i32 1}
!162 = !{ptr @event_tipc_sk_dump, !17, !"event_tipc_sk_dump", i1 false, i1 false}
!163 = !{ptr @__event_tipc_sk_dump, !17, !"__event_tipc_sk_dump", i1 false, i1 false}
!164 = !{ptr @event_tipc_sk_create, !21, !"event_tipc_sk_create", i1 false, i1 false}
!165 = !{ptr @__event_tipc_sk_create, !21, !"__event_tipc_sk_create", i1 false, i1 false}
!166 = !{ptr @event_tipc_sk_sendmcast, !25, !"event_tipc_sk_sendmcast", i1 false, i1 false}
!167 = !{ptr @__event_tipc_sk_sendmcast, !25, !"__event_tipc_sk_sendmcast", i1 false, i1 false}
!168 = !{ptr @event_tipc_sk_sendmsg, !29, !"event_tipc_sk_sendmsg", i1 false, i1 false}
!169 = !{ptr @__event_tipc_sk_sendmsg, !29, !"__event_tipc_sk_sendmsg", i1 false, i1 false}
!170 = !{ptr @event_tipc_sk_sendstream, !33, !"event_tipc_sk_sendstream", i1 false, i1 false}
!171 = !{ptr @__event_tipc_sk_sendstream, !33, !"__event_tipc_sk_sendstream", i1 false, i1 false}
!172 = !{ptr @event_tipc_sk_poll, !37, !"event_tipc_sk_poll", i1 false, i1 false}
!173 = !{ptr @__event_tipc_sk_poll, !37, !"__event_tipc_sk_poll", i1 false, i1 false}
!174 = !{ptr @event_tipc_sk_filter_rcv, !41, !"event_tipc_sk_filter_rcv", i1 false, i1 false}
!175 = !{ptr @__event_tipc_sk_filter_rcv, !41, !"__event_tipc_sk_filter_rcv", i1 false, i1 false}
!176 = !{ptr @event_tipc_sk_advance_rx, !45, !"event_tipc_sk_advance_rx", i1 false, i1 false}
!177 = !{ptr @__event_tipc_sk_advance_rx, !45, !"__event_tipc_sk_advance_rx", i1 false, i1 false}
!178 = !{ptr @event_tipc_sk_rej_msg, !49, !"event_tipc_sk_rej_msg", i1 false, i1 false}
!179 = !{ptr @__event_tipc_sk_rej_msg, !49, !"__event_tipc_sk_rej_msg", i1 false, i1 false}
!180 = !{ptr @event_tipc_sk_drop_msg, !53, !"event_tipc_sk_drop_msg", i1 false, i1 false}
!181 = !{ptr @__event_tipc_sk_drop_msg, !53, !"__event_tipc_sk_drop_msg", i1 false, i1 false}
!182 = !{ptr @event_tipc_sk_release, !57, !"event_tipc_sk_release", i1 false, i1 false}
!183 = !{ptr @__event_tipc_sk_release, !57, !"__event_tipc_sk_release", i1 false, i1 false}
!184 = !{ptr @event_tipc_sk_shutdown, !61, !"event_tipc_sk_shutdown", i1 false, i1 false}
!185 = !{ptr @__event_tipc_sk_shutdown, !61, !"__event_tipc_sk_shutdown", i1 false, i1 false}
!186 = !{ptr @event_tipc_sk_overlimit1, !65, !"event_tipc_sk_overlimit1", i1 false, i1 false}
!187 = !{ptr @__event_tipc_sk_overlimit1, !65, !"__event_tipc_sk_overlimit1", i1 false, i1 false}
!188 = !{ptr @event_tipc_sk_overlimit2, !69, !"event_tipc_sk_overlimit2", i1 false, i1 false}
!189 = !{ptr @__event_tipc_sk_overlimit2, !69, !"__event_tipc_sk_overlimit2", i1 false, i1 false}
!190 = !{ptr @event_class_tipc_link_class, !191, !"event_class_tipc_link_class", i1 false, i1 false}
!191 = !{!"../net/tipc/./trace.h", i32 244, i32 1}
!192 = !{ptr @event_tipc_link_dump, !73, !"event_tipc_link_dump", i1 false, i1 false}
!193 = !{ptr @__event_tipc_link_dump, !73, !"__event_tipc_link_dump", i1 false, i1 false}
!194 = !{ptr @event_tipc_link_conges, !77, !"event_tipc_link_conges", i1 false, i1 false}
!195 = !{ptr @__event_tipc_link_conges, !77, !"__event_tipc_link_conges", i1 false, i1 false}
!196 = !{ptr @event_tipc_link_timeout, !81, !"event_tipc_link_timeout", i1 false, i1 false}
!197 = !{ptr @__event_tipc_link_timeout, !81, !"__event_tipc_link_timeout", i1 false, i1 false}
!198 = !{ptr @event_tipc_link_reset, !85, !"event_tipc_link_reset", i1 false, i1 false}
!199 = !{ptr @__event_tipc_link_reset, !85, !"__event_tipc_link_reset", i1 false, i1 false}
!200 = !{ptr @event_tipc_link_too_silent, !89, !"event_tipc_link_too_silent", i1 false, i1 false}
!201 = !{ptr @__event_tipc_link_too_silent, !89, !"__event_tipc_link_too_silent", i1 false, i1 false}
!202 = !{ptr @event_class_tipc_link_transmq_class, !203, !"event_class_tipc_link_transmq_class", i1 false, i1 false}
!203 = !{!"../net/tipc/./trace.h", i32 282, i32 1}
!204 = !{ptr @event_tipc_link_retrans, !93, !"event_tipc_link_retrans", i1 false, i1 false}
!205 = !{ptr @__event_tipc_link_retrans, !93, !"__event_tipc_link_retrans", i1 false, i1 false}
!206 = !{ptr @event_tipc_link_bc_ack, !97, !"event_tipc_link_bc_ack", i1 false, i1 false}
!207 = !{ptr @__event_tipc_link_bc_ack, !97, !"__event_tipc_link_bc_ack", i1 false, i1 false}
!208 = !{ptr @event_class_tipc_node_class, !209, !"event_class_tipc_node_class", i1 false, i1 false}
!209 = !{!"../net/tipc/./trace.h", i32 327, i32 1}
!210 = !{ptr @event_tipc_node_dump, !101, !"event_tipc_node_dump", i1 false, i1 false}
!211 = !{ptr @__event_tipc_node_dump, !101, !"__event_tipc_node_dump", i1 false, i1 false}
!212 = !{ptr @event_tipc_node_create, !105, !"event_tipc_node_create", i1 false, i1 false}
!213 = !{ptr @__event_tipc_node_create, !105, !"__event_tipc_node_create", i1 false, i1 false}
!214 = !{ptr @event_tipc_node_delete, !109, !"event_tipc_node_delete", i1 false, i1 false}
!215 = !{ptr @__event_tipc_node_delete, !109, !"__event_tipc_node_delete", i1 false, i1 false}
!216 = !{ptr @event_tipc_node_lost_contact, !113, !"event_tipc_node_lost_contact", i1 false, i1 false}
!217 = !{ptr @__event_tipc_node_lost_contact, !113, !"__event_tipc_node_lost_contact", i1 false, i1 false}
!218 = !{ptr @event_tipc_node_timeout, !117, !"event_tipc_node_timeout", i1 false, i1 false}
!219 = !{ptr @__event_tipc_node_timeout, !117, !"__event_tipc_node_timeout", i1 false, i1 false}
!220 = !{ptr @event_tipc_node_link_up, !121, !"event_tipc_node_link_up", i1 false, i1 false}
!221 = !{ptr @__event_tipc_node_link_up, !121, !"__event_tipc_node_link_up", i1 false, i1 false}
!222 = !{ptr @event_tipc_node_link_down, !125, !"event_tipc_node_link_down", i1 false, i1 false}
!223 = !{ptr @__event_tipc_node_link_down, !125, !"__event_tipc_node_link_down", i1 false, i1 false}
!224 = !{ptr @event_tipc_node_reset_links, !129, !"event_tipc_node_reset_links", i1 false, i1 false}
!225 = !{ptr @__event_tipc_node_reset_links, !129, !"__event_tipc_node_reset_links", i1 false, i1 false}
!226 = !{ptr @event_tipc_node_check_state, !133, !"event_tipc_node_check_state", i1 false, i1 false}
!227 = !{ptr @__event_tipc_node_check_state, !133, !"__event_tipc_node_check_state", i1 false, i1 false}
!228 = !{ptr @event_class_tipc_fsm_class, !229, !"event_class_tipc_fsm_class", i1 false, i1 false}
!229 = !{!"../net/tipc/./trace.h", i32 363, i32 1}
!230 = !{ptr @event_tipc_link_fsm, !137, !"event_tipc_link_fsm", i1 false, i1 false}
!231 = !{ptr @__event_tipc_link_fsm, !137, !"__event_tipc_link_fsm", i1 false, i1 false}
!232 = !{ptr @event_tipc_node_fsm, !141, !"event_tipc_node_fsm", i1 false, i1 false}
!233 = !{ptr @__event_tipc_node_fsm, !141, !"__event_tipc_node_fsm", i1 false, i1 false}
!234 = !{ptr @event_class_tipc_l2_device_event, !145, !"event_class_tipc_l2_device_event", i1 false, i1 false}
!235 = !{ptr @event_tipc_l2_device_event, !145, !"event_tipc_l2_device_event", i1 false, i1 false}
!236 = !{ptr @__event_tipc_l2_device_event, !145, !"__event_tipc_l2_device_event", i1 false, i1 false}
!237 = !{ptr @__bpf_trace_tp_map_tipc_skb_dump, !1, !"__bpf_trace_tp_map_tipc_skb_dump", i1 false, i1 false}
!238 = !{ptr @__bpf_trace_tp_map_tipc_proto_build, !5, !"__bpf_trace_tp_map_tipc_proto_build", i1 false, i1 false}
!239 = !{ptr @__bpf_trace_tp_map_tipc_proto_rcv, !9, !"__bpf_trace_tp_map_tipc_proto_rcv", i1 false, i1 false}
!240 = !{ptr @__bpf_trace_tp_map_tipc_list_dump, !13, !"__bpf_trace_tp_map_tipc_list_dump", i1 false, i1 false}
!241 = !{ptr @__bpf_trace_tp_map_tipc_sk_dump, !17, !"__bpf_trace_tp_map_tipc_sk_dump", i1 false, i1 false}
!242 = !{ptr @__bpf_trace_tp_map_tipc_sk_create, !21, !"__bpf_trace_tp_map_tipc_sk_create", i1 false, i1 false}
!243 = !{ptr @__bpf_trace_tp_map_tipc_sk_sendmcast, !25, !"__bpf_trace_tp_map_tipc_sk_sendmcast", i1 false, i1 false}
!244 = !{ptr @__bpf_trace_tp_map_tipc_sk_sendmsg, !29, !"__bpf_trace_tp_map_tipc_sk_sendmsg", i1 false, i1 false}
!245 = !{ptr @__bpf_trace_tp_map_tipc_sk_sendstream, !33, !"__bpf_trace_tp_map_tipc_sk_sendstream", i1 false, i1 false}
!246 = !{ptr @__bpf_trace_tp_map_tipc_sk_poll, !37, !"__bpf_trace_tp_map_tipc_sk_poll", i1 false, i1 false}
!247 = !{ptr @__bpf_trace_tp_map_tipc_sk_filter_rcv, !41, !"__bpf_trace_tp_map_tipc_sk_filter_rcv", i1 false, i1 false}
!248 = !{ptr @__bpf_trace_tp_map_tipc_sk_advance_rx, !45, !"__bpf_trace_tp_map_tipc_sk_advance_rx", i1 false, i1 false}
!249 = !{ptr @__bpf_trace_tp_map_tipc_sk_rej_msg, !49, !"__bpf_trace_tp_map_tipc_sk_rej_msg", i1 false, i1 false}
!250 = !{ptr @__bpf_trace_tp_map_tipc_sk_drop_msg, !53, !"__bpf_trace_tp_map_tipc_sk_drop_msg", i1 false, i1 false}
!251 = !{ptr @__bpf_trace_tp_map_tipc_sk_release, !57, !"__bpf_trace_tp_map_tipc_sk_release", i1 false, i1 false}
!252 = !{ptr @__bpf_trace_tp_map_tipc_sk_shutdown, !61, !"__bpf_trace_tp_map_tipc_sk_shutdown", i1 false, i1 false}
!253 = !{ptr @__bpf_trace_tp_map_tipc_sk_overlimit1, !65, !"__bpf_trace_tp_map_tipc_sk_overlimit1", i1 false, i1 false}
!254 = !{ptr @__bpf_trace_tp_map_tipc_sk_overlimit2, !69, !"__bpf_trace_tp_map_tipc_sk_overlimit2", i1 false, i1 false}
!255 = !{ptr @__bpf_trace_tp_map_tipc_link_dump, !73, !"__bpf_trace_tp_map_tipc_link_dump", i1 false, i1 false}
!256 = !{ptr @__bpf_trace_tp_map_tipc_link_conges, !77, !"__bpf_trace_tp_map_tipc_link_conges", i1 false, i1 false}
!257 = !{ptr @__bpf_trace_tp_map_tipc_link_timeout, !81, !"__bpf_trace_tp_map_tipc_link_timeout", i1 false, i1 false}
!258 = !{ptr @__bpf_trace_tp_map_tipc_link_reset, !85, !"__bpf_trace_tp_map_tipc_link_reset", i1 false, i1 false}
!259 = !{ptr @__bpf_trace_tp_map_tipc_link_too_silent, !89, !"__bpf_trace_tp_map_tipc_link_too_silent", i1 false, i1 false}
!260 = !{ptr @__bpf_trace_tp_map_tipc_link_retrans, !93, !"__bpf_trace_tp_map_tipc_link_retrans", i1 false, i1 false}
!261 = !{ptr @__bpf_trace_tp_map_tipc_link_bc_ack, !97, !"__bpf_trace_tp_map_tipc_link_bc_ack", i1 false, i1 false}
!262 = !{ptr @__bpf_trace_tp_map_tipc_node_dump, !101, !"__bpf_trace_tp_map_tipc_node_dump", i1 false, i1 false}
!263 = !{ptr @__bpf_trace_tp_map_tipc_node_create, !105, !"__bpf_trace_tp_map_tipc_node_create", i1 false, i1 false}
!264 = !{ptr @__bpf_trace_tp_map_tipc_node_delete, !109, !"__bpf_trace_tp_map_tipc_node_delete", i1 false, i1 false}
!265 = !{ptr @__bpf_trace_tp_map_tipc_node_lost_contact, !113, !"__bpf_trace_tp_map_tipc_node_lost_contact", i1 false, i1 false}
!266 = !{ptr @__bpf_trace_tp_map_tipc_node_timeout, !117, !"__bpf_trace_tp_map_tipc_node_timeout", i1 false, i1 false}
!267 = !{ptr @__bpf_trace_tp_map_tipc_node_link_up, !121, !"__bpf_trace_tp_map_tipc_node_link_up", i1 false, i1 false}
!268 = !{ptr @__bpf_trace_tp_map_tipc_node_link_down, !125, !"__bpf_trace_tp_map_tipc_node_link_down", i1 false, i1 false}
!269 = !{ptr @__bpf_trace_tp_map_tipc_node_reset_links, !129, !"__bpf_trace_tp_map_tipc_node_reset_links", i1 false, i1 false}
!270 = !{ptr @__bpf_trace_tp_map_tipc_node_check_state, !133, !"__bpf_trace_tp_map_tipc_node_check_state", i1 false, i1 false}
!271 = !{ptr @__bpf_trace_tp_map_tipc_link_fsm, !137, !"__bpf_trace_tp_map_tipc_link_fsm", i1 false, i1 false}
!272 = !{ptr @__bpf_trace_tp_map_tipc_node_fsm, !141, !"__bpf_trace_tp_map_tipc_node_fsm", i1 false, i1 false}
!273 = !{ptr @__bpf_trace_tp_map_tipc_l2_device_event, !145, !"__bpf_trace_tp_map_tipc_l2_device_event", i1 false, i1 false}
!274 = !{ptr @sysctl_tipc_sk_filter, !275, !"sysctl_tipc_sk_filter", i1 false, i1 false}
!275 = !{!"../net/tipc/trace.c", i32 43, i32 15}
!276 = !{ptr @.str, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../net/tipc/trace.c", i32 61, i32 27}
!278 = !{ptr @.str.1, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../net/tipc/trace.c", i32 69, i32 26}
!280 = !{ptr @.str.2, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../net/tipc/trace.c", i32 70, i32 34}
!282 = !{ptr @.str.3, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../net/tipc/trace.c", i32 73, i32 34}
!284 = !{ptr @.str.4, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../net/tipc/trace.c", i32 80, i32 35}
!286 = !{ptr @.str.5, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../net/tipc/trace.c", i32 95, i32 35}
!288 = !{ptr @.str.6, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../net/tipc/trace.c", i32 127, i32 34}
!290 = !{ptr @.str.7, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../net/tipc/trace.c", i32 132, i32 34}
!292 = !{ptr @.str.8, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../net/tipc/trace.c", i32 133, i32 40}
!294 = !{ptr @.str.9, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../net/tipc/trace.c", i32 139, i32 34}
!296 = !{ptr @.str.10, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../net/tipc/trace.c", i32 141, i32 34}
!298 = !{ptr @.str.11, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../net/tipc/trace.c", i32 143, i32 34}
!300 = !{ptr @.str.12, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../net/tipc/trace.c", i32 147, i32 34}
!302 = !{ptr @.str.13, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../net/tipc/trace.c", i32 153, i32 34}
!304 = !{ptr @.str.14, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../net/tipc/trace.c", i32 174, i32 27}
!306 = !{ptr @.str.15, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../net/tipc/trace.c", i32 179, i32 26}
!308 = !{ptr @.str.16, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../net/tipc/trace.c", i32 186, i32 35}
!310 = !{ptr @.str.17, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../net/tipc/trace.c", i32 190, i32 36}
!312 = !{ptr @.str.18, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../net/tipc/trace.c", i32 198, i32 37}
!314 = !{ptr @.str.19, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../net/tipc/trace.c", i32 201, i32 36}
!316 = !{ptr @__tpstrtab_tipc_skb_dump, !1, !"__tpstrtab_tipc_skb_dump", i1 false, i1 false}
!317 = !{ptr @__tpstrtab_tipc_proto_build, !5, !"__tpstrtab_tipc_proto_build", i1 false, i1 false}
!318 = !{ptr @__tpstrtab_tipc_proto_rcv, !9, !"__tpstrtab_tipc_proto_rcv", i1 false, i1 false}
!319 = !{ptr @__tpstrtab_tipc_list_dump, !13, !"__tpstrtab_tipc_list_dump", i1 false, i1 false}
!320 = !{ptr @__tpstrtab_tipc_sk_dump, !17, !"__tpstrtab_tipc_sk_dump", i1 false, i1 false}
!321 = !{ptr @__tpstrtab_tipc_sk_create, !21, !"__tpstrtab_tipc_sk_create", i1 false, i1 false}
!322 = !{ptr @__tpstrtab_tipc_sk_sendmcast, !25, !"__tpstrtab_tipc_sk_sendmcast", i1 false, i1 false}
!323 = !{ptr @__tpstrtab_tipc_sk_sendmsg, !29, !"__tpstrtab_tipc_sk_sendmsg", i1 false, i1 false}
!324 = !{ptr @__tpstrtab_tipc_sk_sendstream, !33, !"__tpstrtab_tipc_sk_sendstream", i1 false, i1 false}
!325 = !{ptr @__tpstrtab_tipc_sk_poll, !37, !"__tpstrtab_tipc_sk_poll", i1 false, i1 false}
!326 = !{ptr @__tpstrtab_tipc_sk_filter_rcv, !41, !"__tpstrtab_tipc_sk_filter_rcv", i1 false, i1 false}
!327 = !{ptr @__tpstrtab_tipc_sk_advance_rx, !45, !"__tpstrtab_tipc_sk_advance_rx", i1 false, i1 false}
!328 = !{ptr @__tpstrtab_tipc_sk_rej_msg, !49, !"__tpstrtab_tipc_sk_rej_msg", i1 false, i1 false}
!329 = !{ptr @__tpstrtab_tipc_sk_drop_msg, !53, !"__tpstrtab_tipc_sk_drop_msg", i1 false, i1 false}
!330 = !{ptr @__tpstrtab_tipc_sk_release, !57, !"__tpstrtab_tipc_sk_release", i1 false, i1 false}
!331 = !{ptr @__tpstrtab_tipc_sk_shutdown, !61, !"__tpstrtab_tipc_sk_shutdown", i1 false, i1 false}
!332 = !{ptr @__tpstrtab_tipc_sk_overlimit1, !65, !"__tpstrtab_tipc_sk_overlimit1", i1 false, i1 false}
!333 = !{ptr @__tpstrtab_tipc_sk_overlimit2, !69, !"__tpstrtab_tipc_sk_overlimit2", i1 false, i1 false}
!334 = !{ptr @__tpstrtab_tipc_link_dump, !73, !"__tpstrtab_tipc_link_dump", i1 false, i1 false}
!335 = !{ptr @__tpstrtab_tipc_link_conges, !77, !"__tpstrtab_tipc_link_conges", i1 false, i1 false}
!336 = !{ptr @__tpstrtab_tipc_link_timeout, !81, !"__tpstrtab_tipc_link_timeout", i1 false, i1 false}
!337 = !{ptr @__tpstrtab_tipc_link_reset, !85, !"__tpstrtab_tipc_link_reset", i1 false, i1 false}
!338 = !{ptr @__tpstrtab_tipc_link_too_silent, !89, !"__tpstrtab_tipc_link_too_silent", i1 false, i1 false}
!339 = !{ptr @__tpstrtab_tipc_link_retrans, !93, !"__tpstrtab_tipc_link_retrans", i1 false, i1 false}
!340 = !{ptr @__tpstrtab_tipc_link_bc_ack, !97, !"__tpstrtab_tipc_link_bc_ack", i1 false, i1 false}
!341 = !{ptr @__tpstrtab_tipc_node_dump, !101, !"__tpstrtab_tipc_node_dump", i1 false, i1 false}
!342 = !{ptr @__tpstrtab_tipc_node_create, !105, !"__tpstrtab_tipc_node_create", i1 false, i1 false}
!343 = !{ptr @__tpstrtab_tipc_node_delete, !109, !"__tpstrtab_tipc_node_delete", i1 false, i1 false}
!344 = !{ptr @__tpstrtab_tipc_node_lost_contact, !113, !"__tpstrtab_tipc_node_lost_contact", i1 false, i1 false}
!345 = !{ptr @__tpstrtab_tipc_node_timeout, !117, !"__tpstrtab_tipc_node_timeout", i1 false, i1 false}
!346 = !{ptr @__tpstrtab_tipc_node_link_up, !121, !"__tpstrtab_tipc_node_link_up", i1 false, i1 false}
!347 = !{ptr @__tpstrtab_tipc_node_link_down, !125, !"__tpstrtab_tipc_node_link_down", i1 false, i1 false}
!348 = !{ptr @__tpstrtab_tipc_node_reset_links, !129, !"__tpstrtab_tipc_node_reset_links", i1 false, i1 false}
!349 = !{ptr @__tpstrtab_tipc_node_check_state, !133, !"__tpstrtab_tipc_node_check_state", i1 false, i1 false}
!350 = !{ptr @__tpstrtab_tipc_link_fsm, !137, !"__tpstrtab_tipc_link_fsm", i1 false, i1 false}
!351 = !{ptr @__tpstrtab_tipc_node_fsm, !141, !"__tpstrtab_tipc_node_fsm", i1 false, i1 false}
!352 = !{ptr @__tpstrtab_tipc_l2_device_event, !145, !"__tpstrtab_tipc_l2_device_event", i1 false, i1 false}
!353 = !{ptr @str__tipc__trace_system_name, !354, !"str__tipc__trace_system_name", i1 false, i1 false}
!354 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!355 = !{ptr @.str.20, !149, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.21, !149, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.22, !149, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.23, !149, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @trace_event_fields_tipc_skb_class, !149, !"trace_event_fields_tipc_skb_class", i1 false, i1 false}
!360 = !{ptr @trace_event_type_funcs_tipc_skb_class, !149, !"trace_event_type_funcs_tipc_skb_class", i1 false, i1 false}
!361 = !{ptr @.str.24, !149, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @print_fmt_tipc_skb_class, !149, !"print_fmt_tipc_skb_class", i1 false, i1 false}
!363 = !{ptr @trace_event_fields_tipc_list_class, !157, !"trace_event_fields_tipc_list_class", i1 false, i1 false}
!364 = !{ptr @trace_event_type_funcs_tipc_list_class, !157, !"trace_event_type_funcs_tipc_list_class", i1 false, i1 false}
!365 = !{ptr @print_fmt_tipc_list_class, !157, !"print_fmt_tipc_list_class", i1 false, i1 false}
!366 = !{ptr @.str.25, !161, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.26, !161, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.27, !161, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @trace_event_fields_tipc_sk_class, !161, !"trace_event_fields_tipc_sk_class", i1 false, i1 false}
!370 = !{ptr @trace_event_type_funcs_tipc_sk_class, !161, !"trace_event_type_funcs_tipc_sk_class", i1 false, i1 false}
!371 = !{ptr @.str.28, !161, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @print_fmt_tipc_sk_class, !161, !"print_fmt_tipc_sk_class", i1 false, i1 false}
!373 = !{ptr @.str.29, !191, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.30, !191, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @trace_event_fields_tipc_link_class, !191, !"trace_event_fields_tipc_link_class", i1 false, i1 false}
!376 = !{ptr @trace_event_type_funcs_tipc_link_class, !191, !"trace_event_type_funcs_tipc_link_class", i1 false, i1 false}
!377 = !{ptr @.str.31, !191, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @print_fmt_tipc_link_class, !191, !"print_fmt_tipc_link_class", i1 false, i1 false}
!379 = !{ptr @.str.32, !203, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.33, !203, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.34, !203, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.35, !203, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.36, !203, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.37, !203, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @trace_event_fields_tipc_link_transmq_class, !203, !"trace_event_fields_tipc_link_transmq_class", i1 false, i1 false}
!386 = !{ptr @trace_event_type_funcs_tipc_link_transmq_class, !203, !"trace_event_type_funcs_tipc_link_transmq_class", i1 false, i1 false}
!387 = !{ptr @.str.38, !203, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @print_fmt_tipc_link_transmq_class, !203, !"print_fmt_tipc_link_transmq_class", i1 false, i1 false}
!389 = !{ptr @trace_event_type_funcs_tipc_link_bc_ack, !97, !"trace_event_type_funcs_tipc_link_bc_ack", i1 false, i1 false}
!390 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!391 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @print_fmt_tipc_link_bc_ack, !97, !"print_fmt_tipc_link_bc_ack", i1 false, i1 false}
!395 = !{ptr @.str.42, !209, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @trace_event_fields_tipc_node_class, !209, !"trace_event_fields_tipc_node_class", i1 false, i1 false}
!397 = !{ptr @trace_event_type_funcs_tipc_node_class, !209, !"trace_event_type_funcs_tipc_node_class", i1 false, i1 false}
!398 = !{ptr @.str.43, !209, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @print_fmt_tipc_node_class, !209, !"print_fmt_tipc_node_class", i1 false, i1 false}
!400 = !{ptr @.str.44, !229, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.45, !229, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @.str.46, !229, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @trace_event_fields_tipc_fsm_class, !229, !"trace_event_fields_tipc_fsm_class", i1 false, i1 false}
!404 = !{ptr @trace_event_type_funcs_tipc_fsm_class, !229, !"trace_event_type_funcs_tipc_fsm_class", i1 false, i1 false}
!405 = !{ptr @.str.47, !229, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @.str.48, !229, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @.str.49, !229, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @.str.50, !229, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @.str.51, !229, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.52, !229, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @.str.53, !229, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.54, !229, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.55, !229, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @.str.56, !229, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @.str.57, !229, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @.str.58, !229, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.59, !229, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @.str.60, !229, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @trace_raw_output_tipc_fsm_class.symbols, !229, !"symbols", i1 false, i1 false}
!420 = !{ptr @.str.62, !229, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @.str.63, !229, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @.str.64, !229, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @.str.65, !229, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.66, !229, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.67, !229, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @.str.68, !229, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @.str.69, !229, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.70, !229, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.71, !229, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.72, !229, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @.str.73, !229, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @trace_raw_output_tipc_fsm_class.symbols.61, !229, !"symbols", i1 false, i1 false}
!433 = !{ptr @trace_raw_output_tipc_fsm_class.symbols.74, !229, !"symbols", i1 false, i1 false}
!434 = !{ptr @print_fmt_tipc_fsm_class, !229, !"print_fmt_tipc_fsm_class", i1 false, i1 false}
!435 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @.str.81, !145, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @trace_event_fields_tipc_l2_device_event, !145, !"trace_event_fields_tipc_l2_device_event", i1 false, i1 false}
!443 = !{ptr @trace_event_type_funcs_tipc_l2_device_event, !145, !"trace_event_type_funcs_tipc_l2_device_event", i1 false, i1 false}
!444 = !{ptr @.str.82, !145, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @.str.83, !145, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.84, !145, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @.str.85, !145, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @.str.86, !145, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @.str.87, !145, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @.str.88, !145, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @.str.89, !145, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @trace_raw_output_tipc_l2_device_event.symbols, !145, !"symbols", i1 false, i1 false}
!453 = !{ptr @.str.90, !145, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @.str.91, !145, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @.str.92, !145, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @.str.93, !145, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @print_fmt_tipc_l2_device_event, !145, !"print_fmt_tipc_l2_device_event", i1 false, i1 false}
!458 = !{!"sp"}
!459 = !{i32 1, !"wchar_size", i32 2}
!460 = !{i32 1, !"min_enum_size", i32 4}
!461 = !{i32 8, !"branch-target-enforcement", i32 0}
!462 = !{i32 8, !"sign-return-address", i32 0}
!463 = !{i32 8, !"sign-return-address-all", i32 0}
!464 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!465 = !{i32 7, !"uwtable", i32 1}
!466 = !{i32 7, !"frame-pointer", i32 2}
!467 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!468 = !{!"branch_weights", i32 2000, i32 1}
!469 = !{!"branch_weights", i32 1, i32 2000}
!470 = !{!"auto-init"}
!471 = !{i64 1284578, i64 1284605}
!472 = !{i64 1285273, i64 1285300, i64 1285333, i64 1285354, i64 1285381, i64 1285407}
