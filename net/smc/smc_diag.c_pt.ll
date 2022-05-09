; ModuleID = '/llk/IR_all_yes/net/smc/smc_diag.c_pt.bc'
source_filename = "../net/smc/smc_diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sock_diag_handler = type { i8, ptr, ptr, ptr }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.105, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.105 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, i32, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.98, %union.anon.100, %union.anon.101, i16, i8, i8, i32, %union.anon.103, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.106, [0 x i32], %union.anon.107, i16, i16, %union.anon.108, %struct.refcount_struct, [0 x i32], %union.anon.109 }
%union.anon.98 = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.103 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { %struct.hlist_node }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.97, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.97 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
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
%struct.smc_diag_fallback = type { i32, i32 }
%struct.smc_diag_conninfo = type { i32, i32, i32, i32, %struct.smc_diag_cursor, %struct.smc_diag_cursor, %struct.smc_diag_cursor, %struct.smc_diag_cursor, i8, i8, i8, i8, %struct.smc_diag_cursor, %struct.smc_diag_cursor, %struct.smc_diag_cursor }
%struct.smc_diag_cursor = type { i16, i16, i32 }
%struct.smc_diag_lgrinfo = type { [1 x %struct.smc_diag_linkinfo], i8 }
%struct.smc_diag_linkinfo = type { i8, [64 x i8], i8, [40 x i8], [40 x i8] }
%struct.smcd_diag_dmbinfo = type { i32, i64, i64, i64, i64 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.114 }
%union.anon.114 = type { [6 x i32], [24 x i8] }
%struct.smc_hashinfo = type { %struct.rwlock_t, %struct.hlist_head }
%struct.smc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, ptr, %struct.smc_connection, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i8, i32, i32, i32, i8, %struct.mutex }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.110, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.111, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.112, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.110 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.111 = type { ptr }
%union.anon.112 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.smc_connection = type { %struct.rb_node, ptr, ptr, i32, i8, i32, %struct.atomic_t, i32, ptr, ptr, i32, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %struct.atomic_t, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.delayed_work, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, i32, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.tasklet_struct, i8, i64, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.smc_host_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_host_cursor, %union.smc_host_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%struct.smc_wr_rx_hdr = type { %union.anon.179 }
%union.anon.179 = type { i8 }
%struct.smc_cdc_producer_flags = type { i8 }
%struct.smc_cdc_conn_state_flags = type { i8 }
%union.smc_host_cursor = type { %struct.atomic64_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.174, i32 }
%union.anon.174 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.anon.102 = type { i16, i16 }
%struct.anon.99 = type { i32, i32 }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.165 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64 }
%union.anon.165 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.161, ptr, i32, i32, i32, %union.anon.162 }
%union.anon.161 = type { i64 }
%union.anon.162 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.smc_rtoken = type { i64, i32 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.file = type { %union.anon.43, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.43 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.55 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.55 = type { %struct.callback_head }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.176 }
%union.anon.176 = type { %struct.anon.178, [40 x i8] }
%struct.anon.178 = type { i16, i64, i32 }
%struct.anon.181 = type { i16, i16, i32 }
%struct.smc_ib_device = type { %struct.list_head, ptr, [2 x %struct.ib_port_attr], %struct.ib_event_handler, ptr, ptr, %struct.tasklet_struct, %struct.tasklet_struct, [2 x [6 x i8]], [2 x [16 x i8]], [2 x i8], i8, %struct.work_struct, i32, [1 x i32], %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, [2 x %struct.atomic_t], [2 x i32] }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.173 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.smcd_dev = type { ptr, %struct.device, ptr, i64, %struct.list_head, %struct.spinlock, ptr, %struct.list_head, ptr, [16 x i8], i8, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, i8 }

@smc_diag_handler = internal constant { %struct.sock_diag_handler, [16 x i8] } { %struct.sock_diag_handler { i8 43, ptr @smc_diag_handler_dump, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_smc_diag__496_267_smc_diag_init6 = internal global ptr @smc_diag_init, section ".initcall6.init", align 4
@__exitcall_smc_diag_exit = internal global ptr @smc_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file497 = internal constant [31 x i8] c"smc_diag.file=net/smc/smc_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license498 = internal constant [21 x i8] c"smc_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias499 = internal constant [41 x i8] c"smc_diag.alias=net-pf-16-proto-4-type-43\00", section ".modinfo", align 1
@__const.smc_diag_handler_dump.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @smc_diag_dump, ptr null, ptr null, ptr null, i32 32512 }, align 4
@smc_proto = external dso_local global %struct.proto, align 4
@smc_proto6 = external dso_local global %struct.proto, align 4
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%04x:%04x:%04x:%04x:%04x:%04x:%04x:%04x\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"smc_diag_handler\00", align 1
@___asan_gen_.3 = private constant [22 x i8] c"../net/smc/smc_diag.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 252, i32 39 }
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"../net/smc/smc_core.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 456, i32 15 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 991, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias499, ptr @__UNIQUE_ID_file497, ptr @__UNIQUE_ID_license498, ptr @__exitcall_smc_diag_exit, ptr @__initcall__kmod_smc_diag__496_267_smc_diag_init6, ptr @smc_diag_exit, ptr @smc_diag_handler, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_diag_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smc_diag_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sock_diag_unregister(ptr noundef nonnull @smc_diag_handler) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_diag_register(ptr noundef nonnull @smc_diag_handler) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_diag_handler_dump(ptr noundef %skb, ptr noundef %h) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %h, i32 0, i32 1
  %5 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nlmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %6)
  %cmp = icmp eq i16 %6, 20
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %h, i32 0, i32 2
  %7 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nlmsg_flags, align 2
  %9 = and i16 %8, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %netlink_dump_start.exit

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

netlink_dump_start.exit:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #5
  %10 = call ptr @memcpy(ptr %c, ptr @__const.smc_diag_handler_dump.c, i32 24)
  %diag_nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 54
  %11 = ptrtoint ptr %diag_nlsk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %diag_nlsk, align 8
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %13 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %12, ptr noundef %skb, ptr noundef %h, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #5
  br label %cleanup

cleanup:                                          ; preds = %netlink_dump_start.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_diag_dump(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smc_diag_dump_proto(ptr noundef nonnull @smc_proto, ptr noundef %skb, ptr noundef %cb, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @smc_diag_dump_proto(ptr noundef nonnull @smc_proto6, ptr noundef %skb, ptr noundef %cb, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_diag_dump_proto(ptr nocapture noundef readonly %prot, ptr noundef %skb, ptr nocapture noundef %cb, i32 noundef %p_type) unnamed_addr #2 align 64 {
entry:
  %tmp.i.i.i = alloca i8, align 1
  %fallback.i = alloca %struct.smc_diag_fallback, align 4
  %cinfo.i = alloca %struct.smc_diag_conninfo, align 4
  %linfo.i = alloca %struct.smc_diag_lgrinfo, align 1
  %dinfo.i = alloca %struct.smcd_diag_dmbinfo, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr [2 x i32], ptr %0, i32 0, i32 %p_type
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %h = getelementptr inbounds %struct.proto, ptr %prot, i32 0, i32 50
  %8 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %h, align 4
  tail call void @_raw_read_lock(ptr noundef %9) #5
  %10 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %h, align 4
  %ht = getelementptr inbounds %struct.smc_hashinfo, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ht, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %13, i32 -84
  %tobool6.not82 = icmp eq ptr %add.ptr, null
  br i1 %tobool6.not82, label %if.end.out_crit_edge, label %for.body.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body.lr.ph:                                   ; preds = %if.end
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %14 = getelementptr inbounds %struct.smc_diag_fallback, ptr %fallback.i, i32 0, i32 1
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %15 = getelementptr inbounds i8, ptr %cinfo.i, i32 4
  %rmbe_size.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 2
  %peer_rmbe_size.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 3
  %rx_prod.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 4
  %wrap.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 4, i32 1
  %count.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 4, i32 2
  %rx_cons.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 5
  %wrap55.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 5, i32 1
  %count58.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 5, i32 2
  %tx_prod.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 6
  %wrap63.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 6, i32 1
  %count66.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 6, i32 2
  %tx_cons.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 7
  %wrap71.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 7, i32 1
  %count75.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 7, i32 2
  %rx_prod_flags.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 8
  %rx_conn_state_flags.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 9
  %tx_prod_flags.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 10
  %tx_conn_state_flags.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 11
  %tx_prep.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 12
  %wrap86.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 12, i32 1
  %count88.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 12, i32 2
  %tx_sent.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 13
  %wrap92.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 13, i32 1
  %count94.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 13, i32 2
  %tx_fin.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 14
  %wrap98.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 14, i32 1
  %count100.i = getelementptr inbounds %struct.smc_diag_conninfo, ptr %cinfo.i, i32 0, i32 14, i32 2
  %16 = getelementptr inbounds i8, ptr %linfo.i, i32 66
  %ibport.i = getelementptr inbounds %struct.smc_diag_linkinfo, ptr %linfo.i, i32 0, i32 2
  %role.i = getelementptr inbounds %struct.smc_diag_lgrinfo, ptr %linfo.i, i32 0, i32 1
  %ibname.i = getelementptr inbounds %struct.smc_diag_linkinfo, ptr %linfo.i, i32 0, i32 1
  %peer_gid.i = getelementptr inbounds %struct.smc_diag_linkinfo, ptr %linfo.i, i32 0, i32 4
  %peer_gid190.i = getelementptr inbounds %struct.smcd_diag_dmbinfo, ptr %dinfo.i, i32 0, i32 1
  %my_gid.i = getelementptr inbounds %struct.smcd_diag_dmbinfo, ptr %dinfo.i, i32 0, i32 2
  %token194.i = getelementptr inbounds %struct.smcd_diag_dmbinfo, ptr %dinfo.i, i32 0, i32 3
  %peer_token195.i = getelementptr inbounds %struct.smcd_diag_dmbinfo, ptr %dinfo.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sk.089 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr26, %for.inc.for.body_crit_edge ]
  %num.083 = phi i32 [ 0, %for.body.lr.ph ], [ %num.1, %for.inc.for.body_crit_edge ]
  %skc_net.i52 = getelementptr inbounds %struct.sock_common, ptr %sk.089, i32 0, i32 9
  %17 = ptrtoint ptr %skc_net.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_net.i52, align 4
  %cmp.i.not = icmp eq ptr %18, %5
  br i1 %cmp.i.not, label %if.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %num.083, i32 %7)
  %cmp = icmp slt i32 %num.083, %7
  br i1 %cmp, label %if.end11.next_crit_edge, label %if.end13

if.end11.next_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %next

if.end13:                                         ; preds = %if.end11
  %19 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nlh, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fallback.i) #5
  %21 = ptrtoint ptr %fallback.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %fallback.i, align 4, !annotation !24
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %14, align 4, !annotation !24
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cb, align 4
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 12
  %25 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %portid.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %20, i32 0, i32 3
  %27 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nlmsg_seq.i, align 4
  %nlmsg_type.i = getelementptr inbounds %struct.nlmsghdr, ptr %20, i32 0, i32 1
  %29 = ptrtoint ptr %nlmsg_type.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nlmsg_type.i, align 4
  %conv.i53 = zext i16 %30 to i32
  %31 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end13.__smc_diag_dump.exit.thread_crit_edge

if.end13.__smc_diag_dump.exit.thread_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %__smc_diag_dump.exit.thread

skb_tailroom.exit.i.i:                            ; preds = %if.end13
  %33 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i.i, align 4
  %35 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 80
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.__smc_diag_dump.exit.thread_crit_edge, label %nlmsg_put.exit.i, !prof !25

skb_tailroom.exit.i.i.__smc_diag_dump.exit.thread_crit_edge: ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__smc_diag_dump.exit.thread

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %26, i32 noundef %28, i32 noundef %conv.i53, i32 noundef 64, i32 noundef 2) #5
  %tobool.not.i54 = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i54, label %nlmsg_put.exit.i.__smc_diag_dump.exit.thread_crit_edge, label %if.end.i

