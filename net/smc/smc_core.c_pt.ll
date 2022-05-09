; ModuleID = '/llk/IR_all_yes/net/smc/smc_core.c_pt.bc'
source_filename = "../net/smc/smc_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smc_lgr_list = type { %struct.list_head, %struct.spinlock, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smcd_dev_list = type { %struct.list_head, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%union.anon.94 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.smc_ib_devices = type { %struct.list_head, %struct.mutex }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.153 }
%union.anon.153 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon.2, %union.anon.171, %union.anon.172, [48 x i8], %union.anon.173, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.175, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { i64 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, ptr }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.177, i32, i32, i32, i16, i16, %union.anon.179, i32, %union.anon.180, %union.anon.181, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.177 = type { i32 }
%union.anon.179 = type { i32 }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.192 }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.192 = type { %struct.anon.193 }
%struct.anon.193 = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.208 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.203 }
%struct.anon.203 = type { i64, i64 }
%union.anon.208 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.204, ptr, i32, i32, i32, %union.anon.205 }
%union.anon.204 = type { i64 }
%union.anon.205 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.smc_rtoken = type { i64, i32 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.smcd_dev = type { ptr, %struct.device, ptr, i64, %struct.list_head, %struct.spinlock, ptr, %struct.list_head, ptr, [16 x i8], i8, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.smc_init_info = type { i8, i8, i8, i8, i8, i16, i32, [32 x i8], i8, i8, [16 x i8], [6 x i8], [8 x i8], ptr, [16 x i8], i8, i32, %struct.smc_init_info_smcrv2, [9 x i64], [9 x ptr], [9 x i16], i8, i8, i8 }
%struct.smc_init_info_smcrv2 = type { i32, ptr, i32, ptr, i8, [16 x i8], i8, [6 x i8], %struct.smc_gidlist }
%struct.smc_gidlist = type { i8, [2 x [16 x i8]] }
%struct.smc_ib_device = type { %struct.list_head, ptr, [2 x %struct.ib_port_attr], %struct.ib_event_handler, ptr, ptr, %struct.tasklet_struct, %struct.tasklet_struct, [2 x [6 x i8]], [2 x [16 x i8]], [2 x i8], i8, %struct.work_struct, i32, [1 x i32], %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, [2 x %struct.atomic_t], [2 x i32] }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.217, i32 }
%union.anon.217 = type { ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.216, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.216 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.207 }
%struct.anon.207 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.smc_connection = type { %struct.rb_node, ptr, ptr, i32, i8, i32, %struct.atomic_t, i32, ptr, ptr, i32, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %struct.atomic_t, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.delayed_work, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, i32, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.tasklet_struct, i8, i64, i8 }
%struct.smc_host_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_host_cursor, %union.smc_host_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%struct.smc_wr_rx_hdr = type { %union.anon.222 }
%union.anon.222 = type { i8 }
%struct.smc_cdc_producer_flags = type { i8 }
%struct.smc_cdc_conn_state_flags = type { i8 }
%union.smc_host_cursor = type { %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.smc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, ptr, %struct.smc_connection, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i8, i32, i32, i32, i8, %struct.mutex }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.149, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.150, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.151, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.149 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.anon.224 = type { i16, i16, i32 }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.219 }
%union.anon.219 = type { %struct.anon.221, [40 x i8] }
%struct.anon.221 = type { i16, i64, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_nested_priv = type { i8, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.5, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.170, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.5 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.170 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.smc_stats_tech = type { %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_rmbcnt, %struct.smc_stats_rmbcnt, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.smc_stats_memsize = type { [9 x i64] }
%struct.smc_stats_rmbcnt = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.31, %union.anon.92, %struct.atomic_t, i32 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.92 = type { %struct.atomic_t }
%struct.smc_clc_msg_accept_confirm = type { %struct.smc_clc_msg_hdr, %union.anon.225 }
%struct.smc_clc_msg_hdr = type <{ [4 x i8], i8, i16, i8 }>
%union.anon.225 = type { %struct.smcr_clc_msg_accept_confirm }
%struct.smcr_clc_msg_accept_confirm = type <{ %struct.smc_clc_msg_local, [3 x i8], i32, i8, i32, i8, i8, i64, i8, [3 x i8] }>
%struct.smc_clc_msg_local = type { [8 x i8], [16 x i8], [6 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@smc_lgr_list = dso_local global { %struct.smc_lgr_list, [40 x i8] } { %struct.smc_lgr_list { %struct.list_head { ptr @smc_lgr_list, ptr @smc_lgr_list }, %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smc_lgr_list.lock\00", [46 x i8] zeroinitializer }, align 32
@smc_gen_nl_family = external dso_local global %struct.genl_family, align 4
@smcd_dev_list = external dso_local global %struct.smcd_dev_list, align 4
@smcr_link_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&lnk->link_down_wrk)\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/smc/smc_core.c\00", [45 x i8] zeroinitializer }, align 32
@lgr_cnt = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@lgrs_deleted = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @lgrs_deleted, i64 44), ptr getelementptr (i8, ptr @lgrs_deleted, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SINGLE\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYMMETRIC\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ASYMMETRIC_PEER\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASYMMETRIC_LOCAL\00", [47 x i8] zeroinitializer }, align 32
@smcr_lgr_set_type._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smcr_lgr_set_type = private unnamed_addr constant [18 x i8] c"smcr_lgr_set_type\00", align 1
@smcr_lgr_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.smcr_lgr_set_type, ptr @.str.2, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014smc: SMC-R lg %*phN net %llu state changed: %s, pnetid %.16s\0A\00", [32 x i8] zeroinitializer }, align 32
@smcr_lgr_set_type._entry_ptr = internal global ptr @smcr_lgr_set_type._entry, section ".printk_index", align 4
@smc_conn_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&conn->cdc_pend_tx_wq\00", [42 x i8] zeroinitializer }, align 32
@smc_conn_create.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&smc->conn.abort_work)\00", [55 x i8] zeroinitializer }, align 32
@smc_reboot_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @smc_core_reboot_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%04x:%04x:%04x:%04x:%04x:%04x:%04x:%04x\00", [56 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgrs_deleted.lock\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_smcr_link_down = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/smc/smc_tracepoint.h\00", [39 x i8] zeroinitializer }, align 32
@trace_smcr_link_down.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@smc_lgr_register_conn.nexttoken = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smc_tx_wq-%*phN\00", [16 x i8] zeroinitializer }, align 32
@smc_lgr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&lgr->sndbufs_lock\00", [45 x i8] zeroinitializer }, align 32
@smc_lgr_create.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&lgr->rmbs_lock\00", [16 x i8] zeroinitializer }, align 32
@smc_lgr_create.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&lgr->conns_lock\00", [47 x i8] zeroinitializer }, align 32
@smc_lgr_create.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&lgr->free_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@smc_lgr_create.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&lgr->free_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@smc_lgr_create.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&lgr->terminate_work)\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@smc_ib_devices = external dso_local global %struct.smc_ib_devices, align 4
@switch.table.smcr_lgr_set_type = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [44 x i8] zeroinitializer }, align 32
@switch.table.smcr_lgr_set_type_asym = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967268, i64 4294967284]
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"smc_lgr_list\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 43, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 44, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 762, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1528, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [8 x i8] c"lgr_cnt\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 49, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"lgrs_deleted\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1575, i32 19 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1587, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1590, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1593, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1596, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1599, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1602, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1914, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1915, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"smc_reboot_notifier\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 2522, i32 30 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 991, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 409, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"../net/smc/smc_core.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 456, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 50, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant [28 x i8] c"../net/smc/smc_tracepoint.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 85, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 108, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 2077, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 695, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 723, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [10 x i8] c"nexttoken\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 169, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 839, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 851, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 852, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 853, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 861, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [22 x i8] c"../net/smc/smc_core.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 862, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [31 x i8] c"switch.table.smcr_lgr_set_type\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [36 x i8] c"switch.table.smcr_lgr_set_type_asym\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @smcr_lgr_set_type._entry, ptr @smcr_lgr_set_type._entry_ptr, ptr @smc_lgr_list, ptr @.str, ptr @smcr_link_init.__key, ptr @.str.1, ptr @.str.2, ptr @lgr_cnt, ptr @lgrs_deleted, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @smcr_lgr_set_type._rs, ptr @.str.9, ptr @.str.10, ptr @smc_conn_create.__key, ptr @.str.11, ptr @smc_conn_create.__key.12, ptr @.str.13, ptr @smc_reboot_notifier, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @smc_lgr_register_conn.nexttoken, ptr @.str.25, ptr @smc_lgr_create.__key, ptr @.str.26, ptr @smc_lgr_create.__key.27, ptr @.str.28, ptr @smc_lgr_create.__key.29, ptr @.str.30, ptr @smc_lgr_create.__key.31, ptr @.str.32, ptr @smc_lgr_create.__key.33, ptr @.str.34, ptr @smc_lgr_create.__key.35, ptr @.str.36, ptr @switch.table.smcr_lgr_set_type, ptr @switch.table.smcr_lgr_set_type_asym], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_lgr_list to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcr_link_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgr_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgrs_deleted to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcr_lgr_set_type._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcr_lgr_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_conn_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_conn_create.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_reboot_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_lgr_register_conn.nexttoken to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_lgr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_lgr_create.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_lgr_create.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_lgr_create.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_lgr_create.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_lgr_create.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smcr_lgr_set_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smcr_lgr_set_type_asym to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_get_sys_info(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i82 = alloca i8, align 1
  %tmp.i80 = alloca i8, align 1
  %tmp.i78 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %hostname = alloca [33 x i8], align 1
  %smc_seid = alloca [33 x i8], align 1
  %seid = alloca ptr, align 4
  %host = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %hostname) #18
  %1 = call ptr @memset(ptr %hostname, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %smc_seid) #18
  %2 = call ptr @memset(ptr %smc_seid, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seid) #18
  %3 = ptrtoint ptr %seid to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %seid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #18
  %4 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %host, align 4
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 12
  %7 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %portid, align 4
  %nlh3 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %9 = ptrtoint ptr %nlh3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nlh3, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nlmsg_seq, align 4
  %call4 = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %8, i32 noundef %12, ptr noundef nonnull @smc_gen_nl_family, i32 noundef 2, i8 noundef zeroext 1) #18
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.end7:                                          ; preds = %if.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool9.not90 = icmp eq ptr %16, null
  %tobool9.not = select i1 %cmp.i.i, i1 true, i1 %tobool9.not90
  br i1 %tobool9.not, label %if.end7.if.then.i_crit_edge, label %if.end11

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.end11:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #18
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.if.then.i.i_crit_edge

if.end11.if.then.i.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end15:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i78) #18
  %18 = ptrtoint ptr %tmp.i78 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %tmp.i78, align 1
  %call.i79 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i78) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i78) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool17.not = icmp eq i32 %call.i79, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.if.then.i.i_crit_edge

if.end15.if.then.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end19:                                         ; preds = %if.end15
  %call20 = call zeroext i1 @smc_ism_is_v2_capable() #18
  %conv = zext i1 %call20 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i80) #18
  %19 = ptrtoint ptr %tmp.i80 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %tmp.i80, align 1
  %call.i81 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i80) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i80) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool22.not = icmp eq i32 %call.i81, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.if.then.i.i_crit_edge

if.end19.if.then.i.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end24:                                         ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i82) #18
  %20 = ptrtoint ptr %tmp.i82 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %tmp.i82, align 1
  %call.i83 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i82) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i82) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool26.not = icmp eq i32 %call.i83, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.if.then.i.i_crit_edge

if.end24.if.then.i.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end28:                                         ; preds = %if.end24
  call void @smc_clc_get_hostname(ptr noundef nonnull %host) #18
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 4
  %tobool29.not = icmp eq ptr %22, null
  br i1 %tobool29.not, label %if.end28.if.end37_crit_edge, label %if.then30

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

if.then30:                                        ; preds = %if.end28
  %23 = call ptr @memcpy(ptr %hostname, ptr %22, i32 32)
  %arrayidx31 = getelementptr inbounds [33 x i8], ptr %hostname, i32 0, i32 32
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx31, align 1
  %call33 = call fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef 4, ptr noundef nonnull %hostname)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then30.if.end37_crit_edge, label %if.then30.if.then.i.i_crit_edge

if.then30.if.then.i.i_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

if.end37:                                         ; preds = %if.then30.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  %call38 = call zeroext i1 @smc_ism_is_v2_capable() #18
  br i1 %call38, label %if.then39, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.then39:                                        ; preds = %if.end37
  call void @smc_ism_get_system_eid(ptr noundef nonnull %seid) #18
  %25 = ptrtoint ptr %seid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %seid, align 4
  %27 = call ptr @memcpy(ptr %smc_seid, ptr %26, i32 32)
  %arrayidx41 = getelementptr inbounds [33 x i8], ptr %smc_seid, i32 0, i32 32
  %28 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx41, align 1
  %call43 = call fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef 5, ptr noundef nonnull %smc_seid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then39.if.end47_crit_edge, label %if.then39.if.then.i.i_crit_edge

if.then39.if.then.i.i_crit_edge:                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.end47:                                         ; preds = %if.then39.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %29 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %16, align 2
  %add.ptr1.i = getelementptr i8, ptr %call4, i32 -20
  %32 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %33 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %0, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then39.if.then.i.i_crit_edge, %if.then30.if.then.i.i_crit_edge, %if.end24.if.then.i.i_crit_edge, %if.end19.if.then.i.i_crit_edge, %if.end15.if.then.i.i_crit_edge, %if.end11.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i85 = icmp ugt ptr %36, %16
  br i1 %cmp.i.i85, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !98

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i86 = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i87 = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i88 = sub i32 %sub.ptr.lhs.cast.i.i86, %sub.ptr.rhs.cast.i.i87
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i88) #18
  br label %if.then.i

if.then.i:                                        ; preds = %nla_nest_cancel.exit, %if.end7.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i89 = getelementptr i8, ptr %call4, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i89, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %40, %add.ptr1.i89
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !98

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %41 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i89 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end47, %entry.cleanup_crit_edge
  %retval.0.in = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %43 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %43)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seid) #18
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %smc_seid) #18
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %hostname) #18
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smc_ism_is_v2_capable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_clc_get_hostname(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef %attrtype, ptr noundef %str) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @strlen(ptr noundef %str) #21
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %add, ptr noundef %str) #18
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ism_get_system_eid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcr_nl_get_lgr(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smc_nl_fill_lgr_list(ptr noundef %skb, ptr noundef %cb, i1 noundef zeroext false)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_nl_fill_lgr_list(ptr noundef %skb, ptr nocapture noundef %cb, i1 noundef zeroext %list_links) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i79.i = alloca i8, align 1
  %tmp.i11.i.i = alloca i32, align 4
  %tmp.i9.i39.i = alloca i32, align 4
  %tmp.i7.i40.i = alloca i32, align 4
  %tmp.i5.i41.i = alloca i8, align 1
  %tmp.i3.i42.i = alloca i32, align 4
  %tmp.i1.i43.i = alloca i32, align 4
  %tmp.i.i44.i = alloca i8, align 1
  %smc_ibname.i.i = alloca [64 x i8], align 1
  %smc_gid_target.i.i = alloca [41 x i8], align 1
  %tmp.i9.i.i = alloca i64, align 8
  %tmp.i7.i.i = alloca i8, align 1
  %tmp.i5.i.i = alloca i8, align 1
  %tmp.i3.i.i = alloca i8, align 1
  %tmp.i1.i.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  %smc_target.i.i = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1)) #18
  %lgr.035 = load ptr, ptr @smc_lgr_list, align 4
  %cmp.not36 = icmp eq ptr %lgr.035, @smc_lgr_list
  br i1 %cmp.not36, label %entry.errout_crit_edge, label %for.body.lr.ph

entry.errout_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %errout

for.body.lr.ph:                                   ; preds = %entry
  %nlh3.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %3 = getelementptr inbounds [17 x i8], ptr %smc_target.i.i, i32 0, i32 16
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %next8.for.body_crit_edge, %for.body.lr.ph
  %lgr.039 = phi ptr [ %lgr.035, %for.body.lr.ph ], [ %lgr.0, %next8.for.body_crit_edge ]
  %num.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %next8.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.037, i32 %2)
  %cmp3 = icmp slt i32 %num.037, %2
  br i1 %cmp3, label %for.body.next8_crit_edge, label %if.end

for.body.next8_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %next8

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 4
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %portid.i, align 4
  %8 = ptrtoint ptr %nlh3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh3.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlmsg_seq.i, align 4
  %call.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %7, i32 noundef %11, ptr noundef nonnull @smc_gen_nl_family, i32 noundef 2, i8 noundef zeroext 2) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.errout_crit_edge, label %if.end.i

if.end.errout_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %errout

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %smc_target.i.i) #18
  %12 = call ptr @memset(ptr %smc_target.i.i, i32 255, i32 17)
  %13 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not16.i.i = icmp eq ptr %14, null
  %tobool.not.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not16.i.i
  br i1 %tobool.not.i.i, label %if.end.i.smc_nl_fill_lgr.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.smc_nl_fill_lgr.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_fill_lgr.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %id.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.039, i32 0, i32 9
  %15 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #18
  %17 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.then.i.i.i.i_crit_edge

if.end.i.i.if.then.i.i.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %conns_num.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.039, i32 0, i32 3
  %18 = ptrtoint ptr %conns_num.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %conns_num.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1.i.i) #18
  %20 = ptrtoint ptr %tmp.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i1.i.i, align 4
  %call.i2.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i1.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.if.then.i.i.i.i_crit_edge

if.end4.i.i.if.then.i.i.i.i_crit_edge:            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %21 = getelementptr inbounds %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %conv.i.i = trunc i32 %23 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i3.i.i) #18
  %24 = ptrtoint ptr %tmp.i3.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i.i, ptr %tmp.i3.i.i, align 1
  %call.i4.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i3.i.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i3.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end8.i.i.if.then.i.i.i.i_crit_edge

if.end8.i.i.if.then.i.i.i.i_crit_edge:            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %type.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 8
  %25 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i.i, align 4
  %conv13.i.i = trunc i32 %26 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i5.i.i) #18
  %27 = ptrtoint ptr %tmp.i5.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv13.i.i, ptr %tmp.i5.i.i, align 1
  %call.i6.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i5.i.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i5.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool15.not.i.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %if.end12.i.i.if.then.i.i.i.i_crit_edge

if.end12.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %vlan_id.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.039, i32 0, i32 4
  %28 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vlan_id.i.i, align 4
  %conv18.i.i = trunc i16 %29 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i7.i.i) #18
  %30 = ptrtoint ptr %tmp.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv18.i.i, ptr %tmp.i7.i.i, align 1
  %call.i8.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i7.i.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool20.not.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %if.end17.i.i.if.then.i.i.i.i_crit_edge

if.end17.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end22.i.i:                                     ; preds = %if.end17.i.i
  %net.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 27
  %31 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i.i, align 4
  %net_cookie.i.i = getelementptr inbounds %struct.net, ptr %32, i32 0, i32 47
  %33 = ptrtoint ptr %net_cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %net_cookie.i.i, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i9.i.i) #18
  %35 = ptrtoint ptr %tmp.i9.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %tmp.i9.i.i, align 8
  %call.i10.i.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %tmp.i9.i.i, i32 noundef 10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i9.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i.i)
  %tobool24.not.i.i = icmp eq i32 %call.i10.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end26.i.i, label %if.end22.i.i.if.then.i.i.i.i_crit_edge

if.end22.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end26.i.i:                                     ; preds = %if.end22.i.i
  %pnet_id.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 9
  %36 = call ptr @memcpy(ptr %smc_target.i.i, ptr %pnet_id.i.i, i32 16)
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %3, align 1
  %call.i99.i = call i32 @strlen(ptr noundef nonnull %smc_target.i.i) #22
  %add.i.i = add i32 %call.i99.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef %add.i.i, ptr noundef nonnull %smc_target.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool30.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end32.i.i, label %if.end26.i.i.if.then.i.i.i.i_crit_edge

if.end26.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end32.i.i:                                     ; preds = %if.end26.i.i
  %smc_version.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.039, i32 0, i32 16
  %38 = ptrtoint ptr %smc_version.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %smc_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp.i.i = icmp ugt i8 %39, 1
  br i1 %cmp.i.i, label %if.then35.i.i, label %if.end32.i.i.if.end7.i_crit_edge

if.end32.i.i.if.end7.i_crit_edge:                 ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  %40 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i12.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i12.i.i)
  %cmp.i.i13.i.i = icmp slt i32 %call1.i.i12.i.i, 0
  %tobool37.not17.i.i = icmp eq ptr %41, null
  %tobool37.not.i.i = select i1 %cmp.i.i13.i.i, i1 true, i1 %tobool37.not17.i.i
  br i1 %tobool37.not.i.i, label %if.then35.i.i.if.then.i.i.i.i_crit_edge, label %if.end39.i.i

if.then35.i.i.if.then.i.i.i.i_crit_edge:          ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end39.i.i:                                     ; preds = %if.then35.i.i
  %call40.i.i = call fastcc i32 @smc_nl_fill_lgr_v2_common(ptr noundef %lgr.039, ptr noundef %skb, ptr noundef nonnull %41) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end43.i.i, label %if.end39.i.i.if.then.i.i.i.i_crit_edge

if.end39.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end43.i.i:                                     ; preds = %if.end39.i.i
  %42 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i81.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i81.i)
  %cmp.i.i.i82.i = icmp slt i32 %call1.i.i.i81.i, 0
  %tobool.not2.i.i = icmp eq ptr %43, null
  %tobool.not.i83.i = select i1 %cmp.i.i.i82.i, i1 true, i1 %tobool.not2.i.i
  br i1 %tobool.not.i83.i, label %if.end43.i.i.if.then.i.i.i.i_crit_edge, label %if.end.i86.i

if.end43.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end.i86.i:                                     ; preds = %if.end43.i.i
  %uses_gateway.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 25
  %44 = ptrtoint ptr %uses_gateway.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %uses_gateway.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool1.not.i.i = icmp eq i8 %45, 0
  %conv.i84.i = zext i1 %tobool1.not.i.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i79.i) #18
  %46 = ptrtoint ptr %tmp.i.i79.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i84.i, ptr %tmp.i.i79.i, align 1
  %call.i.i85.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i79.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i79.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i85.i, 0
  br i1 %tobool3.not.i.i, label %smc_nl_fill_smcr_lgr_v2.exit.i, label %if.then.i.i.i92.i

if.then.i.i.i92.i:                                ; preds = %if.end.i86.i
  %data.i.i.i91.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i.i91.i, align 4
  %cmp.i.i1.i.i = icmp ugt ptr %48, %43
  br i1 %cmp.i.i1.i.i, label %do.end.i.i.i93.i, label %if.then.i.i.i92.i.nla_nest_cancel.exit.i97.i_crit_edge, !prof !98

if.then.i.i.i92.i.nla_nest_cancel.exit.i97.i_crit_edge: ; preds = %if.then.i.i.i92.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_nest_cancel.exit.i97.i

do.end.i.i.i93.i:                                 ; preds = %if.then.i.i.i92.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %nla_nest_cancel.exit.i97.i

nla_nest_cancel.exit.i97.i:                       ; preds = %do.end.i.i.i93.i, %if.then.i.i.i92.i.nla_nest_cancel.exit.i97.i_crit_edge
  %49 = ptrtoint ptr %data.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i.i91.i, align 4
  %sub.ptr.lhs.cast.i.i.i94.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i.i95.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i.i96.i = sub i32 %sub.ptr.lhs.cast.i.i.i94.i, %sub.ptr.rhs.cast.i.i.i95.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i96.i) #18
  br label %if.then.i.i.i.i

smc_nl_fill_smcr_lgr_v2.exit.i:                   ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #20
  %51 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i87.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i88.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i.i89.i = sub i32 %sub.ptr.lhs.cast.i.i87.i, %sub.ptr.rhs.cast.i.i88.i
  %conv.i.i90.i = trunc i32 %sub.ptr.sub.i.i89.i to i16
  %53 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i.i90.i, ptr %43, align 2
  br label %if.end7.i

if.then.i.i.i.i:                                  ; preds = %nla_nest_cancel.exit.i97.i, %if.end43.i.i.if.then.i.i.i.i_crit_edge, %if.end39.i.i.if.then.i.i.i.i_crit_edge, %if.then35.i.i.if.then.i.i.i.i_crit_edge, %if.end26.i.i.if.then.i.i.i.i_crit_edge, %if.end22.i.i.if.then.i.i.i.i_crit_edge, %if.end17.i.i.if.then.i.i.i.i_crit_edge, %if.end12.i.i.if.then.i.i.i.i_crit_edge, %if.end8.i.i.if.then.i.i.i.i_crit_edge, %if.end4.i.i.if.then.i.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i15.i.i = icmp ugt ptr %55, %14
  br i1 %cmp.i.i15.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge, !prof !98

if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_nest_cancel.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %nla_nest_cancel.exit.i.i

nla_nest_cancel.exit.i.i:                         ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge
  %56 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #18
  br label %smc_nl_fill_lgr.exit.thread.i

smc_nl_fill_lgr.exit.thread.i:                    ; preds = %nla_nest_cancel.exit.i.i, %if.end.i.smc_nl_fill_lgr.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %smc_target.i.i) #18
  br label %if.then.i.i

if.end7.i:                                        ; preds = %smc_nl_fill_smcr_lgr_v2.exit.i, %if.end32.i.i.if.end7.i_crit_edge
  %58 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %60 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i.i.i, ptr %14, align 2
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %smc_target.i.i) #18
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %61 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i36.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i37.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i38.i = sub i32 %sub.ptr.lhs.cast.i.i36.i, %sub.ptr.rhs.cast.i.i37.i
  %63 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.ptr.sub.i.i38.i, ptr %add.ptr1.i.i, align 4
  br i1 %list_links, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.next8_crit_edge

if.end7.i.next8_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %next8

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %i.0137.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %state.i.i = getelementptr %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 1, i32 %i.0137.i, i32 54
  %64 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %switch.i.i = icmp ugt i32 %65, 1
  br i1 %switch.i.i, label %if.end13.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end13.i:                                       ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %smc_ibname.i.i) #18
  %66 = call ptr @memset(ptr %smc_ibname.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %smc_gid_target.i.i) #18
  %67 = call ptr @memset(ptr %smc_gid_target.i.i, i32 255, i32 41)
  %68 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cb, align 4
  %portid.i.i = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 3, i32 12
  %70 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %portid.i.i, align 4
  %72 = ptrtoint ptr %nlh3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nlh3.i, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nlmsg_seq.i.i, align 4
  %call.i.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %71, i32 noundef %75, ptr noundef nonnull @smc_gen_nl_family, i32 noundef 2, i8 noundef zeroext 3) #18
  %tobool.not.i45.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i45.i, label %if.end13.i.smc_nl_fill_lgr_link.exit.thread.i_crit_edge, label %if.end.i49.i

if.end13.i.smc_nl_fill_lgr_link.exit.thread.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_fill_lgr_link.exit.thread.i

if.end.i49.i:                                     ; preds = %if.end13.i
  %76 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i47.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32771, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i47.i)
  %cmp.i.i.i48.i = icmp slt i32 %call1.i.i.i47.i, 0
  %tobool5.not19.i.i = icmp eq ptr %77, null
  %tobool5.not.i.i = select i1 %cmp.i.i.i48.i, i1 true, i1 %tobool5.not19.i.i
  br i1 %tobool5.not.i.i, label %if.end.i49.i.if.then.i.i.i_crit_edge, label %if.end7.i.i

if.end.i49.i.if.then.i.i.i_crit_edge:             ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i

if.end7.i.i:                                      ; preds = %if.end.i49.i
  %link_id.i.i = getelementptr %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 1, i32 %i.0137.i, i32 43
  %78 = ptrtoint ptr %link_id.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %link_id.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i44.i) #18
  %80 = ptrtoint ptr %tmp.i.i44.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %tmp.i.i44.i, align 1
  %call.i.i50.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i44.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i44.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50.i)
  %tobool9.not.i.i = icmp eq i32 %call.i.i50.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %if.end7.i.i.if.then.i.i.i65.i_crit_edge

if.end7.i.i.if.then.i.i.i65.i_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i65.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %81 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1.i43.i) #18
  %83 = ptrtoint ptr %tmp.i1.i43.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %tmp.i1.i43.i, align 4
  %call.i2.i52.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i1.i43.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i43.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i52.i)
  %tobool13.not.i.i = icmp eq i32 %call.i2.i52.i, 0
  br i1 %tobool13.not.i.i, label %if.end15.i.i, label %if.end11.i.i.if.then.i.i.i65.i_crit_edge

if.end11.i.i.if.then.i.i.i65.i_crit_edge:         ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i65.i

if.end15.i.i:                                     ; preds = %if.end11.i.i
  %conn_cnt.i.i = getelementptr %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 1, i32 %i.0137.i, i32 58
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %conn_cnt.i.i, i32 noundef 4) #18
  %84 = ptrtoint ptr %conn_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %conn_cnt.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i3.i42.i) #18
  %86 = ptrtoint ptr %tmp.i3.i42.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tmp.i3.i42.i, align 4
  %call.i4.i53.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i3.i42.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i3.i42.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i53.i)
  %tobool18.not.i.i = icmp eq i32 %call.i4.i53.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end15.i.i.if.then.i.i.i65.i_crit_edge

if.end15.i.i.if.then.i.i.i65.i_crit_edge:         ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i65.i

if.end20.i.i:                                     ; preds = %if.end15.i.i
  %ibport.i.i = getelementptr %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 1, i32 %i.0137.i, i32 1
  %87 = ptrtoint ptr %ibport.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ibport.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i5.i41.i) #18
  %89 = ptrtoint ptr %tmp.i5.i41.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %tmp.i5.i41.i, align 1
  %call.i6.i54.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i5.i41.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i5.i41.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i54.i)
  %tobool22.not.i.i = icmp eq i32 %call.i6.i54.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.end20.i.i.if.then.i.i.i65.i_crit_edge

if.end20.i.i.if.then.i.i.i65.i_crit_edge:         ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i65.i

if.end24.i.i:                                     ; preds = %if.end20.i.i
  %ndev_ifidx.i.i = getelementptr %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 1, i32 %i.0137.i, i32 53
  %90 = ptrtoint ptr %ndev_ifidx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ndev_ifidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i7.i40.i) #18
  %92 = ptrtoint ptr %tmp.i7.i40.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %tmp.i7.i40.i, align 4
  %call.i8.i55.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i7.i40.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i7.i40.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i55.i)
  %tobool26.not.i.i = icmp eq i32 %call.i8.i55.i, 0
  br i1 %tobool26.not.i.i, label %if.end28.i.i, label %if.end24.i.i.if.then.i.i.i65.i_crit_edge

if.end24.i.i.if.then.i.i.i65.i_crit_edge:         ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i65.i

if.end28.i.i:                                     ; preds = %if.end24.i.i
  %ibname.i.i = getelementptr %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 1, i32 %i.0137.i, i32 52
  %call30.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %smc_ibname.i.i, i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef %ibname.i.i) #18
  %call.i124.i = call i32 @strlen(ptr noundef nonnull %smc_ibname.i.i) #22
  %add.i125.i = add i32 %call.i124.i, 1
  %call1.i126.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i125.i, ptr noundef nonnull %smc_ibname.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i126.i)
  %tobool33.not.i.i = icmp eq i32 %call1.i126.i, 0
  br i1 %tobool33.not.i.i, label %if.end35.i.i, label %if.end28.i.i.if.then.i.i.i65.i_crit_edge

if.end28.i.i.if.then.i.i.i65.i_crit_edge:         ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i65.i

if.end35.i.i:                                     ; preds = %if.end28.i.i
  %link_uid36.i.i = getelementptr %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 1, i32 %i.0137.i, i32 44
  %93 = ptrtoint ptr %link_uid36.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %link_uid.0.copyload.i.i = load i32, ptr %link_uid36.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i9.i39.i) #18
  %94 = ptrtoint ptr %tmp.i9.i39.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %link_uid.0.copyload.i.i, ptr %tmp.i9.i39.i, align 4
  %call.i10.i56.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i9.i39.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i9.i39.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i56.i)
  %tobool39.not.i.i = icmp eq i32 %call.i10.i56.i, 0
  br i1 %tobool39.not.i.i, label %if.end41.i.i, label %if.end35.i.i.if.then.i.i.i65.i_crit_edge

if.end35.i.i.if.then.i.i.i65.i_crit_edge:         ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i65.i

if.end41.i.i:                                     ; preds = %if.end35.i.i
  %peer_link_uid.i.i = getelementptr %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 1, i32 %i.0137.i, i32 45
  %95 = ptrtoint ptr %peer_link_uid.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %link_uid.0.copyload70.i.i = load i32, ptr %peer_link_uid.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i11.i.i) #18
  %96 = ptrtoint ptr %tmp.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %link_uid.0.copyload70.i.i, ptr %tmp.i11.i.i, align 4
  %call.i12.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i11.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i11.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool44.not.i.i = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end46.i.i, label %if.end41.i.i.if.then.i.i.i65.i_crit_edge

if.end41.i.i.if.then.i.i.i65.i_crit_edge:         ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i65.i

if.end46.i.i:                                     ; preds = %if.end41.i.i
  %97 = call ptr @memset(ptr %smc_gid_target.i.i, i32 0, i32 41)
  %gid.i.i = getelementptr %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 1, i32 %i.0137.i, i32 34
  %98 = ptrtoint ptr %gid.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %gid.i.i, align 2
  %conv.i108.i = zext i16 %99 to i32
  %arrayidx1.i109.i = getelementptr i16, ptr %gid.i.i, i32 1
  %100 = ptrtoint ptr %arrayidx1.i109.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx1.i109.i, align 2
  %conv2.i110.i = zext i16 %101 to i32
  %arrayidx3.i111.i = getelementptr i16, ptr %gid.i.i, i32 2
  %102 = ptrtoint ptr %arrayidx3.i111.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx3.i111.i, align 2
  %conv4.i112.i = zext i16 %103 to i32
  %arrayidx5.i113.i = getelementptr i16, ptr %gid.i.i, i32 3
  %104 = ptrtoint ptr %arrayidx5.i113.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx5.i113.i, align 2
  %conv6.i114.i = zext i16 %105 to i32
  %arrayidx7.i115.i = getelementptr i16, ptr %gid.i.i, i32 4
  %106 = ptrtoint ptr %arrayidx7.i115.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx7.i115.i, align 2
  %conv8.i116.i = zext i16 %107 to i32
  %arrayidx9.i117.i = getelementptr i16, ptr %gid.i.i, i32 5
  %108 = ptrtoint ptr %arrayidx9.i117.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx9.i117.i, align 2
  %conv10.i118.i = zext i16 %109 to i32
  %arrayidx11.i119.i = getelementptr i16, ptr %gid.i.i, i32 6
  %110 = ptrtoint ptr %arrayidx11.i119.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx11.i119.i, align 2
  %conv12.i120.i = zext i16 %111 to i32
  %arrayidx13.i121.i = getelementptr i16, ptr %gid.i.i, i32 7
  %112 = ptrtoint ptr %arrayidx13.i121.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx13.i121.i, align 2
  %conv14.i122.i = zext i16 %113 to i32
  %call.i123.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %smc_gid_target.i.i, ptr noundef nonnull @.str.16, i32 noundef %conv.i108.i, i32 noundef %conv2.i110.i, i32 noundef %conv4.i112.i, i32 noundef %conv6.i114.i, i32 noundef %conv8.i116.i, i32 noundef %conv10.i118.i, i32 noundef %conv12.i120.i, i32 noundef %conv14.i122.i) #18
  %call.i105.i = call i32 @strlen(ptr noundef nonnull %smc_gid_target.i.i) #22
  %add.i106.i = add i32 %call.i105.i, 1
  %call1.i107.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef %add.i106.i, ptr noundef nonnull %smc_gid_target.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107.i)
  %tobool52.not.i.i = icmp eq i32 %call1.i107.i, 0
  br i1 %tobool52.not.i.i, label %if.end54.i.i, label %if.end46.i.i.if.then.i.i.i65.i_crit_edge

if.end46.i.i.if.then.i.i.i65.i_crit_edge:         ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i65.i

if.end54.i.i:                                     ; preds = %if.end46.i.i
  %114 = call ptr @memset(ptr %smc_gid_target.i.i, i32 0, i32 41)
  %peer_gid.i.i = getelementptr %struct.smc_link_group, ptr %lgr.039, i32 0, i32 21, i32 0, i32 1, i32 %i.0137.i, i32 42
  %115 = ptrtoint ptr %peer_gid.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %peer_gid.i.i, align 2
  %conv.i103.i = zext i16 %116 to i32
  %arrayidx1.i.i = getelementptr i16, ptr %peer_gid.i.i, i32 1
  %117 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx1.i.i, align 2
  %conv2.i.i = zext i16 %118 to i32
  %arrayidx3.i.i = getelementptr i16, ptr %peer_gid.i.i, i32 2
  %119 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx3.i.i, align 2
  %conv4.i.i = zext i16 %120 to i32
  %arrayidx5.i.i = getelementptr i16, ptr %peer_gid.i.i, i32 3
  %121 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx5.i.i, align 2
  %conv6.i.i = zext i16 %122 to i32
  %arrayidx7.i.i = getelementptr i16, ptr %peer_gid.i.i, i32 4
  %123 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx7.i.i, align 2
  %conv8.i.i = zext i16 %124 to i32
  %arrayidx9.i.i = getelementptr i16, ptr %peer_gid.i.i, i32 5
  %125 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx9.i.i, align 2
  %conv10.i.i = zext i16 %126 to i32
  %arrayidx11.i.i = getelementptr i16, ptr %peer_gid.i.i, i32 6
  %127 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx11.i.i, align 2
  %conv12.i.i = zext i16 %128 to i32
  %arrayidx13.i.i = getelementptr i16, ptr %peer_gid.i.i, i32 7
  %129 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx13.i.i, align 2
  %conv14.i.i = zext i16 %130 to i32
  %call.i104.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %smc_gid_target.i.i, ptr noundef nonnull @.str.16, i32 noundef %conv.i103.i, i32 noundef %conv2.i.i, i32 noundef %conv4.i.i, i32 noundef %conv6.i.i, i32 noundef %conv8.i.i, i32 noundef %conv10.i.i, i32 noundef %conv12.i.i, i32 noundef %conv14.i.i) #18
  %call.i100.i = call i32 @strlen(ptr noundef nonnull %smc_gid_target.i.i) #22
  %add.i101.i = add i32 %call.i100.i, 1
  %call1.i102.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef %add.i101.i, ptr noundef nonnull %smc_gid_target.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102.i)
  %tobool60.not.i.i = icmp eq i32 %call1.i102.i, 0
  br i1 %tobool60.not.i.i, label %smc_nl_fill_lgr_link.exit.i, label %if.end54.i.i.if.then.i.i.i65.i_crit_edge

if.end54.i.i.if.then.i.i.i65.i_crit_edge:         ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i65.i

if.then.i.i.i65.i:                                ; preds = %if.end54.i.i.if.then.i.i.i65.i_crit_edge, %if.end46.i.i.if.then.i.i.i65.i_crit_edge, %if.end41.i.i.if.then.i.i.i65.i_crit_edge, %if.end35.i.i.if.then.i.i.i65.i_crit_edge, %if.end28.i.i.if.then.i.i.i65.i_crit_edge, %if.end24.i.i.if.then.i.i.i65.i_crit_edge, %if.end20.i.i.if.then.i.i.i65.i_crit_edge, %if.end15.i.i.if.then.i.i.i65.i_crit_edge, %if.end11.i.i.if.then.i.i.i65.i_crit_edge, %if.end7.i.i.if.then.i.i.i65.i_crit_edge
  %data.i.i.i64.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %131 = ptrtoint ptr %data.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data.i.i.i64.i, align 4
  %cmp.i.i14.i.i = icmp ugt ptr %132, %77
  br i1 %cmp.i.i14.i.i, label %do.end.i.i.i66.i, label %if.then.i.i.i65.i.nla_nest_cancel.exit.i67.i_crit_edge, !prof !98

if.then.i.i.i65.i.nla_nest_cancel.exit.i67.i_crit_edge: ; preds = %if.then.i.i.i65.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_nest_cancel.exit.i67.i

do.end.i.i.i66.i:                                 ; preds = %if.then.i.i.i65.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %nla_nest_cancel.exit.i67.i

nla_nest_cancel.exit.i67.i:                       ; preds = %do.end.i.i.i66.i, %if.then.i.i.i65.i.nla_nest_cancel.exit.i67.i_crit_edge
  %133 = ptrtoint ptr %data.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data.i.i.i64.i, align 4
  %sub.ptr.lhs.cast.i.i15.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i.i16.i.i = ptrtoint ptr %134 to i32
  %sub.ptr.sub.i.i17.i.i = sub i32 %sub.ptr.lhs.cast.i.i15.i.i, %sub.ptr.rhs.cast.i.i16.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i17.i.i) #18
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %nla_nest_cancel.exit.i67.i, %if.end.i49.i.if.then.i.i.i_crit_edge
  %add.ptr1.i18.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i.i.i = icmp eq ptr %add.ptr1.i18.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.smc_nl_fill_lgr_link.exit.thread.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.smc_nl_fill_lgr_link.exit.thread.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_fill_lgr_link.exit.thread.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %135 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ugt ptr %136, %add.ptr1.i18.i.i
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, !prof !98

if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %137 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i18.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %138 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i.i) #18
  br label %smc_nl_fill_lgr_link.exit.thread.i

smc_nl_fill_lgr_link.exit.thread.i:               ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.smc_nl_fill_lgr_link.exit.thread.i_crit_edge, %if.end13.i.smc_nl_fill_lgr_link.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %smc_gid_target.i.i) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %smc_ibname.i.i) #18
  br label %if.then.i.i

smc_nl_fill_lgr_link.exit.i:                      ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %139 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i57.i = ptrtoint ptr %140 to i32
  %sub.ptr.rhs.cast.i.i58.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i59.i = sub i32 %sub.ptr.lhs.cast.i.i57.i, %sub.ptr.rhs.cast.i.i58.i
  %conv.i.i60.i = trunc i32 %sub.ptr.sub.i.i59.i to i16
  %141 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv.i.i60.i, ptr %77, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %142 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i61.i = ptrtoint ptr %142 to i32
  %sub.ptr.rhs.cast.i.i.i62.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.sub.i.i.i63.i = sub i32 %sub.ptr.lhs.cast.i.i.i61.i, %sub.ptr.rhs.cast.i.i.i62.i
  %143 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %sub.ptr.sub.i.i.i63.i, ptr %add.ptr1.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %smc_gid_target.i.i) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %smc_ibname.i.i) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %smc_nl_fill_lgr_link.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0137.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.inc.i.next8_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.next8_crit_edge:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %next8

if.then.i.i:                                      ; preds = %smc_nl_fill_lgr_link.exit.thread.i, %smc_nl_fill_lgr.exit.thread.i
  %add.ptr1.i70.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i70.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.errout_crit_edge, label %if.then.i.i.i73.i

if.then.i.i.errout_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %errout

if.then.i.i.i73.i:                                ; preds = %if.then.i.i
  %data.i.i.i71.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %144 = ptrtoint ptr %data.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data.i.i.i71.i, align 4
  %cmp.i.i.i72.i = icmp ugt ptr %145, %add.ptr1.i70.i
  br i1 %cmp.i.i.i72.i, label %do.end.i.i.i74.i, label %if.then.i.i.i73.i.if.end.i.i.i.i_crit_edge, !prof !98

if.then.i.i.i73.i.if.end.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i73.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i.i

do.end.i.i.i74.i:                                 ; preds = %if.then.i.i.i73.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i74.i, %if.then.i.i.i73.i.if.end.i.i.i.i_crit_edge
  %146 = ptrtoint ptr %data.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data.i.i.i71.i, align 4
  %sub.ptr.lhs.cast.i.i.i75.i = ptrtoint ptr %add.ptr1.i70.i to i32
  %sub.ptr.rhs.cast.i.i.i76.i = ptrtoint ptr %147 to i32
  %sub.ptr.sub.i.i.i77.i = sub i32 %sub.ptr.lhs.cast.i.i.i75.i, %sub.ptr.rhs.cast.i.i.i76.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i77.i) #18
  br label %errout

next8:                                            ; preds = %for.inc.i.next8_crit_edge, %if.end7.i.next8_crit_edge, %for.body.next8_crit_edge
  %inc = add i32 %num.037, 1
  %148 = ptrtoint ptr %lgr.039 to i32
  call void @__asan_load4_noabort(i32 %148)
  %lgr.0 = load ptr, ptr %lgr.039, align 4
  %cmp.not = icmp eq ptr %lgr.0, @smc_lgr_list
  br i1 %cmp.not, label %next8.errout_crit_edge, label %next8.for.body_crit_edge

next8.for.body_crit_edge:                         ; preds = %next8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

next8.errout_crit_edge:                           ; preds = %next8
  call void @__sanitizer_cov_trace_pc() #20
  br label %errout

errout:                                           ; preds = %next8.errout_crit_edge, %if.end.i.i.i.i, %if.then.i.i.errout_crit_edge, %if.end.errout_crit_edge, %entry.errout_crit_edge
  %num.013 = phi i32 [ %num.037, %if.end.i.i.i.i ], [ %num.037, %if.then.i.i.errout_crit_edge ], [ 0, %entry.errout_crit_edge ], [ %inc, %next8.errout_crit_edge ], [ %num.037, %if.end.errout_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1)) #18
  %149 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %num.013, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcr_nl_get_link(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smc_nl_fill_lgr_list(ptr noundef %skb, ptr noundef %cb, i1 noundef zeroext true)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcd_nl_get_lgr(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i96.i.i.i = alloca i32, align 4
  %tmp.i94.i.i.i = alloca i32, align 4
  %tmp.i92.i.i.i = alloca i8, align 1
  %tmp.i90.i.i.i = alloca i64, align 8
  %tmp.i88.i.i.i = alloca i64, align 8
  %tmp.i.i.i.i = alloca i32, align 4
  %smc_pnet.i.i.i = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smcd_dev_list to i32))
  %.pn27.i = load ptr, ptr @smcd_dev_list, align 4
  %cmp.not28.i = icmp eq ptr %.pn27.i, @smcd_dev_list
  br i1 %cmp.not28.i, label %entry.smc_nl_fill_smcd_dev.exit_crit_edge, label %for.body.lr.ph.i

entry.smc_nl_fill_smcd_dev.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_fill_smcd_dev.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %3 = getelementptr inbounds [17 x i8], ptr %smc_pnet.i.i.i, i32 0, i32 16
  %nlh3.i.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn32.i = phi ptr [ %.pn27.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %num.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num.1.i, %for.inc.i.for.body.i_crit_edge ]
  %lgr_list.i = getelementptr i8, ptr %.pn32.i, i32 88
  %4 = ptrtoint ptr %lgr_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lgr_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %lgr_list.i
  br i1 %cmp.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %num.029.i, i32 %2)
  %cmp4.i = icmp slt i32 %num.029.i, %2
  br i1 %cmp4.i, label %if.end.i.next11.i_crit_edge, label %if.end6.i

if.end.i.next11.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %next11.i

if.end6.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %lgr_lock.i.i = getelementptr i8, ptr %.pn32.i, i32 96
  call void @_raw_spin_lock_bh(ptr noundef %lgr_lock.i.i) #18
  %8 = ptrtoint ptr %lgr_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %lgr.042.i.i = load ptr, ptr %lgr_list.i, align 8
  %cmp.not43.i.i = icmp eq ptr %lgr.042.i.i, %lgr_list.i
  br i1 %cmp.not43.i.i, label %if.end6.i.smc_nl_handle_smcd_lgr.exit.thread.i_crit_edge, label %if.end6.i.for.body.i.i_crit_edge

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

if.end6.i.smc_nl_handle_smcd_lgr.exit.thread.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_handle_smcd_lgr.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %lgr.047.i.i = phi ptr [ %lgr.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %lgr.042.i.i, %if.end6.i.for.body.i.i_crit_edge ]
  %num.044.i.i = phi i32 [ %num.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.for.body.i.i_crit_edge ]
  %is_smcd.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.047.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %is_smcd.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_smcd.i.i, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %num.044.i.i, i32 %7)
  %cmp2.i.i = icmp slt i32 %num.044.i.i, %7
  br i1 %cmp2.i.i, label %if.end.i.i.next9.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.next9.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %next9.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %smc_pnet.i.i.i) #18
  %11 = call ptr @memset(ptr %smc_pnet.i.i.i, i32 255, i32 17)
  %12 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cb, align 4
  %portid.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %portid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %portid.i.i.i, align 4
  %16 = ptrtoint ptr %nlh3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlh3.i.i.i, align 4
  %nlmsg_seq.i.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %nlmsg_seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlmsg_seq.i.i.i, align 4
  %call.i.i.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %15, i32 noundef %19, ptr noundef nonnull @smc_gen_nl_family, i32 noundef 2, i8 noundef zeroext 4) #18
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end4.i.i.smc_nl_handle_smcd_lgr.exit.i_crit_edge, label %if.end.i.i.i

if.end4.i.i.smc_nl_handle_smcd_lgr.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_handle_smcd_lgr.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i.i
  %20 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %call1.i.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32772, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call1.i.i.i.i.i, 0
  %tobool5.not110.i.i.i = icmp eq ptr %21, null
  %tobool5.not.i.i.i = select i1 %cmp.i.i.i.i.i, i1 true, i1 %tobool5.not110.i.i.i
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.if.then.i.i.i.i_crit_edge, label %if.end7.i.i.i

if.end.i.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  %id.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.047.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #18
  %24 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end11.i.i.i, label %if.end7.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end7.i.i.i.if.then.i.i.i.i.i_crit_edge:        ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end7.i.i.i
  %smcd.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.047.i.i, i32 0, i32 21, i32 0, i32 1
  %25 = ptrtoint ptr %smcd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smcd.i.i.i, align 8
  %local_gid.i.i.i = getelementptr inbounds %struct.smcd_dev, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %local_gid.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %local_gid.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i88.i.i.i) #18
  %29 = ptrtoint ptr %tmp.i88.i.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %tmp.i88.i.i.i, align 8
  %call.i89.i.i.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i88.i.i.i, i32 noundef 8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i88.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %call.i89.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %if.end15.i.i.i, label %if.end11.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end11.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i.i

if.end15.i.i.i:                                   ; preds = %if.end11.i.i.i
  %30 = getelementptr inbounds %struct.smc_link_group, ptr %lgr.047.i.i, i32 0, i32 21
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i90.i.i.i) #18
  %33 = ptrtoint ptr %tmp.i90.i.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %tmp.i90.i.i.i, align 8
  %call.i91.i.i.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i90.i.i.i, i32 noundef 8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i90.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %call.i91.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end19.i.i.i, label %if.end15.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end15.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i.i

if.end19.i.i.i:                                   ; preds = %if.end15.i.i.i
  %vlan_id.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.047.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %vlan_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vlan_id.i.i.i, align 4
  %conv.i.i.i = trunc i16 %35 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i92.i.i.i) #18
  %36 = ptrtoint ptr %tmp.i92.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i.i.i, ptr %tmp.i92.i.i.i, align 1
  %call.i93.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i92.i.i.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i92.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %if.end23.i.i.i, label %if.end19.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end19.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i.i

if.end23.i.i.i:                                   ; preds = %if.end19.i.i.i
  %conns_num.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.047.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %conns_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %conns_num.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i94.i.i.i) #18
  %39 = ptrtoint ptr %tmp.i94.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tmp.i94.i.i.i, align 4
  %call.i95.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i94.i.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i94.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %call.i95.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %if.end27.i.i.i, label %if.end23.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end23.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i.i

if.end27.i.i.i:                                   ; preds = %if.end23.i.i.i
  %40 = ptrtoint ptr %smcd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smcd.i.i.i, align 8
  %call29.i.i.i = call zeroext i16 @smc_ism_get_chid(ptr noundef %41) #18
  %conv30.i.i.i = zext i16 %call29.i.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i96.i.i.i) #18
  %42 = ptrtoint ptr %tmp.i96.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv30.i.i.i, ptr %tmp.i96.i.i.i, align 4
  %call.i97.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i96.i.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i96.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %call.i97.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.end34.i.i.i, label %if.end27.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end27.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i.i

if.end34.i.i.i:                                   ; preds = %if.end27.i.i.i
  %43 = ptrtoint ptr %smcd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %smcd.i.i.i, align 8
  %pnetid.i.i.i = getelementptr inbounds %struct.smcd_dev, ptr %44, i32 0, i32 9
  %45 = call ptr @memcpy(ptr %smc_pnet.i.i.i, ptr %pnetid.i.i.i, i32 16)
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %3, align 1
  %call.i29.i.i = call i32 @strlen(ptr noundef nonnull %smc_pnet.i.i.i) #22
  %add.i.i.i = add i32 %call.i29.i.i, 1
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef %add.i.i.i, ptr noundef nonnull %smc_pnet.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool39.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool39.not.i.i.i, label %if.end41.i.i.i, label %if.end34.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end34.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i.i

if.end41.i.i.i:                                   ; preds = %if.end34.i.i.i
  %smc_version.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.047.i.i, i32 0, i32 16
  %47 = ptrtoint ptr %smc_version.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %smc_version.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp.i.i.i = icmp ugt i8 %48, 1
  br i1 %cmp.i.i.i, label %if.then44.i.i.i, label %if.end41.i.i.i.smc_nl_fill_smcd_lgr.exit.i.i_crit_edge

if.end41.i.i.i.smc_nl_fill_smcd_lgr.exit.i.i_crit_edge: ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_fill_smcd_lgr.exit.i.i

if.then44.i.i.i:                                  ; preds = %if.end41.i.i.i
  %49 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %call1.i.i99.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32777, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i99.i.i.i)
  %cmp.i.i100.i.i.i = icmp slt i32 %call1.i.i99.i.i.i, 0
  %tobool46.not111.i.i.i = icmp eq ptr %50, null
  %tobool46.not.i.i.i = select i1 %cmp.i.i100.i.i.i, i1 true, i1 %tobool46.not111.i.i.i
  br i1 %tobool46.not.i.i.i, label %if.then44.i.i.i.if.then.i.i.i.i.i_crit_edge, label %if.end48.i.i.i

if.then44.i.i.i.if.then.i.i.i.i.i_crit_edge:      ; preds = %if.then44.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i.i

if.end48.i.i.i:                                   ; preds = %if.then44.i.i.i
  %call49.i.i.i = call fastcc i32 @smc_nl_fill_lgr_v2_common(ptr noundef %lgr.047.i.i, ptr noundef %skb, ptr noundef nonnull %50) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i.i)
  %tobool50.not.i.i.i = icmp eq i32 %call49.i.i.i, 0
  br i1 %tobool50.not.i.i.i, label %if.end48.i.i.i.smc_nl_fill_smcd_lgr.exit.i.i_crit_edge, label %if.end48.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end48.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i.i

if.end48.i.i.i.smc_nl_fill_smcd_lgr.exit.i.i_crit_edge: ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_fill_smcd_lgr.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end48.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.then44.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end34.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end27.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end23.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end19.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end15.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end11.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end7.i.i.i.if.then.i.i.i.i.i_crit_edge
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i103.i.i.i = icmp ugt ptr %52, %21
  br i1 %cmp.i.i103.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge, !prof !98

if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_nest_cancel.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %nla_nest_cancel.exit.i.i.i

nla_nest_cancel.exit.i.i.i:                       ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge
  %53 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i104.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i105.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i106.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i104.i.i.i, %sub.ptr.rhs.cast.i.i105.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i106.i.i.i) #18
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %nla_nest_cancel.exit.i.i.i, %if.end.i.i.i.if.then.i.i.i.i_crit_edge
  %add.ptr1.i107.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -20
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %add.ptr1.i107.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.smc_nl_handle_smcd_lgr.exit.i_crit_edge, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.smc_nl_handle_smcd_lgr.exit.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_handle_smcd_lgr.exit.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %55 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp ugt ptr %56, %add.ptr1.i107.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge, !prof !98

if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.end.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge
  %57 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i.i = ptrtoint ptr %add.ptr1.i107.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i.i.i) #18
  br label %smc_nl_handle_smcd_lgr.exit.i

smc_nl_fill_smcd_lgr.exit.i.i:                    ; preds = %if.end48.i.i.i.smc_nl_fill_smcd_lgr.exit.i.i_crit_edge, %if.end41.i.i.i.smc_nl_fill_smcd_lgr.exit.i.i_crit_edge
  %59 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %61 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i.i.i.i, ptr %21, align 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -20
  %62 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %63 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.ptr.sub.i.i.i.i.i, ptr %add.ptr1.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %smc_pnet.i.i.i) #18
  br label %next9.i.i

next9.i.i:                                        ; preds = %smc_nl_fill_smcd_lgr.exit.i.i, %if.end.i.i.next9.i.i_crit_edge
  %inc.i.i = add i32 %num.044.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %next9.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %num.1.i.i = phi i32 [ %inc.i.i, %next9.i.i ], [ %num.044.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %64 = ptrtoint ptr %lgr.047.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %lgr.0.i.i = load ptr, ptr %lgr.047.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %lgr.0.i.i, %lgr_list.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.smc_nl_handle_smcd_lgr.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.smc_nl_handle_smcd_lgr.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_handle_smcd_lgr.exit.thread.i

smc_nl_handle_smcd_lgr.exit.thread.i:             ; preds = %for.inc.i.i.smc_nl_handle_smcd_lgr.exit.thread.i_crit_edge, %if.end6.i.smc_nl_handle_smcd_lgr.exit.thread.i_crit_edge
  %num.035.i.ph.i = phi i32 [ 0, %if.end6.i.smc_nl_handle_smcd_lgr.exit.thread.i_crit_edge ], [ %num.1.i.i, %for.inc.i.i.smc_nl_handle_smcd_lgr.exit.thread.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lgr_lock.i.i) #18
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %num.035.i.ph.i, ptr %arrayidx.i.i, align 4
  br label %next11.i

smc_nl_handle_smcd_lgr.exit.i:                    ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.i.i.smc_nl_handle_smcd_lgr.exit.i_crit_edge, %if.end4.i.i.smc_nl_handle_smcd_lgr.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %smc_pnet.i.i.i) #18
  call void @_raw_spin_unlock_bh(ptr noundef %lgr_lock.i.i) #18
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %num.044.i.i, ptr %arrayidx.i.i, align 4
  br label %smc_nl_fill_smcd_dev.exit

next11.i:                                         ; preds = %smc_nl_handle_smcd_lgr.exit.thread.i, %if.end.i.next11.i_crit_edge
  %inc.i = add i32 %num.029.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %next11.i, %for.body.i.for.inc.i_crit_edge
  %num.1.i = phi i32 [ %num.029.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %next11.i ]
  %67 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.i = load ptr, ptr %.pn32.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @smcd_dev_list
  br i1 %cmp.not.i, label %for.inc.i.smc_nl_fill_smcd_dev.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.smc_nl_fill_smcd_dev.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_nl_fill_smcd_dev.exit

smc_nl_fill_smcd_dev.exit:                        ; preds = %for.inc.i.smc_nl_fill_smcd_dev.exit_crit_edge, %smc_nl_handle_smcd_lgr.exit.i, %entry.smc_nl_fill_smcd_dev.exit_crit_edge
  %num.016.i = phi i32 [ %num.029.i, %smc_nl_handle_smcd_lgr.exit.i ], [ 0, %entry.smc_nl_fill_smcd_dev.exit_crit_edge ], [ %num.1.i, %for.inc.i.smc_nl_fill_smcd_dev.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #18
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %num.016.i, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len, align 4
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_lgr_cleanup_early(ptr noundef %lgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %lgr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 15
  %0 = ptrtoint ptr %is_smcd.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_smcd.i, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.smc_lgr_list_head.exit_crit_edge, label %if.then.i

if.end.smc_lgr_list_head.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_lgr_list_head.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1
  %2 = ptrtoint ptr %smcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smcd.i, align 8
  %lgr_lock1.i = getelementptr inbounds %struct.smcd_dev, ptr %3, i32 0, i32 12
  br label %smc_lgr_list_head.exit

smc_lgr_list_head.exit:                           ; preds = %if.then.i, %if.end.smc_lgr_list_head.exit_crit_edge
  %storemerge.i = phi ptr [ %lgr_lock1.i, %if.then.i ], [ getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1), %if.end.smc_lgr_list_head.exit_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %storemerge.i) #18
  %4 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lgr, align 4
  %cmp.i.not = icmp eq ptr %5, %lgr
  br i1 %cmp.i.not, label %smc_lgr_list_head.exit.if.end5_crit_edge, label %if.then3

smc_lgr_list_head.exit.if.end5_crit_edge:         ; preds = %smc_lgr_list_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then3:                                         ; preds = %smc_lgr_list_head.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %lgr) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.list_del_init.exit_crit_edge

if.then3.list_del_init.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lgr, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lgr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then3.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %lgr to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %lgr, ptr %lgr, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %lgr, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lgr, ptr %prev.i3.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %list_del_init.exit, %smc_lgr_list_head.exit.if.end5_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %storemerge.i) #18
  tail call fastcc void @__smc_lgr_terminate(ptr noundef nonnull %lgr, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__smc_lgr_terminate(ptr noundef %lgr, i1 noundef zeroext %soft) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %terminating = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 13
  %0 = ptrtoint ptr %terminating to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %terminating, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %free_work) #18
  %2 = ptrtoint ptr %terminating to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load2 = load i8, ptr %terminating, align 8
  %bf.set = or i8 %bf.load2, 64
  store i8 %bf.set, ptr %terminating, align 8
  %conns_lock = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 2
  tail call void @_raw_read_lock_bh(ptr noundef %conns_lock) #18
  %conns_all = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 1
  %call4 = tail call ptr @rb_first(ptr noundef %conns_all) #18
  %tobool5.not39 = icmp eq ptr %call4, null
  br i1 %tobool5.not39, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %sock_put.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %node.040 = phi ptr [ %call16, %sock_put.exit.while.body_crit_edge ], [ %call4, %if.end.while.body_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %conns_lock) #18
  %add.ptr9 = getelementptr i8, ptr %node.040, i32 -984
  %skc_refcnt.i = getelementptr i8, ptr %node.040, i32 -884
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #18
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #18, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %while.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !98

while.body.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %while.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !101

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %while.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %while.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #18
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @lock_sock_nested(ptr noundef %add.ptr9, i32 noundef 0) #18
  tail call fastcc void @smc_conn_kill(ptr noundef nonnull %node.040, i1 noundef zeroext %soft)
  tail call void @release_sock(ptr noundef %add.ptr9) #18
  %call.i.i.i.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #18, !srcloc !103
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i37, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !101

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #18
  br label %sock_put.exit

if.then.i:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !104
  tail call void @sk_free(ptr noundef %add.ptr9) #18
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  tail call void @_raw_read_lock_bh(ptr noundef %conns_lock) #18
  %call16 = tail call ptr @rb_first(ptr noundef %conns_all) #18
  %tobool5.not = icmp eq ptr %call16, null
  br i1 %tobool5.not, label %sock_put.exit.while.end_crit_edge, label %sock_put.exit.while.body_crit_edge

sock_put.exit.while.body_crit_edge:               ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

sock_put.exit.while.end_crit_edge:                ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %sock_put.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %conns_lock) #18
  %is_smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 15
  %6 = ptrtoint ptr %is_smcd.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_smcd.i, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i38

if.then.i38:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call i32 @smc_ism_signal_shutdown(ptr noundef %lgr) #18
  br label %smc_lgr_cleanup.exit

if.else.i:                                        ; preds = %while.end
  %llc_termination_rsn.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 23
  %8 = ptrtoint ptr %llc_termination_rsn.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %llc_termination_rsn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  %spec.store.select.i = select i1 %tobool1.not.i, i32 196608, i32 %9
  tail call void @smc_llc_send_link_delete_all(ptr noundef %lgr, i1 noundef zeroext false, i32 noundef %spec.store.select.i) #18
  %state.i.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %10 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %switch.i.i.i.i = icmp ugt i32 %11, 1
  br i1 %switch.i.i.i.i, label %smc_link_sendable.exit.i.i, label %if.else.i.if.end.i.i_crit_edge

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

smc_link_sendable.exit.i.i:                       ; preds = %if.else.i
  %cur_qp_state.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %cur_qp_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_qp_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i.i.i = icmp eq i32 %13, 3
  br i1 %cmp.i.i.i, label %if.then.i.i, label %smc_link_sendable.exit.i.i.if.end.i.i_crit_edge

smc_link_sendable.exit.i.i.if.end.i.i_crit_edge:  ; preds = %smc_link_sendable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %smc_link_sendable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %state.i.i.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %smc_link_sendable.exit.i.i.if.end.i.i_crit_edge, %if.else.i.if.end.i.i_crit_edge
  %state.i.i.1.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %15 = ptrtoint ptr %state.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i.i.1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %switch.i.i.1.i.i = icmp ugt i32 %16, 1
  br i1 %switch.i.i.1.i.i, label %smc_link_sendable.exit.1.i.i, label %if.end.i.i.if.end.1.i.i_crit_edge

if.end.i.i.if.end.1.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.1.i.i

smc_link_sendable.exit.1.i.i:                     ; preds = %if.end.i.i
  %cur_qp_state.i.1.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 4, i32 1
  %17 = ptrtoint ptr %cur_qp_state.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur_qp_state.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i.1.i.i = icmp eq i32 %18, 3
  br i1 %cmp.i.1.i.i, label %if.then.1.i.i, label %smc_link_sendable.exit.1.i.i.if.end.1.i.i_crit_edge

smc_link_sendable.exit.1.i.i.if.end.1.i.i_crit_edge: ; preds = %smc_link_sendable.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.1.i.i

if.then.1.i.i:                                    ; preds = %smc_link_sendable.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %state.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %state.i.i.1.i.i, align 8
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %if.then.1.i.i, %smc_link_sendable.exit.1.i.i.if.end.1.i.i_crit_edge, %if.end.i.i.if.end.1.i.i_crit_edge
  %state.i.i.2.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %20 = ptrtoint ptr %state.i.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i.i.2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %switch.i.i.2.i.i = icmp ugt i32 %21, 1
  br i1 %switch.i.i.2.i.i, label %smc_link_sendable.exit.2.i.i, label %if.end.1.i.i.smcr_lgr_link_deactivate_all.exit.i_crit_edge

if.end.1.i.i.smcr_lgr_link_deactivate_all.exit.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_lgr_link_deactivate_all.exit.i

smc_link_sendable.exit.2.i.i:                     ; preds = %if.end.1.i.i
  %cur_qp_state.i.2.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 4, i32 1
  %22 = ptrtoint ptr %cur_qp_state.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_qp_state.i.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i.2.i.i = icmp eq i32 %23, 3
  br i1 %cmp.i.2.i.i, label %if.then.2.i.i, label %smc_link_sendable.exit.2.i.i.smcr_lgr_link_deactivate_all.exit.i_crit_edge

smc_link_sendable.exit.2.i.i.smcr_lgr_link_deactivate_all.exit.i_crit_edge: ; preds = %smc_link_sendable.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_lgr_link_deactivate_all.exit.i

if.then.2.i.i:                                    ; preds = %smc_link_sendable.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %state.i.i.2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %state.i.i.2.i.i, align 8
  br label %smcr_lgr_link_deactivate_all.exit.i

smcr_lgr_link_deactivate_all.exit.i:              ; preds = %if.then.2.i.i, %smc_link_sendable.exit.2.i.i.smcr_lgr_link_deactivate_all.exit.i_crit_edge, %if.end.1.i.i.smcr_lgr_link_deactivate_all.exit.i_crit_edge
  %llc_msg_waiter.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %llc_msg_waiter.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #18
  %llc_flow_waiter.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %llc_flow_waiter.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #18
  br label %smc_lgr_cleanup.exit

smc_lgr_cleanup.exit:                             ; preds = %smcr_lgr_link_deactivate_all.exit.i, %if.then.i38
  tail call fastcc void @smc_lgr_free(ptr noundef %lgr)
  br label %cleanup

cleanup:                                          ; preds = %smc_lgr_cleanup.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcr_link_init(ptr noundef %lgr, ptr noundef %lnk, i8 noundef zeroext %link_idx, ptr noundef %ini) local_unnamed_addr #0 align 64 {
entry:
  %rndvec = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rndvec) #18
  %0 = ptrtoint ptr %rndvec to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rndvec, align 1, !annotation !105
  %1 = getelementptr inbounds [3 x i8], ptr %rndvec, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !105
  %3 = getelementptr inbounds [3 x i8], ptr %rndvec, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !105
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 16
  %5 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp eq i8 %6, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %ib_dev_v2 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 3
  %7 = ptrtoint ptr %ib_dev_v2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ib_dev_v2, align 4
  %9 = ptrtoint ptr %lnk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %lnk, align 8
  %ib_port_v2 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %ib_dev = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 13
  %10 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ib_dev, align 4
  %12 = ptrtoint ptr %lnk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %lnk, align 8
  %ib_port = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink.in = phi ptr [ %ib_port_v2, %if.then ], [ %ib_port, %if.else ]
  %13 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %13)
  %.sink = load i8, ptr %.sink.in, align 8
  %14 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %14, align 4
  %16 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lnk, align 8
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ibdev, align 8
  %20 = getelementptr inbounds %struct.ib_device, ptr %19, i32 0, i32 13
  %call = tail call ptr @get_device(ptr noundef %20) #18
  %21 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lnk, align 8
  %lnk_cnt = getelementptr inbounds %struct.smc_ib_device, ptr %22, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lnk_cnt, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %lnk_cnt, i32 1, i32 3, i32 1) #18
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lnk_cnt, ptr %lnk_cnt, i32 1, ptr elementtype(i32) %lnk_cnt) #18, !srcloc !106
  %refcnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 49
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #18
  %24 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %refcnt, align 4
  %clearing = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 48
  %25 = ptrtoint ptr %clearing to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %clearing, align 1
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %clearing, align 1
  %26 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lnk, align 8
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %14, align 4
  %conv10 = zext i8 %29 to i32
  %sub = add nsw i32 %conv10, -1
  %active_mtu = getelementptr %struct.smc_ib_device, ptr %27, i32 0, i32 2, i32 %sub, i32 3
  %30 = ptrtoint ptr %active_mtu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %active_mtu, align 8
  %path_mtu = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 37
  %32 = ptrtoint ptr %path_mtu to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %path_mtu, align 4
  %next_link_id.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 7
  %33 = ptrtoint ptr %next_link_id.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %next_link_id.promoted.i = load i8, ptr %next_link_id.i, align 8
  %link_id5.2.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 43
  %state.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %34 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %switch.i.i = icmp ugt i32 %35, 1
  %link_id5.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 43
  %state.i.1.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %link_id5.1.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 43
  %state.i.2.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  br label %again.i

again.i:                                          ; preds = %again.i.backedge, %if.end
  %spec.select22.i = phi i8 [ %next_link_id.promoted.i, %if.end ], [ %spec.select.i, %again.i.backedge ]
  %inc.i = add i8 %spec.select22.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %tobool.not.i = icmp eq i8 %inc.i, 0
  %spec.select.i = select i1 %tobool.not.i, i8 1, i8 %inc.i
  br i1 %switch.i.i, label %land.lhs.true.i, label %again.i.for.inc.i_crit_edge

again.i.for.inc.i_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %again.i
  %36 = ptrtoint ptr %link_id5.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %link_id5.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %spec.select.i)
  %cmp7.i = icmp eq i8 %37, %spec.select.i
  br i1 %cmp7.i, label %land.lhs.true.i.again.i.backedge_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i.again.i.backedge_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %again.i.backedge

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %again.i.for.inc.i_crit_edge
  %38 = ptrtoint ptr %state.i.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %switch.i.1.i = icmp ugt i32 %39, 1
  br i1 %switch.i.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %40 = ptrtoint ptr %link_id5.1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %link_id5.1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %spec.select.i)
  %cmp7.1.i = icmp eq i8 %41, %spec.select.i
  br i1 %cmp7.1.i, label %land.lhs.true.1.i.again.i.backedge_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

land.lhs.true.1.i.again.i.backedge_crit_edge:     ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %again.i.backedge

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %42 = ptrtoint ptr %state.i.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %switch.i.2.i = icmp ugt i32 %43, 1
  br i1 %switch.i.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.smcr_next_link_id.exit_crit_edge

for.inc.1.i.smcr_next_link_id.exit_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_next_link_id.exit

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %44 = ptrtoint ptr %link_id5.2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %link_id5.2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %spec.select.i)
  %cmp7.2.i = icmp eq i8 %45, %spec.select.i
  br i1 %cmp7.2.i, label %land.lhs.true.2.i.again.i.backedge_crit_edge, label %land.lhs.true.2.i.smcr_next_link_id.exit_crit_edge

land.lhs.true.2.i.smcr_next_link_id.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_next_link_id.exit

land.lhs.true.2.i.again.i.backedge_crit_edge:     ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %again.i.backedge

again.i.backedge:                                 ; preds = %land.lhs.true.2.i.again.i.backedge_crit_edge, %land.lhs.true.1.i.again.i.backedge_crit_edge, %land.lhs.true.i.again.i.backedge_crit_edge
  br label %again.i

smcr_next_link_id.exit:                           ; preds = %land.lhs.true.2.i.smcr_next_link_id.exit_crit_edge, %for.inc.1.i.smcr_next_link_id.exit_crit_edge
  %46 = ptrtoint ptr %next_link_id.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %spec.select.i, ptr %next_link_id.i, align 8
  %link_id = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 43
  %47 = ptrtoint ptr %link_id to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %spec.select.i, ptr %link_id, align 2
  %lgr12 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %48 = ptrtoint ptr %lgr12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %lgr, ptr %lgr12, align 4
  %refcnt.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #18
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #18, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %smcr_next_link_id.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !98

smcr_next_link_id.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %smcr_next_link_id.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %smcr_next_link_id.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %50 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %.not.i.i.i.i = icmp sgt i32 %50, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.smc_lgr_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !101

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.smc_lgr_hold.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_lgr_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %smcr_next_link_id.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %smcr_next_link_id.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #18
  br label %smc_lgr_hold.exit

smc_lgr_hold.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.smc_lgr_hold.exit_crit_edge
  %link_idx13 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 46
  %51 = ptrtoint ptr %link_idx13 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %link_idx, ptr %link_idx13, align 1
  %52 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lnk, align 8
  %54 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %14, align 4
  %conv.i = zext i8 %55 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.smc_ib_device, ptr %53, i32 0, i32 18, i32 %sub.i
  %call.i.i.i143 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #18
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #18, !srcloc !106
  %57 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lnk, align 8
  %ibname.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 52
  %ibdev.i = getelementptr inbounds %struct.smc_ib_device, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ibdev.i, align 8
  %name.i = getelementptr inbounds %struct.ib_device, ptr %60, i32 0, i32 2
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ibname.i, i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef %name.i) #18
  %61 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %14, align 4
  %conv.i145 = zext i8 %62 to i32
  %sub.i146 = add nsw i32 %conv.i145, -1
  %arrayidx.i147 = getelementptr %struct.smc_ib_device, ptr %58, i32 0, i32 19, i32 %sub.i146
  %63 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i147, align 4
  %ndev_ifidx3.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 53
  %65 = ptrtoint ptr %ndev_ifidx3.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %ndev_ifidx3.i, align 4
  %conn_cnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 58
  %call.i.i141 = tail call zeroext i1 @__kasan_check_write(ptr noundef %conn_cnt, i32 noundef 4) #18
  %66 = ptrtoint ptr %conn_cnt to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %conn_cnt, align 4
  tail call void @smc_llc_link_set_uid(ptr noundef %lnk) #18
  %link_down_wrk = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 51
  tail call void @__init_work(ptr noundef %link_down_wrk, i32 noundef 0) #18
  %67 = ptrtoint ptr %link_down_wrk to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -64, ptr %link_down_wrk, align 8
  %lockdep_map = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 51, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @smcr_link_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry17 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 51, i32 1
  %68 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 51, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 51, i32 2
  %70 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @smc_link_down_work, ptr %func, align 4
  %71 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lnk, align 8
  %initialized = getelementptr inbounds %struct.smc_ib_device, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load20 = load i8, ptr %initialized, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20)
  %tobool.not = icmp sgt i8 %bf.load20, -1
  br i1 %tobool.not, label %if.then21, label %smc_lgr_hold.exit.if.end27_crit_edge

smc_lgr_hold.exit.if.end27_crit_edge:             ; preds = %smc_lgr_hold.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.then21:                                        ; preds = %smc_lgr_hold.exit
  %call23 = tail call i32 @smc_ib_setup_per_ibdev(ptr noundef %72) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end27_crit_edge, label %if.then21.out_crit_edge

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %smc_lgr_hold.exit.if.end27_crit_edge
  call void @get_random_bytes(ptr noundef nonnull %rndvec, i32 noundef 3) #18
  %74 = ptrtoint ptr %rndvec to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rndvec, align 1
  %conv29 = zext i8 %75 to i32
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %1, align 1
  %conv31 = zext i8 %77 to i32
  %shl = shl nuw nsw i32 %conv31, 8
  %add = or i32 %shl, %conv29
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %3, align 1
  %conv33 = zext i8 %79 to i32
  %shl34 = shl nuw nsw i32 %conv33, 16
  %add35 = or i32 %add, %shl34
  %psn_initial = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 39
  %80 = ptrtoint ptr %psn_initial to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add35, ptr %psn_initial, align 4
  %81 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lnk, align 8
  %83 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %14, align 4
  %vlan_id = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 5
  %85 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %vlan_id, align 2
  %gid = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 34
  %sgid_index = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 35
  %87 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %cmp41 = icmp eq i8 %88, 2
  %smcrv243 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17
  %spec.select = select i1 %cmp41, ptr %smcrv243, ptr null
  %call44 = call i32 @smc_ib_determine_gid(ptr noundef %82, i8 noundef zeroext %84, i16 noundef zeroext %86, ptr noundef %gid, ptr noundef %sgid_index, ptr noundef %spec.select) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end47:                                         ; preds = %if.end27
  %call48 = call i32 @smc_llc_link_init(ptr noundef %lnk) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end51:                                         ; preds = %if.end47
  %call52 = call i32 @smc_wr_alloc_link_mem(ptr noundef %lnk) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.clear_llc_lnk_crit_edge

if.end51.clear_llc_lnk_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %clear_llc_lnk

if.end55:                                         ; preds = %if.end51
  %call56 = call i32 @smc_ib_create_protection_domain(ptr noundef %lnk) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.free_link_mem_crit_edge

if.end55.free_link_mem_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_link_mem

if.end59:                                         ; preds = %if.end55
  %call60 = call i32 @smc_ib_create_queue_pair(ptr noundef %lnk) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.dealloc_pd_crit_edge

if.end59.dealloc_pd_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %dealloc_pd

if.end63:                                         ; preds = %if.end59
  %call64 = call i32 @smc_wr_create_link(ptr noundef %lnk) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %destroy_qp

if.end67:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  %state = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 54
  %89 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %state, align 8
  br label %cleanup

destroy_qp:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  call void @smc_ib_destroy_queue_pair(ptr noundef %lnk) #18
  br label %dealloc_pd

dealloc_pd:                                       ; preds = %destroy_qp, %if.end59.dealloc_pd_crit_edge
  %rc.0 = phi i32 [ %call60, %if.end59.dealloc_pd_crit_edge ], [ %call64, %destroy_qp ]
  call void @smc_ib_dealloc_protection_domain(ptr noundef %lnk) #18
  br label %free_link_mem

free_link_mem:                                    ; preds = %dealloc_pd, %if.end55.free_link_mem_crit_edge
  %rc.1 = phi i32 [ %call56, %if.end55.free_link_mem_crit_edge ], [ %rc.0, %dealloc_pd ]
  call void @smc_wr_free_link_mem(ptr noundef %lnk) #18
  br label %clear_llc_lnk

clear_llc_lnk:                                    ; preds = %free_link_mem, %if.end51.clear_llc_lnk_crit_edge
  %rc.2 = phi i32 [ %call52, %if.end51.clear_llc_lnk_crit_edge ], [ %rc.1, %free_link_mem ]
  call void @smc_llc_link_clear(ptr noundef %lnk, i1 noundef zeroext false) #18
  br label %out

out:                                              ; preds = %clear_llc_lnk, %if.end47.out_crit_edge, %if.end27.out_crit_edge, %if.then21.out_crit_edge
  %rc.3 = phi i32 [ %call44, %if.end27.out_crit_edge ], [ %call48, %if.end47.out_crit_edge ], [ %rc.2, %clear_llc_lnk ], [ %call23, %if.then21.out_crit_edge ]
  %90 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lnk, align 8
  %92 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %14, align 4
  %conv.i149 = zext i8 %93 to i32
  %sub.i150 = add nsw i32 %conv.i149, -1
  %arrayidx.i151 = getelementptr %struct.smc_ib_device, ptr %91, i32 0, i32 18, i32 %sub.i150
  %call.i.i.i152 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i151, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %arrayidx.i151, i32 1, i32 3, i32 1) #18
  %94 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i151, ptr %arrayidx.i151, i32 1, ptr elementtype(i32) %arrayidx.i151) #18, !srcloc !107
  %95 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lnk, align 8
  %ibdev69 = getelementptr inbounds %struct.smc_ib_device, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %ibdev69 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ibdev69, align 8
  %99 = getelementptr inbounds %struct.ib_device, ptr %98, i32 0, i32 13
  call void @put_device(ptr noundef %99) #18
  %100 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lnk, align 8
  %lnk_cnt72 = getelementptr inbounds %struct.smc_ib_device, ptr %101, i32 0, i32 15
  %102 = call ptr @memset(ptr %lnk, i32 0, i32 864)
  %call.i.i142 = call zeroext i1 @__kasan_check_write(ptr noundef %lnk_cnt72, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  call void @llvm.prefetch.p0(ptr %lnk_cnt72, i32 1, i32 3, i32 1) #18
  %103 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lnk_cnt72, ptr %lnk_cnt72, i32 1, ptr elementtype(i32) %lnk_cnt72) #18, !srcloc !109
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %103, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool74.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool74.not, label %if.then75, label %out.if.end76_crit_edge

out.if.end76_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

if.then75:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  %lnks_deleted = getelementptr inbounds %struct.smc_ib_device, ptr %101, i32 0, i32 16
  call void @__wake_up(ptr noundef %lnks_deleted, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %out.if.end76_crit_edge
  call void @smc_lgr_put(ptr noundef %lgr)
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.end67
  %retval.0 = phi i32 [ %rc.3, %if.end76 ], [ 0, %if.end67 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rndvec) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_lgr_hold(ptr noundef %lgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #18, !srcloc !100
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !98

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !101

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #18
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_link_set_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_link_down_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %3, %1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %work, i32 -584
  %llc_msg_waiter = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %llc_msg_waiter, i32 noundef 3, i32 noundef 0, ptr noundef null) #18
  %llc_conf_mutex = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %llc_conf_mutex, i32 noundef 0) #18
  tail call fastcc void @smcr_link_down(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %llc_conf_mutex) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_setup_per_ibdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_determine_gid(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_llc_link_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_alloc_link_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_create_protection_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_create_queue_pair(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_create_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ib_destroy_queue_pair(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ib_dealloc_protection_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_free_link_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_link_clear(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_lgr_put(ptr noundef %lgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #18, !srcloc !103
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !101

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #18
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !104
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc17.i.i.i.for.body.i.i.i_crit_edge, %if.then
  %i.033.i.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i.i, %for.inc17.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx1.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 5, i32 %i.033.i.i.i
  %1 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx1.i.i.i, align 4
  %cmp8.not30.i.i.i = icmp eq ptr %2, %arrayidx1.i.i.i
  br i1 %cmp8.not30.i.i.i, label %for.body.i.i.i.for.inc17.i.i.i_crit_edge, label %for.body.i.i.i.for.body9.i.i.i_crit_edge

for.body.i.i.i.for.body9.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  br label %for.body9.i.i.i

for.body.i.i.i.for.inc17.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc17.i.i.i

for.body9.i.i.i:                                  ; preds = %list_del.exit.i.i.i.for.body9.i.i.i_crit_edge, %for.body.i.i.i.for.body9.i.i.i_crit_edge
  %buf_desc.031.i.i.i = phi ptr [ %bf_desc.0.i.i.i, %list_del.exit.i.i.i.for.body9.i.i.i_crit_edge ], [ %2, %for.body.i.i.i.for.body9.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %buf_desc.031.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf_desc.0.i.i.i = load ptr, ptr %buf_desc.031.i.i.i, align 8
  %call.i.i.i.i.i2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %buf_desc.031.i.i.i) #18
  br i1 %call.i.i.i.i.i2, label %if.end.i.i.i.i.i, label %for.body9.i.i.i.list_del.exit.i.i.i_crit_edge

for.body9.i.i.i.list_del.exit.i.i.i_crit_edge:    ; preds = %for.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf_desc.031.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %6 = ptrtoint ptr %buf_desc.031.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf_desc.031.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %for.body9.i.i.i.list_del.exit.i.i.i_crit_edge
  %10 = ptrtoint ptr %buf_desc.031.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %buf_desc.031.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf_desc.031.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call fastcc void @smc_buf_free(ptr noundef %lgr, i1 noundef zeroext false, ptr noundef %buf_desc.031.i.i.i) #18
  %cmp8.not.i.i.i = icmp eq ptr %bf_desc.0.i.i.i, %arrayidx1.i.i.i
  br i1 %cmp8.not.i.i.i, label %list_del.exit.i.i.i.for.inc17.i.i.i_crit_edge, label %list_del.exit.i.i.i.for.body9.i.i.i_crit_edge

list_del.exit.i.i.i.for.body9.i.i.i_crit_edge:    ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body9.i.i.i

list_del.exit.i.i.i.for.inc17.i.i.i_crit_edge:    ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc17.i.i.i

for.inc17.i.i.i:                                  ; preds = %list_del.exit.i.i.i.for.inc17.i.i.i_crit_edge, %for.body.i.i.i.for.inc17.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.033.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %for.inc17.i.i.i.for.body.i6.i.i_crit_edge, label %for.inc17.i.i.i.for.body.i.i.i_crit_edge

for.inc17.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc17.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i.i

for.inc17.i.i.i.for.body.i6.i.i_crit_edge:        ; preds = %for.inc17.i.i.i
  br label %for.body.i6.i.i

for.body.i6.i.i:                                  ; preds = %for.inc17.i19.i.i.for.body.i6.i.i_crit_edge, %for.inc17.i.i.i.for.body.i6.i.i_crit_edge
  %i.033.i2.i.i = phi i32 [ %inc.i17.i.i, %for.inc17.i19.i.i.for.body.i6.i.i_crit_edge ], [ 0, %for.inc17.i.i.i.for.body.i6.i.i_crit_edge ]
  %arrayidx.i3.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 %i.033.i2.i.i
  %12 = ptrtoint ptr %arrayidx.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i3.i.i, align 4
  %cmp8.not30.i5.i.i = icmp eq ptr %13, %arrayidx.i3.i.i
  br i1 %cmp8.not30.i5.i.i, label %for.body.i6.i.i.for.inc17.i19.i.i_crit_edge, label %for.body.i6.i.i.for.body9.i10.i.i_crit_edge

for.body.i6.i.i.for.body9.i10.i.i_crit_edge:      ; preds = %for.body.i6.i.i
  br label %for.body9.i10.i.i

for.body.i6.i.i.for.inc17.i19.i.i_crit_edge:      ; preds = %for.body.i6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc17.i19.i.i

for.body9.i10.i.i:                                ; preds = %list_del.exit.i16.i.i.for.body9.i10.i.i_crit_edge, %for.body.i6.i.i.for.body9.i10.i.i_crit_edge
  %buf_desc.031.i7.i.i = phi ptr [ %bf_desc.0.i8.i.i, %list_del.exit.i16.i.i.for.body9.i10.i.i_crit_edge ], [ %13, %for.body.i6.i.i.for.body9.i10.i.i_crit_edge ]
  %14 = ptrtoint ptr %buf_desc.031.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf_desc.0.i8.i.i = load ptr, ptr %buf_desc.031.i7.i.i, align 8
  %call.i.i.i9.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %buf_desc.031.i7.i.i) #18
  br i1 %call.i.i.i9.i.i, label %if.end.i.i.i13.i.i, label %for.body9.i10.i.i.list_del.exit.i16.i.i_crit_edge

for.body9.i10.i.i.list_del.exit.i16.i.i_crit_edge: ; preds = %for.body9.i10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit.i16.i.i

if.end.i.i.i13.i.i:                               ; preds = %for.body9.i10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i11.i.i = getelementptr inbounds %struct.list_head, ptr %buf_desc.031.i7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i11.i.i, align 4
  %17 = ptrtoint ptr %buf_desc.031.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf_desc.031.i7.i.i, align 4
  %prev1.i.i.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i12.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i16.i.i

list_del.exit.i16.i.i:                            ; preds = %if.end.i.i.i13.i.i, %for.body9.i10.i.i.list_del.exit.i16.i.i_crit_edge
  %21 = ptrtoint ptr %buf_desc.031.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %buf_desc.031.i7.i.i, align 4
  %prev.i.i14.i.i = getelementptr inbounds %struct.list_head, ptr %buf_desc.031.i7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i14.i.i, align 4
  tail call fastcc void @smc_buf_free(ptr noundef %lgr, i1 noundef zeroext true, ptr noundef %buf_desc.031.i7.i.i) #18
  %cmp8.not.i15.i.i = icmp eq ptr %bf_desc.0.i8.i.i, %arrayidx.i3.i.i
  br i1 %cmp8.not.i15.i.i, label %list_del.exit.i16.i.i.for.inc17.i19.i.i_crit_edge, label %list_del.exit.i16.i.i.for.body9.i10.i.i_crit_edge

list_del.exit.i16.i.i.for.body9.i10.i.i_crit_edge: ; preds = %list_del.exit.i16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body9.i10.i.i

list_del.exit.i16.i.i.for.inc17.i19.i.i_crit_edge: ; preds = %list_del.exit.i16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc17.i19.i.i

for.inc17.i19.i.i:                                ; preds = %list_del.exit.i16.i.i.for.inc17.i19.i.i_crit_edge, %for.body.i6.i.i.for.inc17.i19.i.i_crit_edge
  %inc.i17.i.i = add nuw nsw i32 %i.033.i2.i.i, 1
  %exitcond.not.i18.i.i = icmp eq i32 %inc.i17.i.i, 16
  br i1 %exitcond.not.i18.i.i, label %smc_lgr_free_bufs.exit.i, label %for.inc17.i19.i.i.for.body.i6.i.i_crit_edge

for.inc17.i19.i.i.for.body.i6.i.i_crit_edge:      ; preds = %for.inc17.i19.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i6.i.i

smc_lgr_free_bufs.exit.i:                         ; preds = %for.inc17.i19.i.i
  %is_smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 15
  %23 = ptrtoint ptr %is_smcd.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_smcd.i, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %smc_lgr_free_bufs.exit.i
  %smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1
  %25 = ptrtoint ptr %smcd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smcd.i, align 8
  %lgr_cnt.i = getelementptr inbounds %struct.smcd_dev, ptr %26, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lgr_cnt.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %lgr_cnt.i, i32 1, i32 3, i32 1) #18
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lgr_cnt.i, ptr %lgr_cnt.i, i32 1, ptr elementtype(i32) %lgr_cnt.i) #18, !srcloc !109
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.__smc_lgr_free.exit_crit_edge

if.then.i.__smc_lgr_free.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__smc_lgr_free.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %smcd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smcd.i, align 8
  %lgrs_deleted.i = getelementptr inbounds %struct.smcd_dev, ptr %29, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %lgrs_deleted.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %__smc_lgr_free.exit

if.else.i:                                        ; preds = %smc_lgr_free_bufs.exit.i
  tail call void @smc_wr_free_lgr_mem(ptr noundef %lgr) #18
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @lgr_cnt, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr nonnull @lgr_cnt, i32 1, i32 3, i32 1) #18
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @lgr_cnt, ptr nonnull @lgr_cnt, i32 1, ptr nonnull elementtype(i32) @lgr_cnt) #18, !srcloc !109
  %asmresult.i.i.i.i15.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i15.i)
  %tobool5.not.i = icmp eq i32 %asmresult.i.i.i.i15.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i.__smc_lgr_free.exit_crit_edge

if.else.i.__smc_lgr_free.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__smc_lgr_free.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__wake_up(ptr noundef nonnull @lgrs_deleted, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %__smc_lgr_free.exit

__smc_lgr_free.exit:                              ; preds = %if.then6.i, %if.else.i.__smc_lgr_free.exit_crit_edge, %if.then2.i, %if.then.i.__smc_lgr_free.exit_crit_edge
  tail call void @kfree(ptr noundef %lgr) #18
  br label %if.end

if.end:                                           ; preds = %__smc_lgr_free.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_switch_link_and_count(ptr nocapture noundef %conn, ptr noundef %to_lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lnk = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnk, align 8
  %conn_cnt = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 58
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conn_cnt, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %conn_cnt, i32 1, i32 3, i32 1) #18
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conn_cnt, ptr %conn_cnt, i32 1, ptr elementtype(i32) %conn_cnt) #18, !srcloc !107
  %3 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lnk, align 8
  tail call void @smcr_link_put(ptr noundef %4)
  %5 = ptrtoint ptr %lnk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %to_lnk, ptr %lnk, align 8
  %conn_cnt4 = getelementptr inbounds %struct.smc_link, ptr %to_lnk, i32 0, i32 58
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %conn_cnt4, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %conn_cnt4, i32 1, i32 3, i32 1) #18
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conn_cnt4, ptr %conn_cnt4, i32 1, ptr elementtype(i32) %conn_cnt4) #18, !srcloc !106
  %7 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lnk, align 8
  %refcnt.i = getelementptr inbounds %struct.smc_link, ptr %8, i32 0, i32 49
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #18
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #18, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !98

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.smcr_link_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !101

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.smcr_link_hold.exit_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_link_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #18
  br label %smcr_link_hold.exit

smcr_link_hold.exit:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.smcr_link_hold.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcr_link_put(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 49
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #18, !srcloc !103
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !101

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #18
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !104
  %lgr1.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %1 = ptrtoint ptr %lgr1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lgr1.i, align 4
  tail call void @smc_wr_free_link_mem(ptr noundef %lnk) #18
  %3 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lnk, align 8
  %ibport.i.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 1
  %5 = ptrtoint ptr %ibport.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ibport.i.i, align 4
  %conv.i.i = zext i8 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %arrayidx.i.i = getelementptr %struct.smc_ib_device, ptr %4, i32 0, i32 18, i32 %sub.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #18
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i) #18, !srcloc !107
  %8 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lnk, align 8
  %ibdev.i = getelementptr inbounds %struct.smc_ib_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ibdev.i, align 8
  %12 = getelementptr inbounds %struct.ib_device, ptr %11, i32 0, i32 13
  tail call void @put_device(ptr noundef %12) #18
  %13 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lnk, align 8
  %lnk_cnt.i = getelementptr inbounds %struct.smc_ib_device, ptr %14, i32 0, i32 15
  %15 = call ptr @memset(ptr %lnk, i32 0, i32 864)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lnk_cnt.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %lnk_cnt.i, i32 1, i32 3, i32 1) #18
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lnk_cnt.i, ptr %lnk_cnt.i, i32 1, ptr elementtype(i32) %lnk_cnt.i) #18, !srcloc !109
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.__smcr_link_clear.exit_crit_edge

if.then.__smcr_link_clear.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %__smcr_link_clear.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %lnks_deleted.i = getelementptr inbounds %struct.smc_ib_device, ptr %14, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %lnks_deleted.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %__smcr_link_clear.exit

__smcr_link_clear.exit:                           ; preds = %if.then.i, %if.then.__smcr_link_clear.exit_crit_edge
  tail call void @smc_lgr_put(ptr noundef %2) #18
  br label %if.end

if.end:                                           ; preds = %__smcr_link_clear.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcr_link_hold(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 49
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #18, !srcloc !100
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !98

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !101

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #18
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smc_switch_conns(ptr noundef %lgr, ptr noundef %from_lnk, i1 noundef zeroext %is_dev_err) local_unnamed_addr #0 align 64 {
entry:
  %pend = alloca ptr, align 4
  %wr_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend) #18
  %0 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend, align 4, !annotation !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf) #18
  %1 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf, align 4, !annotation !105
  %wr_tx_wait.i = getelementptr inbounds %struct.smc_link, ptr %from_lnk, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %wr_tx_wait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #18
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %from_lnk, i32 0, i32 46
  %ibport = getelementptr inbounds %struct.smc_link, ptr %from_lnk, i32 0, i32 1
  %arrayidx = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0
  %state.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %lor.lhs.false, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1 = icmp eq i8 %5, 0
  br i1 %cmp1, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  br i1 %is_dev_err, label %land.lhs.true, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %from_lnk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %from_lnk, align 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %cmp7 = icmp eq ptr %7, %9
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %ibport to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ibport, align 4
  %ibport13 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %ibport13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ibport13, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp15 = icmp eq i8 %11, %13
  br i1 %cmp15, label %land.lhs.true9.for.inc_crit_edge, label %land.lhs.true9.for.end_crit_edge

land.lhs.true9.for.end_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true9.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1
  %state.i.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %14 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i.1 = icmp eq i32 %15, 3
  br i1 %cmp.i.1, label %lor.lhs.false.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %16 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %link_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp1.1 = icmp eq i8 %17, 1
  br i1 %cmp1.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %if.end.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.end.1:                                         ; preds = %lor.lhs.false.1
  br i1 %is_dev_err, label %land.lhs.true.1, label %if.end.1.for.end_crit_edge

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

land.lhs.true.1:                                  ; preds = %if.end.1
  %18 = ptrtoint ptr %from_lnk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %from_lnk, align 8
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 8
  %cmp7.1 = icmp eq ptr %19, %21
  br i1 %cmp7.1, label %land.lhs.true9.1, label %land.lhs.true.1.for.end_crit_edge

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

land.lhs.true9.1:                                 ; preds = %land.lhs.true.1
  %22 = ptrtoint ptr %ibport to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ibport, align 4
  %ibport13.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 1
  %24 = ptrtoint ptr %ibport13.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ibport13.1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp15.1 = icmp eq i8 %23, %25
  br i1 %cmp15.1, label %land.lhs.true9.1.for.inc.1_crit_edge, label %land.lhs.true9.1.for.end_crit_edge

land.lhs.true9.1.for.end_crit_edge:               ; preds = %land.lhs.true9.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

land.lhs.true9.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true9.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true9.1.for.inc.1_crit_edge, %lor.lhs.false.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2
  %state.i.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %26 = ptrtoint ptr %state.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i.2 = icmp eq i32 %27, 3
  br i1 %cmp.i.2, label %lor.lhs.false.2, label %for.inc.1.if.then24_crit_edge

for.inc.1.if.then24_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %28 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %link_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp1.2 = icmp eq i8 %29, 2
  br i1 %cmp1.2, label %lor.lhs.false.2.if.then24_crit_edge, label %if.end.2

lor.lhs.false.2.if.then24_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24

if.end.2:                                         ; preds = %lor.lhs.false.2
  br i1 %is_dev_err, label %land.lhs.true.2, label %if.end.2.for.end_crit_edge

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

land.lhs.true.2:                                  ; preds = %if.end.2
  %30 = ptrtoint ptr %from_lnk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %from_lnk, align 8
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.2, align 8
  %cmp7.2 = icmp eq ptr %31, %33
  br i1 %cmp7.2, label %land.lhs.true9.2, label %land.lhs.true.2.for.end_crit_edge

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

land.lhs.true9.2:                                 ; preds = %land.lhs.true.2
  %34 = ptrtoint ptr %ibport to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ibport, align 4
  %ibport13.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 1
  %36 = ptrtoint ptr %ibport13.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ibport13.2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp15.2 = icmp eq i8 %35, %37
  br i1 %cmp15.2, label %land.lhs.true9.2.if.then24_crit_edge, label %land.lhs.true9.2.for.end_crit_edge

land.lhs.true9.2.for.end_crit_edge:               ; preds = %land.lhs.true9.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

land.lhs.true9.2.if.then24_crit_edge:             ; preds = %land.lhs.true9.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24

for.end:                                          ; preds = %land.lhs.true9.2.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %if.end.2.for.end_crit_edge, %land.lhs.true9.1.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %if.end.1.for.end_crit_edge, %land.lhs.true9.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0192.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 0, %land.lhs.true.for.end_crit_edge ], [ 0, %land.lhs.true9.for.end_crit_edge ], [ 1, %if.end.1.for.end_crit_edge ], [ 1, %land.lhs.true.1.for.end_crit_edge ], [ 1, %land.lhs.true9.1.for.end_crit_edge ], [ 2, %if.end.2.for.end_crit_edge ], [ 2, %land.lhs.true.2.for.end_crit_edge ], [ 2, %land.lhs.true9.2.for.end_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %if.end.for.end_crit_edge ], [ %arrayidx, %land.lhs.true.for.end_crit_edge ], [ %arrayidx, %land.lhs.true9.for.end_crit_edge ], [ %arrayidx.1, %if.end.1.for.end_crit_edge ], [ %arrayidx.1, %land.lhs.true.1.for.end_crit_edge ], [ %arrayidx.1, %land.lhs.true9.1.for.end_crit_edge ], [ %arrayidx.2, %if.end.2.for.end_crit_edge ], [ %arrayidx.2, %land.lhs.true.2.for.end_crit_edge ], [ %arrayidx.2, %land.lhs.true9.2.for.end_crit_edge ]
  %tobool21.not = icmp eq ptr %arrayidx.lcssa, null
  br i1 %tobool21.not, label %for.end.if.then24_crit_edge, label %lor.lhs.false22

for.end.if.then24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24

lor.lhs.false22:                                  ; preds = %for.end
  %state.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.0192.lcssa, i32 54
  %38 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %switch.i.i.i = icmp ugt i32 %39, 1
  br i1 %switch.i.i.i, label %smc_link_sendable.exit.i, label %lor.lhs.false22.if.then24_crit_edge

lor.lhs.false22.if.then24_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24

smc_link_sendable.exit.i:                         ; preds = %lor.lhs.false22
  %cur_qp_state.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.0192.lcssa, i32 4, i32 1
  %40 = ptrtoint ptr %cur_qp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur_qp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 3
  br i1 %cmp.i.i, label %smc_wr_tx_link_hold.exit, label %smc_link_sendable.exit.i.if.then24_crit_edge

smc_link_sendable.exit.i.if.then24_crit_edge:     ; preds = %smc_link_sendable.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24

smc_wr_tx_link_hold.exit:                         ; preds = %smc_link_sendable.exit.i
  %wr_tx_refcnt.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.0192.lcssa, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #18
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #18, !srcloc !106
  %conns_lock = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 2
  %conns_all = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 1
  br label %again

if.then24:                                        ; preds = %smc_link_sendable.exit.i.if.then24_crit_edge, %lor.lhs.false22.if.then24_crit_edge, %for.end.if.then24_crit_edge, %land.lhs.true9.2.if.then24_crit_edge, %lor.lhs.false.2.if.then24_crit_edge, %for.inc.1.if.then24_crit_edge
  tail call void @smc_lgr_terminate_sched(ptr noundef %lgr)
  br label %cleanup

again:                                            ; preds = %if.end113.again_crit_edge, %smc_wr_tx_link_hold.exit
  call void @_raw_read_lock_bh(ptr noundef %conns_lock) #18
  %call26 = call ptr @rb_first(ptr noundef %conns_all) #18
  %tobool28.not194 = icmp eq ptr %call26, null
  br i1 %tobool28.not194, label %again.for.end123_crit_edge, label %again.for.body29_crit_edge

again.for.body29_crit_edge:                       ; preds = %again
  br label %for.body29

again.for.end123_crit_edge:                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end123

for.body29:                                       ; preds = %for.inc121.for.body29_crit_edge, %again.for.body29_crit_edge
  %node.0195 = phi ptr [ %call122, %for.inc121.for.body29_crit_edge ], [ %call26, %again.for.body29_crit_edge ]
  %lnk30 = getelementptr inbounds %struct.smc_connection, ptr %node.0195, i32 0, i32 2
  %43 = ptrtoint ptr %lnk30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lnk30, align 8
  %cmp31.not = icmp eq ptr %44, %from_lnk
  br i1 %cmp31.not, label %if.end34, label %for.body29.for.inc121_crit_edge

for.body29.for.inc121_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc121

if.end34:                                         ; preds = %for.body29
  %skc_state = getelementptr i8, ptr %node.0195, i32 -966
  %45 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp39 = icmp eq i8 %46, 2
  br i1 %cmp39, label %if.end34.for.inc121_crit_edge, label %if.end42

if.end34.for.inc121_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc121

if.end42:                                         ; preds = %if.end34
  %47 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %48)
  %cmp47 = icmp eq i8 %48, 7
  br i1 %cmp47, label %if.end42.if.then105_crit_edge, label %lor.lhs.false49

if.end42.if.then105_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

lor.lhs.false49:                                  ; preds = %if.end42
  %49 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %50)
  %cmp54 = icmp eq i8 %50, 20
  br i1 %cmp54, label %lor.lhs.false49.if.then105_crit_edge, label %lor.lhs.false56

lor.lhs.false49.if.then105_crit_edge:             ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

lor.lhs.false56:                                  ; preds = %lor.lhs.false49
  %51 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %52)
  %cmp61 = icmp eq i8 %52, 21
  br i1 %cmp61, label %lor.lhs.false56.if.then105_crit_edge, label %lor.lhs.false63

lor.lhs.false56.if.then105_crit_edge:             ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

lor.lhs.false63:                                  ; preds = %lor.lhs.false56
  %53 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %54)
  %cmp68 = icmp eq i8 %54, 24
  br i1 %cmp68, label %lor.lhs.false63.if.then105_crit_edge, label %lor.lhs.false70

lor.lhs.false63.if.then105_crit_edge:             ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

lor.lhs.false70:                                  ; preds = %lor.lhs.false63
  %55 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %56)
  %cmp75 = icmp eq i8 %56, 22
  br i1 %cmp75, label %lor.lhs.false70.if.then105_crit_edge, label %lor.lhs.false77

lor.lhs.false70.if.then105_crit_edge:             ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

lor.lhs.false77:                                  ; preds = %lor.lhs.false70
  %57 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %58)
  %cmp82 = icmp eq i8 %58, 23
  br i1 %cmp82, label %lor.lhs.false77.if.then105_crit_edge, label %lor.lhs.false84

lor.lhs.false77.if.then105_crit_edge:             ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

lor.lhs.false84:                                  ; preds = %lor.lhs.false77
  %59 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %60)
  %cmp89 = icmp eq i8 %60, 25
  br i1 %cmp89, label %lor.lhs.false84.if.then105_crit_edge, label %lor.lhs.false91

lor.lhs.false84.if.then105_crit_edge:             ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

lor.lhs.false91:                                  ; preds = %lor.lhs.false84
  %61 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %62)
  %cmp96 = icmp eq i8 %62, 26
  br i1 %cmp96, label %lor.lhs.false91.if.then105_crit_edge, label %lor.lhs.false98

lor.lhs.false91.if.then105_crit_edge:             ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

lor.lhs.false98:                                  ; preds = %lor.lhs.false91
  %63 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %64)
  %cmp103 = icmp eq i8 %64, 27
  br i1 %cmp103, label %lor.lhs.false98.if.then105_crit_edge, label %if.end107

lor.lhs.false98.if.then105_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

if.then105:                                       ; preds = %lor.lhs.false98.if.then105_crit_edge, %lor.lhs.false91.if.then105_crit_edge, %lor.lhs.false84.if.then105_crit_edge, %lor.lhs.false77.if.then105_crit_edge, %lor.lhs.false70.if.then105_crit_edge, %lor.lhs.false63.if.then105_crit_edge, %lor.lhs.false56.if.then105_crit_edge, %lor.lhs.false49.if.then105_crit_edge, %if.end42.if.then105_crit_edge
  %send_lock = getelementptr inbounds %struct.smc_connection, ptr %node.0195, i32 0, i32 20
  call void @_raw_spin_lock_bh(ptr noundef %send_lock) #18
  call void @smc_switch_link_and_count(ptr noundef nonnull %node.0195, ptr noundef nonnull %arrayidx.lcssa)
  call void @_raw_spin_unlock_bh(ptr noundef %send_lock) #18
  br label %for.inc121

if.end107:                                        ; preds = %lor.lhs.false98
  %add.ptr37.le = getelementptr i8, ptr %node.0195, i32 -984
  %skc_refcnt.i = getelementptr i8, ptr %node.0195, i32 -884
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #18
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #18, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end107.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !98

if.end107.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end107
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %66 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !101

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end107.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end107.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #18
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %conns_lock) #18
  %call110 = call i32 @smc_cdc_get_free_slot(ptr noundef nonnull %node.0195, ptr noundef nonnull %arrayidx.lcssa, ptr noundef nonnull %wr_buf, ptr noundef null, ptr noundef nonnull %pend) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %sock_hold.exit.err_out_crit_edge

sock_hold.exit.err_out_crit_edge:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_out

if.end113:                                        ; preds = %sock_hold.exit
  %send_lock114 = getelementptr inbounds %struct.smc_connection, ptr %node.0195, i32 0, i32 20
  call void @_raw_spin_lock_bh(ptr noundef %send_lock114) #18
  call void @smc_switch_link_and_count(ptr noundef nonnull %node.0195, ptr noundef nonnull %arrayidx.lcssa)
  %67 = ptrtoint ptr %pend to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pend, align 4
  %69 = ptrtoint ptr %wr_buf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr_buf, align 4
  %call115 = call fastcc i32 @smc_switch_cursor(ptr noundef %add.ptr37.le, ptr noundef %68, ptr noundef %70)
  call void @_raw_spin_unlock_bh(ptr noundef %send_lock114) #18
  call fastcc void @sock_put(ptr noundef %add.ptr37.le)
  %tobool118.not = icmp eq i32 %call115, 0
  br i1 %tobool118.not, label %if.end113.again_crit_edge, label %if.end113.err_out_crit_edge

if.end113.err_out_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_out

if.end113.again_crit_edge:                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #20
  br label %again

for.inc121:                                       ; preds = %if.then105, %if.end34.for.inc121_crit_edge, %for.body29.for.inc121_crit_edge
  %call122 = call ptr @rb_next(ptr noundef nonnull %node.0195) #18
  %tobool28.not = icmp eq ptr %call122, null
  br i1 %tobool28.not, label %for.inc121.for.end123_crit_edge, label %for.inc121.for.body29_crit_edge

for.inc121.for.body29_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body29

for.inc121.for.end123_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end123

for.end123:                                       ; preds = %for.inc121.for.end123_crit_edge, %again.for.end123_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %conns_lock) #18
  %call.i.i.i182 = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #18
  %71 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #18, !srcloc !109
  %asmresult.i.i.i.i.i.i183 = extractvalue { i32, i32 } %71, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i183)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i183, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %for.end123.cleanup_crit_edge

for.end123.cleanup_crit_edge:                     ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i:                                        ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #20
  %wr_tx_wait.i184 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.0192.lcssa, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i184, i32 noundef 3, i32 noundef 0, ptr noundef null) #18
  br label %cleanup

err_out:                                          ; preds = %if.end113.err_out_crit_edge, %sock_hold.exit.err_out_crit_edge
  call void @smcr_link_down_cond_sched(ptr noundef nonnull %arrayidx.lcssa)
  call fastcc void @smc_wr_tx_link_put(ptr noundef nonnull %arrayidx.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.then.i, %for.end123.cleanup_crit_edge, %if.then24
  %retval.0 = phi ptr [ null, %err_out ], [ null, %if.then24 ], [ %arrayidx.lcssa, %for.end123.cleanup_crit_edge ], [ %arrayidx.lcssa, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend) #18
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_lgr_terminate_sched(ptr noundef %lgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %is_smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 15
  %0 = ptrtoint ptr %is_smcd.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_smcd.i, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.smc_lgr_list_head.exit_crit_edge, label %if.then.i

entry.smc_lgr_list_head.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_lgr_list_head.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1
  %2 = ptrtoint ptr %smcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smcd.i, align 8
  %lgr_lock1.i = getelementptr inbounds %struct.smcd_dev, ptr %3, i32 0, i32 12
  br label %smc_lgr_list_head.exit

smc_lgr_list_head.exit:                           ; preds = %if.then.i, %entry.smc_lgr_list_head.exit_crit_edge
  %storemerge.i = phi ptr [ %lgr_lock1.i, %if.then.i ], [ getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1), %entry.smc_lgr_list_head.exit_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %storemerge.i) #18
  %4 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lgr, align 4
  %cmp.i.not = icmp eq ptr %5, %lgr
  br i1 %cmp.i.not, label %smc_lgr_list_head.exit.if.then_crit_edge, label %lor.lhs.false

smc_lgr_list_head.exit.if.then_crit_edge:         ; preds = %smc_lgr_list_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %smc_lgr_list_head.exit
  %terminating = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 13
  %6 = ptrtoint ptr %terminating to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %terminating, align 8
  %7 = and i8 %bf.load, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %smc_lgr_list_head.exit.if.then_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %storemerge.i) #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lgr) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lgr, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lgr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %lgr to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %lgr, ptr %lgr, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %lgr, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lgr, ptr %prev.i3.i, align 4
  %17 = ptrtoint ptr %terminating to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load11 = load i8, ptr %terminating, align 8
  %bf.set = or i8 %bf.load11, 32
  store i8 %bf.set, ptr %terminating, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %storemerge.i) #18
  %terminate_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i20 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %terminate_work) #18
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_cdc_get_free_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_switch_cursor(ptr noundef %smc, ptr noundef %pend, ptr noundef %wr_buf) unnamed_addr #0 align 64 {
entry:
  %prod.i = alloca %union.smc_host_cursor, align 8
  %cons.i = alloca %union.smc_host_cursor, align 8
  %cons = alloca %union.smc_host_cursor, align 8
  %fin = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cons) #18
  %0 = ptrtoint ptr %cons to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cons, align 8, !annotation !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fin) #18
  %1 = ptrtoint ptr %fin to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %fin, align 8, !annotation !105
  %tx_curs_sent = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 15
  %tx_curs_fin = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_fin, i32 noundef 8) #18
  %call.i.i78 = tail call i64 @generic_atomic64_read(ptr noundef %tx_curs_fin) #18
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_curs_sent, i32 noundef 8) #18
  tail call void @generic_atomic64_set(ptr noundef %tx_curs_sent, i64 noundef %call.i.i78) #18
  %local_tx_ctrl_fin = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 13
  %call.i.i.i79 = tail call zeroext i1 @__kasan_check_read(ptr noundef %local_tx_ctrl_fin, i32 noundef 8) #18
  %call.i.i80 = tail call i64 @generic_atomic64_read(ptr noundef %local_tx_ctrl_fin) #18
  %call.i.i1.i81 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fin, i32 noundef 8) #18
  call void @generic_atomic64_set(ptr noundef nonnull %fin, i64 noundef %call.i.i80) #18
  %prod = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 4
  %call.i.i.i82 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fin, i32 noundef 8) #18
  %call.i.i83 = call i64 @generic_atomic64_read(ptr noundef nonnull %fin) #18
  %call.i.i1.i84 = call zeroext i1 @__kasan_check_write(ptr noundef %prod, i32 noundef 8) #18
  call void @generic_atomic64_set(ptr noundef %prod, i64 noundef %call.i.i83) #18
  %cons2 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 5
  %call.i.i.i85 = call zeroext i1 @__kasan_check_read(ptr noundef %cons2, i32 noundef 8) #18
  %call.i.i86 = call i64 @generic_atomic64_read(ptr noundef %cons2) #18
  %call.i.i1.i87 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cons, i32 noundef 8) #18
  call void @generic_atomic64_set(ptr noundef nonnull %cons, i64 noundef %call.i.i86) #18
  %peer_rmbe_size = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %peer_rmbe_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_rmbe_size, align 4
  %wrap.i = getelementptr inbounds %struct.anon.224, ptr %cons, i32 0, i32 1
  %4 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wrap.i, align 2
  %wrap1.i = getelementptr inbounds %struct.anon.224, ptr %fin, i32 0, i32 1
  %6 = ptrtoint ptr %wrap1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wrap1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.i = icmp ugt i16 %5, %7
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp8.i = icmp eq i16 %5, %7
  br i1 %cmp8.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %count.i = getelementptr inbounds %struct.anon.224, ptr %cons, i32 0, i32 2
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  %count10.i = getelementptr inbounds %struct.anon.224, ptr %fin, i32 0, i32 2
  %10 = ptrtoint ptr %count10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp11.i = icmp ugt i32 %9, %11
  br i1 %cmp11.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %5)
  %cmp.not.i.i = icmp eq i16 %7, %5
  br i1 %cmp.not.i.i, label %smc_curs_comp.exit, label %smc_curs_comp.exit.thread

smc_curs_comp.exit:                               ; preds = %if.then.i
  %count7.i.i = getelementptr inbounds %struct.anon.224, ptr %cons, i32 0, i32 2
  %12 = ptrtoint ptr %count7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count7.i.i, align 4
  %count8.i.i = getelementptr inbounds %struct.anon.224, ptr %fin, i32 0, i32 2
  %14 = ptrtoint ptr %count8.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count8.i.i, align 4
  %sub9.i.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.i.i)
  %cmp.not = icmp slt i32 %sub9.i.i, 1
  br i1 %cmp.not, label %smc_curs_comp.exit.if.end_crit_edge, label %if.end.i

smc_curs_comp.exit.if.end_crit_edge:              ; preds = %smc_curs_comp.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

smc_curs_comp.exit.thread:                        ; preds = %if.then.i
  %count.i.i = getelementptr inbounds %struct.anon.224, ptr %fin, i32 0, i32 2
  %16 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i.i, align 4
  %sub.i.i = sub i32 %3, %17
  %count4.i.i = getelementptr inbounds %struct.anon.224, ptr %cons, i32 0, i32 2
  %18 = ptrtoint ptr %count4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count4.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i.i)
  %cmp.not146 = icmp slt i32 %add.i.i, 1
  br i1 %cmp.not146, label %smc_curs_comp.exit.thread.if.end_crit_edge, label %if.then.i92

smc_curs_comp.exit.thread.if.end_crit_edge:       ; preds = %smc_curs_comp.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then.i92:                                      ; preds = %smc_curs_comp.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  %count.i90 = getelementptr inbounds %struct.anon.224, ptr %fin, i32 0, i32 2
  %20 = ptrtoint ptr %count.i90 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count.i90, align 4
  %sub.i91 = sub i32 %3, %21
  %count4.i = getelementptr inbounds %struct.anon.224, ptr %cons, i32 0, i32 2
  %22 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count4.i, align 4
  %add.i = add i32 %sub.i91, %23
  br label %smc_curs_diff.exit

if.end.i:                                         ; preds = %smc_curs_comp.exit
  call void @__sanitizer_cov_trace_pc() #20
  %count7.i = getelementptr inbounds %struct.anon.224, ptr %cons, i32 0, i32 2
  %24 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count7.i, align 4
  %count8.i = getelementptr inbounds %struct.anon.224, ptr %fin, i32 0, i32 2
  %26 = ptrtoint ptr %count8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count8.i, align 4
  %sub9.i = sub i32 %25, %27
  br label %smc_curs_diff.exit

smc_curs_diff.exit:                               ; preds = %if.end.i, %if.then.i92
  %sub9.sink.i = phi i32 [ %sub9.i, %if.end.i ], [ %add.i, %if.then.i92 ]
  %28 = call i32 @llvm.smax.i32(i32 %sub9.sink.i, i32 0) #18
  %sndbuf_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 8
  %29 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sndbuf_desc, align 8
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 8
  %count.i93 = getelementptr inbounds %struct.anon.224, ptr %tx_curs_sent, i32 0, i32 2
  %33 = ptrtoint ptr %count.i93 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i93, align 4
  %add.i94 = add i32 %34, %28
  store i32 %add.i94, ptr %count.i93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i94, i32 %32)
  %cmp.not.i95 = icmp ult i32 %add.i94, %32
  br i1 %cmp.not.i95, label %smc_curs_diff.exit.smc_curs_add.exit_crit_edge, label %if.then.i98

smc_curs_diff.exit.smc_curs_add.exit_crit_edge:   ; preds = %smc_curs_diff.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_curs_add.exit

if.then.i98:                                      ; preds = %smc_curs_diff.exit
  call void @__sanitizer_cov_trace_pc() #20
  %wrap.i96 = getelementptr inbounds %struct.anon.224, ptr %tx_curs_sent, i32 0, i32 1
  %35 = ptrtoint ptr %wrap.i96 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %wrap.i96, align 2
  %inc.i = add i16 %36, 1
  store i16 %inc.i, ptr %wrap.i96, align 2
  %sub.i97 = sub i32 %add.i94, %32
  %37 = ptrtoint ptr %count.i93 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.i97, ptr %count.i93, align 4
  br label %smc_curs_add.exit

smc_curs_add.exit:                                ; preds = %if.then.i98, %smc_curs_diff.exit.smc_curs_add.exit_crit_edge
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 8
  %count.i100 = getelementptr inbounds %struct.anon.224, ptr %tx_curs_fin, i32 0, i32 2
  %40 = ptrtoint ptr %count.i100 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count.i100, align 4
  %add.i101 = add i32 %41, %28
  store i32 %add.i101, ptr %count.i100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i101, i32 %39)
  %cmp.not.i102 = icmp ult i32 %add.i101, %39
  br i1 %cmp.not.i102, label %smc_curs_add.exit.smc_curs_add.exit108_crit_edge, label %if.then.i106

smc_curs_add.exit.smc_curs_add.exit108_crit_edge: ; preds = %smc_curs_add.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_curs_add.exit108

if.then.i106:                                     ; preds = %smc_curs_add.exit
  call void @__sanitizer_cov_trace_pc() #20
  %wrap.i103 = getelementptr inbounds %struct.anon.224, ptr %tx_curs_fin, i32 0, i32 1
  %42 = ptrtoint ptr %wrap.i103 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %wrap.i103, align 2
  %inc.i104 = add i16 %43, 1
  store i16 %inc.i104, ptr %wrap.i103, align 2
  %sub.i105 = sub i32 %add.i101, %39
  %44 = ptrtoint ptr %count.i100 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i105, ptr %count.i100, align 4
  br label %smc_curs_add.exit108

smc_curs_add.exit108:                             ; preds = %if.then.i106, %smc_curs_add.exit.smc_curs_add.exit108_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !111
  %sndbuf_space = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 17
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sndbuf_space, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %sndbuf_space, i32 1, i32 3, i32 1) #18
  %45 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sndbuf_space, ptr %sndbuf_space, i32 %28, ptr elementtype(i32) %sndbuf_space) #18, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !112
  %46 = ptrtoint ptr %peer_rmbe_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %peer_rmbe_size, align 4
  %count.i109 = getelementptr inbounds %struct.anon.224, ptr %prod, i32 0, i32 2
  %48 = ptrtoint ptr %count.i109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count.i109, align 4
  %add.i110 = add i32 %49, %28
  store i32 %add.i110, ptr %count.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i110, i32 %47)
  %cmp.not.i111 = icmp ult i32 %add.i110, %47
  br i1 %cmp.not.i111, label %smc_curs_add.exit108.smc_curs_add.exit117_crit_edge, label %if.then.i115

smc_curs_add.exit108.smc_curs_add.exit117_crit_edge: ; preds = %smc_curs_add.exit108
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_curs_add.exit117

if.then.i115:                                     ; preds = %smc_curs_add.exit108
  call void @__sanitizer_cov_trace_pc() #20
  %wrap.i112 = getelementptr inbounds %struct.anon.224, ptr %prod, i32 0, i32 1
  %50 = ptrtoint ptr %wrap.i112 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %wrap.i112, align 2
  %inc.i113 = add i16 %51, 1
  store i16 %inc.i113, ptr %wrap.i112, align 2
  %sub.i114 = sub i32 %add.i110, %47
  %52 = ptrtoint ptr %count.i109 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub.i114, ptr %count.i109, align 4
  br label %smc_curs_add.exit117

smc_curs_add.exit117:                             ; preds = %if.then.i115, %smc_curs_add.exit108.smc_curs_add.exit117_crit_edge
  %count.i118 = getelementptr inbounds %struct.anon.224, ptr %local_tx_ctrl_fin, i32 0, i32 2
  %53 = ptrtoint ptr %count.i118 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count.i118, align 4
  %add.i119 = add i32 %54, %28
  store i32 %add.i119, ptr %count.i118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i119, i32 %47)
  %cmp.not.i120 = icmp ult i32 %add.i119, %47
  br i1 %cmp.not.i120, label %smc_curs_add.exit117.if.end_crit_edge, label %if.then.i124

smc_curs_add.exit117.if.end_crit_edge:            ; preds = %smc_curs_add.exit117
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then.i124:                                     ; preds = %smc_curs_add.exit117
  call void @__sanitizer_cov_trace_pc() #20
  %wrap.i121 = getelementptr inbounds %struct.anon.224, ptr %local_tx_ctrl_fin, i32 0, i32 1
  %55 = ptrtoint ptr %wrap.i121 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %wrap.i121, align 2
  %inc.i122 = add i16 %56, 1
  store i16 %inc.i122, ptr %wrap.i121, align 2
  %sub.i123 = sub i32 %add.i119, %47
  %57 = ptrtoint ptr %count.i118 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.i123, ptr %count.i118, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i124, %smc_curs_add.exit117.if.end_crit_edge, %smc_curs_comp.exit.thread.if.end_crit_edge, %smc_curs_comp.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  %peer_rmbe_space = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 6
  %58 = ptrtoint ptr %peer_rmbe_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %peer_rmbe_size, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prod.i) #18
  %60 = ptrtoint ptr %prod.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 -1, ptr %prod.i, align 8, !annotation !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cons.i) #18
  %61 = ptrtoint ptr %cons.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -1, ptr %cons.i, align 8, !annotation !105
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %prod, i32 noundef 8) #18
  %call.i.i.i127 = call i64 @generic_atomic64_read(ptr noundef %prod) #18
  %call.i.i1.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prod.i, i32 noundef 8) #18
  call void @generic_atomic64_set(ptr noundef nonnull %prod.i, i64 noundef %call.i.i.i127) #18
  %call.i.i.i8.i = call zeroext i1 @__kasan_check_read(ptr noundef %cons2, i32 noundef 8) #18
  %call.i.i9.i = call i64 @generic_atomic64_read(ptr noundef %cons2) #18
  %call.i.i1.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cons.i, i32 noundef 8) #18
  call void @generic_atomic64_set(ptr noundef nonnull %cons.i, i64 noundef %call.i.i9.i) #18
  %wrap.i.i = getelementptr inbounds %struct.anon.224, ptr %cons.i, i32 0, i32 1
  %62 = ptrtoint ptr %wrap.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %wrap.i.i, align 2
  %wrap1.i.i = getelementptr inbounds %struct.anon.224, ptr %prod.i, i32 0, i32 1
  %64 = ptrtoint ptr %wrap1.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %wrap1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp.not.i.i128 = icmp eq i16 %63, %65
  br i1 %cmp.not.i.i128, label %if.end.i.i137, label %if.then.i.i133

if.then.i.i133:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %count.i.i129 = getelementptr inbounds %struct.anon.224, ptr %cons.i, i32 0, i32 2
  %66 = ptrtoint ptr %count.i.i129 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count.i.i129, align 4
  %sub.i.i130 = sub i32 %59, %67
  %count4.i.i131 = getelementptr inbounds %struct.anon.224, ptr %prod.i, i32 0, i32 2
  %68 = ptrtoint ptr %count4.i.i131 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count4.i.i131, align 4
  %add.i.i132 = add i32 %sub.i.i130, %69
  br label %smc_write_space.exit

if.end.i.i137:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %count7.i.i134 = getelementptr inbounds %struct.anon.224, ptr %prod.i, i32 0, i32 2
  %70 = ptrtoint ptr %count7.i.i134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count7.i.i134, align 4
  %count8.i.i135 = getelementptr inbounds %struct.anon.224, ptr %cons.i, i32 0, i32 2
  %72 = ptrtoint ptr %count8.i.i135 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count8.i.i135, align 4
  %sub9.i.i136 = sub i32 %71, %73
  br label %smc_write_space.exit

smc_write_space.exit:                             ; preds = %if.end.i.i137, %if.then.i.i133
  %sub9.sink.i.i138 = phi i32 [ %sub9.i.i136, %if.end.i.i137 ], [ %add.i.i132, %if.then.i.i133 ]
  %74 = call i32 @llvm.smax.i32(i32 %sub9.sink.i.i138, i32 0) #18
  %sub.i139 = sub i32 %59, %74
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cons.i) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prod.i) #18
  %call.i.i77 = call zeroext i1 @__kasan_check_write(ptr noundef %peer_rmbe_space, i32 noundef 4) #18
  %75 = ptrtoint ptr %peer_rmbe_space to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %sub.i139, ptr %peer_rmbe_space, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %76 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %cmp25.not = icmp eq i8 %77, 2
  br i1 %cmp25.not, label %smc_write_space.exit.if.else_crit_edge, label %land.lhs.true

smc_write_space.exit.if.else_crit_edge:           ; preds = %smc_write_space.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %smc_write_space.exit
  %78 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %79)
  %cmp31.not = icmp eq i8 %79, 7
  br i1 %cmp31.not, label %land.lhs.true.if.else_crit_edge, label %if.then33

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then33:                                        ; preds = %land.lhs.true
  %call34 = call i32 @smcr_cdc_msg_send_validation(ptr noundef %conn1, ptr noundef %pend, ptr noundef %wr_buf) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %if.then35, label %if.then33.if.end41_crit_edge

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #20
  %lgr = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %80 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lgr, align 4
  %tx_wq = getelementptr inbounds %struct.smc_link_group, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %tx_wq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tx_wq, align 4
  %tx_work = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 23
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %83, ptr noundef %tx_work, i32 noundef 0) #18
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 77
  %84 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sk_data_ready, align 8
  call void %85(ptr noundef %smc) #18
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %smc_write_space.exit.if.else_crit_edge
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %86 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lnk, align 8
  %call40 = call i32 @smc_wr_tx_put_slot(ptr noundef %87, ptr noundef %pend) #18
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then35, %if.then33.if.end41_crit_edge
  %rc.0 = phi i32 [ %call34, %if.then33.if.end41_crit_edge ], [ 0, %if.then35 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fin) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cons) #18
  ret i32 %rc.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #18, !srcloc !103
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !101

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !104
  tail call void @sk_free(ptr noundef %sk) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_wr_tx_link_put(ptr noundef %link) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %wr_tx_refcnt = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt, ptr %wr_tx_refcnt, i32 1, ptr elementtype(i32) %wr_tx_refcnt) #18, !srcloc !109
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %wr_tx_wait = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %wr_tx_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcr_link_down_cond_sched(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 54
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #18
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state, i32 3, i32 1) #18, !srcloc !114
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i)
  %cmp = icmp eq i32 %asmresult1.i, 3
  br i1 %cmp, label %if.then, label %__cmpxchg.exit.if.end_crit_edge

__cmpxchg.exit.if.end_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #20
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_smcr_link_down(ptr noundef %lnk, ptr noundef %1)
  %link_down_wrk = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %link_down_wrk) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %__cmpxchg.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_conn_free(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %freed = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 39
  %2 = ptrtoint ptr %freed to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %freed, align 8
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %smc_conn_lgr_valid.exit, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

smc_conn_lgr_valid.exit:                          ; preds = %lor.lhs.false
  %bf.set = or i8 %bf.load, 64
  %4 = ptrtoint ptr %freed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.set, ptr %freed, align 8
  %alert_token_local.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 3
  %5 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %smc_conn_lgr_valid.exit.lgr_put_crit_edge, label %if.end7

smc_conn_lgr_valid.exit.lgr_put_crit_edge:        ; preds = %smc_conn_lgr_valid.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %lgr_put

if.end7:                                          ; preds = %smc_conn_lgr_valid.exit
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %10, %1
  br i1 %cmp.i.not, label %if.then9.if.end13_crit_edge, label %if.then12

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_ism_unset_conn(ptr noundef %conn) #18
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9.if.end13_crit_edge
  %rx_tsklet = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 36
  tail call void @tasklet_kill(ptr noundef %rx_tsklet) #18
  br label %if.end20

if.else:                                          ; preds = %if.end7
  tail call void @smc_cdc_wait_pend_tx_wr(ptr noundef %conn) #18
  %call14 = tail call ptr @current_work() #18
  %abort_work = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 35
  %cmp.not = icmp eq ptr %call14, %abort_work
  br i1 %cmp.not, label %if.else.if.end20_crit_edge, label %if.then16

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call18 = tail call zeroext i1 @cancel_work_sync(ptr noundef %abort_work) #18
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.else.if.end20_crit_edge, %if.end13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %1, align 4
  %cmp.i52.not = icmp eq ptr %12, %1
  br i1 %cmp.i52.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  %sndbuf_desc.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 8
  %13 = ptrtoint ptr %sndbuf_desc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sndbuf_desc.i, align 8
  %tobool.not.i54 = icmp eq ptr %14, null
  br i1 %tobool.not.i54, label %if.then24.if.end.i_crit_edge, label %if.then.i

if.then24.if.end.i_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  %used.i = getelementptr inbounds %struct.smc_buf_desc, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %used.i, align 4
  %16 = ptrtoint ptr %sndbuf_desc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sndbuf_desc.i, align 8
  %cpu_addr.i = getelementptr inbounds %struct.smc_buf_desc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpu_addr.i, align 8
  %len.i = getelementptr inbounds %struct.smc_buf_desc, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 8
  %22 = call ptr @memset(ptr %19, i32 0, i32 %21)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then24.if.end.i_crit_edge
  %rmb_desc.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 9
  %23 = ptrtoint ptr %rmb_desc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmb_desc.i, align 4
  %tobool4.not.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i, label %if.end.i.smc_buf_unuse.exit_crit_edge, label %land.lhs.true.i

if.end.i.smc_buf_unuse.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_buf_unuse.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %25 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not.i = icmp eq i8 %26, 0
  br i1 %tobool5.not.i, label %if.then15.i, label %if.then6.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %used8.i = getelementptr inbounds %struct.smc_buf_desc, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %used8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %used8.i, align 4
  %28 = ptrtoint ptr %rmb_desc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmb_desc.i, align 4
  %cpu_addr10.i = getelementptr inbounds %struct.smc_buf_desc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %cpu_addr10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpu_addr10.i, align 8
  %len12.i = getelementptr inbounds %struct.smc_buf_desc, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %len12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len12.i, align 8
  %add.i = add i32 %33, 32
  %34 = call ptr @memset(ptr %31, i32 0, i32 %add.i)
  br label %smc_buf_unuse.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @smcr_buf_unuse(ptr noundef nonnull %24, ptr noundef nonnull %1) #18
  br label %smc_buf_unuse.exit

smc_buf_unuse.exit:                               ; preds = %if.then15.i, %if.then6.i, %if.end.i.smc_buf_unuse.exit_crit_edge
  tail call fastcc void @smc_lgr_unregister_conn(ptr noundef %conn)
  br label %if.end25

if.end25:                                         ; preds = %smc_buf_unuse.exit, %if.end20.if.end25_crit_edge
  %conns_num = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %conns_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %conns_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool26.not = icmp eq i32 %36, 0
  br i1 %tobool26.not, label %if.then27, label %if.end25.lgr_put_crit_edge

if.end25.lgr_put_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %lgr_put

if.then27:                                        ; preds = %if.end25
  %freeing.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %freeing.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i = load i8, ptr %freeing.i, align 8
  %38 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i55 = icmp eq i8 %38, 0
  br i1 %tobool.not.i55, label %if.then.i57, label %if.then27.lgr_put_crit_edge

if.then27.lgr_put_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  br label %lgr_put

if.then.i57:                                      ; preds = %if.then27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %free_work.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool1.not.i = icmp eq i8 %41, 0
  br i1 %tobool1.not.i, label %land.rhs.i59, label %if.then.i57.land.end.i_crit_edge

if.then.i57.land.end.i_crit_edge:                 ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.end.i

land.rhs.i59:                                     ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #20
  %42 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i58 = icmp eq i32 %44, 0
  %phi.sel.i = select i1 %cmp.i58, i32 61000, i32 60000
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i59, %if.then.i57.land.end.i_crit_edge
  %45 = phi i32 [ 60000, %if.then.i57.land.end.i_crit_edge ], [ %phi.sel.i, %land.rhs.i59 ]
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %free_work.i, i32 noundef %45) #18
  br label %lgr_put

lgr_put:                                          ; preds = %land.end.i, %if.then27.lgr_put_crit_edge, %if.end25.lgr_put_crit_edge, %smc_conn_lgr_valid.exit.lgr_put_crit_edge
  %is_smcd29 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %is_smcd29 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_smcd29, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool30.not = icmp eq i8 %47, 0
  br i1 %tobool30.not, label %if.then31, label %lgr_put.if.end32_crit_edge

lgr_put.if.end32_crit_edge:                       ; preds = %lgr_put
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then31:                                        ; preds = %lgr_put
  call void @__sanitizer_cov_trace_pc() #20
  %lnk = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %48 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lnk, align 8
  tail call void @smcr_link_put(ptr noundef %49)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %lgr_put.if.end32_crit_edge
  tail call void @smc_lgr_put(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ism_unset_conn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_cdc_wait_pend_tx_wr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @current_work() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_lgr_unregister_conn(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %smc_conn_lgr_valid.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

smc_conn_lgr_valid.exit:                          ; preds = %entry
  %alert_token_local.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 3
  %2 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.i.not = icmp eq i32 %3, 0
  br i1 %tobool1.i.not, label %smc_conn_lgr_valid.exit.cleanup_crit_edge, label %if.end

smc_conn_lgr_valid.exit.cleanup_crit_edge:        ; preds = %smc_conn_lgr_valid.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %smc_conn_lgr_valid.exit
  %conns_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %conns_lock) #18
  %4 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lgr1, align 4
  %conns_all.i = getelementptr inbounds %struct.smc_link_group, ptr %7, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %conn, ptr noundef %conns_all.i) #18
  %lnk.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %8 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lnk.i, align 8
  %tobool.not.i9 = icmp eq ptr %9, null
  br i1 %tobool.not.i9, label %if.then2.if.end.i_crit_edge, label %if.then.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  %conn_cnt.i = getelementptr inbounds %struct.smc_link, ptr %9, i32 0, i32 58
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conn_cnt.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %conn_cnt.i, i32 1, i32 3, i32 1) #18
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conn_cnt.i, ptr %conn_cnt.i, i32 1, ptr elementtype(i32) %conn_cnt.i) #18, !srcloc !107
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then2.if.end.i_crit_edge
  %conns_num.i = getelementptr inbounds %struct.smc_link_group, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %conns_num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %conns_num.i, align 8
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %conns_num.i, align 8
  %13 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %alert_token_local.i, align 4
  %skc_refcnt.i.i = getelementptr i8, ptr %conn, i32 -884
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #18
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #18, !srcloc !103
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i.i.i, !prof !101

if.end5.i.i.i.i.i.if.end3_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #18
  br label %if.end3

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %conn, i32 -984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !104
  tail call void @sk_free(ptr noundef %add.ptr.i) #18
  br label %if.end3

if.end3:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %conns_lock) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %smc_conn_lgr_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcr_link_clear(ptr noundef %lnk, i1 noundef zeroext %log) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %clearing = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 48
  %2 = ptrtoint ptr %clearing to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %clearing, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 54
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %bf.set = or i8 %bf.load, -128
  %5 = ptrtoint ptr %clearing to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set, ptr %clearing, align 1
  %peer_qpn = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 36
  %6 = ptrtoint ptr %peer_qpn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %peer_qpn, align 8
  tail call void @smc_llc_link_clear(ptr noundef %lnk, i1 noundef zeroext %log) #18
  %7 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lgr, align 4
  %rmbs_lock.i = getelementptr inbounds %struct.smc_link_group, ptr %8, i32 0, i32 8
  %link_idx.i.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 46
  %sndbufs_lock.i = getelementptr inbounds %struct.smc_link_group, ptr %8, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.end41.i.for.body.i_crit_edge, %if.end
  %i.077.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.end41.i.for.body.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %rmbs_lock.i, i32 noundef 0) #18
  %arrayidx.i = getelementptr %struct.smc_link_group, ptr %8, i32 0, i32 7, i32 %i.077.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %cmp10.not73.i = icmp eq ptr %10, %arrayidx.i
  br i1 %cmp10.not73.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body11.i:                                     ; preds = %smcr_buf_unmap_link.exit.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %buf_desc.074.i = phi ptr [ %bf.0.i, %smcr_buf_unmap_link.exit.i.for.body11.i_crit_edge ], [ %10, %for.body.i.for.body11.i_crit_edge ]
  %11 = ptrtoint ptr %buf_desc.074.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.0.i = load ptr, ptr %buf_desc.074.i, align 8
  %is_reg_mr.i.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.074.i, i32 0, i32 5, i32 1, i32 29
  %12 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %link_idx.i.i, align 1
  %idxprom.i.i = zext i8 %13 to i32
  %arrayidx.i.i = getelementptr [3 x i8], ptr %is_reg_mr.i.i, i32 0, i32 %idxprom.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx.i.i, align 1
  %is_map_ib.i.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.074.i, i32 0, i32 5, i32 1, i32 32
  %15 = load i8, ptr %link_idx.i.i, align 1
  %idxprom2.i.i = zext i8 %15 to i32
  %arrayidx3.i.i = getelementptr [3 x i8], ptr %is_map_ib.i.i, i32 0, i32 %idxprom2.i.i
  %16 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool4.not.i.i, label %for.body11.i.smcr_buf_unmap_link.exit.i_crit_edge, label %if.then8.critedge.i.i

for.body11.i.smcr_buf_unmap_link.exit.i_crit_edge: ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_buf_unmap_link.exit.i

if.then8.critedge.i.i:                            ; preds = %for.body11.i
  %mr_rx.i.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.074.i, i32 0, i32 5, i32 1, i32 12
  %arrayidx11.i.i = getelementptr [3 x ptr], ptr %mr_rx.i.i, i32 0, i32 %idxprom2.i.i
  %18 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx11.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %19, null
  br i1 %tobool12.not.i.i, label %if.then8.critedge.i.i.if.end23.i.i_crit_edge, label %if.then13.i.i

if.then8.critedge.i.i.if.end23.i.i_crit_edge:     ; preds = %if.then8.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i.i

if.then13.i.i:                                    ; preds = %if.then8.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_ib_put_memory_region(ptr noundef nonnull %19) #18
  %20 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link_idx.i.i, align 1
  %idxprom20.i.i = zext i8 %21 to i32
  %arrayidx21.i.i = getelementptr [3 x ptr], ptr %mr_rx.i.i, i32 0, i32 %idxprom20.i.i
  %22 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx21.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then13.i.i, %if.then8.critedge.i.i.if.end23.i.i_crit_edge
  tail call void @smc_ib_buf_unmap_sg(ptr noundef %lnk, ptr noundef %buf_desc.074.i, i32 noundef 2) #18
  %23 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.074.i, i32 0, i32 5
  %24 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %link_idx.i.i, align 1
  %idxprom25.i.i = zext i8 %25 to i32
  %arrayidx26.i.i = getelementptr [3 x %struct.sg_table], ptr %23, i32 0, i32 %idxprom25.i.i
  tail call void @sg_free_table(ptr noundef %arrayidx26.i.i) #18
  %26 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %link_idx.i.i, align 1
  %idxprom29.i.i = zext i8 %27 to i32
  %arrayidx30.i.i = getelementptr [3 x i8], ptr %is_map_ib.i.i, i32 0, i32 %idxprom29.i.i
  %28 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx30.i.i, align 1
  br label %smcr_buf_unmap_link.exit.i

smcr_buf_unmap_link.exit.i:                       ; preds = %if.end23.i.i, %for.body11.i.smcr_buf_unmap_link.exit.i_crit_edge
  %cmp10.not.i = icmp eq ptr %bf.0.i, %arrayidx.i
  br i1 %cmp10.not.i, label %smcr_buf_unmap_link.exit.i.for.end.i_crit_edge, label %smcr_buf_unmap_link.exit.i.for.body11.i_crit_edge

smcr_buf_unmap_link.exit.i.for.body11.i_crit_edge: ; preds = %smcr_buf_unmap_link.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body11.i

smcr_buf_unmap_link.exit.i.for.end.i_crit_edge:   ; preds = %smcr_buf_unmap_link.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %smcr_buf_unmap_link.exit.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %rmbs_lock.i) #18
  tail call void @mutex_lock_nested(ptr noundef %sndbufs_lock.i, i32 noundef 0) #18
  %arrayidx19.i = getelementptr %struct.smc_link_group, ptr %8, i32 0, i32 5, i32 %i.077.i
  %29 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx19.i, align 8
  %cmp32.not75.i = icmp eq ptr %30, %arrayidx19.i
  br i1 %cmp32.not75.i, label %for.end.i.for.end41.i_crit_edge, label %for.end.i.for.body34.i_crit_edge

for.end.i.for.body34.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body34.i

for.end.i.for.end41.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end41.i

for.body34.i:                                     ; preds = %smcr_buf_unmap_link.exit72.i.for.body34.i_crit_edge, %for.end.i.for.body34.i_crit_edge
  %buf_desc.176.i = phi ptr [ %bf.1.i, %smcr_buf_unmap_link.exit72.i.for.body34.i_crit_edge ], [ %30, %for.end.i.for.body34.i_crit_edge ]
  %31 = ptrtoint ptr %buf_desc.176.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.1.i = load ptr, ptr %buf_desc.176.i, align 8
  %is_map_ib48.i.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.176.i, i32 0, i32 5, i32 1, i32 32
  %32 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %link_idx.i.i, align 1
  %idxprom250.i.i = zext i8 %33 to i32
  %arrayidx351.i.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom250.i.i
  %34 = ptrtoint ptr %arrayidx351.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx351.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool4.not52.i.i = icmp eq i8 %35, 0
  br i1 %tobool4.not52.i.i, label %for.body34.i.smcr_buf_unmap_link.exit72.i_crit_edge, label %if.end23.i71.i

for.body34.i.smcr_buf_unmap_link.exit72.i_crit_edge: ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_buf_unmap_link.exit72.i

if.end23.i71.i:                                   ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_ib_buf_unmap_sg(ptr noundef %lnk, ptr noundef %buf_desc.176.i, i32 noundef 1) #18
  %36 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.176.i, i32 0, i32 5
  %37 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %link_idx.i.i, align 1
  %idxprom25.i67.i = zext i8 %38 to i32
  %arrayidx26.i68.i = getelementptr [3 x %struct.sg_table], ptr %36, i32 0, i32 %idxprom25.i67.i
  tail call void @sg_free_table(ptr noundef %arrayidx26.i68.i) #18
  %39 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %link_idx.i.i, align 1
  %idxprom29.i69.i = zext i8 %40 to i32
  %arrayidx30.i70.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom29.i69.i
  %41 = ptrtoint ptr %arrayidx30.i70.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx30.i70.i, align 1
  br label %smcr_buf_unmap_link.exit72.i

smcr_buf_unmap_link.exit72.i:                     ; preds = %if.end23.i71.i, %for.body34.i.smcr_buf_unmap_link.exit72.i_crit_edge
  %cmp32.not.i = icmp eq ptr %bf.1.i, %arrayidx19.i
  br i1 %cmp32.not.i, label %smcr_buf_unmap_link.exit72.i.for.end41.i_crit_edge, label %smcr_buf_unmap_link.exit72.i.for.body34.i_crit_edge

smcr_buf_unmap_link.exit72.i.for.body34.i_crit_edge: ; preds = %smcr_buf_unmap_link.exit72.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body34.i

smcr_buf_unmap_link.exit72.i.for.end41.i_crit_edge: ; preds = %smcr_buf_unmap_link.exit72.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end41.i

for.end41.i:                                      ; preds = %smcr_buf_unmap_link.exit72.i.for.end41.i_crit_edge, %for.end.i.for.end41.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sndbufs_lock.i) #18
  %inc.i = add nuw nsw i32 %i.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %smcr_buf_unmap_lgr.exit, label %for.end41.i.for.body.i_crit_edge

for.end41.i.for.body.i_crit_edge:                 ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

smcr_buf_unmap_lgr.exit:                          ; preds = %for.end41.i
  %42 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lgr, align 4
  br label %for.body.i22

for.body.i22:                                     ; preds = %for.body.i22.for.body.i22_crit_edge, %smcr_buf_unmap_lgr.exit
  %i.014.i = phi i32 [ 0, %smcr_buf_unmap_lgr.exit ], [ %inc.i20, %for.body.i22.for.body.i22_crit_edge ]
  %44 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %link_idx.i.i, align 1
  %idxprom.i = zext i8 %45 to i32
  %rkey.i = getelementptr %struct.smc_link_group, ptr %43, i32 0, i32 21, i32 0, i32 5, i32 %i.014.i, i32 %idxprom.i, i32 1
  %46 = ptrtoint ptr %rkey.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rkey.i, align 8
  %47 = load i8, ptr %link_idx.i.i, align 1
  %idxprom6.i = zext i8 %47 to i32
  %arrayidx7.i = getelementptr %struct.smc_link_group, ptr %43, i32 0, i32 21, i32 0, i32 5, i32 %i.014.i, i32 %idxprom6.i
  %48 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %arrayidx7.i, align 8
  %inc.i20 = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i21 = icmp eq i32 %inc.i20, 255
  br i1 %exitcond.not.i21, label %smcr_rtoken_clear_link.exit, label %for.body.i22.for.body.i22_crit_edge

for.body.i22.for.body.i22_crit_edge:              ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i22

smcr_rtoken_clear_link.exit:                      ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @smc_ib_modify_qp_error(ptr noundef %lnk) #18
  tail call void @smc_wr_free_link(ptr noundef %lnk) #18
  tail call void @smc_ib_destroy_queue_pair(ptr noundef %lnk) #18
  tail call void @smc_ib_dealloc_protection_domain(ptr noundef %lnk) #18
  tail call void @smcr_link_put(ptr noundef %lnk)
  br label %return

return:                                           ; preds = %smcr_rtoken_clear_link.exit, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_modify_qp_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_free_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_smcd_terminate(ptr noundef %dev, i64 noundef %peer_gid, i16 noundef zeroext %vlan) local_unnamed_addr #0 align 64 {
entry:
  %lgr_free_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lgr_free_list) #18
  %0 = getelementptr inbounds %struct.list_head, ptr %lgr_free_list, i32 0, i32 1
  %1 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %lgr_free_list, ptr %lgr_free_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lgr_free_list, ptr %0, align 4
  %lgr_lock = getelementptr inbounds %struct.smcd_dev, ptr %dev, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %lgr_lock) #18
  %lgr_list = getelementptr inbounds %struct.smcd_dev, ptr %dev, i32 0, i32 11
  %3 = ptrtoint ptr %lgr_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lgr_list, align 8
  %cmp.not79 = icmp eq ptr %4, %lgr_list
  br i1 %cmp.not79, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %peer_gid)
  %tobool.not = icmp eq i64 %peer_gid, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan)
  %cmp10 = icmp eq i16 %vlan, 4095
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lgr.080 = phi ptr [ %4, %for.body.lr.ph ], [ %l.083, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %lgr.080 to i32
  call void @__asan_load4_noabort(i32 %5)
  %l.083 = load ptr, ptr %lgr.080, align 8
  br i1 %tobool.not, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %6 = getelementptr inbounds %struct.smc_link_group, ptr %lgr.080, i32 0, i32 21
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %peer_gid)
  %cmp9 = icmp eq i64 %8, %peer_gid
  br i1 %cmp9, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  br i1 %cmp10, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false12

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false12:                                  ; preds = %land.lhs.true
  %vlan_id = getelementptr inbounds %struct.smc_link_group, ptr %lgr.080, i32 0, i32 4
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %vlan)
  %cmp15 = icmp eq i16 %10, %vlan
  br i1 %cmp15, label %lor.lhs.false12.if.then_crit_edge, label %lor.lhs.false12.for.inc_crit_edge

lor.lhs.false12.for.inc_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

lor.lhs.false12.if.then_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false12.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then18

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %peer_shutdown = getelementptr inbounds %struct.smc_link_group, ptr %lgr.080, i32 0, i32 21, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %peer_shutdown, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %peer_shutdown, align 4
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then.if.end_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %lgr.080) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lgr.080, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %lgr.080 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lgr.080, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %18 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lgr_free_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lgr.080, ptr noundef nonnull %lgr_free_list, ptr noundef %19) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lgr.080, ptr %prev1.i.i2.i, align 4
  %21 = ptrtoint ptr %lgr.080 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %lgr.080, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %lgr.080, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lgr_free_list, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %lgr.080, ptr %lgr_free_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %freeing = getelementptr inbounds %struct.smc_link_group, ptr %lgr.080, i32 0, i32 13
  %24 = ptrtoint ptr %freeing to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load20 = load i8, ptr %freeing, align 8
  %bf.set22 = or i8 %bf.load20, 32
  store i8 %bf.set22, ptr %freeing, align 8
  br label %for.inc

for.inc:                                          ; preds = %list_move.exit, %lor.lhs.false12.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %cmp.not = icmp eq ptr %l.083, %lgr_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lgr_lock) #18
  %25 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lgr_free_list, align 4
  %cmp41.not84 = icmp eq ptr %26, %lgr_free_list
  br i1 %cmp41.not84, label %for.end.for.end52_crit_edge, label %for.end.for.body44_crit_edge

for.end.for.body44_crit_edge:                     ; preds = %for.end
  br label %for.body44

for.end.for.end52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end52

for.body44:                                       ; preds = %list_del_init.exit.for.body44_crit_edge, %for.end.for.body44_crit_edge
  %lgr.185 = phi ptr [ %l.1, %list_del_init.exit.for.body44_crit_edge ], [ %26, %for.end.for.body44_crit_edge ]
  %27 = ptrtoint ptr %lgr.185 to i32
  call void @__asan_load4_noabort(i32 %27)
  %l.1 = load ptr, ptr %lgr.185, align 8
  %call.i.i72 = call zeroext i1 @__list_del_entry_valid(ptr noundef %lgr.185) #18
  br i1 %call.i.i72, label %if.end.i.i75, label %for.body44.list_del_init.exit_crit_edge

for.body44.list_del_init.exit_crit_edge:          ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i75:                                     ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i73 = getelementptr inbounds %struct.list_head, ptr %lgr.185, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i73, align 4
  %30 = ptrtoint ptr %lgr.185 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lgr.185, align 4
  %prev1.i.i.i74 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i74, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i75, %for.body44.list_del_init.exit_crit_edge
  %34 = ptrtoint ptr %lgr.185 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %lgr.185, ptr %lgr.185, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %lgr.185, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %lgr.185, ptr %prev.i3.i, align 4
  %terminate_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr.185, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i77 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %terminate_work) #18
  %cmp41.not = icmp eq ptr %l.1, %lgr_free_list
  br i1 %cmp41.not, label %list_del_init.exit.for.end52_crit_edge, label %list_del_init.exit.for.body44_crit_edge

list_del_init.exit.for.body44_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body44

list_del_init.exit.for.end52_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end52

for.end52:                                        ; preds = %list_del_init.exit.for.end52_crit_edge, %for.end.for.end52_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lgr_free_list) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_smcd_terminate_all(ptr noundef %smcd) local_unnamed_addr #0 align 64 {
entry:
  %lgr_free_list = alloca %struct.list_head, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lgr_free_list) #18
  %0 = getelementptr inbounds %struct.list_head, ptr %lgr_free_list, i32 0, i32 1
  %1 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %lgr_free_list, ptr %lgr_free_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lgr_free_list, ptr %0, align 4
  %lgr_lock = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %lgr_lock) #18
  %lgr_list = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 11
  %3 = ptrtoint ptr %lgr_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %lgr_list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %lgr_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lgr_free_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lgr_free_list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %lgr_free_list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %lgr_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %lgr_list, ptr %lgr_list, align 4
  store ptr %lgr_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %13 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %lgr.070 = load ptr, ptr %lgr_free_list, align 4
  %cmp.not71 = icmp eq ptr %lgr.070, %lgr_free_list
  br i1 %cmp.not71, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %lgr.072 = phi ptr [ %lgr.0, %for.body.for.body_crit_edge ], [ %lgr.070, %list_splice_init.exit.for.body_crit_edge ]
  %freeing = getelementptr inbounds %struct.smc_link_group, ptr %lgr.072, i32 0, i32 13
  %14 = ptrtoint ptr %freeing to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %freeing, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %freeing, align 8
  %15 = ptrtoint ptr %lgr.072 to i32
  call void @__asan_load4_noabort(i32 %15)
  %lgr.0 = load ptr, ptr %lgr.072, align 4
  %cmp.not = icmp eq ptr %lgr.0, %lgr_free_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lgr_lock) #18
  %16 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lgr_free_list, align 4
  %cmp19.not73 = icmp eq ptr %17, %lgr_free_list
  br i1 %cmp19.not73, label %for.end.for.end29_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end29

for.body21:                                       ; preds = %list_del_init.exit.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %lgr.174 = phi ptr [ %lg.0, %list_del_init.exit.for.body21_crit_edge ], [ %17, %for.end.for.body21_crit_edge ]
  %18 = ptrtoint ptr %lgr.174 to i32
  call void @__asan_load4_noabort(i32 %18)
  %lg.0 = load ptr, ptr %lgr.174, align 8
  %call.i.i67 = call zeroext i1 @__list_del_entry_valid(ptr noundef %lgr.174) #18
  br i1 %call.i.i67, label %if.end.i.i, label %for.body21.list_del_init.exit_crit_edge

for.body21.list_del_init.exit_crit_edge:          ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lgr.174, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %lgr.174 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lgr.174, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body21.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %lgr.174 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %lgr.174, ptr %lgr.174, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %lgr.174, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %lgr.174, ptr %prev.i3.i, align 4
  call fastcc void @__smc_lgr_terminate(ptr noundef %lgr.174, i1 noundef zeroext false)
  %cmp19.not = icmp eq ptr %lg.0, %lgr_free_list
  br i1 %cmp19.not, label %list_del_init.exit.for.end29_crit_edge, label %list_del_init.exit.for.body21_crit_edge

list_del_init.exit.for.body21_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body21

list_del_init.exit.for.end29_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end29

for.end29:                                        ; preds = %list_del_init.exit.for.end29_crit_edge, %for.end.for.end29_crit_edge
  %lgr_cnt = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 13
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %lgr_cnt, i32 noundef 4) #18
  %27 = ptrtoint ptr %lgr_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %lgr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %for.end29.if.end50_crit_edge, label %do.body30

for.end29.if.end50_crit_edge:                     ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

do.body30:                                        ; preds = %for.end29
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1528) #18
  %call.i.i65 = call zeroext i1 @__kasan_check_read(ptr noundef %lgr_cnt, i32 noundef 4) #18
  %29 = ptrtoint ptr %lgr_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %lgr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool36.not = icmp eq i32 %30, 0
  br i1 %tobool36.not, label %do.body30.if.end50_crit_edge, label %if.end

do.body30.if.end50_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

if.end:                                           ; preds = %do.body30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #18
  %31 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #18
  %lgrs_deleted = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 14
  %call3976 = call i32 @prepare_to_wait_event(ptr noundef %lgrs_deleted, ptr noundef nonnull %__wq_entry, i32 noundef 2) #18
  %call.i.i6677 = call zeroext i1 @__kasan_check_read(ptr noundef %lgr_cnt, i32 noundef 4) #18
  %32 = ptrtoint ptr %lgr_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %lgr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool42.not78 = icmp eq i32 %33, 0
  br i1 %tobool42.not78, label %if.end.for.end45_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end45

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #18
  %call39 = call i32 @prepare_to_wait_event(ptr noundef %lgrs_deleted, ptr noundef nonnull %__wq_entry, i32 noundef 2) #18
  %call.i.i66 = call zeroext i1 @__kasan_check_read(ptr noundef %lgr_cnt, i32 noundef 4) #18
  %34 = ptrtoint ptr %lgr_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %lgr_cnt, align 4
  %tobool42.not = icmp eq i32 %35, 0
  br i1 %tobool42.not, label %cleanup.for.end45_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.for.end45_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end45

for.end45:                                        ; preds = %cleanup.for.end45_crit_edge, %if.end.for.end45_crit_edge
  call void @finish_wait(ptr noundef %lgrs_deleted, ptr noundef nonnull %__wq_entry) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #18
  br label %if.end50

if.end50:                                         ; preds = %for.end45, %do.body30.if.end50_crit_edge, %for.end29.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lgr_free_list) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_smcr_terminate_all(ptr noundef %smcibdev) local_unnamed_addr #0 align 64 {
entry:
  %lgr_free_list = alloca %struct.list_head, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry101 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lgr_free_list) #18
  %0 = getelementptr inbounds %struct.list_head, ptr %lgr_free_list, i32 0, i32 1
  %1 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %lgr_free_list, ptr %lgr_free_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lgr_free_list, ptr %0, align 4
  call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1)) #18
  %tobool.not = icmp eq ptr %smcibdev, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load volatile ptr, ptr @smc_lgr_list, align 4
  %cmp.i.not.i = icmp eq ptr %3, @smc_lgr_list
  br i1 %cmp.i.not.i, label %if.then.list_splice_init.exit_crit_edge, label %if.then.i

if.then.list_splice_init.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lgr_free_list, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 0, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lgr_free_list, ptr %prev3.i.i, align 4
  store ptr %3, ptr %lgr_free_list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %6, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev6.i.i, align 4
  store volatile ptr @smc_lgr_list, ptr @smc_lgr_list, align 4
  store ptr @smc_lgr_list, ptr getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 0, i32 1), align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.then.list_splice_init.exit_crit_edge
  %10 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %lgr.0166 = load ptr, ptr %lgr_free_list, align 4
  %cmp.not167 = icmp eq ptr %lgr.0166, %lgr_free_list
  br i1 %cmp.not167, label %list_splice_init.exit.if.end37_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.if.end37_crit_edge:         ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %lgr.0168 = phi ptr [ %lgr.0, %for.body.for.body_crit_edge ], [ %lgr.0166, %list_splice_init.exit.for.body_crit_edge ]
  %freeing = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0168, i32 0, i32 13
  %11 = ptrtoint ptr %freeing to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %freeing, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %freeing, align 8
  %12 = ptrtoint ptr %lgr.0168 to i32
  call void @__asan_load4_noabort(i32 %12)
  %lgr.0 = load ptr, ptr %lgr.0168, align 4
  %cmp.not = icmp eq ptr %lgr.0, %lgr_free_list
  br i1 %cmp.not, label %for.body.if.end37_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr @smc_lgr_list, align 4
  %cmp17.not163 = icmp eq ptr %13, @smc_lgr_list
  br i1 %cmp17.not163, label %if.else.if.end37_crit_edge, label %if.else.for.cond20.preheader_crit_edge

if.else.for.cond20.preheader_crit_edge:           ; preds = %if.else
  br label %for.cond20.preheader

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

for.cond20.preheader:                             ; preds = %for.inc28.2.for.cond20.preheader_crit_edge, %if.else.for.cond20.preheader_crit_edge
  %lgr.1164 = phi ptr [ %lg.0165, %for.inc28.2.for.cond20.preheader_crit_edge ], [ %13, %if.else.for.cond20.preheader_crit_edge ]
  %14 = ptrtoint ptr %lgr.1164 to i32
  call void @__asan_load4_noabort(i32 %14)
  %lg.0165 = load ptr, ptr %lgr.1164, align 8
  %arrayidx = getelementptr %struct.smc_link_group, ptr %lgr.1164, i32 0, i32 21, i32 0, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 8
  %cmp24 = icmp eq ptr %16, %smcibdev
  br i1 %cmp24, label %if.then25, label %for.cond20.preheader.for.inc28_crit_edge

for.cond20.preheader.for.inc28_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc28

if.then25:                                        ; preds = %for.cond20.preheader
  %state.i = getelementptr %struct.smc_link_group, ptr %lgr.1164, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %call.i.i151 = call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !113
  call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then25
  %17 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i, i32 3, i32 1) #18, !srcloc !114
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %17, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i.i)
  %cmp.i = icmp eq i32 %asmresult1.i.i, 3
  br i1 %cmp.i, label %if.then.i152, label %__cmpxchg.exit.i.for.inc28_crit_edge

__cmpxchg.exit.i.for.inc28_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc28

if.then.i152:                                     ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %18 = call ptr @llvm.returnaddress(i32 0) #18
  call fastcc void @trace_smcr_link_down(ptr noundef %arrayidx, ptr noundef %18) #18
  %link_down_wrk.i = getelementptr %struct.smc_link_group, ptr %lgr.1164, i32 0, i32 21, i32 0, i32 1, i32 0, i32 51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %link_down_wrk.i) #18
  br label %for.inc28

for.inc28:                                        ; preds = %if.then.i152, %__cmpxchg.exit.i.for.inc28_crit_edge, %for.cond20.preheader.for.inc28_crit_edge
  %arrayidx.1 = getelementptr %struct.smc_link_group, ptr %lgr.1164, i32 0, i32 21, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 8
  %cmp24.1 = icmp eq ptr %21, %smcibdev
  br i1 %cmp24.1, label %if.then25.1, label %for.inc28.for.inc28.1_crit_edge

for.inc28.for.inc28.1_crit_edge:                  ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc28.1

if.then25.1:                                      ; preds = %for.inc28
  %state.i.1 = getelementptr %struct.smc_link_group, ptr %lgr.1164, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %call.i.i151.1 = call zeroext i1 @__kasan_check_write(ptr noundef %state.i.1, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !113
  call void @llvm.prefetch.p0(ptr %state.i.1, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.1

do.body.i.i.1:                                    ; preds = %do.body.i.i.1.do.body.i.i.1_crit_edge, %if.then25.1
  %22 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i.1, i32 3, i32 1) #18, !srcloc !114
  %asmresult.i.i.1 = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.1 = icmp eq i32 %asmresult.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %__cmpxchg.exit.i.1, label %do.body.i.i.1.do.body.i.i.1_crit_edge

do.body.i.i.1.do.body.i.i.1_crit_edge:            ; preds = %do.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.1

__cmpxchg.exit.i.1:                               ; preds = %do.body.i.i.1
  %asmresult1.i.i.1 = extractvalue { i32, i32 } %22, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i.i.1)
  %cmp.i.1 = icmp eq i32 %asmresult1.i.i.1, 3
  br i1 %cmp.i.1, label %if.then.i152.1, label %__cmpxchg.exit.i.1.for.inc28.1_crit_edge

__cmpxchg.exit.i.1.for.inc28.1_crit_edge:         ; preds = %__cmpxchg.exit.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc28.1

if.then.i152.1:                                   ; preds = %__cmpxchg.exit.i.1
  call void @__sanitizer_cov_trace_pc() #20
  %23 = call ptr @llvm.returnaddress(i32 0) #18
  call fastcc void @trace_smcr_link_down(ptr noundef %arrayidx.1, ptr noundef %23) #18
  %link_down_wrk.i.1 = getelementptr %struct.smc_link_group, ptr %lgr.1164, i32 0, i32 21, i32 0, i32 1, i32 1, i32 51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.1 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %link_down_wrk.i.1) #18
  br label %for.inc28.1

for.inc28.1:                                      ; preds = %if.then.i152.1, %__cmpxchg.exit.i.1.for.inc28.1_crit_edge, %for.inc28.for.inc28.1_crit_edge
  %arrayidx.2 = getelementptr %struct.smc_link_group, ptr %lgr.1164, i32 0, i32 21, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.2, align 8
  %cmp24.2 = icmp eq ptr %26, %smcibdev
  br i1 %cmp24.2, label %if.then25.2, label %for.inc28.1.for.inc28.2_crit_edge

for.inc28.1.for.inc28.2_crit_edge:                ; preds = %for.inc28.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc28.2

if.then25.2:                                      ; preds = %for.inc28.1
  %state.i.2 = getelementptr %struct.smc_link_group, ptr %lgr.1164, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %call.i.i151.2 = call zeroext i1 @__kasan_check_write(ptr noundef %state.i.2, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !113
  call void @llvm.prefetch.p0(ptr %state.i.2, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.2

do.body.i.i.2:                                    ; preds = %do.body.i.i.2.do.body.i.i.2_crit_edge, %if.then25.2
  %27 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i.2, i32 3, i32 1) #18, !srcloc !114
  %asmresult.i.i.2 = extractvalue { i32, i32 } %27, 0
  %tobool.not.i.i.2 = icmp eq i32 %asmresult.i.i.2, 0
  br i1 %tobool.not.i.i.2, label %__cmpxchg.exit.i.2, label %do.body.i.i.2.do.body.i.i.2_crit_edge

do.body.i.i.2.do.body.i.i.2_crit_edge:            ; preds = %do.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.2

__cmpxchg.exit.i.2:                               ; preds = %do.body.i.i.2
  %asmresult1.i.i.2 = extractvalue { i32, i32 } %27, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i.i.2)
  %cmp.i.2 = icmp eq i32 %asmresult1.i.i.2, 3
  br i1 %cmp.i.2, label %if.then.i152.2, label %__cmpxchg.exit.i.2.for.inc28.2_crit_edge

__cmpxchg.exit.i.2.for.inc28.2_crit_edge:         ; preds = %__cmpxchg.exit.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc28.2

if.then.i152.2:                                   ; preds = %__cmpxchg.exit.i.2
  call void @__sanitizer_cov_trace_pc() #20
  %28 = call ptr @llvm.returnaddress(i32 0) #18
  call fastcc void @trace_smcr_link_down(ptr noundef %arrayidx.2, ptr noundef %28) #18
  %link_down_wrk.i.2 = getelementptr %struct.smc_link_group, ptr %lgr.1164, i32 0, i32 21, i32 0, i32 1, i32 2, i32 51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.2 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %link_down_wrk.i.2) #18
  br label %for.inc28.2

for.inc28.2:                                      ; preds = %if.then.i152.2, %__cmpxchg.exit.i.2.for.inc28.2_crit_edge, %for.inc28.1.for.inc28.2_crit_edge
  %cmp17.not = icmp eq ptr %lg.0165, @smc_lgr_list
  br i1 %cmp17.not, label %for.inc28.2.if.end37_crit_edge, label %for.inc28.2.for.cond20.preheader_crit_edge

for.inc28.2.for.cond20.preheader_crit_edge:       ; preds = %for.inc28.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond20.preheader

for.inc28.2.if.end37_crit_edge:                   ; preds = %for.inc28.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

if.end37:                                         ; preds = %for.inc28.2.if.end37_crit_edge, %if.else.if.end37_crit_edge, %for.body.if.end37_crit_edge, %list_splice_init.exit.if.end37_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1)) #18
  %30 = ptrtoint ptr %lgr_free_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lgr_free_list, align 4
  %cmp49.not169 = icmp eq ptr %31, %lgr_free_list
  br i1 %cmp49.not169, label %if.end37.for.end59_crit_edge, label %if.end37.for.body51_crit_edge

if.end37.for.body51_crit_edge:                    ; preds = %if.end37
  br label %for.body51

if.end37.for.end59_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end59

for.body51:                                       ; preds = %smc_llc_set_termination_rsn.exit.for.body51_crit_edge, %if.end37.for.body51_crit_edge
  %lgr.2170 = phi ptr [ %lg.1, %smc_llc_set_termination_rsn.exit.for.body51_crit_edge ], [ %31, %if.end37.for.body51_crit_edge ]
  %32 = ptrtoint ptr %lgr.2170 to i32
  call void @__asan_load4_noabort(i32 %32)
  %lg.1 = load ptr, ptr %lgr.2170, align 8
  %call.i.i153 = call zeroext i1 @__list_del_entry_valid(ptr noundef %lgr.2170) #18
  br i1 %call.i.i153, label %if.end.i.i, label %for.body51.list_del_init.exit_crit_edge

for.body51.list_del_init.exit_crit_edge:          ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lgr.2170, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %lgr.2170 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lgr.2170, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body51.list_del_init.exit_crit_edge
  %39 = ptrtoint ptr %lgr.2170 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %lgr.2170, ptr %lgr.2170, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %lgr.2170, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %lgr.2170, ptr %prev.i3.i, align 4
  %llc_termination_rsn.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.2170, i32 0, i32 21, i32 0, i32 23
  %41 = ptrtoint ptr %llc_termination_rsn.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %llc_termination_rsn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.then.i154, label %list_del_init.exit.smc_llc_set_termination_rsn.exit_crit_edge

list_del_init.exit.smc_llc_set_termination_rsn.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_llc_set_termination_rsn.exit

if.then.i154:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  %43 = ptrtoint ptr %llc_termination_rsn.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 131072, ptr %llc_termination_rsn.i, align 4
  br label %smc_llc_set_termination_rsn.exit

smc_llc_set_termination_rsn.exit:                 ; preds = %if.then.i154, %list_del_init.exit.smc_llc_set_termination_rsn.exit_crit_edge
  call fastcc void @__smc_lgr_terminate(ptr noundef %lgr.2170, i1 noundef zeroext false)
  %cmp49.not = icmp eq ptr %lg.1, %lgr_free_list
  br i1 %cmp49.not, label %smc_llc_set_termination_rsn.exit.for.end59_crit_edge, label %smc_llc_set_termination_rsn.exit.for.body51_crit_edge

smc_llc_set_termination_rsn.exit.for.body51_crit_edge: ; preds = %smc_llc_set_termination_rsn.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body51

smc_llc_set_termination_rsn.exit.for.end59_crit_edge: ; preds = %smc_llc_set_termination_rsn.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end59

for.end59:                                        ; preds = %smc_llc_set_termination_rsn.exit.for.end59_crit_edge, %if.end37.for.end59_crit_edge
  br i1 %tobool.not, label %if.else86, label %if.then61

if.then61:                                        ; preds = %for.end59
  %lnk_cnt = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 15
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %lnk_cnt, i32 noundef 4) #18
  %44 = ptrtoint ptr %lnk_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %lnk_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool62.not = icmp eq i32 %45, 0
  br i1 %tobool62.not, label %if.then61.if.end119_crit_edge, label %do.body64

if.then61.if.end119_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end119

do.body64:                                        ; preds = %if.then61
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1565) #18
  %call.i.i146 = call zeroext i1 @__kasan_check_read(ptr noundef %lnk_cnt, i32 noundef 4) #18
  %46 = ptrtoint ptr %lnk_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %lnk_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool70.not = icmp eq i32 %47, 0
  br i1 %tobool70.not, label %do.body64.if.end119_crit_edge, label %if.end72

do.body64.if.end119_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end119

if.end72:                                         ; preds = %do.body64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #18
  %48 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #18
  %lnks_deleted = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 16
  %call74171 = call i32 @prepare_to_wait_event(ptr noundef %lnks_deleted, ptr noundef nonnull %__wq_entry, i32 noundef 2) #18
  %call.i.i147172 = call zeroext i1 @__kasan_check_read(ptr noundef %lnk_cnt, i32 noundef 4) #18
  %49 = ptrtoint ptr %lnk_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %lnk_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool77.not173 = icmp eq i32 %50, 0
  br i1 %tobool77.not173, label %if.end72.for.end80_crit_edge, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  br label %cleanup

if.end72.for.end80_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end80

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end72.cleanup_crit_edge
  call void @schedule() #18
  %call74 = call i32 @prepare_to_wait_event(ptr noundef %lnks_deleted, ptr noundef nonnull %__wq_entry, i32 noundef 2) #18
  %call.i.i147 = call zeroext i1 @__kasan_check_read(ptr noundef %lnk_cnt, i32 noundef 4) #18
  %51 = ptrtoint ptr %lnk_cnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %lnk_cnt, align 4
  %tobool77.not = icmp eq i32 %52, 0
  br i1 %tobool77.not, label %cleanup.for.end80_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.for.end80_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end80

for.end80:                                        ; preds = %cleanup.for.end80_crit_edge, %if.end72.for.end80_crit_edge
  call void @finish_wait(ptr noundef %lnks_deleted, ptr noundef nonnull %__wq_entry) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #18
  br label %if.end119

if.else86:                                        ; preds = %for.end59
  %call.i.i148 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lgr_cnt, i32 noundef 4) #18
  %53 = load volatile i32, ptr @lgr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool88.not = icmp eq i32 %53, 0
  br i1 %tobool88.not, label %if.else86.if.end119_crit_edge, label %do.body91

if.else86.if.end119_crit_edge:                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end119

do.body91:                                        ; preds = %if.else86
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1568) #18
  %call.i.i149 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lgr_cnt, i32 noundef 4) #18
  %54 = load volatile i32, ptr @lgr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool98.not = icmp eq i32 %54, 0
  br i1 %tobool98.not, label %do.body91.if.end119_crit_edge, label %if.end100

do.body91.if.end119_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end119

if.end100:                                        ; preds = %do.body91
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry101) #18
  %55 = call ptr @memset(ptr %__wq_entry101, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry101, i32 noundef 0) #18
  %call105174 = call i32 @prepare_to_wait_event(ptr noundef nonnull @lgrs_deleted, ptr noundef nonnull %__wq_entry101, i32 noundef 2) #18
  %call.i.i150175 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lgr_cnt, i32 noundef 4) #18
  %56 = load volatile i32, ptr @lgr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool107.not176 = icmp eq i32 %56, 0
  br i1 %tobool107.not176, label %if.end100.for.end113_crit_edge, label %if.end100.cleanup110_crit_edge

if.end100.cleanup110_crit_edge:                   ; preds = %if.end100
  br label %cleanup110

if.end100.for.end113_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end113

cleanup110:                                       ; preds = %cleanup110.cleanup110_crit_edge, %if.end100.cleanup110_crit_edge
  call void @schedule() #18
  %call105 = call i32 @prepare_to_wait_event(ptr noundef nonnull @lgrs_deleted, ptr noundef nonnull %__wq_entry101, i32 noundef 2) #18
  %call.i.i150 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lgr_cnt, i32 noundef 4) #18
  %57 = load volatile i32, ptr @lgr_cnt, align 4
  %tobool107.not = icmp eq i32 %57, 0
  br i1 %tobool107.not, label %cleanup110.for.end113_crit_edge, label %cleanup110.cleanup110_crit_edge

cleanup110.cleanup110_crit_edge:                  ; preds = %cleanup110
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

cleanup110.for.end113_crit_edge:                  ; preds = %cleanup110
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end113

for.end113:                                       ; preds = %cleanup110.for.end113_crit_edge, %if.end100.for.end113_crit_edge
  call void @finish_wait(ptr noundef nonnull @lgrs_deleted, ptr noundef nonnull %__wq_entry101) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry101) #18
  br label %if.end119

if.end119:                                        ; preds = %for.end113, %do.body91.if.end119_crit_edge, %if.else86.if.end119_crit_edge, %for.end80, %do.body64.if.end119_crit_edge, %if.then61.if.end119_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lgr_free_list) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcr_lgr_set_type(ptr noundef %lgr, i32 noundef %new_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.i = icmp ugt i32 %1, 1
  br i1 %switch.i, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %link_is_asym = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 47
  %2 = ptrtoint ptr %link_is_asym to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %link_is_asym, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %state.i.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %3 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.i.1 = icmp ugt i32 %4, 1
  br i1 %switch.i.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  %link_is_asym.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 47
  %5 = ptrtoint ptr %link_is_asym.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %link_is_asym.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %state.i.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %6 = ptrtoint ptr %state.i.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.i.2 = icmp ugt i32 %7, 1
  br i1 %switch.i.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  %link_is_asym.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 47
  %8 = ptrtoint ptr %link_is_asym.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %link_is_asym.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %type = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 8
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %new_type)
  %cmp3 = icmp eq i32 %10, %new_type
  br i1 %cmp3, label %for.inc.2.cleanup_crit_edge, label %if.end5

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %for.inc.2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %new_type, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %new_type)
  %12 = icmp ult i32 %new_type, 5
  br i1 %12, label %switch.lookup, label %if.end5.sw.epilog_crit_edge

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.smcr_lgr_set_type, i32 0, i32 %new_type
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end5.sw.epilog_crit_edge
  %lgr_type.0 = phi ptr [ @.str.3, %if.end5.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @smcr_lgr_set_type._rs, ptr noundef nonnull @__func__.smcr_lgr_set_type) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  %id = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 9
  %net = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 27
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  %net_cookie = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %net_cookie to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %net_cookie, align 128
  %pnet_id = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef %id, i64 noundef %17, ptr noundef nonnull %lgr_type.0, ptr noundef %pnet_id) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcr_lgr_set_type_asym(ptr noundef %lgr, i32 noundef %new_type, i32 noundef %asym_lnk_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.i.i = icmp ugt i32 %1, 1
  br i1 %switch.i.i, label %if.then.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %link_is_asym.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 47
  %2 = ptrtoint ptr %link_is_asym.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %link_is_asym.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %state.i.1.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %3 = ptrtoint ptr %state.i.1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.i.1.i = icmp ugt i32 %4, 1
  br i1 %switch.i.1.i, label %if.then.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  %link_is_asym.1.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 47
  %5 = ptrtoint ptr %link_is_asym.1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %link_is_asym.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %state.i.2.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %6 = ptrtoint ptr %state.i.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.i.2.i = icmp ugt i32 %7, 1
  br i1 %switch.i.2.i, label %if.then.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  %link_is_asym.2.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 47
  %8 = ptrtoint ptr %link_is_asym.2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %link_is_asym.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %type.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 8
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %new_type)
  %cmp3.i = icmp eq i32 %10, %new_type
  br i1 %cmp3.i, label %for.inc.2.i.smcr_lgr_set_type.exit_crit_edge, label %if.end5.i

for.inc.2.i.smcr_lgr_set_type.exit_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_lgr_set_type.exit

if.end5.i:                                        ; preds = %for.inc.2.i
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %new_type, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %new_type)
  %12 = icmp ult i32 %new_type, 5
  br i1 %12, label %switch.lookup, label %if.end5.i.sw.epilog.i_crit_edge

if.end5.i.sw.epilog.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.smcr_lgr_set_type_asym, i32 0, i32 %new_type
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end5.i.sw.epilog.i_crit_edge
  %lgr_type.0.i = phi ptr [ @.str.3, %if.end5.i.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %call12.i = tail call i32 @___ratelimit(ptr noundef nonnull @smcr_lgr_set_type._rs, ptr noundef nonnull @__func__.smcr_lgr_set_type) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.smcr_lgr_set_type.exit_crit_edge, label %do.end.i

sw.epilog.i.smcr_lgr_set_type.exit_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_lgr_set_type.exit

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  %id.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 9
  %net.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 27
  %14 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i, align 4
  %net_cookie.i = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %net_cookie.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %net_cookie.i, align 128
  %pnet_id.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 9
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef %id.i, i64 noundef %17, ptr noundef nonnull %lgr_type.0.i, ptr noundef %pnet_id.i) #23
  br label %smcr_lgr_set_type.exit

smcr_lgr_set_type.exit:                           ; preds = %do.end.i, %sw.epilog.i.smcr_lgr_set_type.exit_crit_edge, %for.inc.2.i.smcr_lgr_set_type.exit_crit_edge
  %link_is_asym = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %asym_lnk_idx, i32 47
  %18 = ptrtoint ptr %link_is_asym to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %link_is_asym, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcr_port_add(ptr nocapture noundef readonly %smcibdev, i8 noundef zeroext %ibport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @smc_lgr_list, align 4
  %cmp.not35 = icmp eq ptr %0, @smc_lgr_list
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i8 %ibport to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 9, i32 %sub
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %lgr.036 = phi ptr [ %0, %for.body.lr.ph ], [ %n.037, %cleanup.for.body_crit_edge ]
  %1 = ptrtoint ptr %lgr.036 to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.037 = load ptr, ptr %lgr.036, align 8
  %pnet_id = getelementptr inbounds %struct.smc_link_group, ptr %lgr.036, i32 0, i32 21, i32 0, i32 9
  %call = tail call i32 @strncmp(ptr noundef %arrayidx, ptr noundef %pnet_id, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %type = getelementptr inbounds %struct.smc_link_group, ptr %lgr.036, i32 0, i32 21, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibdev, align 8
  %net = getelementptr inbounds %struct.smc_link_group, ptr %lgr.036, i32 0, i32 21, i32 0, i32 27
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %call13 = tail call zeroext i1 @rdma_dev_access_netns(ptr noundef %6, ptr noundef %8) #18
  br i1 %call13, label %if.end, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12
  %state.i.i = getelementptr %struct.smc_link_group, ptr %lgr.036, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %switch.i.i = icmp ugt i32 %10, 1
  br i1 %switch.i.i, label %if.end.smc_llc_usable_link.exit_crit_edge, label %for.inc.i

if.end.smc_llc_usable_link.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_llc_usable_link.exit

for.inc.i:                                        ; preds = %if.end
  %state.i.1.i = getelementptr %struct.smc_link_group, ptr %lgr.036, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %11 = ptrtoint ptr %state.i.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %switch.i.1.i = icmp ugt i32 %12, 1
  br i1 %switch.i.1.i, label %for.inc.i.smc_llc_usable_link.exit_crit_edge, label %for.inc.1.i

for.inc.i.smc_llc_usable_link.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_llc_usable_link.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %state.i.2.i = getelementptr %struct.smc_link_group, ptr %lgr.036, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %13 = ptrtoint ptr %state.i.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %switch.i.2.i = icmp ugt i32 %14, 1
  br i1 %switch.i.2.i, label %for.inc.1.i.smc_llc_usable_link.exit_crit_edge, label %for.inc.1.i.cleanup_crit_edge

for.inc.1.i.cleanup_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.1.i.smc_llc_usable_link.exit_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_llc_usable_link.exit

smc_llc_usable_link.exit:                         ; preds = %for.inc.1.i.smc_llc_usable_link.exit_crit_edge, %for.inc.i.smc_llc_usable_link.exit_crit_edge, %if.end.smc_llc_usable_link.exit_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %if.end.smc_llc_usable_link.exit_crit_edge ], [ 1, %for.inc.i.smc_llc_usable_link.exit_crit_edge ], [ 2, %for.inc.1.i.smc_llc_usable_link.exit_crit_edge ]
  %arrayidx.le.i = getelementptr %struct.smc_link_group, ptr %lgr.036, i32 0, i32 21, i32 0, i32 1, i32 %i.09.lcssa.i
  %tobool15.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool15.not, label %smc_llc_usable_link.exit.cleanup_crit_edge, label %if.then16

smc_llc_usable_link.exit.cleanup_crit_edge:       ; preds = %smc_llc_usable_link.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then16:                                        ; preds = %smc_llc_usable_link.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_llc_add_link_local(ptr noundef nonnull %arrayidx.le.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %smc_llc_usable_link.exit.cleanup_crit_edge, %for.inc.1.i.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %cmp.not = icmp eq ptr %n.037, @smc_lgr_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rdma_dev_access_netns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_add_link_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcr_link_down_cond(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 54
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #18
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state, i32 3, i32 1) #18, !srcloc !114
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i)
  %cmp = icmp eq i32 %asmresult1.i, 3
  br i1 %cmp, label %if.then, label %__cmpxchg.exit.if.end_crit_edge

__cmpxchg.exit.if.end_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #20
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_smcr_link_down(ptr noundef %lnk, ptr noundef %1)
  tail call fastcc void @smcr_link_down(ptr noundef %lnk)
  br label %if.end

if.end:                                           ; preds = %if.then, %__cmpxchg.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smcr_link_down(ptr noundef %lnk, ptr noundef %location) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smcr_link_down, i32 0, i32 1), ptr blockaddress(@trace_smcr_link_down, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !118

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !119
  %call42 = tail call i32 @__traceiter_smcr_link_down(ptr noundef null, ptr noundef %lnk, ptr noundef %location) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smcr_link_down, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smcr_link_down, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smcr_link_down.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_smcr_link_down.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 115, ptr noundef nonnull @.str.19) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !122
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smcr_link_down(ptr noundef %lnk) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup84_crit_edge, label %lor.lhs.false

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup84

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 54
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup84_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup84

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %5, %1
  br i1 %cmp.i.not, label %lor.lhs.false2.cleanup84_crit_edge, label %if.end

lor.lhs.false2.cleanup84_crit_edge:               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup84

if.end:                                           ; preds = %lor.lhs.false2
  %call4 = tail call ptr @smc_switch_conns(ptr noundef nonnull %1, ptr noundef %lnk, i1 noundef zeroext true)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smcr_link_clear(ptr noundef %lnk, i1 noundef zeroext true)
  br label %cleanup84

if.end7:                                          ; preds = %if.end
  %state.i.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.i.i = icmp ugt i32 %7, 1
  br i1 %switch.i.i, label %if.then.i, label %if.end7.for.inc.i_crit_edge

if.end7.for.inc.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %link_is_asym.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 47
  %8 = ptrtoint ptr %link_is_asym.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %link_is_asym.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end7.for.inc.i_crit_edge
  %state.i.1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %9 = ptrtoint ptr %state.i.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %switch.i.1.i = icmp ugt i32 %10, 1
  br i1 %switch.i.1.i, label %if.then.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  %link_is_asym.1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 47
  %11 = ptrtoint ptr %link_is_asym.1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %link_is_asym.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %state.i.2.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %12 = ptrtoint ptr %state.i.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %switch.i.2.i = icmp ugt i32 %13, 1
  br i1 %switch.i.2.i, label %if.then.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  %link_is_asym.2.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2, i32 47
  %14 = ptrtoint ptr %link_is_asym.2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %link_is_asym.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %type.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 8
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp3.i = icmp eq i32 %16, 1
  br i1 %cmp3.i, label %for.inc.2.i.smcr_lgr_set_type.exit_crit_edge, label %if.end5.i

for.inc.2.i.smcr_lgr_set_type.exit_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_lgr_set_type.exit

if.end5.i:                                        ; preds = %for.inc.2.i
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type.i, align 4
  %call12.i = tail call i32 @___ratelimit(ptr noundef nonnull @smcr_lgr_set_type._rs, ptr noundef nonnull @__func__.smcr_lgr_set_type) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end5.i.smcr_lgr_set_type.exit_crit_edge, label %do.end.i

if.end5.i.smcr_lgr_set_type.exit_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_lgr_set_type.exit

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  %id.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 9
  %net.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 27
  %18 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net.i, align 4
  %net_cookie.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 47
  %20 = ptrtoint ptr %net_cookie.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %net_cookie.i, align 128
  %pnet_id.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 9
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef %id.i, i64 noundef %21, ptr noundef nonnull @.str.5, ptr noundef %pnet_id.i) #23
  br label %smcr_lgr_set_type.exit

smcr_lgr_set_type.exit:                           ; preds = %do.end.i, %if.end5.i.smcr_lgr_set_type.exit_crit_edge, %for.inc.2.i.smcr_lgr_set_type.exit_crit_edge
  %link_id = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 43
  %22 = ptrtoint ptr %link_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %link_id, align 2
  %24 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp8 = icmp eq i32 %26, 1
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %smcr_lgr_set_type.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_llc_srv_delete_link_local(ptr noundef nonnull %call4, i8 noundef zeroext %23) #18
  br label %cleanup84

if.else:                                          ; preds = %smcr_lgr_set_type.exit
  %llc_flow_lcl = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18
  %27 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %llc_flow_lcl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp12.not = icmp eq i32 %28, 0
  br i1 %cmp12.not, label %if.else.if.end74_crit_edge, label %if.then14

if.else.if.end74_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end74

if.then14:                                        ; preds = %if.else
  %llc_conf_mutex = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %llc_conf_mutex) #18
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1680) #18
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %1, align 4
  %cmp.i120.not = icmp eq ptr %30, %1
  br i1 %cmp.i120.not, label %if.then14.if.end71_crit_edge, label %lor.rhs

if.then14.if.end71_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end71

lor.rhs:                                          ; preds = %if.then14
  %31 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %llc_flow_lcl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp23 = icmp eq i32 %32, 0
  br i1 %cmp23, label %lor.rhs.if.end71_crit_edge, label %if.then36

lor.rhs.if.end71_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end71

if.then36:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #18
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #18
  %llc_flow_waiter = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 16
  %call38133 = call i32 @prepare_to_wait_event(ptr noundef %llc_flow_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 2) #18
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %1, align 4
  %cmp.i122.not134 = icmp eq ptr %35, %1
  br i1 %cmp.i122.not134, label %if.then36.for.end_crit_edge, label %if.then36.lor.end48_crit_edge

if.then36.lor.end48_crit_edge:                    ; preds = %if.then36
  br label %lor.end48

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

lor.end48:                                        ; preds = %cleanup.lor.end48_crit_edge, %if.then36.lor.end48_crit_edge
  %__ret37.0135 = phi i32 [ %call68, %cleanup.lor.end48_crit_edge ], [ 200, %if.then36.lor.end48_crit_edge ]
  %36 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %llc_flow_lcl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp46 = icmp eq i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.0135)
  %tobool61.not = icmp eq i32 %__ret37.0135, 0
  %or.cond = select i1 %cmp46, i1 true, i1 %tobool61.not
  br i1 %or.cond, label %lor.end48.for.end_crit_edge, label %cleanup

lor.end48.for.end_crit_edge:                      ; preds = %lor.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

cleanup:                                          ; preds = %lor.end48
  %call68 = call i32 @schedule_timeout(i32 noundef %__ret37.0135) #18
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %llc_flow_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 2) #18
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %1, align 4
  %cmp.i122.not = icmp eq ptr %39, %1
  br i1 %cmp.i122.not, label %cleanup.for.end_crit_edge, label %cleanup.lor.end48_crit_edge

cleanup.lor.end48_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.end48

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.end48.for.end_crit_edge, %if.then36.for.end_crit_edge
  call void @finish_wait(ptr noundef %llc_flow_waiter, ptr noundef nonnull %__wq_entry) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #18
  br label %if.end71

if.end71:                                         ; preds = %for.end, %lor.rhs.if.end71_crit_edge, %if.then14.if.end71_crit_edge
  call void @mutex_lock_nested(ptr noundef %llc_conf_mutex, i32 noundef 0) #18
  br label %if.end74

if.end74:                                         ; preds = %if.end71, %if.else.if.end74_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %1, align 4
  %cmp.i124.not = icmp eq ptr %41, %1
  br i1 %cmp.i124.not, label %if.end74.if.end81_crit_edge, label %if.then78

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end81

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  %call80 = call i32 @smc_llc_send_delete_link(ptr noundef nonnull %call4, i8 noundef zeroext %23, i32 noundef 0, i1 noundef zeroext true, i32 noundef 65536) #18
  call void @smcr_link_clear(ptr noundef %lnk, i1 noundef zeroext true)
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end74.if.end81_crit_edge
  %llc_flow_waiter82 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 16
  call void @__wake_up(ptr noundef %llc_flow_waiter82, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %cleanup84

cleanup84:                                        ; preds = %if.end81, %if.then10, %if.then6, %lor.lhs.false2.cleanup84_crit_edge, %lor.lhs.false.cleanup84_crit_edge, %entry.cleanup84_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcr_port_err(ptr noundef readonly %smcibdev, i8 noundef zeroext %ibport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @smc_lgr_list, align 4
  %cmp.not54 = icmp eq ptr %0, @smc_lgr_list
  br i1 %cmp.not54, label %entry.for.end36_crit_edge, label %for.body.lr.ph

entry.for.end36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end36

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i8 %ibport to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 9, i32 %sub
  br label %for.body

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %for.body.lr.ph
  %lgr.055 = phi ptr [ %0, %for.body.lr.ph ], [ %n.056, %for.inc30.for.body_crit_edge ]
  %1 = ptrtoint ptr %lgr.055 to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.056 = load ptr, ptr %lgr.055, align 8
  %pnet_id = getelementptr inbounds %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 9
  %call = tail call i32 @strncmp(ptr noundef %arrayidx, ptr noundef %pnet_id, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc30_crit_edge

for.body.for.inc30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc30

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %lgr.055 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %lgr.055, align 4
  %cmp.i.not = icmp eq ptr %3, %lgr.055
  br i1 %cmp.i.not, label %if.end.for.inc30_crit_edge, label %for.body14.preheader

if.end.for.inc30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc30

for.body14.preheader:                             ; preds = %if.end
  %arrayidx16 = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 0
  %state.i = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %switch.i = icmp ugt i32 %5, 1
  br i1 %switch.i, label %land.lhs.true, label %for.body14.preheader.if.end29_crit_edge

for.body14.preheader.if.end29_crit_edge:          ; preds = %for.body14.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

land.lhs.true:                                    ; preds = %for.body14.preheader
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx16, align 8
  %cmp20 = icmp eq ptr %7, %smcibdev
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

land.lhs.true22:                                  ; preds = %land.lhs.true
  %ibport23 = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %ibport23 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ibport23, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %ibport)
  %cmp26 = icmp eq i8 %9, %ibport
  br i1 %cmp26, label %if.then28, label %land.lhs.true22.if.end29_crit_edge

land.lhs.true22.if.end29_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then28
  %10 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i, i32 3, i32 1) #18, !srcloc !114
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i.i)
  %cmp.i50 = icmp eq i32 %asmresult1.i.i, 3
  br i1 %cmp.i50, label %if.then.i, label %__cmpxchg.exit.i.if.end29_crit_edge

__cmpxchg.exit.i.if.end29_crit_edge:              ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then.i:                                        ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %11 = tail call ptr @llvm.returnaddress(i32 0) #18
  tail call fastcc void @trace_smcr_link_down(ptr noundef %arrayidx16, ptr noundef %11) #18
  %link_down_wrk.i = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 0, i32 51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %link_down_wrk.i) #18
  br label %if.end29

if.end29:                                         ; preds = %if.then.i, %__cmpxchg.exit.i.if.end29_crit_edge, %land.lhs.true22.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %for.body14.preheader.if.end29_crit_edge
  %arrayidx16.1 = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 1
  %state.i.1 = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %13 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %switch.i.1 = icmp ugt i32 %14, 1
  br i1 %switch.i.1, label %land.lhs.true.1, label %if.end29.if.end29.1_crit_edge

if.end29.if.end29.1_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29.1

land.lhs.true.1:                                  ; preds = %if.end29
  %15 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx16.1, align 8
  %cmp20.1 = icmp eq ptr %16, %smcibdev
  br i1 %cmp20.1, label %land.lhs.true22.1, label %land.lhs.true.1.if.end29.1_crit_edge

land.lhs.true.1.if.end29.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29.1

land.lhs.true22.1:                                ; preds = %land.lhs.true.1
  %ibport23.1 = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %ibport23.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ibport23.1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %ibport)
  %cmp26.1 = icmp eq i8 %18, %ibport
  br i1 %cmp26.1, label %if.then28.1, label %land.lhs.true22.1.if.end29.1_crit_edge

land.lhs.true22.1.if.end29.1_crit_edge:           ; preds = %land.lhs.true22.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29.1

if.then28.1:                                      ; preds = %land.lhs.true22.1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i.1, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %state.i.1, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.1

do.body.i.i.1:                                    ; preds = %do.body.i.i.1.do.body.i.i.1_crit_edge, %if.then28.1
  %19 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i.1, i32 3, i32 1) #18, !srcloc !114
  %asmresult.i.i.1 = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.1 = icmp eq i32 %asmresult.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %__cmpxchg.exit.i.1, label %do.body.i.i.1.do.body.i.i.1_crit_edge

do.body.i.i.1.do.body.i.i.1_crit_edge:            ; preds = %do.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.1

__cmpxchg.exit.i.1:                               ; preds = %do.body.i.i.1
  %asmresult1.i.i.1 = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i.i.1)
  %cmp.i50.1 = icmp eq i32 %asmresult1.i.i.1, 3
  br i1 %cmp.i50.1, label %if.then.i.1, label %__cmpxchg.exit.i.1.if.end29.1_crit_edge

__cmpxchg.exit.i.1.if.end29.1_crit_edge:          ; preds = %__cmpxchg.exit.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29.1

if.then.i.1:                                      ; preds = %__cmpxchg.exit.i.1
  call void @__sanitizer_cov_trace_pc() #20
  %20 = tail call ptr @llvm.returnaddress(i32 0) #18
  tail call fastcc void @trace_smcr_link_down(ptr noundef %arrayidx16.1, ptr noundef %20) #18
  %link_down_wrk.i.1 = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 1, i32 51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.1 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %link_down_wrk.i.1) #18
  br label %if.end29.1

if.end29.1:                                       ; preds = %if.then.i.1, %__cmpxchg.exit.i.1.if.end29.1_crit_edge, %land.lhs.true22.1.if.end29.1_crit_edge, %land.lhs.true.1.if.end29.1_crit_edge, %if.end29.if.end29.1_crit_edge
  %arrayidx16.2 = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 2
  %state.i.2 = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %22 = ptrtoint ptr %state.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %switch.i.2 = icmp ugt i32 %23, 1
  br i1 %switch.i.2, label %land.lhs.true.2, label %if.end29.1.for.inc30_crit_edge

if.end29.1.for.inc30_crit_edge:                   ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc30

land.lhs.true.2:                                  ; preds = %if.end29.1
  %24 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx16.2, align 8
  %cmp20.2 = icmp eq ptr %25, %smcibdev
  br i1 %cmp20.2, label %land.lhs.true22.2, label %land.lhs.true.2.for.inc30_crit_edge

land.lhs.true.2.for.inc30_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc30

land.lhs.true22.2:                                ; preds = %land.lhs.true.2
  %ibport23.2 = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 2, i32 1
  %26 = ptrtoint ptr %ibport23.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ibport23.2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %ibport)
  %cmp26.2 = icmp eq i8 %27, %ibport
  br i1 %cmp26.2, label %if.then28.2, label %land.lhs.true22.2.for.inc30_crit_edge

land.lhs.true22.2.for.inc30_crit_edge:            ; preds = %land.lhs.true22.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc30

if.then28.2:                                      ; preds = %land.lhs.true22.2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i.2, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %state.i.2, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.2

do.body.i.i.2:                                    ; preds = %do.body.i.i.2.do.body.i.i.2_crit_edge, %if.then28.2
  %28 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i.2, i32 3, i32 1) #18, !srcloc !114
  %asmresult.i.i.2 = extractvalue { i32, i32 } %28, 0
  %tobool.not.i.i.2 = icmp eq i32 %asmresult.i.i.2, 0
  br i1 %tobool.not.i.i.2, label %__cmpxchg.exit.i.2, label %do.body.i.i.2.do.body.i.i.2_crit_edge

do.body.i.i.2.do.body.i.i.2_crit_edge:            ; preds = %do.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.2

__cmpxchg.exit.i.2:                               ; preds = %do.body.i.i.2
  %asmresult1.i.i.2 = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i.i.2)
  %cmp.i50.2 = icmp eq i32 %asmresult1.i.i.2, 3
  br i1 %cmp.i50.2, label %if.then.i.2, label %__cmpxchg.exit.i.2.for.inc30_crit_edge

__cmpxchg.exit.i.2.for.inc30_crit_edge:           ; preds = %__cmpxchg.exit.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc30

if.then.i.2:                                      ; preds = %__cmpxchg.exit.i.2
  call void @__sanitizer_cov_trace_pc() #20
  %29 = tail call ptr @llvm.returnaddress(i32 0) #18
  tail call fastcc void @trace_smcr_link_down(ptr noundef %arrayidx16.2, ptr noundef %29) #18
  %link_down_wrk.i.2 = getelementptr %struct.smc_link_group, ptr %lgr.055, i32 0, i32 21, i32 0, i32 1, i32 2, i32 51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.2 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %link_down_wrk.i.2) #18
  br label %for.inc30

for.inc30:                                        ; preds = %if.then.i.2, %__cmpxchg.exit.i.2.for.inc30_crit_edge, %land.lhs.true22.2.for.inc30_crit_edge, %land.lhs.true.2.for.inc30_crit_edge, %if.end29.1.for.inc30_crit_edge, %if.end.for.inc30_crit_edge, %for.body.for.inc30_crit_edge
  %cmp.not = icmp eq ptr %n.056, @smc_lgr_list
  br i1 %cmp.not, label %for.inc30.for.end36_crit_edge, label %for.inc30.for.body_crit_edge

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc30.for.end36_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end36

for.end36:                                        ; preds = %for.inc30.for.end36_crit_edge, %entry.for.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_vlan_by_tcpsk(ptr nocapture noundef readonly %clcsock, ptr noundef %ini) local_unnamed_addr #0 align 64 {
entry:
  %priv = alloca %struct.netdev_nested_priv, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %clcsock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %2 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !123
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #18
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @sk_dst_get.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 2077, ptr noundef nonnull @.str.19) #18
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %7, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end13.i_crit_edge, label %land.lhs.true10.i

do.end7.i.if.end13.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13.i

land.lhs.true10.i:                                ; preds = %do.end7.i
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #18
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #18, !srcloc !125
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %land.lhs.true10.i.if.end13.i_crit_edge, label %do.end11.i.i.i.i.i

land.lhs.true10.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13.i

do.end11.i.i.i.i.i:                               ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !126
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end11.i.i.i.i.i, %land.lhs.true10.i.if.end13.i_crit_edge, %do.end7.i.if.end13.i_crit_edge
  %dst.0.i = phi ptr [ null, %do.end7.i.if.end13.i_crit_edge ], [ null, %land.lhs.true10.i.if.end13.i_crit_edge ], [ %7, %do.end11.i.i.i.i.i ]
  %call.i17.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i17.i, label %if.end13.i.sk_dst_get.exit_crit_edge, label %land.lhs.true.i20.i

if.end13.i.sk_dst_get.exit_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sk_dst_get.exit

land.lhs.true.i20.i:                              ; preds = %if.end13.i
  %call1.i18.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.sk_dst_get.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.sk_dst_get.exit_crit_edge:    ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sk_dst_get.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge:   ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sk_dst_get.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #18
  br label %sk_dst_get.exit

sk_dst_get.exit:                                  ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge, %land.lhs.true.i20.i.sk_dst_get.exit_crit_edge, %if.end13.i.sk_dst_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !127
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i.i.i.i.i24.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv) #18
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %priv, align 8, !annotation !105
  %vlan_id = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 5
  %14 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %vlan_id, align 2
  %tobool.not = icmp eq ptr %dst.0.i, null
  br i1 %tobool.not, label %sk_dst_get.exit.out_crit_edge, label %if.end

sk_dst_get.exit.out_crit_edge:                    ; preds = %sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %sk_dst_get.exit
  %15 = ptrtoint ptr %dst.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst.0.i, align 4
  %tobool1.not = icmp eq ptr %16, null
  br i1 %tobool1.not, label %if.end.out_rel_crit_edge, label %if.end3

if.end.out_rel_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_rel

if.end3:                                          ; preds = %if.end
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %18, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  %call7 = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef nonnull %16) #18
  %19 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call7, ptr %vlan_id, align 2
  br label %out_rel

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %vlan_id, ptr %data, align 4
  tail call void @rtnl_lock() #18
  %call11 = call i32 @netdev_walk_all_lower_dev(ptr noundef nonnull %16, ptr noundef nonnull @smc_vlan_by_tcpsk_walk, ptr noundef nonnull %priv) #18
  call void @rtnl_unlock() #18
  br label %out_rel

out_rel:                                          ; preds = %if.end9, %if.then6, %if.end.out_rel_crit_edge
  %rc.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.end9 ], [ -19, %if.end.out_rel_crit_edge ]
  call void @dst_release(ptr noundef nonnull %dst.0.i) #18
  br label %out

out:                                              ; preds = %out_rel, %sk_dst_get.exit.out_crit_edge
  %rc.1 = phi i32 [ %rc.0, %out_rel ], [ -107, %sk_dst_get.exit.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv) #18
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_lower_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_vlan_by_tcpsk_walk(ptr noundef %lower_dev, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %lower_dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call1 = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %lower_dev) #18
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call1, ptr %3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_conn_create(ptr noundef %smc, ptr noundef %ini) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = ptrtoint ptr %ini to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ini, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cond.end13_crit_edge, label %cond.true6

entry.cond.end13_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end13

cond.true6:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %ism_selected = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 22
  %4 = ptrtoint ptr %ism_selected to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ism_selected, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %lgr_list2 = getelementptr inbounds %struct.smcd_dev, ptr %7, i32 0, i32 11
  %lgr_lock11 = getelementptr inbounds %struct.smcd_dev, ptr %7, i32 0, i32 12
  br label %cond.end13

cond.end13:                                       ; preds = %cond.true6, %entry.cond.end13_crit_edge
  %cond244 = phi ptr [ %lgr_list2, %cond.true6 ], [ @smc_lgr_list, %entry.cond.end13_crit_edge ]
  %cond14 = phi ptr [ %lgr_lock11, %cond.true6 ], [ getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1), %entry.cond.end13_crit_edge ]
  %first_contact_local = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 4
  %8 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %first_contact_local, align 4
  %listen_smc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 7
  %9 = ptrtoint ptr %listen_smc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %listen_smc, align 8
  %tobool15.not = icmp ne ptr %10, null
  %cond16 = zext i1 %tobool15.not to i32
  br i1 %tobool15.not, label %cond.end13.if.end_crit_edge, label %land.lhs.true

cond.end13.if.end_crit_edge:                      ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end13
  %first_contact_peer = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 3
  %11 = ptrtoint ptr %first_contact_peer to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %first_contact_peer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not = icmp eq i8 %12, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.create_crit_edge

land.lhs.true.create_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %create

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %cond.end13.if.end_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %cond14) #18
  %13 = ptrtoint ptr %cond244 to i32
  call void @__asan_load4_noabort(i32 %13)
  %lgr.0255 = load ptr, ptr %cond244, align 4
  %cmp20.not256 = icmp eq ptr %lgr.0255, %cond244
  br i1 %cmp20.not256, label %if.end.if.end86_crit_edge, label %for.body.lr.ph

if.end.if.end86_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end86

for.body.lr.ph:                                   ; preds = %if.end
  %ism_selected27 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 22
  %smcr_version = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 8
  %peer_systemid = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 12
  %peer_gid = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 10
  %peer_mac = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 11
  %ib_clcqpn = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 16
  %smcd_version = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 23
  %vlan_id47 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end77.for.body_crit_edge, %for.body.lr.ph
  %lgr.0257 = phi ptr [ %lgr.0255, %for.body.lr.ph ], [ %lgr.0, %if.end77.for.body_crit_edge ]
  %conns_lock = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %conns_lock) #18
  %14 = ptrtoint ptr %ini to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ini, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool24.not = icmp eq i8 %15, 0
  br i1 %tobool24.not, label %cond.false35, label %cond.true25

cond.true25:                                      ; preds = %for.body
  %16 = ptrtoint ptr %ism_selected27 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ism_selected27, align 1
  %idxprom28 = zext i8 %17 to i32
  %arrayidx32 = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 18, i32 %idxprom28
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx32, align 8
  %20 = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %19)
  %cmp.i = icmp eq i64 %22, %19
  br i1 %cmp.i, label %smcd_lgr_match.exit, label %cond.true25.if.end77_crit_edge

cond.true25.if.end77_crit_edge:                   ; preds = %cond.true25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

smcd_lgr_match.exit:                              ; preds = %cond.true25
  %arrayidx29 = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 %idxprom28
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx29, align 4
  %smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1
  %25 = ptrtoint ptr %smcd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smcd.i, align 8
  %cmp2.i = icmp eq ptr %26, %24
  br i1 %cmp2.i, label %smcd_lgr_match.exit.land.lhs.true40_crit_edge, label %smcd_lgr_match.exit.if.end77_crit_edge

smcd_lgr_match.exit.if.end77_crit_edge:           ; preds = %smcd_lgr_match.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

smcd_lgr_match.exit.land.lhs.true40_crit_edge:    ; preds = %smcd_lgr_match.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true40

cond.false35:                                     ; preds = %for.body
  %27 = ptrtoint ptr %smcr_version to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %smcr_version, align 4
  %29 = ptrtoint ptr %ib_clcqpn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ib_clcqpn, align 4
  %31 = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21
  %peer_systemid1.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %peer_systemid1.i, ptr noundef dereferenceable(8) %peer_systemid, i32 8) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %cond.false35.if.end77_crit_edge

cond.false35.if.end77_crit_edge:                  ; preds = %cond.false35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

lor.lhs.false.i:                                  ; preds = %cond.false35
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %cond16)
  %cmp.not.i = icmp eq i32 %33, %cond16
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %lor.lhs.false.i.if.end77_crit_edge

lor.lhs.false.i.if.end77_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp20.i = icmp eq i8 %28, 2
  %state.i.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %34 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 3
  br i1 %cmp.i.i, label %if.end7.i, label %for.cond.preheader.i.for.inc.i_crit_edge

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.cond.preheader.i
  %arrayidx.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 0
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 8
  %ibdev.i = getelementptr inbounds %struct.smc_ib_device, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ibdev.i, align 8
  %call8.i = tail call zeroext i1 @rdma_dev_access_netns(ptr noundef %39, ptr noundef %1) #18
  br i1 %call8.i, label %if.end10.i, label %if.end7.i.if.end77_crit_edge

if.end7.i.if.end77_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

if.end10.i:                                       ; preds = %if.end7.i
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp12.i = icmp eq i32 %41, 1
  br i1 %cmp12.i, label %if.end10.i.land.lhs.true.i_crit_edge, label %lor.lhs.false13.i

if.end10.i.land.lhs.true.i_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

lor.lhs.false13.i:                                ; preds = %if.end10.i
  %peer_qpn.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 0, i32 36
  %42 = ptrtoint ptr %peer_qpn.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %peer_qpn.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %30)
  %cmp14.i = icmp eq i32 %43, %30
  br i1 %cmp14.i, label %lor.lhs.false13.i.land.lhs.true.i_crit_edge, label %lor.lhs.false13.i.for.inc.i_crit_edge

lor.lhs.false13.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

lor.lhs.false13.i.land.lhs.true.i_crit_edge:      ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false13.i.land.lhs.true.i_crit_edge, %if.end10.i.land.lhs.true.i_crit_edge
  %peer_gid15.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 0, i32 42
  %bcmp38.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid15.i, ptr noundef dereferenceable(16) %peer_gid, i32 16) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp38.i)
  %tobool18.not.i = icmp eq i32 %bcmp38.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true19.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  br i1 %cmp20.i, label %land.lhs.true19.i.land.lhs.true40_crit_edge, label %lor.lhs.false22.i

land.lhs.true19.i.land.lhs.true40_crit_edge:      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true40

lor.lhs.false22.i:                                ; preds = %land.lhs.true19.i
  %peer_mac.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 0, i32 41
  %bcmp39.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %peer_mac.i, ptr noundef dereferenceable(6) %peer_mac, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp39.i)
  %tobool25.not.i = icmp eq i32 %bcmp39.i, 0
  br i1 %tobool25.not.i, label %lor.lhs.false22.i.land.lhs.true40_crit_edge, label %lor.lhs.false22.i.for.inc.i_crit_edge

lor.lhs.false22.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

lor.lhs.false22.i.land.lhs.true40_crit_edge:      ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true40

for.inc.i:                                        ; preds = %lor.lhs.false22.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false13.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %state.i.1.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %44 = ptrtoint ptr %state.i.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i.1.i = icmp eq i32 %45, 3
  br i1 %cmp.i.1.i, label %if.end7.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

if.end7.1.i:                                      ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.1.i, align 8
  %ibdev.1.i = getelementptr inbounds %struct.smc_ib_device, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ibdev.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ibdev.1.i, align 8
  %call8.1.i = tail call zeroext i1 @rdma_dev_access_netns(ptr noundef %49, ptr noundef %1) #18
  br i1 %call8.1.i, label %if.end10.1.i, label %if.end7.1.i.if.end77_crit_edge

if.end7.1.i.if.end77_crit_edge:                   ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

if.end10.1.i:                                     ; preds = %if.end7.1.i
  %50 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp12.1.i = icmp eq i32 %51, 1
  br i1 %cmp12.1.i, label %if.end10.1.i.land.lhs.true.1.i_crit_edge, label %lor.lhs.false13.1.i

if.end10.1.i.land.lhs.true.1.i_crit_edge:         ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.1.i

lor.lhs.false13.1.i:                              ; preds = %if.end10.1.i
  %peer_qpn.1.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 1, i32 36
  %52 = ptrtoint ptr %peer_qpn.1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %peer_qpn.1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %30)
  %cmp14.1.i = icmp eq i32 %53, %30
  br i1 %cmp14.1.i, label %lor.lhs.false13.1.i.land.lhs.true.1.i_crit_edge, label %lor.lhs.false13.1.i.for.inc.1.i_crit_edge

lor.lhs.false13.1.i.for.inc.1.i_crit_edge:        ; preds = %lor.lhs.false13.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

lor.lhs.false13.1.i.land.lhs.true.1.i_crit_edge:  ; preds = %lor.lhs.false13.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.1.i

land.lhs.true.1.i:                                ; preds = %lor.lhs.false13.1.i.land.lhs.true.1.i_crit_edge, %if.end10.1.i.land.lhs.true.1.i_crit_edge
  %peer_gid15.1.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 1, i32 42
  %bcmp38.1.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid15.1.i, ptr noundef dereferenceable(16) %peer_gid, i32 16) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp38.1.i)
  %tobool18.not.1.i = icmp eq i32 %bcmp38.1.i, 0
  br i1 %tobool18.not.1.i, label %land.lhs.true19.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

land.lhs.true19.1.i:                              ; preds = %land.lhs.true.1.i
  br i1 %cmp20.i, label %land.lhs.true19.1.i.land.lhs.true40_crit_edge, label %lor.lhs.false22.1.i

land.lhs.true19.1.i.land.lhs.true40_crit_edge:    ; preds = %land.lhs.true19.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true40

lor.lhs.false22.1.i:                              ; preds = %land.lhs.true19.1.i
  %peer_mac.1.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 1, i32 41
  %bcmp39.1.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %peer_mac.1.i, ptr noundef dereferenceable(6) %peer_mac, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp39.1.i)
  %tobool25.not.1.i = icmp eq i32 %bcmp39.1.i, 0
  br i1 %tobool25.not.1.i, label %lor.lhs.false22.1.i.land.lhs.true40_crit_edge, label %lor.lhs.false22.1.i.for.inc.1.i_crit_edge

lor.lhs.false22.1.i.for.inc.1.i_crit_edge:        ; preds = %lor.lhs.false22.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

lor.lhs.false22.1.i.land.lhs.true40_crit_edge:    ; preds = %lor.lhs.false22.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true40

for.inc.1.i:                                      ; preds = %lor.lhs.false22.1.i.for.inc.1.i_crit_edge, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %lor.lhs.false13.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %state.i.2.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %54 = ptrtoint ptr %state.i.2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp.i.2.i = icmp eq i32 %55, 3
  br i1 %cmp.i.2.i, label %if.end7.2.i, label %for.inc.1.i.if.end77_crit_edge

for.inc.1.i.if.end77_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

if.end7.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.2.i, align 8
  %ibdev.2.i = getelementptr inbounds %struct.smc_ib_device, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ibdev.2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ibdev.2.i, align 8
  %call8.2.i = tail call zeroext i1 @rdma_dev_access_netns(ptr noundef %59, ptr noundef %1) #18
  br i1 %call8.2.i, label %if.end10.2.i, label %if.end7.2.i.if.end77_crit_edge

if.end7.2.i.if.end77_crit_edge:                   ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

if.end10.2.i:                                     ; preds = %if.end7.2.i
  %60 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp12.2.i = icmp eq i32 %61, 1
  br i1 %cmp12.2.i, label %if.end10.2.i.land.lhs.true.2.i_crit_edge, label %lor.lhs.false13.2.i

if.end10.2.i.land.lhs.true.2.i_crit_edge:         ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.2.i

lor.lhs.false13.2.i:                              ; preds = %if.end10.2.i
  %peer_qpn.2.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 2, i32 36
  %62 = ptrtoint ptr %peer_qpn.2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %peer_qpn.2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %30)
  %cmp14.2.i = icmp eq i32 %63, %30
  br i1 %cmp14.2.i, label %lor.lhs.false13.2.i.land.lhs.true.2.i_crit_edge, label %lor.lhs.false13.2.i.if.end77_crit_edge

lor.lhs.false13.2.i.if.end77_crit_edge:           ; preds = %lor.lhs.false13.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

lor.lhs.false13.2.i.land.lhs.true.2.i_crit_edge:  ; preds = %lor.lhs.false13.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.2.i

land.lhs.true.2.i:                                ; preds = %lor.lhs.false13.2.i.land.lhs.true.2.i_crit_edge, %if.end10.2.i.land.lhs.true.2.i_crit_edge
  %peer_gid15.2.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 2, i32 42
  %bcmp38.2.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid15.2.i, ptr noundef dereferenceable(16) %peer_gid, i32 16) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp38.2.i)
  %tobool18.not.2.i = icmp eq i32 %bcmp38.2.i, 0
  br i1 %tobool18.not.2.i, label %land.lhs.true19.2.i, label %land.lhs.true.2.i.if.end77_crit_edge

land.lhs.true.2.i.if.end77_crit_edge:             ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

land.lhs.true19.2.i:                              ; preds = %land.lhs.true.2.i
  br i1 %cmp20.i, label %land.lhs.true19.2.i.land.lhs.true40_crit_edge, label %lor.lhs.false22.2.i

land.lhs.true19.2.i.land.lhs.true40_crit_edge:    ; preds = %land.lhs.true19.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true40

lor.lhs.false22.2.i:                              ; preds = %land.lhs.true19.2.i
  %peer_mac.2.i = getelementptr %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 1, i32 2, i32 41
  %bcmp39.2.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %peer_mac.2.i, ptr noundef dereferenceable(6) %peer_mac, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp39.2.i)
  %tobool25.not.2.i = icmp eq i32 %bcmp39.2.i, 0
  br i1 %tobool25.not.2.i, label %lor.lhs.false22.2.i.land.lhs.true40_crit_edge, label %lor.lhs.false22.2.i.if.end77_crit_edge

lor.lhs.false22.2.i.if.end77_crit_edge:           ; preds = %lor.lhs.false22.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

lor.lhs.false22.2.i.land.lhs.true40_crit_edge:    ; preds = %lor.lhs.false22.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true40

land.lhs.true40:                                  ; preds = %lor.lhs.false22.2.i.land.lhs.true40_crit_edge, %land.lhs.true19.2.i.land.lhs.true40_crit_edge, %lor.lhs.false22.1.i.land.lhs.true40_crit_edge, %land.lhs.true19.1.i.land.lhs.true40_crit_edge, %lor.lhs.false22.i.land.lhs.true40_crit_edge, %land.lhs.true19.i.land.lhs.true40_crit_edge, %smcd_lgr_match.exit.land.lhs.true40_crit_edge
  %sync_err = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 13
  %64 = ptrtoint ptr %sync_err to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load = load i8, ptr %sync_err, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool41.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool41.not, label %land.lhs.true42, label %land.lhs.true40.if.end77_crit_edge

land.lhs.true40.if.end77_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

land.lhs.true42:                                  ; preds = %land.lhs.true40
  %65 = ptrtoint ptr %smcd_version to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %smcd_version, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp44 = icmp eq i8 %66, 2
  br i1 %cmp44, label %land.lhs.true42.land.lhs.true51_crit_edge, label %lor.lhs.false

land.lhs.true42.land.lhs.true51_crit_edge:        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true51

lor.lhs.false:                                    ; preds = %land.lhs.true42
  %vlan_id = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 4
  %67 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vlan_id, align 4
  %69 = ptrtoint ptr %vlan_id47 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vlan_id47, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %70)
  %cmp49 = icmp eq i16 %68, %70
  br i1 %cmp49, label %lor.lhs.false.land.lhs.true51_crit_edge, label %lor.lhs.false.if.end77_crit_edge

lor.lhs.false.if.end77_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

lor.lhs.false.land.lhs.true51_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true51

land.lhs.true51:                                  ; preds = %lor.lhs.false.land.lhs.true51_crit_edge, %land.lhs.true42.land.lhs.true51_crit_edge
  br i1 %tobool15.not, label %lor.lhs.false54, label %land.lhs.true51.if.then64_crit_edge

land.lhs.true51.if.then64_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then64

lor.lhs.false54:                                  ; preds = %land.lhs.true51
  %71 = ptrtoint ptr %ini to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ini, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool57.not = icmp eq i8 %72, 0
  br i1 %tobool57.not, label %lor.lhs.false58, label %lor.lhs.false54.if.then64_crit_edge

lor.lhs.false54.if.then64_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then64

lor.lhs.false58:                                  ; preds = %lor.lhs.false54
  %conns_num = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 3
  %73 = ptrtoint ptr %conns_num to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %conns_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %74)
  %cmp59 = icmp ult i32 %74, 255
  br i1 %cmp59, label %land.lhs.true61, label %lor.lhs.false58.if.end77_crit_edge

lor.lhs.false58.if.end77_crit_edge:               ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

land.lhs.true61:                                  ; preds = %lor.lhs.false58
  %rtokens_used_mask = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 21, i32 0, i32 6
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %rtokens_used_mask, i32 noundef 255) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 255
  br i1 %cmp4.i, label %land.lhs.true61.if.end77_crit_edge, label %land.lhs.true61.if.then64_crit_edge

land.lhs.true61.if.then64_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then64

land.lhs.true61.if.end77_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

if.then64:                                        ; preds = %land.lhs.true61.if.then64_crit_edge, %lor.lhs.false54.if.then64_crit_edge, %land.lhs.true51.if.then64_crit_edge
  %75 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %first_contact_local, align 4
  %lgr66 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %76 = ptrtoint ptr %lgr66 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %lgr.0257, ptr %lgr66, align 4
  %call67 = tail call fastcc i32 @smc_lgr_register_conn(ptr noundef %conn1, i1 noundef zeroext false)
  tail call void @_raw_write_unlock_bh(ptr noundef %conns_lock) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool69.not = icmp eq i32 %call67, 0
  br i1 %tobool69.not, label %land.lhs.true70, label %for.end

land.lhs.true70:                                  ; preds = %if.then64
  %free_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr.0257, i32 0, i32 10
  %77 = ptrtoint ptr %free_work to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %free_work, align 4
  %and1.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool72.not = icmp eq i32 %and1.i, 0
  br i1 %tobool72.not, label %land.lhs.true70.if.end86_crit_edge, label %if.then73

land.lhs.true70.if.end86_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end86

if.then73:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #20
  %call75 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %free_work) #18
  br label %if.end86

if.end77:                                         ; preds = %land.lhs.true61.if.end77_crit_edge, %lor.lhs.false58.if.end77_crit_edge, %lor.lhs.false.if.end77_crit_edge, %land.lhs.true40.if.end77_crit_edge, %lor.lhs.false22.2.i.if.end77_crit_edge, %land.lhs.true.2.i.if.end77_crit_edge, %lor.lhs.false13.2.i.if.end77_crit_edge, %if.end7.2.i.if.end77_crit_edge, %for.inc.1.i.if.end77_crit_edge, %if.end7.1.i.if.end77_crit_edge, %if.end7.i.if.end77_crit_edge, %lor.lhs.false.i.if.end77_crit_edge, %cond.false35.if.end77_crit_edge, %smcd_lgr_match.exit.if.end77_crit_edge, %cond.true25.if.end77_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %conns_lock) #18
  %79 = ptrtoint ptr %lgr.0257 to i32
  call void @__asan_load4_noabort(i32 %79)
  %lgr.0 = load ptr, ptr %lgr.0257, align 4
  %cmp20.not = icmp eq ptr %lgr.0, %cond244
  br i1 %cmp20.not, label %if.end77.if.end86_crit_edge, label %if.end77.for.body_crit_edge

if.end77.for.body_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end77.if.end86_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end86

for.end:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %cond14) #18
  br label %cleanup

if.end86:                                         ; preds = %if.end77.if.end86_crit_edge, %if.then73, %land.lhs.true70.if.end86_crit_edge, %if.end.if.end86_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cond14) #18
  br i1 %tobool15.not, label %if.end86.create_crit_edge, label %land.lhs.true89

if.end86.create_crit_edge:                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #20
  br label %create

land.lhs.true89:                                  ; preds = %if.end86
  %first_contact_peer90 = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 3
  %80 = ptrtoint ptr %first_contact_peer90 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %first_contact_peer90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool91.not = icmp eq i8 %81, 0
  br i1 %tobool91.not, label %land.lhs.true92, label %land.lhs.true89.create_crit_edge

land.lhs.true89.create_crit_edge:                 ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #20
  br label %create

land.lhs.true92:                                  ; preds = %land.lhs.true89
  %82 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool95.not = icmp eq i8 %83, 0
  br i1 %tobool95.not, label %land.lhs.true92.if.end112_crit_edge, label %land.lhs.true92.cleanup_crit_edge

land.lhs.true92.cleanup_crit_edge:                ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true92.if.end112_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end112

create:                                           ; preds = %land.lhs.true89.create_crit_edge, %if.end86.create_crit_edge, %land.lhs.true.create_crit_edge
  %84 = ptrtoint ptr %first_contact_local to i32
  call void @__asan_load1_noabort(i32 %84)
  %.pr = load i8, ptr %first_contact_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool99.not = icmp eq i8 %.pr, 0
  br i1 %tobool99.not, label %create.if.end112_crit_edge, label %if.then100

create.if.end112_crit_edge:                       ; preds = %create
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end112

if.then100:                                       ; preds = %create
  %85 = ptrtoint ptr %ini to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ini, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i220 = icmp eq i8 %86, 0
  br i1 %tobool.not.i220, label %if.then100.if.end6.i_crit_edge, label %land.lhs.true.i221

if.then100.if.end6.i_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

land.lhs.true.i221:                               ; preds = %if.then100
  %vlan_id.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 5
  %87 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %vlan_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool2.not.i = icmp eq i16 %88, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i221.if.end6.i_crit_edge, label %if.then.i

land.lhs.true.i221.if.end6.i_crit_edge:           ; preds = %land.lhs.true.i221
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

if.then.i:                                        ; preds = %land.lhs.true.i221
  %ism_selected.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 22
  %89 = ptrtoint ptr %ism_selected.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ism_selected.i, align 1
  %idxprom.i = zext i8 %90 to i32
  %arrayidx.i222 = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 %idxprom.i
  %91 = ptrtoint ptr %arrayidx.i222 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i222, align 4
  %call.i223 = tail call i32 @smc_ism_get_vlan(ptr noundef %92, i16 noundef zeroext %88) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool4.not.i = icmp eq i32 %call.i223, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %land.lhs.true.i221.if.end6.i_crit_edge, %if.then100.if.end6.i_crit_edge
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16120, i32 noundef 3520, i32 noundef 2) #24
  %tobool8.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool8.not.i, label %if.end6.i.ism_put_vlan.i_crit_edge, label %if.end10.i224

if.end6.i.ism_put_vlan.i_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ism_put_vlan.i

if.end10.i224:                                    ; preds = %if.end6.i
  %id.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 9
  %call11.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %id.i) #18
  %tx_wq.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 12
  %93 = ptrtoint ptr %tx_wq.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call11.i, ptr %tx_wq.i, align 4
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %if.end10.i224.free_lgr.i_crit_edge, label %if.end15.i

if.end10.i224.free_lgr.i_crit_edge:               ; preds = %if.end10.i224
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_lgr.i

if.end15.i:                                       ; preds = %if.end10.i224
  %94 = ptrtoint ptr %ini to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ini, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool17.i = icmp ne i8 %95, 0
  %is_smcd18.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 15
  %frombool.i = zext i1 %tobool17.i to i8
  %96 = ptrtoint ptr %is_smcd18.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %frombool.i, ptr %is_smcd18.i, align 8
  %sync_err.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 13
  %97 = ptrtoint ptr %sync_err.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load.i = load i8, ptr %sync_err.i, align 16
  %bf.clear23.i = and i8 %bf.load.i, 31
  store i8 %bf.clear23.i, ptr %sync_err.i, align 16
  %vlan_id25.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 5
  %98 = ptrtoint ptr %vlan_id25.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %vlan_id25.i, align 2
  %vlan_id26.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 4
  %100 = ptrtoint ptr %vlan_id26.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %vlan_id26.i, align 4
  %refcnt.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #18
  %101 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 1, ptr %refcnt.i, align 4
  %sndbufs_lock.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %sndbufs_lock.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @smc_lgr_create.__key) #18
  %rmbs_lock.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %rmbs_lock.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @smc_lgr_create.__key.27) #18
  %conns_lock.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 2
  tail call void @__rwlock_init(ptr noundef %conns_lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @smc_lgr_create.__key.29) #18
  %arrayidx34.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 0
  %102 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %arrayidx34.i, ptr %arrayidx34.i, align 64
  %prev.i.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %arrayidx34.i, ptr %prev.i.i, align 4
  %arrayidx35.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 0
  %104 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %arrayidx35.i, ptr %arrayidx35.i, align 4
  %prev.i267.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i267.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %arrayidx35.i, ptr %prev.i267.i, align 32
  %arrayidx34.1.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 1
  %106 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %arrayidx34.1.i, ptr %arrayidx34.1.i, align 8
  %prev.i.1.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 1, i32 1
  %107 = ptrtoint ptr %prev.i.1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx34.1.i, ptr %prev.i.1.i, align 4
  %arrayidx35.1.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 1
  %108 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %arrayidx35.1.i, ptr %arrayidx35.1.i, align 4
  %prev.i267.1.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 1, i32 1
  %109 = ptrtoint ptr %prev.i267.1.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %arrayidx35.1.i, ptr %prev.i267.1.i, align 8
  %arrayidx34.2.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 2
  %110 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %arrayidx34.2.i, ptr %arrayidx34.2.i, align 16
  %prev.i.2.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 2, i32 1
  %111 = ptrtoint ptr %prev.i.2.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %arrayidx34.2.i, ptr %prev.i.2.i, align 4
  %arrayidx35.2.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 2
  %112 = ptrtoint ptr %arrayidx35.2.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %arrayidx35.2.i, ptr %arrayidx35.2.i, align 4
  %prev.i267.2.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 2, i32 1
  %113 = ptrtoint ptr %prev.i267.2.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %arrayidx35.2.i, ptr %prev.i267.2.i, align 16
  %arrayidx34.3.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 3
  %114 = ptrtoint ptr %arrayidx34.3.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %arrayidx34.3.i, ptr %arrayidx34.3.i, align 8
  %prev.i.3.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 3, i32 1
  %115 = ptrtoint ptr %prev.i.3.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %arrayidx34.3.i, ptr %prev.i.3.i, align 4
  %arrayidx35.3.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 3
  %116 = ptrtoint ptr %arrayidx35.3.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %arrayidx35.3.i, ptr %arrayidx35.3.i, align 4
  %prev.i267.3.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 3, i32 1
  %117 = ptrtoint ptr %prev.i267.3.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %arrayidx35.3.i, ptr %prev.i267.3.i, align 8
  %arrayidx34.4.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 4
  %118 = ptrtoint ptr %arrayidx34.4.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %arrayidx34.4.i, ptr %arrayidx34.4.i, align 32
  %prev.i.4.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 4, i32 1
  %119 = ptrtoint ptr %prev.i.4.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %arrayidx34.4.i, ptr %prev.i.4.i, align 4
  %arrayidx35.4.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 4
  %120 = ptrtoint ptr %arrayidx35.4.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %arrayidx35.4.i, ptr %arrayidx35.4.i, align 4
  %prev.i267.4.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 4, i32 1
  %121 = ptrtoint ptr %prev.i267.4.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %arrayidx35.4.i, ptr %prev.i267.4.i, align 64
  %arrayidx34.5.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 5
  %122 = ptrtoint ptr %arrayidx34.5.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %arrayidx34.5.i, ptr %arrayidx34.5.i, align 8
  %prev.i.5.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 5, i32 1
  %123 = ptrtoint ptr %prev.i.5.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %arrayidx34.5.i, ptr %prev.i.5.i, align 4
  %arrayidx35.5.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 5
  %124 = ptrtoint ptr %arrayidx35.5.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %arrayidx35.5.i, ptr %arrayidx35.5.i, align 4
  %prev.i267.5.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 5, i32 1
  %125 = ptrtoint ptr %prev.i267.5.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx35.5.i, ptr %prev.i267.5.i, align 8
  %arrayidx34.6.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 6
  %126 = ptrtoint ptr %arrayidx34.6.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %arrayidx34.6.i, ptr %arrayidx34.6.i, align 16
  %prev.i.6.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 6, i32 1
  %127 = ptrtoint ptr %prev.i.6.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %arrayidx34.6.i, ptr %prev.i.6.i, align 4
  %arrayidx35.6.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 6
  %128 = ptrtoint ptr %arrayidx35.6.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %arrayidx35.6.i, ptr %arrayidx35.6.i, align 4
  %prev.i267.6.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 6, i32 1
  %129 = ptrtoint ptr %prev.i267.6.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %arrayidx35.6.i, ptr %prev.i267.6.i, align 16
  %arrayidx34.7.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 7
  %130 = ptrtoint ptr %arrayidx34.7.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %arrayidx34.7.i, ptr %arrayidx34.7.i, align 8
  %prev.i.7.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 7, i32 1
  %131 = ptrtoint ptr %prev.i.7.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %arrayidx34.7.i, ptr %prev.i.7.i, align 4
  %arrayidx35.7.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 7
  %132 = ptrtoint ptr %arrayidx35.7.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %arrayidx35.7.i, ptr %arrayidx35.7.i, align 4
  %prev.i267.7.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 7, i32 1
  %133 = ptrtoint ptr %prev.i267.7.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx35.7.i, ptr %prev.i267.7.i, align 8
  %arrayidx34.8.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 8
  %134 = ptrtoint ptr %arrayidx34.8.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %arrayidx34.8.i, ptr %arrayidx34.8.i, align 128
  %prev.i.8.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 8, i32 1
  %135 = ptrtoint ptr %prev.i.8.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %arrayidx34.8.i, ptr %prev.i.8.i, align 4
  %arrayidx35.8.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 8
  %136 = ptrtoint ptr %arrayidx35.8.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %arrayidx35.8.i, ptr %arrayidx35.8.i, align 4
  %prev.i267.8.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 8, i32 1
  %137 = ptrtoint ptr %prev.i267.8.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %arrayidx35.8.i, ptr %prev.i267.8.i, align 32
  %arrayidx34.9.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 9
  %138 = ptrtoint ptr %arrayidx34.9.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %arrayidx34.9.i, ptr %arrayidx34.9.i, align 8
  %prev.i.9.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 9, i32 1
  %139 = ptrtoint ptr %prev.i.9.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %arrayidx34.9.i, ptr %prev.i.9.i, align 4
  %arrayidx35.9.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 9
  %140 = ptrtoint ptr %arrayidx35.9.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %arrayidx35.9.i, ptr %arrayidx35.9.i, align 4
  %prev.i267.9.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 9, i32 1
  %141 = ptrtoint ptr %prev.i267.9.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %arrayidx35.9.i, ptr %prev.i267.9.i, align 8
  %arrayidx34.10.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 10
  %142 = ptrtoint ptr %arrayidx34.10.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %arrayidx34.10.i, ptr %arrayidx34.10.i, align 16
  %prev.i.10.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 10, i32 1
  %143 = ptrtoint ptr %prev.i.10.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %arrayidx34.10.i, ptr %prev.i.10.i, align 4
  %arrayidx35.10.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 10
  %144 = ptrtoint ptr %arrayidx35.10.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %arrayidx35.10.i, ptr %arrayidx35.10.i, align 4
  %prev.i267.10.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 10, i32 1
  %145 = ptrtoint ptr %prev.i267.10.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %arrayidx35.10.i, ptr %prev.i267.10.i, align 16
  %arrayidx34.11.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 11
  %146 = ptrtoint ptr %arrayidx34.11.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %arrayidx34.11.i, ptr %arrayidx34.11.i, align 8
  %prev.i.11.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 11, i32 1
  %147 = ptrtoint ptr %prev.i.11.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %arrayidx34.11.i, ptr %prev.i.11.i, align 4
  %arrayidx35.11.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 11
  %148 = ptrtoint ptr %arrayidx35.11.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %arrayidx35.11.i, ptr %arrayidx35.11.i, align 4
  %prev.i267.11.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 11, i32 1
  %149 = ptrtoint ptr %prev.i267.11.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %arrayidx35.11.i, ptr %prev.i267.11.i, align 8
  %arrayidx34.12.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 12
  %150 = ptrtoint ptr %arrayidx34.12.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %arrayidx34.12.i, ptr %arrayidx34.12.i, align 32
  %prev.i.12.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 12, i32 1
  %151 = ptrtoint ptr %prev.i.12.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %arrayidx34.12.i, ptr %prev.i.12.i, align 4
  %arrayidx35.12.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 12
  %152 = ptrtoint ptr %arrayidx35.12.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %arrayidx35.12.i, ptr %arrayidx35.12.i, align 4
  %prev.i267.12.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 12, i32 1
  %153 = ptrtoint ptr %prev.i267.12.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %arrayidx35.12.i, ptr %prev.i267.12.i, align 128
  %arrayidx34.13.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 13
  %154 = ptrtoint ptr %arrayidx34.13.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %arrayidx34.13.i, ptr %arrayidx34.13.i, align 8
  %prev.i.13.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 13, i32 1
  %155 = ptrtoint ptr %prev.i.13.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %arrayidx34.13.i, ptr %prev.i.13.i, align 4
  %arrayidx35.13.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 13
  %156 = ptrtoint ptr %arrayidx35.13.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %arrayidx35.13.i, ptr %arrayidx35.13.i, align 4
  %prev.i267.13.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 13, i32 1
  %157 = ptrtoint ptr %prev.i267.13.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %arrayidx35.13.i, ptr %prev.i267.13.i, align 8
  %arrayidx34.14.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 14
  %158 = ptrtoint ptr %arrayidx34.14.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %arrayidx34.14.i, ptr %arrayidx34.14.i, align 16
  %prev.i.14.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 14, i32 1
  %159 = ptrtoint ptr %prev.i.14.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %arrayidx34.14.i, ptr %prev.i.14.i, align 4
  %arrayidx35.14.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 14
  %160 = ptrtoint ptr %arrayidx35.14.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %arrayidx35.14.i, ptr %arrayidx35.14.i, align 4
  %prev.i267.14.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 14, i32 1
  %161 = ptrtoint ptr %prev.i267.14.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %arrayidx35.14.i, ptr %prev.i267.14.i, align 16
  %arrayidx34.15.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 15
  %162 = ptrtoint ptr %arrayidx34.15.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %arrayidx34.15.i, ptr %arrayidx34.15.i, align 8
  %prev.i.15.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 5, i32 15, i32 1
  %163 = ptrtoint ptr %prev.i.15.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %arrayidx34.15.i, ptr %prev.i.15.i, align 4
  %arrayidx35.15.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 15
  %164 = ptrtoint ptr %arrayidx35.15.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %arrayidx35.15.i, ptr %arrayidx35.15.i, align 4
  %prev.i267.15.i = getelementptr %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 7, i32 15, i32 1
  %165 = ptrtoint ptr %prev.i267.15.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %arrayidx35.15.i, ptr %prev.i267.15.i, align 8
  %166 = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21
  %next_link_id.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21, i32 0, i32 7
  %167 = ptrtoint ptr %next_link_id.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %next_link_id.i, align 8
  %168 = load i32, ptr getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 2), align 4
  %add.i = add i32 %168, 256
  store i32 %add.i, ptr getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 2), align 4
  %169 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %add.i, ptr %id.i, align 8
  %free_work.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %free_work.i, i32 noundef 0) #18
  %170 = ptrtoint ptr %free_work.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -64, ptr %free_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @smc_lgr_create.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry45.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 10, i32 0, i32 1
  %171 = ptrtoint ptr %entry45.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %entry45.i, ptr %entry45.i, align 512
  %prev.i268.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 10, i32 0, i32 1, i32 1
  %172 = ptrtoint ptr %prev.i268.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %entry45.i, ptr %prev.i268.i, align 4
  %func.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 10, i32 0, i32 2
  %173 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @smc_lgr_free_work, ptr %func.i, align 8
  %timer.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.34, ptr noundef nonnull @smc_lgr_create.__key.33) #18
  %terminate_work.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %terminate_work.i, i32 noundef 0) #18
  %174 = ptrtoint ptr %terminate_work.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 -64, ptr %terminate_work.i, align 32
  %lockdep_map62.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map62.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @smc_lgr_create.__key.35, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry64.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 11, i32 1
  %175 = ptrtoint ptr %entry64.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %entry64.i, ptr %entry64.i, align 4
  %prev.i269.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 11, i32 1, i32 1
  %176 = ptrtoint ptr %prev.i269.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %entry64.i, ptr %prev.i269.i, align 8
  %func66.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 11, i32 2
  %177 = ptrtoint ptr %func66.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @smc_lgr_terminate_work, ptr %func66.i, align 4
  %conns_all.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 1
  %178 = ptrtoint ptr %conns_all.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %conns_all.i, align 8
  %179 = ptrtoint ptr %ini to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %ini, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool71.not.i = icmp eq i8 %180, 0
  br i1 %tobool71.not.i, label %if.else.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #20
  %ism_selected74.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 22
  %181 = ptrtoint ptr %ism_selected74.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %ism_selected74.i, align 1
  %idxprom75.i = zext i8 %182 to i32
  %arrayidx76.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 %idxprom75.i
  %183 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx76.i, align 4
  %dev.i = getelementptr inbounds %struct.smcd_dev, ptr %184, i32 0, i32 1
  %call77.i = tail call ptr @get_device(ptr noundef %dev.i) #18
  %185 = ptrtoint ptr %ism_selected74.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %ism_selected74.i, align 1
  %idxprom79.i = zext i8 %186 to i32
  %arrayidx80.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 18, i32 %idxprom79.i
  %187 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %arrayidx80.i, align 8
  %189 = ptrtoint ptr %166 to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %188, ptr %166, align 32
  %arrayidx84.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 %idxprom79.i
  %190 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx84.i, align 4
  %smcd.i225 = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21, i32 0, i32 1
  %192 = ptrtoint ptr %smcd.i225 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %191, ptr %smcd.i225, align 8
  %lgr_list89.i = getelementptr inbounds %struct.smcd_dev, ptr %191, i32 0, i32 11
  %lgr_lock91.i = getelementptr inbounds %struct.smcd_dev, ptr %191, i32 0, i32 12
  %smcd_version.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 23
  %193 = ptrtoint ptr %smcd_version.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %smcd_version.i, align 8
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 16
  %195 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %smc_version.i, align 1
  %peer_shutdown.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21, i32 0, i32 1, i32 0, i32 1
  %196 = ptrtoint ptr %peer_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load92.i = load i8, ptr %peer_shutdown.i, align 4
  %bf.clear93.i = and i8 %bf.load92.i, 127
  store i8 %bf.clear93.i, ptr %peer_shutdown.i, align 4
  %lgr_cnt.i = getelementptr inbounds %struct.smcd_dev, ptr %191, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lgr_cnt.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %lgr_cnt.i, i32 1, i32 3, i32 1) #18
  %197 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lgr_cnt.i, ptr %lgr_cnt.i, i32 1, ptr elementtype(i32) %lgr_cnt.i) #18, !srcloc !106
  br label %if.end137.i

if.else.i:                                        ; preds = %if.end15.i
  %198 = ptrtoint ptr %listen_smc to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %listen_smc, align 8
  %tobool99.not.i = icmp ne ptr %199, null
  %cond.i = zext i1 %tobool99.not.i to i32
  %200 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %cond.i, ptr %166, align 32
  %smcr_version.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 8
  %201 = ptrtoint ptr %smcr_version.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %smcr_version.i, align 4
  %smc_version100.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 16
  %203 = ptrtoint ptr %smc_version100.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %smc_version100.i, align 1
  %peer_systemid.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21, i32 0, i32 4
  %peer_systemid101.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 12
  %204 = ptrtoint ptr %peer_systemid101.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 8)
  %205 = load i64, ptr %peer_systemid101.i, align 4
  %206 = ptrtoint ptr %peer_systemid.i to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %205, ptr %peer_systemid.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %202)
  %cmp105.i = icmp eq i8 %202, 2
  br i1 %cmp105.i, label %if.then107.i, label %if.else118.i

if.then107.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %smcrv2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17
  %ib_dev_v2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 3
  %207 = ptrtoint ptr %ib_dev_v2.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ib_dev_v2.i, align 4
  %ib_port_v2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 4
  %209 = ptrtoint ptr %ib_port_v2.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %ib_port_v2.i, align 8
  %211 = ptrtoint ptr %smcrv2.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %smcrv2.i, align 8
  %saddr111.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21, i32 0, i32 26
  %213 = ptrtoint ptr %saddr111.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %saddr111.i, align 16
  %uses_gateway.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 6
  %214 = ptrtoint ptr %uses_gateway.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %uses_gateway.i, align 1
  %uses_gateway113.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21, i32 0, i32 25
  %216 = ptrtoint ptr %uses_gateway113.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %uses_gateway113.i, align 2
  %nexthop_mac.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21, i32 0, i32 24
  %nexthop_mac116.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 7
  %217 = call ptr @memcpy(ptr %nexthop_mac.i, ptr %nexthop_mac116.i, i32 6)
  br label %if.end120.i

if.else118.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %ib_dev.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 13
  %218 = ptrtoint ptr %ib_dev.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ib_dev.i, align 4
  %ib_port.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 15
  %220 = ptrtoint ptr %ib_port.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %ib_port.i, align 8
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else118.i, %if.then107.i
  %ibdev.0.i = phi ptr [ %208, %if.then107.i ], [ %219, %if.else118.i ]
  %ibport.0.in.i = phi i8 [ %210, %if.then107.i ], [ %221, %if.else118.i ]
  %ibport.0.i = zext i8 %ibport.0.in.i to i32
  %pnet_id.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21, i32 0, i32 9
  %sub.i = add nsw i32 %ibport.0.i, -1
  %arrayidx122.i = getelementptr %struct.smc_ib_device, ptr %ibdev.0.i, i32 0, i32 9, i32 %sub.i
  %222 = call ptr @memcpy(ptr %pnet_id.i, ptr %arrayidx122.i, i32 16)
  %call124.i = tail call i32 @smc_wr_alloc_lgr_mem(ptr noundef nonnull %call1.i.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool125.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool125.not.i, label %if.end127.i, label %if.end120.i.free_wq.i_crit_edge

if.end120.i.free_wq.i_crit_edge:                  ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_wq.i

if.end127.i:                                      ; preds = %if.end120.i
  tail call void @smc_llc_lgr_init(ptr noundef nonnull %call1.i.i.i.i, ptr noundef %smc) #18
  %lnk128.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21, i32 0, i32 1
  %call131.i = tail call i32 @smcr_link_init(ptr noundef nonnull %call1.i.i.i.i, ptr noundef %lnk128.i, i8 noundef zeroext 0, ptr noundef %ini) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %tobool132.not.i = icmp eq i32 %call131.i, 0
  br i1 %tobool132.not.i, label %if.end134.i, label %if.then133.i

if.then133.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_wr_free_lgr_mem(ptr noundef nonnull %call1.i.i.i.i) #18
  br label %free_wq.i

if.end134.i:                                      ; preds = %if.end127.i
  %223 = ptrtoint ptr %lnk128.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %lnk128.i, align 8
  %tobool.not.i.i = icmp eq ptr %224, null
  br i1 %tobool.not.i.i, label %if.end134.i.cleanup.i_crit_edge, label %land.lhs.true.i.i

if.end134.i.cleanup.i_crit_edge:                  ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

land.lhs.true.i.i:                                ; preds = %if.end134.i
  %ibdev.i.i = getelementptr inbounds %struct.smc_ib_device, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %ibdev.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ibdev.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %226, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.cleanup.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %rdma_net.i.i = getelementptr inbounds %struct.ib_device, ptr %226, i32 0, i32 13, i32 0, i32 1
  %227 = ptrtoint ptr %rdma_net.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %rdma_net.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i.i, %land.lhs.true.i.i.cleanup.i_crit_edge, %if.end134.i.cleanup.i_crit_edge
  %retval.0.i.i = phi ptr [ %228, %if.then.i.i ], [ null, %land.lhs.true.i.i.cleanup.i_crit_edge ], [ null, %if.end134.i.cleanup.i_crit_edge ]
  %net.i = getelementptr inbounds %struct.smc_link_group, ptr %call1.i.i.i.i, i32 0, i32 21, i32 0, i32 27
  %229 = ptrtoint ptr %net.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %retval.0.i.i, ptr %net.i, align 4
  %call.i.i266.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @lgr_cnt, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr nonnull @lgr_cnt, i32 1, i32 3, i32 1) #18
  %230 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @lgr_cnt, ptr nonnull @lgr_cnt, i32 1, ptr nonnull elementtype(i32) @lgr_cnt) #18, !srcloc !106
  br label %if.end137.i

if.end137.i:                                      ; preds = %cleanup.i, %if.then72.i
  %lgr_lock.1.i = phi ptr [ %lgr_lock91.i, %if.then72.i ], [ getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1), %cleanup.i ]
  %lgr_list.1.i = phi ptr [ %lgr_list89.i, %if.then72.i ], [ @smc_lgr_list, %cleanup.i ]
  %lgr138.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %231 = ptrtoint ptr %lgr138.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call1.i.i.i.i, ptr %lgr138.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lgr_lock.1.i) #18
  %prev.i270.i = getelementptr inbounds %struct.list_head, ptr %lgr_list.1.i, i32 0, i32 1
  %232 = ptrtoint ptr %prev.i270.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %prev.i270.i, align 4
  %call.i.i271.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call1.i.i.i.i, ptr noundef %233, ptr noundef %lgr_list.1.i) #18
  br i1 %call.i.i271.i, label %if.end.i.i.i, label %if.end137.i.smc_lgr_create.exit.thread251_crit_edge

if.end137.i.smc_lgr_create.exit.thread251_crit_edge: ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_lgr_create.exit.thread251

if.end.i.i.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #20
  %234 = ptrtoint ptr %prev.i270.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %call1.i.i.i.i, ptr %prev.i270.i, align 4
  %235 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %lgr_list.1.i, ptr %call1.i.i.i.i, align 4096
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call1.i.i.i.i, i32 0, i32 1
  %236 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %233, ptr %prev3.i.i.i, align 4
  %237 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile ptr %call1.i.i.i.i, ptr %233, align 4
  br label %smc_lgr_create.exit.thread251

smc_lgr_create.exit.thread251:                    ; preds = %if.end.i.i.i, %if.end137.i.smc_lgr_create.exit.thread251_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lgr_lock.1.i) #18
  br label %if.end104

free_wq.i:                                        ; preds = %if.then133.i, %if.end120.i.free_wq.i_crit_edge
  %rc.0.ph.i = phi i32 [ 0, %if.end120.i.free_wq.i_crit_edge ], [ %call131.i, %if.then133.i ]
  %238 = ptrtoint ptr %tx_wq.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %tx_wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %239) #18
  br label %free_lgr.i

free_lgr.i:                                       ; preds = %free_wq.i, %if.end10.i224.free_lgr.i_crit_edge
  %rc.1.i = phi i32 [ %rc.0.ph.i, %free_wq.i ], [ -12, %if.end10.i224.free_lgr.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #18
  br label %ism_put_vlan.i

ism_put_vlan.i:                                   ; preds = %free_lgr.i, %if.end6.i.ism_put_vlan.i_crit_edge
  %rc.2.i = phi i32 [ %rc.1.i, %free_lgr.i ], [ 16842752, %if.end6.i.ism_put_vlan.i_crit_edge ]
  %240 = ptrtoint ptr %ini to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %ini, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool142.not.i = icmp eq i8 %241, 0
  br i1 %tobool142.not.i, label %ism_put_vlan.i.out.i_crit_edge, label %land.lhs.true143.i

ism_put_vlan.i.out.i_crit_edge:                   ; preds = %ism_put_vlan.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

land.lhs.true143.i:                               ; preds = %ism_put_vlan.i
  %vlan_id144.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 5
  %242 = ptrtoint ptr %vlan_id144.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %vlan_id144.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %243)
  %tobool146.not.i = icmp eq i16 %243, 0
  br i1 %tobool146.not.i, label %land.lhs.true143.i.out.i_crit_edge, label %if.then147.i

land.lhs.true143.i.out.i_crit_edge:               ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

if.then147.i:                                     ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #20
  %ism_selected149.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 22
  %244 = ptrtoint ptr %ism_selected149.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %ism_selected149.i, align 1
  %idxprom150.i = zext i8 %245 to i32
  %arrayidx151.i = getelementptr %struct.smc_init_info, ptr %ini, i32 0, i32 19, i32 %idxprom150.i
  %246 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx151.i, align 4
  %call153.i = tail call i32 @smc_ism_put_vlan(ptr noundef %247, i16 noundef zeroext %243) #18
  br label %out.i

out.i:                                            ; preds = %if.then147.i, %land.lhs.true143.i.out.i_crit_edge, %ism_put_vlan.i.out.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i)
  %cmp155.i = icmp slt i32 %rc.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %rc.2.i)
  %cmp158.i = icmp eq i32 %rc.2.i, -12
  %.mux.i = select i1 %cmp158.i, i32 16842752, i32 161021952
  br i1 %cmp155.i, label %out.i.cleanup_crit_edge, label %smc_lgr_create.exit

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

smc_lgr_create.exit:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i)
  %tobool102.not = icmp eq i32 %rc.2.i, 0
  br i1 %tobool102.not, label %smc_lgr_create.exit.if.end104_crit_edge, label %smc_lgr_create.exit.cleanup_crit_edge

smc_lgr_create.exit.cleanup_crit_edge:            ; preds = %smc_lgr_create.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

smc_lgr_create.exit.if.end104_crit_edge:          ; preds = %smc_lgr_create.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end104

if.end104:                                        ; preds = %smc_lgr_create.exit.if.end104_crit_edge, %smc_lgr_create.exit.thread251
  %lgr105 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %248 = ptrtoint ptr %lgr105 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %lgr105, align 4
  %conns_lock106 = getelementptr inbounds %struct.smc_link_group, ptr %249, i32 0, i32 2
  tail call void @_raw_write_lock_bh(ptr noundef %conns_lock106) #18
  %call107 = tail call fastcc i32 @smc_lgr_register_conn(ptr noundef %conn1, i1 noundef zeroext true)
  tail call void @_raw_write_unlock_bh(ptr noundef %conns_lock106) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool109.not = icmp eq i32 %call107, 0
  br i1 %tobool109.not, label %if.end104.if.end112_crit_edge, label %if.then110

if.end104.if.end112_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end112

if.then110:                                       ; preds = %if.end104
  %tobool.not.i227 = icmp eq ptr %249, null
  br i1 %tobool.not.i227, label %if.then110.cleanup_crit_edge, label %if.end.i

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %if.then110
  %is_smcd.i.i = getelementptr inbounds %struct.smc_link_group, ptr %249, i32 0, i32 15
  %250 = ptrtoint ptr %is_smcd.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %is_smcd.i.i, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool.not.i.i228 = icmp eq i8 %251, 0
  br i1 %tobool.not.i.i228, label %if.end.i.smc_lgr_list_head.exit.i_crit_edge, label %if.then.i.i229

if.end.i.smc_lgr_list_head.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_lgr_list_head.exit.i

if.then.i.i229:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %smcd.i.i = getelementptr inbounds %struct.smc_link_group, ptr %249, i32 0, i32 21, i32 0, i32 1
  %252 = ptrtoint ptr %smcd.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %smcd.i.i, align 8
  %lgr_lock1.i.i = getelementptr inbounds %struct.smcd_dev, ptr %253, i32 0, i32 12
  br label %smc_lgr_list_head.exit.i

smc_lgr_list_head.exit.i:                         ; preds = %if.then.i.i229, %if.end.i.smc_lgr_list_head.exit.i_crit_edge
  %storemerge.i.i = phi ptr [ %lgr_lock1.i.i, %if.then.i.i229 ], [ getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1), %if.end.i.smc_lgr_list_head.exit.i_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %storemerge.i.i) #18
  %254 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load volatile ptr, ptr %249, align 4
  %cmp.i.not.i = icmp eq ptr %255, %249
  br i1 %cmp.i.not.i, label %smc_lgr_list_head.exit.i.if.end5.i_crit_edge, label %if.then3.i

smc_lgr_list_head.exit.i.if.end5.i_crit_edge:     ; preds = %smc_lgr_list_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

if.then3.i:                                       ; preds = %smc_lgr_list_head.exit.i
  %call.i.i.i230 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %249) #18
  br i1 %call.i.i.i230, label %if.end.i.i.i231, label %if.then3.i.list_del_init.exit.i_crit_edge

if.then3.i.list_del_init.exit.i_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit.i

if.end.i.i.i231:                                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %249, i32 0, i32 1
  %256 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %prev.i.i.i, align 4
  %258 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %249, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %257, ptr %prev1.i.i.i.i, align 4
  %261 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %261)
  store volatile ptr %259, ptr %257, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i231, %if.then3.i.list_del_init.exit.i_crit_edge
  %262 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %262)
  store volatile ptr %249, ptr %249, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %249, i32 0, i32 1
  %263 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %249, ptr %prev.i3.i.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %list_del_init.exit.i, %smc_lgr_list_head.exit.i.if.end5.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %storemerge.i.i) #18
  tail call fastcc void @__smc_lgr_terminate(ptr noundef nonnull %249, i1 noundef zeroext true) #18
  br label %cleanup

if.end112:                                        ; preds = %if.end104.if.end112_crit_edge, %create.if.end112_crit_edge, %land.lhs.true92.if.end112_crit_edge
  %lgr113 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %264 = ptrtoint ptr %lgr113 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %lgr113, align 4
  %refcnt.i233 = getelementptr inbounds %struct.smc_link_group, ptr %265, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i233, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %refcnt.i233, i32 1, i32 3, i32 1) #18
  %266 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i233, ptr %refcnt.i233, i32 1, ptr elementtype(i32) %refcnt.i233) #18, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %266, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end112.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !98

if.end112.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end112
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %267 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %267)
  %.not.i.i.i.i = icmp sgt i32 %267, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.smc_lgr_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !101

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.smc_lgr_hold.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_lgr_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end112.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end112.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i233, i32 noundef %.sink.i.i.i.i) #18
  br label %smc_lgr_hold.exit

smc_lgr_hold.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.smc_lgr_hold.exit_crit_edge
  %268 = ptrtoint ptr %lgr113 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %lgr113, align 4
  %is_smcd115 = getelementptr inbounds %struct.smc_link_group, ptr %269, i32 0, i32 15
  %270 = ptrtoint ptr %is_smcd115 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %is_smcd115, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool116.not = icmp eq i8 %271, 0
  br i1 %tobool116.not, label %if.then117, label %smc_lgr_hold.exit.if.end118_crit_edge

smc_lgr_hold.exit.if.end118_crit_edge:            ; preds = %smc_lgr_hold.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end118

if.then117:                                       ; preds = %smc_lgr_hold.exit
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %272 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %lnk, align 8
  %refcnt.i234 = getelementptr inbounds %struct.smc_link, ptr %273, i32 0, i32 49
  %call.i.i.i.i.i.i235 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i234, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %refcnt.i234, i32 1, i32 3, i32 1) #18
  %274 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i234, ptr %refcnt.i234, i32 1, ptr elementtype(i32) %refcnt.i234) #18, !srcloc !100
  %asmresult.i.i.i.i.i.i236 = extractvalue { i32, i32, i32 } %274, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i236)
  %tobool1.not.i.i.i.i237 = icmp eq i32 %asmresult.i.i.i.i.i.i236, 0
  br i1 %tobool1.not.i.i.i.i237, label %if.then117.if.end15.sink.split.i.i.i.i242_crit_edge, label %if.else.i.i.i.i240, !prof !98

if.then117.if.end15.sink.split.i.i.i.i242_crit_edge: ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i242

if.else.i.i.i.i240:                               ; preds = %if.then117
  %add.i.i.i.i238 = add i32 %asmresult.i.i.i.i.i.i236, 1
  %275 = or i32 %add.i.i.i.i238, %asmresult.i.i.i.i.i.i236
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %275)
  %.not.i.i.i.i239 = icmp sgt i32 %275, -1
  br i1 %.not.i.i.i.i239, label %if.else.i.i.i.i240.if.end118_crit_edge, label %if.else.i.i.i.i240.if.end15.sink.split.i.i.i.i242_crit_edge, !prof !101

if.else.i.i.i.i240.if.end15.sink.split.i.i.i.i242_crit_edge: ; preds = %if.else.i.i.i.i240
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i242

if.else.i.i.i.i240.if.end118_crit_edge:           ; preds = %if.else.i.i.i.i240
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end118

if.end15.sink.split.i.i.i.i242:                   ; preds = %if.else.i.i.i.i240.if.end15.sink.split.i.i.i.i242_crit_edge, %if.then117.if.end15.sink.split.i.i.i.i242_crit_edge
  %.sink.i.i.i.i241 = phi i32 [ 2, %if.then117.if.end15.sink.split.i.i.i.i242_crit_edge ], [ 1, %if.else.i.i.i.i240.if.end15.sink.split.i.i.i.i242_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i234, i32 noundef %.sink.i.i.i.i241) #18
  br label %if.end118

if.end118:                                        ; preds = %if.end15.sink.split.i.i.i.i242, %if.else.i.i.i.i240.if.end118_crit_edge, %smc_lgr_hold.exit.if.end118_crit_edge
  %freed = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 39
  %276 = ptrtoint ptr %freed to i32
  call void @__asan_load1_noabort(i32 %276)
  %bf.load119 = load i8, ptr %freed, align 8
  %bf.clear = and i8 %bf.load119, -65
  store i8 %bf.clear, ptr %freed, align 8
  %local_tx_ctrl = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12
  %277 = ptrtoint ptr %local_tx_ctrl to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 -2, ptr %local_tx_ctrl, align 8
  %len = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 1
  %278 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 44, ptr %len, align 1
  %urg_state = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 28
  %279 = ptrtoint ptr %urg_state to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 3, ptr %urg_state, align 8
  %cdc_pend_tx_wq = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %cdc_pend_tx_wq, ptr noundef nonnull @.str.11, ptr noundef nonnull @smc_conn_create.__key) #18
  %abort_work = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 35
  tail call void @__init_work(ptr noundef %abort_work, i32 noundef 0) #18
  %280 = ptrtoint ptr %abort_work to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 -64, ptr %abort_work, align 4
  %lockdep_map = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 35, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @smc_conn_create.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry130 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 35, i32 1
  %281 = ptrtoint ptr %entry130 to i32
  call void @__asan_store4_noabort(i32 %281)
  store volatile ptr %entry130, ptr %entry130, align 4
  %prev.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 35, i32 1, i32 1
  %282 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %entry130, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 35, i32 2
  %283 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr @smc_conn_abort_work, ptr %func, align 4
  %284 = ptrtoint ptr %ini to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %ini, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool136.not = icmp eq i8 %285, 0
  %rx_off138 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 37
  br i1 %tobool136.not, label %if.else, label %if.then137

if.then137:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #20
  %286 = ptrtoint ptr %rx_off138 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 32, ptr %rx_off138, align 8
  tail call void @smcd_cdc_rx_init(ptr noundef %conn1) #18
  br label %cleanup

if.else:                                          ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #20
  %287 = ptrtoint ptr %rx_off138 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 0, ptr %rx_off138, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then137, %if.end5.i, %if.then110.cleanup_crit_edge, %smc_lgr_create.exit.cleanup_crit_edge, %out.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %land.lhs.true92.cleanup_crit_edge, %for.end
  %retval.0 = phi i32 [ %call67, %for.end ], [ 67108864, %land.lhs.true92.cleanup_crit_edge ], [ %rc.2.i, %smc_lgr_create.exit.cleanup_crit_edge ], [ 0, %if.then137 ], [ 0, %if.else ], [ %call107, %if.then110.cleanup_crit_edge ], [ %call107, %if.end5.i ], [ 50921472, %if.then.i.cleanup_crit_edge ], [ %.mux.i, %out.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_lgr_register_conn(ptr noundef %conn, i1 noundef zeroext %first) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then:                                          ; preds = %entry
  %cond.i = select i1 %first, i32 2, i32 3
  %state.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cond.i)
  %cmp2.not.i = icmp eq i32 %5, %cond.i
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %if.then.for.inc36.i_crit_edge

if.then.for.inc36.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc36.i

lor.lhs.false.i:                                  ; preds = %if.then
  %link_is_asym.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 47
  %6 = ptrtoint ptr %link_is_asym.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %link_is_asym.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i = icmp eq i8 %7, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.for.inc36.i_crit_edge

lor.lhs.false.i.for.inc36.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc36.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.2.i.if.end.i_crit_edge, %lor.lhs.false.1.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %cmp1481.i = phi i1 [ false, %lor.lhs.false.2.i.if.end.i_crit_edge ], [ true, %lor.lhs.false.1.i.if.end.i_crit_edge ], [ true, %lor.lhs.false.i.if.end.i_crit_edge ]
  %i.078.lcssa.i = phi i32 [ 2, %lor.lhs.false.2.i.if.end.i_crit_edge ], [ 1, %lor.lhs.false.1.i.if.end.i_crit_edge ], [ 0, %lor.lhs.false.i.if.end.i_crit_edge ]
  %8 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21
  %arrayidx.le.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %i.078.lcssa.i
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.i = icmp eq i32 %10, 0
  br i1 %cmp5.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %lnk8.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  br label %for.end38.sink.split.i

if.end9.i:                                        ; preds = %if.end.i
  %conns_num.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %conns_num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %conns_num.i, align 8
  %rem.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool11.not.i = icmp ne i32 %rem.i, 0
  %or.cond.i = and i1 %cmp1481.i, %tobool11.not.i
  br i1 %or.cond.i, label %for.body16.preheader.i, label %if.end9.i.if.end28.i_crit_edge

if.end9.i.if.end28.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28.i

for.body16.preheader.i:                           ; preds = %if.end9.i
  %j.080.i = add nuw nsw i32 %i.078.lcssa.i, 1
  br label %for.body16.i

for.body16.i:                                     ; preds = %cleanup.i.for.body16.i_crit_edge, %for.body16.preheader.i
  %j.082.i = phi i32 [ %j.0.i, %cleanup.i.for.body16.i_crit_edge ], [ %j.080.i, %for.body16.preheader.i ]
  %state20.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %j.082.i, i32 54
  %13 = ptrtoint ptr %state20.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state20.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %cond.i)
  %cmp21.i = icmp eq i32 %14, %cond.i
  br i1 %cmp21.i, label %land.lhs.true.i, label %for.body16.i.cleanup.i_crit_edge

for.body16.i.cleanup.i_crit_edge:                 ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %for.body16.i
  %link_is_asym23.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %j.082.i, i32 47
  %15 = ptrtoint ptr %link_is_asym23.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %link_is_asym23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool24.not.i = icmp eq i8 %16, 0
  br i1 %tobool24.not.i, label %cleanup.thread.i, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx19.le.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %j.082.i
  %lnk26.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %17 = ptrtoint ptr %lnk26.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx19.le.i, ptr %lnk26.i, align 8
  br label %if.end28.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %for.body16.i.cleanup.i_crit_edge
  %j.0.i = add nuw nsw i32 %j.082.i, 1
  %exitcond.not.i = icmp eq i32 %j.0.i, 3
  br i1 %exitcond.not.i, label %cleanup.i.if.end28.i_crit_edge, label %cleanup.i.for.body16.i_crit_edge

cleanup.i.for.body16.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body16.i

cleanup.i.if.end28.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28.i

if.end28.i:                                       ; preds = %cleanup.i.if.end28.i_crit_edge, %cleanup.thread.i, %if.end9.i.if.end28.i_crit_edge
  %lnk29.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %18 = ptrtoint ptr %lnk29.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lnk29.i, align 8
  %tobool30.not.i = icmp eq ptr %19, null
  br i1 %tobool30.not.i, label %if.end28.i.for.end38.sink.split.i_crit_edge, label %if.end28.i.for.end38.i_crit_edge

if.end28.i.for.end38.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end38.i

if.end28.i.for.end38.sink.split.i_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end38.sink.split.i

for.inc36.i:                                      ; preds = %lor.lhs.false.i.for.inc36.i_crit_edge, %if.then.for.inc36.i_crit_edge
  %state.1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %20 = ptrtoint ptr %state.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %cond.i)
  %cmp2.not.1.i = icmp eq i32 %21, %cond.i
  br i1 %cmp2.not.1.i, label %lor.lhs.false.1.i, label %for.inc36.i.for.inc36.1.i_crit_edge

for.inc36.i.for.inc36.1.i_crit_edge:              ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc36.1.i

lor.lhs.false.1.i:                                ; preds = %for.inc36.i
  %link_is_asym.1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 47
  %22 = ptrtoint ptr %link_is_asym.1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %link_is_asym.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.1.i = icmp eq i8 %23, 0
  br i1 %tobool3.not.1.i, label %lor.lhs.false.1.i.if.end.i_crit_edge, label %lor.lhs.false.1.i.for.inc36.1.i_crit_edge

lor.lhs.false.1.i.for.inc36.1.i_crit_edge:        ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc36.1.i

lor.lhs.false.1.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.inc36.1.i:                                    ; preds = %lor.lhs.false.1.i.for.inc36.1.i_crit_edge, %for.inc36.i.for.inc36.1.i_crit_edge
  %state.2.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %24 = ptrtoint ptr %state.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %cond.i)
  %cmp2.not.2.i = icmp eq i32 %25, %cond.i
  br i1 %cmp2.not.2.i, label %lor.lhs.false.2.i, label %for.inc36.1.i.for.end38.i_crit_edge

for.inc36.1.i.for.end38.i_crit_edge:              ; preds = %for.inc36.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end38.i

lor.lhs.false.2.i:                                ; preds = %for.inc36.1.i
  %link_is_asym.2.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2, i32 47
  %26 = ptrtoint ptr %link_is_asym.2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %link_is_asym.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool3.not.2.i = icmp eq i8 %27, 0
  br i1 %tobool3.not.2.i, label %lor.lhs.false.2.i.if.end.i_crit_edge, label %lor.lhs.false.2.i.for.end38.i_crit_edge

lor.lhs.false.2.i.for.end38.i_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end38.i

lor.lhs.false.2.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.end38.sink.split.i:                           ; preds = %if.end28.i.for.end38.sink.split.i_crit_edge, %if.then7.i
  %lnk29.sink.i = phi ptr [ %lnk8.i, %if.then7.i ], [ %lnk29.i, %if.end28.i.for.end38.sink.split.i_crit_edge ]
  %28 = ptrtoint ptr %lnk29.sink.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.le.i, ptr %lnk29.sink.i, align 8
  br label %for.end38.i

for.end38.i:                                      ; preds = %for.end38.sink.split.i, %lor.lhs.false.2.i.for.end38.i_crit_edge, %for.inc36.1.i.for.end38.i_crit_edge, %if.end28.i.for.end38.i_crit_edge
  %lnk39.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %29 = ptrtoint ptr %lnk39.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lnk39.i, align 8
  %tobool40.not.i = icmp eq ptr %30, null
  br i1 %tobool40.not.i, label %if.then3, label %smcr_lgr_conn_assign_link.exit.thread

smcr_lgr_conn_assign_link.exit.thread:            ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #20
  %conn_cnt.i = getelementptr inbounds %struct.smc_link, ptr %30, i32 0, i32 58
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conn_cnt.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %conn_cnt.i, i32 1, i32 3, i32 1) #18
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conn_cnt.i, ptr %conn_cnt.i, i32 1, ptr elementtype(i32) %conn_cnt.i) #18, !srcloc !106
  br label %if.end5

if.then3:                                         ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #20
  %32 = ptrtoint ptr %lgr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %lgr, align 4
  br label %cleanup

if.end5:                                          ; preds = %smcr_lgr_conn_assign_link.exit.thread, %entry.if.end5_crit_edge
  %skc_refcnt.i = getelementptr i8, ptr %conn, i32 -884
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #18
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #18, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end5.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !98

if.end5.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !101

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end5.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end5.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #18
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %alert_token_local = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 3
  %35 = ptrtoint ptr %alert_token_local to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %alert_token_local, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool6.not44 = icmp eq i32 %36, 0
  br i1 %tobool6.not44, label %sock_hold.exit.while.body_crit_edge, label %sock_hold.exit.while.end_crit_edge

sock_hold.exit.while.end_crit_edge:               ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

sock_hold.exit.while.body_crit_edge:              ; preds = %sock_hold.exit
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %sock_hold.exit.while.body_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @smc_lgr_register_conn.nexttoken, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr nonnull @smc_lgr_register_conn.nexttoken, i32 1, i32 3, i32 1) #18
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @smc_lgr_register_conn.nexttoken, ptr nonnull @smc_lgr_register_conn.nexttoken, i32 1, ptr nonnull elementtype(i32) @smc_lgr_register_conn.nexttoken) #18, !srcloc !129
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !130
  %38 = ptrtoint ptr %alert_token_local to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %asmresult.i.i.i.i, ptr %alert_token_local, align 4
  %39 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lgr, align 4
  %conns_all.i = getelementptr inbounds %struct.smc_link_group, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %conns_all.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %node.018.i = load ptr, ptr %conns_all.i, align 4
  %tobool.not19.i = icmp eq ptr %node.018.i, null
  br i1 %tobool.not19.i, label %while.body.if.end15_crit_edge, label %while.body.while.body.i_crit_edge

while.body.while.body.i_crit_edge:                ; preds = %while.body
  br label %while.body.i

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

while.body.i:                                     ; preds = %cleanup.i29.while.body.i_crit_edge, %while.body.while.body.i_crit_edge
  %node.020.i = phi ptr [ %node.0.i, %cleanup.i29.while.body.i_crit_edge ], [ %node.018.i, %while.body.while.body.i_crit_edge ]
  %alert_token_local.i = getelementptr inbounds %struct.smc_connection, ptr %node.020.i, i32 0, i32 3
  %42 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %asmresult.i.i.i.i)
  %cmp.i = icmp ugt i32 %43, %asmresult.i.i.i.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.020.i, i32 0, i32 2
  br label %cleanup.i29

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %asmresult.i.i.i.i)
  %cmp2.i = icmp ult i32 %43, %asmresult.i.i.i.i
  br i1 %cmp2.i, label %if.then3.i, label %if.then13

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.020.i, i32 0, i32 1
  br label %cleanup.i29

cleanup.i29:                                      ; preds = %if.then3.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %44 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end15thread-pre-split, label %cleanup.i29.while.body.i_crit_edge

cleanup.i29.while.body.i_crit_edge:               ; preds = %cleanup.i29
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

if.then13:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %45 = ptrtoint ptr %alert_token_local to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %alert_token_local, align 4
  br label %if.end15

if.end15thread-pre-split:                         ; preds = %cleanup.i29
  call void @__sanitizer_cov_trace_pc() #20
  %46 = ptrtoint ptr %alert_token_local to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load i32, ptr %alert_token_local, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15thread-pre-split, %if.then13, %while.body.if.end15_crit_edge
  %47 = phi i32 [ %.pr, %if.end15thread-pre-split ], [ %asmresult.i.i.i.i, %while.body.if.end15_crit_edge ], [ 0, %if.then13 ]
  %tobool6.not = icmp eq i32 %47, 0
  br i1 %tobool6.not, label %if.end15.while.body_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %sock_hold.exit.while.end_crit_edge
  %.lcssa42 = phi i32 [ %36, %sock_hold.exit.while.end_crit_edge ], [ %47, %if.end15.while.end_crit_edge ]
  %48 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lgr, align 4
  %conns_all.i32 = getelementptr inbounds %struct.smc_link_group, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %conns_all.i32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %conns_all.i32, align 4
  %tobool.not14.i = icmp eq ptr %51, null
  br i1 %tobool.not14.i, label %while.end.smc_lgr_add_alert_token.exit_crit_edge, label %while.end.while.body.i37_crit_edge

while.end.while.body.i37_crit_edge:               ; preds = %while.end
  br label %while.body.i37

while.end.smc_lgr_add_alert_token.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_lgr_add_alert_token.exit

while.body.i37:                                   ; preds = %while.body.i37.while.body.i37_crit_edge, %while.end.while.body.i37_crit_edge
  %52 = phi ptr [ %56, %while.body.i37.while.body.i37_crit_edge ], [ %51, %while.end.while.body.i37_crit_edge ]
  %alert_token_local1.i = getelementptr inbounds %struct.smc_connection, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %alert_token_local1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %alert_token_local1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %.lcssa42)
  %cmp.i33 = icmp ugt i32 %54, %.lcssa42
  %rb_left.i34 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 2
  %rb_right.i35 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 1
  %link.1.i = select i1 %cmp.i33, ptr %rb_left.i34, ptr %rb_right.i35
  %55 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i36 = icmp eq ptr %56, null
  br i1 %tobool.not.i36, label %while.cond.while.end_crit_edge.i, label %while.body.i37.while.body.i37_crit_edge

while.body.i37.while.body.i37_crit_edge:          ; preds = %while.body.i37
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i37

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i37
  call void @__sanitizer_cov_trace_pc() #20
  %phi.cast.le.i = ptrtoint ptr %52 to i32
  br label %smc_lgr_add_alert_token.exit

smc_lgr_add_alert_token.exit:                     ; preds = %while.cond.while.end_crit_edge.i, %while.end.smc_lgr_add_alert_token.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %while.end.smc_lgr_add_alert_token.exit_crit_edge ]
  %link.0.lcssa.i = phi ptr [ %link.1.i, %while.cond.while.end_crit_edge.i ], [ %conns_all.i32, %while.end.smc_lgr_add_alert_token.exit_crit_edge ]
  %57 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %parent.0.lcssa.i, ptr %conn, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %conn, i32 0, i32 1
  %58 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %conn, i32 0, i32 2
  %59 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rb_left.i.i, align 4
  %60 = ptrtoint ptr %link.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %conn, ptr %link.0.lcssa.i, align 4
  %61 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lgr, align 4
  %conns_all4.i = getelementptr inbounds %struct.smc_link_group, ptr %62, i32 0, i32 1
  tail call void @rb_insert_color(ptr noundef %conn, ptr noundef %conns_all4.i) #18
  %63 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lgr, align 4
  %conns_num = getelementptr inbounds %struct.smc_link_group, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %conns_num to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %conns_num, align 8
  %inc = add i32 %66, 1
  store i32 %inc, ptr %conns_num, align 8
  br label %cleanup

cleanup:                                          ; preds = %smc_lgr_add_alert_token.exit, %if.then3
  %retval.0 = phi i32 [ 0, %smc_lgr_add_alert_token.exit ], [ 50987008, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_conn_abort_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -476
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1460
  tail call void @lock_sock_nested(ptr noundef %add.ptr3, i32 noundef 0) #18
  tail call fastcc void @smc_conn_kill(ptr noundef %add.ptr, i1 noundef zeroext true)
  tail call void @release_sock(ptr noundef %add.ptr3) #18
  %skc_refcnt.i = getelementptr i8, ptr %work, i32 -1360
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #18, !srcloc !103
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !101

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #18
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !104
  tail call void @sk_free(ptr noundef %add.ptr3) #18
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcd_cdc_rx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smc_uncompress_bufsize(i8 noundef zeroext %compressed) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %compressed to i32
  %shl = shl i32 16384, %conv
  ret i32 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcr_link_reg_rmb(ptr noundef %link, ptr nocapture noundef %rmb_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %3, %1
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %is_reg_mr = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 5, i32 1, i32 29
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 46
  %4 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_idx, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [3 x i8], ptr %is_reg_mr, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then2:                                         ; preds = %if.end
  %mr_rx = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 5, i32 1, i32 12
  %arrayidx5 = getelementptr [3 x ptr], ptr %mr_rx, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %call6 = tail call i32 @smc_wr_reg_send(ptr noundef %link, ptr noundef %9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  %is_reg_err = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 5, i32 1, i32 35
  br label %return.sink.split

if.end9:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_idx, align 1
  %idxprom12 = zext i8 %11 to i32
  %arrayidx13 = getelementptr [3 x i8], ptr %is_reg_mr, i32 0, i32 %idxprom12
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end9, %if.then8
  %arrayidx13.sink = phi ptr [ %arrayidx13, %if.end9 ], [ %is_reg_err, %if.then8 ]
  %retval.0.ph = phi i32 [ 0, %if.end9 ], [ -14, %if.then8 ]
  %12 = ptrtoint ptr %arrayidx13.sink to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx13.sink, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -67, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_reg_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcr_buf_map_lgr(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %rmbs_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 8
  %sndbufs_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 7, i32 %i.038
  tail call void @mutex_lock_nested(ptr noundef %rmbs_lock, i32 noundef 0) #18
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp.not23.i = icmp eq ptr %3, %arrayidx
  br i1 %cmp.not23.i, label %for.body.if.end_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %buf_desc.024.i = phi ptr [ %bf.025.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.body.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %buf_desc.024.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.025.i = load ptr, ptr %buf_desc.024.i, align 8
  %used.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.024.i, i32 0, i32 4
  %5 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call fastcc i32 @smcr_buf_map_link(ptr noundef %buf_desc.024.i, i1 noundef zeroext true, ptr noundef %lnk) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %bf.025.i, %arrayidx
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %for.body.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %rmbs_lock) #18
  %arrayidx2 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 5, i32 %i.038
  tail call void @mutex_lock_nested(ptr noundef %sndbufs_lock, i32 noundef 0) #18
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2, align 4
  %cmp.not23.i20 = icmp eq ptr %8, %arrayidx2
  br i1 %cmp.not23.i20, label %if.end.for.inc_crit_edge, label %if.end.for.body.i25_crit_edge

if.end.for.body.i25_crit_edge:                    ; preds = %if.end
  br label %for.body.i25

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.body.i25:                                     ; preds = %for.inc.i30.for.body.i25_crit_edge, %if.end.for.body.i25_crit_edge
  %buf_desc.024.i21 = phi ptr [ %bf.025.i22, %for.inc.i30.for.body.i25_crit_edge ], [ %8, %if.end.for.body.i25_crit_edge ]
  %9 = ptrtoint ptr %buf_desc.024.i21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.025.i22 = load ptr, ptr %buf_desc.024.i21, align 8
  %used.i23 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.024.i21, i32 0, i32 4
  %10 = ptrtoint ptr %used.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i24 = icmp eq i32 %11, 0
  br i1 %tobool.not.i24, label %for.body.i25.for.inc.i30_crit_edge, label %if.end.i28

for.body.i25.for.inc.i30_crit_edge:               ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i30

if.end.i28:                                       ; preds = %for.body.i25
  %call.i26 = tail call fastcc i32 @smcr_buf_map_link(ptr noundef %buf_desc.024.i21, i1 noundef zeroext false, ptr noundef %lnk) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool7.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool7.not.i27, label %if.end.i28.for.inc.i30_crit_edge, label %if.end.i28.cleanup.sink.split_crit_edge

if.end.i28.cleanup.sink.split_crit_edge:          ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end.i28.for.inc.i30_crit_edge:                 ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i30

for.inc.i30:                                      ; preds = %if.end.i28.for.inc.i30_crit_edge, %for.body.i25.for.inc.i30_crit_edge
  %cmp.not.i29 = icmp eq ptr %bf.025.i22, %arrayidx2
  br i1 %cmp.not.i29, label %for.inc.i30.for.inc_crit_edge, label %for.inc.i30.for.body.i25_crit_edge

for.inc.i30.for.body.i25_crit_edge:               ; preds = %for.inc.i30
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i25

for.inc.i30.for.inc_crit_edge:                    ; preds = %for.inc.i30
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.inc:                                          ; preds = %for.inc.i30.for.inc_crit_edge, %if.end.for.inc_crit_edge
  tail call void @mutex_unlock(ptr noundef %sndbufs_lock) #18
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.i28.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %sndbufs_lock.sink = phi ptr [ %sndbufs_lock, %if.end.i28.cleanup.sink.split_crit_edge ], [ %rmbs_lock, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i26, %if.end.i28.cleanup.sink.split_crit_edge ], [ %call.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sndbufs_lock.sink) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcr_buf_reg_lgr(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %rmbs_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %rmbs_lock, i32 noundef 0) #18
  %link_idx.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 46
  br label %for.body

for.body:                                         ; preds = %for.inc20.for.body_crit_edge, %entry
  %i.051 = phi i32 [ 0, %entry ], [ %inc, %for.inc20.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 7, i32 %i.051
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp10.not48 = icmp eq ptr %3, %arrayidx
  br i1 %cmp10.not48, label %for.body.for.inc20_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.for.inc20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc20

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %buf_desc.049 = phi ptr [ %bf.050, %for.inc.for.body11_crit_edge ], [ %3, %for.body.for.body11_crit_edge ]
  %4 = ptrtoint ptr %buf_desc.049 to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.050 = load ptr, ptr %buf_desc.049, align 8
  %used = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.049, i32 0, i32 4
  %5 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.body11.for.inc_crit_edge, label %if.end

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %for.body11
  %7 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lgr1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 4
  %cmp.i.not.i = icmp eq ptr %10, %8
  br i1 %cmp.i.not.i, label %if.end.out_crit_edge, label %if.end.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end.i:                                         ; preds = %if.end
  %is_reg_mr.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.049, i32 0, i32 5, i32 1, i32 29
  %11 = ptrtoint ptr %link_idx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link_idx.i, align 1
  %idxprom.i = zext i8 %12 to i32
  %arrayidx.i = getelementptr [3 x i8], ptr %is_reg_mr.i, i32 0, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then2.i:                                       ; preds = %if.end.i
  %mr_rx.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.049, i32 0, i32 5, i32 1, i32 12
  %arrayidx5.i = getelementptr [3 x ptr], ptr %mr_rx.i, i32 0, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5.i, align 4
  %call6.i = tail call i32 @smc_wr_reg_send(ptr noundef %lnk, ptr noundef %16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %smcr_link_reg_rmb.exit.thread40, label %smcr_link_reg_rmb.exit

smcr_link_reg_rmb.exit.thread40:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %link_idx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_idx.i, align 1
  %idxprom12.i = zext i8 %18 to i32
  %arrayidx13.i = getelementptr [3 x i8], ptr %is_reg_mr.i, i32 0, i32 %idxprom12.i
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %arrayidx13.i, align 1
  br label %for.inc

smcr_link_reg_rmb.exit:                           ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #20
  %is_reg_err.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.049, i32 0, i32 5, i32 1, i32 35
  %20 = ptrtoint ptr %is_reg_err.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %is_reg_err.i, align 1
  br label %out

for.inc:                                          ; preds = %smcr_link_reg_rmb.exit.thread40, %if.end.i.for.inc_crit_edge, %for.body11.for.inc_crit_edge
  %cmp10.not = icmp eq ptr %bf.050, %arrayidx
  br i1 %cmp10.not, label %for.inc.for.inc20_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body11

for.inc.for.inc20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc20

for.inc20:                                        ; preds = %for.inc.for.inc20_crit_edge, %for.body.for.inc20_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc20.out_crit_edge, label %for.inc20.for.body_crit_edge

for.inc20.for.body_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc20.out_crit_edge:                          ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

out:                                              ; preds = %for.inc20.out_crit_edge, %smcr_link_reg_rmb.exit, %if.end.out_crit_edge
  %rc.3 = phi i32 [ -14, %smcr_link_reg_rmb.exit ], [ -67, %if.end.out_crit_edge ], [ 0, %for.inc20.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rmbs_lock) #18
  ret i32 %rc.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_sndbuf_sync_sg_for_cpu(ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %smc_conn_lgr_valid.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

smc_conn_lgr_valid.exit:                          ; preds = %entry
  %alert_token_local.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 3
  %2 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.i.not = icmp eq i32 %3, 0
  br i1 %tobool1.i.not, label %smc_conn_lgr_valid.exit.return_crit_edge, label %lor.lhs.false

smc_conn_lgr_valid.exit.return_crit_edge:         ; preds = %smc_conn_lgr_valid.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false:                                    ; preds = %smc_conn_lgr_valid.exit
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false1, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %lnk = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %6 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lnk, align 8
  %state.i = getelementptr inbounds %struct.smc_link, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i = icmp eq i32 %9, 3
  br i1 %cmp.i, label %if.end, label %lor.lhs.false1.return_crit_edge

lor.lhs.false1.return_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #20
  %sndbuf_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 8
  %10 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sndbuf_desc, align 8
  tail call void @smc_ib_sync_sg_for_cpu(ptr noundef %7, ptr noundef %11, i32 noundef 1) #18
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false1.return_crit_edge, %lor.lhs.false.return_crit_edge, %smc_conn_lgr_valid.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ib_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_sndbuf_sync_sg_for_device(ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %smc_conn_lgr_valid.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

smc_conn_lgr_valid.exit:                          ; preds = %entry
  %alert_token_local.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 3
  %2 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.i.not = icmp eq i32 %3, 0
  br i1 %tobool1.i.not, label %smc_conn_lgr_valid.exit.return_crit_edge, label %lor.lhs.false

smc_conn_lgr_valid.exit.return_crit_edge:         ; preds = %smc_conn_lgr_valid.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false:                                    ; preds = %smc_conn_lgr_valid.exit
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false1, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %lnk = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %6 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lnk, align 8
  %state.i = getelementptr inbounds %struct.smc_link, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i = icmp eq i32 %9, 3
  br i1 %cmp.i, label %if.end, label %lor.lhs.false1.return_crit_edge

lor.lhs.false1.return_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #20
  %sndbuf_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 8
  %10 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sndbuf_desc, align 8
  tail call void @smc_ib_sync_sg_for_device(ptr noundef %7, ptr noundef %11, i32 noundef 1) #18
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false1.return_crit_edge, %lor.lhs.false.return_crit_edge, %smc_conn_lgr_valid.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ib_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_rmb_sync_sg_for_cpu(ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %smc_conn_lgr_valid.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

smc_conn_lgr_valid.exit:                          ; preds = %entry
  %alert_token_local.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 3
  %2 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.i.not = icmp eq i32 %3, 0
  br i1 %tobool1.i.not, label %smc_conn_lgr_valid.exit.cleanup_crit_edge, label %lor.lhs.false

smc_conn_lgr_valid.exit.cleanup_crit_edge:        ; preds = %smc_conn_lgr_valid.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %smc_conn_lgr_valid.exit
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %rmb_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 9
  %6 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lgr.i, align 4
  %state.i = getelementptr %struct.smc_link_group, ptr %7, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i = icmp eq i32 %9, 3
  br i1 %cmp.i, label %if.end4, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end4:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.smc_link_group, ptr %7, i32 0, i32 21, i32 0, i32 1, i32 0
  %10 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmb_desc, align 4
  tail call void @smc_ib_sync_sg_for_cpu(ptr noundef %arrayidx, ptr noundef %11, i32 noundef 2) #18
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %for.cond.preheader.for.inc_crit_edge
  %12 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lgr.i, align 4
  %state.i.1 = getelementptr %struct.smc_link_group, ptr %13, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %14 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i.1 = icmp eq i32 %15, 3
  br i1 %cmp.i.1, label %if.end4.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.end4.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.1 = getelementptr %struct.smc_link_group, ptr %13, i32 0, i32 21, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmb_desc, align 4
  tail call void @smc_ib_sync_sg_for_cpu(ptr noundef %arrayidx.1, ptr noundef %17, i32 noundef 2) #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end4.1, %for.inc.for.inc.1_crit_edge
  %18 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lgr.i, align 4
  %state.i.2 = getelementptr %struct.smc_link_group, ptr %19, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %20 = ptrtoint ptr %state.i.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp.i.2 = icmp eq i32 %21, 3
  br i1 %cmp.i.2, label %if.end4.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.2 = getelementptr %struct.smc_link_group, ptr %19, i32 0, i32 21, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmb_desc, align 4
  tail call void @smc_ib_sync_sg_for_cpu(ptr noundef %arrayidx.2, ptr noundef %23, i32 noundef 2) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end4.2, %for.inc.1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %smc_conn_lgr_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_rmb_sync_sg_for_device(ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %smc_conn_lgr_valid.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

smc_conn_lgr_valid.exit:                          ; preds = %entry
  %alert_token_local.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 3
  %2 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.i.not = icmp eq i32 %3, 0
  br i1 %tobool1.i.not, label %smc_conn_lgr_valid.exit.cleanup_crit_edge, label %lor.lhs.false

smc_conn_lgr_valid.exit.cleanup_crit_edge:        ; preds = %smc_conn_lgr_valid.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %smc_conn_lgr_valid.exit
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %rmb_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 9
  %6 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lgr.i, align 4
  %state.i = getelementptr %struct.smc_link_group, ptr %7, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i = icmp eq i32 %9, 3
  br i1 %cmp.i, label %if.end4, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end4:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.smc_link_group, ptr %7, i32 0, i32 21, i32 0, i32 1, i32 0
  %10 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmb_desc, align 4
  tail call void @smc_ib_sync_sg_for_device(ptr noundef %arrayidx, ptr noundef %11, i32 noundef 2) #18
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %for.cond.preheader.for.inc_crit_edge
  %12 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lgr.i, align 4
  %state.i.1 = getelementptr %struct.smc_link_group, ptr %13, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %14 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i.1 = icmp eq i32 %15, 3
  br i1 %cmp.i.1, label %if.end4.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.end4.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.1 = getelementptr %struct.smc_link_group, ptr %13, i32 0, i32 21, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmb_desc, align 4
  tail call void @smc_ib_sync_sg_for_device(ptr noundef %arrayidx.1, ptr noundef %17, i32 noundef 2) #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end4.1, %for.inc.for.inc.1_crit_edge
  %18 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lgr.i, align 4
  %state.i.2 = getelementptr %struct.smc_link_group, ptr %19, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %20 = ptrtoint ptr %state.i.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp.i.2 = icmp eq i32 %21, 3
  br i1 %cmp.i.2, label %if.end4.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.2 = getelementptr %struct.smc_link_group, ptr %19, i32 0, i32 21, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmb_desc, align 4
  tail call void @smc_ib_sync_sg_for_device(ptr noundef %arrayidx.2, ptr noundef %23, i32 noundef 2) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end4.2, %for.inc.1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %smc_conn_lgr_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_buf_create(ptr noundef %smc, i1 noundef zeroext %is_smcd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__smc_buf_create(ptr noundef %smc, i1 noundef zeroext %is_smcd, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @__smc_buf_create(ptr noundef %smc, i1 noundef zeroext %is_smcd, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %lgr = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %sndbufs_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %sndbufs_lock, i32 noundef 0) #18
  %sndbuf_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sndbuf_desc, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then5.list_del.exit_crit_edge

if.then5.list_del.exit_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then5.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lgr, align 4
  %sndbufs_lock9 = getelementptr inbounds %struct.smc_link_group, ptr %13, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %sndbufs_lock9) #18
  %14 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lgr, align 4
  %16 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sndbuf_desc, align 8
  tail call fastcc void @smc_buf_free(ptr noundef %15, i1 noundef zeroext false, ptr noundef %17)
  %18 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sndbuf_desc, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %list_del.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__smc_buf_create(ptr noundef %smc, i1 noundef zeroext %is_smcd, i1 noundef zeroext %is_rmb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conn2 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %lgr3 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %lgr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr3, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 15
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 21
  %sk_buf_size.0.in.in = select i1 %is_rmb, ptr %sk_rcvbuf, ptr %sk_sndbuf
  %2 = ptrtoint ptr %sk_buf_size.0.in.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %sk_buf_size.0.in = load i32, ptr %sk_buf_size.0.in.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32770, i32 %sk_buf_size.0.in)
  %cmp.i = icmp slt i32 %sk_buf_size.0.in, 32770
  br i1 %cmp.i, label %entry.smc_compress_bufsize.exit_crit_edge, label %cond.end6.i

entry.smc_compress_bufsize.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %.pre = xor i1 %is_rmb, true
  %.pre1992 = or i1 %.pre, %is_smcd
  br label %smc_compress_bufsize.exit

cond.end6.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sk_buf_size.020092024 = lshr i32 %sk_buf_size.0.in, 1
  %sub.i1901 = add nsw i32 %sk_buf_size.020092024, -1
  %shr52.i = lshr i32 %sub.i1901, 14
  %3 = tail call i32 @llvm.ctlz.i32(i32 %shr52.i, i1 true) #18, !range !131
  %conv8.i = sub nuw nsw i32 32, %3
  %conv13.i = select i1 %is_smcd, i32 6, i32 5
  %4 = tail call i32 @llvm.umin.i32(i32 %conv8.i, i32 %conv13.i) #18
  %is_rmb.not.i = xor i1 %is_rmb, true
  %brmerge.i = or i1 %is_rmb.not.i, %is_smcd
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 5) #18
  %compressed.0.in.i = select i1 %brmerge.i, i32 %4, i32 %5
  br label %smc_compress_bufsize.exit

smc_compress_bufsize.exit:                        ; preds = %cond.end6.i, %entry.smc_compress_bufsize.exit_crit_edge
  %brmerge1854.pre-phi = phi i1 [ %.pre1992, %entry.smc_compress_bufsize.exit_crit_edge ], [ %brmerge.i, %cond.end6.i ]
  %retval.0.i = phi i32 [ 0, %entry.smc_compress_bufsize.exit_crit_edge ], [ %compressed.0.in.i, %cond.end6.i ]
  %rmbs_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 8
  %sndbufs_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 6
  %lock.0 = select i1 %is_rmb, ptr %rmbs_lock, ptr %sndbufs_lock
  %skc_net.i1932 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %is_smcd.not1848 = xor i1 %is_smcd, true
  %6 = and i1 %is_smcd, %is_rmb
  %brmerge1852 = or i1 %is_smcd.not1848, %is_rmb
  %brmerge1855 = or i1 %is_smcd, %is_rmb
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %smc_compress_bufsize.exit
  %bufsize_short.01978 = phi i32 [ %retval.0.i, %smc_compress_bufsize.exit ], [ %dec, %for.inc.for.body_crit_edge ]
  %is_dgraded.0.off01977 = phi i1 [ false, %smc_compress_bufsize.exit ], [ true, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 7, i32 %bufsize_short.01978
  %arrayidx13 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 5, i32 %bufsize_short.01978
  %buf_list.0 = select i1 %is_rmb, ptr %arrayidx, ptr %arrayidx13
  %conv.i = and i32 %bufsize_short.01978, 255
  %shl.i = shl i32 16384, %conv.i
  tail call void @mutex_lock_nested(ptr noundef %lock.0, i32 noundef 0) #18
  br label %for.cond.i

for.cond.i:                                       ; preds = %__cmpxchg.exit.i.for.cond.i_crit_edge, %for.body
  %buf_slot.0.in.i = phi ptr [ %buf_list.0, %for.body ], [ %buf_slot.0.i, %__cmpxchg.exit.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %buf_slot.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %buf_slot.0.i = load ptr, ptr %buf_slot.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %buf_slot.0.i, %buf_list.0
  br i1 %cmp.not.i, label %smc_buf_get_slot.exit.thread, label %for.body.i

smc_buf_get_slot.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mutex_unlock(ptr noundef %lock.0) #18
  br label %if.end654

for.body.i:                                       ; preds = %for.cond.i
  %used.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_slot.0.i, i32 0, i32 4
  %call.i.i1902 = tail call zeroext i1 @__kasan_check_write(ptr noundef %used.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !132
  tail call void @llvm.prefetch.p0(ptr %used.i, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.body.i
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %used.i, i32 0, i32 1) #18, !srcloc !114
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !133
  %cmp16.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %cmp16.i, label %smc_buf_get_slot.exit, label %__cmpxchg.exit.i.for.cond.i_crit_edge

__cmpxchg.exit.i.for.cond.i_crit_edge:            ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

smc_buf_get_slot.exit:                            ; preds = %__cmpxchg.exit.i
  tail call void @mutex_unlock(ptr noundef %lock.0) #18
  %tobool18.not = icmp eq ptr %buf_slot.0.i, null
  br i1 %tobool18.not, label %smc_buf_get_slot.exit.if.end654_crit_edge, label %do.body

smc_buf_get_slot.exit.if.end654_crit_edge:        ; preds = %smc_buf_get_slot.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end654

do.body:                                          ; preds = %smc_buf_get_slot.exit
  %9 = ptrtoint ptr %skc_net.i1932 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i1932, align 4
  %smc22 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 55
  %11 = ptrtoint ptr %smc22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smc22, align 4
  br i1 %6, label %do.body32, label %do.body.if.end91_crit_edge

do.body.if.end91_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end91

do.body32:                                        ; preds = %do.body
  %shr = ashr exact i32 %shl.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv.i)
  %tobool.not.i = icmp ugt i32 %conv.i, 17
  %13 = tail call i32 @llvm.ctlz.i32(i32 %shr, i1 true) #18, !range !131
  %sub.i = sub nuw nsw i32 32, %13
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i)
  %cmp34 = icmp ult i32 %cond.i, 8
  %shl = shl i32 4096, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl)
  %cmp36 = icmp eq i32 %shl.i, %shl
  %sub = sext i1 %cmp36 to i32
  %spec.select = add nsw i32 %cond.i, %sub
  %cond41 = select i1 %cmp34, i32 %spec.select, i32 8
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %rx_rmbsize = getelementptr [2 x %struct.smc_stats_tech], ptr %12, i32 0, i32 1, i32 1
  %arrayidx59 = getelementptr [9 x i64], ptr %rx_rmbsize, i32 0, i32 %cond41
  %15 = ptrtoint ptr %arrayidx59 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx62 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx62, align 4
  %add63 = add i32 %21, %15
  %22 = inttoptr i32 %add63 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %add64 = add i64 %24, 1
  store i64 %add64, ptr %22, align 8
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool75.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool75.not, label %if.then79, label %do.body32.do.end82_crit_edge, !prof !98

do.body32.do.end82_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end82

if.then79:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %do.body32.do.end82_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #18, !srcloc !136
  br label %if.end91

if.end91:                                         ; preds = %do.end82, %do.body.if.end91_crit_edge
  br i1 %brmerge1852, label %if.end91.if.end183_crit_edge, label %do.body97

if.end91.if.end183_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end183

do.body97:                                        ; preds = %if.end91
  %shr101 = ashr exact i32 %shl.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv.i)
  %tobool.not.i1879 = icmp ugt i32 %conv.i, 17
  %26 = tail call i32 @llvm.ctlz.i32(i32 %shr101, i1 true) #18, !range !131
  %sub.i1880 = sub nuw nsw i32 32, %26
  %cond.i1881 = select i1 %tobool.not.i1879, i32 0, i32 %sub.i1880
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i1881)
  %cmp104 = icmp ult i32 %cond.i1881, 8
  %shl108 = shl i32 4096, %cond.i1881
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl108)
  %cmp109 = icmp eq i32 %shl.i, %shl108
  %sub112 = sext i1 %cmp109 to i32
  %spec.select1872 = add nsw i32 %cond.i1881, %sub112
  %cond118 = select i1 %cmp104, i32 %spec.select1872, i32 8
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %arrayidx143 = getelementptr [2 x %struct.smc_stats_tech], ptr %12, i32 0, i32 1
  %arrayidx145 = getelementptr [9 x i64], ptr %arrayidx143, i32 0, i32 %cond118
  %28 = ptrtoint ptr %arrayidx145 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1904 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i1904 to ptr
  %cpu148 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu148 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu148, align 4
  %arrayidx149 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx149, align 4
  %add150 = add i32 %34, %28
  %35 = inttoptr i32 %add150 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %35, align 8
  %add151 = add i64 %37, 1
  store i64 %add151, ptr %35, align 8
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1905 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1905)
  %tobool162.not = icmp eq i32 %and.i.i1905, 0
  br i1 %tobool162.not, label %if.then171, label %do.body97.do.end174_crit_edge, !prof !98

do.body97.do.end174_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end174

if.then171:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end174

do.end174:                                        ; preds = %if.then171, %do.body97.do.end174_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #18, !srcloc !136
  br label %if.end183

if.end183:                                        ; preds = %do.end174, %if.end91.if.end183_crit_edge
  br i1 %brmerge1854.pre-phi, label %if.end183.if.end276_crit_edge, label %do.body189

if.end183.if.end276_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end276

do.body189:                                       ; preds = %if.end183
  %shr193 = ashr exact i32 %shl.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv.i)
  %tobool.not.i1882 = icmp ugt i32 %conv.i, 17
  %39 = tail call i32 @llvm.ctlz.i32(i32 %shr193, i1 true) #18, !range !131
  %sub.i1883 = sub nuw nsw i32 32, %39
  %cond.i1884 = select i1 %tobool.not.i1882, i32 0, i32 %sub.i1883
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i1884)
  %cmp196 = icmp ult i32 %cond.i1884, 8
  %shl200 = shl i32 4096, %cond.i1884
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl200)
  %cmp201 = icmp eq i32 %shl.i, %shl200
  %sub204 = sext i1 %cmp201 to i32
  %spec.select1873 = add nsw i32 %cond.i1884, %sub204
  %cond210 = select i1 %cmp196, i32 %spec.select1873, i32 8
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %rx_rmbsize236 = getelementptr inbounds %struct.smc_stats_tech, ptr %12, i32 0, i32 1
  %arrayidx238 = getelementptr [9 x i64], ptr %rx_rmbsize236, i32 0, i32 %cond210
  %41 = ptrtoint ptr %arrayidx238 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1906 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i1906 to ptr
  %cpu241 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu241 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu241, align 4
  %arrayidx242 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx242, align 4
  %add243 = add i32 %47, %41
  %48 = inttoptr i32 %add243 to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %48, align 8
  %add244 = add i64 %50, 1
  store i64 %add244, ptr %48, align 8
  %51 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1907 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1907)
  %tobool255.not = icmp eq i32 %and.i.i1907, 0
  br i1 %tobool255.not, label %if.then264, label %do.body189.do.end267_crit_edge, !prof !98

do.body189.do.end267_crit_edge:                   ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end267

if.then264:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end267

do.end267:                                        ; preds = %if.then264, %do.body189.do.end267_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #18, !srcloc !136
  br label %if.end276

if.end276:                                        ; preds = %do.end267, %if.end183.if.end276_crit_edge
  br i1 %brmerge1855, label %if.end276.if.end368_crit_edge, label %do.body281

if.end276.if.end368_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end368

do.body281:                                       ; preds = %if.end276
  %shr285 = ashr exact i32 %shl.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv.i)
  %tobool.not.i1885 = icmp ugt i32 %conv.i, 17
  %52 = tail call i32 @llvm.ctlz.i32(i32 %shr285, i1 true) #18, !range !131
  %sub.i1886 = sub nuw nsw i32 32, %52
  %cond.i1887 = select i1 %tobool.not.i1885, i32 0, i32 %sub.i1886
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i1887)
  %cmp288 = icmp ult i32 %cond.i1887, 8
  %shl292 = shl i32 4096, %cond.i1887
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl292)
  %cmp293 = icmp eq i32 %shl.i, %shl292
  %sub296 = sext i1 %cmp293 to i32
  %spec.select1874 = add nsw i32 %cond.i1887, %sub296
  %cond302 = select i1 %cmp288, i32 %spec.select1874, i32 8
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %arrayidx330 = getelementptr [9 x i64], ptr %12, i32 0, i32 %cond302
  %54 = ptrtoint ptr %arrayidx330 to i32
  %55 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1908 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i1908 to ptr
  %cpu333 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cpu333 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu333, align 4
  %arrayidx334 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx334, align 4
  %add335 = add i32 %60, %54
  %61 = inttoptr i32 %add335 to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %61, align 8
  %add336 = add i64 %63, 1
  store i64 %add336, ptr %61, align 8
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1909 = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1909)
  %tobool347.not = icmp eq i32 %and.i.i1909, 0
  br i1 %tobool347.not, label %if.then356, label %do.body281.do.end359_crit_edge, !prof !98

do.body281.do.end359_crit_edge:                   ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end359

if.then356:                                       ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end359

do.end359:                                        ; preds = %if.then356, %do.body281.do.end359_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #18, !srcloc !136
  br label %if.end368

if.end368:                                        ; preds = %do.end359, %if.end276.if.end368_crit_edge
  %65 = ptrtoint ptr %skc_net.i1932 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skc_net.i1932, align 4
  %smc375 = getelementptr inbounds %struct.net, ptr %66, i32 0, i32 55
  %67 = ptrtoint ptr %smc375 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %smc375, align 4
  br i1 %6, label %do.body390, label %if.end368.if.end449_crit_edge

if.end368.if.end449_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end449

do.body390:                                       ; preds = %if.end368
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %reuse_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %68, i32 0, i32 1, i32 5, i32 4
  %70 = ptrtoint ptr %reuse_cnt to i32
  %71 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1911 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i1911 to ptr
  %cpu416 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %cpu416 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu416, align 4
  %arrayidx417 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx417, align 4
  %add418 = add i32 %76, %70
  %77 = inttoptr i32 %add418 to ptr
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %77, align 8
  %add419 = add i64 %79, 1
  store i64 %add419, ptr %77, align 8
  %80 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1912 = and i32 %80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1912)
  %tobool430.not = icmp eq i32 %and.i.i1912, 0
  br i1 %tobool430.not, label %if.then439, label %do.body390.do.end442_crit_edge, !prof !98

do.body390.do.end442_crit_edge:                   ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end442

if.then439:                                       ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end442

do.end442:                                        ; preds = %if.then439, %do.body390.do.end442_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %69) #18, !srcloc !136
  br label %if.end449

if.end449:                                        ; preds = %do.end442, %if.end368.if.end449_crit_edge
  br i1 %brmerge1852, label %if.end449.if.end516_crit_edge, label %do.body456

if.end449.if.end516_crit_edge:                    ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end516

do.body456:                                       ; preds = %if.end449
  %81 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %reuse_cnt480 = getelementptr [2 x %struct.smc_stats_tech], ptr %68, i32 0, i32 1, i32 4, i32 4
  %82 = ptrtoint ptr %reuse_cnt480 to i32
  %83 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1913 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i1913 to ptr
  %cpu483 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %cpu483 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cpu483, align 4
  %arrayidx484 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx484, align 4
  %add485 = add i32 %88, %82
  %89 = inttoptr i32 %add485 to ptr
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %89, align 8
  %add486 = add i64 %91, 1
  store i64 %add486, ptr %89, align 8
  %92 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1914 = and i32 %92, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1914)
  %tobool497.not = icmp eq i32 %and.i.i1914, 0
  br i1 %tobool497.not, label %if.then506, label %do.body456.do.end509_crit_edge, !prof !98

do.body456.do.end509_crit_edge:                   ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end509

if.then506:                                       ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end509

do.end509:                                        ; preds = %if.then506, %do.body456.do.end509_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %81) #18, !srcloc !136
  br label %if.end516

if.end516:                                        ; preds = %do.end509, %if.end449.if.end516_crit_edge
  br i1 %brmerge1854.pre-phi, label %if.end516.if.end584_crit_edge, label %do.body523

if.end516.if.end584_crit_edge:                    ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end584

do.body523:                                       ; preds = %if.end516
  %93 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %reuse_cnt548 = getelementptr inbounds %struct.smc_stats_tech, ptr %68, i32 0, i32 5, i32 4
  %94 = ptrtoint ptr %reuse_cnt548 to i32
  %95 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1915 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i1915 to ptr
  %cpu551 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %cpu551 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cpu551, align 4
  %arrayidx552 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx552, align 4
  %add553 = add i32 %100, %94
  %101 = inttoptr i32 %add553 to ptr
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %101, align 8
  %add554 = add i64 %103, 1
  store i64 %add554, ptr %101, align 8
  %104 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1916 = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1916)
  %tobool565.not = icmp eq i32 %and.i.i1916, 0
  br i1 %tobool565.not, label %if.then574, label %do.body523.do.end577_crit_edge, !prof !98

do.body523.do.end577_crit_edge:                   ; preds = %do.body523
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end577

if.then574:                                       ; preds = %do.body523
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end577

do.end577:                                        ; preds = %if.then574, %do.body523.do.end577_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %93) #18, !srcloc !136
  br label %if.end584

if.end584:                                        ; preds = %do.end577, %if.end516.if.end584_crit_edge
  br i1 %brmerge1855, label %if.end584.for.end_crit_edge, label %do.body590

if.end584.for.end_crit_edge:                      ; preds = %if.end584
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

do.body590:                                       ; preds = %if.end584
  %105 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %reuse_cnt615 = getelementptr inbounds %struct.smc_stats_tech, ptr %68, i32 0, i32 4, i32 4
  %106 = ptrtoint ptr %reuse_cnt615 to i32
  %107 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1917 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i1917 to ptr
  %cpu618 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %cpu618 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cpu618, align 4
  %arrayidx619 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %110
  %111 = ptrtoint ptr %arrayidx619 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx619, align 4
  %add620 = add i32 %112, %106
  %113 = inttoptr i32 %add620 to ptr
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %113, align 8
  %add621 = add i64 %115, 1
  store i64 %add621, ptr %113, align 8
  %116 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1918 = and i32 %116, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1918)
  %tobool632.not = icmp eq i32 %and.i.i1918, 0
  br i1 %tobool632.not, label %if.then641, label %do.body590.do.end644_crit_edge, !prof !98

do.body590.do.end644_crit_edge:                   ; preds = %do.body590
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end644

if.then641:                                       ; preds = %do.body590
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end644

do.end644:                                        ; preds = %if.then641, %do.body590.do.end644_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %105) #18, !srcloc !136
  br label %for.end

if.end654:                                        ; preds = %smc_buf_get_slot.exit.if.end654_crit_edge, %smc_buf_get_slot.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %117 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3520, i32 noundef 88) #25
  %tobool.not.i1919 = icmp eq ptr %call7.i.i.i, null
  br i1 %is_smcd, label %if.then656, label %if.else659

if.then656:                                       ; preds = %if.end654
  br i1 %tobool.not.i1919, label %if.then656.if.then1635_crit_edge, label %if.end.i1920

if.then656.if.then1635_crit_edge:                 ; preds = %if.then656
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1635

if.end.i1920:                                     ; preds = %if.then656
  br i1 %is_rmb, label %if.then3.i, label %if.end8.i.i.i

if.then3.i:                                       ; preds = %if.end.i1920
  %call4.i = tail call i32 @smc_ism_register_dmb(ptr noundef %1, i32 noundef %shl.i, ptr noundef nonnull %call7.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end15.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then3.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #18
  %118 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %if.end13.i [
    i32 -12, label %if.then6.i.if.then669_crit_edge
    i32 -28, label %if.then11.i
  ]

if.then6.i.if.then669_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then669

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then669

if.end13.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then669

if.end15.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %119 = load ptr, ptr @mem_map, align 4
  %cpu_addr.i = getelementptr inbounds %struct.smc_buf_desc, ptr %call7.i.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cpu_addr.i, align 8
  %122 = ptrtoint ptr %121 to i32
  %sub.i1921 = add i32 %122, 1073741824
  %shr.i = lshr i32 %sub.i1921, 12
  %add.ptr.i = getelementptr %struct.page, ptr %119, i32 %shr.i
  %pages.i = getelementptr inbounds %struct.smc_buf_desc, ptr %call7.i.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr.i, ptr %pages.i, align 4
  %sub17.i = add i32 %shl.i, -32
  br label %if.end662

if.end8.i.i.i:                                    ; preds = %if.end.i1920
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl.i, i32 noundef 601536) #24
  %cpu_addr19.i = getelementptr inbounds %struct.smc_buf_desc, ptr %call7.i.i.i, i32 0, i32 1
  %124 = ptrtoint ptr %cpu_addr19.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call9.i.i.i, ptr %cpu_addr19.i, align 8
  %tobool21.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end8.i.i.i.if.end662_crit_edge

if.end8.i.i.i.if.end662_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end662

if.then22.i:                                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #18
  br label %if.then669

if.else659:                                       ; preds = %if.end654
  br i1 %tobool.not.i1919, label %if.else659.if.then1635_crit_edge, label %get_order.exit.i

if.else659.if.then1635_crit_edge:                 ; preds = %if.else659
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1635

get_order.exit.i:                                 ; preds = %if.else659
  %dec.i.i = add i32 %shl.i, -1
  %shr.i.i = lshr i32 %dec.i.i, 12
  %125 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #18, !range !131
  %sub.i.i.i = sub nuw nsw i32 32, %125
  %order.i = getelementptr inbounds %struct.smc_buf_desc, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 24
  %126 = ptrtoint ptr %order.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %sub.i.i.i, ptr %order.i, align 8
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 863680, i32 noundef %sub.i.i.i, i32 noundef 0, ptr noundef null) #18
  %pages.i1927 = getelementptr inbounds %struct.smc_buf_desc, ptr %call7.i.i.i, i32 0, i32 2
  %127 = ptrtoint ptr %pages.i1927 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call38.i.i.i.i, ptr %pages.i1927, align 4
  %tobool6.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %get_order.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #18
  br label %if.then669

if.end9.i:                                        ; preds = %get_order.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %call11.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #18
  %cpu_addr.i1928 = getelementptr inbounds %struct.smc_buf_desc, ptr %call7.i.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %cpu_addr.i1928 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call11.i, ptr %cpu_addr.i1928, align 8
  br label %if.end662

if.end662:                                        ; preds = %if.end9.i, %if.end8.i.i.i.if.end662_crit_edge, %if.end15.i
  %shl.i.sink = phi i32 [ %shl.i, %if.end9.i ], [ %sub17.i, %if.end15.i ], [ %shl.i, %if.end8.i.i.i.if.end662_crit_edge ]
  %len.i1929 = getelementptr inbounds %struct.smc_buf_desc, ptr %call7.i.i.i, i32 0, i32 3
  %129 = ptrtoint ptr %len.i1929 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %shl.i.sink, ptr %len.i1929, align 8
  %cmp664 = icmp eq ptr %call7.i.i.i, inttoptr (i32 -12 to ptr)
  br i1 %cmp664, label %if.end662.if.then1635_crit_edge, label %if.end667

if.end662.if.then1635_crit_edge:                  ; preds = %if.end662
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1635

if.end667:                                        ; preds = %if.end662
  %cmp.i1931 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1931, label %if.end667.if.then669_crit_edge, label %do.body960

if.end667.if.then669_crit_edge:                   ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then669

if.then669:                                       ; preds = %if.end667.if.then669_crit_edge, %if.then7.i, %if.then22.i, %if.end13.i, %if.then11.i, %if.then6.i.if.then669_crit_edge
  %buf_desc.119952003 = phi ptr [ %call7.i.i.i, %if.end667.if.then669_crit_edge ], [ inttoptr (i32 -11 to ptr), %if.then7.i ], [ inttoptr (i32 -11 to ptr), %if.then6.i.if.then669_crit_edge ], [ inttoptr (i32 -11 to ptr), %if.then22.i ], [ inttoptr (i32 -5 to ptr), %if.end13.i ], [ inttoptr (i32 -28 to ptr), %if.then11.i ]
  br i1 %is_dgraded.0.off01977, label %if.then669.for.inc_crit_edge, label %if.then671

if.then669.for.inc_crit_edge:                     ; preds = %if.then669
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then671:                                       ; preds = %if.then669
  %130 = ptrtoint ptr %skc_net.i1932 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %skc_net.i1932, align 4
  %smc677 = getelementptr inbounds %struct.net, ptr %131, i32 0, i32 55
  %132 = ptrtoint ptr %smc677 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %smc677, align 4
  br i1 %6, label %do.body692, label %if.then671.if.end752_crit_edge

if.then671.if.end752_crit_edge:                   ; preds = %if.then671
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end752

do.body692:                                       ; preds = %if.then671
  %134 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %dgrade_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %133, i32 0, i32 1, i32 5, i32 6
  %135 = ptrtoint ptr %dgrade_cnt to i32
  %136 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1933 = and i32 %136, -16384
  %137 = inttoptr i32 %and.i1933 to ptr
  %cpu719 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %cpu719 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cpu719, align 4
  %arrayidx720 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx720 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx720, align 4
  %add721 = add i32 %141, %135
  %142 = inttoptr i32 %add721 to ptr
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %142, align 8
  %add722 = add i64 %144, 1
  store i64 %add722, ptr %142, align 8
  %145 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1934 = and i32 %145, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1934)
  %tobool733.not = icmp eq i32 %and.i.i1934, 0
  br i1 %tobool733.not, label %if.then742, label %do.body692.do.end745_crit_edge, !prof !98

do.body692.do.end745_crit_edge:                   ; preds = %do.body692
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end745

if.then742:                                       ; preds = %do.body692
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end745

do.end745:                                        ; preds = %if.then742, %do.body692.do.end745_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %134) #18, !srcloc !136
  br label %if.end752

if.end752:                                        ; preds = %do.end745, %if.then671.if.end752_crit_edge
  br i1 %brmerge1852, label %if.end752.if.end820_crit_edge, label %do.body759

if.end752.if.end820_crit_edge:                    ; preds = %if.end752
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end820

do.body759:                                       ; preds = %if.end752
  %146 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %dgrade_cnt784 = getelementptr [2 x %struct.smc_stats_tech], ptr %133, i32 0, i32 1, i32 4, i32 6
  %147 = ptrtoint ptr %dgrade_cnt784 to i32
  %148 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1935 = and i32 %148, -16384
  %149 = inttoptr i32 %and.i1935 to ptr
  %cpu787 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %cpu787 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cpu787, align 4
  %arrayidx788 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %151
  %152 = ptrtoint ptr %arrayidx788 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx788, align 4
  %add789 = add i32 %153, %147
  %154 = inttoptr i32 %add789 to ptr
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %154, align 8
  %add790 = add i64 %156, 1
  store i64 %add790, ptr %154, align 8
  %157 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1936 = and i32 %157, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1936)
  %tobool801.not = icmp eq i32 %and.i.i1936, 0
  br i1 %tobool801.not, label %if.then810, label %do.body759.do.end813_crit_edge, !prof !98

do.body759.do.end813_crit_edge:                   ; preds = %do.body759
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end813

if.then810:                                       ; preds = %do.body759
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end813

do.end813:                                        ; preds = %if.then810, %do.body759.do.end813_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %146) #18, !srcloc !136
  br label %if.end820

if.end820:                                        ; preds = %do.end813, %if.end752.if.end820_crit_edge
  br i1 %brmerge1854.pre-phi, label %if.end820.if.end888_crit_edge, label %do.body827

if.end820.if.end888_crit_edge:                    ; preds = %if.end820
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end888

do.body827:                                       ; preds = %if.end820
  %158 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %dgrade_cnt852 = getelementptr inbounds %struct.smc_stats_tech, ptr %133, i32 0, i32 5, i32 6
  %159 = ptrtoint ptr %dgrade_cnt852 to i32
  %160 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1937 = and i32 %160, -16384
  %161 = inttoptr i32 %and.i1937 to ptr
  %cpu855 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %cpu855 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cpu855, align 4
  %arrayidx856 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %163
  %164 = ptrtoint ptr %arrayidx856 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx856, align 4
  %add857 = add i32 %165, %159
  %166 = inttoptr i32 %add857 to ptr
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %166, align 8
  %add858 = add i64 %168, 1
  store i64 %add858, ptr %166, align 8
  %169 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1938 = and i32 %169, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1938)
  %tobool869.not = icmp eq i32 %and.i.i1938, 0
  br i1 %tobool869.not, label %if.then878, label %do.body827.do.end881_crit_edge, !prof !98

do.body827.do.end881_crit_edge:                   ; preds = %do.body827
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end881

if.then878:                                       ; preds = %do.body827
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end881

do.end881:                                        ; preds = %if.then878, %do.body827.do.end881_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %158) #18, !srcloc !136
  br label %if.end888

if.end888:                                        ; preds = %do.end881, %if.end820.if.end888_crit_edge
  br i1 %brmerge1855, label %if.end888.for.inc_crit_edge, label %do.body894

if.end888.for.inc_crit_edge:                      ; preds = %if.end888
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.body894:                                       ; preds = %if.end888
  %170 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %dgrade_cnt919 = getelementptr inbounds %struct.smc_stats_tech, ptr %133, i32 0, i32 4, i32 6
  %171 = ptrtoint ptr %dgrade_cnt919 to i32
  %172 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1939 = and i32 %172, -16384
  %173 = inttoptr i32 %and.i1939 to ptr
  %cpu922 = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 3
  %174 = ptrtoint ptr %cpu922 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %cpu922, align 4
  %arrayidx923 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %175
  %176 = ptrtoint ptr %arrayidx923 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx923, align 4
  %add924 = add i32 %177, %171
  %178 = inttoptr i32 %add924 to ptr
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %178, align 8
  %add925 = add i64 %180, 1
  store i64 %add925, ptr %178, align 8
  %181 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1940 = and i32 %181, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1940)
  %tobool936.not = icmp eq i32 %and.i.i1940, 0
  br i1 %tobool936.not, label %if.then945, label %do.body894.do.end948_crit_edge, !prof !98

do.body894.do.end948_crit_edge:                   ; preds = %do.body894
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end948

if.then945:                                       ; preds = %do.body894
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end948

do.end948:                                        ; preds = %if.then945, %do.body894.do.end948_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %170) #18, !srcloc !136
  br label %for.inc

do.body960:                                       ; preds = %if.end667
  %182 = ptrtoint ptr %skc_net.i1932 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %skc_net.i1932, align 4
  %smc965 = getelementptr inbounds %struct.net, ptr %183, i32 0, i32 55
  %184 = ptrtoint ptr %smc965 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %smc965, align 4
  br i1 %6, label %do.body980, label %do.body960.if.end1040_crit_edge

do.body960.if.end1040_crit_edge:                  ; preds = %do.body960
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1040

do.body980:                                       ; preds = %do.body960
  %186 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %alloc_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %185, i32 0, i32 1, i32 5, i32 5
  %187 = ptrtoint ptr %alloc_cnt to i32
  %188 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1942 = and i32 %188, -16384
  %189 = inttoptr i32 %and.i1942 to ptr
  %cpu1007 = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %cpu1007 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cpu1007, align 4
  %arrayidx1008 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %191
  %192 = ptrtoint ptr %arrayidx1008 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx1008, align 4
  %add1009 = add i32 %193, %187
  %194 = inttoptr i32 %add1009 to ptr
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %194, align 8
  %add1010 = add i64 %196, 1
  store i64 %add1010, ptr %194, align 8
  %197 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1943 = and i32 %197, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1943)
  %tobool1021.not = icmp eq i32 %and.i.i1943, 0
  br i1 %tobool1021.not, label %if.then1030, label %do.body980.do.end1033_crit_edge, !prof !98

do.body980.do.end1033_crit_edge:                  ; preds = %do.body980
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end1033

if.then1030:                                      ; preds = %do.body980
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end1033

do.end1033:                                       ; preds = %if.then1030, %do.body980.do.end1033_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %186) #18, !srcloc !136
  br label %if.end1040

if.end1040:                                       ; preds = %do.end1033, %do.body960.if.end1040_crit_edge
  br i1 %brmerge1852, label %if.end1040.if.end1108_crit_edge, label %do.body1047

if.end1040.if.end1108_crit_edge:                  ; preds = %if.end1040
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1108

do.body1047:                                      ; preds = %if.end1040
  %198 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %alloc_cnt1072 = getelementptr [2 x %struct.smc_stats_tech], ptr %185, i32 0, i32 1, i32 4, i32 5
  %199 = ptrtoint ptr %alloc_cnt1072 to i32
  %200 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1944 = and i32 %200, -16384
  %201 = inttoptr i32 %and.i1944 to ptr
  %cpu1075 = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %cpu1075 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cpu1075, align 4
  %arrayidx1076 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %203
  %204 = ptrtoint ptr %arrayidx1076 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx1076, align 4
  %add1077 = add i32 %205, %199
  %206 = inttoptr i32 %add1077 to ptr
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %206, align 8
  %add1078 = add i64 %208, 1
  store i64 %add1078, ptr %206, align 8
  %209 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1945 = and i32 %209, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1945)
  %tobool1089.not = icmp eq i32 %and.i.i1945, 0
  br i1 %tobool1089.not, label %if.then1098, label %do.body1047.do.end1101_crit_edge, !prof !98

do.body1047.do.end1101_crit_edge:                 ; preds = %do.body1047
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end1101

if.then1098:                                      ; preds = %do.body1047
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end1101

do.end1101:                                       ; preds = %if.then1098, %do.body1047.do.end1101_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %198) #18, !srcloc !136
  br label %if.end1108

if.end1108:                                       ; preds = %do.end1101, %if.end1040.if.end1108_crit_edge
  br i1 %brmerge1854.pre-phi, label %if.end1108.if.end1176_crit_edge, label %do.body1115

if.end1108.if.end1176_crit_edge:                  ; preds = %if.end1108
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1176

do.body1115:                                      ; preds = %if.end1108
  %210 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %alloc_cnt1140 = getelementptr inbounds %struct.smc_stats_tech, ptr %185, i32 0, i32 5, i32 5
  %211 = ptrtoint ptr %alloc_cnt1140 to i32
  %212 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1946 = and i32 %212, -16384
  %213 = inttoptr i32 %and.i1946 to ptr
  %cpu1143 = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %cpu1143 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %cpu1143, align 4
  %arrayidx1144 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %215
  %216 = ptrtoint ptr %arrayidx1144 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx1144, align 4
  %add1145 = add i32 %217, %211
  %218 = inttoptr i32 %add1145 to ptr
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %218, align 8
  %add1146 = add i64 %220, 1
  store i64 %add1146, ptr %218, align 8
  %221 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1947 = and i32 %221, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1947)
  %tobool1157.not = icmp eq i32 %and.i.i1947, 0
  br i1 %tobool1157.not, label %if.then1166, label %do.body1115.do.end1169_crit_edge, !prof !98

do.body1115.do.end1169_crit_edge:                 ; preds = %do.body1115
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end1169

if.then1166:                                      ; preds = %do.body1115
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end1169

do.end1169:                                       ; preds = %if.then1166, %do.body1115.do.end1169_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %210) #18, !srcloc !136
  br label %if.end1176

if.end1176:                                       ; preds = %do.end1169, %if.end1108.if.end1176_crit_edge
  br i1 %brmerge1855, label %if.end1176.if.end1243_crit_edge, label %do.body1182

if.end1176.if.end1243_crit_edge:                  ; preds = %if.end1176
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1243

do.body1182:                                      ; preds = %if.end1176
  %222 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %alloc_cnt1207 = getelementptr inbounds %struct.smc_stats_tech, ptr %185, i32 0, i32 4, i32 5
  %223 = ptrtoint ptr %alloc_cnt1207 to i32
  %224 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1948 = and i32 %224, -16384
  %225 = inttoptr i32 %and.i1948 to ptr
  %cpu1210 = getelementptr inbounds %struct.thread_info, ptr %225, i32 0, i32 3
  %226 = ptrtoint ptr %cpu1210 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %cpu1210, align 4
  %arrayidx1211 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %227
  %228 = ptrtoint ptr %arrayidx1211 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx1211, align 4
  %add1212 = add i32 %229, %223
  %230 = inttoptr i32 %add1212 to ptr
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %230, align 8
  %add1213 = add i64 %232, 1
  store i64 %add1213, ptr %230, align 8
  %233 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1949 = and i32 %233, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1949)
  %tobool1224.not = icmp eq i32 %and.i.i1949, 0
  br i1 %tobool1224.not, label %if.then1233, label %do.body1182.do.end1236_crit_edge, !prof !98

do.body1182.do.end1236_crit_edge:                 ; preds = %do.body1182
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end1236

if.then1233:                                      ; preds = %do.body1182
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end1236

do.end1236:                                       ; preds = %if.then1233, %do.body1182.do.end1236_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %222) #18, !srcloc !136
  br label %if.end1243

if.end1243:                                       ; preds = %do.end1236, %if.end1176.if.end1243_crit_edge
  %234 = ptrtoint ptr %skc_net.i1932 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %skc_net.i1932, align 4
  %smc1251 = getelementptr inbounds %struct.net, ptr %235, i32 0, i32 55
  %236 = ptrtoint ptr %smc1251 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %smc1251, align 4
  br i1 %6, label %do.body1266, label %if.end1243.if.end1353_crit_edge

if.end1243.if.end1353_crit_edge:                  ; preds = %if.end1243
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1353

do.body1266:                                      ; preds = %if.end1243
  %shr1270 = ashr exact i32 %shl.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv.i)
  %tobool.not.i1888 = icmp ugt i32 %conv.i, 17
  %238 = tail call i32 @llvm.ctlz.i32(i32 %shr1270, i1 true) #18, !range !131
  %sub.i1889 = sub nuw nsw i32 32, %238
  %cond.i1890 = select i1 %tobool.not.i1888, i32 0, i32 %sub.i1889
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i1890)
  %cmp1273 = icmp ult i32 %cond.i1890, 8
  %shl1277 = shl i32 4096, %cond.i1890
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl1277)
  %cmp1278 = icmp eq i32 %shl.i, %shl1277
  %sub1281 = sext i1 %cmp1278 to i32
  %spec.select1875 = add nsw i32 %cond.i1890, %sub1281
  %cond1287 = select i1 %cmp1273, i32 %spec.select1875, i32 8
  %239 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %rx_rmbsize1313 = getelementptr [2 x %struct.smc_stats_tech], ptr %237, i32 0, i32 1, i32 1
  %arrayidx1315 = getelementptr [9 x i64], ptr %rx_rmbsize1313, i32 0, i32 %cond1287
  %240 = ptrtoint ptr %arrayidx1315 to i32
  %241 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1951 = and i32 %241, -16384
  %242 = inttoptr i32 %and.i1951 to ptr
  %cpu1318 = getelementptr inbounds %struct.thread_info, ptr %242, i32 0, i32 3
  %243 = ptrtoint ptr %cpu1318 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %cpu1318, align 4
  %arrayidx1319 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %244
  %245 = ptrtoint ptr %arrayidx1319 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx1319, align 4
  %add1320 = add i32 %246, %240
  %247 = inttoptr i32 %add1320 to ptr
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %247, align 8
  %add1321 = add i64 %249, 1
  store i64 %add1321, ptr %247, align 8
  %250 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1952 = and i32 %250, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1952)
  %tobool1332.not = icmp eq i32 %and.i.i1952, 0
  br i1 %tobool1332.not, label %if.then1341, label %do.body1266.do.end1344_crit_edge, !prof !98

do.body1266.do.end1344_crit_edge:                 ; preds = %do.body1266
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end1344

if.then1341:                                      ; preds = %do.body1266
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end1344

do.end1344:                                       ; preds = %if.then1341, %do.body1266.do.end1344_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %239) #18, !srcloc !136
  br label %if.end1353

if.end1353:                                       ; preds = %do.end1344, %if.end1243.if.end1353_crit_edge
  br i1 %brmerge1852, label %if.end1353.if.end1446_crit_edge, label %do.body1359

if.end1353.if.end1446_crit_edge:                  ; preds = %if.end1353
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1446

do.body1359:                                      ; preds = %if.end1353
  %shr1363 = ashr exact i32 %shl.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv.i)
  %tobool.not.i1891 = icmp ugt i32 %conv.i, 17
  %251 = tail call i32 @llvm.ctlz.i32(i32 %shr1363, i1 true) #18, !range !131
  %sub.i1892 = sub nuw nsw i32 32, %251
  %cond.i1893 = select i1 %tobool.not.i1891, i32 0, i32 %sub.i1892
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i1893)
  %cmp1366 = icmp ult i32 %cond.i1893, 8
  %shl1370 = shl i32 4096, %cond.i1893
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl1370)
  %cmp1371 = icmp eq i32 %shl.i, %shl1370
  %sub1374 = sext i1 %cmp1371 to i32
  %spec.select1876 = add nsw i32 %cond.i1893, %sub1374
  %cond1380 = select i1 %cmp1366, i32 %spec.select1876, i32 8
  %252 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %arrayidx1405 = getelementptr [2 x %struct.smc_stats_tech], ptr %237, i32 0, i32 1
  %arrayidx1408 = getelementptr [9 x i64], ptr %arrayidx1405, i32 0, i32 %cond1380
  %253 = ptrtoint ptr %arrayidx1408 to i32
  %254 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1953 = and i32 %254, -16384
  %255 = inttoptr i32 %and.i1953 to ptr
  %cpu1411 = getelementptr inbounds %struct.thread_info, ptr %255, i32 0, i32 3
  %256 = ptrtoint ptr %cpu1411 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %cpu1411, align 4
  %arrayidx1412 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %257
  %258 = ptrtoint ptr %arrayidx1412 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx1412, align 4
  %add1413 = add i32 %259, %253
  %260 = inttoptr i32 %add1413 to ptr
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %260, align 8
  %add1414 = add i64 %262, 1
  store i64 %add1414, ptr %260, align 8
  %263 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1954 = and i32 %263, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1954)
  %tobool1425.not = icmp eq i32 %and.i.i1954, 0
  br i1 %tobool1425.not, label %if.then1434, label %do.body1359.do.end1437_crit_edge, !prof !98

do.body1359.do.end1437_crit_edge:                 ; preds = %do.body1359
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end1437

if.then1434:                                      ; preds = %do.body1359
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end1437

do.end1437:                                       ; preds = %if.then1434, %do.body1359.do.end1437_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %252) #18, !srcloc !136
  br label %if.end1446

if.end1446:                                       ; preds = %do.end1437, %if.end1353.if.end1446_crit_edge
  br i1 %brmerge1854.pre-phi, label %if.end1446.if.end1539_crit_edge, label %do.body1452

if.end1446.if.end1539_crit_edge:                  ; preds = %if.end1446
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1539

do.body1452:                                      ; preds = %if.end1446
  %shr1456 = ashr exact i32 %shl.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv.i)
  %tobool.not.i1894 = icmp ugt i32 %conv.i, 17
  %264 = tail call i32 @llvm.ctlz.i32(i32 %shr1456, i1 true) #18, !range !131
  %sub.i1895 = sub nuw nsw i32 32, %264
  %cond.i1896 = select i1 %tobool.not.i1894, i32 0, i32 %sub.i1895
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i1896)
  %cmp1459 = icmp ult i32 %cond.i1896, 8
  %shl1463 = shl i32 4096, %cond.i1896
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl1463)
  %cmp1464 = icmp eq i32 %shl.i, %shl1463
  %sub1467 = sext i1 %cmp1464 to i32
  %spec.select1877 = add nsw i32 %cond.i1896, %sub1467
  %cond1473 = select i1 %cmp1459, i32 %spec.select1877, i32 8
  %265 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %rx_rmbsize1499 = getelementptr inbounds %struct.smc_stats_tech, ptr %237, i32 0, i32 1
  %arrayidx1501 = getelementptr [9 x i64], ptr %rx_rmbsize1499, i32 0, i32 %cond1473
  %266 = ptrtoint ptr %arrayidx1501 to i32
  %267 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1955 = and i32 %267, -16384
  %268 = inttoptr i32 %and.i1955 to ptr
  %cpu1504 = getelementptr inbounds %struct.thread_info, ptr %268, i32 0, i32 3
  %269 = ptrtoint ptr %cpu1504 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %cpu1504, align 4
  %arrayidx1505 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %270
  %271 = ptrtoint ptr %arrayidx1505 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx1505, align 4
  %add1506 = add i32 %272, %266
  %273 = inttoptr i32 %add1506 to ptr
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %273, align 8
  %add1507 = add i64 %275, 1
  store i64 %add1507, ptr %273, align 8
  %276 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1956 = and i32 %276, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1956)
  %tobool1518.not = icmp eq i32 %and.i.i1956, 0
  br i1 %tobool1518.not, label %if.then1527, label %do.body1452.do.end1530_crit_edge, !prof !98

do.body1452.do.end1530_crit_edge:                 ; preds = %do.body1452
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end1530

if.then1527:                                      ; preds = %do.body1452
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end1530

do.end1530:                                       ; preds = %if.then1527, %do.body1452.do.end1530_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %265) #18, !srcloc !136
  br label %if.end1539

if.end1539:                                       ; preds = %do.end1530, %if.end1446.if.end1539_crit_edge
  br i1 %brmerge1855, label %if.end1539.if.end1631_crit_edge, label %do.body1544

if.end1539.if.end1631_crit_edge:                  ; preds = %if.end1539
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1631

do.body1544:                                      ; preds = %if.end1539
  %shr1548 = ashr exact i32 %shl.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv.i)
  %tobool.not.i1897 = icmp ugt i32 %conv.i, 17
  %277 = tail call i32 @llvm.ctlz.i32(i32 %shr1548, i1 true) #18, !range !131
  %sub.i1898 = sub nuw nsw i32 32, %277
  %cond.i1899 = select i1 %tobool.not.i1897, i32 0, i32 %sub.i1898
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i1899)
  %cmp1551 = icmp ult i32 %cond.i1899, 8
  %shl1555 = shl i32 4096, %cond.i1899
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl1555)
  %cmp1556 = icmp eq i32 %shl.i, %shl1555
  %sub1559 = sext i1 %cmp1556 to i32
  %spec.select1878 = add nsw i32 %cond.i1899, %sub1559
  %cond1565 = select i1 %cmp1551, i32 %spec.select1878, i32 8
  %278 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !134
  %arrayidx1593 = getelementptr [9 x i64], ptr %237, i32 0, i32 %cond1565
  %279 = ptrtoint ptr %arrayidx1593 to i32
  %280 = tail call i32 @llvm.read_register.i32(metadata !88) #18
  %and.i1957 = and i32 %280, -16384
  %281 = inttoptr i32 %and.i1957 to ptr
  %cpu1596 = getelementptr inbounds %struct.thread_info, ptr %281, i32 0, i32 3
  %282 = ptrtoint ptr %cpu1596 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %cpu1596, align 4
  %arrayidx1597 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %283
  %284 = ptrtoint ptr %arrayidx1597 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx1597, align 4
  %add1598 = add i32 %285, %279
  %286 = inttoptr i32 %add1598 to ptr
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %286, align 8
  %add1599 = add i64 %288, 1
  store i64 %add1599, ptr %286, align 8
  %289 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !135
  %and.i.i1958 = and i32 %289, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1958)
  %tobool1610.not = icmp eq i32 %and.i.i1958, 0
  br i1 %tobool1610.not, label %if.then1619, label %do.body1544.do.end1622_crit_edge, !prof !98

do.body1544.do.end1622_crit_edge:                 ; preds = %do.body1544
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end1622

if.then1619:                                      ; preds = %do.body1544
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end1622

do.end1622:                                       ; preds = %if.then1619, %do.body1544.do.end1622_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %278) #18, !srcloc !136
  br label %if.end1631

if.end1631:                                       ; preds = %do.end1622, %if.end1539.if.end1631_crit_edge
  %used = getelementptr inbounds %struct.smc_buf_desc, ptr %call7.i.i.i, i32 0, i32 4
  %290 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 1, ptr %used, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.0, i32 noundef 0) #18
  %291 = ptrtoint ptr %buf_list.0 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %buf_list.0, align 4
  %call.i.i1959 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %buf_list.0, ptr noundef %292) #18
  br i1 %call.i.i1959, label %if.end.i.i1960, label %if.end1631.list_add.exit_crit_edge

if.end1631.list_add.exit_crit_edge:               ; preds = %if.end1631
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit

if.end.i.i1960:                                   ; preds = %if.end1631
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %292, i32 0, i32 1
  %293 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call7.i.i.i, ptr %prev1.i.i, align 4
  %294 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %292, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %295 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %buf_list.0, ptr %prev3.i.i, align 4
  %296 = ptrtoint ptr %buf_list.0 to i32
  call void @__asan_store4_noabort(i32 %296)
  store volatile ptr %call7.i.i.i, ptr %buf_list.0, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i1960, %if.end1631.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.0) #18
  br label %for.end

for.inc:                                          ; preds = %do.end948, %if.end888.for.inc_crit_edge, %if.then669.for.inc_crit_edge
  %dec = add nsw i32 %bufsize_short.01978, -1
  %cmp = icmp sgt i32 %bufsize_short.01978, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_add.exit, %do.end644, %if.end584.for.end_crit_edge
  %bufsize_short.01972 = phi i32 [ %bufsize_short.01978, %list_add.exit ], [ %bufsize_short.01978, %if.end584.for.end_crit_edge ], [ %bufsize_short.01978, %do.end644 ], [ -1, %for.inc.for.end_crit_edge ]
  %buf_desc.2 = phi ptr [ %call7.i.i.i, %list_add.exit ], [ %buf_slot.0.i, %if.end584.for.end_crit_edge ], [ %buf_slot.0.i, %do.end644 ], [ %buf_desc.119952003, %for.inc.for.end_crit_edge ]
  %cmp.i1961 = icmp ugt ptr %buf_desc.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1961, label %for.end.if.then1635_crit_edge, label %if.end1637

for.end.if.then1635_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1635

if.then1635:                                      ; preds = %for.end.if.then1635_crit_edge, %if.end662.if.then1635_crit_edge, %if.else659.if.then1635_crit_edge, %if.then656.if.then1635_crit_edge
  %buf_desc.22008 = phi ptr [ %buf_desc.2, %for.end.if.then1635_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end662.if.then1635_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then656.if.then1635_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else659.if.then1635_crit_edge ]
  %297 = ptrtoint ptr %buf_desc.22008 to i32
  br label %cleanup

if.end1637:                                       ; preds = %for.end
  br i1 %is_smcd, label %if.end1637.if.end1645_crit_edge, label %if.then1639

if.end1637.if.end1645_crit_edge:                  ; preds = %if.end1637
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1645

if.then1639:                                      ; preds = %if.end1637
  %llc_conf_mutex.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %llc_conf_mutex.i, i32 noundef 0) #18
  %state.i.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %298 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %299)
  %switch.i.i = icmp ugt i32 %299, 1
  br i1 %switch.i.i, label %if.end.i1962, label %if.then1639.for.inc.i_crit_edge

if.then1639.for.inc.i_crit_edge:                  ; preds = %if.then1639
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i1962:                                     ; preds = %if.then1639
  %arrayidx.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0
  %call2.i = tail call fastcc i32 @smcr_buf_map_link(ptr noundef %buf_desc.2, i1 noundef zeroext %is_rmb, ptr noundef %arrayidx.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i1962.for.inc.i_crit_edge, label %if.end.i1962.if.then1643_crit_edge

if.end.i1962.if.then1643_crit_edge:               ; preds = %if.end.i1962
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1643

if.end.i1962.for.inc.i_crit_edge:                 ; preds = %if.end.i1962
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i1962.for.inc.i_crit_edge, %if.then1639.for.inc.i_crit_edge
  %state.i.1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %300 = ptrtoint ptr %state.i.1.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %state.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %301)
  %switch.i.1.i = icmp ugt i32 %301, 1
  br i1 %switch.i.1.i, label %if.end.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1
  %call2.1.i = tail call fastcc i32 @smcr_buf_map_link(ptr noundef %buf_desc.2, i1 noundef zeroext %is_rmb, ptr noundef %arrayidx.1.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i)
  %tobool3.not.1.i = icmp eq i32 %call2.1.i, 0
  br i1 %tobool3.not.1.i, label %if.end.1.i.for.inc.1.i_crit_edge, label %if.end.1.i.if.then1643_crit_edge

if.end.1.i.if.then1643_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1643

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %state.i.2.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %302 = ptrtoint ptr %state.i.2.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %state.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %303)
  %switch.i.2.i = icmp ugt i32 %303, 1
  br i1 %switch.i.2.i, label %if.end.2.i, label %for.inc.1.i.smcr_buf_map_usable_links.exit_crit_edge

for.inc.1.i.smcr_buf_map_usable_links.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_buf_map_usable_links.exit

if.end.2.i:                                       ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2
  %call2.2.i = tail call fastcc i32 @smcr_buf_map_link(ptr noundef %buf_desc.2, i1 noundef zeroext %is_rmb, ptr noundef %arrayidx.2.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2.i)
  %tobool3.not.2.i = icmp eq i32 %call2.2.i, 0
  br i1 %tobool3.not.2.i, label %if.end.2.i.smcr_buf_map_usable_links.exit_crit_edge, label %if.end.2.i.if.then1643_crit_edge

if.end.2.i.if.then1643_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1643

if.end.2.i.smcr_buf_map_usable_links.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_buf_map_usable_links.exit

smcr_buf_map_usable_links.exit:                   ; preds = %if.end.2.i.smcr_buf_map_usable_links.exit_crit_edge, %for.inc.1.i.smcr_buf_map_usable_links.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %llc_conf_mutex.i) #18
  br label %if.end1645

if.then1643:                                      ; preds = %if.end.2.i.if.then1643_crit_edge, %if.end.1.i.if.then1643_crit_edge, %if.end.i1962.if.then1643_crit_edge
  tail call void @mutex_unlock(ptr noundef %llc_conf_mutex.i) #18
  tail call fastcc void @smcr_buf_unuse(ptr noundef %buf_desc.2, ptr noundef %1)
  br label %cleanup

if.end1645:                                       ; preds = %smcr_buf_map_usable_links.exit, %if.end1637.if.end1645_crit_edge
  br i1 %is_rmb, label %if.then1647, label %if.else1654

if.then1647:                                      ; preds = %if.end1645
  %rmb_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 9
  %304 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %buf_desc.2, ptr %rmb_desc, align 4
  %rmbe_size_short = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 10
  %305 = ptrtoint ptr %rmbe_size_short to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %bufsize_short.01972, ptr %rmbe_size_short, align 8
  %mul = shl i32 %shl.i, 1
  %306 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %mul, ptr %sk_rcvbuf, align 8
  %bytes_to_rcv = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bytes_to_rcv, i32 noundef 4) #18
  %307 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_store4_noabort(i32 %307)
  store volatile i32 0, ptr %bytes_to_rcv, align 4
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc.2, i32 0, i32 3
  %308 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23040, i32 %309)
  %cmp.i1963 = icmp slt i32 %309, 23040
  %div.i = sdiv i32 %309, 10
  %cond.i1964 = select i1 %cmp.i1963, i32 %div.i, i32 2304
  %rmbe_update_limit = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 11
  %310 = ptrtoint ptr %rmbe_update_limit to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %cond.i1964, ptr %rmbe_update_limit, align 4
  br i1 %is_smcd, label %if.then1652, label %if.then1647.cleanup_crit_edge

if.then1647.cleanup_crit_edge:                    ; preds = %if.then1647
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then1652:                                      ; preds = %if.then1647
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_ism_set_conn(ptr noundef %conn2) #18
  br label %cleanup

if.else1654:                                      ; preds = %if.end1645
  call void @__sanitizer_cov_trace_pc() #20
  %sndbuf_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 8
  %311 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %buf_desc.2, ptr %sndbuf_desc, align 8
  %mul1655 = shl i32 %shl.i, 1
  %312 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %mul1655, ptr %sk_sndbuf, align 4
  %sndbuf_space = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 17
  %call.i.i1900 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sndbuf_space, i32 noundef 4) #18
  %313 = ptrtoint ptr %sndbuf_space to i32
  call void @__asan_store4_noabort(i32 %313)
  store volatile i32 %shl.i, ptr %sndbuf_space, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else1654, %if.then1652, %if.then1647.cleanup_crit_edge, %if.then1643, %if.then1635
  %retval.0 = phi i32 [ %297, %if.then1635 ], [ -12, %if.then1643 ], [ 0, %if.then1647.cleanup_crit_edge ], [ 0, %if.then1652 ], [ 0, %if.else1654 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_buf_free(ptr noundef %lgr, i1 noundef zeroext %is_rmb, ptr noundef %buf_desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 15
  %0 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %is_rmb, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %len.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 3
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 8
  %add.i = add i32 %3, 32
  store i32 %add.i, ptr %len.i, align 8
  %smcd.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1
  %4 = ptrtoint ptr %smcd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smcd.i, align 8
  %call.i = tail call i32 @smc_ism_unregister_dmb(ptr noundef %5, ptr noundef %buf_desc) #18
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %cpu_addr.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 1
  %6 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_addr.i, align 8
  tail call void @kfree(ptr noundef %7) #18
  br label %if.end

if.else:                                          ; preds = %entry
  %is_map_ib48.i.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 5, i32 1, i32 32
  %is_reg_mr.i.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 5, i32 1, i32 29
  %mr_rx.i.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 5, i32 1, i32 12
  %8 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0
  %link_idx.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 46
  %9 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %link_idx.i.i, align 1
  %idxprom.i.i = zext i8 %10 to i32
  br i1 %is_rmb, label %if.end.i.i, label %if.end.thread.i.i

if.end.i.i:                                       ; preds = %if.else
  %arrayidx.i.i = getelementptr [3 x i8], ptr %is_reg_mr.i.i, i32 0, i32 %idxprom.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx.i.i, align 1
  %12 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %link_idx.i.i, align 1
  %idxprom2.i.i = zext i8 %13 to i32
  %arrayidx3.i.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom2.i.i
  %14 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool4.not.i.i, label %smcr_buf_unmap_link.exit.thread.i, label %if.then8.critedge.i.i

smcr_buf_unmap_link.exit.thread.i:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.112.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1
  br label %if.end.i.1.i

if.end.thread.i.i:                                ; preds = %if.else
  %arrayidx351.i.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom.i.i
  %16 = ptrtoint ptr %arrayidx351.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx351.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not52.i.i = icmp eq i8 %17, 0
  br i1 %tobool4.not52.i.i, label %smcr_buf_unmap_link.exit.thread15.i, label %if.end.thread.i.i.smcr_buf_unmap_link.exit.i_crit_edge

if.end.thread.i.i.smcr_buf_unmap_link.exit.i_crit_edge: ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_buf_unmap_link.exit.i

smcr_buf_unmap_link.exit.thread15.i:              ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.116.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1
  br label %if.end.thread.i.1.i

if.then8.critedge.i.i:                            ; preds = %if.end.i.i
  %arrayidx11.i.i = getelementptr [3 x ptr], ptr %mr_rx.i.i, i32 0, i32 %idxprom2.i.i
  %18 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx11.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %19, null
  br i1 %tobool12.not.i.i, label %if.then8.critedge.i.i.smcr_buf_unmap_link.exit.i_crit_edge, label %if.then13.i.i

if.then8.critedge.i.i.smcr_buf_unmap_link.exit.i_crit_edge: ; preds = %if.then8.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_buf_unmap_link.exit.i

if.then13.i.i:                                    ; preds = %if.then8.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_ib_put_memory_region(ptr noundef nonnull %19) #18
  %20 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link_idx.i.i, align 1
  %idxprom20.i.i = zext i8 %21 to i32
  %arrayidx21.i.i = getelementptr [3 x ptr], ptr %mr_rx.i.i, i32 0, i32 %idxprom20.i.i
  %22 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx21.i.i, align 4
  br label %smcr_buf_unmap_link.exit.i

smcr_buf_unmap_link.exit.i:                       ; preds = %if.then13.i.i, %if.then8.critedge.i.i.smcr_buf_unmap_link.exit.i_crit_edge, %if.end.thread.i.i.smcr_buf_unmap_link.exit.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %if.then13.i.i ], [ 2, %if.then8.critedge.i.i.smcr_buf_unmap_link.exit.i_crit_edge ], [ 1, %if.end.thread.i.i.smcr_buf_unmap_link.exit.i_crit_edge ]
  tail call void @smc_ib_buf_unmap_sg(ptr noundef %arrayidx.i, ptr noundef %buf_desc, i32 noundef %.sink.i.i) #18
  %23 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %link_idx.i.i, align 1
  %idxprom25.i.i = zext i8 %24 to i32
  %arrayidx26.i.i = getelementptr [3 x %struct.sg_table], ptr %8, i32 0, i32 %idxprom25.i.i
  tail call void @sg_free_table(ptr noundef %arrayidx26.i.i) #18
  %25 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %link_idx.i.i, align 1
  %idxprom29.i.i = zext i8 %26 to i32
  %arrayidx30.i.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom29.i.i
  %27 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx30.i.i, align 1
  %arrayidx.1.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1
  br i1 %is_rmb, label %smcr_buf_unmap_link.exit.i.if.end.i.1.i_crit_edge, label %smcr_buf_unmap_link.exit.i.if.end.thread.i.1.i_crit_edge

smcr_buf_unmap_link.exit.i.if.end.thread.i.1.i_crit_edge: ; preds = %smcr_buf_unmap_link.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.thread.i.1.i

smcr_buf_unmap_link.exit.i.if.end.i.1.i_crit_edge: ; preds = %smcr_buf_unmap_link.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.1.i

if.end.thread.i.1.i:                              ; preds = %smcr_buf_unmap_link.exit.i.if.end.thread.i.1.i_crit_edge, %smcr_buf_unmap_link.exit.thread15.i
  %arrayidx.117.i = phi ptr [ %arrayidx.116.i, %smcr_buf_unmap_link.exit.thread15.i ], [ %arrayidx.1.i, %smcr_buf_unmap_link.exit.i.if.end.thread.i.1.i_crit_edge ]
  %link_idx149.i.1.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 46
  %28 = ptrtoint ptr %link_idx149.i.1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %link_idx149.i.1.i, align 1
  %idxprom250.i.1.i = zext i8 %29 to i32
  %arrayidx351.i.1.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom250.i.1.i
  %30 = ptrtoint ptr %arrayidx351.i.1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx351.i.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool4.not52.i.1.i = icmp eq i8 %31, 0
  br i1 %tobool4.not52.i.1.i, label %smcr_buf_unmap_link.exit.1.thread21.i, label %if.end.thread.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge

if.end.thread.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge: ; preds = %if.end.thread.i.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_buf_unmap_link.exit.1.i

smcr_buf_unmap_link.exit.1.thread21.i:            ; preds = %if.end.thread.i.1.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.222.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2
  br label %if.end.thread.i.2.i

if.end.i.1.i:                                     ; preds = %smcr_buf_unmap_link.exit.i.if.end.i.1.i_crit_edge, %smcr_buf_unmap_link.exit.thread.i
  %arrayidx.114.i = phi ptr [ %arrayidx.112.i, %smcr_buf_unmap_link.exit.thread.i ], [ %arrayidx.1.i, %smcr_buf_unmap_link.exit.i.if.end.i.1.i_crit_edge ]
  %link_idx.i.1.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 46
  %32 = ptrtoint ptr %link_idx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %link_idx.i.1.i, align 1
  %idxprom.i.1.i = zext i8 %33 to i32
  %arrayidx.i.1.i = getelementptr [3 x i8], ptr %is_reg_mr.i.i, i32 0, i32 %idxprom.i.1.i
  %34 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx.i.1.i, align 1
  %35 = load i8, ptr %link_idx.i.1.i, align 1
  %idxprom2.i.1.i = zext i8 %35 to i32
  %arrayidx3.i.1.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom2.i.1.i
  %36 = ptrtoint ptr %arrayidx3.i.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx3.i.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool4.not.i.1.i = icmp eq i8 %37, 0
  br i1 %tobool4.not.i.1.i, label %smcr_buf_unmap_link.exit.1.thread.i, label %if.then8.critedge.i.1.i

smcr_buf_unmap_link.exit.1.thread.i:              ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.218.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2
  br label %if.end.i.2.i

if.then8.critedge.i.1.i:                          ; preds = %if.end.i.1.i
  %arrayidx11.i.1.i = getelementptr [3 x ptr], ptr %mr_rx.i.i, i32 0, i32 %idxprom2.i.1.i
  %38 = ptrtoint ptr %arrayidx11.i.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx11.i.1.i, align 4
  %tobool12.not.i.1.i = icmp eq ptr %39, null
  br i1 %tobool12.not.i.1.i, label %if.then8.critedge.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge, label %if.then13.i.1.i

if.then8.critedge.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge: ; preds = %if.then8.critedge.i.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_buf_unmap_link.exit.1.i

if.then13.i.1.i:                                  ; preds = %if.then8.critedge.i.1.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_ib_put_memory_region(ptr noundef nonnull %39) #18
  %40 = ptrtoint ptr %link_idx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %link_idx.i.1.i, align 1
  %idxprom20.i.1.i = zext i8 %41 to i32
  %arrayidx21.i.1.i = getelementptr [3 x ptr], ptr %mr_rx.i.i, i32 0, i32 %idxprom20.i.1.i
  %42 = ptrtoint ptr %arrayidx21.i.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx21.i.1.i, align 4
  br label %smcr_buf_unmap_link.exit.1.i

smcr_buf_unmap_link.exit.1.i:                     ; preds = %if.then13.i.1.i, %if.then8.critedge.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge, %if.end.thread.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge
  %arrayidx.113.i = phi ptr [ %arrayidx.114.i, %if.then13.i.1.i ], [ %arrayidx.114.i, %if.then8.critedge.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge ], [ %arrayidx.117.i, %if.end.thread.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge ]
  %.sink.i.1.i = phi i32 [ 2, %if.then13.i.1.i ], [ 2, %if.then8.critedge.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge ], [ 1, %if.end.thread.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge ]
  %link_idx155.i.1.i = phi ptr [ %link_idx.i.1.i, %if.then13.i.1.i ], [ %link_idx.i.1.i, %if.then8.critedge.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge ], [ %link_idx149.i.1.i, %if.end.thread.i.1.i.smcr_buf_unmap_link.exit.1.i_crit_edge ]
  tail call void @smc_ib_buf_unmap_sg(ptr noundef %arrayidx.113.i, ptr noundef %buf_desc, i32 noundef %.sink.i.1.i) #18
  %43 = ptrtoint ptr %link_idx155.i.1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %link_idx155.i.1.i, align 1
  %idxprom25.i.1.i = zext i8 %44 to i32
  %arrayidx26.i.1.i = getelementptr [3 x %struct.sg_table], ptr %8, i32 0, i32 %idxprom25.i.1.i
  tail call void @sg_free_table(ptr noundef %arrayidx26.i.1.i) #18
  %45 = ptrtoint ptr %link_idx155.i.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %link_idx155.i.1.i, align 1
  %idxprom29.i.1.i = zext i8 %46 to i32
  %arrayidx30.i.1.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom29.i.1.i
  %47 = ptrtoint ptr %arrayidx30.i.1.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx30.i.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2
  br i1 %is_rmb, label %smcr_buf_unmap_link.exit.1.i.if.end.i.2.i_crit_edge, label %smcr_buf_unmap_link.exit.1.i.if.end.thread.i.2.i_crit_edge

smcr_buf_unmap_link.exit.1.i.if.end.thread.i.2.i_crit_edge: ; preds = %smcr_buf_unmap_link.exit.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.thread.i.2.i

smcr_buf_unmap_link.exit.1.i.if.end.i.2.i_crit_edge: ; preds = %smcr_buf_unmap_link.exit.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.2.i

if.end.thread.i.2.i:                              ; preds = %smcr_buf_unmap_link.exit.1.i.if.end.thread.i.2.i_crit_edge, %smcr_buf_unmap_link.exit.1.thread21.i
  %arrayidx.223.i = phi ptr [ %arrayidx.222.i, %smcr_buf_unmap_link.exit.1.thread21.i ], [ %arrayidx.2.i, %smcr_buf_unmap_link.exit.1.i.if.end.thread.i.2.i_crit_edge ]
  %link_idx149.i.2.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 46
  %48 = ptrtoint ptr %link_idx149.i.2.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %link_idx149.i.2.i, align 1
  %idxprom250.i.2.i = zext i8 %49 to i32
  %arrayidx351.i.2.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom250.i.2.i
  %50 = ptrtoint ptr %arrayidx351.i.2.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx351.i.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool4.not52.i.2.i = icmp eq i8 %51, 0
  br i1 %tobool4.not52.i.2.i, label %if.end.thread.i.2.i.smcr_buf_unmap_link.exit.2.i_crit_edge, label %if.end.thread.i.2.i.if.end23.i.2.i_crit_edge

if.end.thread.i.2.i.if.end23.i.2.i_crit_edge:     ; preds = %if.end.thread.i.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i.2.i

if.end.thread.i.2.i.smcr_buf_unmap_link.exit.2.i_crit_edge: ; preds = %if.end.thread.i.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_buf_unmap_link.exit.2.i

if.end.i.2.i:                                     ; preds = %smcr_buf_unmap_link.exit.1.i.if.end.i.2.i_crit_edge, %smcr_buf_unmap_link.exit.1.thread.i
  %arrayidx.220.i = phi ptr [ %arrayidx.218.i, %smcr_buf_unmap_link.exit.1.thread.i ], [ %arrayidx.2.i, %smcr_buf_unmap_link.exit.1.i.if.end.i.2.i_crit_edge ]
  %link_idx.i.2.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 46
  %52 = ptrtoint ptr %link_idx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %link_idx.i.2.i, align 1
  %idxprom.i.2.i = zext i8 %53 to i32
  %arrayidx.i.2.i = getelementptr [3 x i8], ptr %is_reg_mr.i.i, i32 0, i32 %idxprom.i.2.i
  %54 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx.i.2.i, align 1
  %55 = load i8, ptr %link_idx.i.2.i, align 1
  %idxprom2.i.2.i = zext i8 %55 to i32
  %arrayidx3.i.2.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom2.i.2.i
  %56 = ptrtoint ptr %arrayidx3.i.2.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx3.i.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool4.not.i.2.i = icmp eq i8 %57, 0
  br i1 %tobool4.not.i.2.i, label %if.end.i.2.i.smcr_buf_unmap_link.exit.2.i_crit_edge, label %if.then8.critedge.i.2.i

if.end.i.2.i.smcr_buf_unmap_link.exit.2.i_crit_edge: ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_buf_unmap_link.exit.2.i

if.then8.critedge.i.2.i:                          ; preds = %if.end.i.2.i
  %arrayidx11.i.2.i = getelementptr [3 x ptr], ptr %mr_rx.i.i, i32 0, i32 %idxprom2.i.2.i
  %58 = ptrtoint ptr %arrayidx11.i.2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx11.i.2.i, align 4
  %tobool12.not.i.2.i = icmp eq ptr %59, null
  br i1 %tobool12.not.i.2.i, label %if.then8.critedge.i.2.i.if.end23.i.2.i_crit_edge, label %if.then13.i.2.i

if.then8.critedge.i.2.i.if.end23.i.2.i_crit_edge: ; preds = %if.then8.critedge.i.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i.2.i

if.then13.i.2.i:                                  ; preds = %if.then8.critedge.i.2.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_ib_put_memory_region(ptr noundef nonnull %59) #18
  %60 = ptrtoint ptr %link_idx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %link_idx.i.2.i, align 1
  %idxprom20.i.2.i = zext i8 %61 to i32
  %arrayidx21.i.2.i = getelementptr [3 x ptr], ptr %mr_rx.i.i, i32 0, i32 %idxprom20.i.2.i
  %62 = ptrtoint ptr %arrayidx21.i.2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx21.i.2.i, align 4
  br label %if.end23.i.2.i

if.end23.i.2.i:                                   ; preds = %if.then13.i.2.i, %if.then8.critedge.i.2.i.if.end23.i.2.i_crit_edge, %if.end.thread.i.2.i.if.end23.i.2.i_crit_edge
  %arrayidx.219.i = phi ptr [ %arrayidx.220.i, %if.then13.i.2.i ], [ %arrayidx.220.i, %if.then8.critedge.i.2.i.if.end23.i.2.i_crit_edge ], [ %arrayidx.223.i, %if.end.thread.i.2.i.if.end23.i.2.i_crit_edge ]
  %.sink.i.2.i = phi i32 [ 2, %if.then13.i.2.i ], [ 2, %if.then8.critedge.i.2.i.if.end23.i.2.i_crit_edge ], [ 1, %if.end.thread.i.2.i.if.end23.i.2.i_crit_edge ]
  %link_idx155.i.2.i = phi ptr [ %link_idx.i.2.i, %if.then13.i.2.i ], [ %link_idx.i.2.i, %if.then8.critedge.i.2.i.if.end23.i.2.i_crit_edge ], [ %link_idx149.i.2.i, %if.end.thread.i.2.i.if.end23.i.2.i_crit_edge ]
  tail call void @smc_ib_buf_unmap_sg(ptr noundef %arrayidx.219.i, ptr noundef %buf_desc, i32 noundef %.sink.i.2.i) #18
  %63 = ptrtoint ptr %link_idx155.i.2.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %link_idx155.i.2.i, align 1
  %idxprom25.i.2.i = zext i8 %64 to i32
  %arrayidx26.i.2.i = getelementptr [3 x %struct.sg_table], ptr %8, i32 0, i32 %idxprom25.i.2.i
  tail call void @sg_free_table(ptr noundef %arrayidx26.i.2.i) #18
  %65 = ptrtoint ptr %link_idx155.i.2.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %link_idx155.i.2.i, align 1
  %idxprom29.i.2.i = zext i8 %66 to i32
  %arrayidx30.i.2.i = getelementptr [3 x i8], ptr %is_map_ib48.i.i, i32 0, i32 %idxprom29.i.2.i
  %67 = ptrtoint ptr %arrayidx30.i.2.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx30.i.2.i, align 1
  br label %smcr_buf_unmap_link.exit.2.i

smcr_buf_unmap_link.exit.2.i:                     ; preds = %if.end23.i.2.i, %if.end.i.2.i.smcr_buf_unmap_link.exit.2.i_crit_edge, %if.end.thread.i.2.i.smcr_buf_unmap_link.exit.2.i_crit_edge
  %pages.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 2
  %68 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pages.i, align 4
  %tobool1.not.i = icmp eq ptr %69, null
  br i1 %tobool1.not.i, label %smcr_buf_unmap_link.exit.2.i.if.end_crit_edge, label %if.then.i7

smcr_buf_unmap_link.exit.2.i.if.end_crit_edge:    ; preds = %smcr_buf_unmap_link.exit.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then.i7:                                       ; preds = %smcr_buf_unmap_link.exit.2.i
  call void @__sanitizer_cov_trace_pc() #20
  %order.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 5, i32 1, i32 24
  %70 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %order.i, align 8
  tail call void @__free_pages(ptr noundef nonnull %69, i32 noundef %71) #18
  br label %if.end

if.end:                                           ; preds = %if.then.i7, %smcr_buf_unmap_link.exit.2.i.if.end_crit_edge, %if.else.i, %if.then.i
  tail call void @kfree(ptr noundef %buf_desc) #18
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_rtoken_set(ptr noundef %lgr, i32 noundef %link_idx, i32 noundef %link_idx_new, i32 noundef %nw_rkey_known, i64 noundef %nw_vaddr, i32 noundef %nw_rkey) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rtokens_used_mask.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.09.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.09.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %rtokens_used_mask.i, i32 %div3.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.09.i, 31
  %2 = shl nuw i32 1, %and.i.i
  %3 = and i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %rkey2.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 5, i32 %i.09.i, i32 %link_idx, i32 1
  %4 = ptrtoint ptr %rkey2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rkey2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %nw_rkey_known)
  %cmp3.i = icmp eq i32 %5, %nw_rkey_known
  br i1 %cmp3.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 255
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 5, i32 %i.09.i, i32 %link_idx_new
  %rkey = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 5, i32 %i.09.i, i32 %link_idx_new, i32 1
  %6 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nw_rkey, ptr %rkey, align 8
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %nw_vaddr, ptr %arrayidx1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_rtoken_set2(ptr nocapture noundef %lgr, i32 noundef %rtok_idx, i32 noundef %link_id, i64 noundef %nw_vaddr, i32 noundef %nw_rkey) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %link_id1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 43
  %0 = ptrtoint ptr %link_id1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_id1, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %link_id)
  %cmp2 = icmp eq i32 %conv, %link_id
  br i1 %cmp2, label %entry.if.end5_crit_edge, label %for.inc

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

for.inc:                                          ; preds = %entry
  %link_id1.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 43
  %2 = ptrtoint ptr %link_id1.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_id1.1, align 2
  %conv.1 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1, i32 %link_id)
  %cmp2.1 = icmp eq i32 %conv.1, %link_id
  br i1 %cmp2.1, label %for.inc.if.end5_crit_edge, label %for.inc.1

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

for.inc.1:                                        ; preds = %for.inc
  %link_id1.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 43
  %4 = ptrtoint ptr %link_id1.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_id1.2, align 2
  %conv.2 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2, i32 %link_id)
  %cmp2.2 = icmp eq i32 %conv.2, %link_id
  br i1 %cmp2.2, label %for.inc.1.if.end5_crit_edge, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.1.if.end5_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.end5:                                          ; preds = %for.inc.1.if.end5_crit_edge, %for.inc.if.end5_crit_edge, %entry.if.end5_crit_edge
  %link_idx.024.lcssa = phi i32 [ 0, %entry.if.end5_crit_edge ], [ 1, %for.inc.if.end5_crit_edge ], [ 2, %for.inc.1.if.end5_crit_edge ]
  %arrayidx7 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 5, i32 %rtok_idx, i32 %link_idx.024.lcssa
  %rkey8 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 5, i32 %rtok_idx, i32 %link_idx.024.lcssa, i32 1
  %6 = ptrtoint ptr %rkey8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nw_rkey, ptr %rkey8, align 8
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %nw_vaddr, ptr %arrayidx7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %for.inc.1.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_rtoken_add(ptr nocapture noundef readonly %lnk, i64 noundef %nw_vaddr, i32 noundef %nw_rkey) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %0 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr.i, align 4
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 46
  %2 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_idx, align 1
  %idxprom = zext i8 %3 to i32
  %rtokens_used_mask = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.058 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %rkey2 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.058, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %rkey2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rkey2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %nw_rkey)
  %cmp3 = icmp eq i32 %5, %nw_rkey
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx1 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.058, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %nw_vaddr)
  %cmp10 = icmp eq i64 %7, %nw_vaddr
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true
  %div3.i = lshr i32 %i.058, 5
  %arrayidx.i = getelementptr i32, ptr %rtokens_used_mask, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.058, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true11.for.inc_crit_edge, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true11.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %rtokens_used_mask, i32 noundef 255, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i)
  %cmp12.i = icmp slt i32 %call.i, 255
  br i1 %cmp12.i, label %for.end.for.body.i_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.013.i = phi i32 [ %call6.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %for.end.for.body.i_crit_edge ]
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef %i.013.i, ptr noundef %rtokens_used_mask) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %smc_rmb_reserve_rtoken_idx.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %add.i = add nsw i32 %i.013.i, 1
  %call6.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %rtokens_used_mask, i32 noundef 255, i32 noundef %add.i) #18
  %cmp.i = icmp slt i32 %call6.i, 255
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

smc_rmb_reserve_rtoken_idx.exit:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.013.i)
  %cmp14 = icmp slt i32 %i.013.i, 0
  br i1 %cmp14, label %smc_rmb_reserve_rtoken_idx.exit.cleanup_crit_edge, label %if.end16

smc_rmb_reserve_rtoken_idx.exit.cleanup_crit_edge: ; preds = %smc_rmb_reserve_rtoken_idx.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %smc_rmb_reserve_rtoken_idx.exit
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %link_idx, align 1
  %idxprom20 = zext i8 %13 to i32
  %rkey22 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.013.i, i32 %idxprom20, i32 1
  %14 = ptrtoint ptr %rkey22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %nw_rkey, ptr %rkey22, align 8
  %15 = load i8, ptr %link_idx, align 1
  %idxprom26 = zext i8 %15 to i32
  %arrayidx27 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.013.i, i32 %idxprom26
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %nw_vaddr, ptr %arrayidx27, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %smc_rmb_reserve_rtoken_idx.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.013.i, %if.end16 ], [ %i.013.i, %smc_rmb_reserve_rtoken_idx.exit.cleanup_crit_edge ], [ -28, %for.end.cleanup_crit_edge ], [ -28, %for.inc.i.cleanup_crit_edge ], [ %i.058, %land.lhs.true11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_rtoken_delete(ptr nocapture noundef readonly %lnk, i32 noundef %nw_rkey) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %0 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr.i, align 4
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 46
  %2 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_idx, align 1
  %idxprom = zext i8 %3 to i32
  %rtokens_used_mask = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17.for.body_crit_edge ]
  %rkey2 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.038, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %rkey2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rkey2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %nw_rkey)
  %cmp3 = icmp eq i32 %5, %nw_rkey
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc17_crit_edge

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc17

land.lhs.true:                                    ; preds = %for.body
  %div3.i = lshr i32 %i.038, 5
  %arrayidx.i = getelementptr i32, ptr %rtokens_used_mask, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.038, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc17_crit_edge, label %for.cond5.preheader

land.lhs.true.for.inc17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc17

for.cond5.preheader:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx10 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.038, i32 0
  %rkey11 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.038, i32 0, i32 1
  %10 = ptrtoint ptr %rkey11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rkey11, align 8
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %arrayidx10, align 8
  %arrayidx10.1 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.038, i32 1
  %rkey11.1 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.038, i32 1, i32 1
  %12 = ptrtoint ptr %rkey11.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rkey11.1, align 8
  %13 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %arrayidx10.1, align 8
  %arrayidx10.2 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.038, i32 2
  %rkey11.2 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 5, i32 %i.038, i32 2, i32 1
  %14 = ptrtoint ptr %rkey11.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rkey11.2, align 8
  %15 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %arrayidx10.2, align 8
  tail call void @_clear_bit(i32 noundef %i.038, ptr noundef %rtokens_used_mask) #18
  br label %cleanup

for.inc17:                                        ; preds = %land.lhs.true.for.inc17_crit_edge, %for.body.for.inc17_crit_edge
  %inc18 = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc18, 255
  br i1 %exitcond.not, label %for.inc17.cleanup_crit_edge, label %for.inc17.for.body_crit_edge

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc17.cleanup_crit_edge:                      ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc17.cleanup_crit_edge, %for.cond5.preheader
  %retval.0 = phi i32 [ 0, %for.cond5.preheader ], [ -2, %for.inc17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_rmb_rtoken_handling(ptr nocapture noundef writeonly %conn, ptr nocapture noundef readonly %lnk, ptr nocapture noundef readonly %clc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rmb_dma_addr = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc, i32 0, i32 1, i32 0, i32 7
  %0 = ptrtoint ptr %rmb_dma_addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %rmb_dma_addr, align 1
  %rmb_rkey = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, ptr %clc, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %rmb_rkey to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %rmb_rkey, align 1
  %call = tail call i32 @smc_rtoken_add(ptr noundef %lnk, i64 noundef %1, i32 noundef %3)
  %rtoken_idx = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 7
  %4 = ptrtoint ptr %rtoken_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %rtoken_idx, align 4
  %5 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_core_init() local_unnamed_addr #10 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_reboot_notifier(ptr noundef nonnull @smc_reboot_notifier) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_core_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @smc_reboot_notifier) #18
  tail call fastcc void @smc_lgrs_shutdown()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_lgrs_shutdown() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_ib_devices to i32))
  %smcibdev.032.i = load ptr, ptr @smc_ib_devices, align 4
  %cmp.not33.i = icmp eq ptr %smcibdev.032.i, @smc_ib_devices
  br i1 %cmp.not33.i, label %entry.for.end9.i_crit_edge, label %entry.for.cond1.preheader.i_crit_edge

entry.for.cond1.preheader.i_crit_edge:            ; preds = %entry
  br label %for.cond1.preheader.i

entry.for.end9.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end9.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, %entry.for.cond1.preheader.i_crit_edge
  %smcibdev.034.i = phi ptr [ %smcibdev.0.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ %smcibdev.032.i, %entry.for.cond1.preheader.i_crit_edge ]
  %ports_going_away.i = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev.034.i, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %ports_going_away.i) #18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %ports_going_away.i) #18
  %0 = ptrtoint ptr %smcibdev.034.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %smcibdev.0.i = load ptr, ptr %smcibdev.034.i, align 4
  %cmp.not.i = icmp eq ptr %smcibdev.0.i, @smc_ib_devices
  br i1 %cmp.not.i, label %for.cond1.preheader.i.for.end9.i_crit_edge, label %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge

for.cond1.preheader.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond1.preheader.i

for.cond1.preheader.i.for.end9.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end9.i

for.end9.i:                                       ; preds = %for.cond1.preheader.i.for.end9.i_crit_edge, %entry.for.end9.i_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #18
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smcd_dev_list to i32))
  %.pn35.i = load ptr, ptr @smcd_dev_list, align 4
  %cmp15.not36.i = icmp eq ptr %.pn35.i, @smcd_dev_list
  br i1 %cmp15.not36.i, label %for.end9.i.smc_core_going_away.exit_crit_edge, label %for.end9.i.for.body17.i_crit_edge

for.end9.i.for.body17.i_crit_edge:                ; preds = %for.end9.i
  br label %for.body17.i

for.end9.i.smc_core_going_away.exit_crit_edge:    ; preds = %for.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_core_going_away.exit

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %for.end9.i.for.body17.i_crit_edge
  %.pn37.i = phi ptr [ %.pn.i, %for.body17.i.for.body17.i_crit_edge ], [ %.pn35.i, %for.end9.i.for.body17.i_crit_edge ]
  %going_away.i = getelementptr i8, ptr %.pn37.i, i32 196
  %1 = ptrtoint ptr %going_away.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %going_away.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %going_away.i, align 4
  %2 = ptrtoint ptr %.pn37.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn37.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn.i, @smcd_dev_list
  br i1 %cmp15.not.i, label %for.body17.i.smc_core_going_away.exit_crit_edge, label %for.body17.i.for.body17.i_crit_edge

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body17.i

for.body17.i.smc_core_going_away.exit_crit_edge:  ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_core_going_away.exit

smc_core_going_away.exit:                         ; preds = %for.body17.i.smc_core_going_away.exit_crit_edge, %for.end9.i.smc_core_going_away.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #18
  tail call void @smc_smcr_terminate_all(ptr noundef null)
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smcd_dev_list to i32))
  %.pn7 = load ptr, ptr @smcd_dev_list, align 4
  %cmp.not8 = icmp eq ptr %.pn7, @smcd_dev_list
  br i1 %cmp.not8, label %smc_core_going_away.exit.for.end_crit_edge, label %smc_core_going_away.exit.for.body_crit_edge

smc_core_going_away.exit.for.body_crit_edge:      ; preds = %smc_core_going_away.exit
  br label %for.body

smc_core_going_away.exit.for.end_crit_edge:       ; preds = %smc_core_going_away.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %smc_core_going_away.exit.for.body_crit_edge
  %.pn9 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn7, %smc_core_going_away.exit.for.body_crit_edge ]
  %smcd.0 = getelementptr i8, ptr %.pn9, i32 -952
  tail call void @smc_smcd_terminate_all(ptr noundef %smcd.0)
  %3 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, @smcd_dev_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %smc_core_going_away.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_nl_fill_lgr_v2_common(ptr nocapture noundef readonly %lgr, ptr noundef %skb, ptr noundef %v2_attrs) unnamed_addr #0 align 64 {
entry:
  %tmp.i3 = alloca i8, align 1
  %tmp.i1 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %smc_host = alloca [33 x i8], align 1
  %smc_eid = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %smc_host) #18
  %0 = call ptr @memset(ptr %smc_host, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %smc_eid) #18
  %1 = call ptr @memset(ptr %smc_eid, i32 255, i32 33)
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 16
  %2 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smc_version, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #18
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.errv2attr_crit_edge

entry.errv2attr_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %errv2attr

if.end:                                           ; preds = %entry
  %peer_smc_release = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 19
  %5 = ptrtoint ptr %peer_smc_release to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %peer_smc_release, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1) #18
  %7 = ptrtoint ptr %tmp.i1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %tmp.i1, align 1
  %call.i2 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i1) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool2.not = icmp eq i32 %call.i2, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.errv2attr_crit_edge

if.end.errv2attr_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %errv2attr

if.end4:                                          ; preds = %if.end
  %peer_os = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 18
  %8 = ptrtoint ptr %peer_os to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %peer_os, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i3) #18
  %10 = ptrtoint ptr %tmp.i3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %tmp.i3, align 1
  %call.i4 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool6.not = icmp eq i32 %call.i4, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.errv2attr_crit_edge

if.end4.errv2attr_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %errv2attr

if.end8:                                          ; preds = %if.end4
  %peer_hostname = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 20
  %11 = call ptr @memcpy(ptr %smc_host, ptr %peer_hostname, i32 32)
  %arrayidx = getelementptr inbounds [33 x i8], ptr %smc_host, i32 0, i32 32
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %call.i5 = call i32 @strlen(ptr noundef nonnull %smc_host) #22
  %add.i = add i32 %call.i5, 1
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef %add.i, ptr noundef nonnull %smc_host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool12.not = icmp eq i32 %call1.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.errv2attr_crit_edge

if.end8.errv2attr_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %errv2attr

if.end14:                                         ; preds = %if.end8
  %negotiated_eid = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 17
  %13 = call ptr @memcpy(ptr %smc_eid, ptr %negotiated_eid, i32 32)
  %arrayidx17 = getelementptr inbounds [33 x i8], ptr %smc_eid, i32 0, i32 32
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx17, align 1
  %call.i6 = call i32 @strlen(ptr noundef nonnull %smc_eid) #22
  %add.i7 = add i32 %call.i6, 1
  %call1.i8 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %add.i7, ptr noundef nonnull %smc_eid) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool20.not = icmp eq i32 %call1.i8, 0
  br i1 %tobool20.not, label %if.end22, label %if.end14.errv2attr_crit_edge

if.end14.errv2attr_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %errv2attr

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %v2_attrs to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %17 = ptrtoint ptr %v2_attrs to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %v2_attrs, align 2
  br label %cleanup

errv2attr:                                        ; preds = %if.end14.errv2attr_crit_edge, %if.end8.errv2attr_crit_edge, %if.end4.errv2attr_crit_edge, %if.end.errv2attr_crit_edge, %entry.errv2attr_crit_edge
  %tobool.not.i.i = icmp eq ptr %v2_attrs, null
  br i1 %tobool.not.i.i, label %errv2attr.cleanup_crit_edge, label %if.then.i.i

errv2attr.cleanup_crit_edge:                      ; preds = %errv2attr
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i.i:                                      ; preds = %errv2attr
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %19, %v2_attrs
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !98

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %v2_attrs to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %errv2attr.cleanup_crit_edge, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -90, %errv2attr.cleanup_crit_edge ], [ -90, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %smc_eid) #18
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %smc_host) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @smc_ism_get_chid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcr_cdc_msg_send_validation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_tx_put_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smcr_buf_unuse(ptr noundef %rmb_desc, ptr noundef %lgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %is_conf_rkey = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 5, i32 1, i32 28
  %0 = ptrtoint ptr %is_conf_rkey to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_conf_rkey, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %lgr, align 4
  %cmp.i.not = icmp eq ptr %3, %lgr
  br i1 %cmp.i.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @smc_llc_flow_initiate(ptr noundef %lgr, i32 noundef 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %llc_conf_mutex = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %llc_conf_mutex, i32 noundef 0) #18
  %call5 = tail call i32 @smc_llc_do_delete_rkey(ptr noundef %lgr, ptr noundef %rmb_desc) #18
  %4 = ptrtoint ptr %is_conf_rkey to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_conf_rkey, align 4
  tail call void @mutex_unlock(ptr noundef %llc_conf_mutex) #18
  %llc_flow_lcl = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 18
  tail call void @smc_llc_flow_stop(ptr noundef %lgr, ptr noundef %llc_flow_lcl) #18
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %is_reg_err = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 5, i32 1, i32 35
  %5 = ptrtoint ptr %is_reg_err to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_reg_err, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %rmbs_lock = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %rmbs_lock, i32 noundef 0) #18
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rmb_desc) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.list_del.exit_crit_edge

if.then10.list_del.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rmb_desc, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmb_desc, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then10.list_del.exit_crit_edge
  %13 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %rmb_desc, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rmb_desc, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %rmbs_lock) #18
  tail call fastcc void @smc_buf_free(ptr noundef %lgr, i1 noundef zeroext true, ptr noundef %rmb_desc)
  br label %if.end13

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %used = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 4
  %15 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %used, align 4
  %cpu_addr = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 1
  %16 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpu_addr, align 8
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 3
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 8
  %20 = call ptr @memset(ptr %17, i32 0, i32 %19)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %list_del.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_llc_flow_initiate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_llc_do_delete_rkey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_flow_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ib_put_memory_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ib_buf_unmap_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_free_lgr_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_conn_kill(ptr noundef %conn, i1 noundef zeroext %soft) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %conn, i32 -984
  %lgr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %peer_shutdown = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %peer_shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %conn_state_flags = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 7
  %5 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load3 = load i8, ptr %conn_state_flags, align 1
  %bf.set = or i8 %bf.load3, 32
  store i8 %bf.set, ptr %conn_state_flags, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call = tail call i32 @smc_close_abort(ptr noundef %conn) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %killed = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 39
  %6 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load4 = load i8, ptr %killed, align 8
  %bf.set6 = or i8 %bf.load4, -128
  store i8 %bf.set6, ptr %killed, align 8
  %sk_err = getelementptr i8, ptr %conn, i32 -292
  %7 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 103, ptr %sk_err, align 4
  %sk_write_space.i = getelementptr i8, ptr %conn, i32 -68
  %8 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_write_space.i, align 4
  tail call void %9(ptr noundef %add.ptr) #18
  %sk_data_ready.i = getelementptr i8, ptr %conn, i32 -72
  %10 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_data_ready.i, align 8
  tail call void %11(ptr noundef %add.ptr) #18
  %sk_state_change.i = getelementptr i8, ptr %conn, i32 -76
  %12 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %13(ptr noundef %add.ptr) #18
  %14 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lgr, align 4
  %is_smcd8 = getelementptr inbounds %struct.smc_link_group, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %is_smcd8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_smcd8, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  br i1 %tobool9.not, label %if.else16, label %if.then10

if.then10:                                        ; preds = %if.end
  tail call void @smc_ism_unset_conn(ptr noundef %conn) #18
  %rx_tsklet = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 36
  br i1 %soft, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @tasklet_kill(ptr noundef %rx_tsklet) #18
  br label %if.end17

if.else13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @tasklet_unlock_wait(ptr noundef %rx_tsklet) #18
  br label %if.end17

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_cdc_wait_pend_tx_wr(ptr noundef %conn) #18
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.else13, %if.then12
  tail call fastcc void @smc_lgr_unregister_conn(ptr noundef %conn)
  tail call void @smc_close_active_abort(ptr noundef %add.ptr) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_lgr_free(ptr noundef %lgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 15
  %0 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then:                                          ; preds = %entry
  %llc_conf_mutex = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %llc_conf_mutex, i32 noundef 0) #18
  %state = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.then.for.inc_crit_edge, label %if.then2

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0
  tail call void @smcr_link_clear(ptr noundef %arrayidx, i1 noundef zeroext false)
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %if.then.for.inc_crit_edge
  %state.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %4 = ptrtoint ptr %state.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not.1 = icmp eq i32 %5, 0
  br i1 %cmp1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then2.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1
  tail call void @smcr_link_clear(ptr noundef %arrayidx.1, i1 noundef zeroext false)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.1, %for.inc.for.inc.1_crit_edge
  %state.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %6 = ptrtoint ptr %state.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not.2 = icmp eq i32 %7, 0
  br i1 %cmp1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then2.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2
  tail call void @smcr_link_clear(ptr noundef %arrayidx.2, i1 noundef zeroext false)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then2.2, %for.inc.1.for.inc.2_crit_edge
  tail call void @mutex_unlock(ptr noundef %llc_conf_mutex) #18
  tail call void @smc_llc_lgr_clear(ptr noundef %lgr) #18
  br label %if.end6

if.end6:                                          ; preds = %for.inc.2, %entry.if.end6_crit_edge
  %tx_wq = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 12
  %8 = ptrtoint ptr %tx_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #18
  %10 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_smcd, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %smcd = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1
  %12 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smcd, align 8
  %vlan_id = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 4
  %14 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vlan_id, align 4
  %call = tail call i32 @smc_ism_put_vlan(ptr noundef %13, i16 noundef zeroext %15) #18
  %16 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smcd, align 8
  %dev = getelementptr inbounds %struct.smcd_dev, ptr %17, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev) #18
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  tail call void @smc_lgr_put(ptr noundef %lgr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_close_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_close_active_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ism_signal_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_send_link_delete_all(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_lgr_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ism_put_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smcr_link_down(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_srv_delete_link_local(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_llc_send_delete_link(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ism_get_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_lgr_free_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -508
  %is_smcd.i = getelementptr i8, ptr %work, i32 156
  %0 = ptrtoint ptr %is_smcd.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_smcd.i, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.smc_lgr_list_head.exit_crit_edge, label %if.then.i

entry.smc_lgr_list_head.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %smc_lgr_list_head.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %smcd.i = getelementptr i8, ptr %work, i32 236
  %2 = ptrtoint ptr %smcd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smcd.i, align 8
  %lgr_lock1.i = getelementptr inbounds %struct.smcd_dev, ptr %3, i32 0, i32 12
  br label %smc_lgr_list_head.exit

smc_lgr_list_head.exit:                           ; preds = %if.then.i, %entry.smc_lgr_list_head.exit_crit_edge
  %storemerge.i = phi ptr [ %lgr_lock1.i, %if.then.i ], [ getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1), %entry.smc_lgr_list_head.exit_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %storemerge.i) #18
  %freeing = getelementptr i8, ptr %work, i32 148
  %4 = ptrtoint ptr %freeing to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %freeing, align 8
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %smc_lgr_list_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %storemerge.i) #18
  br label %cleanup

if.end:                                           ; preds = %smc_lgr_list_head.exit
  %conns_lock = getelementptr i8, ptr %work, i32 -496
  tail call void @_raw_read_lock_bh(ptr noundef %conns_lock) #18
  %conns_all = getelementptr i8, ptr %work, i32 -500
  %6 = ptrtoint ptr %conns_all to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %conns_all, align 8
  %cmp = icmp eq ptr %7, null
  tail call void @_raw_read_unlock_bh(ptr noundef %conns_lock) #18
  br i1 %cmp, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %storemerge.i) #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_del_init.exit_crit_edge

if.end6.list_del_init.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr i8, ptr %work, i32 -504
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end6.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i3.i = getelementptr i8, ptr %work, i32 -504
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %prev.i3.i, align 4
  %16 = ptrtoint ptr %freeing to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load8 = load i8, ptr %freeing, align 8
  %bf.set = or i8 %bf.load8, 32
  store i8 %bf.set, ptr %freeing, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %storemerge.i) #18
  %call10 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #18
  %17 = ptrtoint ptr %is_smcd.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_smcd.i, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool11.not = icmp eq i8 %18, 0
  br i1 %tobool11.not, label %land.lhs.true, label %list_del_init.exit.land.lhs.true20_crit_edge

list_del_init.exit.land.lhs.true20_crit_edge:     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true20

land.lhs.true:                                    ; preds = %list_del_init.exit
  %19 = ptrtoint ptr %freeing to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load12 = load i8, ptr %freeing, align 8
  %20 = and i8 %bf.load12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool15.not = icmp eq i8 %20, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_llc_send_link_delete_all(ptr noundef %add.ptr, i1 noundef zeroext true, i32 noundef 196608) #18
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true.if.end17_crit_edge
  %21 = ptrtoint ptr %is_smcd.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %is_smcd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool19.not = icmp eq i8 %.pr, 0
  br i1 %tobool19.not, label %if.end17.if.then31_crit_edge, label %if.end17.land.lhs.true20_crit_edge

if.end17.land.lhs.true20_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true20

if.end17.if.then31_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then31

land.lhs.true20:                                  ; preds = %if.end17.land.lhs.true20_crit_edge, %list_del_init.exit.land.lhs.true20_crit_edge
  %22 = ptrtoint ptr %freeing to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load22 = load i8, ptr %freeing, align 8
  %23 = and i8 %bf.load22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool25.not = icmp eq i8 %23, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true20.if.end28_crit_edge

land.lhs.true20.if.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then26:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #20
  %call27 = tail call i32 @smc_ism_signal_shutdown(ptr noundef %add.ptr) #18
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true20.if.end28_crit_edge
  %24 = ptrtoint ptr %is_smcd.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr56 = load i8, ptr %is_smcd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr56)
  %tobool30.not = icmp eq i8 %.pr56, 0
  br i1 %tobool30.not, label %if.end28.if.then31_crit_edge, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.end28.if.then31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then31

if.then31:                                        ; preds = %if.end28.if.then31_crit_edge, %if.end17.if.then31_crit_edge
  %state.i.i.i = getelementptr i8, ptr %work, i32 932
  %25 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %switch.i.i.i = icmp ugt i32 %26, 1
  br i1 %switch.i.i.i, label %smc_link_sendable.exit.i, label %if.then31.if.end.i_crit_edge

if.then31.if.end.i_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

smc_link_sendable.exit.i:                         ; preds = %if.then31
  %cur_qp_state.i.i = getelementptr i8, ptr %work, i32 256
  %27 = ptrtoint ptr %cur_qp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_qp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 3
  br i1 %cmp.i.i, label %if.then.i51, label %smc_link_sendable.exit.i.if.end.i_crit_edge

smc_link_sendable.exit.i.if.end.i_crit_edge:      ; preds = %smc_link_sendable.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i51:                                      ; preds = %smc_link_sendable.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %state.i.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i51, %smc_link_sendable.exit.i.if.end.i_crit_edge, %if.then31.if.end.i_crit_edge
  %state.i.i.1.i = getelementptr i8, ptr %work, i32 1796
  %30 = ptrtoint ptr %state.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state.i.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %switch.i.i.1.i = icmp ugt i32 %31, 1
  br i1 %switch.i.i.1.i, label %smc_link_sendable.exit.1.i, label %if.end.i.if.end.1.i_crit_edge

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.1.i

smc_link_sendable.exit.1.i:                       ; preds = %if.end.i
  %cur_qp_state.i.1.i = getelementptr i8, ptr %work, i32 1120
  %32 = ptrtoint ptr %cur_qp_state.i.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cur_qp_state.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i.1.i = icmp eq i32 %33, 3
  br i1 %cmp.i.1.i, label %if.then.1.i, label %smc_link_sendable.exit.1.i.if.end.1.i_crit_edge

smc_link_sendable.exit.1.i.if.end.1.i_crit_edge:  ; preds = %smc_link_sendable.exit.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %smc_link_sendable.exit.1.i
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %state.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %state.i.i.1.i, align 8
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %smc_link_sendable.exit.1.i.if.end.1.i_crit_edge, %if.end.i.if.end.1.i_crit_edge
  %state.i.i.2.i = getelementptr i8, ptr %work, i32 2660
  %35 = ptrtoint ptr %state.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state.i.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %switch.i.i.2.i = icmp ugt i32 %36, 1
  br i1 %switch.i.i.2.i, label %smc_link_sendable.exit.2.i, label %if.end.1.i.smcr_lgr_link_deactivate_all.exit_crit_edge

if.end.1.i.smcr_lgr_link_deactivate_all.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_lgr_link_deactivate_all.exit

smc_link_sendable.exit.2.i:                       ; preds = %if.end.1.i
  %cur_qp_state.i.2.i = getelementptr i8, ptr %work, i32 1984
  %37 = ptrtoint ptr %cur_qp_state.i.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_qp_state.i.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp.i.2.i = icmp eq i32 %38, 3
  br i1 %cmp.i.2.i, label %if.then.2.i, label %smc_link_sendable.exit.2.i.smcr_lgr_link_deactivate_all.exit_crit_edge

smc_link_sendable.exit.2.i.smcr_lgr_link_deactivate_all.exit_crit_edge: ; preds = %smc_link_sendable.exit.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %smcr_lgr_link_deactivate_all.exit

if.then.2.i:                                      ; preds = %smc_link_sendable.exit.2.i
  call void @__sanitizer_cov_trace_pc() #20
  %39 = ptrtoint ptr %state.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %state.i.i.2.i, align 8
  br label %smcr_lgr_link_deactivate_all.exit

smcr_lgr_link_deactivate_all.exit:                ; preds = %if.then.2.i, %smc_link_sendable.exit.2.i.smcr_lgr_link_deactivate_all.exit_crit_edge, %if.end.1.i.smcr_lgr_link_deactivate_all.exit_crit_edge
  %llc_msg_waiter.i = getelementptr i8, ptr %work, i32 15472
  tail call void @__wake_up(ptr noundef %llc_msg_waiter.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #18
  %llc_flow_waiter.i = getelementptr i8, ptr %work, i32 15420
  tail call void @__wake_up(ptr noundef %llc_flow_waiter.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #18
  br label %if.end32

if.end32:                                         ; preds = %smcr_lgr_link_deactivate_all.exit, %if.end28.if.end32_crit_edge
  tail call fastcc void @smc_lgr_free(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_lgr_terminate_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -608
  tail call fastcc void @__smc_lgr_terminate(ptr noundef %add.ptr, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_alloc_lgr_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_llc_lgr_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smcr_buf_map_link(ptr noundef %buf_desc, i1 noundef zeroext %is_rmb, ptr noundef %lnk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 5
  %is_map_ib = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 5, i32 1, i32 32
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 46
  %1 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link_idx, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [3 x i8], ptr %is_map_ib, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom
  %call = tail call i32 @sg_alloc_table(ptr noundef %arrayidx3, i32 noundef 1, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %link_idx, align 1
  %idxprom9 = zext i8 %6 to i32
  %arrayidx10 = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom9
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx10, align 4
  %cpu_addr = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 1
  %9 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_addr, align 8
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_desc, i32 0, i32 3
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 8
  %13 = ptrtoint ptr %10 to i32
  %cmp.i = icmp ugt ptr %10, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end6.do.body5.i_crit_edge, !prof !101

if.end6.do.body5.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %14 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %14, %10
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !101

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %15, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !98

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end6.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #18, !srcloc !137
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %16, i32 %shr.i
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !101

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #18, !srcloc !138
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !101

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #18, !srcloc !139
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %13, 4095
  %and.i.i.i = and i32 %18, 3
  %or.i.i.i = or i32 %and.i.i.i, %19
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i.i, ptr %8, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 1
  %21 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 2
  %22 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %12, ptr %length.i.i, align 4
  %cond = select i1 %is_rmb, i32 2, i32 1
  %call12 = tail call i32 @smc_ib_buf_map_sg(ptr noundef %lnk, ptr noundef %buf_desc, i32 noundef %cond) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 1
  br i1 %cmp.not, label %if.end14, label %sg_set_buf.exit.free_table_crit_edge

sg_set_buf.exit.free_table_crit_edge:             ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_table

if.end14:                                         ; preds = %sg_set_buf.exit
  br i1 %is_rmb, label %if.then16, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then16:                                        ; preds = %if.end14
  %roce_pd = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 2
  %23 = ptrtoint ptr %roce_pd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %roce_pd, align 8
  %25 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %link_idx, align 1
  %call18 = tail call i32 @smc_ib_get_memory_region(ptr noundef %24, i32 noundef 3, ptr noundef %buf_desc, i8 noundef zeroext %26) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %buf_unmap

if.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_ib_sync_sg_for_device(ptr noundef %lnk, ptr noundef %buf_desc, i32 noundef 2) #18
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14.if.end22_crit_edge
  %27 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %link_idx, align 1
  %idxprom25 = zext i8 %28 to i32
  %arrayidx26 = getelementptr [3 x i8], ptr %is_map_ib, i32 0, i32 %idxprom25
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx26, align 1
  br label %cleanup

buf_unmap:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smc_ib_buf_unmap_sg(ptr noundef %lnk, ptr noundef %buf_desc, i32 noundef %cond) #18
  br label %free_table

free_table:                                       ; preds = %buf_unmap, %sg_set_buf.exit.free_table_crit_edge
  %rc.0 = phi i32 [ %call18, %buf_unmap ], [ -11, %sg_set_buf.exit.free_table_crit_edge ]
  %30 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %link_idx, align 1
  %idxprom31 = zext i8 %31 to i32
  %arrayidx32 = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom31
  tail call void @sg_free_table(ptr noundef %arrayidx32) #18
  br label %cleanup

cleanup:                                          ; preds = %free_table, %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %free_table ], [ 0, %if.end22 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_buf_map_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_get_memory_region(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ism_set_conn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ism_register_dmb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ism_unregister_dmb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_core_reboot_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smc_lgrs_shutdown()
  tail call void @smc_ib_unregister_client() #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ib_unregister_client() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nobuiltin }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69, !70, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !86}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/smc/smc_core.c", i32 44, i32 10}
!2 = !{ptr @smc_lgr_list, !3, !"smc_lgr_list", i1 false, i1 false}
!3 = !{!"../net/smc/smc_core.c", i32 43, i32 21}
!4 = !{ptr @smcr_link_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../net/smc/smc_core.c", i32 762, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/smc/smc_core.c", i32 1528, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/smc/smc_core.c", i32 1575, i32 19}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/smc/smc_core.c", i32 1587, i32 14}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/smc/smc_core.c", i32 1590, i32 14}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/smc/smc_core.c", i32 1593, i32 14}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/smc/smc_core.c", i32 1596, i32 14}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/smc/smc_core.c", i32 1599, i32 14}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/smc/smc_core.c", i32 1602, i32 2}
!23 = !{ptr @smcr_lgr_set_type._rs, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @__func__.smcr_lgr_set_type, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @smcr_lgr_set_type._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @smcr_lgr_set_type._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @smc_conn_create.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../net/smc/smc_core.c", i32 1914, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @smc_conn_create.__key.12, !32, !"__key", i1 false, i1 false}
!32 = !{!"../net/smc/smc_core.c", i32 1915, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/net/netlink.h", i32 991, i32 3}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/smc/smc_core.c", i32 409, i32 43}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/smc/smc_core.h", i32 456, i32 15}
!40 = !{ptr @lgr_cnt, !41, !"lgr_cnt", i1 false, i1 false}
!41 = !{!"../net/smc/smc_core.c", i32 49, i32 17}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/smc/smc_core.c", i32 50, i32 8}
!44 = !{ptr @lgrs_deleted, !43, !"lgrs_deleted", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../net/smc/smc_tracepoint.h", i32 85, i32 1}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!49 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/net/sock.h", i32 2077, i32 8}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @smc_lgr_register_conn.nexttoken, !64, !"nexttoken", i1 false, i1 false}
!64 = !{!"../net/smc/smc_core.c", i32 169, i32 18}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/smc/smc_core.c", i32 839, i32 31}
!67 = !{ptr @smc_lgr_create.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../net/smc/smc_core.c", i32 851, i32 2}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @smc_lgr_create.__key.27, !71, !"__key", i1 false, i1 false}
!71 = !{!"../net/smc/smc_core.c", i32 852, i32 2}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @smc_lgr_create.__key.29, !74, !"__key", i1 false, i1 false}
!74 = !{!"../net/smc/smc_core.c", i32 853, i32 2}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @smc_lgr_create.__key.31, !77, !"__key", i1 false, i1 false}
!77 = !{!"../net/smc/smc_core.c", i32 861, i32 2}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @smc_lgr_create.__key.33, !77, !"__key", i1 false, i1 false}
!80 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @smc_lgr_create.__key.35, !82, !"__key", i1 false, i1 false}
!82 = !{!"../net/smc/smc_core.c", i32 862, i32 2}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!86 = !{ptr @smc_reboot_notifier, !87, !"smc_reboot_notifier", i1 false, i1 false}
!87 = !{!"../net/smc/smc_core.c", i32 2522, i32 30}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i8 0, i8 2}
!100 = !{i64 2148312304, i64 2148312336, i64 2148312365, i64 2148312399, i64 2148312430, i64 2148312453}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2148400305}
!103 = !{i64 2148314769, i64 2148314801, i64 2148314830, i64 2148314864, i64 2148314895, i64 2148314918}
!104 = !{i64 2149338123}
!105 = !{!"auto-init"}
!106 = !{i64 2148310774, i64 2148310800, i64 2148310829, i64 2148310863, i64 2148310894, i64 2148310917}
!107 = !{i64 2148313239, i64 2148313265, i64 2148313294, i64 2148313328, i64 2148313359, i64 2148313382}
!108 = !{i64 2148399226}
!109 = !{i64 2148313959, i64 2148313991, i64 2148314020, i64 2148314054, i64 2148314085, i64 2148314108}
!110 = !{i64 2148399455}
!111 = !{i64 2159739028}
!112 = !{i64 2159739205}
!113 = !{i64 2159815343}
!114 = !{i64 820266, i64 820287, i64 820310, i64 820329, i64 820348}
!115 = !{i64 2159815772}
!116 = !{i64 2159813794}
!117 = !{i64 2159814223}
!118 = !{i64 2148792589, i64 2148792594, i64 2148792607, i64 2148792651, i64 2148792685, i64 2148792706}
!119 = !{i64 2159699194}
!120 = !{i64 2159699411}
!121 = !{i64 2149397172}
!122 = !{i64 2149398208}
!123 = !{i64 2149388613}
!124 = !{i64 2148310193}
!125 = !{i64 795016, i64 795041, i64 795063, i64 795079, i64 795091, i64 795111, i64 795135, i64 795151, i64 795163}
!126 = !{i64 2148310381}
!127 = !{i64 2149388879}
!128 = !{i64 2148396185}
!129 = !{i64 2148311494, i64 2148311526, i64 2148311555, i64 2148311589, i64 2148311620, i64 2148311643}
!130 = !{i64 2148396414}
!131 = !{i32 0, i32 33}
!132 = !{i64 2159844134}
!133 = !{i64 2159844535}
!134 = !{i64 703255, i64 703316}
!135 = !{i64 705987}
!136 = !{i64 706272}
!137 = !{i64 2154842475, i64 2154842967, i64 2154842512, i64 2154842568, i64 2154842602, i64 2154842626, i64 2154842667, i64 2154842688, i64 2154842716, i64 2154842750}
!138 = !{i64 2154836156, i64 2154836648, i64 2154836193, i64 2154836249, i64 2154836283, i64 2154836307, i64 2154836348, i64 2154836369, i64 2154836397, i64 2154836431}
!139 = !{i64 2154837766, i64 2154838258, i64 2154837803, i64 2154837859, i64 2154837893, i64 2154837917, i64 2154837958, i64 2154837979, i64 2154838007, i64 2154838041}
