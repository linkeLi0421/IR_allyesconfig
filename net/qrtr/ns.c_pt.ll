; ModuleID = '/llk/IR_all_yes/net/qrtr/ns.c_pt.bc'
source_filename = "../net/qrtr/ns.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qrtr_ns_init\22, \22a\22\09"
module asm "\09.weak\09__crc_qrtr_ns_init\09\09\09\09"
module asm "\09.long\09__crc_qrtr_ns_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qrtr_ns_init:\09\09\09\09\09"
module asm "\09.asciz \09\22qrtr_ns_init\22\09\09\09\09\09"
module asm "__kstrtabns_qrtr_ns_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qrtr_ns_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_qrtr_ns_remove\09\09\09\09"
module asm "\09.long\09__crc_qrtr_ns_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qrtr_ns_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22qrtr_ns_remove\22\09\09\09\09\09"
module asm "__kstrtabns_qrtr_ns_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%union.anon.169 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.170 = type { %struct.bpf_raw_event_map }
%union.anon.171 = type { %struct.bpf_raw_event_map }
%union.anon.172 = type { %struct.bpf_raw_event_map }
%struct.anon.173 = type { ptr, %struct.sockaddr_qrtr, %struct.list_head, ptr, %struct.work_struct, i32 }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.42, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.95, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.95 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.83, i32, %struct.spinlock }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_qrtr_ns_service_announce_new = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_qrtr_ns_service_announce_del = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_qrtr_ns_server_add = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_qrtr_ns_message = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.qrtr_ctrl_pkt = type { i32, %union.anon.174 }
%union.anon.174 = type { %struct.anon.175 }
%struct.anon.175 = type { i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.54, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.51, %union.anon.52 }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.54 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.85, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.86, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.87, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.45, %union.anon.47, %union.anon.48, i16, i8, i8, i32, %union.anon.50, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.77, [0 x i32], %union.anon.78, i16, i16, %union.anon.79, %struct.refcount_struct, [0 x i32], %union.anon.80 }
%union.anon.45 = type { i64 }
%union.anon.47 = type { i32 }
%union.anon.48 = type { i32 }
%union.anon.50 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.76 }
%union.anon.76 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { i32 }
%union.anon.78 = type { %struct.hlist_node }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.85 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.86 = type { ptr }
%union.anon.87 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.qrtr_node = type { i32, %struct.xarray }
%struct.qrtr_server = type { i32, i32, i32, i32, %struct.list_head }
%struct.qrtr_lookup = type { i32, i32, %struct.sockaddr_qrtr, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_qrtr_ns_service_announce_new = internal constant [29 x i8] c"qrtr_ns_service_announce_new\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_qrtr_ns_service_announce_new = dso_local global %struct.static_call_key { ptr @__traceiter_qrtr_ns_service_announce_new }, align 4
@__tracepoint_qrtr_ns_service_announce_new = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_qrtr_ns_service_announce_new, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_qrtr_ns_service_announce_new, ptr null, ptr @__traceiter_qrtr_ns_service_announce_new, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_qrtr_ns_service_announce_new = internal constant ptr @__tracepoint_qrtr_ns_service_announce_new, section "__tracepoints_ptrs", align 4
@__tpstrtab_qrtr_ns_service_announce_del = internal constant [29 x i8] c"qrtr_ns_service_announce_del\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_qrtr_ns_service_announce_del = dso_local global %struct.static_call_key { ptr @__traceiter_qrtr_ns_service_announce_del }, align 4
@__tracepoint_qrtr_ns_service_announce_del = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_qrtr_ns_service_announce_del, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_qrtr_ns_service_announce_del, ptr null, ptr @__traceiter_qrtr_ns_service_announce_del, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_qrtr_ns_service_announce_del = internal constant ptr @__tracepoint_qrtr_ns_service_announce_del, section "__tracepoints_ptrs", align 4
@__tpstrtab_qrtr_ns_server_add = internal constant [19 x i8] c"qrtr_ns_server_add\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_qrtr_ns_server_add = dso_local global %struct.static_call_key { ptr @__traceiter_qrtr_ns_server_add }, align 4
@__tracepoint_qrtr_ns_server_add = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_qrtr_ns_server_add, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_qrtr_ns_server_add, ptr null, ptr @__traceiter_qrtr_ns_server_add, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_qrtr_ns_server_add = internal constant ptr @__tracepoint_qrtr_ns_server_add, section "__tracepoints_ptrs", align 4
@__tpstrtab_qrtr_ns_message = internal constant [16 x i8] c"qrtr_ns_message\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_qrtr_ns_message = dso_local global %struct.static_call_key { ptr @__traceiter_qrtr_ns_message }, align 4
@__tracepoint_qrtr_ns_message = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_qrtr_ns_message, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_qrtr_ns_message, ptr null, ptr @__traceiter_qrtr_ns_message, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_qrtr_ns_message = internal constant ptr @__tracepoint_qrtr_ns_message, section "__tracepoints_ptrs", align 4
@str__qrtr__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qrtr\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_qrtr_ns_service_announce_new = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_qrtr_ns_service_announce_new = internal global %struct.trace_event_class { ptr @str__qrtr__trace_system_name, ptr @trace_event_raw_event_qrtr_ns_service_announce_new, ptr @perf_trace_qrtr_ns_service_announce_new, ptr @trace_event_reg, ptr @trace_event_fields_qrtr_ns_service_announce_new, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_qrtr_ns_service_announce_new, i64 24), ptr getelementptr (i8, ptr @event_class_qrtr_ns_service_announce_new, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_qrtr_ns_service_announce_new = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_qrtr_ns_service_announce_new, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_qrtr_ns_service_announce_new = internal global { [92 x i8], [36 x i8] } { [92 x i8] c"\22advertising new server [%d:%x]@[%d:%d]\22, REC->service, REC->instance, REC->node, REC->port\00", [36 x i8] zeroinitializer }, align 32
@event_qrtr_ns_service_announce_new = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_qrtr_ns_service_announce_new, %union.anon.1 { ptr @__tracepoint_qrtr_ns_service_announce_new }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_qrtr_ns_service_announce_new }, ptr @print_fmt_qrtr_ns_service_announce_new, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_qrtr_ns_service_announce_new = internal global ptr @event_qrtr_ns_service_announce_new, section "_ftrace_events", align 4
@trace_event_fields_qrtr_ns_service_announce_del = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_qrtr_ns_service_announce_del = internal global %struct.trace_event_class { ptr @str__qrtr__trace_system_name, ptr @trace_event_raw_event_qrtr_ns_service_announce_del, ptr @perf_trace_qrtr_ns_service_announce_del, ptr @trace_event_reg, ptr @trace_event_fields_qrtr_ns_service_announce_del, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_qrtr_ns_service_announce_del, i64 24), ptr getelementptr (i8, ptr @event_class_qrtr_ns_service_announce_del, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_qrtr_ns_service_announce_del = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_qrtr_ns_service_announce_del, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_qrtr_ns_service_announce_del = internal global { [99 x i8], [61 x i8] } { [99 x i8] c"\22advertising removal of server [%d:%x]@[%d:%d]\22, REC->service, REC->instance, REC->node, REC->port\00", [61 x i8] zeroinitializer }, align 32
@event_qrtr_ns_service_announce_del = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_qrtr_ns_service_announce_del, %union.anon.1 { ptr @__tracepoint_qrtr_ns_service_announce_del }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_qrtr_ns_service_announce_del }, ptr @print_fmt_qrtr_ns_service_announce_del, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_qrtr_ns_service_announce_del = internal global ptr @event_qrtr_ns_service_announce_del, section "_ftrace_events", align 4
@trace_event_fields_qrtr_ns_server_add = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_qrtr_ns_server_add = internal global %struct.trace_event_class { ptr @str__qrtr__trace_system_name, ptr @trace_event_raw_event_qrtr_ns_server_add, ptr @perf_trace_qrtr_ns_server_add, ptr @trace_event_reg, ptr @trace_event_fields_qrtr_ns_server_add, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_qrtr_ns_server_add, i64 24), ptr getelementptr (i8, ptr @event_class_qrtr_ns_server_add, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_qrtr_ns_server_add = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_qrtr_ns_server_add, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_qrtr_ns_server_add = internal global { [80 x i8], [48 x i8] } { [80 x i8] c"\22add server [%d:%x]@[%d:%d]\22, REC->service, REC->instance, REC->node, REC->port\00", [48 x i8] zeroinitializer }, align 32
@event_qrtr_ns_server_add = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_qrtr_ns_server_add, %union.anon.1 { ptr @__tracepoint_qrtr_ns_server_add }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_qrtr_ns_server_add }, ptr @print_fmt_qrtr_ns_server_add, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_qrtr_ns_server_add = internal global ptr @event_qrtr_ns_server_add, section "_ftrace_events", align 4
@trace_event_fields_qrtr_ns_message = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.0 { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.0 { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.0 { %struct.anon { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_qrtr_ns_message = internal global %struct.trace_event_class { ptr @str__qrtr__trace_system_name, ptr @trace_event_raw_event_qrtr_ns_message, ptr @perf_trace_qrtr_ns_message, ptr @trace_event_reg, ptr @trace_event_fields_qrtr_ns_message, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_qrtr_ns_message, i64 24), ptr getelementptr (i8, ptr @event_class_qrtr_ns_message, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_qrtr_ns_message = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_qrtr_ns_message, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_qrtr_ns_message = internal global { [69 x i8], [59 x i8] } { [69 x i8] c"\22%s from %d:%d\22, __get_str(ctrl_pkt_str), REC->sq_node, REC->sq_port\00", [59 x i8] zeroinitializer }, align 32
@event_qrtr_ns_message = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_qrtr_ns_message, %union.anon.1 { ptr @__tracepoint_qrtr_ns_message }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_qrtr_ns_message }, ptr @print_fmt_qrtr_ns_message, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_qrtr_ns_message = internal global ptr @event_qrtr_ns_message, section "_ftrace_events", align 4
@__bpf_trace_tp_map_qrtr_ns_service_announce_new = internal global %union.anon.169 { %struct.bpf_raw_event_map { ptr @__tracepoint_qrtr_ns_service_announce_new, ptr @__bpf_trace_qrtr_ns_service_announce_new, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_qrtr_ns_service_announce_del = internal global %union.anon.170 { %struct.bpf_raw_event_map { ptr @__tracepoint_qrtr_ns_service_announce_del, ptr @__bpf_trace_qrtr_ns_service_announce_del, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_qrtr_ns_server_add = internal global %union.anon.171 { %struct.bpf_raw_event_map { ptr @__tracepoint_qrtr_ns_server_add, ptr @__bpf_trace_qrtr_ns_server_add, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_qrtr_ns_message = internal global %union.anon.172 { %struct.bpf_raw_event_map { ptr @__tracepoint_qrtr_ns_message, ptr @__bpf_trace_qrtr_ns_message, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@qrtr_ns = internal global { %struct.anon.173, [52 x i8] } zeroinitializer, align 32
@qrtr_ns_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&qrtr_ns.work)\00", [63 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@qrtr_ns_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013failed to get socket name\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qrtr_ns_init\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/qrtr/ns.c\00", [18 x i8] zeroinitializer }, align 32
@qrtr_ns_init._entry_ptr = internal global ptr @qrtr_ns_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qrtr_ns_handler\00", [16 x i8] zeroinitializer }, align 32
@qrtr_ns_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013failed to bind to socket\0A\00", [36 x i8] zeroinitializer }, align 32
@qrtr_ns_init._entry_ptr.7 = internal global ptr @qrtr_ns_init._entry.5, section ".printk_index", align 4
@__kstrtab_qrtr_ns_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_qrtr_ns_init = external dso_local constant [0 x i8], align 1
@__ksymtab_qrtr_ns_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qrtr_ns_init to i32), ptr @__kstrtab_qrtr_ns_init, ptr @__kstrtabns_qrtr_ns_init }, section "___ksymtab_gpl+qrtr_ns_init", align 4
@__kstrtab_qrtr_ns_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_qrtr_ns_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_qrtr_ns_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qrtr_ns_remove to i32), ptr @__kstrtab_qrtr_ns_remove, ptr @__kstrtabns_qrtr_ns_remove }, section "___ksymtab_gpl+qrtr_ns_remove", align 4
@__UNIQUE_ID_author488 = internal constant [69 x i8] c"qrtr.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description489 = internal constant [49 x i8] c"qrtr.description=Qualcomm IPC Router Nameservice\00", section ".modinfo", align 1
@__UNIQUE_ID_file490 = internal constant [24 x i8] c"qrtr.file=net/qrtr/qrtr\00", section ".modinfo", align 1
@__UNIQUE_ID_license491 = internal constant [26 x i8] c"qrtr.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"__le32\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"service\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"instance\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"advertising new server [%d:%x]@[%d:%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"advertising removal of server [%d:%x]@[%d:%d]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"add server [%d:%x]@[%d:%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ctrl_pkt_str\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u32\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sq_node\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sq_port\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s from %d:%d\0A\00", [17 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@qrtr_ns_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013error receiving packet: %zd\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qrtr_ns_worker\00", [17 x i8] zeroinitializer }, align 32
@qrtr_ns_worker._entry_ptr = internal global ptr @qrtr_ns_worker._entry, section ".printk_index", align 4
@qrtr_ctrl_pkt_strings = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr null, ptr null, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [48 x i8] zeroinitializer }, align 32
@qrtr_ns_worker._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013failed while handling packet from %d:%d\00", [54 x i8] zeroinitializer }, align 32
@qrtr_ns_worker._entry_ptr.27 = internal global ptr @qrtr_ns_worker._entry.25, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hello\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bye\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"new-server\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"del-server\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"del-client\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resume-tx\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exit\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ping\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"new-lookup\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"del-lookup\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/qrtr.h\00", [36 x i8] zeroinitializer }, align 32
@trace_qrtr_ns_message.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@announce_servers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to announce new service\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"announce_servers\00", [47 x i8] zeroinitializer }, align 32
@announce_servers._entry_ptr = internal global ptr @announce_servers._entry, section ".printk_index", align 4
@nodes = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 3264, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nodes.xa_lock\00", [18 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@radix_tree_deref_slot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/radix-tree.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@trace_qrtr_ns_service_announce_new.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ctrl_cmd_bye._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013failed to send bye cmd\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ctrl_cmd_bye\00", [19 x i8] zeroinitializer }, align 32
@ctrl_cmd_bye._entry_ptr = internal global ptr @ctrl_cmd_bye._entry, section ".printk_index", align 4
@service_announce_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to announce del service\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"service_announce_del\00", [43 x i8] zeroinitializer }, align 32
@service_announce_del._entry_ptr = internal global ptr @service_announce_del._entry, section ".printk_index", align 4
@trace_qrtr_ns_service_announce_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@lookup_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013failed to send lookup notification\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lookup_notify\00", [18 x i8] zeroinitializer }, align 32
@lookup_notify._entry_ptr = internal global ptr @lookup_notify._entry, section ".printk_index", align 4
@ctrl_cmd_del_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to send del client cmd\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ctrl_cmd_del_client\00", [44 x i8] zeroinitializer }, align 32
@ctrl_cmd_del_client._entry_ptr = internal global ptr @ctrl_cmd_del_client._entry, section ".printk_index", align 4
@ctrl_cmd_new_server._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.56, ptr @.str.3, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ctrl_cmd_new_server\00", [44 x i8] zeroinitializer }, align 32
@ctrl_cmd_new_server._entry_ptr = internal global ptr @ctrl_cmd_new_server._entry, section ".printk_index", align 4
@trace_qrtr_ns_server_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@say_hello._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013failed to send hello msg\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"say_hello\00", [22 x i8] zeroinitializer }, align 32
@say_hello._entry_ptr = internal global ptr @say_hello._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 10, i64 11]
@___asan_gen_.59 = private unnamed_addr constant [29 x i8] c"str__qrtr__trace_system_name\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 36, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [48 x i8] c"trace_event_fields_qrtr_ns_service_announce_new\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_qrtr_ns_service_announce_new\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [39 x i8] c"print_fmt_qrtr_ns_service_announce_new\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [35 x i8] c"event_qrtr_ns_service_announce_new\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [48 x i8] c"trace_event_fields_qrtr_ns_service_announce_del\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_qrtr_ns_service_announce_del\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [39 x i8] c"print_fmt_qrtr_ns_service_announce_del\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [35 x i8] c"event_qrtr_ns_service_announce_del\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [38 x i8] c"trace_event_fields_qrtr_ns_server_add\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_qrtr_ns_server_add\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [29 x i8] c"print_fmt_qrtr_ns_server_add\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"event_qrtr_ns_server_add\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [35 x i8] c"trace_event_fields_qrtr_ns_message\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_qrtr_ns_message\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"print_fmt_qrtr_ns_message\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"event_qrtr_ns_message\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [8 x i8] c"qrtr_ns\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 27, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 764, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 773, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 777, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 790, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 11, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 37, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 63, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 691, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [22 x i8] c"qrtr_ctrl_pkt_strings\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 29, i32 27 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 746, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 30, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 31, i32 21 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 32, i32 27 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 33, i32 27 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 34, i32 27 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 35, i32 26 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 36, i32 21 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 37, i32 21 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 38, i32 27 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 39, i32 27 }
@___asan_gen_.237 = private unnamed_addr constant [31 x i8] c"../include/trace/events/qrtr.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 89, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 108, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 217, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 18, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 695, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [30 x i8] c"../include/linux/radix-tree.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 179, i32 9 }
@___asan_gen_.267 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 723, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 407, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 156, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 187, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 494, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 527, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.318 = private constant [17 x i8] c"../net/qrtr/ns.c\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 323, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author488, ptr @__UNIQUE_ID_description489, ptr @__UNIQUE_ID_file490, ptr @__UNIQUE_ID_license491, ptr @__bpf_trace_tp_map_qrtr_ns_message, ptr @__bpf_trace_tp_map_qrtr_ns_server_add, ptr @__bpf_trace_tp_map_qrtr_ns_service_announce_del, ptr @__bpf_trace_tp_map_qrtr_ns_service_announce_new, ptr @__event_qrtr_ns_message, ptr @__event_qrtr_ns_server_add, ptr @__event_qrtr_ns_service_announce_del, ptr @__event_qrtr_ns_service_announce_new, ptr @__ksymtab_qrtr_ns_init, ptr @__ksymtab_qrtr_ns_remove, ptr @__tracepoint_ptr_qrtr_ns_message, ptr @__tracepoint_ptr_qrtr_ns_server_add, ptr @__tracepoint_ptr_qrtr_ns_service_announce_del, ptr @__tracepoint_ptr_qrtr_ns_service_announce_new, ptr @__tracepoint_qrtr_ns_message, ptr @__tracepoint_qrtr_ns_server_add, ptr @__tracepoint_qrtr_ns_service_announce_del, ptr @__tracepoint_qrtr_ns_service_announce_new, ptr @announce_servers._entry, ptr @announce_servers._entry_ptr, ptr @ctrl_cmd_bye._entry, ptr @ctrl_cmd_bye._entry_ptr, ptr @ctrl_cmd_del_client._entry, ptr @ctrl_cmd_del_client._entry_ptr, ptr @ctrl_cmd_new_server._entry, ptr @ctrl_cmd_new_server._entry_ptr, ptr @event_class_qrtr_ns_message, ptr @event_class_qrtr_ns_server_add, ptr @event_class_qrtr_ns_service_announce_del, ptr @event_class_qrtr_ns_service_announce_new, ptr @event_qrtr_ns_message, ptr @event_qrtr_ns_server_add, ptr @event_qrtr_ns_service_announce_del, ptr @event_qrtr_ns_service_announce_new, ptr @lookup_notify._entry, ptr @lookup_notify._entry_ptr, ptr @qrtr_ns_init._entry, ptr @qrtr_ns_init._entry.5, ptr @qrtr_ns_init._entry_ptr, ptr @qrtr_ns_init._entry_ptr.7, ptr @qrtr_ns_worker._entry, ptr @qrtr_ns_worker._entry.25, ptr @qrtr_ns_worker._entry_ptr, ptr @qrtr_ns_worker._entry_ptr.27, ptr @say_hello._entry, ptr @say_hello._entry_ptr, ptr @service_announce_del._entry, ptr @service_announce_del._entry_ptr, ptr @str__qrtr__trace_system_name, ptr @trace_event_fields_qrtr_ns_service_announce_new, ptr @trace_event_type_funcs_qrtr_ns_service_announce_new, ptr @print_fmt_qrtr_ns_service_announce_new, ptr @trace_event_fields_qrtr_ns_service_announce_del, ptr @trace_event_type_funcs_qrtr_ns_service_announce_del, ptr @print_fmt_qrtr_ns_service_announce_del, ptr @trace_event_fields_qrtr_ns_server_add, ptr @trace_event_type_funcs_qrtr_ns_server_add, ptr @print_fmt_qrtr_ns_server_add, ptr @trace_event_fields_qrtr_ns_message, ptr @trace_event_type_funcs_qrtr_ns_message, ptr @print_fmt_qrtr_ns_message, ptr @qrtr_ns, ptr @qrtr_ns_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @qrtr_ctrl_pkt_strings, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @nodes, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__qrtr__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_qrtr_ns_service_announce_new to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_qrtr_ns_service_announce_new to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_qrtr_ns_service_announce_new to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_qrtr_ns_service_announce_new to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_qrtr_ns_service_announce_del to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_qrtr_ns_service_announce_del to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_qrtr_ns_service_announce_del to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_qrtr_ns_service_announce_del to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_qrtr_ns_server_add to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_qrtr_ns_server_add to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_qrtr_ns_server_add to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_qrtr_ns_server_add to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_qrtr_ns_message to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_qrtr_ns_message to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_qrtr_ns_message to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_qrtr_ns_message to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_ns to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_ns_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_ns_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_ns_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_ns_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_ctrl_pkt_strings to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrtr_ns_worker._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @announce_servers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_cmd_bye._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_announce_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_cmd_del_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_cmd_new_server._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @say_hello._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_qrtr_ns_service_announce_new(ptr nocapture readnone %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_service_announce_new, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #11
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
define dso_local i32 @__traceiter_qrtr_ns_service_announce_del(ptr nocapture readnone %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_service_announce_del, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #11
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
define dso_local i32 @__traceiter_qrtr_ns_server_add(ptr nocapture readnone %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_server_add, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #11
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
define dso_local i32 @__traceiter_qrtr_ns_message(ptr nocapture readnone %__data, ptr noundef %ctrl_pkt_str, i32 noundef %sq_node, i32 noundef %sq_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_message, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %ctrl_pkt_str, i32 noundef %sq_node, i32 noundef %sq_port) #11
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
define internal void @trace_event_raw_event_qrtr_ns_service_announce_new(ptr noundef %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !194

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !195

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
  %service6 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %service6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %service, ptr %service6, align 4
  %instance7 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %instance7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %instance, ptr %instance7, align 4
  %node8 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %node8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %node, ptr %node8, align 4
  %port9 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %port, ptr %port9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_qrtr_ns_service_announce_new(ptr noundef %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !196
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  %24 = call i32 @llvm.read_register.i32(metadata !184) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %service17 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %service17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %service, ptr %service17, align 4
  %instance18 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %instance18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %instance, ptr %instance18, align 4
  %node19 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %node19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %node, ptr %node19, align 4
  %port20 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %port20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %port, ptr %port20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #11
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
define internal void @trace_event_raw_event_qrtr_ns_service_announce_del(ptr noundef %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !194

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !195

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
  %service6 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %service6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %service, ptr %service6, align 4
  %instance7 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %instance7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %instance, ptr %instance7, align 4
  %node8 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %node8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %node, ptr %node8, align 4
  %port9 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %port, ptr %port9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_qrtr_ns_service_announce_del(ptr noundef %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !196
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  %24 = call i32 @llvm.read_register.i32(metadata !184) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %service17 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %service17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %service, ptr %service17, align 4
  %instance18 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %instance18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %instance, ptr %instance18, align 4
  %node19 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %node19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %node, ptr %node19, align 4
  %port20 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %port20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %port, ptr %port20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_qrtr_ns_server_add(ptr noundef %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !194

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !195

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
  %service6 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %service6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %service, ptr %service6, align 4
  %instance7 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %instance7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %instance, ptr %instance7, align 4
  %node8 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %node8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %node, ptr %node8, align 4
  %port9 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %port, ptr %port9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_qrtr_ns_server_add(ptr noundef %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !196
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  %24 = call i32 @llvm.read_register.i32(metadata !184) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %service17 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %service17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %service, ptr %service17, align 4
  %instance18 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %instance18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %instance, ptr %instance18, align 4
  %node19 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %node19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %node, ptr %node19, align 4
  %port20 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %port20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %port, ptr %port20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_qrtr_ns_message(ptr noundef %__data, ptr noundef readonly %ctrl_pkt_str, i32 noundef %sq_node, i32 noundef %sq_port) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !194

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !195

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
  %tobool.not.i26 = icmp eq ptr %ctrl_pkt_str, null
  %spec.select.i = select i1 %tobool.not.i26, ptr @.str.16, ptr %ctrl_pkt_str
  %call.i27 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #14
  %add = add i32 %call.i27, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = shl i32 %call.i27, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_ctrl_pkt_str = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_message, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_ctrl_pkt_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_ctrl_pkt_str, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #15
  %sq_node10 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_message, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %sq_node10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sq_node, ptr %sq_node10, align 4
  %sq_port11 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_message, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %sq_port11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sq_port, ptr %sq_port11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_qrtr_ns_message(ptr noundef %__data, ptr noundef readonly %ctrl_pkt_str, i32 noundef %sq_node, i32 noundef %sq_port) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !196
  %tobool.not.i = icmp eq ptr %ctrl_pkt_str, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.16, ptr %ctrl_pkt_str
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #14
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  %tobool.not.i50.not = icmp eq ptr %15, null
  br i1 %tobool.not.i50.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 32
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
  %24 = call i32 @llvm.read_register.i32(metadata !184) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_ctrl_pkt_str = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_message, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_ctrl_pkt_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_ctrl_pkt_str, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #15
  %sq_node22 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_message, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %sq_node22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sq_node, ptr %sq_node22, align 4
  %sq_port23 = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_message, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %sq_port23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sq_port, ptr %sq_port23, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_qrtr_ns_service_announce_new(ptr noundef %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %service to i64
  %conv4 = zext i32 %instance to i64
  %conv8 = zext i32 %node to i64
  %conv12 = zext i32 %port to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_qrtr_ns_service_announce_del(ptr noundef %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %service to i64
  %conv4 = zext i32 %instance to i64
  %conv8 = zext i32 %node to i64
  %conv12 = zext i32 %port to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_qrtr_ns_server_add(ptr noundef %__data, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %service to i64
  %conv4 = zext i32 %instance to i64
  %conv8 = zext i32 %node to i64
  %conv12 = zext i32 %port to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_qrtr_ns_message(ptr noundef %__data, ptr noundef %ctrl_pkt_str, i32 noundef %sq_node, i32 noundef %sq_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ctrl_pkt_str to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %sq_node to i64
  %conv8 = zext i32 %sq_port to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qrtr_ns_init() #0 align 64 {
entry:
  %pkt.i = alloca %struct.qrtr_ctrl_pkt, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %iv.i = alloca %struct.kvec, align 4
  %sq = alloca %struct.sockaddr_qrtr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sq) #11
  %0 = call ptr @memset(ptr %sq, i32 255, i32 12)
  store volatile ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2), ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2), align 4
  store ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2), ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2, i32 1), align 4
  tail call void @__init_work(ptr noundef getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 4), i32 noundef 0) #11
  store i32 -64, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 4), align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 4, i32 3), ptr noundef nonnull @.str, ptr noundef nonnull @qrtr_ns_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  store volatile ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 4, i32 1), ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 4, i32 1), align 4
  store ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 4, i32 1), ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 4, i32 1, i32 1), align 4
  store ptr @qrtr_ns_worker, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 4, i32 2), align 4
  %call = tail call i32 @sock_create_kern(ptr noundef nonnull @init_net, i32 noundef 42, i32 noundef 2, i32 noundef 42, ptr noundef nonnull @qrtr_ns) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @qrtr_ns, align 4
  %call1 = call i32 @kernel_getsockname(ptr noundef %1, ptr noundef nonnull %sq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16
  br label %err_sock

if.end8:                                          ; preds = %if.end
  %call9 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef 1) #11
  store ptr %call9, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 3), align 4
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end8.err_sock_crit_edge, label %if.end11