nlmsg_put.exit.i.__smc_diag_dump.exit.thread_crit_edge: ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__smc_diag_dump.exit.thread

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %37 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 64)
  %skc_family.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.089, i32 0, i32 3
  %38 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %skc_family.i.i, align 8
  %conv.i.i = trunc i16 %39 to i8
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i.i, ptr %add.ptr.i.i, align 8
  %idiag_cookie.i.i = getelementptr i8, ptr %call3.i.i, i32 60
  call void @sock_diag_save_cookie(ptr noundef nonnull %sk.089, ptr noundef %idiag_cookie.i.i) #5
  %clcsock.i.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 1
  %41 = ptrtoint ptr %clcsock.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clcsock.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.smc_diag_msg_common_fill.exit.i_crit_edge, label %if.end.i3.i

if.end.i.smc_diag_msg_common_fill.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smc_diag_msg_common_fill.exit.i

if.end.i3.i:                                      ; preds = %if.end.i
  %id.i.i = getelementptr i8, ptr %call3.i.i, i32 20
  %sk2.i.i = getelementptr inbounds %struct.socket, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %sk2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sk2.i.i, align 16
  %45 = getelementptr inbounds %struct.sock_common, ptr %44, i32 0, i32 2
  %skc_num.i.i = getelementptr inbounds %struct.anon.102, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %skc_num.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %skc_num.i.i, align 2
  %48 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %id.i.i, align 4
  %49 = ptrtoint ptr %clcsock.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clcsock.i.i, align 8
  %sk6.i.i = getelementptr inbounds %struct.socket, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %sk6.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sk6.i.i, align 16
  %53 = getelementptr inbounds %struct.sock_common, ptr %52, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 4
  %idiag_dport.i.i = getelementptr i8, ptr %call3.i.i, i32 22
  %56 = ptrtoint ptr %idiag_dport.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %idiag_dport.i.i, align 2
  %57 = load ptr, ptr %clcsock.i.i, align 8
  %sk10.i.i = getelementptr inbounds %struct.socket, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %sk10.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk10.i.i, align 16
  %skc_bound_dev_if.i.i = getelementptr inbounds %struct.sock_common, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %skc_bound_dev_if.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %skc_bound_dev_if.i.i, align 4
  %idiag_if.i.i = getelementptr i8, ptr %call3.i.i, i32 56
  %62 = ptrtoint ptr %idiag_if.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %idiag_if.i.i, align 4
  %sk_protocol.i.i = getelementptr inbounds %struct.sock, ptr %sk.089, i32 0, i32 46
  %63 = ptrtoint ptr %sk_protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %sk_protocol.i.i, align 4
  %65 = zext i16 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i16 %64, label %if.end.i3.i.smc_diag_msg_common_fill.exit.i_crit_edge [
    i16 0, label %if.then15.i.i
    i16 1, label %if.then29.i.i
  ]

