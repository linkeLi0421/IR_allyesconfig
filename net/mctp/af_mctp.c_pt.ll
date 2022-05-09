; ModuleID = '/llk/IR_all_yes/net/mctp/af_mctp.c_pt.bc'
source_filename = "../net/mctp/af_mctp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.165 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.167, %struct.trace_event, ptr, ptr, %union.anon.168, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.167 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.170 = type { %struct.bpf_raw_event_map }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.114 = type { ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.lock_class_key = type { %union.anon.10 }
%union.anon.10 = type { %struct.hlist_node }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mctp_key_acquire = type { %struct.trace_entry, i8, i8, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.mctp_sk_key = type { i8, i8, i8, ptr, %struct.hlist_node, %struct.hlist_node, %struct.spinlock, %struct.refcount_struct, ptr, ptr, i8, i8, i8, i32, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mctp_key_release = type { %struct.trace_entry, i8, i8, i8, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.mctp_sock = type { %struct.sock, i32, i8, i8, i8, %struct.hlist_head, %struct.timer_list }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.0, %union.anon.1, %union.anon.2, i16, i8, i8, i32, %union.anon.4, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.4 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_mctp = type { i16, i16, i32, %struct.mctp_addr, i8, i8, i8 }
%struct.mctp_addr = type { i8 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.113, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.5, %union.anon.111 }
%union.anon.5 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.113 = type { ptr }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
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
%struct.sockaddr_mctp_ext = type { %struct.sockaddr_mctp, i32, i8, [3 x i8], [32 x i8] }
%struct.mctp_hdr = type { i8, i8, i8, i8 }

@__tpstrtab_mctp_key_acquire = internal constant [17 x i8] c"mctp_key_acquire\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mctp_key_acquire = dso_local global %struct.static_call_key { ptr @__traceiter_mctp_key_acquire }, align 4
@__tracepoint_mctp_key_acquire = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mctp_key_acquire, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mctp_key_acquire, ptr null, ptr @__traceiter_mctp_key_acquire, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mctp_key_acquire = internal constant ptr @__tracepoint_mctp_key_acquire, section "__tracepoints_ptrs", align 4
@__tpstrtab_mctp_key_release = internal constant [17 x i8] c"mctp_key_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mctp_key_release = dso_local global %struct.static_call_key { ptr @__traceiter_mctp_key_release }, align 4
@__tracepoint_mctp_key_release = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mctp_key_release, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mctp_key_release, ptr null, ptr @__traceiter_mctp_key_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mctp_key_release = internal constant ptr @__tracepoint_mctp_key_release, section "__tracepoints_ptrs", align 4
@str__mctp__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mctp\00", [27 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MCTP_TRACE_KEY_TIMEOUT\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MCTP_TRACE_KEY_TIMEOUT = internal global %struct.trace_eval_map { ptr @str__mctp__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_MCTP_TRACE_KEY_TIMEOUT = internal global ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_TIMEOUT, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MCTP_TRACE_KEY_REPLIED\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MCTP_TRACE_KEY_REPLIED = internal global %struct.trace_eval_map { ptr @str__mctp__trace_system_name, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_MCTP_TRACE_KEY_REPLIED = internal global ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_REPLIED, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MCTP_TRACE_KEY_INVALIDATED\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MCTP_TRACE_KEY_INVALIDATED = internal global %struct.trace_eval_map { ptr @str__mctp__trace_system_name, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_MCTP_TRACE_KEY_INVALIDATED = internal global ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_INVALIDATED, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MCTP_TRACE_KEY_CLOSED\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MCTP_TRACE_KEY_CLOSED = internal global %struct.trace_eval_map { ptr @str__mctp__trace_system_name, ptr @.str.3, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_MCTP_TRACE_KEY_CLOSED = internal global ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_CLOSED, section "_ftrace_eval_map", align 4
@trace_event_fields_mctp_key_acquire = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.165 { %struct.anon.166 { ptr @.str.5, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.165 { %struct.anon.166 { ptr @.str.6, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.165 { %struct.anon.166 { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mctp_key_acquire = internal global %struct.trace_event_class { ptr @str__mctp__trace_system_name, ptr @trace_event_raw_event_mctp_key_acquire, ptr @perf_trace_mctp_key_acquire, ptr @trace_event_reg, ptr @trace_event_fields_mctp_key_acquire, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mctp_key_acquire, i64 24), ptr getelementptr (i8, ptr @event_class_mctp_key_acquire, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mctp_key_acquire = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mctp_key_acquire, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mctp_key_acquire = internal global { [63 x i8], [33 x i8] } { [63 x i8] c"\22local %d, peer %d, tag %1x\22, REC->laddr, REC->paddr, REC->tag\00", [33 x i8] zeroinitializer }, align 32
@event_mctp_key_acquire = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mctp_key_acquire, %union.anon.167 { ptr @__tracepoint_mctp_key_acquire }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mctp_key_acquire }, ptr @print_fmt_mctp_key_acquire, ptr null, %union.anon.168 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mctp_key_acquire = internal global ptr @event_mctp_key_acquire, section "_ftrace_events", align 4
@trace_event_fields_mctp_key_release = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.165 { %struct.anon.166 { ptr @.str.5, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.165 { %struct.anon.166 { ptr @.str.6, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.165 { %struct.anon.166 { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.165 { %struct.anon.166 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mctp_key_release = internal global %struct.trace_event_class { ptr @str__mctp__trace_system_name, ptr @trace_event_raw_event_mctp_key_release, ptr @perf_trace_mctp_key_release, ptr @trace_event_reg, ptr @trace_event_fields_mctp_key_release, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mctp_key_release, i64 24), ptr getelementptr (i8, ptr @event_class_mctp_key_release, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mctp_key_release = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mctp_key_release, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mctp_key_release = internal global { [259 x i8], [93 x i8] } { [259 x i8] c"\22local %d, peer %d, tag %1x %s\22, REC->laddr, REC->paddr, REC->tag, __print_symbolic(REC->reason, { MCTP_TRACE_KEY_TIMEOUT, \22timeout\22 }, { MCTP_TRACE_KEY_REPLIED, \22replied\22 }, { MCTP_TRACE_KEY_INVALIDATED, \22invalidated\22 }, { MCTP_TRACE_KEY_CLOSED, \22closed\22 })\00", [93 x i8] zeroinitializer }, align 32
@event_mctp_key_release = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mctp_key_release, %union.anon.167 { ptr @__tracepoint_mctp_key_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mctp_key_release }, ptr @print_fmt_mctp_key_release, ptr null, %union.anon.168 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mctp_key_release = internal global ptr @event_mctp_key_release, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mctp_key_acquire = internal global %union.anon.169 { %struct.bpf_raw_event_map { ptr @__tracepoint_mctp_key_acquire, ptr @__bpf_trace_mctp_key_acquire, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mctp_key_release = internal global %union.anon.170 { %struct.bpf_raw_event_map { ptr @__tracepoint_mctp_key_release, ptr @__bpf_trace_mctp_key_release, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@mctp_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr @mctp_sk_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mctp_sk_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mctp_sk_hash, ptr @mctp_sk_unhash, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1024, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.114 zeroinitializer, ptr null, [32 x i8] c"MCTP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_mctp__485_525_mctp_init4 = internal global ptr @mctp_init, section ".initcall4.init", align 4
@__exitcall_mctp_exit = internal global ptr @mctp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description486 = internal constant [27 x i8] c"mctp.description=MCTP core\00", section ".modinfo", align 1
@__UNIQUE_ID_file487 = internal constant [24 x i8] c"mctp.file=net/mctp/mctp\00", section ".modinfo", align 1
@__UNIQUE_ID_license488 = internal constant [20 x i8] c"mctp.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author489 = internal constant [50 x i8] c"mctp.author=Jeremy Kerr <jk@codeconstruct.com.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias490 = internal constant [21 x i8] c"mctp.alias=net-pf-45\00", section ".modinfo", align 1
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"__u8\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"paddr\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"laddr\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tag\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"local %d, peer %d, tag %1x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reason\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"local %d, peer %d, tag %1x %s\0A\00", [33 x i8] zeroinitializer }, align 32
@trace_raw_output_mctp_key_release.symbols = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.12 }, %struct.trace_print_flags { i32 1, ptr @.str.13 }, %struct.trace_print_flags { i32 2, ptr @.str.14 }, %struct.trace_print_flags { i32 3, ptr @.str.15 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"replied\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"invalidated\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"closed\00", [25 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mctp_sk_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&msk->key_expiry)\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/mctp.h\00", [36 x i8] zeroinitializer }, align 32
@trace_mctp_key_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@mctp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016mctp: management component transport protocol core\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mctp_init\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/mctp/af_mctp.c\00", [45 x i8] zeroinitializer }, align 32
@mctp_init._entry_ptr = internal global ptr @mctp_init._entry, section ".printk_index", align 4
@mctp_pf = internal global { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 45, ptr @mctp_pf_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@mctp_dgram_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 45, ptr null, ptr @mctp_release, ptr @mctp_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @sock_no_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @mctp_setsockopt, ptr @mctp_getsockopt, ptr null, ptr @mctp_sendmsg, ptr @mctp_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/mctp.h\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"str__mctp__trace_system_name\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 36, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 21, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 22, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 23, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 24, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [36 x i8] c"trace_event_fields_mctp_key_acquire\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_mctp_key_acquire\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"print_fmt_mctp_key_acquire\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"event_mctp_key_acquire\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [36 x i8] c"trace_event_fields_mctp_key_release\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_mctp_key_release\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"print_fmt_mctp_key_release\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"event_mctp_key_release\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"mctp_proto\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 420, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 26, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 363, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [31 x i8] c"../include/trace/events/mctp.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 46, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 108, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 729, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 486, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [8 x i8] c"mctp_pf\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 472, i32 32 }
@___asan_gen_.142 = private unnamed_addr constant [15 x i8] c"mctp_dgram_ops\00", align 1
@___asan_gen_.143 = private constant [22 x i8] c"../net/mctp/af_mctp.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 296, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 230, i32 6 }
@___asan_gen_.149 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 214, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 156, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [22 x i8] c"../include/net/mctp.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 194, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @TRACE_SYSTEM_MCTP_TRACE_KEY_CLOSED, ptr @TRACE_SYSTEM_MCTP_TRACE_KEY_INVALIDATED, ptr @TRACE_SYSTEM_MCTP_TRACE_KEY_REPLIED, ptr @TRACE_SYSTEM_MCTP_TRACE_KEY_TIMEOUT, ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_CLOSED, ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_INVALIDATED, ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_REPLIED, ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_TIMEOUT, ptr @__UNIQUE_ID_alias490, ptr @__UNIQUE_ID_author489, ptr @__UNIQUE_ID_description486, ptr @__UNIQUE_ID_file487, ptr @__UNIQUE_ID_license488, ptr @__bpf_trace_tp_map_mctp_key_acquire, ptr @__bpf_trace_tp_map_mctp_key_release, ptr @__event_mctp_key_acquire, ptr @__event_mctp_key_release, ptr @__exitcall_mctp_exit, ptr @__initcall__kmod_mctp__485_525_mctp_init4, ptr @__tracepoint_mctp_key_acquire, ptr @__tracepoint_mctp_key_release, ptr @__tracepoint_ptr_mctp_key_acquire, ptr @__tracepoint_ptr_mctp_key_release, ptr @event_class_mctp_key_acquire, ptr @event_class_mctp_key_release, ptr @event_mctp_key_acquire, ptr @event_mctp_key_release, ptr @mctp_exit, ptr @mctp_init._entry, ptr @mctp_init._entry_ptr, ptr @str__mctp__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @trace_event_fields_mctp_key_acquire, ptr @trace_event_type_funcs_mctp_key_acquire, ptr @print_fmt_mctp_key_acquire, ptr @trace_event_fields_mctp_key_release, ptr @trace_event_type_funcs_mctp_key_release, ptr @print_fmt_mctp_key_release, ptr @mctp_proto, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @trace_raw_output_mctp_key_release.symbols, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @mctp_sk_init.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mctp_pf, ptr @mctp_dgram_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mctp__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mctp_key_acquire to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mctp_key_acquire to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mctp_key_acquire to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mctp_key_acquire to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mctp_key_release to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mctp_key_release to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mctp_key_release to i32), i32 259, i32 352, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mctp_key_release to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_mctp_key_release.symbols to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_sk_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_pf to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_dgram_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mctp_key_acquire(ptr nocapture readnone %__data, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mctp_key_acquire, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %key) #9
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
define dso_local i32 @__traceiter_mctp_key_release(ptr nocapture readnone %__data, ptr noundef %key, i32 noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mctp_key_release, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %key, i32 noundef %reason) #9
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
define internal void @trace_event_raw_event_mctp_key_acquire(ptr noundef %__data, ptr nocapture noundef readonly %key) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !111

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !112

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %key, align 4
  %paddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_acquire, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %paddr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %paddr, align 4
  %local_addr = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 1
  %6 = ptrtoint ptr %local_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %local_addr, align 1
  %laddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_acquire, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %laddr, align 1
  %tag = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 2
  %9 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tag, align 2
  %tag6 = getelementptr inbounds %struct.trace_event_raw_mctp_key_acquire, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %tag6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tag6, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mctp_key_acquire(ptr noundef %__data, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !113
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
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
  %24 = call i32 @llvm.read_register.i32(metadata !101) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %key, align 4
  %paddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_acquire, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %paddr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %paddr, align 4
  %local_addr = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 1
  %30 = ptrtoint ptr %local_addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %local_addr, align 1
  %laddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_acquire, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %laddr, align 1
  %tag = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 2
  %33 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tag, align 2
  %tag17 = getelementptr inbounds %struct.trace_event_raw_mctp_key_acquire, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %tag17 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tag17, align 2
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mctp_key_release(ptr noundef %__data, ptr nocapture noundef readonly %key, i32 noundef %reason) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !111

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !112

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %key, align 4
  %paddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %paddr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %paddr, align 4
  %local_addr = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 1
  %6 = ptrtoint ptr %local_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %local_addr, align 1
  %laddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %laddr, align 1
  %tag = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 2
  %9 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tag, align 2
  %tag6 = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %tag6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tag6, align 2
  %reason7 = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %reason7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %reason, ptr %reason7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mctp_key_release(ptr noundef %__data, ptr nocapture noundef readonly %key, i32 noundef %reason) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !113
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
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
  %24 = call i32 @llvm.read_register.i32(metadata !101) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %key, align 4
  %paddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %paddr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %paddr, align 4
  %local_addr = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 1
  %30 = ptrtoint ptr %local_addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %local_addr, align 1
  %laddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %laddr, align 1
  %tag = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 2
  %33 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tag, align 2
  %tag17 = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %tag17 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tag17, align 2
  %reason18 = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %reason18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %reason, ptr %reason18, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mctp_key_acquire(ptr noundef %__data, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %key to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mctp_key_release(ptr noundef %__data, ptr noundef %key, i32 noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %key to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %reason to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mctp_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mctp_device_exit() #9
  tail call void @mctp_neigh_exit() #9
  tail call void @mctp_routes_exit() #9
  tail call void @proto_unregister(ptr noundef nonnull @mctp_proto) #9
  tail call void @sock_unregister(i32 noundef 45) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_device_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_neigh_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_routes_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  %call7 = tail call i32 @sock_register(ptr noundef nonnull @mctp_pf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @proto_register(ptr noundef nonnull @mctp_proto, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.err_unreg_sock_crit_edge

if.end.err_unreg_sock_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unreg_sock

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @mctp_routes_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.err_unreg_proto_crit_edge

if.end11.err_unreg_proto_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unreg_proto

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @mctp_neigh_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_unreg_proto_crit_edge

if.end15.err_unreg_proto_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unreg_proto

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mctp_device_init() #9
  br label %cleanup

err_unreg_proto:                                  ; preds = %if.end15.err_unreg_proto_crit_edge, %if.end11.err_unreg_proto_crit_edge
  %rc.0 = phi i32 [ %call12, %if.end11.err_unreg_proto_crit_edge ], [ %call16, %if.end15.err_unreg_proto_crit_edge ]
  tail call void @proto_unregister(ptr noundef nonnull @mctp_proto) #9
  br label %err_unreg_sock

err_unreg_sock:                                   ; preds = %err_unreg_proto, %if.end.err_unreg_sock_crit_edge
  %rc.1 = phi i32 [ %call8, %if.end.err_unreg_sock_crit_edge ], [ %rc.0, %err_unreg_proto ]
  tail call void @sock_unregister(i32 noundef 45) #9
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_sock, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %err_unreg_sock ], [ 0, %if.end19 ], [ %call7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mctp_key_acquire(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %laddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_acquire, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %laddr, align 1
  %conv = zext i8 %3 to i32
  %paddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_acquire, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %paddr, align 4
  %conv1 = zext i8 %5 to i32
  %tag = getelementptr inbounds %struct.trace_event_raw_mctp_key_acquire, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tag, align 2
  %conv2 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #9
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
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
define internal i32 @trace_raw_output_mctp_key_release(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %laddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %laddr, align 1
  %conv = zext i8 %3 to i32
  %paddr = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %paddr, align 4
  %conv1 = zext i8 %5 to i32
  %tag = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tag, align 2
  %conv2 = zext i8 %7 to i32
  %reason = getelementptr inbounds %struct.trace_event_raw_mctp_key_release, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reason, align 4
  %call3 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %9, ptr noundef nonnull @trace_raw_output_mctp_key_release.symbols) #9
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, ptr noundef %call3) #9
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_sk_close(ptr noundef %sk, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %key_expiry = getelementptr inbounds %struct.mctp_sock, ptr %sk, i32 0, i32 6
  %call = tail call i32 @del_timer_sync(ptr noundef %key_expiry) #9
  tail call void @sk_common_release(ptr noundef %sk) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_sk_init(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %keys = getelementptr inbounds %struct.mctp_sock, ptr %sk, i32 0, i32 5
  %0 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %keys, align 8
  %key_expiry = getelementptr inbounds %struct.mctp_sock, ptr %sk, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %key_expiry, ptr noundef nonnull @mctp_sk_expire_keys, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @mctp_sk_init.__key) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_sk_hash(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %bind_lock = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 52, i32 1
  tail call void @mutex_lock_nested(ptr noundef %bind_lock, i32 noundef 0) #9
  %binds = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 52, i32 2
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #9, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !112

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !111

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %skc_reuseport.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %4 = ptrtoint ptr %skc_reuseport.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %skc_reuseport.i, align 1
  %5 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %sock_hold.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

sock_hold.exit.i.if.else.i_crit_edge:             ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sock_hold.exit.i
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %6 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp.i = icmp eq i16 %7, 10
  br i1 %cmp.i, label %land.lhs.true.i.for.cond.i.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.for.cond.i.i_crit_edge:           ; preds = %land.lhs.true.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %land.lhs.true.i.for.cond.i.i_crit_edge
  %last.0.i.i = phi ptr [ %i.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ null, %land.lhs.true.i.for.cond.i.i_crit_edge ]
  %i.0.in.i.i = phi ptr [ %i.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %binds, %land.lhs.true.i.for.cond.i.i_crit_edge ]
  %8 = ptrtoint ptr %i.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %i.0.i.i = load ptr, ptr %i.0.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %i.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %9 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %tobool1.not.i.i = icmp eq ptr %last.0.i.i, null
  br i1 %tobool1.not.i.i, label %if.else47.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %last.0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last.0.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %9, align 4
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %last.0.i.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !115
  br label %if.end48.sink.split.i.i

if.else47.i.i:                                    ; preds = %for.end.i.i
  %14 = ptrtoint ptr %binds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %binds, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %9, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %binds, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  %18 = ptrtoint ptr %binds to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %9, ptr %binds, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.else47.i.i.sk_add_node_rcu.exit_crit_edge, label %do.body49.i.i.i

if.else47.i.i.sk_add_node_rcu.exit_crit_edge:     ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_add_node_rcu.exit

do.body49.i.i.i:                                  ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  br label %if.end48.sink.split.i.i

if.end48.sink.split.i.i:                          ; preds = %do.body49.i.i.i, %if.then.i.i
  %pprev51.i.sink.i.i = phi ptr [ %pprev51.i.i.i, %do.body49.i.i.i ], [ %last.0.i.i, %if.then.i.i ]
  %19 = ptrtoint ptr %pprev51.i.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %9, ptr %pprev51.i.sink.i.i, align 4
  br label %sk_add_node_rcu.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sock_hold.exit.i.if.else.i_crit_edge
  %20 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %21 = ptrtoint ptr %binds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %binds, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %20, align 4
  %pprev.i11.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %24 = ptrtoint ptr %pprev.i11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %binds, ptr %pprev.i11.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  %25 = ptrtoint ptr %binds to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %20, ptr %binds, align 4
  %tobool.not.i12.i = icmp eq ptr %22, null
  br i1 %tobool.not.i12.i, label %if.else.i.sk_add_node_rcu.exit_crit_edge, label %do.body49.i.i

if.else.i.sk_add_node_rcu.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_add_node_rcu.exit

do.body49.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %20, ptr %pprev51.i.i, align 4
  br label %sk_add_node_rcu.exit

sk_add_node_rcu.exit:                             ; preds = %do.body49.i.i, %if.else.i.sk_add_node_rcu.exit_crit_edge, %if.end48.sink.split.i.i, %if.else47.i.i.sk_add_node_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %bind_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_sk_unhash(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %bind_lock = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 52, i32 1
  tail call void @mutex_lock_nested(ptr noundef %bind_lock, i32 noundef 0) #9
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i.i.not.i, label %entry.sk_del_node_init.exit_crit_edge, label %if.then.i.i

entry.sk_del_node_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %entry
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %3, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %3, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %9 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !112

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 729, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_del_node_init.exit_crit_edge, !prof !112

if.end.i.sk_del_node_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i.sk_del_node_init.exit_crit_edge, %entry.sk_del_node_init.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %bind_lock) #9
  %keys_lock = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 52, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %keys_lock) #9
  %keys = getelementptr inbounds %struct.mctp_sock, ptr %sk, i32 0, i32 5
  %13 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %keys, align 8
  %tobool.not = icmp eq ptr %14, null
  %add.ptr15 = getelementptr i8, ptr %14, i32 -16
  %tobool16.not6062 = icmp eq ptr %add.ptr15, null
  %tobool16.not60 = or i1 %tobool.not, %tobool16.not6062
  br i1 %tobool16.not60, label %sk_del_node_init.exit.for.end_crit_edge, label %sk_del_node_init.exit.land.rhs_crit_edge

sk_del_node_init.exit.land.rhs_crit_edge:         ; preds = %sk_del_node_init.exit
  br label %land.rhs

sk_del_node_init.exit.for.end_crit_edge:          ; preds = %sk_del_node_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs:                                         ; preds = %hlist_del.exit57.land.rhs_crit_edge, %sk_del_node_init.exit.land.rhs_crit_edge
  %key.061 = phi ptr [ %add.ptr28, %hlist_del.exit57.land.rhs_crit_edge ], [ %add.ptr15, %sk_del_node_init.exit.land.rhs_crit_edge ]
  %sklist = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 5
  %15 = ptrtoint ptr %sklist to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sklist, align 4
  %pprev2.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev2.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %16, ptr %18, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %land.rhs.hlist_del.exit_crit_edge, label %do.body13.i.i

land.rhs.hlist_del.exit_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %land.rhs.hlist_del.exit_crit_edge
  %21 = ptrtoint ptr %sklist to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %sklist, align 4
  %22 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %hlist = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 4
  %23 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hlist, align 4
  %pprev2.i.i53 = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %pprev2.i.i53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pprev2.i.i53, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %24, ptr %26, align 4
  %tobool.not.i.i54 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i54, label %hlist_del.exit.hlist_del.exit57_crit_edge, label %do.body13.i.i56

hlist_del.exit.hlist_del.exit57_crit_edge:        ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit57

do.body13.i.i56:                                  ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i55 = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %pprev14.i.i55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %pprev14.i.i55, align 4
  br label %hlist_del.exit57

hlist_del.exit57:                                 ; preds = %do.body13.i.i56, %hlist_del.exit.hlist_del.exit57_crit_edge
  %29 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist, align 4
  %30 = ptrtoint ptr %pprev2.i.i53 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i53, align 4
  tail call fastcc void @trace_mctp_key_release(ptr noundef nonnull %key.061, i32 noundef 3)
  %lock = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %reasm_head = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 8
  %31 = ptrtoint ptr %reasm_head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reasm_head, align 4
  tail call void @kfree_skb_reason(ptr noundef %32, i32 noundef 0) #9
  %33 = ptrtoint ptr %reasm_head to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %reasm_head, align 4
  %reasm_dead = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 10
  %34 = ptrtoint ptr %reasm_dead to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %reasm_dead, align 4
  %valid = getelementptr inbounds %struct.mctp_sk_key, ptr %key.061, i32 0, i32 12
  %35 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %valid, align 2
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @mctp_key_unref(ptr noundef nonnull %key.061) #9
  %add.ptr28 = getelementptr i8, ptr %16, i32 -16
  %tobool16.not63 = icmp eq ptr %add.ptr28, null
  %tobool16.not = or i1 %tobool.not.i.i, %tobool16.not63
  br i1 %tobool16.not, label %hlist_del.exit57.for.end_crit_edge, label %hlist_del.exit57.land.rhs_crit_edge

hlist_del.exit57.land.rhs_crit_edge:              ; preds = %hlist_del.exit57
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

hlist_del.exit57.for.end_crit_edge:               ; preds = %hlist_del.exit57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %hlist_del.exit57.for.end_crit_edge, %sk_del_node_init.exit.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %keys_lock, i32 noundef %call9) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_sk_expire_keys(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr i8, ptr %timer, i32 -936
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %keys_lock = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 52, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %keys_lock) #9
  %keys = getelementptr i8, ptr %timer, i32 -4
  %2 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %keys, align 8
  %tobool.not = icmp eq ptr %3, null
  %add.ptr11 = getelementptr i8, ptr %3, i32 -16
  %tobool12.not8186 = icmp eq ptr %add.ptr11, null
  %tobool12.not81 = or i1 %tobool.not, %tobool12.not8186
  br i1 %tobool12.not81, label %for.end.thread, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %keys_lock, i32 noundef %call5) #9
  br label %if.end46

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %next_expiry.084 = phi i32 [ %next_expiry.2, %for.inc.land.rhs_crit_edge ], [ -1, %entry.land.rhs_crit_edge ]
  %key.083 = phi ptr [ %add.ptr37, %for.inc.land.rhs_crit_edge ], [ %add.ptr11, %entry.land.rhs_crit_edge ]
  %next_expiry_valid.0.off082 = phi i1 [ %next_expiry_valid.2.off0, %for.inc.land.rhs_crit_edge ], [ false, %entry.land.rhs_crit_edge ]
  %sklist = getelementptr inbounds %struct.mctp_sk_key, ptr %key.083, i32 0, i32 5
  %4 = ptrtoint ptr %sklist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sklist, align 4
  %lock = getelementptr inbounds %struct.mctp_sk_key, ptr %key.083, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %expiry = getelementptr inbounds %struct.mctp_sk_key, ptr %key.083, i32 0, i32 13
  %6 = ptrtoint ptr %expiry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %expiry, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp15 = icmp sgt i32 %sub, -1
  br i1 %cmp15, label %if.end, label %if.then

if.then:                                          ; preds = %land.rhs
  tail call fastcc void @trace_mctp_key_release(ptr noundef nonnull %key.083, i32 noundef 0)
  %valid = getelementptr inbounds %struct.mctp_sk_key, ptr %key.083, i32 0, i32 12
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %valid, align 2
  %hlist = getelementptr inbounds %struct.mctp_sk_key, ptr %key.083, i32 0, i32 4
  %10 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hlist, align 4
  %pprev2.i.i = getelementptr inbounds %struct.mctp_sk_key, ptr %key.083, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev2.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %11, ptr %13, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.then.hlist_del_rcu.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.then.hlist_del_rcu.exit_crit_edge
  %16 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %17 = ptrtoint ptr %sklist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sklist, align 4
  %pprev2.i.i74 = getelementptr inbounds %struct.mctp_sk_key, ptr %key.083, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %pprev2.i.i74 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pprev2.i.i74, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %18, ptr %20, align 4
  %tobool.not.i.i75 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i75, label %hlist_del_rcu.exit.hlist_del_rcu.exit78_crit_edge, label %do.body13.i.i77

hlist_del_rcu.exit.hlist_del_rcu.exit78_crit_edge: ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_rcu.exit78

do.body13.i.i77:                                  ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i76 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %pprev14.i.i76 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %pprev14.i.i76, align 4
  br label %hlist_del_rcu.exit78

hlist_del_rcu.exit78:                             ; preds = %do.body13.i.i77, %hlist_del_rcu.exit.hlist_del_rcu.exit78_crit_edge
  %23 = ptrtoint ptr %pprev2.i.i74 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i74, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @mctp_key_unref(ptr noundef nonnull %key.083) #9
  br label %for.inc

if.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %sub22 = sub i32 %7, %next_expiry.084
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22)
  %cmp23 = icmp slt i32 %sub22, 0
  %spec.select72 = select i1 %cmp23, i32 %7, i32 %next_expiry.084
  %next_expiry.1 = select i1 %next_expiry_valid.0.off082, i32 %spec.select72, i32 %7
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %hlist_del_rcu.exit78
  %next_expiry_valid.2.off0 = phi i1 [ true, %if.end ], [ %next_expiry_valid.0.off082, %hlist_del_rcu.exit78 ]
  %next_expiry.2 = phi i32 [ %next_expiry.1, %if.end ], [ %next_expiry.084, %hlist_del_rcu.exit78 ]
  %tobool33.not = icmp eq ptr %5, null
  %add.ptr37 = getelementptr i8, ptr %5, i32 -16
  %tobool12.not89 = icmp eq ptr %add.ptr37, null
  %tobool12.not = or i1 %tobool33.not, %tobool12.not89
  br i1 %tobool12.not, label %for.end, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %for.inc
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %keys_lock, i32 noundef %call5) #9
  br i1 %next_expiry_valid.2.off0, label %if.then44, label %for.end.if.end46_crit_edge

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %next_expiry.2) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %for.end.if.end46_crit_edge, %for.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mctp_key_release(ptr noundef %key, i32 noundef %reason) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mctp_key_release, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mctp_key_release, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !119

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !120
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mctp_key_release, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %key, i32 noundef %reason) #9
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mctp_key_release, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mctp_key_release.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mctp_key_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 71, ptr noundef nonnull @.str.18) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %38 = tail call i32 @llvm.read_register.i32(metadata !101) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_key_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctp_routes_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctp_neigh_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_device_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_pf_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %tobool.not = icmp eq i32 %protocol, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp.not = icmp eq i16 %1, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %sock, align 128
  %ops4 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %3 = ptrtoint ptr %ops4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mctp_dgram_ops, ptr %ops4, align 4
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 45, i32 noundef 3264, ptr noundef nonnull @mctp_proto, i32 noundef %kern) #9
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #9
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_prot, align 8
  %init = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call13 = tail call i32 %7(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %err_sk_put

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_sk_put:                                       ; preds = %if.end14
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #9
  %8 = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %or.i.i.i = or i32 %10, 1
  store i32 %or.i.i.i, ptr %8, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 71
  %11 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sk_socket.i.i, align 8
  %12 = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %12, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #9
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_sk_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !111

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %err_sk_put
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @sk_free(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -93, %entry.cleanup_crit_edge ], [ -94, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ %call13, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call13, %if.then10.i.i.i.i ], [ %call13, %if.then.i ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_release(ptr nocapture noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sk1, align 16
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_prot, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void %6(ptr noundef nonnull %1, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %addr, i32 noundef %addrlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %addrlen)
  %cmp = icmp ult i32 %addrlen, 12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %3)
  %cmp2.not = icmp eq i16 %3, 45
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call = tail call zeroext i1 @capable(i32 noundef 10) #9
  br i1 %call, label %if.end7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %__smctp_pad0.i = getelementptr inbounds %struct.sockaddr_mctp, ptr %addr, i32 0, i32 1
  %4 = ptrtoint ptr %__smctp_pad0.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %__smctp_pad0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %mctp_sockaddr_is_ok.exit, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mctp_sockaddr_is_ok.exit:                         ; preds = %if.end7
  %__smctp_pad1.i = getelementptr inbounds %struct.sockaddr_mctp, ptr %addr, i32 0, i32 6
  %6 = ptrtoint ptr %__smctp_pad1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %__smctp_pad1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end10, label %mctp_sockaddr_is_ok.exit.cleanup_crit_edge

mctp_sockaddr_is_ok.exit.cleanup_crit_edge:       ; preds = %mctp_sockaddr_is_ok.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %mctp_sockaddr_is_ok.exit
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %8 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i.not, label %if.end13, label %if.end10.out_release_crit_edge

if.end10.out_release_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %smctp_network = getelementptr inbounds %struct.sockaddr_mctp, ptr %addr, i32 0, i32 2
  %10 = ptrtoint ptr %smctp_network to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smctp_network, align 4
  %bind_net = getelementptr inbounds %struct.mctp_sock, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %bind_net to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bind_net, align 8
  %smctp_addr = getelementptr inbounds %struct.sockaddr_mctp, ptr %addr, i32 0, i32 3
  %13 = ptrtoint ptr %smctp_addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %smctp_addr, align 4
  %bind_addr = getelementptr inbounds %struct.mctp_sock, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %bind_addr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %bind_addr, align 4
  %smctp_type = getelementptr inbounds %struct.sockaddr_mctp, ptr %addr, i32 0, i32 4
  %16 = ptrtoint ptr %smctp_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %smctp_type, align 1
  %18 = and i8 %17, 127
  %bind_type = getelementptr inbounds %struct.mctp_sock, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %bind_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %bind_type, align 1
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_prot, align 8
  %hash = getelementptr inbounds %struct.proto, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hash, align 4
  %call16 = tail call i32 %23(ptr noundef %1) #9
  br label %out_release

out_release:                                      ; preds = %if.end13, %if.end10.out_release_crit_edge
  %rc.0 = phi i32 [ %call16, %if.end13 ], [ -98, %if.end10.out_release_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %out_release, %mctp_sockaddr_is_ok.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_release ], [ -22, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ], [ -13, %if.end5.cleanup_crit_edge ], [ -22, %mctp_sockaddr_is_ok.exit.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 285, i32 %level)
  %cmp.not = icmp eq i32 %level, 285
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cmp1 = icmp eq i32 %optname, 1
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp3.not = icmp eq i32 %optlen, 4
  br i1 %cmp3.not, label %if.end5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end5
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #13, !srcloc !125
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i1.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i1.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !111

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #9
  %5 = call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #4, !srcloc !126
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %3, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end7_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !111

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end7_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %val, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end7_crit_edge
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8 = icmp ne i32 %13, 0
  %addr_ext = getelementptr inbounds %struct.mctp_sock, ptr %1, i32 0, i32 4
  %frombool = zext i1 %tobool8 to i8
  %14 = ptrtoint ptr %addr_ext to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %addr_ext, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then11.i.i.i.i, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ -92, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 285, i32 %level)
  %cmp.not = icmp eq i32 %level, 285
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 281) #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !126
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #9, !srcloc !129
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cmp6 = icmp eq i32 %optname, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult2)
  %cmp8.not = icmp eq i32 %asmresult2, 4
  %or.cond = select i1 %cmp6, i1 %cmp8.not, i1 false
  br i1 %or.cond, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %addr_ext = getelementptr inbounds %struct.mctp_sock, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %addr_ext to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr_ext, align 2, !range !130
  %8 = zext i8 %7 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end10.cleanup_crit_edge, label %if.end.i.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end10
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 4, i32 -1226833920) #13, !srcloc !131
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef 4) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool14.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool14.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -14, %if.end10.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #9
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rc, align 4, !annotation !113
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_namelen, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %5 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup72_crit_edge, label %if.then

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %cmp = icmp ult i32 %4, 12
  br i1 %cmp, label %if.then.cleanup72_crit_edge, label %if.end

if.then.cleanup72_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup72

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %8)
  %cmp4.not = icmp eq i16 %8, 45
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup72_crit_edge

if.end.cleanup72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup72

if.end7:                                          ; preds = %if.end
  %__smctp_pad0.i = getelementptr inbounds %struct.sockaddr_mctp, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %__smctp_pad0.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %__smctp_pad0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %mctp_sockaddr_is_ok.exit, label %if.end7.cleanup72_crit_edge

if.end7.cleanup72_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup72

mctp_sockaddr_is_ok.exit:                         ; preds = %if.end7
  %__smctp_pad1.i = getelementptr inbounds %struct.sockaddr_mctp, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %__smctp_pad1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %__smctp_pad1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %if.end9, label %mctp_sockaddr_is_ok.exit.cleanup72_crit_edge

mctp_sockaddr_is_ok.exit.cleanup72_crit_edge:     ; preds = %mctp_sockaddr_is_ok.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup72

if.end9:                                          ; preds = %mctp_sockaddr_is_ok.exit
  %smctp_tag = getelementptr inbounds %struct.sockaddr_mctp, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %smctp_tag to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %smctp_tag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %14)
  %tobool11.not = icmp ult i8 %14, 16
  br i1 %tobool11.not, label %if.end14, label %if.end9.cleanup72_crit_edge

if.end9.cleanup72_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup72

if.end14:                                         ; preds = %if.end9
  %call15 = tail call zeroext i1 @capable(i32 noundef 13) #9
  br i1 %call15, label %if.end17, label %if.end14.cleanup72_crit_edge

if.end14.cleanup72_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup72

if.end17:                                         ; preds = %if.end14
  %smctp_network = getelementptr inbounds %struct.sockaddr_mctp, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %smctp_network to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smctp_network, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp18 = icmp eq i32 %16, 0
  br i1 %cmp18, label %if.then20, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %17 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_net.i, align 4
  %call22 = tail call i32 @mctp_default_net(ptr noundef %18) #9
  %19 = ptrtoint ptr %smctp_network to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call22, ptr %smctp_network, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end17.if.end24_crit_edge
  %add = add i32 %len, 9
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %20 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_flags, align 4
  %and25 = and i32 %21, 64
  %call26 = call ptr @sock_alloc_send_skb(ptr noundef %6, i32 noundef %add, i32 noundef %and25, ptr noundef nonnull %rc) #9
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rc, align 4
  br label %cleanup72

if.end29:                                         ; preds = %if.end24
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %27, i32 8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %smctp_type = getelementptr inbounds %struct.sockaddr_mctp, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %smctp_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %smctp_type, align 1
  %call30 = call ptr @skb_put(ptr noundef nonnull %call26, i32 noundef 1) #9
  %30 = ptrtoint ptr %call30 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %call30, align 1
  %call31 = call ptr @skb_put(ptr noundef nonnull %call26, i32 noundef %len) #9
  %call32 = call fastcc i32 @memcpy_from_msg(ptr noundef %call31, ptr noundef %msg, i32 noundef %len)
  %31 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call32, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end29.err_free_crit_edge, label %if.end36

if.end29.err_free_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

if.end36:                                         ; preds = %if.end29
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 3
  %32 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1296258128, ptr %cb1.i, align 4
  %33 = ptrtoint ptr %smctp_network to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %smctp_network, align 4
  %net = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %net, align 4
  %addr_ext = getelementptr inbounds %struct.mctp_sock, ptr %6, i32 0, i32 4
  %36 = ptrtoint ptr %addr_ext to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr_ext, align 2, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool39.not = icmp ne i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %4)
  %cmp41 = icmp ugt i32 %4, 51
  %or.cond = select i1 %tobool39.not, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.then43, label %if.else59

if.then43:                                        ; preds = %if.end36
  %38 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg, align 8
  %__smctp_pad0.i121 = getelementptr inbounds %struct.sockaddr_mctp_ext, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %__smctp_pad0.i121 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %__smctp_pad0.i121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i122 = icmp eq i8 %41, 0
  br i1 %tobool.not.i122, label %land.lhs.true.i, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then43
  %arrayidx2.i = getelementptr %struct.sockaddr_mctp_ext, ptr %39, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool3.not.i = icmp eq i8 %43, 0
  br i1 %tobool3.not.i, label %mctp_sockaddr_ext_is_ok.exit, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mctp_sockaddr_ext_is_ok.exit:                     ; preds = %land.lhs.true.i
  %arrayidx5.i = getelementptr %struct.sockaddr_mctp_ext, ptr %39, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool6.not.i = icmp eq i8 %45, 0
  br i1 %tobool6.not.i, label %lor.lhs.false, label %mctp_sockaddr_ext_is_ok.exit.cleanup_crit_edge

mctp_sockaddr_ext_is_ok.exit.cleanup_crit_edge:   ; preds = %mctp_sockaddr_ext_is_ok.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %mctp_sockaddr_ext_is_ok.exit
  %smctp_halen = getelementptr inbounds %struct.sockaddr_mctp_ext, ptr %39, i32 0, i32 2
  %46 = ptrtoint ptr %smctp_halen to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %smctp_halen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %47)
  %cmp51 = icmp ugt i8 %47, 32
  br i1 %cmp51, label %lor.lhs.false.cleanup_crit_edge, label %cleanup.thread

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %smctp_ifindex = getelementptr inbounds %struct.sockaddr_mctp_ext, ptr %39, i32 0, i32 1
  %48 = ptrtoint ptr %smctp_ifindex to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %smctp_ifindex, align 4
  %ifindex = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ifindex, align 4
  %51 = ptrtoint ptr %smctp_halen to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %smctp_halen, align 4
  %halen = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 3, i32 13
  %53 = ptrtoint ptr %halen to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %halen, align 1
  %haddr = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 3, i32 14
  %smctp_haddr = getelementptr inbounds %struct.sockaddr_mctp_ext, ptr %39, i32 0, i32 4
  %conv58 = zext i8 %52 to i32
  %54 = call ptr @memcpy(ptr %haddr, ptr %smctp_haddr, i32 %conv58)
  br label %if.end66

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %mctp_sockaddr_ext_is_ok.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then43.cleanup_crit_edge
  %55 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -22, ptr %rc, align 4
  br label %err_free

if.else59:                                        ; preds = %if.end36
  %skc_net.i124 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %56 = ptrtoint ptr %skc_net.i124 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skc_net.i124, align 4
  %58 = ptrtoint ptr %smctp_network to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %smctp_network, align 4
  %smctp_addr = getelementptr inbounds %struct.sockaddr_mctp, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %smctp_addr to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %smctp_addr, align 4
  %call62 = call ptr @mctp_route_lookup(ptr noundef %57, i32 noundef %59, i8 noundef zeroext %61) #9
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.then64, label %if.else59.if.end66_crit_edge

if.else59.if.end66_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -113, ptr %rc, align 4
  br label %err_free

if.end66:                                         ; preds = %if.else59.if.end66_crit_edge, %cleanup.thread
  %rt.1 = phi ptr [ %call62, %if.else59.if.end66_crit_edge ], [ null, %cleanup.thread ]
  %smctp_addr67 = getelementptr inbounds %struct.sockaddr_mctp, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %smctp_addr67 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %smctp_addr67, align 4
  %65 = ptrtoint ptr %smctp_tag to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %smctp_tag, align 2
  %call70 = call i32 @mctp_local_output(ptr noundef %6, ptr noundef %rt.1, ptr noundef nonnull %call26, i8 noundef zeroext %64, i8 noundef zeroext %66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  %spec.select = select i1 %tobool71.not, i32 %len, i32 %call70
  br label %cleanup72

err_free:                                         ; preds = %if.then64, %cleanup, %if.end29.err_free_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call26, i32 noundef 0) #9
  %67 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rc, align 4
  br label %cleanup72

cleanup72:                                        ; preds = %err_free, %if.end66, %if.then28, %if.end14.cleanup72_crit_edge, %if.end9.cleanup72_crit_edge, %mctp_sockaddr_is_ok.exit.cleanup72_crit_edge, %if.end7.cleanup72_crit_edge, %if.end.cleanup72_crit_edge, %if.then.cleanup72_crit_edge, %entry.cleanup72_crit_edge
  %retval.0 = phi i32 [ %68, %err_free ], [ %spec.select, %if.end66 ], [ %23, %if.then28 ], [ -22, %if.then.cleanup72_crit_edge ], [ -22, %if.end.cleanup72_crit_edge ], [ -22, %mctp_sockaddr_is_ok.exit.cleanup72_crit_edge ], [ -22, %if.end9.cleanup72_crit_edge ], [ -89, %entry.cleanup72_crit_edge ], [ -13, %if.end14.cleanup72_crit_edge ], [ -22, %if.end7.cleanup72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 8
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #9
  %4 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rc, align 4, !annotation !113
  %and = and i32 %flags, -99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %flags, 64
  %call = call ptr @skb_recv_datagram(ptr noundef %3, i32 noundef %flags, i32 noundef %and3, ptr noundef nonnull %rc) #9
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rc, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %len7 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rc, align 4
  br label %out_free

if.end10:                                         ; preds = %if.end6
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %sub = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp = icmp ugt i32 %sub, %len
  br i1 %cmp, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %14 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_flags, align 4
  %or = or i32 %15, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.then12 ], [ %sub, %if.end10.if.end13_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call, i32 noundef 1, ptr noundef %msg_iter.i, i32 noundef %len.addr.0) #9
  %16 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp slt i32 %call.i, 0
  br i1 %cmp15, label %if.end13.out_free_crit_edge, label %if.end17

if.end13.out_free_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end17:                                         ; preds = %if.end13
  %17 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %and.i = and i32 %19, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end17.if.then.i_crit_edge

if.end17.if.then.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end17
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 65
  %20 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sk_tsflags.i, align 8
  %22 = and i16 %21, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool2.not.i = icmp eq i16 %22, 0
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end17.if.then.i_crit_edge
  call void @__sock_recv_ts_and_drops(ptr noundef %msg, ptr noundef %3, ptr noundef nonnull %call) #9
  br label %sock_recv_ts_and_drops.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %17, align 4
  %25 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %if.else6.i, label %if.then5.i, !prof !111

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %26, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %3, i64 noundef %28) #9
  br label %sock_recv_ts_and_drops.exit

if.else6.i:                                       ; preds = %if.else.i
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 63
  %29 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %sk_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000000000, i64 %30)
  %cmp.i = icmp eq i64 %30, -1000000000
  br i1 %cmp.i, label %if.then14.i, label %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, !prof !112

if.else6.i.sock_recv_ts_and_drops.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_recv_ts_and_drops.exit

if.then14.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @sock_write_timestamp(ptr noundef %3, i64 noundef 0) #9
  br label %sock_recv_ts_and_drops.exit

sock_recv_ts_and_drops.exit:                      ; preds = %if.then14.i, %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, %if.then5.i, %if.then.i
  %tobool18.not = icmp eq ptr %1, null
  br i1 %tobool18.not, label %sock_recv_ts_and_drops.exit.if.end41_crit_edge, label %if.then19

sock_recv_ts_and_drops.exit.if.end41_crit_edge:   ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then19:                                        ; preds = %sock_recv_ts_and_drops.exit
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %31 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296258128, i32 %32)
  %cmp.not.i = icmp eq i32 %32, 1296258128
  br i1 %cmp.not.i, label %if.then19.mctp_cb.exit_crit_edge, label %do.end11.i, !prof !111

if.then19.mctp_cb.exit_crit_edge:                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %mctp_cb.exit

do.end11.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 194, i32 noundef 9, ptr noundef null) #9
  br label %mctp_cb.exit

mctp_cb.exit:                                     ; preds = %do.end11.i, %if.then19.mctp_cb.exit_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %36 to i32
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv.i.i
  %37 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %msg, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 45, ptr %38, align 4
  %__smctp_pad0 = getelementptr inbounds %struct.sockaddr_mctp, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %__smctp_pad0 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %__smctp_pad0, align 2
  %net = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %net, align 4
  %smctp_network = getelementptr inbounds %struct.sockaddr_mctp, ptr %38, i32 0, i32 2
  %43 = ptrtoint ptr %smctp_network to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %smctp_network, align 4
  %src = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %src, align 1
  %smctp_addr = getelementptr inbounds %struct.sockaddr_mctp, ptr %38, i32 0, i32 3
  %46 = ptrtoint ptr %smctp_addr to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %smctp_addr, align 4
  %smctp_type = getelementptr inbounds %struct.sockaddr_mctp, ptr %38, i32 0, i32 4
  %47 = ptrtoint ptr %smctp_type to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %13, ptr %smctp_type, align 1
  %flags_seq_tag = getelementptr inbounds %struct.mctp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %flags_seq_tag to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags_seq_tag, align 1
  %50 = and i8 %49, 15
  %smctp_tag = getelementptr inbounds %struct.sockaddr_mctp, ptr %38, i32 0, i32 5
  %51 = ptrtoint ptr %smctp_tag to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %smctp_tag, align 2
  %__smctp_pad1 = getelementptr inbounds %struct.sockaddr_mctp, ptr %38, i32 0, i32 6
  %52 = ptrtoint ptr %__smctp_pad1 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %__smctp_pad1, align 1
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %53 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 12, ptr %msg_namelen, align 4
  %addr_ext = getelementptr inbounds %struct.mctp_sock, ptr %3, i32 0, i32 4
  %54 = ptrtoint ptr %addr_ext to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %addr_ext, align 2, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool25.not = icmp eq i8 %55, 0
  br i1 %tobool25.not, label %mctp_cb.exit.if.end41_crit_edge, label %if.then26

mctp_cb.exit.if.end41_crit_edge:                  ; preds = %mctp_cb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then26:                                        ; preds = %mctp_cb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %msg, align 8
  %58 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 52, ptr %msg_namelen, align 4
  %ifindex = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ifindex, align 4
  %smctp_ifindex = getelementptr inbounds %struct.sockaddr_mctp_ext, ptr %57, i32 0, i32 1
  %61 = ptrtoint ptr %smctp_ifindex to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %smctp_ifindex, align 4
  %halen = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 13
  %62 = ptrtoint ptr %halen to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %halen, align 1
  %smctp_halen = getelementptr inbounds %struct.sockaddr_mctp_ext, ptr %57, i32 0, i32 2
  %64 = ptrtoint ptr %smctp_halen to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %smctp_halen, align 4
  %__smctp_pad033 = getelementptr inbounds %struct.sockaddr_mctp_ext, ptr %57, i32 0, i32 3
  %smctp_haddr = getelementptr inbounds %struct.sockaddr_mctp_ext, ptr %57, i32 0, i32 4
  %haddr = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 14
  %65 = call ptr @memset(ptr %__smctp_pad033, i32 0, i32 35)
  %66 = load i8, ptr %halen, align 1
  %conv39 = zext i8 %66 to i32
  %67 = call ptr @memcpy(ptr %smctp_haddr, ptr %haddr, i32 %conv39)
  br label %if.end41

if.end41:                                         ; preds = %if.then26, %mctp_cb.exit.if.end41_crit_edge, %sock_recv_ts_and_drops.exit.if.end41_crit_edge
  %and42 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %spec.store.select = select i1 %tobool43.not, i32 %len.addr.0, i32 %sub
  %68 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %spec.store.select, ptr %rc, align 4
  br label %out_free

out_free:                                         ; preds = %if.end41, %if.end13.out_free_crit_edge, %if.then9
  call void @skb_free_datagram(ptr noundef %3, ptr noundef nonnull %call) #9
  %69 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rc, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %70, %out_free ], [ %6, %if.then5 ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctp_default_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memcpy_from_msg(ptr noundef %data, ptr noundef %msg, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %entry
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !111

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %len, i1 noundef zeroext false) #9
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %data, i32 noundef %len, ptr noundef %msg_iter) #9
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %len)
  %cmp.i = icmp eq i32 %retval.0.i.i, %len
  br i1 %cmp.i, label %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge, label %if.end.i, !prof !111

copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge: ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_iter_full.exit

if.end.i:                                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i) #9
  br label %copy_from_iter_full.exit

copy_from_iter_full.exit:                         ; preds = %if.end.i, %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge
  %cond = phi i32 [ 0, %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge ], [ -14, %if.end.i ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctp_route_lookup(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctp_local_output(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %kt) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %sk_stamp_seq = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %0 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !132
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #9
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #9
  %sk_stamp = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %4 = ptrtoint ptr %sk_stamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %kt, ptr %sk_stamp, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !133
  %5 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !41, !43, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !72, !73, !74, !75, !76, !77, !79, !80, !82, !84, !85, !86, !87, !88, !90, !92, !94, !95, !97, !99}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__tracepoint_mctp_key_acquire, !1, !"__tracepoint_mctp_key_acquire", i1 false, i1 false}
!1 = !{!"../include/trace/events/mctp.h", i32 26, i32 1}
!2 = !{ptr @__tracepoint_ptr_mctp_key_acquire, !1, !"__tracepoint_ptr_mctp_key_acquire", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mctp_key_acquire, !1, !"__SCK__tp_func_mctp_key_acquire", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mctp_key_release, !5, !"__tracepoint_mctp_key_release", i1 false, i1 false}
!5 = !{!"../include/trace/events/mctp.h", i32 46, i32 1}
!6 = !{ptr @__tracepoint_ptr_mctp_key_release, !5, !"__tracepoint_ptr_mctp_key_release", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mctp_key_release, !5, !"__SCK__tp_func_mctp_key_release", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/trace/events/mctp.h", i32 21, i32 1}
!10 = !{ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_TIMEOUT, !9, !"__TRACE_SYSTEM_MCTP_TRACE_KEY_TIMEOUT", i1 false, i1 false}
!11 = !{ptr @TRACE_SYSTEM_MCTP_TRACE_KEY_TIMEOUT, !9, !"TRACE_SYSTEM_MCTP_TRACE_KEY_TIMEOUT", i1 false, i1 false}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/trace/events/mctp.h", i32 22, i32 1}
!14 = !{ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_REPLIED, !13, !"__TRACE_SYSTEM_MCTP_TRACE_KEY_REPLIED", i1 false, i1 false}
!15 = !{ptr @TRACE_SYSTEM_MCTP_TRACE_KEY_REPLIED, !13, !"TRACE_SYSTEM_MCTP_TRACE_KEY_REPLIED", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/trace/events/mctp.h", i32 23, i32 1}
!18 = !{ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_INVALIDATED, !17, !"__TRACE_SYSTEM_MCTP_TRACE_KEY_INVALIDATED", i1 false, i1 false}
!19 = !{ptr @TRACE_SYSTEM_MCTP_TRACE_KEY_INVALIDATED, !17, !"TRACE_SYSTEM_MCTP_TRACE_KEY_INVALIDATED", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/trace/events/mctp.h", i32 24, i32 1}
!22 = !{ptr @__TRACE_SYSTEM_MCTP_TRACE_KEY_CLOSED, !21, !"__TRACE_SYSTEM_MCTP_TRACE_KEY_CLOSED", i1 false, i1 false}
!23 = !{ptr @TRACE_SYSTEM_MCTP_TRACE_KEY_CLOSED, !21, !"TRACE_SYSTEM_MCTP_TRACE_KEY_CLOSED", i1 false, i1 false}
!24 = !{ptr @event_class_mctp_key_acquire, !1, !"event_class_mctp_key_acquire", i1 false, i1 false}
!25 = !{ptr @event_mctp_key_acquire, !1, !"event_mctp_key_acquire", i1 false, i1 false}
!26 = !{ptr @__event_mctp_key_acquire, !1, !"__event_mctp_key_acquire", i1 false, i1 false}
!27 = !{ptr @event_class_mctp_key_release, !5, !"event_class_mctp_key_release", i1 false, i1 false}
!28 = !{ptr @event_mctp_key_release, !5, !"event_mctp_key_release", i1 false, i1 false}
!29 = !{ptr @__event_mctp_key_release, !5, !"__event_mctp_key_release", i1 false, i1 false}
!30 = !{ptr @__bpf_trace_tp_map_mctp_key_acquire, !1, !"__bpf_trace_tp_map_mctp_key_acquire", i1 false, i1 false}
!31 = !{ptr @__bpf_trace_tp_map_mctp_key_release, !5, !"__bpf_trace_tp_map_mctp_key_release", i1 false, i1 false}
!32 = !{ptr @__initcall__kmod_mctp__485_525_mctp_init4, !33, !"__initcall__kmod_mctp__485_525_mctp_init4", i1 false, i1 false}
!33 = !{!"../net/mctp/af_mctp.c", i32 525, i32 1}
!34 = !{ptr @__exitcall_mctp_exit, !35, !"__exitcall_mctp_exit", i1 false, i1 false}
!35 = !{!"../net/mctp/af_mctp.c", i32 526, i32 1}
!36 = !{ptr @__UNIQUE_ID_description486, !37, !"__UNIQUE_ID_description486", i1 false, i1 false}
!37 = !{!"../net/mctp/af_mctp.c", i32 528, i32 1}
!38 = !{ptr @__UNIQUE_ID_file487, !39, !"__UNIQUE_ID_file487", i1 false, i1 false}
!39 = !{!"../net/mctp/af_mctp.c", i32 529, i32 1}
!40 = !{ptr @__UNIQUE_ID_license488, !39, !"__UNIQUE_ID_license488", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_author489, !42, !"__UNIQUE_ID_author489", i1 false, i1 false}
!42 = !{!"../net/mctp/af_mctp.c", i32 530, i32 1}
!43 = !{ptr @__UNIQUE_ID_alias490, !44, !"__UNIQUE_ID_alias490", i1 false, i1 false}
!44 = !{!"../net/mctp/af_mctp.c", i32 532, i32 1}
!45 = !{ptr @__tpstrtab_mctp_key_acquire, !1, !"__tpstrtab_mctp_key_acquire", i1 false, i1 false}
!46 = !{ptr @__tpstrtab_mctp_key_release, !5, !"__tpstrtab_mctp_key_release", i1 false, i1 false}
!47 = !{ptr @str__mctp__trace_system_name, !48, !"str__mctp__trace_system_name", i1 false, i1 false}
!48 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!49 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @trace_event_fields_mctp_key_acquire, !1, !"trace_event_fields_mctp_key_acquire", i1 false, i1 false}
!54 = !{ptr @trace_event_type_funcs_mctp_key_acquire, !1, !"trace_event_type_funcs_mctp_key_acquire", i1 false, i1 false}
!55 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @print_fmt_mctp_key_acquire, !1, !"print_fmt_mctp_key_acquire", i1 false, i1 false}
!57 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @trace_event_fields_mctp_key_release, !5, !"trace_event_fields_mctp_key_release", i1 false, i1 false}
!60 = !{ptr @trace_event_type_funcs_mctp_key_release, !5, !"trace_event_type_funcs_mctp_key_release", i1 false, i1 false}
!61 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.15, !5, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @trace_raw_output_mctp_key_release.symbols, !5, !"symbols", i1 false, i1 false}
!67 = !{ptr @print_fmt_mctp_key_release, !5, !"print_fmt_mctp_key_release", i1 false, i1 false}
!68 = !{ptr @mctp_proto, !69, !"mctp_proto", i1 false, i1 false}
!69 = !{!"../net/mctp/af_mctp.c", i32 420, i32 21}
!70 = !{ptr @mctp_sk_init.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../net/mctp/af_mctp.c", i32 363, i32 2}
!72 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!74 = !{ptr @.str.17, !5, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!76 = !{ptr @.str.18, !5, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!79 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/net/sock.h", i32 729, i32 3}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/mctp/af_mctp.c", i32 486, i32 2}
!84 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mctp_init._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @mctp_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @mctp_pf, !89, !"mctp_pf", i1 false, i1 false}
!89 = !{!"../net/mctp/af_mctp.c", i32 472, i32 32}
!90 = !{ptr @mctp_dgram_ops, !91, !"mctp_dgram_ops", i1 false, i1 false}
!91 = !{!"../net/mctp/af_mctp.c", i32 296, i32 31}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!94 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!97 = !{ptr @.str.26, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/net/mctp.h", i32 194, i32 2}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"auto-init"}
!114 = !{i64 2148361713, i64 2148361745, i64 2148361774, i64 2148361808, i64 2148361839, i64 2148361862}
!115 = !{i64 2149773468}
!116 = !{i64 2149758431}
!117 = !{i64 2148449714}
!118 = !{i64 2148364178, i64 2148364210, i64 2148364239, i64 2148364273, i64 2148364304, i64 2148364327}
!119 = !{i64 2148841998, i64 2148842003, i64 2148842016, i64 2148842060, i64 2148842094, i64 2148842115}
!120 = !{i64 2156932090}
!121 = !{i64 2156932307}
!122 = !{i64 2149665379}
!123 = !{i64 2149666415}
!124 = !{i64 2150531367}
!125 = !{i64 2152333202, i64 2152333227}
!126 = !{i64 4828757}
!127 = !{i64 4828954}
!128 = !{i64 2152314187}
!129 = !{i64 2157729026, i64 2157729306, i64 2157729640, i64 2157729974}
!130 = !{i8 0, i8 2}
!131 = !{i64 2152333883, i64 2152333908}
!132 = !{i64 2150273514}
!133 = !{i64 2150273839}