if.end8.err_sock_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sock

if.end11:                                         ; preds = %if.end8
  %2 = load ptr, ptr @qrtr_ns, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 77
  %5 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @qrtr_ns_data_ready, ptr %sk_data_ready, align 8
  %sq_port = getelementptr inbounds %struct.sockaddr_qrtr, ptr %sq, i32 0, i32 2
  %6 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -2, ptr %sq_port, align 4
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %sq, i32 0, i32 1
  %7 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sq_node, align 4
  store i32 %8, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 5), align 4
  %call12 = call i32 @kernel_bind(ptr noundef %2, ptr noundef nonnull %sq, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %err_wq

if.end20:                                         ; preds = %if.end11
  store i16 42, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 1, i32 1), align 4
  store i32 -2, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 1, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  %11 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %12 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pkt.i, ptr %iv.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 20, ptr %11, align 4
  %14 = getelementptr inbounds i8, ptr %pkt.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 16)
  %16 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 33554432, ptr %pkt.i, align 4
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 1), ptr %msg.i, align 8
  %msg_namelen.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %msg_namelen.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %msg_namelen.i, align 4
  %19 = load ptr, ptr @qrtr_ns, align 4
  %call.i = call i32 @kernel_sendmsg(ptr noundef %19, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %say_hello.exit.thread, label %say_hello.exit

say_hello.exit.thread:                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #11
  br label %err_wq

say_hello.exit:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #11
  br label %cleanup

err_wq:                                           ; preds = %say_hello.exit.thread, %do.end17
  %ret.0 = phi i32 [ %call12, %do.end17 ], [ %call.i, %say_hello.exit.thread ]
  %20 = load ptr, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 3), align 4
  call void @destroy_workqueue(ptr noundef %20) #11
  br label %err_sock

err_sock:                                         ; preds = %err_wq, %if.end8.err_sock_crit_edge, %do.end6
  %ret.1 = phi i32 [ %call1, %do.end6 ], [ %ret.0, %err_wq ], [ -12, %if.end8.err_sock_crit_edge ]
  %21 = load ptr, ptr @qrtr_ns, align 4
  call void @sock_release(ptr noundef %21) #11
  br label %cleanup

cleanup:                                          ; preds = %err_sock, %say_hello.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_sock ], [ %call, %entry.cleanup_crit_edge ], [ 0, %say_hello.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sq) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qrtr_ns_worker(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %pkt.i146.i = alloca %struct.qrtr_ctrl_pkt, align 4
  %msg.i147.i = alloca %struct.msghdr, align 8
  %iv.i148.i = alloca %struct.kvec, align 4
  %pkt.i.i196 = alloca %struct.qrtr_ctrl_pkt, align 4
  %msg.i.i197 = alloca %struct.msghdr, align 8
  %iv.i.i198 = alloca %struct.kvec, align 4
  %node_iter.i = alloca %struct.radix_tree_iter, align 4
  %srv_iter.i = alloca %struct.radix_tree_iter, align 4
  %pkt.i49.i = alloca %struct.qrtr_ctrl_pkt, align 4
  %msg.i50.i = alloca %struct.msghdr, align 8
  %iv.i51.i = alloca %struct.kvec, align 4
  %pkt.i.i150 = alloca %struct.qrtr_ctrl_pkt, align 4
  %msg.i.i151 = alloca %struct.msghdr, align 8
  %iv.i.i152 = alloca %struct.kvec, align 4
  %iter.i90 = alloca %struct.radix_tree_iter, align 4
  %pkt.i91 = alloca %struct.qrtr_ctrl_pkt, align 4
  %msg.i92 = alloca %struct.msghdr, align 8
  %sq.i93 = alloca %struct.sockaddr_qrtr, align 4
  %iv.i94 = alloca %struct.kvec, align 4
  %iter.i = alloca %struct.radix_tree_iter, align 4
  %pkt.i = alloca %struct.qrtr_ctrl_pkt, align 4
  %sq.i = alloca %struct.sockaddr_qrtr, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %iv.i = alloca %struct.kvec, align 4
  %pkt.i.i.i = alloca %struct.qrtr_ctrl_pkt, align 4
  %msg.i.i.i = alloca %struct.msghdr, align 8
  %iv.i.i.i = alloca %struct.kvec, align 4
  %iter.i.i = alloca %struct.radix_tree_iter, align 4
  %pkt.i.i = alloca %struct.qrtr_ctrl_pkt, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  %iv.i.i = alloca %struct.kvec, align 4
  %sq = alloca %struct.sockaddr_qrtr, align 4
  %msg = alloca %struct.msghdr, align 8
  %iv = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sq) #11
  %0 = call ptr @memset(ptr %sq, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #11
  %1 = getelementptr inbounds i8, ptr %msg, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv) #11
  %3 = getelementptr inbounds %struct.kvec, ptr %iv, i32 0, i32 1
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sq, ptr %msg, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %msg_namelen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %iv, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %3, align 4
  %9 = load ptr, ptr @qrtr_ns, align 4
  %call2274 = call i32 @kernel_recvmsg(ptr noundef %9, ptr noundef nonnull %msg, ptr noundef nonnull %iv, i32 noundef 1, i32 noundef 4096, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2274)
  %cmp275 = icmp eq i32 %call2274, -11
  br i1 %cmp275, label %for.cond.preheader.for.end_crit_edge, label %if.end4.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end4.lr.ph:                                    ; preds = %for.cond.preheader
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %sq, i32 0, i32 1
  %sq_port = getelementptr inbounds %struct.sockaddr_qrtr, ptr %sq, i32 0, i32 2
  %10 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %call7.i.i, i32 0, i32 1
  %instance33 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.radix_tree_iter, ptr %node_iter.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.radix_tree_iter, ptr %node_iter.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.radix_tree_iter, ptr %srv_iter.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.radix_tree_iter, ptr %srv_iter.i, i32 0, i32 2
  %15 = getelementptr inbounds i8, ptr %msg.i.i197, i32 8
  %16 = getelementptr inbounds %struct.kvec, ptr %iv.i.i198, i32 0, i32 1
  %17 = getelementptr inbounds i8, ptr %pkt.i.i196, i32 4
  %18 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i196, i32 0, i32 1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i196, i32 0, i32 1, i32 0, i32 2
  %20 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i196, i32 0, i32 1, i32 0, i32 1
  %msg_namelen.i.i215 = getelementptr inbounds %struct.msghdr, ptr %msg.i.i197, i32 0, i32 1
  %21 = getelementptr inbounds i8, ptr %msg.i147.i, i32 8
  %22 = getelementptr inbounds %struct.kvec, ptr %iv.i148.i, i32 0, i32 1
  %23 = getelementptr inbounds i8, ptr %pkt.i146.i, i32 4
  %msg_namelen.i149.i = getelementptr inbounds %struct.msghdr, ptr %msg.i147.i, i32 0, i32 1
  %node27 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %port28 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %24 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i150, i32 0, i32 1
  %25 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i150, i32 0, i32 1, i32 0, i32 1
  %26 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i150, i32 0, i32 1, i32 0, i32 2
  %27 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i150, i32 0, i32 1, i32 0, i32 3
  %28 = getelementptr inbounds i8, ptr %msg.i.i151, i32 8
  %29 = getelementptr inbounds %struct.kvec, ptr %iv.i.i152, i32 0, i32 1
  %msg_namelen.i.i172 = getelementptr inbounds %struct.msghdr, ptr %msg.i.i151, i32 0, i32 1
  %30 = getelementptr inbounds i8, ptr %msg.i50.i, i32 8
  %31 = getelementptr inbounds %struct.kvec, ptr %iv.i51.i, i32 0, i32 1
  %32 = getelementptr inbounds i8, ptr %pkt.i49.i, i32 4
  %33 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i49.i, i32 0, i32 1, i32 0, i32 3
  %34 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i49.i, i32 0, i32 1, i32 0, i32 2
  %35 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i49.i, i32 0, i32 1, i32 0, i32 1
  %msg_namelen.i56.i = getelementptr inbounds %struct.msghdr, ptr %msg.i50.i, i32 0, i32 1
  %36 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i90, i32 0, i32 1
  %37 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i90, i32 0, i32 2
  %38 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i91, i32 0, i32 1
  %39 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i91, i32 0, i32 1, i32 0, i32 1
  %40 = getelementptr inbounds %struct.kvec, ptr %iv.i94, i32 0, i32 1
  %41 = getelementptr inbounds i8, ptr %pkt.i91, i32 12
  %sq_node47.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %sq.i93, i32 0, i32 1
  %sq_port49.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %sq.i93, i32 0, i32 2
  %msg_namelen.i121 = getelementptr inbounds %struct.msghdr, ptr %msg.i92, i32 0, i32 1
  %42 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i, i32 0, i32 2
  %44 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i, i32 0, i32 1
  %45 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %46 = getelementptr inbounds i8, ptr %pkt.i, i32 8
  %sq_node43.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %sq.i, i32 0, i32 1
  %sq_port.i = getelementptr inbounds %struct.sockaddr_qrtr, ptr %sq.i, i32 0, i32 2
  %msg_namelen.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 1
  %47 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %48 = getelementptr inbounds %struct.kvec, ptr %iv.i.i, i32 0, i32 1
  %49 = getelementptr inbounds i8, ptr %pkt.i.i, i32 4
  %msg_namelen.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 1
  %50 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i.i, i32 0, i32 1
  %51 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i.i, i32 0, i32 2
  %52 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i.i, i32 0, i32 1
  %53 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i.i, i32 0, i32 1, i32 0, i32 1
  %54 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i.i, i32 0, i32 1, i32 0, i32 2
  %55 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i.i.i, i32 0, i32 1, i32 0, i32 3
  %56 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %57 = getelementptr inbounds %struct.kvec, ptr %iv.i.i.i, i32 0, i32 1
  %msg_namelen.i.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i.i, i32 0, i32 1
  br label %if.end4

if.end4:                                          ; preds = %if.end47.if.end4_crit_edge, %if.end4.lr.ph
  %call2276 = phi i32 [ %call2274, %if.end4.lr.ph ], [ %call2, %if.end47.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2276)
  %cmp5 = icmp slt i32 %call2276, 0
  br i1 %cmp5, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call2276) #16
  br label %for.end

if.end8:                                          ; preds = %if.end4
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call7.i.i, align 8
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %60)
  %cmp10 = icmp ugt i32 %60, 11
  %61 = and i32 %60, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %62 = icmp eq i32 %61, 0
  %or.cond = or i1 %cmp10, %62
  br i1 %or.cond, label %if.end8.if.end14_crit_edge, label %if.then12

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [12 x ptr], ptr @qrtr_ctrl_pkt_strings, i32 0, i32 %60
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx, align 4
  %65 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sq_node, align 4
  %67 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sq_port, align 4
  call fastcc void @trace_qrtr_ns_message(ptr noundef %64, i32 noundef %66, i32 noundef %68)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  %69 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %60, label %if.end14.if.end47_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb16
    i32 6, label %sw.bb18
    i32 4, label %sw.bb20
    i32 5, label %sw.bb24
    i32 11, label %sw.bb35
    i32 10, label %sw.bb31
  ]

if.end14.if.end47_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

sw.bb:                                            ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #11
  %70 = call ptr @memset(ptr %47, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i) #11
  %71 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %pkt.i.i, ptr %iv.i.i, align 4
  %72 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 20, ptr %48, align 4
  %73 = call ptr @memset(ptr %49, i32 0, i32 16)
  %74 = ptrtoint ptr %pkt.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 33554432, ptr %pkt.i.i, align 4
  %75 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %sq, ptr %msg.i.i, align 8
  %76 = ptrtoint ptr %msg_namelen.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 12, ptr %msg_namelen.i.i, align 4
  %77 = load ptr, ptr @qrtr_ns, align 4
  %call.i.i = call i32 @kernel_sendmsg(ptr noundef %77, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %iv.i.i, i32 noundef 1, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %say_hello.exit.thread.i, label %if.end.i

say_hello.exit.thread.i:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i.i) #11
  br label %do.end42

if.end.i:                                         ; preds = %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i.i) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i.i) #11
  %78 = call ptr @memset(ptr %iter.i.i, i32 255, i32 16)
  %79 = load i32, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 5), align 4
  %call.i42.i.i = call ptr @radix_tree_lookup(ptr noundef nonnull @nodes, i32 noundef %79) #11
  %tobool.not.i43.i.i = icmp eq ptr %call.i42.i.i, null
  br i1 %tobool.not.i43.i.i, label %if.end.i.i.i, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3520, i32 noundef 56) #17
  %tobool2.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.announce_servers.exit.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.announce_servers.exit.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %announce_servers.exit.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %call7.i.i.i.i.i, align 8
  %call5.i.i.i = call i32 @radix_tree_insert(ptr noundef nonnull @nodes, i32 noundef %79, ptr noundef nonnull %call7.i.i.i.i.i) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end4.i.i.i, %if.end.i.if.end.i.i_crit_edge
  %retval.0.i.ph.i.i = phi ptr [ %call.i42.i.i, %if.end.i.if.end.i.i_crit_edge ], [ %call7.i.i.i.i.i, %if.end4.i.i.i ]
  %82 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %85, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %86 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %iter.i.i, align 4
  %87 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %50, align 4
  %servers.i.i = getelementptr inbounds %struct.qrtr_node, ptr %retval.0.i.ph.i.i, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i.loopexit:                            ; preds = %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge, %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge
  %slot.0.i.i.ph = phi ptr [ null, %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i.i, %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.loopexit, %rcu_read_lock.exit.i.i
  %slot.0.i.i = phi ptr [ null, %rcu_read_lock.exit.i.i ], [ %slot.0.i.i.ph, %for.cond.i.i.loopexit ]
  %tobool2.not.i.i = icmp eq ptr %slot.0.i.i, null
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

lor.rhs.i.i:                                      ; preds = %for.cond.i.i
  %call3.i.i = call ptr @radix_tree_next_chunk(ptr noundef %servers.i.i, ptr noundef nonnull %iter.i.i, i32 noundef 0) #11
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %for.end.i.i, label %lor.rhs.i.i.for.body.i.i_crit_edge

lor.rhs.i.i.for.body.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %lor.rhs.i.i.for.body.i.i_crit_edge, %for.cond.i.i.for.body.i.i_crit_edge
  %slot.1.i.i = phi ptr [ %slot.0.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %call3.i.i, %lor.rhs.i.i.for.body.i.i_crit_edge ]
  %88 = ptrtoint ptr %slot.1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %slot.1.i.i, align 4
  %call.i44.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i)
  %tobool.not.i45.i.i = icmp eq i32 %call.i44.i.i, 0
  br i1 %tobool.not.i45.i.i, label %land.lhs.true.i46.i.i, label %for.body.i.i.radix_tree_deref_slot.exit.i.i_crit_edge

for.body.i.i.radix_tree_deref_slot.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i.i

land.lhs.true.i46.i.i:                            ; preds = %for.body.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i46.i.i.radix_tree_deref_slot.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i46.i.i.radix_tree_deref_slot.exit.i.i_crit_edge: ; preds = %land.lhs.true.i46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i46.i.i
  %.b9.i.i.i = load i1, ptr @radix_tree_deref_slot.__warned, align 1
  br i1 %.b9.i.i.i, label %land.lhs.true4.i.i.i.radix_tree_deref_slot.exit.i.i_crit_edge, label %if.then.i47.i.i

land.lhs.true4.i.i.i.radix_tree_deref_slot.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i.i

if.then.i47.i.i:                                  ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @radix_tree_deref_slot.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 179, ptr noundef nonnull @.str.39) #11
  br label %radix_tree_deref_slot.exit.i.i

radix_tree_deref_slot.exit.i.i:                   ; preds = %if.then.i47.i.i, %land.lhs.true4.i.i.i.radix_tree_deref_slot.exit.i.i_crit_edge, %land.lhs.true.i46.i.i.radix_tree_deref_slot.exit.i.i_crit_edge, %for.body.i.i.radix_tree_deref_slot.exit.i.i_crit_edge
  %tobool6.not.i.i = icmp eq ptr %89, null
  br i1 %tobool6.not.i.i, label %radix_tree_deref_slot.exit.i.i.for.inc.i.i_crit_edge, label %if.end8.i.i

radix_tree_deref_slot.exit.i.i.for.inc.i.i_crit_edge: ; preds = %radix_tree_deref_slot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end8.i.i:                                      ; preds = %radix_tree_deref_slot.exit.i.i
  %90 = ptrtoint ptr %89 to i32
  %and.i.i.i.i = and i32 %90, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %and.i.i.i.i, 2
  br i1 %cmp.i.i.not.i.i, label %if.then11.i.i, label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iter.i.i, align 4
  %93 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %50, align 4
  %94 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %51, align 4
  br label %for.inc.i.i

if.end13.i.i:                                     ; preds = %if.end8.i.i
  %call14.i.i = call ptr @radix_tree_iter_resume(ptr noundef nonnull %slot.1.i.i, ptr noundef nonnull %iter.i.i) #11
  %call.i49.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i49.i.i, label %if.end13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i52.i.i

if.end13.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i52.i.i:                            ; preds = %if.end13.i.i
  %call1.i50.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50.i.i)
  %tobool.not.i51.i.i = icmp eq i32 %call1.i50.i.i, 0
  br i1 %tobool.not.i51.i.i, label %land.lhs.true.i52.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i54.i.i

land.lhs.true.i52.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i54.i.i:                           ; preds = %land.lhs.true.i52.i.i
  %.b4.i53.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53.i.i, label %land.lhs.true2.i54.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i55.i.i

land.lhs.true2.i54.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

if.then.i55.i.i:                                  ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.47) #11
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i55.i.i, %land.lhs.true2.i54.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i52.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end13.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %95 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i56.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i56.i.i to ptr
  %preempt_count.i.i.i.i57.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i57.i.i, align 4
  %sub.i.i.i.i.i = add i32 %98, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i57.i.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  %99 = call ptr @memset(ptr %56, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i.i) #11
  %100 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %89, align 4
  %instance.i.i.i = getelementptr inbounds %struct.qrtr_server, ptr %89, i32 0, i32 1
  %102 = ptrtoint ptr %instance.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %instance.i.i.i, align 4
  %node.i.i.i = getelementptr inbounds %struct.qrtr_server, ptr %89, i32 0, i32 2
  %104 = ptrtoint ptr %node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %node.i.i.i, align 4
  %port.i.i.i = getelementptr inbounds %struct.qrtr_server, ptr %89, i32 0, i32 3
  %106 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port.i.i.i, align 4
  call fastcc void @trace_qrtr_ns_service_announce_new(i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107) #11
  %108 = ptrtoint ptr %iv.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %pkt.i.i.i, ptr %iv.i.i.i, align 4
  %109 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 20, ptr %57, align 4
  %110 = ptrtoint ptr %pkt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 67108864, ptr %pkt.i.i.i, align 4
  %111 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %89, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112) #11
  %114 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %52, align 4
  %115 = ptrtoint ptr %instance.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %instance.i.i.i, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %116) #11
  %118 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %53, align 4
  %119 = ptrtoint ptr %node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %node.i.i.i, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120) #11
  %122 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %54, align 4
  %123 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %port.i.i.i, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124) #11
  %126 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %55, align 4
  %127 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %sq, ptr %msg.i.i.i, align 8
  %128 = ptrtoint ptr %msg_namelen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 12, ptr %msg_namelen.i.i.i, align 4
  %129 = load ptr, ptr @qrtr_ns, align 4
  %call.i58.i.i = call i32 @kernel_sendmsg(ptr noundef %129, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %iv.i.i.i, i32 noundef 1, i32 noundef 20) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i.i)
  %cmp.i4.i = icmp slt i32 %call.i58.i.i, 0
  br i1 %cmp.i4.i, label %do.end.i5.i, label %if.end18.i.i