if.end.i3.i.smc_diag_msg_common_fill.exit.i_crit_edge: ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smc_diag_msg_common_fill.exit.i

if.then15.i.i:                                    ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %clcsock.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clcsock.i.i, align 8
  %sk17.i.i = getelementptr inbounds %struct.socket, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %sk17.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sk17.i.i, align 16
  %skc_rcv_saddr.i.i = getelementptr inbounds %struct.anon.99, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %skc_rcv_saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %skc_rcv_saddr.i.i, align 4
  %idiag_src.i.i = getelementptr i8, ptr %call3.i.i, i32 24
  %72 = ptrtoint ptr %idiag_src.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %idiag_src.i.i, align 4
  %73 = load ptr, ptr %clcsock.i.i, align 8
  %sk21.i.i = getelementptr inbounds %struct.socket, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %sk21.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sk21.i.i, align 16
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %idiag_dst.i.i = getelementptr i8, ptr %call3.i.i, i32 40
  %78 = ptrtoint ptr %idiag_dst.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %idiag_dst.i.i, align 4
  br label %smc_diag_msg_common_fill.exit.i

if.then29.i.i:                                    ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #7
  %idiag_src31.i.i = getelementptr i8, ptr %call3.i.i, i32 24
  %79 = ptrtoint ptr %clcsock.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clcsock.i.i, align 8
  %sk33.i.i = getelementptr inbounds %struct.socket, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %sk33.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sk33.i.i, align 16
  %skc_v6_rcv_saddr.i.i = getelementptr inbounds %struct.sock_common, ptr %82, i32 0, i32 11
  %83 = call ptr @memcpy(ptr %idiag_src31.i.i, ptr %skc_v6_rcv_saddr.i.i, i32 16)
  %idiag_dst36.i.i = getelementptr i8, ptr %call3.i.i, i32 40
  %84 = load ptr, ptr %clcsock.i.i, align 8
  %sk38.i.i = getelementptr inbounds %struct.socket, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %sk38.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sk38.i.i, align 16
  %skc_v6_daddr.i.i = getelementptr inbounds %struct.sock_common, ptr %86, i32 0, i32 10
  %87 = call ptr @memcpy(ptr %idiag_dst36.i.i, ptr %skc_v6_daddr.i.i, i32 16)
  br label %smc_diag_msg_common_fill.exit.i

smc_diag_msg_common_fill.exit.i:                  ; preds = %if.then29.i.i, %if.then15.i.i, %if.end.i3.i.smc_diag_msg_common_fill.exit.i_crit_edge, %if.end.i.smc_diag_msg_common_fill.exit.i_crit_edge
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.089, i32 0, i32 4
  %88 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load volatile i8, ptr %skc_state.i, align 2
  %diag_state.i = getelementptr i8, ptr %call3.i.i, i32 17
  %90 = ptrtoint ptr %diag_state.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %diag_state.i, align 1
  %use_fallback.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 13
  %91 = ptrtoint ptr %use_fallback.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %use_fallback.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool7.not.i = icmp eq i8 %92, 0
  br i1 %tobool7.not.i, label %if.else.i, label %smc_diag_msg_common_fill.exit.i.if.end17.i_crit_edge

smc_diag_msg_common_fill.exit.i.if.end17.i_crit_edge: ; preds = %smc_diag_msg_common_fill.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.else.i:                                        ; preds = %smc_diag_msg_common_fill.exit.i
  %lgr.i.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 1
  %93 = ptrtoint ptr %lgr.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lgr.i.i, align 4
  %tobool.not.i4.i = icmp eq ptr %94, null
  br i1 %tobool.not.i4.i, label %if.else.i.if.else15.i_crit_edge, label %smc_conn_lgr_valid.exit.i

if.else.i.if.else15.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else15.i