do.end.i5.i:                                      ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #16
  br label %announce_servers.exit.i

if.end18.i.i:                                     ; preds = %rcu_read_unlock.exit.i.i
  %130 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i31.i.i = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i.i.i31.i.i to ptr
  %preempt_count.i.i.i.i32.i.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %preempt_count.i.i.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %preempt_count.i.i.i.i32.i.i, align 4
  %add.i.i.i33.i.i = add i32 %133, 1
  store volatile i32 %add.i.i.i33.i.i, ptr %preempt_count.i.i.i.i32.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i34.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i34.i.i, label %if.end18.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i37.i.i

if.end18.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i37.i.i:                            ; preds = %if.end18.i.i
  %call1.i35.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35.i.i)
  %tobool.not.i36.i.i = icmp eq i32 %call1.i35.i.i, 0
  br i1 %tobool.not.i36.i.i, label %land.lhs.true.i37.i.i.for.inc.i.i_crit_edge, label %land.lhs.true2.i39.i.i

land.lhs.true.i37.i.i.for.inc.i.i_crit_edge:      ; preds = %land.lhs.true.i37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true2.i39.i.i:                           ; preds = %land.lhs.true.i37.i.i
  %.b4.i38.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i38.i.i, label %land.lhs.true2.i39.i.i.for.inc.i.i_crit_edge, label %if.then.i40.i.i

land.lhs.true2.i39.i.i.for.inc.i.i_crit_edge:     ; preds = %land.lhs.true2.i39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i40.i.i:                                  ; preds = %land.lhs.true2.i39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i40.i.i, %land.lhs.true2.i39.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i37.i.i.for.inc.i.i_crit_edge, %if.end18.i.i.for.inc.i.i_crit_edge, %if.then11.i.i, %radix_tree_deref_slot.exit.i.i.for.inc.i.i_crit_edge
  %slot.2.i.i = phi ptr [ null, %if.then11.i.i ], [ %slot.1.i.i, %radix_tree_deref_slot.exit.i.i.for.inc.i.i_crit_edge ], [ %call14.i.i, %if.end18.i.i.for.inc.i.i_crit_edge ], [ %call14.i.i, %land.lhs.true.i37.i.i.for.inc.i.i_crit_edge ], [ %call14.i.i, %land.lhs.true2.i39.i.i.for.inc.i.i_crit_edge ], [ %call14.i.i, %if.then.i40.i.i ]
  %134 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %50, align 4
  %136 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %iter.i.i, align 4
  %sub.i.i.i.i = sub i32 %135, %137
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %for.inc.i.i
  %slot.addr.0.i.i.i = phi ptr [ %slot.2.i.i, %for.inc.i.i ], [ %incdec.ptr29.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %count.0.i.i.i = phi i32 [ %sub.i.i.i.i, %for.inc.i.i ], [ %dec.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %count.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge

while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.loopexit

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %incdec.ptr29.i.i.i = getelementptr ptr, ptr %slot.addr.0.i.i.i, i32 1
  %138 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %iter.i.i, align 4
  %add.i.i.i.i = add i32 %139, 1
  store i32 %add.i.i.i.i, ptr %iter.i.i, align 4
  %140 = ptrtoint ptr %incdec.ptr29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %incdec.ptr29.i.i.i, align 4
  %tobool32.not.i.i.i = icmp eq ptr %141, null
  br i1 %tobool32.not.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge, !prof !195

while.body.i.i.i.for.cond.i.i.loopexit_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.loopexit

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i

for.end.i.i:                                      ; preds = %lor.rhs.i.i
  %call.i59.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i59.i.i, label %for.end.i.i.rcu_read_unlock.exit69.i.i_crit_edge, label %land.lhs.true.i62.i.i

for.end.i.i.rcu_read_unlock.exit69.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit69.i.i

land.lhs.true.i62.i.i:                            ; preds = %for.end.i.i
  %call1.i60.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60.i.i)
  %tobool.not.i61.i.i = icmp eq i32 %call1.i60.i.i, 0
  br i1 %tobool.not.i61.i.i, label %land.lhs.true.i62.i.i.rcu_read_unlock.exit69.i.i_crit_edge, label %land.lhs.true2.i64.i.i

land.lhs.true.i62.i.i.rcu_read_unlock.exit69.i.i_crit_edge: ; preds = %land.lhs.true.i62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit69.i.i

land.lhs.true2.i64.i.i:                           ; preds = %land.lhs.true.i62.i.i
  %.b4.i63.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63.i.i, label %land.lhs.true2.i64.i.i.rcu_read_unlock.exit69.i.i_crit_edge, label %if.then.i65.i.i

land.lhs.true2.i64.i.i.rcu_read_unlock.exit69.i.i_crit_edge: ; preds = %land.lhs.true2.i64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit69.i.i

if.then.i65.i.i:                                  ; preds = %land.lhs.true2.i64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.47) #11
  br label %rcu_read_unlock.exit69.i.i

rcu_read_unlock.exit69.i.i:                       ; preds = %if.then.i65.i.i, %land.lhs.true2.i64.i.i.rcu_read_unlock.exit69.i.i_crit_edge, %land.lhs.true.i62.i.i.rcu_read_unlock.exit69.i.i_crit_edge, %for.end.i.i.rcu_read_unlock.exit69.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %142 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i66.i.i = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i.i.i.i66.i.i to ptr
  %preempt_count.i.i.i.i67.i.i = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %preempt_count.i.i.i.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %preempt_count.i.i.i.i67.i.i, align 4
  %sub.i.i.i68.i.i = add i32 %145, -1
  store volatile i32 %sub.i.i.i68.i.i, ptr %preempt_count.i.i.i.i67.i.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %announce_servers.exit.i

announce_servers.exit.i:                          ; preds = %rcu_read_unlock.exit69.i.i, %do.end.i5.i, %if.end.i.i.i.announce_servers.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i58.i.i, %do.end.i5.i ], [ 0, %rcu_read_unlock.exit69.i.i ], [ 0, %if.end.i.i.i.announce_servers.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i) #11
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i) #11
  %146 = call ptr @memset(ptr %iter.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i) #11
  %147 = call ptr @memset(ptr %pkt.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sq.i) #11
  %148 = call ptr @memset(ptr %sq.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %149 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  %150 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %pkt.i, ptr %iv.i, align 4
  %151 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 20, ptr %45, align 4
  %152 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sq_node, align 4
  %call.i125.i = call ptr @radix_tree_lookup(ptr noundef nonnull @nodes, i32 noundef %153) #11
  %tobool.not.i126.i = icmp eq ptr %call.i125.i, null
  br i1 %tobool.not.i126.i, label %if.end.i.i82, label %sw.bb16.if.end.i85_crit_edge

sw.bb16.if.end.i85_crit_edge:                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i85

if.end.i.i82:                                     ; preds = %sw.bb16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %154 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %154, i32 noundef 3520, i32 noundef 56) #17
  %tobool2.not.i.i81 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i.i81, label %if.end.i.i82.ctrl_cmd_bye.exit_crit_edge, label %if.end4.i.i

if.end.i.i82.ctrl_cmd_bye.exit_crit_edge:         ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctrl_cmd_bye.exit

if.end4.i.i:                                      ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %153, ptr %call7.i.i.i.i, align 8
  %call5.i.i = call i32 @radix_tree_insert(ptr noundef nonnull @nodes, i32 noundef %153, ptr noundef nonnull %call7.i.i.i.i) #11
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.end4.i.i, %sw.bb16.if.end.i85_crit_edge
  %retval.0.i.ph.i = phi ptr [ %call.i125.i, %sw.bb16.if.end.i85_crit_edge ], [ %call7.i.i.i.i, %if.end4.i.i ]
  %156 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i83 = add i32 %159, 1
  store volatile i32 %add.i.i.i.i83, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i84 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i84, label %if.end.i85.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i85.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i85
  %call1.i.i86 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i86)
  %tobool.not.i.i = icmp eq i32 %call1.i.i86, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i85.rcu_read_lock.exit.i_crit_edge
  %160 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %iter.i, align 4
  %161 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %42, align 4
  %servers.i = getelementptr inbounds %struct.qrtr_node, ptr %retval.0.i.ph.i, i32 0, i32 1
  br label %for.cond.i

for.cond.i.loopexit:                              ; preds = %while.body.i.i.for.cond.i.loopexit_crit_edge, %while.cond.i.i.for.cond.i.loopexit_crit_edge
  %slot.0.i.ph = phi ptr [ null, %while.cond.i.i.for.cond.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i, %while.body.i.i.for.cond.i.loopexit_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.loopexit, %rcu_read_lock.exit.i
  %slot.0.i = phi ptr [ null, %rcu_read_lock.exit.i ], [ %slot.0.i.ph, %for.cond.i.loopexit ]
  %tobool2.not.i = icmp eq ptr %slot.0.i, null
  br i1 %tobool2.not.i, label %lor.rhs.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

lor.rhs.i:                                        ; preds = %for.cond.i
  %call3.i = call ptr @radix_tree_next_chunk(ptr noundef %servers.i, ptr noundef nonnull %iter.i, i32 noundef 0) #11
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %for.end.i, label %lor.rhs.i.for.body.i_crit_edge

lor.rhs.i.for.body.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %lor.rhs.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  %slot.1.i = phi ptr [ %slot.0.i, %for.cond.i.for.body.i_crit_edge ], [ %call3.i, %lor.rhs.i.for.body.i_crit_edge ]
  %162 = ptrtoint ptr %slot.1.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile ptr, ptr %slot.1.i, align 4
  %call.i127.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.i)
  %tobool.not.i128.i = icmp eq i32 %call.i127.i, 0
  br i1 %tobool.not.i128.i, label %land.lhs.true.i129.i, label %for.body.i.radix_tree_deref_slot.exit.i_crit_edge

for.body.i.radix_tree_deref_slot.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i

land.lhs.true.i129.i:                             ; preds = %for.body.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i129.i.radix_tree_deref_slot.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i129.i.radix_tree_deref_slot.exit.i_crit_edge: ; preds = %land.lhs.true.i129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i129.i
  %.b9.i.i = load i1, ptr @radix_tree_deref_slot.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.radix_tree_deref_slot.exit.i_crit_edge, label %if.then.i130.i

land.lhs.true4.i.i.radix_tree_deref_slot.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i

if.then.i130.i:                                   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @radix_tree_deref_slot.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 179, ptr noundef nonnull @.str.39) #11
  br label %radix_tree_deref_slot.exit.i

radix_tree_deref_slot.exit.i:                     ; preds = %if.then.i130.i, %land.lhs.true4.i.i.radix_tree_deref_slot.exit.i_crit_edge, %land.lhs.true.i129.i.radix_tree_deref_slot.exit.i_crit_edge, %for.body.i.radix_tree_deref_slot.exit.i_crit_edge
  %tobool6.not.i = icmp eq ptr %163, null
  br i1 %tobool6.not.i, label %radix_tree_deref_slot.exit.i.for.inc.i_crit_edge, label %if.end8.i

radix_tree_deref_slot.exit.i.for.inc.i_crit_edge: ; preds = %radix_tree_deref_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end8.i:                                        ; preds = %radix_tree_deref_slot.exit.i
  %164 = ptrtoint ptr %163 to i32
  %and.i.i.i = and i32 %164, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 2
  br i1 %cmp.i.i.not.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %165 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %iter.i, align 4
  %167 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %42, align 4
  %168 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %43, align 4
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end8.i
  %call14.i = call ptr @radix_tree_iter_resume(ptr noundef nonnull %slot.1.i, ptr noundef nonnull %iter.i) #11
  %call.i132.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i132.i, label %if.end13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i135.i

if.end13.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i135.i:                             ; preds = %if.end13.i
  %call1.i133.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i133.i)
  %tobool.not.i134.i = icmp eq i32 %call1.i133.i, 0
  br i1 %tobool.not.i134.i, label %land.lhs.true.i135.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i137.i

land.lhs.true.i135.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i137.i:                            ; preds = %land.lhs.true.i135.i
  %.b4.i136.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i136.i, label %land.lhs.true2.i137.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i138.i

land.lhs.true2.i137.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i137.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i138.i:                                   ; preds = %land.lhs.true2.i137.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.47) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i138.i, %land.lhs.true2.i137.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i135.i.rcu_read_unlock.exit.i_crit_edge, %if.end13.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %169 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i139.i = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i.i.i.i139.i to ptr
  %preempt_count.i.i.i.i140.i = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %preempt_count.i.i.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %preempt_count.i.i.i.i140.i, align 4
  %sub.i.i.i.i87 = add i32 %172, -1
  store volatile i32 %sub.i.i.i.i87, ptr %preempt_count.i.i.i.i140.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %port.i = getelementptr inbounds %struct.qrtr_server, ptr %163, i32 0, i32 3
  %173 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %port.i, align 4
  %call15.i = call fastcc i32 @server_del(ptr noundef nonnull %retval.0.i.ph.i, i32 noundef %174) #11
  %175 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i79.i = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i.i79.i to ptr
  %preempt_count.i.i.i.i80.i = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %preempt_count.i.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %preempt_count.i.i.i.i80.i, align 4
  %add.i.i.i81.i = add i32 %178, 1
  store volatile i32 %add.i.i.i81.i, ptr %preempt_count.i.i.i.i80.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i82.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i82.i, label %rcu_read_unlock.exit.i.for.inc.i_crit_edge, label %land.lhs.true.i85.i

rcu_read_unlock.exit.i.for.inc.i_crit_edge:       ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i85.i:                              ; preds = %rcu_read_unlock.exit.i
  %call1.i83.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83.i)
  %tobool.not.i84.i = icmp eq i32 %call1.i83.i, 0
  br i1 %tobool.not.i84.i, label %land.lhs.true.i85.i.for.inc.i_crit_edge, label %land.lhs.true2.i87.i

land.lhs.true.i85.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true.i85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true2.i87.i:                             ; preds = %land.lhs.true.i85.i
  %.b4.i86.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i86.i, label %land.lhs.true2.i87.i.for.inc.i_crit_edge, label %if.then.i88.i

land.lhs.true2.i87.i.for.inc.i_crit_edge:         ; preds = %land.lhs.true2.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i88.i:                                    ; preds = %land.lhs.true2.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i88.i, %land.lhs.true2.i87.i.for.inc.i_crit_edge, %land.lhs.true.i85.i.for.inc.i_crit_edge, %rcu_read_unlock.exit.i.for.inc.i_crit_edge, %if.then11.i, %radix_tree_deref_slot.exit.i.for.inc.i_crit_edge
  %slot.2.i = phi ptr [ null, %if.then11.i ], [ %slot.1.i, %radix_tree_deref_slot.exit.i.for.inc.i_crit_edge ], [ %call14.i, %rcu_read_unlock.exit.i.for.inc.i_crit_edge ], [ %call14.i, %land.lhs.true.i85.i.for.inc.i_crit_edge ], [ %call14.i, %land.lhs.true2.i87.i.for.inc.i_crit_edge ], [ %call14.i, %if.then.i88.i ]
  %179 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %42, align 4
  %181 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %iter.i, align 4
  %sub.i.i.i = sub i32 %180, %182
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %for.inc.i
  %slot.addr.0.i.i = phi ptr [ %slot.2.i, %for.inc.i ], [ %incdec.ptr29.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %count.0.i.i = phi i32 [ %sub.i.i.i, %for.inc.i ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %dec.i.i = add i32 %count.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i88 = icmp sgt i32 %dec.i.i, 0
  br i1 %cmp.i.i88, label %while.body.i.i, label %while.cond.i.i.for.cond.i.loopexit_crit_edge

while.cond.i.i.for.cond.i.loopexit_crit_edge:     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.loopexit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %incdec.ptr29.i.i = getelementptr ptr, ptr %slot.addr.0.i.i, i32 1
  %183 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %iter.i, align 4
  %add.i.i.i = add i32 %184, 1
  store i32 %add.i.i.i, ptr %iter.i, align 4
  %185 = ptrtoint ptr %incdec.ptr29.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %incdec.ptr29.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %186, null
  br i1 %tobool32.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.for.cond.i.loopexit_crit_edge, !prof !195

while.body.i.i.for.cond.i.loopexit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.loopexit

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

for.end.i:                                        ; preds = %lor.rhs.i
  %call.i141.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i141.i, label %for.end.i.rcu_read_unlock.exit151.i_crit_edge, label %land.lhs.true.i144.i

for.end.i.rcu_read_unlock.exit151.i_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit151.i

land.lhs.true.i144.i:                             ; preds = %for.end.i
  %call1.i142.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i142.i)
  %tobool.not.i143.i = icmp eq i32 %call1.i142.i, 0
  br i1 %tobool.not.i143.i, label %land.lhs.true.i144.i.rcu_read_unlock.exit151.i_crit_edge, label %land.lhs.true2.i146.i

land.lhs.true.i144.i.rcu_read_unlock.exit151.i_crit_edge: ; preds = %land.lhs.true.i144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit151.i

land.lhs.true2.i146.i:                            ; preds = %land.lhs.true.i144.i
  %.b4.i145.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i145.i, label %land.lhs.true2.i146.i.rcu_read_unlock.exit151.i_crit_edge, label %if.then.i147.i

land.lhs.true2.i146.i.rcu_read_unlock.exit151.i_crit_edge: ; preds = %land.lhs.true2.i146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit151.i

if.then.i147.i:                                   ; preds = %land.lhs.true2.i146.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.47) #11
  br label %rcu_read_unlock.exit151.i

rcu_read_unlock.exit151.i:                        ; preds = %if.then.i147.i, %land.lhs.true2.i146.i.rcu_read_unlock.exit151.i_crit_edge, %land.lhs.true.i144.i.rcu_read_unlock.exit151.i_crit_edge, %for.end.i.rcu_read_unlock.exit151.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %187 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i148.i = and i32 %187, -16384
  %188 = inttoptr i32 %and.i.i.i.i.i148.i to ptr
  %preempt_count.i.i.i.i149.i = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %preempt_count.i.i.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %preempt_count.i.i.i.i149.i, align 4
  %sub.i.i.i150.i = add i32 %190, -1
  store volatile i32 %sub.i.i.i150.i, ptr %preempt_count.i.i.i.i149.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %191 = load i32, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 5), align 4
  %call.i152.i = call ptr @radix_tree_lookup(ptr noundef nonnull @nodes, i32 noundef %191) #11
  %tobool.not.i153.i = icmp eq ptr %call.i152.i, null
  br i1 %tobool.not.i153.i, label %if.end.i156.i, label %rcu_read_unlock.exit151.i.if.end20.i_crit_edge

rcu_read_unlock.exit151.i.if.end20.i_crit_edge:   ; preds = %rcu_read_unlock.exit151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end.i156.i:                                    ; preds = %rcu_read_unlock.exit151.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %192 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i154.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %192, i32 noundef 3520, i32 noundef 56) #17
  %tobool2.not.i155.i = icmp eq ptr %call7.i.i.i154.i, null
  br i1 %tobool2.not.i155.i, label %if.end.i156.i.ctrl_cmd_bye.exit_crit_edge, label %if.end4.i158.i

if.end.i156.i.ctrl_cmd_bye.exit_crit_edge:        ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctrl_cmd_bye.exit

if.end4.i158.i:                                   ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #13
  %193 = ptrtoint ptr %call7.i.i.i154.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %191, ptr %call7.i.i.i154.i, align 8
  %call5.i157.i = call i32 @radix_tree_insert(ptr noundef nonnull @nodes, i32 noundef %191, ptr noundef nonnull %call7.i.i.i154.i) #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end4.i158.i, %rcu_read_unlock.exit151.i.if.end20.i_crit_edge
  %retval.0.i159.ph.i = phi ptr [ %call.i152.i, %rcu_read_unlock.exit151.i.if.end20.i_crit_edge ], [ %call7.i.i.i154.i, %if.end4.i158.i ]
  %194 = call ptr @memset(ptr %46, i32 0, i32 12)
  %195 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 50331648, ptr %pkt.i, align 4
  %196 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %sq_node, align 4
  %198 = call i32 @llvm.bswap.i32(i32 %197) #11
  %199 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %44, align 4
  %200 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i90.i = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i.i.i.i90.i to ptr
  %preempt_count.i.i.i.i91.i = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %preempt_count.i.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %preempt_count.i.i.i.i91.i, align 4
  %add.i.i.i92.i = add i32 %203, 1
  store volatile i32 %add.i.i.i92.i, ptr %preempt_count.i.i.i.i91.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i93.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i93.i, label %if.end20.i.rcu_read_lock.exit100.i_crit_edge, label %land.lhs.true.i96.i

if.end20.i.rcu_read_lock.exit100.i_crit_edge:     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit100.i

land.lhs.true.i96.i:                              ; preds = %if.end20.i
  %call1.i94.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94.i)
  %tobool.not.i95.i = icmp eq i32 %call1.i94.i, 0
  br i1 %tobool.not.i95.i, label %land.lhs.true.i96.i.rcu_read_lock.exit100.i_crit_edge, label %land.lhs.true2.i98.i

land.lhs.true.i96.i.rcu_read_lock.exit100.i_crit_edge: ; preds = %land.lhs.true.i96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit100.i

land.lhs.true2.i98.i:                             ; preds = %land.lhs.true.i96.i
  %.b4.i97.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i97.i, label %land.lhs.true2.i98.i.rcu_read_lock.exit100.i_crit_edge, label %if.then.i99.i

land.lhs.true2.i98.i.rcu_read_lock.exit100.i_crit_edge: ; preds = %land.lhs.true2.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit100.i

if.then.i99.i:                                    ; preds = %land.lhs.true2.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #11
  br label %rcu_read_lock.exit100.i

rcu_read_lock.exit100.i:                          ; preds = %if.then.i99.i, %land.lhs.true2.i98.i.rcu_read_lock.exit100.i_crit_edge, %land.lhs.true.i96.i.rcu_read_lock.exit100.i_crit_edge, %if.end20.i.rcu_read_lock.exit100.i_crit_edge
  %204 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %iter.i, align 4
  %205 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %42, align 4
  %servers27.i = getelementptr inbounds %struct.qrtr_node, ptr %retval.0.i159.ph.i, i32 0, i32 1
  br label %for.cond24.i

for.cond24.i.loopexit:                            ; preds = %while.body.i123.i.for.cond24.i.loopexit_crit_edge, %while.cond.i119.i.for.cond24.i.loopexit_crit_edge
  %slot.3.i.ph = phi ptr [ null, %while.cond.i119.i.for.cond24.i.loopexit_crit_edge ], [ %incdec.ptr29.i120.i, %while.body.i123.i.for.cond24.i.loopexit_crit_edge ]
  br label %for.cond24.i

for.cond24.i:                                     ; preds = %for.cond24.i.loopexit, %rcu_read_lock.exit100.i
  %slot.3.i = phi ptr [ null, %rcu_read_lock.exit100.i ], [ %slot.3.i.ph, %for.cond24.i.loopexit ]
  %tobool25.not.i = icmp eq ptr %slot.3.i, null
  br i1 %tobool25.not.i, label %lor.rhs26.i, label %for.cond24.i.for.body31.i_crit_edge

for.cond24.i.for.body31.i_crit_edge:              ; preds = %for.cond24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31.i

lor.rhs26.i:                                      ; preds = %for.cond24.i
  %call28.i = call ptr @radix_tree_next_chunk(ptr noundef %servers27.i, ptr noundef nonnull %iter.i, i32 noundef 0) #11
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %for.end51.i, label %lor.rhs26.i.for.body31.i_crit_edge

lor.rhs26.i.for.body31.i_crit_edge:               ; preds = %lor.rhs26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31.i

for.body31.i:                                     ; preds = %lor.rhs26.i.for.body31.i_crit_edge, %for.cond24.i.for.body31.i_crit_edge
  %slot.4.i = phi ptr [ %slot.3.i, %for.cond24.i.for.body31.i_crit_edge ], [ %call28.i, %lor.rhs26.i.for.body31.i_crit_edge ]
  %206 = ptrtoint ptr %slot.4.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile ptr, ptr %slot.4.i, align 4
  %call.i161.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161.i)
  %tobool.not.i162.i = icmp eq i32 %call.i161.i, 0
  br i1 %tobool.not.i162.i, label %land.lhs.true.i165.i, label %for.body31.i.radix_tree_deref_slot.exit169.i_crit_edge

for.body31.i.radix_tree_deref_slot.exit169.i_crit_edge: ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit169.i

land.lhs.true.i165.i:                             ; preds = %for.body31.i
  %call2.i163.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i163.i)
  %tobool3.not.i164.i = icmp eq i32 %call2.i163.i, 0
  br i1 %tobool3.not.i164.i, label %land.lhs.true.i165.i.radix_tree_deref_slot.exit169.i_crit_edge, label %land.lhs.true4.i167.i

land.lhs.true.i165.i.radix_tree_deref_slot.exit169.i_crit_edge: ; preds = %land.lhs.true.i165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit169.i

land.lhs.true4.i167.i:                            ; preds = %land.lhs.true.i165.i
  %.b9.i166.i = load i1, ptr @radix_tree_deref_slot.__warned, align 1
  br i1 %.b9.i166.i, label %land.lhs.true4.i167.i.radix_tree_deref_slot.exit169.i_crit_edge, label %if.then.i168.i

land.lhs.true4.i167.i.radix_tree_deref_slot.exit169.i_crit_edge: ; preds = %land.lhs.true4.i167.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit169.i

if.then.i168.i:                                   ; preds = %land.lhs.true4.i167.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @radix_tree_deref_slot.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 179, ptr noundef nonnull @.str.39) #11
  br label %radix_tree_deref_slot.exit169.i

radix_tree_deref_slot.exit169.i:                  ; preds = %if.then.i168.i, %land.lhs.true4.i167.i.radix_tree_deref_slot.exit169.i_crit_edge, %land.lhs.true.i165.i.radix_tree_deref_slot.exit169.i_crit_edge, %for.body31.i.radix_tree_deref_slot.exit169.i_crit_edge
  %tobool33.not.i = icmp eq ptr %207, null
  br i1 %tobool33.not.i, label %radix_tree_deref_slot.exit169.i.for.inc49.i_crit_edge, label %if.end35.i

radix_tree_deref_slot.exit169.i.for.inc49.i_crit_edge: ; preds = %radix_tree_deref_slot.exit169.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc49.i

if.end35.i:                                       ; preds = %radix_tree_deref_slot.exit169.i
  %208 = ptrtoint ptr %207 to i32
  %and.i.i170.i = and i32 %208, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i170.i)
  %cmp.i.i171.not.i = icmp eq i32 %and.i.i170.i, 2
  br i1 %cmp.i.i171.not.i, label %if.then38.i, label %if.end40.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %209 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %iter.i, align 4
  %211 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %42, align 4
  %212 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %43, align 4
  br label %for.inc49.i

if.end40.i:                                       ; preds = %if.end35.i
  %call41.i = call ptr @radix_tree_iter_resume(ptr noundef nonnull %slot.4.i, ptr noundef nonnull %iter.i) #11
  %call.i175.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i175.i, label %if.end40.i.rcu_read_unlock.exit185.i_crit_edge, label %land.lhs.true.i178.i

if.end40.i.rcu_read_unlock.exit185.i_crit_edge:   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit185.i

land.lhs.true.i178.i:                             ; preds = %if.end40.i
  %call1.i176.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i176.i)
  %tobool.not.i177.i = icmp eq i32 %call1.i176.i, 0
  br i1 %tobool.not.i177.i, label %land.lhs.true.i178.i.rcu_read_unlock.exit185.i_crit_edge, label %land.lhs.true2.i180.i

land.lhs.true.i178.i.rcu_read_unlock.exit185.i_crit_edge: ; preds = %land.lhs.true.i178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit185.i

land.lhs.true2.i180.i:                            ; preds = %land.lhs.true.i178.i
  %.b4.i179.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i179.i, label %land.lhs.true2.i180.i.rcu_read_unlock.exit185.i_crit_edge, label %if.then.i181.i

land.lhs.true2.i180.i.rcu_read_unlock.exit185.i_crit_edge: ; preds = %land.lhs.true2.i180.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit185.i

if.then.i181.i:                                   ; preds = %land.lhs.true2.i180.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.47) #11
  br label %rcu_read_unlock.exit185.i

rcu_read_unlock.exit185.i:                        ; preds = %if.then.i181.i, %land.lhs.true2.i180.i.rcu_read_unlock.exit185.i_crit_edge, %land.lhs.true.i178.i.rcu_read_unlock.exit185.i_crit_edge, %if.end40.i.rcu_read_unlock.exit185.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %213 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i182.i = and i32 %213, -16384
  %214 = inttoptr i32 %and.i.i.i.i.i182.i to ptr
  %preempt_count.i.i.i.i183.i = getelementptr inbounds %struct.thread_info, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %preempt_count.i.i.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %preempt_count.i.i.i.i183.i, align 4
  %sub.i.i.i184.i = add i32 %216, -1
  store volatile i32 %sub.i.i.i184.i, ptr %preempt_count.i.i.i.i183.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %217 = ptrtoint ptr %sq.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 42, ptr %sq.i, align 4
  %node42.i = getelementptr inbounds %struct.qrtr_server, ptr %207, i32 0, i32 2
  %218 = ptrtoint ptr %node42.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %node42.i, align 4
  %220 = ptrtoint ptr %sq_node43.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %sq_node43.i, align 4
  %port44.i = getelementptr inbounds %struct.qrtr_server, ptr %207, i32 0, i32 3
  %221 = ptrtoint ptr %port44.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %port44.i, align 4
  %223 = ptrtoint ptr %sq_port.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %sq_port.i, align 4
  %224 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %sq.i, ptr %msg.i, align 8
  %225 = ptrtoint ptr %msg_namelen.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 12, ptr %msg_namelen.i, align 4
  %226 = load ptr, ptr @qrtr_ns, align 4
  %call45.i = call i32 @kernel_sendmsg(ptr noundef %226, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp.i = icmp slt i32 %call45.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end48.i

do.end.i:                                         ; preds = %rcu_read_unlock.exit185.i
  call void @__sanitizer_cov_trace_pc() #13
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #16
  br label %ctrl_cmd_bye.exit

if.end48.i:                                       ; preds = %rcu_read_unlock.exit185.i
  %227 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i102.i = and i32 %227, -16384
  %228 = inttoptr i32 %and.i.i.i.i.i102.i to ptr
  %preempt_count.i.i.i.i103.i = getelementptr inbounds %struct.thread_info, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %preempt_count.i.i.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile i32, ptr %preempt_count.i.i.i.i103.i, align 4
  %add.i.i.i104.i = add i32 %230, 1
  store volatile i32 %add.i.i.i104.i, ptr %preempt_count.i.i.i.i103.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i105.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i105.i, label %if.end48.i.for.inc49.i_crit_edge, label %land.lhs.true.i108.i

if.end48.i.for.inc49.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc49.i

land.lhs.true.i108.i:                             ; preds = %if.end48.i
  %call1.i106.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106.i)
  %tobool.not.i107.i = icmp eq i32 %call1.i106.i, 0
  br i1 %tobool.not.i107.i, label %land.lhs.true.i108.i.for.inc49.i_crit_edge, label %land.lhs.true2.i110.i

land.lhs.true.i108.i.for.inc49.i_crit_edge:       ; preds = %land.lhs.true.i108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc49.i

land.lhs.true2.i110.i:                            ; preds = %land.lhs.true.i108.i
  %.b4.i109.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i109.i, label %land.lhs.true2.i110.i.for.inc49.i_crit_edge, label %if.then.i111.i

land.lhs.true2.i110.i.for.inc49.i_crit_edge:      ; preds = %land.lhs.true2.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc49.i

if.then.i111.i:                                   ; preds = %land.lhs.true2.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #11
  br label %for.inc49.i

for.inc49.i:                                      ; preds = %if.then.i111.i, %land.lhs.true2.i110.i.for.inc49.i_crit_edge, %land.lhs.true.i108.i.for.inc49.i_crit_edge, %if.end48.i.for.inc49.i_crit_edge, %if.then38.i, %radix_tree_deref_slot.exit169.i.for.inc49.i_crit_edge
  %slot.5.i = phi ptr [ null, %if.then38.i ], [ %slot.4.i, %radix_tree_deref_slot.exit169.i.for.inc49.i_crit_edge ], [ %call41.i, %if.end48.i.for.inc49.i_crit_edge ], [ %call41.i, %land.lhs.true.i108.i.for.inc49.i_crit_edge ], [ %call41.i, %land.lhs.true2.i110.i.for.inc49.i_crit_edge ], [ %call41.i, %if.then.i111.i ]
  %231 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %42, align 4
  %233 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %iter.i, align 4
  %sub.i.i114.i = sub i32 %232, %234
  br label %while.cond.i119.i

while.cond.i119.i:                                ; preds = %while.body.i123.i.while.cond.i119.i_crit_edge, %for.inc49.i
  %slot.addr.0.i115.i = phi ptr [ %slot.5.i, %for.inc49.i ], [ %incdec.ptr29.i120.i, %while.body.i123.i.while.cond.i119.i_crit_edge ]
  %count.0.i116.i = phi i32 [ %sub.i.i114.i, %for.inc49.i ], [ %dec.i117.i, %while.body.i123.i.while.cond.i119.i_crit_edge ]
  %dec.i117.i = add i32 %count.0.i116.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i117.i)
  %cmp.i118.i = icmp sgt i32 %dec.i117.i, 0
  br i1 %cmp.i118.i, label %while.body.i123.i, label %while.cond.i119.i.for.cond24.i.loopexit_crit_edge

while.cond.i119.i.for.cond24.i.loopexit_crit_edge: ; preds = %while.cond.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond24.i.loopexit

while.body.i123.i:                                ; preds = %while.cond.i119.i
  %incdec.ptr29.i120.i = getelementptr ptr, ptr %slot.addr.0.i115.i, i32 1
  %235 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %iter.i, align 4
  %add.i.i121.i = add i32 %236, 1
  store i32 %add.i.i121.i, ptr %iter.i, align 4
  %237 = ptrtoint ptr %incdec.ptr29.i120.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %incdec.ptr29.i120.i, align 4
  %tobool32.not.i122.i = icmp eq ptr %238, null
  br i1 %tobool32.not.i122.i, label %while.body.i123.i.while.cond.i119.i_crit_edge, label %while.body.i123.i.for.cond24.i.loopexit_crit_edge, !prof !195

while.body.i123.i.for.cond24.i.loopexit_crit_edge: ; preds = %while.body.i123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond24.i.loopexit

while.body.i123.i.while.cond.i119.i_crit_edge:    ; preds = %while.body.i123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i119.i

for.end51.i:                                      ; preds = %lor.rhs26.i
  %call.i186.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i186.i, label %for.end51.i.rcu_read_unlock.exit196.i_crit_edge, label %land.lhs.true.i189.i

for.end51.i.rcu_read_unlock.exit196.i_crit_edge:  ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit196.i

land.lhs.true.i189.i:                             ; preds = %for.end51.i
  %call1.i187.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i187.i)
  %tobool.not.i188.i = icmp eq i32 %call1.i187.i, 0
  br i1 %tobool.not.i188.i, label %land.lhs.true.i189.i.rcu_read_unlock.exit196.i_crit_edge, label %land.lhs.true2.i191.i

land.lhs.true.i189.i.rcu_read_unlock.exit196.i_crit_edge: ; preds = %land.lhs.true.i189.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit196.i

land.lhs.true2.i191.i:                            ; preds = %land.lhs.true.i189.i
  %.b4.i190.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i190.i, label %land.lhs.true2.i191.i.rcu_read_unlock.exit196.i_crit_edge, label %if.then.i192.i

land.lhs.true2.i191.i.rcu_read_unlock.exit196.i_crit_edge: ; preds = %land.lhs.true2.i191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit196.i

if.then.i192.i:                                   ; preds = %land.lhs.true2.i191.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.47) #11
  br label %rcu_read_unlock.exit196.i

rcu_read_unlock.exit196.i:                        ; preds = %if.then.i192.i, %land.lhs.true2.i191.i.rcu_read_unlock.exit196.i_crit_edge, %land.lhs.true.i189.i.rcu_read_unlock.exit196.i_crit_edge, %for.end51.i.rcu_read_unlock.exit196.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %239 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i193.i = and i32 %239, -16384
  %240 = inttoptr i32 %and.i.i.i.i.i193.i to ptr
  %preempt_count.i.i.i.i194.i = getelementptr inbounds %struct.thread_info, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %preempt_count.i.i.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load volatile i32, ptr %preempt_count.i.i.i.i194.i, align 4
  %sub.i.i.i195.i = add i32 %242, -1
  store volatile i32 %sub.i.i.i195.i, ptr %preempt_count.i.i.i.i194.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %ctrl_cmd_bye.exit

ctrl_cmd_bye.exit:                                ; preds = %rcu_read_unlock.exit196.i, %do.end.i, %if.end.i156.i.ctrl_cmd_bye.exit_crit_edge, %if.end.i.i82.ctrl_cmd_bye.exit_crit_edge
  %retval.0.i89 = phi i32 [ %call45.i, %do.end.i ], [ 0, %rcu_read_unlock.exit196.i ], [ 0, %if.end.i.i82.ctrl_cmd_bye.exit_crit_edge ], [ 0, %if.end.i156.i.ctrl_cmd_bye.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sq.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i) #11
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end14
  %243 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %10, align 4
  %245 = call i32 @llvm.bswap.i32(i32 %244)
  %246 = ptrtoint ptr %instance33 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %instance33, align 8
  %248 = call i32 @llvm.bswap.i32(i32 %247)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i90) #11
  %249 = call ptr @memset(ptr %iter.i90, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i91) #11
  %250 = call ptr @memset(ptr %pkt.i91, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i92) #11
  %251 = call ptr @memset(ptr %msg.i92, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sq.i93) #11
  %252 = call ptr @memset(ptr %sq.i93, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i94) #11
  %253 = ptrtoint ptr %iv.i94 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %pkt.i91, ptr %iv.i94, align 4
  %254 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 20, ptr %40, align 4
  %255 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %sq_node, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %245)
  %cmp.not.i = icmp eq i32 %256, %245
  br i1 %cmp.not.i, label %if.end.i96, label %sw.bb18.ctrl_cmd_del_client.exit_crit_edge

sw.bb18.ctrl_cmd_del_client.exit_crit_edge:       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctrl_cmd_del_client.exit

if.end.i96:                                       ; preds = %sw.bb18
  %257 = load i32, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %245)
  %cmp2.i = icmp eq i32 %257, %245
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i96.if.end5.i_crit_edge

if.end.i96.if.end5.i_crit_edge:                   ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i96
  %258 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %sq_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %248)
  %cmp3.not.i = icmp eq i32 %259, %248
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %land.lhs.true.i.ctrl_cmd_del_client.exit_crit_edge

land.lhs.true.i.ctrl_cmd_del_client.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctrl_cmd_del_client.exit

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i96.if.end5.i_crit_edge
  %260 = load ptr, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2), align 4
  %cmp.i105.not149.i = icmp eq ptr %260, getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2)
  br i1 %cmp.i105.not149.i, label %if.end5.i.for.end.i103_crit_edge, label %if.end5.i.for.body.i98_crit_edge

if.end5.i.for.body.i98_crit_edge:                 ; preds = %if.end5.i
  br label %for.body.i98

if.end5.i.for.end.i103_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i103

for.body.i98:                                     ; preds = %for.inc.i101.for.body.i98_crit_edge, %if.end5.i.for.body.i98_crit_edge
  %li.0150.i = phi ptr [ %tmp.0152.i, %for.inc.i101.for.body.i98_crit_edge ], [ %260, %if.end5.i.for.body.i98_crit_edge ]
  %261 = ptrtoint ptr %li.0150.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %tmp.0152.i = load ptr, ptr %li.0150.i, align 4
  %add.ptr.i = getelementptr i8, ptr %li.0150.i, i32 -20
  %sq_node8.i = getelementptr i8, ptr %li.0150.i, i32 -8
  %262 = ptrtoint ptr %sq_node8.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %sq_node8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %245)
  %cmp9.not.i = icmp eq i32 %263, %245
  br i1 %cmp9.not.i, label %if.end11.i, label %for.body.i98.for.inc.i101_crit_edge

for.body.i98.for.inc.i101_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i101

if.end11.i:                                       ; preds = %for.body.i98
  %sq_port13.i = getelementptr i8, ptr %li.0150.i, i32 -4
  %264 = ptrtoint ptr %sq_port13.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %sq_port13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %265, i32 %248)
  %cmp14.not.i = icmp eq i32 %265, %248
  br i1 %cmp14.not.i, label %if.end16.i, label %if.end11.i.for.inc.i101_crit_edge

if.end11.i.for.inc.i101_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i101

if.end16.i:                                       ; preds = %if.end11.i
  %call.i.i.i99 = call zeroext i1 @__list_del_entry_valid(ptr noundef %li.0150.i) #11
  br i1 %call.i.i.i99, label %if.end.i.i.i100, label %if.end16.i.list_del.exit.i_crit_edge

if.end16.i.list_del.exit.i_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i100:                                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %li.0150.i, i32 0, i32 1
  %266 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %prev.i.i.i, align 4
  %268 = ptrtoint ptr %li.0150.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %li.0150.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %267, ptr %prev1.i.i.i.i, align 4
  %271 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %271)
  store volatile ptr %269, ptr %267, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i100, %if.end16.i.list_del.exit.i_crit_edge
  %272 = ptrtoint ptr %li.0150.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr inttoptr (i32 256 to ptr), ptr %li.0150.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %li.0150.i, i32 0, i32 1
  %273 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %add.ptr.i) #11
  br label %for.inc.i101

for.inc.i101:                                     ; preds = %list_del.exit.i, %if.end11.i.for.inc.i101_crit_edge, %for.body.i98.for.inc.i101_crit_edge
  %cmp.i105.not.i = icmp eq ptr %tmp.0152.i, getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2)
  br i1 %cmp.i105.not.i, label %for.inc.i101.for.end.i103_crit_edge, label %for.inc.i101.for.body.i98_crit_edge

for.inc.i101.for.body.i98_crit_edge:              ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i98

for.inc.i101.for.end.i103_crit_edge:              ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i103

for.end.i103:                                     ; preds = %for.inc.i101.for.end.i103_crit_edge, %if.end5.i.for.end.i103_crit_edge
  %call.i106.i = call ptr @radix_tree_lookup(ptr noundef nonnull @nodes, i32 noundef %245) #11
  %tobool.not.i107.i102 = icmp eq ptr %call.i106.i, null
  br i1 %tobool.not.i107.i102, label %if.end.i.i106, label %for.end.i103.if.then21.i_crit_edge

for.end.i103.if.then21.i_crit_edge:               ; preds = %for.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i

if.end.i.i106:                                    ; preds = %for.end.i103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %274 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i104 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %274, i32 noundef 3520, i32 noundef 56) #17
  %tobool2.not.i.i105 = icmp eq ptr %call7.i.i.i.i104, null
  br i1 %tobool2.not.i.i105, label %if.end.i.i106.if.end23.i_crit_edge, label %if.end4.i.i108

if.end.i.i106.if.end23.i_crit_edge:               ; preds = %if.end.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.end4.i.i108:                                   ; preds = %if.end.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  %275 = ptrtoint ptr %call7.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %245, ptr %call7.i.i.i.i104, align 8
  %call5.i.i107 = call i32 @radix_tree_insert(ptr noundef nonnull @nodes, i32 noundef %245, ptr noundef nonnull %call7.i.i.i.i104) #11
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end4.i.i108, %for.end.i103.if.then21.i_crit_edge
  %retval.0.i.ph.i109 = phi ptr [ %call.i106.i, %for.end.i103.if.then21.i_crit_edge ], [ %call7.i.i.i.i104, %if.end4.i.i108 ]
  %call22.i = call fastcc i32 @server_del(ptr noundef nonnull %retval.0.i.ph.i109, i32 noundef %248) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end.i.i106.if.end23.i_crit_edge
  %276 = load i32, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 5), align 4
  %call.i108.i = call ptr @radix_tree_lookup(ptr noundef nonnull @nodes, i32 noundef %276) #11
  %tobool.not.i109.i = icmp eq ptr %call.i108.i, null
  br i1 %tobool.not.i109.i, label %if.end.i112.i, label %if.end23.i.if.end27.i_crit_edge

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.end.i112.i:                                    ; preds = %if.end23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %277 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i110.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %277, i32 noundef 3520, i32 noundef 56) #17
  %tobool2.not.i111.i = icmp eq ptr %call7.i.i.i110.i, null
  br i1 %tobool2.not.i111.i, label %if.end.i112.i.ctrl_cmd_del_client.exit_crit_edge, label %if.end4.i114.i

if.end.i112.i.ctrl_cmd_del_client.exit_crit_edge: ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctrl_cmd_del_client.exit

if.end4.i114.i:                                   ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #13
  %278 = ptrtoint ptr %call7.i.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %276, ptr %call7.i.i.i110.i, align 8
  %call5.i113.i = call i32 @radix_tree_insert(ptr noundef nonnull @nodes, i32 noundef %276, ptr noundef nonnull %call7.i.i.i110.i) #11
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end4.i114.i, %if.end23.i.if.end27.i_crit_edge
  %retval.0.i115.ph.i = phi ptr [ %call.i108.i, %if.end23.i.if.end27.i_crit_edge ], [ %call7.i.i.i110.i, %if.end4.i114.i ]
  %279 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %279, i32 8)
  store i64 0, ptr %41, align 4
  %280 = ptrtoint ptr %pkt.i91 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 100663296, ptr %pkt.i91, align 4
  %281 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %244, ptr %38, align 4
  %282 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %247, ptr %39, align 4
  %283 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i.i110 = and i32 %283, -16384
  %284 = inttoptr i32 %and.i.i.i.i.i.i110 to ptr
  %preempt_count.i.i.i.i.i111 = getelementptr inbounds %struct.thread_info, ptr %284, i32 0, i32 1
  %285 = ptrtoint ptr %preempt_count.i.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load volatile i32, ptr %preempt_count.i.i.i.i.i111, align 4
  %add.i.i.i.i112 = add i32 %286, 1
  store volatile i32 %add.i.i.i.i112, ptr %preempt_count.i.i.i.i.i111, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i113 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i113, label %if.end27.i.rcu_read_lock.exit.i122_crit_edge, label %land.lhs.true.i.i116

if.end27.i.rcu_read_lock.exit.i122_crit_edge:     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i122

land.lhs.true.i.i116:                             ; preds = %if.end27.i
  %call1.i.i114 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i114)
  %tobool.not.i.i115 = icmp eq i32 %call1.i.i114, 0
  br i1 %tobool.not.i.i115, label %land.lhs.true.i.i116.rcu_read_lock.exit.i122_crit_edge, label %land.lhs.true2.i.i118

land.lhs.true.i.i116.rcu_read_lock.exit.i122_crit_edge: ; preds = %land.lhs.true.i.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i122

land.lhs.true2.i.i118:                            ; preds = %land.lhs.true.i.i116
  %.b4.i.i117 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i117, label %land.lhs.true2.i.i118.rcu_read_lock.exit.i122_crit_edge, label %if.then.i.i119

land.lhs.true2.i.i118.rcu_read_lock.exit.i122_crit_edge: ; preds = %land.lhs.true2.i.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i122

if.then.i.i119:                                   ; preds = %land.lhs.true2.i.i118
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #11
  br label %rcu_read_lock.exit.i122

rcu_read_lock.exit.i122:                          ; preds = %if.then.i.i119, %land.lhs.true2.i.i118.rcu_read_lock.exit.i122_crit_edge, %land.lhs.true.i.i116.rcu_read_lock.exit.i122_crit_edge, %if.end27.i.rcu_read_lock.exit.i122_crit_edge
  %287 = ptrtoint ptr %iter.i90 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 0, ptr %iter.i90, align 4
  %288 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 0, ptr %36, align 4
  %servers.i120 = getelementptr inbounds %struct.qrtr_node, ptr %retval.0.i115.ph.i, i32 0, i32 1
  br label %for.cond31.i