smc_conn_lgr_valid.exit.i:                        ; preds = %if.else.i
  %alert_token_local.i.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 3
  %95 = ptrtoint ptr %alert_token_local.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %alert_token_local.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool1.i.not.i = icmp eq i32 %96, 0
  br i1 %tobool1.i.not.i, label %smc_conn_lgr_valid.exit.i.if.else15.i_crit_edge, label %land.lhs.true.i

smc_conn_lgr_valid.exit.i.if.else15.i_crit_edge:  ; preds = %smc_conn_lgr_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else15.i

land.lhs.true.i:                                  ; preds = %smc_conn_lgr_valid.exit.i
  %is_smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %94, i32 0, i32 15
  %97 = ptrtoint ptr %is_smcd.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %is_smcd.i, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool12.not.i = icmp eq i8 %98, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.else15.i_crit_edge, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

land.lhs.true.i.if.else15.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else15.i

if.else15.i:                                      ; preds = %land.lhs.true.i.if.else15.i_crit_edge, %smc_conn_lgr_valid.exit.i.if.else15.i_crit_edge, %if.else.i.if.else15.i_crit_edge
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else15.i, %land.lhs.true.i.if.end17.i_crit_edge, %smc_diag_msg_common_fill.exit.i.if.end17.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.else15.i ], [ 1, %smc_diag_msg_common_fill.exit.i.if.end17.i_crit_edge ], [ 2, %land.lhs.true.i.if.end17.i_crit_edge ]
  %99 = getelementptr i8, ptr %call3.i.i, i32 18
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %.sink.i, ptr %99, align 2
  %101 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cb, align 4
  %sk20.i = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 3, i32 24
  %103 = ptrtoint ptr %sk20.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sk20.i, align 8
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %104, i32 0, i32 71
  %105 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sk_socket.i.i, align 8
  %file.i.i = getelementptr inbounds %struct.socket, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %file.i.i, align 4
  %f_cred.i.i = getelementptr inbounds %struct.file, ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %f_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %f_cred.i.i, align 8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %110, i32 0, i32 25
  %111 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %user_ns.i.i, align 4
  %sk_shutdown.i.i = getelementptr inbounds %struct.sock, ptr %sk.089, i32 0, i32 66
  %113 = ptrtoint ptr %sk_shutdown.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %sk_shutdown.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #5
  %115 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %tmp.i.i.i, align 1
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i5.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i5.i, label %if.end25.i, label %if.end17.i.if.then.i.i.i_crit_edge

if.end17.i.if.then.i.i.i_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.end25.i:                                       ; preds = %if.end17.i
  %call1.i.i = call i32 @sock_i_uid(ptr noundef nonnull %sk.089) #5
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %call1.i.i, 0
  %call3.i6.i = call i32 @from_kuid_munged(ptr noundef %112, [1 x i32] %.fca.0.insert.i.i) #5
  %diag_uid.i.i = getelementptr i8, ptr %call3.i.i, i32 68
  %116 = ptrtoint ptr %diag_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call3.i6.i, ptr %diag_uid.i.i, align 4
  %call4.i.i = call i32 @sock_i_ino(ptr noundef nonnull %sk.089) #5
  %conv.i7.i = zext i32 %call4.i.i to i64
  %diag_inode.i.i = getelementptr i8, ptr %call3.i.i, i32 72
  %117 = ptrtoint ptr %diag_inode.i.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv.i7.i, ptr %diag_inode.i.i, align 8
  %fallback_rsn.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 14
  %118 = ptrtoint ptr %fallback_rsn.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fallback_rsn.i, align 8
  %120 = ptrtoint ptr %fallback.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %fallback.i, align 4
  %peer_diagnosis.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 15
  %121 = ptrtoint ptr %peer_diagnosis.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %peer_diagnosis.i, align 4
  %123 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %14, align 4
  %call27.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %fallback.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp.i55 = icmp slt i32 %call27.i, 0
  br i1 %cmp.i55, label %if.end25.i.if.then.i.i.i_crit_edge, label %if.end30.i

if.end25.i.if.then.i.i.i_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.end30.i:                                       ; preds = %if.end25.i
  %diag_ext.i = getelementptr i8, ptr %20, i32 19
  %124 = ptrtoint ptr %diag_ext.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %diag_ext.i, align 1
  %126 = and i8 %125, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool32.not.i = icmp eq i8 %126, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end109.i_crit_edge, label %land.lhs.true33.i

if.end30.i.if.end109.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109.i

land.lhs.true33.i:                                ; preds = %if.end30.i
  %alert_token_local.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 3
  %127 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool35.not.i = icmp eq i32 %128, 0
  br i1 %tobool35.not.i, label %land.lhs.true33.i.if.end109.i_crit_edge, label %if.then36.i

land.lhs.true33.i.if.end109.i_crit_edge:          ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109.i

if.then36.i:                                      ; preds = %land.lhs.true33.i
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cinfo.i) #5
  %129 = call ptr @memset(ptr %15, i32 255, i32 72)
  %130 = ptrtoint ptr %cinfo.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %128, ptr %cinfo.i, align 4
  %sndbuf_desc.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 8
  %131 = ptrtoint ptr %sndbuf_desc.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sndbuf_desc.i, align 8
  %tobool40.not.i = icmp eq ptr %132, null
  br i1 %tobool40.not.i, label %if.then36.i.cond.end.i_crit_edge, label %cond.true.i

if.then36.i.cond.end.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #7
  %len.i = getelementptr inbounds %struct.smc_buf_desc, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then36.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %134, %cond.true.i ], [ 0, %if.then36.i.cond.end.i_crit_edge ]
  %135 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %cond.i, ptr %15, align 4
  %rmb_desc.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 9
  %136 = ptrtoint ptr %rmb_desc.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rmb_desc.i, align 4
  %tobool42.not.i = icmp eq ptr %137, null
  br i1 %tobool42.not.i, label %cond.end.i.cond.end47.i_crit_edge, label %cond.true43.i

cond.end.i.cond.end47.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end47.i

cond.true43.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %len45.i = getelementptr inbounds %struct.smc_buf_desc, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %len45.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len45.i, align 8
  br label %cond.end47.i