for.cond31.i.loopexit:                            ; preds = %while.body.i.i147.for.cond31.i.loopexit_crit_edge, %while.cond.i.i143.for.cond31.i.loopexit_crit_edge
  %slot.0.i123.ph = phi ptr [ null, %while.cond.i.i143.for.cond31.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i144, %while.body.i.i147.for.cond31.i.loopexit_crit_edge ]
  br label %for.cond31.i

for.cond31.i:                                     ; preds = %for.cond31.i.loopexit, %rcu_read_lock.exit.i122
  %slot.0.i123 = phi ptr [ null, %rcu_read_lock.exit.i122 ], [ %slot.0.i123.ph, %for.cond31.i.loopexit ]
  %tobool32.not.i = icmp eq ptr %slot.0.i123, null
  br i1 %tobool32.not.i, label %lor.rhs.i124, label %for.cond31.i.for.body35.i_crit_edge

for.cond31.i.for.body35.i_crit_edge:              ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body35.i

lor.rhs.i124:                                     ; preds = %for.cond31.i
  %call33.i = call ptr @radix_tree_next_chunk(ptr noundef %servers.i120, ptr noundef nonnull %iter.i90, i32 noundef 0) #11
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %for.end58.i, label %lor.rhs.i124.for.body35.i_crit_edge

lor.rhs.i124.for.body35.i_crit_edge:              ; preds = %lor.rhs.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body35.i

for.body35.i:                                     ; preds = %lor.rhs.i124.for.body35.i_crit_edge, %for.cond31.i.for.body35.i_crit_edge
  %slot.1.i125 = phi ptr [ %slot.0.i123, %for.cond31.i.for.body35.i_crit_edge ], [ %call33.i, %lor.rhs.i124.for.body35.i_crit_edge ]
  %289 = ptrtoint ptr %slot.1.i125 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load volatile ptr, ptr %slot.1.i125, align 4
  %call.i117.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i)
  %tobool.not.i118.i = icmp eq i32 %call.i117.i, 0
  br i1 %tobool.not.i118.i, label %land.lhs.true.i119.i, label %for.body35.i.radix_tree_deref_slot.exit.i130_crit_edge

for.body35.i.radix_tree_deref_slot.exit.i130_crit_edge: ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i130

land.lhs.true.i119.i:                             ; preds = %for.body35.i
  %call2.i.i126 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i126)
  %tobool3.not.i.i127 = icmp eq i32 %call2.i.i126, 0
  br i1 %tobool3.not.i.i127, label %land.lhs.true.i119.i.radix_tree_deref_slot.exit.i130_crit_edge, label %land.lhs.true4.i.i129

land.lhs.true.i119.i.radix_tree_deref_slot.exit.i130_crit_edge: ; preds = %land.lhs.true.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i130

land.lhs.true4.i.i129:                            ; preds = %land.lhs.true.i119.i
  %.b9.i.i128 = load i1, ptr @radix_tree_deref_slot.__warned, align 1
  br i1 %.b9.i.i128, label %land.lhs.true4.i.i129.radix_tree_deref_slot.exit.i130_crit_edge, label %if.then.i120.i

land.lhs.true4.i.i129.radix_tree_deref_slot.exit.i130_crit_edge: ; preds = %land.lhs.true4.i.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i130

if.then.i120.i:                                   ; preds = %land.lhs.true4.i.i129
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @radix_tree_deref_slot.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 179, ptr noundef nonnull @.str.39) #11
  br label %radix_tree_deref_slot.exit.i130

radix_tree_deref_slot.exit.i130:                  ; preds = %if.then.i120.i, %land.lhs.true4.i.i129.radix_tree_deref_slot.exit.i130_crit_edge, %land.lhs.true.i119.i.radix_tree_deref_slot.exit.i130_crit_edge, %for.body35.i.radix_tree_deref_slot.exit.i130_crit_edge
  %tobool37.not.i = icmp eq ptr %290, null
  br i1 %tobool37.not.i, label %radix_tree_deref_slot.exit.i130.for.inc56.i_crit_edge, label %if.end39.i

radix_tree_deref_slot.exit.i130.for.inc56.i_crit_edge: ; preds = %radix_tree_deref_slot.exit.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc56.i

if.end39.i:                                       ; preds = %radix_tree_deref_slot.exit.i130
  %291 = ptrtoint ptr %290 to i32
  %and.i.i.i131 = and i32 %291, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i131)
  %cmp.i.i.not.i132 = icmp eq i32 %and.i.i.i131, 2
  br i1 %cmp.i.i.not.i132, label %if.then42.i, label %if.end44.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %292 = ptrtoint ptr %iter.i90 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %iter.i90, align 4
  %294 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %36, align 4
  %295 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 0, ptr %37, align 4
  br label %for.inc56.i

if.end44.i:                                       ; preds = %if.end39.i
  %call45.i133 = call ptr @radix_tree_iter_resume(ptr noundef nonnull %slot.1.i125, ptr noundef nonnull %iter.i90) #11
  %call.i122.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i122.i, label %if.end44.i.rcu_read_unlock.exit.i135_crit_edge, label %land.lhs.true.i125.i

if.end44.i.rcu_read_unlock.exit.i135_crit_edge:   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i135

land.lhs.true.i125.i:                             ; preds = %if.end44.i
  %call1.i123.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123.i)
  %tobool.not.i124.i = icmp eq i32 %call1.i123.i, 0
  br i1 %tobool.not.i124.i, label %land.lhs.true.i125.i.rcu_read_unlock.exit.i135_crit_edge, label %land.lhs.true2.i127.i

land.lhs.true.i125.i.rcu_read_unlock.exit.i135_crit_edge: ; preds = %land.lhs.true.i125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i135

land.lhs.true2.i127.i:                            ; preds = %land.lhs.true.i125.i
  %.b4.i126.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i126.i, label %land.lhs.true2.i127.i.rcu_read_unlock.exit.i135_crit_edge, label %if.then.i128.i

land.lhs.true2.i127.i.rcu_read_unlock.exit.i135_crit_edge: ; preds = %land.lhs.true2.i127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i135

if.then.i128.i:                                   ; preds = %land.lhs.true2.i127.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.47) #11
  br label %rcu_read_unlock.exit.i135

rcu_read_unlock.exit.i135:                        ; preds = %if.then.i128.i, %land.lhs.true2.i127.i.rcu_read_unlock.exit.i135_crit_edge, %land.lhs.true.i125.i.rcu_read_unlock.exit.i135_crit_edge, %if.end44.i.rcu_read_unlock.exit.i135_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %296 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i129.i = and i32 %296, -16384
  %297 = inttoptr i32 %and.i.i.i.i.i129.i to ptr
  %preempt_count.i.i.i.i130.i = getelementptr inbounds %struct.thread_info, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %preempt_count.i.i.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load volatile i32, ptr %preempt_count.i.i.i.i130.i, align 4
  %sub.i.i.i.i134 = add i32 %299, -1
  store volatile i32 %sub.i.i.i.i134, ptr %preempt_count.i.i.i.i130.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %300 = ptrtoint ptr %sq.i93 to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 42, ptr %sq.i93, align 4
  %node46.i = getelementptr inbounds %struct.qrtr_server, ptr %290, i32 0, i32 2
  %301 = ptrtoint ptr %node46.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %node46.i, align 4
  %303 = ptrtoint ptr %sq_node47.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %sq_node47.i, align 4
  %port48.i = getelementptr inbounds %struct.qrtr_server, ptr %290, i32 0, i32 3
  %304 = ptrtoint ptr %port48.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %port48.i, align 4
  %306 = ptrtoint ptr %sq_port49.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %sq_port49.i, align 4
  %307 = ptrtoint ptr %msg.i92 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %sq.i93, ptr %msg.i92, align 8
  %308 = ptrtoint ptr %msg_namelen.i121 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 12, ptr %msg_namelen.i121, align 4
  %309 = load ptr, ptr @qrtr_ns, align 4
  %call50.i = call i32 @kernel_sendmsg(ptr noundef %309, ptr noundef nonnull %msg.i92, ptr noundef nonnull %iv.i94, i32 noundef 1, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %do.end.i136, label %if.end55.i

do.end.i136:                                      ; preds = %rcu_read_unlock.exit.i135
  call void @__sanitizer_cov_trace_pc() #13
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #16
  br label %ctrl_cmd_del_client.exit

if.end55.i:                                       ; preds = %rcu_read_unlock.exit.i135
  %310 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i94.i = and i32 %310, -16384
  %311 = inttoptr i32 %and.i.i.i.i.i94.i to ptr
  %preempt_count.i.i.i.i95.i = getelementptr inbounds %struct.thread_info, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %preempt_count.i.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load volatile i32, ptr %preempt_count.i.i.i.i95.i, align 4
  %add.i.i.i96.i = add i32 %313, 1
  store volatile i32 %add.i.i.i96.i, ptr %preempt_count.i.i.i.i95.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i97.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i97.i, label %if.end55.i.for.inc56.i_crit_edge, label %land.lhs.true.i100.i

if.end55.i.for.inc56.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc56.i

land.lhs.true.i100.i:                             ; preds = %if.end55.i
  %call1.i98.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98.i)
  %tobool.not.i99.i = icmp eq i32 %call1.i98.i, 0
  br i1 %tobool.not.i99.i, label %land.lhs.true.i100.i.for.inc56.i_crit_edge, label %land.lhs.true2.i102.i

land.lhs.true.i100.i.for.inc56.i_crit_edge:       ; preds = %land.lhs.true.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc56.i

land.lhs.true2.i102.i:                            ; preds = %land.lhs.true.i100.i
  %.b4.i101.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i101.i, label %land.lhs.true2.i102.i.for.inc56.i_crit_edge, label %if.then.i103.i

land.lhs.true2.i102.i.for.inc56.i_crit_edge:      ; preds = %land.lhs.true2.i102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc56.i

if.then.i103.i:                                   ; preds = %land.lhs.true2.i102.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #11
  br label %for.inc56.i

for.inc56.i:                                      ; preds = %if.then.i103.i, %land.lhs.true2.i102.i.for.inc56.i_crit_edge, %land.lhs.true.i100.i.for.inc56.i_crit_edge, %if.end55.i.for.inc56.i_crit_edge, %if.then42.i, %radix_tree_deref_slot.exit.i130.for.inc56.i_crit_edge
  %slot.2.i137 = phi ptr [ null, %if.then42.i ], [ %slot.1.i125, %radix_tree_deref_slot.exit.i130.for.inc56.i_crit_edge ], [ %call45.i133, %if.end55.i.for.inc56.i_crit_edge ], [ %call45.i133, %land.lhs.true.i100.i.for.inc56.i_crit_edge ], [ %call45.i133, %land.lhs.true2.i102.i.for.inc56.i_crit_edge ], [ %call45.i133, %if.then.i103.i ]
  %314 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %36, align 4
  %316 = ptrtoint ptr %iter.i90 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %iter.i90, align 4
  %sub.i.i.i138 = sub i32 %315, %317
  br label %while.cond.i.i143

while.cond.i.i143:                                ; preds = %while.body.i.i147.while.cond.i.i143_crit_edge, %for.inc56.i
  %slot.addr.0.i.i139 = phi ptr [ %slot.2.i137, %for.inc56.i ], [ %incdec.ptr29.i.i144, %while.body.i.i147.while.cond.i.i143_crit_edge ]
  %count.0.i.i140 = phi i32 [ %sub.i.i.i138, %for.inc56.i ], [ %dec.i.i141, %while.body.i.i147.while.cond.i.i143_crit_edge ]
  %dec.i.i141 = add i32 %count.0.i.i140, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i141)
  %cmp.i.i142 = icmp sgt i32 %dec.i.i141, 0
  br i1 %cmp.i.i142, label %while.body.i.i147, label %while.cond.i.i143.for.cond31.i.loopexit_crit_edge

while.cond.i.i143.for.cond31.i.loopexit_crit_edge: ; preds = %while.cond.i.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond31.i.loopexit

while.body.i.i147:                                ; preds = %while.cond.i.i143
  %incdec.ptr29.i.i144 = getelementptr ptr, ptr %slot.addr.0.i.i139, i32 1
  %318 = ptrtoint ptr %iter.i90 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %iter.i90, align 4
  %add.i.i.i145 = add i32 %319, 1
  store i32 %add.i.i.i145, ptr %iter.i90, align 4
  %320 = ptrtoint ptr %incdec.ptr29.i.i144 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %incdec.ptr29.i.i144, align 4
  %tobool32.not.i.i146 = icmp eq ptr %321, null
  br i1 %tobool32.not.i.i146, label %while.body.i.i147.while.cond.i.i143_crit_edge, label %while.body.i.i147.for.cond31.i.loopexit_crit_edge, !prof !195

while.body.i.i147.for.cond31.i.loopexit_crit_edge: ; preds = %while.body.i.i147
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond31.i.loopexit

while.body.i.i147.while.cond.i.i143_crit_edge:    ; preds = %while.body.i.i147
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i143

for.end58.i:                                      ; preds = %lor.rhs.i124
  %call.i131.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i131.i, label %for.end58.i.rcu_read_unlock.exit141.i_crit_edge, label %land.lhs.true.i134.i

for.end58.i.rcu_read_unlock.exit141.i_crit_edge:  ; preds = %for.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit141.i

land.lhs.true.i134.i:                             ; preds = %for.end58.i
  %call1.i132.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132.i)
  %tobool.not.i133.i = icmp eq i32 %call1.i132.i, 0
  br i1 %tobool.not.i133.i, label %land.lhs.true.i134.i.rcu_read_unlock.exit141.i_crit_edge, label %land.lhs.true2.i136.i

land.lhs.true.i134.i.rcu_read_unlock.exit141.i_crit_edge: ; preds = %land.lhs.true.i134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit141.i

land.lhs.true2.i136.i:                            ; preds = %land.lhs.true.i134.i
  %.b4.i135.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i135.i, label %land.lhs.true2.i136.i.rcu_read_unlock.exit141.i_crit_edge, label %if.then.i137.i

land.lhs.true2.i136.i.rcu_read_unlock.exit141.i_crit_edge: ; preds = %land.lhs.true2.i136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit141.i

if.then.i137.i:                                   ; preds = %land.lhs.true2.i136.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.47) #11
  br label %rcu_read_unlock.exit141.i

rcu_read_unlock.exit141.i:                        ; preds = %if.then.i137.i, %land.lhs.true2.i136.i.rcu_read_unlock.exit141.i_crit_edge, %land.lhs.true.i134.i.rcu_read_unlock.exit141.i_crit_edge, %for.end58.i.rcu_read_unlock.exit141.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %322 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i138.i = and i32 %322, -16384
  %323 = inttoptr i32 %and.i.i.i.i.i138.i to ptr
  %preempt_count.i.i.i.i139.i = getelementptr inbounds %struct.thread_info, ptr %323, i32 0, i32 1
  %324 = ptrtoint ptr %preempt_count.i.i.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load volatile i32, ptr %preempt_count.i.i.i.i139.i, align 4
  %sub.i.i.i140.i = add i32 %325, -1
  store volatile i32 %sub.i.i.i140.i, ptr %preempt_count.i.i.i.i139.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %ctrl_cmd_del_client.exit

ctrl_cmd_del_client.exit:                         ; preds = %rcu_read_unlock.exit141.i, %do.end.i136, %if.end.i112.i.ctrl_cmd_del_client.exit_crit_edge, %land.lhs.true.i.ctrl_cmd_del_client.exit_crit_edge, %sw.bb18.ctrl_cmd_del_client.exit_crit_edge
  %retval.0.i149 = phi i32 [ %call50.i, %do.end.i136 ], [ 0, %rcu_read_unlock.exit141.i ], [ -22, %sw.bb18.ctrl_cmd_del_client.exit_crit_edge ], [ -22, %land.lhs.true.i.ctrl_cmd_del_client.exit_crit_edge ], [ 0, %if.end.i112.i.ctrl_cmd_del_client.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i94) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sq.i93) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i92) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i91) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i90) #11
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end14
  %326 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %10, align 4
  %328 = call i32 @llvm.bswap.i32(i32 %327)
  %329 = ptrtoint ptr %instance33 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %instance33, align 8
  %331 = call i32 @llvm.bswap.i32(i32 %330)
  %332 = ptrtoint ptr %node27 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %node27, align 4
  %334 = call i32 @llvm.bswap.i32(i32 %333)
  %335 = ptrtoint ptr %port28 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %port28, align 8
  %337 = call i32 @llvm.bswap.i32(i32 %336)
  %338 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %sq_node, align 4
  %340 = load i32, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %339, i32 %340)
  %cmp.i154 = icmp eq i32 %339, %340
  br i1 %cmp.i154, label %if.then.i, label %sw.bb20.if.end.i157_crit_edge

sw.bb20.if.end.i157_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i157

if.then.i:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  %341 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %sq_port, align 4
  br label %if.end.i157

if.end.i157:                                      ; preds = %if.then.i, %sw.bb20.if.end.i157_crit_edge
  %port.addr.0.i = phi i32 [ %342, %if.then.i ], [ %337, %sw.bb20.if.end.i157_crit_edge ]
  %node_id.addr.0.i = phi i32 [ %339, %if.then.i ], [ %334, %sw.bb20.if.end.i157_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool.not.i.i156 = icmp eq i32 %327, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.addr.0.i)
  %tobool1.not.i.i = icmp eq i32 %port.addr.0.i, 0
  %or.cond.i.i = or i1 %tobool.not.i.i156, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %if.end.i157.do.end42_crit_edge, label %if.end.i.i160

if.end.i157.do.end42_crit_edge:                   ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

if.end.i.i160:                                    ; preds = %if.end.i157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %343 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i158 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %343, i32 noundef 3520, i32 noundef 24) #17
  %tobool2.not.i.i159 = icmp eq ptr %call7.i.i.i.i158, null
  br i1 %tobool2.not.i.i159, label %if.end.i.i160.do.end42_crit_edge, label %if.end4.i.i163

if.end.i.i160.do.end42_crit_edge:                 ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

if.end4.i.i163:                                   ; preds = %if.end.i.i160
  %344 = ptrtoint ptr %call7.i.i.i.i158 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %328, ptr %call7.i.i.i.i158, align 8
  %instance6.i.i = getelementptr inbounds %struct.qrtr_server, ptr %call7.i.i.i.i158, i32 0, i32 1
  %345 = ptrtoint ptr %instance6.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %331, ptr %instance6.i.i, align 4
  %node7.i.i = getelementptr inbounds %struct.qrtr_server, ptr %call7.i.i.i.i158, i32 0, i32 2
  %346 = ptrtoint ptr %node7.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %node_id.addr.0.i, ptr %node7.i.i, align 8
  %port8.i.i = getelementptr inbounds %struct.qrtr_server, ptr %call7.i.i.i.i158, i32 0, i32 3
  %347 = ptrtoint ptr %port8.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %port.addr.0.i, ptr %port8.i.i, align 4
  %call.i.i.i161 = call ptr @radix_tree_lookup(ptr noundef nonnull @nodes, i32 noundef %node_id.addr.0.i) #11
  %tobool.not.i.i.i162 = icmp eq ptr %call.i.i.i161, null
  br i1 %tobool.not.i.i.i162, label %if.end.i.i.i166, label %if.end4.i.i163.if.end12.i.i_crit_edge

if.end4.i.i163.if.end12.i.i_crit_edge:            ; preds = %if.end4.i.i163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.end.i.i.i166:                                  ; preds = %if.end4.i.i163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %348 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i164 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %348, i32 noundef 3520, i32 noundef 56) #17
  %tobool2.not.i.i.i165 = icmp eq ptr %call7.i.i.i.i.i164, null
  br i1 %tobool2.not.i.i.i165, label %err.i.i, label %if.end4.i.i.i168

if.end4.i.i.i168:                                 ; preds = %if.end.i.i.i166
  call void @__sanitizer_cov_trace_pc() #13
  %349 = ptrtoint ptr %call7.i.i.i.i.i164 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %node_id.addr.0.i, ptr %call7.i.i.i.i.i164, align 8
  %call5.i.i.i167 = call i32 @radix_tree_insert(ptr noundef nonnull @nodes, i32 noundef %node_id.addr.0.i, ptr noundef nonnull %call7.i.i.i.i.i164) #11
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end4.i.i.i168, %if.end4.i.i163.if.end12.i.i_crit_edge
  %retval.0.i.ph.i.i169 = phi ptr [ %call.i.i.i161, %if.end4.i.i163.if.end12.i.i_crit_edge ], [ %call7.i.i.i.i.i164, %if.end4.i.i.i168 ]
  %servers.i.i170 = getelementptr inbounds %struct.qrtr_node, ptr %retval.0.i.ph.i.i169, i32 0, i32 1
  %call13.i.i = call ptr @radix_tree_lookup(ptr noundef %servers.i.i170, i32 noundef %port.addr.0.i) #11
  %tobool14.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool14.not.i.i, label %if.end12.i.i.if.end3.i_crit_edge, label %if.then15.i.i

if.end12.i.i.if.end3.i_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i.i171 = call ptr @radix_tree_delete(ptr noundef %servers.i.i170, i32 noundef %port.addr.0.i) #11
  call void @kfree(ptr noundef nonnull %call13.i.i) #11
  br label %if.end3.i

err.i.i:                                          ; preds = %if.end.i.i.i166
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i158) #11
  br label %do.end42

if.end3.i:                                        ; preds = %if.then15.i.i, %if.end12.i.i.if.end3.i_crit_edge
  %call20.i.i = call i32 @radix_tree_insert(ptr noundef %servers.i.i170, i32 noundef %port.addr.0.i, ptr noundef nonnull %call7.i.i.i.i158) #11
  %350 = ptrtoint ptr %call7.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %call7.i.i.i.i158, align 8
  %352 = ptrtoint ptr %instance6.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %instance6.i.i, align 4
  %354 = ptrtoint ptr %node7.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %node7.i.i, align 8
  %356 = ptrtoint ptr %port8.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %port8.i.i, align 4
  call fastcc void @trace_qrtr_ns_server_add(i32 noundef %351, i32 noundef %353, i32 noundef %355, i32 noundef %357) #11
  %358 = ptrtoint ptr %node7.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %node7.i.i, align 8
  %360 = load i32, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %359, i32 %360)
  %cmp4.i = icmp eq i32 %359, %360
  br i1 %cmp4.i, label %if.then5.i, label %if.end3.i.if.end11.i175_crit_edge

if.end3.i.if.end11.i175_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i175

if.then5.i:                                       ; preds = %if.end3.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i.i150) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i151) #11
  %361 = call ptr @memset(ptr %28, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i152) #11
  %362 = ptrtoint ptr %call7.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %call7.i.i.i.i158, align 8
  %364 = ptrtoint ptr %instance6.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %instance6.i.i, align 4
  %366 = ptrtoint ptr %port8.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %port8.i.i, align 4
  call fastcc void @trace_qrtr_ns_service_announce_new(i32 noundef %363, i32 noundef %365, i32 noundef %359, i32 noundef %367) #11
  %368 = ptrtoint ptr %iv.i.i152 to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %pkt.i.i150, ptr %iv.i.i152, align 4
  %369 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 20, ptr %29, align 4
  %370 = ptrtoint ptr %pkt.i.i150 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 67108864, ptr %pkt.i.i150, align 4
  %371 = ptrtoint ptr %call7.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %call7.i.i.i.i158, align 8
  %373 = call i32 @llvm.bswap.i32(i32 %372) #11
  %374 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %373, ptr %24, align 4
  %375 = ptrtoint ptr %instance6.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %instance6.i.i, align 4
  %377 = call i32 @llvm.bswap.i32(i32 %376) #11
  %378 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %25, align 4
  %379 = ptrtoint ptr %node7.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %node7.i.i, align 8
  %381 = call i32 @llvm.bswap.i32(i32 %380) #11
  %382 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %381, ptr %26, align 4
  %383 = ptrtoint ptr %port8.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %port8.i.i, align 4
  %385 = call i32 @llvm.bswap.i32(i32 %384) #11
  %386 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %385, ptr %27, align 4
  %387 = ptrtoint ptr %msg.i.i151 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 1), ptr %msg.i.i151, align 8
  %388 = ptrtoint ptr %msg_namelen.i.i172 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 12, ptr %msg_namelen.i.i172, align 4
  %389 = load ptr, ptr @qrtr_ns, align 4
  %call.i.i173 = call i32 @kernel_sendmsg(ptr noundef %389, ptr noundef nonnull %msg.i.i151, ptr noundef nonnull %iv.i.i152, i32 noundef 1, i32 noundef 20) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i152) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i151) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i.i150) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i173)
  %cmp7.i = icmp slt i32 %call.i.i173, 0
  br i1 %cmp7.i, label %do.end.i174, label %if.then5.i.if.end11.i175_crit_edge

if.then5.i.if.end11.i175_crit_edge:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i175

do.end.i174:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #16
  br label %do.end42

if.end11.i175:                                    ; preds = %if.then5.i.if.end11.i175_crit_edge, %if.end3.i.if.end11.i175_crit_edge
  %ret.0.i = phi i32 [ %call.i.i173, %if.then5.i.if.end11.i175_crit_edge ], [ 0, %if.end3.i.if.end11.i175_crit_edge ]
  %li.063.i = load ptr, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2), align 4
  %cmp.i.not64.i = icmp eq ptr %li.063.i, getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2)
  br i1 %cmp.i.not64.i, label %if.end11.i175.if.end47_crit_edge, label %if.end11.i175.for.body.i177_crit_edge

if.end11.i175.for.body.i177_crit_edge:            ; preds = %if.end11.i175
  br label %for.body.i177

if.end11.i175.if.end47_crit_edge:                 ; preds = %if.end11.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

for.body.i177:                                    ; preds = %for.inc.i181.for.body.i177_crit_edge, %if.end11.i175.for.body.i177_crit_edge
  %li.065.i = phi ptr [ %li.0.i, %for.inc.i181.for.body.i177_crit_edge ], [ %li.063.i, %if.end11.i175.for.body.i177_crit_edge ]
  %add.ptr.i176 = getelementptr i8, ptr %li.065.i, i32 -20
  %390 = ptrtoint ptr %add.ptr.i176 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %add.ptr.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool16.not.i = icmp eq i32 %391, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %391, i32 %328)
  %cmp18.not.i = icmp eq i32 %391, %328
  %or.cond.i = or i1 %tobool16.not.i, %cmp18.not.i
  br i1 %or.cond.i, label %if.end20.i178, label %for.body.i177.for.inc.i181_crit_edge

for.body.i177.for.inc.i181_crit_edge:             ; preds = %for.body.i177
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i181

if.end20.i178:                                    ; preds = %for.body.i177
  %instance21.i = getelementptr i8, ptr %li.065.i, i32 -16
  %392 = ptrtoint ptr %instance21.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %instance21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %tobool22.not.i = icmp eq i32 %393, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %393, i32 %331)
  %cmp25.not.i = icmp eq i32 %393, %331
  %or.cond48.i = or i1 %tobool22.not.i, %cmp25.not.i
  br i1 %or.cond48.i, label %if.end.i59.i, label %if.end20.i178.for.inc.i181_crit_edge

if.end20.i178.for.inc.i181_crit_edge:             ; preds = %if.end20.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i181

if.end.i59.i:                                     ; preds = %if.end20.i178
  %sq.i179 = getelementptr i8, ptr %li.065.i, i32 -12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i49.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i50.i) #11
  %394 = call ptr @memset(ptr %30, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i51.i) #11
  %395 = ptrtoint ptr %iv.i51.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %pkt.i49.i, ptr %iv.i51.i, align 4
  %396 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 20, ptr %31, align 4
  %397 = ptrtoint ptr %pkt.i49.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 67108864, ptr %pkt.i49.i, align 4
  %398 = ptrtoint ptr %call7.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %call7.i.i.i.i158, align 8
  %400 = call i32 @llvm.bswap.i32(i32 %399) #11
  %401 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %400, ptr %32, align 4
  %402 = ptrtoint ptr %instance6.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %instance6.i.i, align 4
  %404 = call i32 @llvm.bswap.i32(i32 %403) #11
  %405 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %404, ptr %35, align 4
  %406 = ptrtoint ptr %node7.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %node7.i.i, align 8
  %408 = call i32 @llvm.bswap.i32(i32 %407) #11
  %409 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %408, ptr %34, align 4
  %410 = ptrtoint ptr %port8.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %port8.i.i, align 4
  %412 = call i32 @llvm.bswap.i32(i32 %411) #11
  %413 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %412, ptr %33, align 4
  %414 = ptrtoint ptr %msg.i50.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr %sq.i179, ptr %msg.i50.i, align 8
  %415 = ptrtoint ptr %msg_namelen.i56.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 12, ptr %msg_namelen.i56.i, align 4
  %416 = load ptr, ptr @qrtr_ns, align 4
  %call.i57.i = call i32 @kernel_sendmsg(ptr noundef %416, ptr noundef nonnull %msg.i50.i, ptr noundef nonnull %iv.i51.i, i32 noundef 1, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %cmp.i58.i = icmp slt i32 %call.i57.i, 0
  br i1 %cmp.i58.i, label %do.end.i.i, label %if.end.i59.i.lookup_notify.exit.i_crit_edge

if.end.i59.i.lookup_notify.exit.i_crit_edge:      ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_notify.exit.i

do.end.i.i:                                       ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i.i180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #16
  br label %lookup_notify.exit.i

lookup_notify.exit.i:                             ; preds = %do.end.i.i, %if.end.i59.i.lookup_notify.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i51.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i50.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i49.i) #11
  br label %for.inc.i181

for.inc.i181:                                     ; preds = %lookup_notify.exit.i, %if.end20.i178.for.inc.i181_crit_edge, %for.body.i177.for.inc.i181_crit_edge
  %417 = ptrtoint ptr %li.065.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %li.0.i = load ptr, ptr %li.065.i, align 4
  %cmp.i.not.i = icmp eq ptr %li.0.i, getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2)
  br i1 %cmp.i.not.i, label %for.inc.i181.sw.epilog_crit_edge, label %for.inc.i181.for.body.i177_crit_edge

for.inc.i181.for.body.i177_crit_edge:             ; preds = %for.inc.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i177

for.inc.i181.sw.epilog_crit_edge:                 ; preds = %for.inc.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end14
  %418 = ptrtoint ptr %node27 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %node27, align 4
  %420 = call i32 @llvm.bswap.i32(i32 %419)
  %421 = ptrtoint ptr %port28 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %port28, align 8
  %423 = call i32 @llvm.bswap.i32(i32 %422)
  %424 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %sq_node, align 4
  %426 = load i32, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %425, i32 %426)
  %cmp.i184 = icmp eq i32 %425, %426
  br i1 %cmp.i184, label %land.lhs.true.i186, label %sw.bb24.if.end7.i_crit_edge

sw.bb24.if.end7.i_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

land.lhs.true.i186:                               ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  %427 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %sq_port, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i186, %sw.bb24.if.end7.i_crit_edge
  %port.addr.06.i = phi i32 [ %428, %land.lhs.true.i186 ], [ %423, %sw.bb24.if.end7.i_crit_edge ]
  %node_id.addr.03.i = phi i32 [ %425, %land.lhs.true.i186 ], [ %420, %sw.bb24.if.end7.i_crit_edge ]
  %call.i.i187 = call ptr @radix_tree_lookup(ptr noundef nonnull @nodes, i32 noundef %node_id.addr.03.i) #11
  %tobool.not.i.i188 = icmp eq ptr %call.i.i187, null
  br i1 %tobool.not.i.i188, label %if.end.i.i191, label %if.end7.i.if.end9.i_crit_edge

if.end7.i.if.end9.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.end.i.i191:                                    ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %429 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i189 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %429, i32 noundef 3520, i32 noundef 56) #17
  %tobool2.not.i.i190 = icmp eq ptr %call7.i.i.i.i189, null
  br i1 %tobool2.not.i.i190, label %if.end.i.i191.do.end42_crit_edge, label %if.end4.i.i193

if.end.i.i191.do.end42_crit_edge:                 ; preds = %if.end.i.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

if.end4.i.i193:                                   ; preds = %if.end.i.i191
  call void @__sanitizer_cov_trace_pc() #13
  %430 = ptrtoint ptr %call7.i.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %node_id.addr.03.i, ptr %call7.i.i.i.i189, align 8
  %call5.i.i192 = call i32 @radix_tree_insert(ptr noundef nonnull @nodes, i32 noundef %node_id.addr.03.i, ptr noundef nonnull %call7.i.i.i.i189) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end4.i.i193, %if.end7.i.if.end9.i_crit_edge
  %retval.0.i.ph.i194 = phi ptr [ %call.i.i187, %if.end7.i.if.end9.i_crit_edge ], [ %call7.i.i.i.i189, %if.end4.i.i193 ]
  %call10.i = call fastcc i32 @server_del(ptr noundef nonnull %retval.0.i.ph.i194, i32 noundef %port.addr.06.i) #11
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end14
  %431 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %10, align 4
  %433 = call i32 @llvm.bswap.i32(i32 %432)
  %434 = ptrtoint ptr %instance33 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %instance33, align 8
  %436 = call i32 @llvm.bswap.i32(i32 %435)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_iter.i) #11
  %437 = call ptr @memset(ptr %node_iter.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %srv_iter.i) #11
  %438 = call ptr @memset(ptr %srv_iter.i, i32 255, i32 16)
  %439 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %sq_node, align 4
  %441 = load i32, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %440, i32 %441)
  %cmp.not.i200 = icmp eq i32 %440, %441
  br i1 %cmp.not.i200, label %if.end.i201, label %sw.bb31.ctrl_cmd_new_lookup.exit_crit_edge

sw.bb31.ctrl_cmd_new_lookup.exit_crit_edge:       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctrl_cmd_new_lookup.exit

if.end.i201:                                      ; preds = %sw.bb31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %442 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %442, i32 noundef 3520, i32 noundef 28) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i201.ctrl_cmd_new_lookup.exit_crit_edge, label %if.end2.i

if.end.i201.ctrl_cmd_new_lookup.exit_crit_edge:   ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctrl_cmd_new_lookup.exit

if.end2.i:                                        ; preds = %if.end.i201
  %sq.i202 = getelementptr inbounds %struct.qrtr_lookup, ptr %call7.i.i.i, i32 0, i32 2
  %443 = call ptr @memcpy(ptr %sq.i202, ptr %sq, i32 12)
  %444 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %433, ptr %call7.i.i.i, align 8
  %instance4.i = getelementptr inbounds %struct.qrtr_lookup, ptr %call7.i.i.i, i32 0, i32 1
  %445 = ptrtoint ptr %instance4.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %436, ptr %instance4.i, align 4
  %li.i = getelementptr inbounds %struct.qrtr_lookup, ptr %call7.i.i.i, i32 0, i32 3
  %446 = load ptr, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2, i32 1), align 4
  %call.i.i.i203 = call zeroext i1 @__list_add_valid(ptr noundef %li.i, ptr noundef %446, ptr noundef getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2)) #11
  br i1 %call.i.i.i203, label %if.end.i.i.i204, label %if.end2.i.list_add_tail.exit.i_crit_edge

if.end2.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i204:                                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %li.i, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2, i32 1), align 4
  %447 = ptrtoint ptr %li.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2), ptr %li.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.qrtr_lookup, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %448 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store ptr %446, ptr %prev3.i.i.i, align 8
  %449 = ptrtoint ptr %446 to i32
  call void @__asan_store4_noabort(i32 %449)
  store volatile ptr %li.i, ptr %446, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i204, %if.end2.i.list_add_tail.exit.i_crit_edge
  %450 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i.i205 = and i32 %450, -16384
  %451 = inttoptr i32 %and.i.i.i.i.i.i205 to ptr
  %preempt_count.i.i.i.i.i206 = getelementptr inbounds %struct.thread_info, ptr %451, i32 0, i32 1
  %452 = ptrtoint ptr %preempt_count.i.i.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load volatile i32, ptr %preempt_count.i.i.i.i.i206, align 4
  %add.i.i.i.i207 = add i32 %453, 1
  store volatile i32 %add.i.i.i.i207, ptr %preempt_count.i.i.i.i.i206, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i208 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i208, label %list_add_tail.exit.i.rcu_read_lock.exit.i216_crit_edge, label %land.lhs.true.i.i211

list_add_tail.exit.i.rcu_read_lock.exit.i216_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i216

land.lhs.true.i.i211:                             ; preds = %list_add_tail.exit.i
  %call1.i.i209 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i209)
  %tobool.not.i.i210 = icmp eq i32 %call1.i.i209, 0
  br i1 %tobool.not.i.i210, label %land.lhs.true.i.i211.rcu_read_lock.exit.i216_crit_edge, label %land.lhs.true2.i.i213

land.lhs.true.i.i211.rcu_read_lock.exit.i216_crit_edge: ; preds = %land.lhs.true.i.i211
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i216

land.lhs.true2.i.i213:                            ; preds = %land.lhs.true.i.i211
  %.b4.i.i212 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i212, label %land.lhs.true2.i.i213.rcu_read_lock.exit.i216_crit_edge, label %if.then.i.i214

land.lhs.true2.i.i213.rcu_read_lock.exit.i216_crit_edge: ; preds = %land.lhs.true2.i.i213
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i216

if.then.i.i214:                                   ; preds = %land.lhs.true2.i.i213
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #11
  br label %rcu_read_lock.exit.i216

rcu_read_lock.exit.i216:                          ; preds = %if.then.i.i214, %land.lhs.true2.i.i213.rcu_read_lock.exit.i216_crit_edge, %land.lhs.true.i.i211.rcu_read_lock.exit.i216_crit_edge, %list_add_tail.exit.i.rcu_read_lock.exit.i216_crit_edge
  %454 = ptrtoint ptr %node_iter.i to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 0, ptr %node_iter.i, align 4
  %455 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 0, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %432)
  %cmp.not.i.i = icmp eq i32 %432, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %435)
  %tobool6.not.i.not.i = icmp eq i32 %435, 0
  br label %for.cond.i217

for.cond.i217.loopexit:                           ; preds = %while.body.i96.i.for.cond.i217.loopexit_crit_edge, %while.cond.i92.i.for.cond.i217.loopexit_crit_edge
  %node_slot.0.i.ph = phi ptr [ null, %while.cond.i92.i.for.cond.i217.loopexit_crit_edge ], [ %incdec.ptr29.i93.i, %while.body.i96.i.for.cond.i217.loopexit_crit_edge ]
  br label %for.cond.i217

for.cond.i217:                                    ; preds = %for.cond.i217.loopexit, %rcu_read_lock.exit.i216
  %node_slot.0.i = phi ptr [ null, %rcu_read_lock.exit.i216 ], [ %node_slot.0.i.ph, %for.cond.i217.loopexit ]
  %tobool8.not.i = icmp eq ptr %node_slot.0.i, null
  br i1 %tobool8.not.i, label %lor.rhs.i219, label %for.cond.i217.for.body.i221_crit_edge

for.cond.i217.for.body.i221_crit_edge:            ; preds = %for.cond.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i221

lor.rhs.i219:                                     ; preds = %for.cond.i217
  %call9.i218 = call ptr @radix_tree_next_chunk(ptr noundef nonnull @nodes, ptr noundef nonnull %node_iter.i, i32 noundef 0) #11
  %tobool10.not.i = icmp eq ptr %call9.i218, null
  br i1 %tobool10.not.i, label %for.end46.i, label %lor.rhs.i219.for.body.i221_crit_edge

lor.rhs.i219.for.body.i221_crit_edge:             ; preds = %lor.rhs.i219
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i221

for.body.i221:                                    ; preds = %lor.rhs.i219.for.body.i221_crit_edge, %for.cond.i217.for.body.i221_crit_edge
  %node_slot.1.i = phi ptr [ %node_slot.0.i, %for.cond.i217.for.body.i221_crit_edge ], [ %call9.i218, %lor.rhs.i219.for.body.i221_crit_edge ]
  %456 = ptrtoint ptr %node_slot.1.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load volatile ptr, ptr %node_slot.1.i, align 4
  %call.i98.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %tobool.not.i99.i220 = icmp eq i32 %call.i98.i, 0
  br i1 %tobool.not.i99.i220, label %land.lhs.true.i100.i224, label %for.body.i221.radix_tree_deref_slot.exit.i227_crit_edge

for.body.i221.radix_tree_deref_slot.exit.i227_crit_edge: ; preds = %for.body.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i227

land.lhs.true.i100.i224:                          ; preds = %for.body.i221
  %call2.i.i222 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i222)
  %tobool3.not.i.i223 = icmp eq i32 %call2.i.i222, 0
  br i1 %tobool3.not.i.i223, label %land.lhs.true.i100.i224.radix_tree_deref_slot.exit.i227_crit_edge, label %land.lhs.true4.i.i226

land.lhs.true.i100.i224.radix_tree_deref_slot.exit.i227_crit_edge: ; preds = %land.lhs.true.i100.i224
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i227

land.lhs.true4.i.i226:                            ; preds = %land.lhs.true.i100.i224
  %.b9.i.i225 = load i1, ptr @radix_tree_deref_slot.__warned, align 1
  br i1 %.b9.i.i225, label %land.lhs.true4.i.i226.radix_tree_deref_slot.exit.i227_crit_edge, label %if.then.i101.i

land.lhs.true4.i.i226.radix_tree_deref_slot.exit.i227_crit_edge: ; preds = %land.lhs.true4.i.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit.i227

if.then.i101.i:                                   ; preds = %land.lhs.true4.i.i226
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @radix_tree_deref_slot.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 179, ptr noundef nonnull @.str.39) #11
  br label %radix_tree_deref_slot.exit.i227

radix_tree_deref_slot.exit.i227:                  ; preds = %if.then.i101.i, %land.lhs.true4.i.i226.radix_tree_deref_slot.exit.i227_crit_edge, %land.lhs.true.i100.i224.radix_tree_deref_slot.exit.i227_crit_edge, %for.body.i221.radix_tree_deref_slot.exit.i227_crit_edge
  %tobool12.not.i = icmp eq ptr %457, null
  br i1 %tobool12.not.i, label %radix_tree_deref_slot.exit.i227.for.inc44.i_crit_edge, label %if.end14.i

radix_tree_deref_slot.exit.i227.for.inc44.i_crit_edge: ; preds = %radix_tree_deref_slot.exit.i227
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44.i

if.end14.i:                                       ; preds = %radix_tree_deref_slot.exit.i227
  %458 = ptrtoint ptr %457 to i32
  %and.i.i.i228 = and i32 %458, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i228)
  %cmp.i.i.not.i229 = icmp eq i32 %and.i.i.i228, 2
  br i1 %cmp.i.i.not.i229, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %459 = ptrtoint ptr %node_iter.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %node_iter.i, align 4
  %461 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %460, ptr %11, align 4
  %462 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 0, ptr %12, align 4
  br label %for.inc44.i

if.end19.i:                                       ; preds = %if.end14.i
  %call20.i = call ptr @radix_tree_iter_resume(ptr noundef nonnull %node_slot.1.i, ptr noundef nonnull %node_iter.i) #11
  %463 = ptrtoint ptr %srv_iter.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 0, ptr %srv_iter.i, align 4
  %464 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 0, ptr %13, align 4
  %servers.i230 = getelementptr inbounds %struct.qrtr_node, ptr %457, i32 0, i32 1
  br label %for.cond22.i

for.cond22.i.loopexit:                            ; preds = %while.body.i.i244.for.cond22.i.loopexit_crit_edge, %while.cond.i.i240.for.cond22.i.loopexit_crit_edge
  %srv_slot.0.i.ph = phi ptr [ null, %while.cond.i.i240.for.cond22.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i241, %while.body.i.i244.for.cond22.i.loopexit_crit_edge ]
  br label %for.cond22.i

for.cond22.i:                                     ; preds = %for.cond22.i.loopexit, %if.end19.i
  %srv_slot.0.i = phi ptr [ null, %if.end19.i ], [ %srv_slot.0.i.ph, %for.cond22.i.loopexit ]
  %tobool23.not.i = icmp eq ptr %srv_slot.0.i, null
  br i1 %tobool23.not.i, label %lor.rhs24.i, label %for.cond22.i.for.body28.i_crit_edge

for.cond22.i.for.body28.i_crit_edge:              ; preds = %for.cond22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28.i

lor.rhs24.i:                                      ; preds = %for.cond22.i
  %call25.i = call ptr @radix_tree_next_chunk(ptr noundef %servers.i230, ptr noundef nonnull %srv_iter.i, i32 noundef 0) #11
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %lor.rhs24.i.for.inc44.i_crit_edge, label %lor.rhs24.i.for.body28.i_crit_edge

lor.rhs24.i.for.body28.i_crit_edge:               ; preds = %lor.rhs24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28.i

lor.rhs24.i.for.inc44.i_crit_edge:                ; preds = %lor.rhs24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44.i

for.body28.i:                                     ; preds = %lor.rhs24.i.for.body28.i_crit_edge, %for.cond22.i.for.body28.i_crit_edge
  %srv_slot.1.i = phi ptr [ %srv_slot.0.i, %for.cond22.i.for.body28.i_crit_edge ], [ %call25.i, %lor.rhs24.i.for.body28.i_crit_edge ]
  %465 = ptrtoint ptr %srv_slot.1.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load volatile ptr, ptr %srv_slot.1.i, align 4
  %call.i103.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool.not.i104.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool.not.i104.i, label %land.lhs.true.i107.i, label %for.body28.i.radix_tree_deref_slot.exit111.i_crit_edge

for.body28.i.radix_tree_deref_slot.exit111.i_crit_edge: ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit111.i

land.lhs.true.i107.i:                             ; preds = %for.body28.i
  %call2.i105.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i105.i)
  %tobool3.not.i106.i = icmp eq i32 %call2.i105.i, 0
  br i1 %tobool3.not.i106.i, label %land.lhs.true.i107.i.radix_tree_deref_slot.exit111.i_crit_edge, label %land.lhs.true4.i109.i

land.lhs.true.i107.i.radix_tree_deref_slot.exit111.i_crit_edge: ; preds = %land.lhs.true.i107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit111.i

land.lhs.true4.i109.i:                            ; preds = %land.lhs.true.i107.i
  %.b9.i108.i = load i1, ptr @radix_tree_deref_slot.__warned, align 1
  br i1 %.b9.i108.i, label %land.lhs.true4.i109.i.radix_tree_deref_slot.exit111.i_crit_edge, label %if.then.i110.i

land.lhs.true4.i109.i.radix_tree_deref_slot.exit111.i_crit_edge: ; preds = %land.lhs.true4.i109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radix_tree_deref_slot.exit111.i

if.then.i110.i:                                   ; preds = %land.lhs.true4.i109.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @radix_tree_deref_slot.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 179, ptr noundef nonnull @.str.39) #11
  br label %radix_tree_deref_slot.exit111.i

radix_tree_deref_slot.exit111.i:                  ; preds = %if.then.i110.i, %land.lhs.true4.i109.i.radix_tree_deref_slot.exit111.i_crit_edge, %land.lhs.true.i107.i.radix_tree_deref_slot.exit111.i_crit_edge, %for.body28.i.radix_tree_deref_slot.exit111.i_crit_edge
  %tobool30.not.i = icmp eq ptr %466, null
  br i1 %tobool30.not.i, label %radix_tree_deref_slot.exit111.i.cleanup.i_crit_edge, label %if.end32.i

radix_tree_deref_slot.exit111.i.cleanup.i_crit_edge: ; preds = %radix_tree_deref_slot.exit111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end32.i:                                       ; preds = %radix_tree_deref_slot.exit111.i
  %467 = ptrtoint ptr %466 to i32
  %and.i.i112.i = and i32 %467, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i112.i)
  %cmp.i.i113.not.i = icmp eq i32 %and.i.i112.i, 2
  br i1 %cmp.i.i113.not.i, label %if.then35.i, label %if.end37.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %468 = ptrtoint ptr %srv_iter.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %srv_iter.i, align 4
  %470 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %469, ptr %13, align 4
  %471 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 0, ptr %14, align 4
  br label %cleanup.i