cond.end47.i:                                     ; preds = %cond.true43.i, %cond.end.i.cond.end47.i_crit_edge
  %cond48.i = phi i32 [ %139, %cond.true43.i ], [ 0, %cond.end.i.cond.end47.i_crit_edge ]
  %140 = ptrtoint ptr %rmbe_size.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %cond48.i, ptr %rmbe_size.i, align 4
  %peer_rmbe_size49.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 5
  %141 = ptrtoint ptr %peer_rmbe_size49.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %peer_rmbe_size49.i, align 4
  %143 = ptrtoint ptr %peer_rmbe_size.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %peer_rmbe_size.i, align 4
  %144 = ptrtoint ptr %rx_prod.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %rx_prod.i, align 4
  %prod.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 25, i32 4
  %wrap50.i = getelementptr inbounds %struct.anon.181, ptr %prod.i, i32 0, i32 1
  %145 = ptrtoint ptr %wrap50.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %wrap50.i, align 2
  %147 = ptrtoint ptr %wrap.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %wrap.i, align 2
  %count53.i = getelementptr inbounds %struct.anon.181, ptr %prod.i, i32 0, i32 2
  %148 = ptrtoint ptr %count53.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %count53.i, align 4
  %150 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %count.i, align 4
  %151 = ptrtoint ptr %rx_cons.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %rx_cons.i, align 4
  %cons.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 25, i32 5
  %wrap57.i = getelementptr inbounds %struct.anon.181, ptr %cons.i, i32 0, i32 1
  %152 = ptrtoint ptr %wrap57.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %wrap57.i, align 2
  %154 = ptrtoint ptr %wrap55.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %wrap55.i, align 2
  %count61.i = getelementptr inbounds %struct.anon.181, ptr %cons.i, i32 0, i32 2
  %155 = ptrtoint ptr %count61.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %count61.i, align 4
  %157 = ptrtoint ptr %count58.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %count58.i, align 4
  %158 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %tx_prod.i, align 4
  %prod64.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 12, i32 4
  %wrap65.i = getelementptr inbounds %struct.anon.181, ptr %prod64.i, i32 0, i32 1
  %159 = ptrtoint ptr %wrap65.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %wrap65.i, align 2
  %161 = ptrtoint ptr %wrap63.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %wrap63.i, align 2
  %count69.i = getelementptr inbounds %struct.anon.181, ptr %prod64.i, i32 0, i32 2
  %162 = ptrtoint ptr %count69.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %count69.i, align 4
  %164 = ptrtoint ptr %count66.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %count66.i, align 4
  %165 = ptrtoint ptr %tx_cons.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %tx_cons.i, align 4
  %cons73.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 12, i32 5
  %wrap74.i = getelementptr inbounds %struct.anon.181, ptr %cons73.i, i32 0, i32 1
  %166 = ptrtoint ptr %wrap74.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %wrap74.i, align 2
  %168 = ptrtoint ptr %wrap71.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %wrap71.i, align 2
  %count78.i = getelementptr inbounds %struct.anon.181, ptr %cons73.i, i32 0, i32 2
  %169 = ptrtoint ptr %count78.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %count78.i, align 4
  %171 = ptrtoint ptr %count75.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %count75.i, align 4
  %prod_flags.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 25, i32 6
  %172 = ptrtoint ptr %prod_flags.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %prod_flags.i, align 8
  %174 = ptrtoint ptr %rx_prod_flags.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %rx_prod_flags.i, align 4
  %conn_state_flags.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 25, i32 7
  %175 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %conn_state_flags.i, align 1
  %177 = ptrtoint ptr %rx_conn_state_flags.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %rx_conn_state_flags.i, align 1
  %prod_flags82.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 12, i32 6
  %178 = ptrtoint ptr %prod_flags82.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %prod_flags82.i, align 8
  %180 = ptrtoint ptr %tx_prod_flags.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %tx_prod_flags.i, align 2
  %conn_state_flags84.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 12, i32 7
  %181 = ptrtoint ptr %conn_state_flags84.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %conn_state_flags84.i, align 1
  %183 = ptrtoint ptr %tx_conn_state_flags.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %tx_conn_state_flags.i, align 1
  %184 = ptrtoint ptr %tx_prep.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %tx_prep.i, align 4
  %tx_curs_prep.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 14
  %wrap87.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_prep.i, i32 0, i32 1
  %185 = ptrtoint ptr %wrap87.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %wrap87.i, align 2
  %187 = ptrtoint ptr %wrap86.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %186, ptr %wrap86.i, align 2
  %count90.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_prep.i, i32 0, i32 2
  %188 = ptrtoint ptr %count90.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %count90.i, align 4
  %190 = ptrtoint ptr %count88.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %count88.i, align 4
  %191 = ptrtoint ptr %tx_sent.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %tx_sent.i, align 4
  %tx_curs_sent.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 15
  %wrap93.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_sent.i, i32 0, i32 1
  %192 = ptrtoint ptr %wrap93.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %wrap93.i, align 2
  %194 = ptrtoint ptr %wrap92.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %wrap92.i, align 2
  %count96.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_sent.i, i32 0, i32 2
  %195 = ptrtoint ptr %count96.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %count96.i, align 4
  %197 = ptrtoint ptr %count94.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %count94.i, align 4
  %198 = ptrtoint ptr %tx_fin.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 0, ptr %tx_fin.i, align 4
  %tx_curs_fin.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 16
  %wrap99.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_fin.i, i32 0, i32 1
  %199 = ptrtoint ptr %wrap99.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %wrap99.i, align 2
  %201 = ptrtoint ptr %wrap98.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %200, ptr %wrap98.i, align 2
  %count102.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_fin.i, i32 0, i32 2
  %202 = ptrtoint ptr %count102.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %count102.i, align 4
  %204 = ptrtoint ptr %count100.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %count100.i, align 4
  %call103.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 76, ptr noundef nonnull %cinfo.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %cmp104.i = icmp slt i32 %call103.i, 0
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cinfo.i) #5
  br i1 %cmp104.i, label %cond.end47.i.if.then.i.i.i_crit_edge, label %cond.end47.i.if.end109.i_crit_edge

cond.end47.i.if.end109.i_crit_edge:               ; preds = %cond.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109.i

cond.end47.i.if.then.i.i.i_crit_edge:             ; preds = %cond.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.end109.i:                                      ; preds = %cond.end47.i.if.end109.i_crit_edge, %land.lhs.true33.i.if.end109.i_crit_edge, %if.end30.i.if.end109.i_crit_edge
  %lgr.i10.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 1
  %205 = ptrtoint ptr %lgr.i10.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %lgr.i10.i, align 4
  %tobool.not.i11.i = icmp eq ptr %206, null
  br i1 %tobool.not.i11.i, label %if.end109.i.__smc_diag_dump.exit_crit_edge, label %smc_conn_lgr_valid.exit15.i

if.end109.i.__smc_diag_dump.exit_crit_edge:       ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__smc_diag_dump.exit

smc_conn_lgr_valid.exit15.i:                      ; preds = %if.end109.i
  %alert_token_local.i12.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 3
  %207 = ptrtoint ptr %alert_token_local.i12.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %alert_token_local.i12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool1.i13.not.i = icmp eq i32 %208, 0
  br i1 %tobool1.i13.not.i, label %smc_conn_lgr_valid.exit15.i.if.end162.i_crit_edge, label %land.lhs.true113.i

smc_conn_lgr_valid.exit15.i.if.end162.i_crit_edge: ; preds = %smc_conn_lgr_valid.exit15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162.i

land.lhs.true113.i:                               ; preds = %smc_conn_lgr_valid.exit15.i
  %is_smcd116.i = getelementptr inbounds %struct.smc_link_group, ptr %206, i32 0, i32 15
  %209 = ptrtoint ptr %is_smcd116.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %is_smcd116.i, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool117.not.i = icmp eq i8 %210, 0
  br i1 %tobool117.not.i, label %land.lhs.true118.i, label %land.lhs.true113.i.smc_conn_lgr_valid.exit23.i_crit_edge

land.lhs.true113.i.smc_conn_lgr_valid.exit23.i_crit_edge: ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smc_conn_lgr_valid.exit23.i

land.lhs.true118.i:                               ; preds = %land.lhs.true113.i
  %211 = ptrtoint ptr %diag_ext.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %diag_ext.i, align 1
  %213 = and i8 %212, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool122.not.i = icmp eq i8 %213, 0
  br i1 %tobool122.not.i, label %land.lhs.true118.i.if.end162.i_crit_edge, label %land.lhs.true123.i

land.lhs.true118.i.if.end162.i_crit_edge:         ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162.i

land.lhs.true123.i:                               ; preds = %land.lhs.true118.i
  %214 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile ptr, ptr %206, align 4
  %cmp.i16.not.i = icmp eq ptr %215, %206
  br i1 %cmp.i16.not.i, label %land.lhs.true123.i.if.end162.i_crit_edge, label %if.then128.i

land.lhs.true123.i.if.end162.i_crit_edge:         ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162.i

if.then128.i:                                     ; preds = %land.lhs.true123.i
  %lnk.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 2
  %216 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %lnk.i, align 8
  call void @llvm.lifetime.start.p0(i64 147, ptr nonnull %linfo.i) #5
  %218 = call ptr @memset(ptr %16, i32 0, i32 80)
  %link_id131.i = getelementptr inbounds %struct.smc_link, ptr %217, i32 0, i32 43
  %219 = ptrtoint ptr %link_id131.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %link_id131.i, align 2
  %221 = ptrtoint ptr %linfo.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %linfo.i, align 1
  %ibport132.i = getelementptr inbounds %struct.smc_link, ptr %217, i32 0, i32 1
  %222 = ptrtoint ptr %ibport132.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %ibport132.i, align 4
  %224 = ptrtoint ptr %ibport.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %ibport.i, align 1
  %225 = getelementptr inbounds %struct.smc_link_group, ptr %206, i32 0, i32 21
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %225, align 8
  %conv136.i = trunc i32 %227 to i8
  %228 = ptrtoint ptr %role.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv136.i, ptr %role.i, align 1
  %lnk140.i = getelementptr inbounds %struct.smc_link_group, ptr %206, i32 0, i32 21, i32 0, i32 1
  %229 = ptrtoint ptr %lnk140.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %lnk140.i, align 8
  %ibdev.i = getelementptr inbounds %struct.smc_ib_device, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ibdev.i, align 8
  %name.i = getelementptr inbounds %struct.ib_device, ptr %232, i32 0, i32 2
  %233 = call ptr @memcpy(ptr %ibname.i, ptr %name.i, i32 64)
  %gid146.i = getelementptr inbounds %struct.smc_link, ptr %217, i32 0, i32 34
  %234 = ptrtoint ptr %gid146.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %gid146.i, align 2
  %conv.i57 = zext i16 %235 to i32
  %arrayidx1.i58 = getelementptr %struct.smc_link, ptr %217, i32 0, i32 34, i32 2
  %236 = ptrtoint ptr %arrayidx1.i58 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %arrayidx1.i58, align 2
  %conv2.i59 = zext i16 %237 to i32
  %arrayidx3.i60 = getelementptr %struct.smc_link, ptr %217, i32 0, i32 34, i32 4
  %238 = ptrtoint ptr %arrayidx3.i60 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %arrayidx3.i60, align 2
  %conv4.i61 = zext i16 %239 to i32
  %arrayidx5.i62 = getelementptr %struct.smc_link, ptr %217, i32 0, i32 34, i32 6
  %240 = ptrtoint ptr %arrayidx5.i62 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %arrayidx5.i62, align 2
  %conv6.i63 = zext i16 %241 to i32
  %arrayidx7.i64 = getelementptr %struct.smc_link, ptr %217, i32 0, i32 34, i32 8
  %242 = ptrtoint ptr %arrayidx7.i64 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %arrayidx7.i64, align 2
  %conv8.i65 = zext i16 %243 to i32
  %arrayidx9.i66 = getelementptr %struct.smc_link, ptr %217, i32 0, i32 34, i32 10
  %244 = ptrtoint ptr %arrayidx9.i66 to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %arrayidx9.i66, align 2
  %conv10.i67 = zext i16 %245 to i32
  %arrayidx11.i68 = getelementptr %struct.smc_link, ptr %217, i32 0, i32 34, i32 12
  %246 = ptrtoint ptr %arrayidx11.i68 to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %arrayidx11.i68, align 2
  %conv12.i69 = zext i16 %247 to i32
  %arrayidx13.i70 = getelementptr %struct.smc_link, ptr %217, i32 0, i32 34, i32 14
  %248 = ptrtoint ptr %arrayidx13.i70 to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %arrayidx13.i70, align 2
  %conv14.i71 = zext i16 %249 to i32
  %call.i72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef %conv.i57, i32 noundef %conv2.i59, i32 noundef %conv4.i61, i32 noundef %conv6.i63, i32 noundef %conv8.i65, i32 noundef %conv10.i67, i32 noundef %conv12.i69, i32 noundef %conv14.i71) #5
  %peer_gid151.i = getelementptr inbounds %struct.smc_link, ptr %217, i32 0, i32 42
  %250 = ptrtoint ptr %peer_gid151.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %peer_gid151.i, align 2
  %conv.i56 = zext i16 %251 to i32
  %arrayidx1.i = getelementptr %struct.smc_link, ptr %217, i32 0, i32 42, i32 2
  %252 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %arrayidx1.i, align 2
  %conv2.i = zext i16 %253 to i32
  %arrayidx3.i = getelementptr %struct.smc_link, ptr %217, i32 0, i32 42, i32 4
  %254 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %arrayidx3.i, align 2
  %conv4.i = zext i16 %255 to i32
  %arrayidx5.i = getelementptr %struct.smc_link, ptr %217, i32 0, i32 42, i32 6
  %256 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i = zext i16 %257 to i32
  %arrayidx7.i = getelementptr %struct.smc_link, ptr %217, i32 0, i32 42, i32 8
  %258 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = zext i16 %259 to i32
  %arrayidx9.i = getelementptr %struct.smc_link, ptr %217, i32 0, i32 42, i32 10
  %260 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %261 to i32
  %arrayidx11.i = getelementptr %struct.smc_link, ptr %217, i32 0, i32 42, i32 12
  %262 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %263 to i32
  %arrayidx13.i = getelementptr %struct.smc_link, ptr %217, i32 0, i32 42, i32 14
  %264 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %arrayidx13.i, align 2
  %conv14.i = zext i16 %265 to i32
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %peer_gid.i, ptr noundef nonnull @.str, i32 noundef %conv.i56, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %conv8.i, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #5
  %call153.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 147, ptr noundef nonnull %linfo.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153.i)
  %cmp154.i = icmp slt i32 %call153.i, 0
  call void @llvm.lifetime.end.p0(i64 147, ptr nonnull %linfo.i) #5
  br i1 %cmp154.i, label %if.then128.i.if.then.i.i.i_crit_edge, label %if.then128.i.if.end162.i_crit_edge