if.end37.i:                                       ; preds = %if.end32.i
  br i1 %cmp.not.i.i, label %if.end37.i.server_match.exit.i_crit_edge, label %land.lhs.true.i117.i

if.end37.i.server_match.exit.i_crit_edge:         ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %server_match.exit.i

land.lhs.true.i117.i:                             ; preds = %if.end37.i
  %472 = ptrtoint ptr %466 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %466, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %473, i32 %433)
  %cmp4.not.i.i = icmp eq i32 %473, %433
  br i1 %cmp4.not.i.i, label %land.lhs.true.i117.i.server_match.exit.i_crit_edge, label %land.lhs.true.i117.i.cleanup.i_crit_edge

land.lhs.true.i117.i.cleanup.i_crit_edge:         ; preds = %land.lhs.true.i117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

land.lhs.true.i117.i.server_match.exit.i_crit_edge: ; preds = %land.lhs.true.i117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %server_match.exit.i

server_match.exit.i:                              ; preds = %land.lhs.true.i117.i.server_match.exit.i_crit_edge, %if.end37.i.server_match.exit.i_crit_edge
  %instance9.i.i = getelementptr inbounds %struct.qrtr_server, ptr %466, i32 0, i32 1
  %474 = ptrtoint ptr %instance9.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %instance9.i.i, align 4
  %and.i.i = select i1 %tobool6.not.i.not.i, i32 0, i32 %475
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %436)
  %cmp11.i.not.i = icmp eq i32 %and.i.i, %436
  br i1 %cmp11.i.not.i, label %if.end41.i, label %server_match.exit.i.cleanup.i_crit_edge

server_match.exit.i.cleanup.i_crit_edge:          ; preds = %server_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end41.i:                                       ; preds = %server_match.exit.i
  %call42.i = call ptr @radix_tree_iter_resume(ptr noundef nonnull %srv_slot.1.i, ptr noundef nonnull %srv_iter.i) #11
  %call.i119.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i119.i, label %if.end41.i.if.end.i132.i_crit_edge, label %land.lhs.true.i122.i

if.end41.i.if.end.i132.i_crit_edge:               ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i132.i

land.lhs.true.i122.i:                             ; preds = %if.end41.i
  %call1.i120.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120.i)
  %tobool.not.i121.i = icmp eq i32 %call1.i120.i, 0
  br i1 %tobool.not.i121.i, label %land.lhs.true.i122.i.if.end.i132.i_crit_edge, label %land.lhs.true2.i124.i

land.lhs.true.i122.i.if.end.i132.i_crit_edge:     ; preds = %land.lhs.true.i122.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i132.i

land.lhs.true2.i124.i:                            ; preds = %land.lhs.true.i122.i
  %.b4.i123.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i123.i, label %land.lhs.true2.i124.i.if.end.i132.i_crit_edge, label %if.then.i125.i

land.lhs.true2.i124.i.if.end.i132.i_crit_edge:    ; preds = %land.lhs.true2.i124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i132.i

if.then.i125.i:                                   ; preds = %land.lhs.true2.i124.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.47) #11
  br label %if.end.i132.i

if.end.i132.i:                                    ; preds = %if.then.i125.i, %land.lhs.true2.i124.i.if.end.i132.i_crit_edge, %land.lhs.true.i122.i.if.end.i132.i_crit_edge, %if.end41.i.if.end.i132.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %476 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i126.i = and i32 %476, -16384
  %477 = inttoptr i32 %and.i.i.i.i.i126.i to ptr
  %preempt_count.i.i.i.i127.i = getelementptr inbounds %struct.thread_info, ptr %477, i32 0, i32 1
  %478 = ptrtoint ptr %preempt_count.i.i.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load volatile i32, ptr %preempt_count.i.i.i.i127.i, align 4
  %sub.i.i.i.i231 = add i32 %479, -1
  store volatile i32 %sub.i.i.i.i231, ptr %preempt_count.i.i.i.i127.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i.i196) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i197) #11
  %480 = call ptr @memset(ptr %15, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i198) #11
  %481 = ptrtoint ptr %iv.i.i198 to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr %pkt.i.i196, ptr %iv.i.i198, align 4
  %482 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 20, ptr %16, align 4
  %483 = call ptr @memset(ptr %17, i32 0, i32 16)
  %484 = ptrtoint ptr %pkt.i.i196 to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 67108864, ptr %pkt.i.i196, align 4
  %485 = ptrtoint ptr %466 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %466, align 4
  %487 = call i32 @llvm.bswap.i32(i32 %486) #11
  %488 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %487, ptr %17, align 4
  %489 = ptrtoint ptr %instance9.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %instance9.i.i, align 4
  %491 = call i32 @llvm.bswap.i32(i32 %490) #11
  %492 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 %491, ptr %20, align 4
  %node.i.i = getelementptr inbounds %struct.qrtr_server, ptr %466, i32 0, i32 2
  %493 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %node.i.i, align 4
  %495 = call i32 @llvm.bswap.i32(i32 %494) #11
  %496 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 %495, ptr %19, align 4
  %port.i.i = getelementptr inbounds %struct.qrtr_server, ptr %466, i32 0, i32 3
  %497 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %port.i.i, align 4
  %499 = call i32 @llvm.bswap.i32(i32 %498) #11
  %500 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 %499, ptr %18, align 4
  %501 = ptrtoint ptr %msg.i.i197 to i32
  call void @__asan_store4_noabort(i32 %501)
  store ptr %sq, ptr %msg.i.i197, align 8
  %502 = ptrtoint ptr %msg_namelen.i.i215 to i32
  call void @__asan_store4_noabort(i32 %502)
  store i32 12, ptr %msg_namelen.i.i215, align 4
  %503 = load ptr, ptr @qrtr_ns, align 4
  %call.i130.i = call i32 @kernel_sendmsg(ptr noundef %503, ptr noundef nonnull %msg.i.i197, ptr noundef nonnull %iv.i.i198, i32 noundef 1, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130.i)
  %cmp.i131.i = icmp slt i32 %call.i130.i, 0
  br i1 %cmp.i131.i, label %do.end.i.i233, label %if.end.i132.i.lookup_notify.exit.i234_crit_edge

if.end.i132.i.lookup_notify.exit.i234_crit_edge:  ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_notify.exit.i234

do.end.i.i233:                                    ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i.i232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #16
  br label %lookup_notify.exit.i234

lookup_notify.exit.i234:                          ; preds = %do.end.i.i233, %if.end.i132.i.lookup_notify.exit.i234_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i198) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i197) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i.i196) #11
  %504 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i75.i = and i32 %504, -16384
  %505 = inttoptr i32 %and.i.i.i.i.i75.i to ptr
  %preempt_count.i.i.i.i76.i = getelementptr inbounds %struct.thread_info, ptr %505, i32 0, i32 1
  %506 = ptrtoint ptr %preempt_count.i.i.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load volatile i32, ptr %preempt_count.i.i.i.i76.i, align 4
  %add.i.i.i77.i = add i32 %507, 1
  store volatile i32 %add.i.i.i77.i, ptr %preempt_count.i.i.i.i76.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i78.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i78.i, label %lookup_notify.exit.i234.cleanup.i_crit_edge, label %land.lhs.true.i81.i

lookup_notify.exit.i234.cleanup.i_crit_edge:      ; preds = %lookup_notify.exit.i234
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

land.lhs.true.i81.i:                              ; preds = %lookup_notify.exit.i234
  %call1.i79.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79.i)
  %tobool.not.i80.i = icmp eq i32 %call1.i79.i, 0
  br i1 %tobool.not.i80.i, label %land.lhs.true.i81.i.cleanup.i_crit_edge, label %land.lhs.true2.i83.i

land.lhs.true.i81.i.cleanup.i_crit_edge:          ; preds = %land.lhs.true.i81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

land.lhs.true2.i83.i:                             ; preds = %land.lhs.true.i81.i
  %.b4.i82.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i82.i, label %land.lhs.true2.i83.i.cleanup.i_crit_edge, label %if.then.i84.i

land.lhs.true2.i83.i.cleanup.i_crit_edge:         ; preds = %land.lhs.true2.i83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then.i84.i:                                    ; preds = %land.lhs.true2.i83.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i84.i, %land.lhs.true2.i83.i.cleanup.i_crit_edge, %land.lhs.true.i81.i.cleanup.i_crit_edge, %lookup_notify.exit.i234.cleanup.i_crit_edge, %server_match.exit.i.cleanup.i_crit_edge, %land.lhs.true.i117.i.cleanup.i_crit_edge, %if.then35.i, %radix_tree_deref_slot.exit111.i.cleanup.i_crit_edge
  %srv_slot.2.i = phi ptr [ null, %if.then35.i ], [ %srv_slot.1.i, %radix_tree_deref_slot.exit111.i.cleanup.i_crit_edge ], [ %srv_slot.1.i, %server_match.exit.i.cleanup.i_crit_edge ], [ %call42.i, %lookup_notify.exit.i234.cleanup.i_crit_edge ], [ %call42.i, %land.lhs.true.i81.i.cleanup.i_crit_edge ], [ %call42.i, %land.lhs.true2.i83.i.cleanup.i_crit_edge ], [ %call42.i, %if.then.i84.i ], [ %srv_slot.1.i, %land.lhs.true.i117.i.cleanup.i_crit_edge ]
  %508 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %13, align 4
  %510 = ptrtoint ptr %srv_iter.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %srv_iter.i, align 4
  %sub.i.i.i235 = sub i32 %509, %511
  br label %while.cond.i.i240

while.cond.i.i240:                                ; preds = %while.body.i.i244.while.cond.i.i240_crit_edge, %cleanup.i
  %slot.addr.0.i.i236 = phi ptr [ %srv_slot.2.i, %cleanup.i ], [ %incdec.ptr29.i.i241, %while.body.i.i244.while.cond.i.i240_crit_edge ]
  %count.0.i.i237 = phi i32 [ %sub.i.i.i235, %cleanup.i ], [ %dec.i.i238, %while.body.i.i244.while.cond.i.i240_crit_edge ]
  %dec.i.i238 = add i32 %count.0.i.i237, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i238)
  %cmp.i.i239 = icmp sgt i32 %dec.i.i238, 0
  br i1 %cmp.i.i239, label %while.body.i.i244, label %while.cond.i.i240.for.cond22.i.loopexit_crit_edge

while.cond.i.i240.for.cond22.i.loopexit_crit_edge: ; preds = %while.cond.i.i240
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond22.i.loopexit

while.body.i.i244:                                ; preds = %while.cond.i.i240
  %incdec.ptr29.i.i241 = getelementptr ptr, ptr %slot.addr.0.i.i236, i32 1
  %512 = ptrtoint ptr %srv_iter.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %srv_iter.i, align 4
  %add.i.i.i242 = add i32 %513, 1
  store i32 %add.i.i.i242, ptr %srv_iter.i, align 4
  %514 = ptrtoint ptr %incdec.ptr29.i.i241 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %incdec.ptr29.i.i241, align 4
  %tobool32.not.i.i243 = icmp eq ptr %515, null
  br i1 %tobool32.not.i.i243, label %while.body.i.i244.while.cond.i.i240_crit_edge, label %while.body.i.i244.for.cond22.i.loopexit_crit_edge, !prof !195

while.body.i.i244.for.cond22.i.loopexit_crit_edge: ; preds = %while.body.i.i244
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond22.i.loopexit

while.body.i.i244.while.cond.i.i240_crit_edge:    ; preds = %while.body.i.i244
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i240

for.inc44.i:                                      ; preds = %lor.rhs24.i.for.inc44.i_crit_edge, %if.then17.i, %radix_tree_deref_slot.exit.i227.for.inc44.i_crit_edge
  %node_slot.2.i = phi ptr [ null, %if.then17.i ], [ %node_slot.1.i, %radix_tree_deref_slot.exit.i227.for.inc44.i_crit_edge ], [ %call20.i, %lor.rhs24.i.for.inc44.i_crit_edge ]
  %516 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %11, align 4
  %518 = ptrtoint ptr %node_iter.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %node_iter.i, align 4
  %sub.i.i87.i = sub i32 %517, %519
  br label %while.cond.i92.i

while.cond.i92.i:                                 ; preds = %while.body.i96.i.while.cond.i92.i_crit_edge, %for.inc44.i
  %slot.addr.0.i88.i = phi ptr [ %node_slot.2.i, %for.inc44.i ], [ %incdec.ptr29.i93.i, %while.body.i96.i.while.cond.i92.i_crit_edge ]
  %count.0.i89.i = phi i32 [ %sub.i.i87.i, %for.inc44.i ], [ %dec.i90.i, %while.body.i96.i.while.cond.i92.i_crit_edge ]
  %dec.i90.i = add i32 %count.0.i89.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i90.i)
  %cmp.i91.i = icmp sgt i32 %dec.i90.i, 0
  br i1 %cmp.i91.i, label %while.body.i96.i, label %while.cond.i92.i.for.cond.i217.loopexit_crit_edge

while.cond.i92.i.for.cond.i217.loopexit_crit_edge: ; preds = %while.cond.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i217.loopexit

while.body.i96.i:                                 ; preds = %while.cond.i92.i
  %incdec.ptr29.i93.i = getelementptr ptr, ptr %slot.addr.0.i88.i, i32 1
  %520 = ptrtoint ptr %node_iter.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %node_iter.i, align 4
  %add.i.i94.i = add i32 %521, 1
  store i32 %add.i.i94.i, ptr %node_iter.i, align 4
  %522 = ptrtoint ptr %incdec.ptr29.i93.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %incdec.ptr29.i93.i, align 4
  %tobool32.not.i95.i = icmp eq ptr %523, null
  br i1 %tobool32.not.i95.i, label %while.body.i96.i.while.cond.i92.i_crit_edge, label %while.body.i96.i.for.cond.i217.loopexit_crit_edge, !prof !195

while.body.i96.i.for.cond.i217.loopexit_crit_edge: ; preds = %while.body.i96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i217.loopexit

while.body.i96.i.while.cond.i92.i_crit_edge:      ; preds = %while.body.i96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i92.i

for.end46.i:                                      ; preds = %lor.rhs.i219
  %call.i134.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i134.i, label %for.end46.i.rcu_read_unlock.exit145.i_crit_edge, label %land.lhs.true.i137.i

for.end46.i.rcu_read_unlock.exit145.i_crit_edge:  ; preds = %for.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit145.i

land.lhs.true.i137.i:                             ; preds = %for.end46.i
  %call1.i135.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135.i)
  %tobool.not.i136.i = icmp eq i32 %call1.i135.i, 0
  br i1 %tobool.not.i136.i, label %land.lhs.true.i137.i.rcu_read_unlock.exit145.i_crit_edge, label %land.lhs.true2.i139.i

land.lhs.true.i137.i.rcu_read_unlock.exit145.i_crit_edge: ; preds = %land.lhs.true.i137.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit145.i

land.lhs.true2.i139.i:                            ; preds = %land.lhs.true.i137.i
  %.b4.i138.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i138.i, label %land.lhs.true2.i139.i.rcu_read_unlock.exit145.i_crit_edge, label %if.then.i140.i

land.lhs.true2.i139.i.rcu_read_unlock.exit145.i_crit_edge: ; preds = %land.lhs.true2.i139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit145.i

if.then.i140.i:                                   ; preds = %land.lhs.true2.i139.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.47) #11
  br label %rcu_read_unlock.exit145.i

rcu_read_unlock.exit145.i:                        ; preds = %if.then.i140.i, %land.lhs.true2.i139.i.rcu_read_unlock.exit145.i_crit_edge, %land.lhs.true.i137.i.rcu_read_unlock.exit145.i_crit_edge, %for.end46.i.rcu_read_unlock.exit145.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %524 = call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i.i141.i = and i32 %524, -16384
  %525 = inttoptr i32 %and.i.i.i.i.i141.i to ptr
  %preempt_count.i.i.i.i142.i = getelementptr inbounds %struct.thread_info, ptr %525, i32 0, i32 1
  %526 = ptrtoint ptr %preempt_count.i.i.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load volatile i32, ptr %preempt_count.i.i.i.i142.i, align 4
  %sub.i.i.i143.i = add i32 %527, -1
  store volatile i32 %sub.i.i.i143.i, ptr %preempt_count.i.i.i.i142.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i146.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i147.i) #11
  %528 = call ptr @memset(ptr %21, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i148.i) #11
  %529 = ptrtoint ptr %iv.i148.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store ptr %pkt.i146.i, ptr %iv.i148.i, align 4
  %530 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 20, ptr %22, align 4
  %531 = call ptr @memset(ptr %23, i32 0, i32 16)
  %532 = ptrtoint ptr %pkt.i146.i to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 67108864, ptr %pkt.i146.i, align 4
  %533 = ptrtoint ptr %msg.i147.i to i32
  call void @__asan_store4_noabort(i32 %533)
  store ptr %sq, ptr %msg.i147.i, align 8
  %534 = ptrtoint ptr %msg_namelen.i149.i to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 12, ptr %msg_namelen.i149.i, align 4
  %535 = load ptr, ptr @qrtr_ns, align 4
  %call.i150.i = call i32 @kernel_sendmsg(ptr noundef %535, ptr noundef nonnull %msg.i147.i, ptr noundef nonnull %iv.i148.i, i32 noundef 1, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150.i)
  %cmp.i151.i = icmp slt i32 %call.i150.i, 0
  br i1 %cmp.i151.i, label %do.end.i154.i, label %rcu_read_unlock.exit145.i.lookup_notify.exit156.i_crit_edge

rcu_read_unlock.exit145.i.lookup_notify.exit156.i_crit_edge: ; preds = %rcu_read_unlock.exit145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_notify.exit156.i

do.end.i154.i:                                    ; preds = %rcu_read_unlock.exit145.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i153.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #16
  br label %lookup_notify.exit156.i

lookup_notify.exit156.i:                          ; preds = %do.end.i154.i, %rcu_read_unlock.exit145.i.lookup_notify.exit156.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i148.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i147.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i146.i) #11
  br label %ctrl_cmd_new_lookup.exit

ctrl_cmd_new_lookup.exit:                         ; preds = %lookup_notify.exit156.i, %if.end.i201.ctrl_cmd_new_lookup.exit_crit_edge, %sw.bb31.ctrl_cmd_new_lookup.exit_crit_edge
  %retval.0.i246 = phi i32 [ 0, %lookup_notify.exit156.i ], [ -22, %sw.bb31.ctrl_cmd_new_lookup.exit_crit_edge ], [ -12, %if.end.i201.ctrl_cmd_new_lookup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %srv_iter.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_iter.i) #11
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end14
  %536 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %10, align 4
  %538 = call i32 @llvm.bswap.i32(i32 %537)
  %539 = ptrtoint ptr %instance33 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %instance33, align 8
  %541 = call i32 @llvm.bswap.i32(i32 %540)
  %542 = load ptr, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2), align 4
  %cmp.i.not31.i = icmp eq ptr %542, getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2)
  br i1 %cmp.i.not31.i, label %sw.bb35.if.end47_crit_edge, label %sw.bb35.for.body.i251_crit_edge

sw.bb35.for.body.i251_crit_edge:                  ; preds = %sw.bb35
  br label %for.body.i251

sw.bb35.if.end47_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

for.body.i251:                                    ; preds = %for.inc.i265.for.body.i251_crit_edge, %sw.bb35.for.body.i251_crit_edge
  %li.032.i = phi ptr [ %tmp.034.i, %for.inc.i265.for.body.i251_crit_edge ], [ %542, %sw.bb35.for.body.i251_crit_edge ]
  %543 = ptrtoint ptr %li.032.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %tmp.034.i = load ptr, ptr %li.032.i, align 4
  %add.ptr.i248 = getelementptr i8, ptr %li.032.i, i32 -20
  %sq_node.i249 = getelementptr i8, ptr %li.032.i, i32 -8
  %544 = ptrtoint ptr %sq_node.i249 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %sq_node.i249, align 4
  %546 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %sq_node, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %545, i32 %547)
  %cmp.not.i250 = icmp eq i32 %545, %547
  br i1 %cmp.not.i250, label %if.end.i253, label %for.body.i251.for.inc.i265_crit_edge

for.body.i251.for.inc.i265_crit_edge:             ; preds = %for.body.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i265

if.end.i253:                                      ; preds = %for.body.i251
  %sq_port.i252 = getelementptr i8, ptr %li.032.i, i32 -4
  %548 = ptrtoint ptr %sq_port.i252 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %sq_port.i252, align 4
  %550 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %sq_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %549, i32 %551)
  %cmp5.not.i = icmp eq i32 %549, %551
  br i1 %cmp5.not.i, label %if.end7.i255, label %if.end.i253.for.inc.i265_crit_edge

if.end.i253.for.inc.i265_crit_edge:               ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i265

if.end7.i255:                                     ; preds = %if.end.i253
  %552 = ptrtoint ptr %add.ptr.i248 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %add.ptr.i248, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %553, i32 %538)
  %cmp9.not.i254 = icmp eq i32 %553, %538
  br i1 %cmp9.not.i254, label %if.end11.i257, label %if.end7.i255.for.inc.i265_crit_edge

if.end7.i255.for.inc.i265_crit_edge:              ; preds = %if.end7.i255
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i265

if.end11.i257:                                    ; preds = %if.end7.i255
  %instance12.i = getelementptr i8, ptr %li.032.i, i32 -16
  %554 = ptrtoint ptr %instance12.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %instance12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %555)
  %tobool13.not.i = icmp eq i32 %555, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %555, i32 %541)
  %cmp15.not.i = icmp eq i32 %555, %541
  %or.cond.i256 = or i1 %tobool13.not.i, %cmp15.not.i
  br i1 %or.cond.i256, label %if.end17.i, label %if.end11.i257.for.inc.i265_crit_edge

if.end11.i257.for.inc.i265_crit_edge:             ; preds = %if.end11.i257
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i265

if.end17.i:                                       ; preds = %if.end11.i257
  %call.i.i.i258 = call zeroext i1 @__list_del_entry_valid(ptr noundef %li.032.i) #11
  br i1 %call.i.i.i258, label %if.end.i.i.i261, label %if.end17.i.list_del.exit.i263_crit_edge

if.end17.i.list_del.exit.i263_crit_edge:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i263

if.end.i.i.i261:                                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i259 = getelementptr inbounds %struct.list_head, ptr %li.032.i, i32 0, i32 1
  %556 = ptrtoint ptr %prev.i.i.i259 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %prev.i.i.i259, align 4
  %558 = ptrtoint ptr %li.032.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %li.032.i, align 4
  %prev1.i.i.i.i260 = getelementptr inbounds %struct.list_head, ptr %559, i32 0, i32 1
  %560 = ptrtoint ptr %prev1.i.i.i.i260 to i32
  call void @__asan_store4_noabort(i32 %560)
  store ptr %557, ptr %prev1.i.i.i.i260, align 4
  %561 = ptrtoint ptr %557 to i32
  call void @__asan_store4_noabort(i32 %561)
  store volatile ptr %559, ptr %557, align 4
  br label %list_del.exit.i263

list_del.exit.i263:                               ; preds = %if.end.i.i.i261, %if.end17.i.list_del.exit.i263_crit_edge
  %562 = ptrtoint ptr %li.032.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store ptr inttoptr (i32 256 to ptr), ptr %li.032.i, align 4
  %prev.i.i262 = getelementptr inbounds %struct.list_head, ptr %li.032.i, i32 0, i32 1
  %563 = ptrtoint ptr %prev.i.i262 to i32
  call void @__asan_store4_noabort(i32 %563)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i262, align 4
  call void @kfree(ptr noundef %add.ptr.i248) #11
  br label %for.inc.i265

for.inc.i265:                                     ; preds = %list_del.exit.i263, %if.end11.i257.for.inc.i265_crit_edge, %if.end7.i255.for.inc.i265_crit_edge, %if.end.i253.for.inc.i265_crit_edge, %for.body.i251.for.inc.i265_crit_edge
  %cmp.i.not.i264 = icmp eq ptr %tmp.034.i, getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2)
  br i1 %cmp.i.not.i264, label %for.inc.i265.if.end47_crit_edge, label %for.inc.i265.for.body.i251_crit_edge