if.then128.i.if.end162.i_crit_edge:               ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162.i

if.then128.i.if.then.i.i.i_crit_edge:             ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.end162.i:                                      ; preds = %if.then128.i.if.end162.i_crit_edge, %land.lhs.true123.i.if.end162.i_crit_edge, %land.lhs.true118.i.if.end162.i_crit_edge, %smc_conn_lgr_valid.exit15.i.if.end162.i_crit_edge
  %266 = ptrtoint ptr %lgr.i10.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %.pr.pr.i = load ptr, ptr %lgr.i10.i, align 4
  %tobool.not.i19.i = icmp eq ptr %.pr.pr.i, null
  br i1 %tobool.not.i19.i, label %if.end162.i.__smc_diag_dump.exit_crit_edge, label %if.end162.i.smc_conn_lgr_valid.exit23.i_crit_edge

if.end162.i.smc_conn_lgr_valid.exit23.i_crit_edge: ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smc_conn_lgr_valid.exit23.i

if.end162.i.__smc_diag_dump.exit_crit_edge:       ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__smc_diag_dump.exit

smc_conn_lgr_valid.exit23.i:                      ; preds = %if.end162.i.smc_conn_lgr_valid.exit23.i_crit_edge, %land.lhs.true113.i.smc_conn_lgr_valid.exit23.i_crit_edge
  %267 = ptrtoint ptr %alert_token_local.i12.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %alert_token_local.i12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool1.i21.not.i = icmp eq i32 %268, 0
  br i1 %tobool1.i21.not.i, label %smc_conn_lgr_valid.exit23.i.__smc_diag_dump.exit_crit_edge, label %land.lhs.true166.i

smc_conn_lgr_valid.exit23.i.__smc_diag_dump.exit_crit_edge: ; preds = %smc_conn_lgr_valid.exit23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__smc_diag_dump.exit

land.lhs.true166.i:                               ; preds = %smc_conn_lgr_valid.exit23.i
  %269 = ptrtoint ptr %lgr.i10.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %lgr.i10.i, align 4
  %is_smcd169.i = getelementptr inbounds %struct.smc_link_group, ptr %270, i32 0, i32 15
  %271 = ptrtoint ptr %is_smcd169.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %is_smcd169.i, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %tobool170.not.i = icmp eq i8 %272, 0
  br i1 %tobool170.not.i, label %land.lhs.true166.i.__smc_diag_dump.exit_crit_edge, label %land.lhs.true172.i

land.lhs.true166.i.__smc_diag_dump.exit_crit_edge: ; preds = %land.lhs.true166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__smc_diag_dump.exit

land.lhs.true172.i:                               ; preds = %land.lhs.true166.i
  %273 = ptrtoint ptr %diag_ext.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %diag_ext.i, align 1
  %275 = and i8 %274, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool176.not.i = icmp eq i8 %275, 0
  br i1 %tobool176.not.i, label %land.lhs.true172.i.__smc_diag_dump.exit_crit_edge, label %land.lhs.true177.i

land.lhs.true172.i.__smc_diag_dump.exit_crit_edge: ; preds = %land.lhs.true172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__smc_diag_dump.exit

land.lhs.true177.i:                               ; preds = %land.lhs.true172.i
  %276 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load volatile ptr, ptr %270, align 4
  %cmp.i24.not.i = icmp eq ptr %277, %270
  br i1 %cmp.i24.not.i, label %land.lhs.true177.i.__smc_diag_dump.exit_crit_edge, label %if.then183.i

land.lhs.true177.i.__smc_diag_dump.exit_crit_edge: ; preds = %land.lhs.true177.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__smc_diag_dump.exit

if.then183.i:                                     ; preds = %land.lhs.true177.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dinfo.i) #5
  %278 = ptrtoint ptr %dinfo.i to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 0, ptr %dinfo.i, align 8
  %id.i = getelementptr inbounds %struct.smc_link_group, ptr %270, i32 0, i32 9
  %279 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %id.i, align 8
  store i32 %280, ptr %dinfo.i, align 8
  %281 = getelementptr inbounds %struct.smc_link_group, ptr %270, i32 0, i32 21
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %281, align 8
  %284 = ptrtoint ptr %peer_gid190.i to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %283, ptr %peer_gid190.i, align 8
  %smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %270, i32 0, i32 21, i32 0, i32 1
  %285 = ptrtoint ptr %smcd.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %smcd.i, align 8
  %local_gid.i = getelementptr inbounds %struct.smcd_dev, ptr %286, i32 0, i32 3
  %287 = ptrtoint ptr %local_gid.i to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %local_gid.i, align 8
  %289 = ptrtoint ptr %my_gid.i to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 %288, ptr %my_gid.i, align 8
  %rmb_desc192.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 9
  %290 = ptrtoint ptr %rmb_desc192.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %rmb_desc192.i, align 4
  %token193.i = getelementptr inbounds %struct.smc_buf_desc, ptr %291, i32 0, i32 5, i32 0, i32 1
  %292 = ptrtoint ptr %token193.i to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %token193.i, align 8
  %294 = ptrtoint ptr %token194.i to i32
  call void @__asan_store8_noabort(i32 %294)
  store i64 %293, ptr %token194.i, align 8
  %peer_token.i = getelementptr inbounds %struct.smc_sock, ptr %sk.089, i32 0, i32 6, i32 38
  %295 = ptrtoint ptr %peer_token.i to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %peer_token.i, align 8
  %297 = ptrtoint ptr %peer_token195.i to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 %296, ptr %peer_token195.i, align 8
  %call196.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 40, ptr noundef nonnull %dinfo.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196.i)
  %cmp197.i = icmp slt i32 %call196.i, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dinfo.i) #5
  br i1 %cmp197.i, label %if.then183.i.if.then.i.i.i_crit_edge, label %if.then183.i.__smc_diag_dump.exit_crit_edge

if.then183.i.__smc_diag_dump.exit_crit_edge:      ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__smc_diag_dump.exit

if.then183.i.if.then.i.i.i_crit_edge:             ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then183.i.if.then.i.i.i_crit_edge, %if.then128.i.if.then.i.i.i_crit_edge, %cond.end47.i.if.then.i.i.i_crit_edge, %if.end25.i.if.then.i.i.i_crit_edge, %if.end17.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %298 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %299, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !25

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %300 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i27.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i28.i = ptrtoint ptr %301 to i32
  %sub.ptr.sub.i.i29.i = sub i32 %sub.ptr.lhs.cast.i.i27.i, %sub.ptr.rhs.cast.i.i28.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i29.i) #5
  br label %__smc_diag_dump.exit.thread

__smc_diag_dump.exit.thread:                      ; preds = %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.__smc_diag_dump.exit.thread_crit_edge, %skb_tailroom.exit.i.i.__smc_diag_dump.exit.thread_crit_edge, %if.end13.__smc_diag_dump.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fallback.i) #5
  br label %out

__smc_diag_dump.exit:                             ; preds = %if.then183.i.__smc_diag_dump.exit_crit_edge, %land.lhs.true177.i.__smc_diag_dump.exit_crit_edge, %land.lhs.true172.i.__smc_diag_dump.exit_crit_edge, %land.lhs.true166.i.__smc_diag_dump.exit_crit_edge, %smc_conn_lgr_valid.exit23.i.__smc_diag_dump.exit_crit_edge, %if.end162.i.__smc_diag_dump.exit_crit_edge, %if.end109.i.__smc_diag_dump.exit_crit_edge
  %302 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %303 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %304 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fallback.i) #5
  br label %next

next:                                             ; preds = %__smc_diag_dump.exit, %if.end11.next_crit_edge
  %inc = add i32 %num.083, 1
  br label %for.inc

for.inc:                                          ; preds = %next, %for.body.for.inc_crit_edge
  %num.1 = phi i32 [ %inc, %next ], [ %num.083, %for.body.for.inc_crit_edge ]
  %305 = getelementptr inbounds %struct.sock_common, ptr %sk.089, i32 0, i32 15
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %305, align 4
  %tobool22.not = icmp eq ptr %307, null
  %add.ptr26 = getelementptr i8, ptr %307, i32 -84
  %tobool6.not103 = icmp eq ptr %add.ptr26, null
  %tobool6.not = or i1 %tobool22.not, %tobool6.not103
  br i1 %tobool6.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %__smc_diag_dump.exit.thread, %if.end.out_crit_edge, %entry.out_crit_edge
  %num.2 = phi i32 [ 0, %entry.out_crit_edge ], [ %num.083, %__smc_diag_dump.exit.thread ], [ 0, %if.end.out_crit_edge ], [ %num.1, %for.inc.out_crit_edge ]
  %rc.3 = phi i32 [ 0, %entry.out_crit_edge ], [ -90, %__smc_diag_dump.exit.thread ], [ 0, %if.end.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  %308 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %h, align 4
  call void @_raw_read_unlock(ptr noundef %309) #5
  %310 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %num.2, ptr %arrayidx, align 4
  ret i32 %rc.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_save_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_smc_diag__496_267_smc_diag_init6, !1, !"__initcall__kmod_smc_diag__496_267_smc_diag_init6", i1 false, i1 false}
!1 = !{!"../net/smc/smc_diag.c", i32 267, i32 1}
!2 = !{ptr @__exitcall_smc_diag_exit, !3, !"__exitcall_smc_diag_exit", i1 false, i1 false}
!3 = !{!"../net/smc/smc_diag.c", i32 268, i32 1}
!4 = !{ptr @__UNIQUE_ID_file497, !5, !"__UNIQUE_ID_file497", i1 false, i1 false}
!5 = !{!"../net/smc/smc_diag.c", i32 269, i32 1}
!6 = !{ptr @__UNIQUE_ID_license498, !5, !"__UNIQUE_ID_license498", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias499, !8, !"__UNIQUE_ID_alias499", i1 false, i1 false}
!8 = !{!"../net/smc/smc_diag.c", i32 270, i32 1}
!9 = !{ptr @smc_diag_handler, !10, !"smc_diag_handler", i1 false, i1 false}
!10 = !{!"../net/smc/smc_diag.c", i32 252, i32 39}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/smc/smc_core.h", i32 456, i32 15}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/net/netlink.h", i32 991, i32 3}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i8 0, i8 2}