for.inc.i265.for.body.i251_crit_edge:             ; preds = %for.inc.i265
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i251

for.inc.i265.if.end47_crit_edge:                  ; preds = %for.inc.i265
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

sw.epilog:                                        ; preds = %ctrl_cmd_new_lookup.exit, %if.end9.i, %for.inc.i181.sw.epilog_crit_edge, %ctrl_cmd_del_client.exit, %ctrl_cmd_bye.exit, %announce_servers.exit.i
  %ret.0 = phi i32 [ %retval.0.i246, %ctrl_cmd_new_lookup.exit ], [ %retval.0.i149, %ctrl_cmd_del_client.exit ], [ %retval.0.i89, %ctrl_cmd_bye.exit ], [ %retval.0.i.i, %announce_servers.exit.i ], [ %call10.i, %if.end9.i ], [ %ret.0.i, %for.inc.i181.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp38 = icmp slt i32 %ret.0, 0
  br i1 %cmp38, label %sw.epilog.do.end42_crit_edge, label %sw.epilog.if.end47_crit_edge

sw.epilog.if.end47_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

sw.epilog.do.end42_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

do.end42:                                         ; preds = %sw.epilog.do.end42_crit_edge, %if.end.i.i191.do.end42_crit_edge, %do.end.i174, %err.i.i, %if.end.i.i160.do.end42_crit_edge, %if.end.i157.do.end42_crit_edge, %say_hello.exit.thread.i
  %564 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %sq_node, align 4
  %566 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %sq_port, align 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %565, i32 noundef %567) #16
  br label %if.end47

if.end47:                                         ; preds = %do.end42, %sw.epilog.if.end47_crit_edge, %for.inc.i265.if.end47_crit_edge, %sw.bb35.if.end47_crit_edge, %if.end11.i175.if.end47_crit_edge, %if.end14.if.end47_crit_edge
  %568 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %568)
  store ptr %call7.i.i, ptr %iv, align 4
  %569 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 4096, ptr %3, align 4
  %570 = load ptr, ptr @qrtr_ns, align 4
  %call2 = call i32 @kernel_recvmsg(ptr noundef %570, ptr noundef nonnull %msg, ptr noundef nonnull %iv, i32 noundef 1, i32 noundef 4096, i32 noundef 64) #11
  %cmp = icmp eq i32 %call2, -11
  br i1 %cmp, label %if.end47.for.end_crit_edge, label %if.end47.if.end4_crit_edge

if.end47.if.end4_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end47.for.end_crit_edge, %do.end, %for.cond.preheader.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sq) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qrtr_ns_data_ready(ptr nocapture noundef readnone %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 3), align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 4)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qrtr_ns_remove() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 4)) #11
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 3), align 4
  tail call void @destroy_workqueue(ptr noundef %0) #11
  %1 = load ptr, ptr @qrtr_ns, align 4
  tail call void @sock_release(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_qrtr_ns_service_announce_new(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %service = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %service, align 4
  %instance = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance, align 4
  %node = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node, align 4
  %port = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_new, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
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
define internal i32 @trace_raw_output_qrtr_ns_service_announce_del(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %service = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %service, align 4
  %instance = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance, align 4
  %node = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node, align 4
  %port = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_service_announce_del, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_qrtr_ns_server_add(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %service = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %service, align 4
  %instance = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance, align 4
  %node = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node, align 4
  %port = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_server_add, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
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
define internal i32 @trace_raw_output_qrtr_ns_message(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_ctrl_pkt_str = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_message, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_ctrl_pkt_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_ctrl_pkt_str, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %sq_node = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_message, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_node, align 4
  %sq_port = getelementptr inbounds %struct.trace_event_raw_qrtr_ns_message, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sq_port, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7) #11
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
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_qrtr_ns_message(ptr noundef %ctrl_pkt_str, i32 noundef %sq_node, i32 noundef %sq_port) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_message, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_qrtr_ns_message, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !199

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !200
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_message, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %ctrl_pkt_str, i32 noundef %sq_node, i32 noundef %sq_port) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_message, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_qrtr_ns_message.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_qrtr_ns_message.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 110, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %38 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_iter_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_qrtr_ns_service_announce_new(i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_service_announce_new, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_qrtr_ns_service_announce_new, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !199

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_service_announce_new, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_service_announce_new, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_qrtr_ns_service_announce_new.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_qrtr_ns_service_announce_new.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 35, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %38 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @server_del(ptr noundef %node, i32 noundef %port) unnamed_addr #0 align 64 {
entry:
  %pkt.i40 = alloca %struct.qrtr_ctrl_pkt, align 4
  %msg.i41 = alloca %struct.msghdr, align 8
  %iv.i42 = alloca %struct.kvec, align 4
  %pkt.i = alloca %struct.qrtr_ctrl_pkt, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %iv.i = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %servers = getelementptr inbounds %struct.qrtr_node, ptr %node, i32 0, i32 1
  %call = tail call ptr @radix_tree_lookup(ptr noundef %servers, i32 noundef %port) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @radix_tree_delete(ptr noundef %servers, i32 noundef %port) #11
  %node3 = getelementptr inbounds %struct.qrtr_server, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %node3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node3, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i) #11
  %3 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i, i32 0, i32 1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i, i32 0, i32 1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i, i32 0, i32 1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  %9 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call, align 4
  %instance.i = getelementptr inbounds %struct.qrtr_server, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %instance.i, align 4
  %14 = ptrtoint ptr %node3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node3, align 4
  %port.i = getelementptr inbounds %struct.qrtr_server, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  tail call fastcc void @trace_qrtr_ns_service_announce_del(i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #11
  %18 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pkt.i, ptr %iv.i, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20, ptr %9, align 4
  %20 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 83886080, ptr %pkt.i, align 4
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #11
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %3, align 4
  %25 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %instance.i, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26) #11
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %4, align 4
  %29 = ptrtoint ptr %node3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %node3, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #11
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %5, align 4
  %33 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #11
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %6, align 4
  %37 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 1), ptr %msg.i, align 8
  %msg_namelen.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 1
  %38 = ptrtoint ptr %msg_namelen.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 12, ptr %msg_namelen.i, align 4
  %39 = load ptr, ptr @qrtr_ns, align 4
  %call.i = call i32 @kernel_sendmsg(ptr noundef %39, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then4.service_announce_del.exit_crit_edge

if.then4.service_announce_del.exit_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %service_announce_del.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #16
  br label %service_announce_del.exit

service_announce_del.exit:                        ; preds = %do.end.i, %if.then4.service_announce_del.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i) #11
  br label %if.end6

if.end6:                                          ; preds = %service_announce_del.exit, %if.end.if.end6_crit_edge
  %li.050 = load ptr, ptr getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2), align 4
  %cmp.i39.not51 = icmp eq ptr %li.050, getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2)
  br i1 %cmp.i39.not51, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %instance18 = getelementptr inbounds %struct.qrtr_server, ptr %call, i32 0, i32 1
  %40 = getelementptr inbounds i8, ptr %msg.i41, i32 8
  %41 = getelementptr inbounds %struct.kvec, ptr %iv.i42, i32 0, i32 1
  %42 = getelementptr inbounds i8, ptr %pkt.i40, i32 4
  %43 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i40, i32 0, i32 1, i32 0, i32 3
  %44 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i40, i32 0, i32 1, i32 0, i32 2
  %45 = getelementptr inbounds %struct.qrtr_ctrl_pkt, ptr %pkt.i40, i32 0, i32 1, i32 0, i32 1
  %port.i45 = getelementptr inbounds %struct.qrtr_server, ptr %call, i32 0, i32 3
  %msg_namelen.i46 = getelementptr inbounds %struct.msghdr, ptr %msg.i41, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %li.052 = phi ptr [ %li.050, %for.body.lr.ph ], [ %li.0, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %li.052, i32 -20
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool9.not = icmp eq i32 %47, 0
  br i1 %tobool9.not, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %48 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp12.not = icmp eq i32 %47, %49
  br i1 %cmp12.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %instance = getelementptr i8, ptr %li.052, i32 -16
  %50 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %instance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool15.not = icmp eq i32 %51, 0
  br i1 %tobool15.not, label %if.end14.if.end.i_crit_edge, label %land.lhs.true16

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true16:                                  ; preds = %if.end14
  %52 = ptrtoint ptr %instance18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %instance18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp19.not = icmp eq i32 %51, %53
  br i1 %cmp19.not, label %land.lhs.true16.if.end.i_crit_edge, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true16.if.end.i_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true16.if.end.i_crit_edge, %if.end14.if.end.i_crit_edge
  %sq = getelementptr i8, ptr %li.052, i32 -12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt.i40) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i41) #11
  %54 = call ptr @memset(ptr %40, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i42) #11
  %55 = ptrtoint ptr %iv.i42 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %pkt.i40, ptr %iv.i42, align 4
  %56 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 20, ptr %41, align 4
  %57 = ptrtoint ptr %pkt.i40 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 83886080, ptr %pkt.i40, align 4
  %58 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #11
  %61 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %42, align 4
  %62 = ptrtoint ptr %instance18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %instance18, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #11
  %65 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %45, align 4
  %66 = ptrtoint ptr %node3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %node3, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67) #11
  %69 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %44, align 4
  %70 = ptrtoint ptr %port.i45 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port.i45, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71) #11
  %73 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %43, align 4
  %74 = ptrtoint ptr %msg.i41 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %sq, ptr %msg.i41, align 8
  %75 = ptrtoint ptr %msg_namelen.i46 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 12, ptr %msg_namelen.i46, align 4
  %76 = load ptr, ptr @qrtr_ns, align 4
  %call.i47 = call i32 @kernel_sendmsg(ptr noundef %76, ptr noundef nonnull %msg.i41, ptr noundef nonnull %iv.i42, i32 noundef 1, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp.i48 = icmp slt i32 %call.i47, 0
  br i1 %cmp.i48, label %do.end.i49, label %if.end.i.lookup_notify.exit_crit_edge

if.end.i.lookup_notify.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_notify.exit

do.end.i49:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #16
  br label %lookup_notify.exit

lookup_notify.exit:                               ; preds = %do.end.i49, %if.end.i.lookup_notify.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i42) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i41) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt.i40) #11
  br label %for.inc

for.inc:                                          ; preds = %lookup_notify.exit, %land.lhs.true16.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %77 = ptrtoint ptr %li.052 to i32
  call void @__asan_load4_noabort(i32 %77)
  %li.0 = load ptr, ptr %li.052, align 4
  %cmp.i39.not = icmp eq ptr %li.0, getelementptr inbounds (%struct.anon.173, ptr @qrtr_ns, i32 0, i32 2)
  br i1 %cmp.i39.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_qrtr_ns_service_announce_del(i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_service_announce_del, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_qrtr_ns_service_announce_del, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !199

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !206
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_service_announce_del, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_service_announce_del, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_qrtr_ns_service_announce_del.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_qrtr_ns_service_announce_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 61, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %38 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_qrtr_ns_server_add(i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_server_add, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_qrtr_ns_server_add, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !199

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !194

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !208
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_server_add, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %service, i32 noundef %instance, i32 noundef %node, i32 noundef %port) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !194

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !184) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_qrtr_ns_server_add, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_qrtr_ns_server_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_qrtr_ns_server_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 87, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %38 = tail call i32 @llvm.read_register.i32(metadata !184) #11
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
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !179, !181, !182, !183}
!llvm.named.register.sp = !{!184}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__tracepoint_qrtr_ns_service_announce_new, !1, !"__tracepoint_qrtr_ns_service_announce_new", i1 false, i1 false}
!1 = !{!"../include/trace/events/qrtr.h", i32 11, i32 1}
!2 = !{ptr @__tracepoint_ptr_qrtr_ns_service_announce_new, !1, !"__tracepoint_ptr_qrtr_ns_service_announce_new", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_qrtr_ns_service_announce_new, !1, !"__SCK__tp_func_qrtr_ns_service_announce_new", i1 false, i1 false}
!4 = !{ptr @__tracepoint_qrtr_ns_service_announce_del, !5, !"__tracepoint_qrtr_ns_service_announce_del", i1 false, i1 false}
!5 = !{!"../include/trace/events/qrtr.h", i32 37, i32 1}
!6 = !{ptr @__tracepoint_ptr_qrtr_ns_service_announce_del, !5, !"__tracepoint_ptr_qrtr_ns_service_announce_del", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_qrtr_ns_service_announce_del, !5, !"__SCK__tp_func_qrtr_ns_service_announce_del", i1 false, i1 false}
!8 = !{ptr @__tracepoint_qrtr_ns_server_add, !9, !"__tracepoint_qrtr_ns_server_add", i1 false, i1 false}
!9 = !{!"../include/trace/events/qrtr.h", i32 63, i32 1}
!10 = !{ptr @__tracepoint_ptr_qrtr_ns_server_add, !9, !"__tracepoint_ptr_qrtr_ns_server_add", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_qrtr_ns_server_add, !9, !"__SCK__tp_func_qrtr_ns_server_add", i1 false, i1 false}
!12 = !{ptr @__tracepoint_qrtr_ns_message, !13, !"__tracepoint_qrtr_ns_message", i1 false, i1 false}
!13 = !{!"../include/trace/events/qrtr.h", i32 89, i32 1}
!14 = !{ptr @__tracepoint_ptr_qrtr_ns_message, !13, !"__tracepoint_ptr_qrtr_ns_message", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_qrtr_ns_message, !13, !"__SCK__tp_func_qrtr_ns_message", i1 false, i1 false}
!16 = !{ptr @event_class_qrtr_ns_service_announce_new, !1, !"event_class_qrtr_ns_service_announce_new", i1 false, i1 false}
!17 = !{ptr @event_qrtr_ns_service_announce_new, !1, !"event_qrtr_ns_service_announce_new", i1 false, i1 false}
!18 = !{ptr @__event_qrtr_ns_service_announce_new, !1, !"__event_qrtr_ns_service_announce_new", i1 false, i1 false}
!19 = !{ptr @event_class_qrtr_ns_service_announce_del, !5, !"event_class_qrtr_ns_service_announce_del", i1 false, i1 false}
!20 = !{ptr @event_qrtr_ns_service_announce_del, !5, !"event_qrtr_ns_service_announce_del", i1 false, i1 false}
!21 = !{ptr @__event_qrtr_ns_service_announce_del, !5, !"__event_qrtr_ns_service_announce_del", i1 false, i1 false}
!22 = !{ptr @event_class_qrtr_ns_server_add, !9, !"event_class_qrtr_ns_server_add", i1 false, i1 false}
!23 = !{ptr @event_qrtr_ns_server_add, !9, !"event_qrtr_ns_server_add", i1 false, i1 false}
!24 = !{ptr @__event_qrtr_ns_server_add, !9, !"__event_qrtr_ns_server_add", i1 false, i1 false}
!25 = !{ptr @event_class_qrtr_ns_message, !13, !"event_class_qrtr_ns_message", i1 false, i1 false}
!26 = !{ptr @event_qrtr_ns_message, !13, !"event_qrtr_ns_message", i1 false, i1 false}
!27 = !{ptr @__event_qrtr_ns_message, !13, !"__event_qrtr_ns_message", i1 false, i1 false}
!28 = !{ptr @__bpf_trace_tp_map_qrtr_ns_service_announce_new, !1, !"__bpf_trace_tp_map_qrtr_ns_service_announce_new", i1 false, i1 false}
!29 = !{ptr @__bpf_trace_tp_map_qrtr_ns_service_announce_del, !5, !"__bpf_trace_tp_map_qrtr_ns_service_announce_del", i1 false, i1 false}
!30 = !{ptr @__bpf_trace_tp_map_qrtr_ns_server_add, !9, !"__bpf_trace_tp_map_qrtr_ns_server_add", i1 false, i1 false}
!31 = !{ptr @__bpf_trace_tp_map_qrtr_ns_message, !13, !"__bpf_trace_tp_map_qrtr_ns_message", i1 false, i1 false}
!32 = !{ptr @qrtr_ns_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/qrtr/ns.c", i32 764, i32 2}
!34 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/qrtr/ns.c", i32 773, i32 3}
!37 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @qrtr_ns_init._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @qrtr_ns_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/qrtr/ns.c", i32 777, i32 38}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/qrtr/ns.c", i32 790, i32 3}
!45 = !{ptr @qrtr_ns_init._entry.5, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @qrtr_ns_init._entry_ptr.7, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @__ksymtab_qrtr_ns_init, !48, !"__ksymtab_qrtr_ns_init", i1 false, i1 false}
!48 = !{!"../net/qrtr/ns.c", i32 810, i32 1}
!49 = !{ptr @__ksymtab_qrtr_ns_remove, !50, !"__ksymtab_qrtr_ns_remove", i1 false, i1 false}
!50 = !{!"../net/qrtr/ns.c", i32 818, i32 1}
!51 = !{ptr @__UNIQUE_ID_author488, !52, !"__UNIQUE_ID_author488", i1 false, i1 false}
!52 = !{!"../net/qrtr/ns.c", i32 820, i32 1}
!53 = !{ptr @__UNIQUE_ID_description489, !54, !"__UNIQUE_ID_description489", i1 false, i1 false}
!54 = !{!"../net/qrtr/ns.c", i32 821, i32 1}
!55 = !{ptr @__UNIQUE_ID_file490, !56, !"__UNIQUE_ID_file490", i1 false, i1 false}
!56 = !{!"../net/qrtr/ns.c", i32 822, i32 1}
!57 = !{ptr @__UNIQUE_ID_license491, !56, !"__UNIQUE_ID_license491", i1 false, i1 false}
!58 = !{ptr @qrtr_ns, !59, !"qrtr_ns", i1 false, i1 false}
!59 = !{!"../net/qrtr/ns.c", i32 27, i32 3}
!60 = !{ptr @__tpstrtab_qrtr_ns_service_announce_new, !1, !"__tpstrtab_qrtr_ns_service_announce_new", i1 false, i1 false}
!61 = !{ptr @__tpstrtab_qrtr_ns_service_announce_del, !5, !"__tpstrtab_qrtr_ns_service_announce_del", i1 false, i1 false}
!62 = !{ptr @__tpstrtab_qrtr_ns_server_add, !9, !"__tpstrtab_qrtr_ns_server_add", i1 false, i1 false}
!63 = !{ptr @__tpstrtab_qrtr_ns_message, !13, !"__tpstrtab_qrtr_ns_message", i1 false, i1 false}
!64 = !{ptr @str__qrtr__trace_system_name, !65, !"str__qrtr__trace_system_name", i1 false, i1 false}
!65 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!66 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @trace_event_fields_qrtr_ns_service_announce_new, !1, !"trace_event_fields_qrtr_ns_service_announce_new", i1 false, i1 false}
!72 = !{ptr @trace_event_type_funcs_qrtr_ns_service_announce_new, !1, !"trace_event_type_funcs_qrtr_ns_service_announce_new", i1 false, i1 false}
!73 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @print_fmt_qrtr_ns_service_announce_new, !1, !"print_fmt_qrtr_ns_service_announce_new", i1 false, i1 false}
!75 = !{ptr @trace_event_fields_qrtr_ns_service_announce_del, !5, !"trace_event_fields_qrtr_ns_service_announce_del", i1 false, i1 false}
!76 = !{ptr @trace_event_type_funcs_qrtr_ns_service_announce_del, !5, !"trace_event_type_funcs_qrtr_ns_service_announce_del", i1 false, i1 false}
!77 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @print_fmt_qrtr_ns_service_announce_del, !5, !"print_fmt_qrtr_ns_service_announce_del", i1 false, i1 false}
!79 = !{ptr @trace_event_fields_qrtr_ns_server_add, !9, !"trace_event_fields_qrtr_ns_server_add", i1 false, i1 false}
!80 = !{ptr @trace_event_type_funcs_qrtr_ns_server_add, !9, !"trace_event_type_funcs_qrtr_ns_server_add", i1 false, i1 false}
!81 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @print_fmt_qrtr_ns_server_add, !9, !"print_fmt_qrtr_ns_server_add", i1 false, i1 false}
!83 = !{ptr @.str.16, !13, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.17, !13, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.18, !13, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.19, !13, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.20, !13, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.21, !13, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @trace_event_fields_qrtr_ns_message, !13, !"trace_event_fields_qrtr_ns_message", i1 false, i1 false}
!90 = !{ptr @trace_event_type_funcs_qrtr_ns_message, !13, !"trace_event_type_funcs_qrtr_ns_message", i1 false, i1 false}
!91 = !{ptr @.str.22, !13, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @print_fmt_qrtr_ns_message, !13, !"print_fmt_qrtr_ns_message", i1 false, i1 false}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/qrtr/ns.c", i32 691, i32 4}
!95 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @qrtr_ns_worker._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @qrtr_ns_worker._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/qrtr/ns.c", i32 746, i32 4}
!100 = !{ptr @qrtr_ns_worker._entry.25, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qrtr_ns_worker._entry_ptr.27, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/qrtr/ns.c", i32 30, i32 22}
!104 = !{ptr @.str.29, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/qrtr/ns.c", i32 31, i32 21}
!106 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/qrtr/ns.c", i32 32, i32 27}
!108 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/qrtr/ns.c", i32 33, i32 27}
!110 = !{ptr @.str.32, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/qrtr/ns.c", i32 34, i32 27}
!112 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/qrtr/ns.c", i32 35, i32 26}
!114 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/qrtr/ns.c", i32 36, i32 21}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/qrtr/ns.c", i32 37, i32 21}
!118 = !{ptr @.str.36, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/qrtr/ns.c", i32 38, i32 27}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/qrtr/ns.c", i32 39, i32 27}
!122 = !{ptr @qrtr_ctrl_pkt_strings, !123, !"qrtr_ctrl_pkt_strings", i1 false, i1 false}
!123 = !{!"../net/qrtr/ns.c", i32 29, i32 27}
!124 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!125 = !{ptr @.str.38, !13, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!127 = !{ptr @.str.39, !13, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!130 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/qrtr/ns.c", i32 217, i32 4}
!133 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @announce_servers._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @announce_servers._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/qrtr/ns.c", i32 18, i32 8}
!138 = !{ptr @nodes, !137, !"nodes", i1 false, i1 false}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!141 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../include/linux/radix-tree.h", i32 179, i32 9}
!145 = !{ptr @.str.46, !144, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!148 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!150 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/qrtr/ns.c", i32 407, i32 4}
!153 = !{ptr @.str.49, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @ctrl_cmd_bye._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @ctrl_cmd_bye._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.50, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/qrtr/ns.c", i32 156, i32 3}
!158 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @service_announce_del._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @service_announce_del._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!162 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!163 = !{ptr @.str.52, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/qrtr/ns.c", i32 187, i32 3}
!165 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @lookup_notify._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @lookup_notify._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.54, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/qrtr/ns.c", i32 494, i32 4}
!170 = !{ptr @.str.55, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @ctrl_cmd_del_client._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @ctrl_cmd_del_client._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.56, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../net/qrtr/ns.c", i32 527, i32 4}
!175 = !{ptr @ctrl_cmd_new_server._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ctrl_cmd_new_server._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!178 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!179 = !{ptr @.str.57, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/qrtr/ns.c", i32 323, i32 3}
!181 = !{ptr @.str.58, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @say_hello._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @say_hello._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{!"sp"}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{!"branch_weights", i32 2000, i32 1}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{!"auto-init"}
!197 = !{i64 2149373107}
!198 = !{i64 2149373373}
!199 = !{i64 2148970325, i64 2148970330, i64 2148970343, i64 2148970387, i64 2148970421, i64 2148970442}
!200 = !{i64 2156961847}
!201 = !{i64 2156962100}
!202 = !{i64 2149381666}
!203 = !{i64 2149382702}
!204 = !{i64 2156904453}
!205 = !{i64 2156904730}
!206 = !{i64 2156922680}
!207 = !{i64 2156922957}
!208 = !{i64 2156940527}
!209 = !{i64 2156940784}
