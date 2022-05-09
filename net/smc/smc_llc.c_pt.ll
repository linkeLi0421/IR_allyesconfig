; ModuleID = '/llk/IR_all_yes/net/smc/smc_llc.c_pt.bc'
source_filename = "../net/smc/smc_llc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.smc_wr_rx_handler = type { %struct.hlist_node, ptr, i8 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.222 }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.222 = type { %struct.anon.223 }
%struct.anon.223 = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.206 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.201 }
%struct.anon.201 = type { i64, i64 }
%union.anon.206 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.202, ptr, i32, i32, i32, %union.anon.203 }
%union.anon.202 = type { i64 }
%union.anon.203 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.smc_rtoken = type { i64, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.smc_llc_qentry = type { %struct.list_head, ptr, %union.smc_llc_msg }
%union.smc_llc_msg = type { %struct.smc_llc_msg_delete_rkey }
%struct.smc_llc_msg_delete_rkey = type { %struct.smc_llc_hdr, i8, i8, [2 x i8], [8 x i32], [4 x i8] }
%struct.smc_llc_hdr = type <{ %struct.smc_wr_rx_hdr, %union.anon.218, i8 }>
%struct.smc_wr_rx_hdr = type { %union.anon.216 }
%union.anon.216 = type { i8 }
%union.anon.218 = type { i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.128, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.128 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.smc_llc_msg_confirm_link = type { %struct.smc_llc_hdr, [6 x i8], [16 x i8], [3 x i8], i8, [4 x i8], i8, [9 x i8] }
%struct.smc_ib_device = type { %struct.list_head, ptr, [2 x %struct.ib_port_attr], %struct.ib_event_handler, ptr, ptr, %struct.tasklet_struct, %struct.tasklet_struct, [2 x [6 x i8]], [2 x [16 x i8]], [2 x i8], i8, %struct.work_struct, i32, [1 x i32], %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, [2 x %struct.atomic_t], [2 x i32] }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.215, i32 }
%union.anon.215 = type { ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.smc_llc_msg_add_link = type { %struct.smc_llc_hdr, [6 x i8], [2 x i8], [16 x i8], [3 x i8], i8, i8, [3 x i8], [8 x i8] }
%struct.smc_llc_msg_add_link_v2_ext = type <{ i8, i8, [16 x i8], [8 x i8], i16, [0 x %struct.smc_llc_msg_add_link_cont_rt] }>
%struct.smc_llc_msg_add_link_cont_rt = type { i32, i32, i64 }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.225 }
%union.anon.225 = type { %struct.anon.227, [40 x i8] }
%struct.anon.227 = type { i16, i64, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.166, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.166 = type { %struct.list_head }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.smc_llc_msg_del_link = type <{ %struct.smc_llc_hdr, i8, i32, [35 x i8] }>
%struct.smc_init_info = type { i8, i8, i8, i8, i8, i16, i32, [32 x i8], i8, i8, [16 x i8], [6 x i8], [8 x i8], ptr, [16 x i8], i8, i32, %struct.smc_init_info_smcrv2, [9 x i64], [9 x ptr], [9 x i16], i8, i8, i8 }
%struct.smc_init_info_smcrv2 = type { i32, ptr, i32, ptr, i8, [16 x i8], i8, [6 x i8], %struct.smc_gidlist }
%struct.smc_gidlist = type { i8, [2 x [16 x i8]] }
%struct.anon.219 = type { i8, i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.214, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.214 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.205 }
%struct.anon.205 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.smc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, ptr, %struct.smc_connection, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i8, i32, i32, i32, i8, %struct.mutex }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%union.anon.119 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.smc_connection = type { %struct.rb_node, ptr, ptr, i32, i8, i32, %struct.atomic_t, i32, ptr, ptr, i32, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %struct.atomic_t, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.delayed_work, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, i32, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.tasklet_struct, i8, i64, i8 }
%struct.smc_host_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_host_cursor, %union.smc_host_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%struct.smc_cdc_producer_flags = type { i8 }
%struct.smc_cdc_conn_state_flags = type { i8 }
%union.smc_host_cursor = type { %struct.atomic64_t }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.anon.221 = type { %struct.smc_llc_hdr, [40 x i8] }
%struct.smc_llc_msg_req_add_link_v2 = type { %struct.smc_llc_hdr, [20 x i8], i8, [3 x i8], [0 x [16 x i8]] }
%struct.smc_llc_msg_test_link = type { %struct.smc_llc_hdr, [16 x i8], [24 x i8] }
%struct.smc_llc_msg_confirm_rkey = type { %struct.smc_llc_hdr, [3 x %struct.smc_rmb_rtoken], i8 }
%struct.smc_rmb_rtoken = type <{ %union.anon.220, i32, i64 }>
%union.anon.220 = type { i8 }
%struct.smc_llc_msg_add_link_cont = type <{ %struct.smc_llc_hdr, i8, i8, [2 x i8], [2 x %struct.smc_llc_msg_add_link_cont_rt], [4 x i8] }>
%struct.smc_llc_msg_delete_rkey_v2 = type { %struct.smc_llc_hdr, i8, i8, [2 x i8], [0 x i32] }
%struct.ib_wc = type { %union.anon.176, i32, i32, i32, i32, ptr, %union.anon.177, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.176 = type { i64 }
%union.anon.177 = type { i32 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/smc/smc_llc.c\00", [46 x i8] zeroinitializer }, align 32
@smc_llc_wait.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@smc_llc_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\014smc: SMC-R lg %*phN net %llu dropped unexpected LLC msg: msg %d exp %d flow %d role %d flags %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smc_llc_wait\00", [19 x i8] zeroinitializer }, align 32
@smc_llc_wait._entry_ptr = internal global ptr @smc_llc_wait._entry, section ".printk_index", align 4
@smc_llc_lgr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&lgr->llc_event_work)\00", [56 x i8] zeroinitializer }, align 32
@smc_llc_lgr_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&lgr->llc_add_link_work)\00", [53 x i8] zeroinitializer }, align 32
@smc_llc_lgr_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&lgr->llc_del_link_work)\00", [53 x i8] zeroinitializer }, align 32
@smc_llc_lgr_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&lgr->llc_event_q_lock\00", [41 x i8] zeroinitializer }, align 32
@smc_llc_lgr_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&lgr->llc_flow_lock\00", [44 x i8] zeroinitializer }, align 32
@smc_llc_lgr_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&lgr->llc_flow_waiter\00", [42 x i8] zeroinitializer }, align 32
@smc_llc_lgr_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&lgr->llc_msg_waiter\00", [43 x i8] zeroinitializer }, align 32
@smc_llc_lgr_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&lgr->llc_conf_mutex\00", [43 x i8] zeroinitializer }, align 32
@smc_llc_link_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&link->llc_testlink_wrk)->work)\00", [44 x i8] zeroinitializer }, align 32
@smc_llc_link_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&link->llc_testlink_wrk)->timer\00", [62 x i8] zeroinitializer }, align 32
@smc_llc_link_active._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smc_llc_link_active = private unnamed_addr constant [20 x i8] c"smc_llc_link_active\00", align 1
@smc_llc_link_active._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.smc_llc_link_active, ptr @.str, i32 2158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014smc: SMC-R lg %*phN net %llu link added: id %*phN, peerid %*phN, ibdev %s, ibport %d\0A\00", [40 x i8] zeroinitializer }, align 32
@smc_llc_link_active._entry_ptr = internal global ptr @smc_llc_link_active._entry, section ".printk_index", align 4
@smc_llc_link_clear._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smc_llc_link_clear = private unnamed_addr constant [19 x i8] c"smc_llc_link_clear\00", align 1
@smc_llc_link_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.smc_llc_link_clear, ptr @.str, i32 2177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\014smc: SMC-R lg %*phN net %llu link removed: id %*phN, peerid %*phN, ibdev %s, ibport %d\0A\00", [38 x i8] zeroinitializer }, align 32
@smc_llc_link_clear._entry_ptr = internal global ptr @smc_llc_link_clear._entry, section ".printk_index", align 4
@smc_llc_rx_handlers = internal global { [16 x %struct.smc_wr_rx_handler], [64 x i8] } { [16 x %struct.smc_wr_rx_handler] [%struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 1 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 7 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 2 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 3 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 4 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 6 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 8 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 9 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 33 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 39 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 34 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 36 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 37 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 38 }, %struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_llc_rx_handler, i8 41 }, %struct.smc_wr_rx_handler zeroinitializer], [64 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@smc_llc_flow_parallel.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@smc_llc_flow_parallel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014smc: SMC-R lg %*phN net %llu dropped parallel LLC msg: msg %d flow %d role %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smc_llc_flow_parallel\00", [42 x i8] zeroinitializer }, align 32
@smc_llc_flow_parallel._entry_ptr = internal global ptr @smc_llc_flow_parallel._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@smc_llc_protocol_violation._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smc_llc_protocol_violation = private unnamed_addr constant [27 x i8] c"smc_llc_protocol_violation\00", align 1
@smc_llc_protocol_violation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.smc_llc_protocol_violation, ptr @.str, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014smc: SMC-R lg %*phN net %llu LLC protocol violation: llc_type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@smc_llc_protocol_violation._entry_ptr = internal global ptr @smc_llc_protocol_violation._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@switch.table.smc_llc_flow_start = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 0, i32 4, i32 0, i32 6, i32 0, i32 0, i32 6], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 2, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 310, i32 7 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 363, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2116, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2117, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2118, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2120, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2121, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2122, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2123, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2124, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2146, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2152, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2171, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"smc_llc_rx_handlers\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2261, i32 33 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 245, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private constant [21 x i8] c"../net/smc/smc_llc.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1821, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 87, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [32 x i8] c"switch.table.smc_llc_flow_start\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @smc_llc_flow_parallel._entry, ptr @smc_llc_flow_parallel._entry_ptr, ptr @smc_llc_link_active._entry, ptr @smc_llc_link_active._entry_ptr, ptr @smc_llc_link_clear._entry, ptr @smc_llc_link_clear._entry_ptr, ptr @smc_llc_protocol_violation._entry, ptr @smc_llc_protocol_violation._entry_ptr, ptr @smc_llc_wait._entry, ptr @smc_llc_wait._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @smc_llc_lgr_init.__key, ptr @.str.3, ptr @smc_llc_lgr_init.__key.4, ptr @.str.5, ptr @smc_llc_lgr_init.__key.6, ptr @.str.7, ptr @smc_llc_lgr_init.__key.8, ptr @.str.9, ptr @smc_llc_lgr_init.__key.10, ptr @.str.11, ptr @smc_llc_lgr_init.__key.12, ptr @.str.13, ptr @smc_llc_lgr_init.__key.14, ptr @.str.15, ptr @smc_llc_lgr_init.__key.16, ptr @.str.17, ptr @smc_llc_link_init.__key, ptr @.str.18, ptr @smc_llc_link_init.__key.19, ptr @.str.20, ptr @smc_llc_link_active._rs, ptr @.str.21, ptr @.str.22, ptr @smc_llc_link_clear._rs, ptr @.str.23, ptr @smc_llc_rx_handlers, ptr @.str.24, ptr @.str.25, ptr @smc_llc_protocol_violation._rs, ptr @.str.26, ptr @init_completion.__key, ptr @.str.27, ptr @switch.table.smc_llc_flow_start], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_lgr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_lgr_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_lgr_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_lgr_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_lgr_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_lgr_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_lgr_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_lgr_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_link_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_link_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_link_active._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_link_active._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_link_clear._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_link_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_rx_handlers to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_flow_parallel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_protocol_violation._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_llc_protocol_violation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smc_llc_flow_start to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @smc_llc_flow_qentry_clr(ptr nocapture noundef %flow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %qentry1 = getelementptr inbounds %struct.smc_llc_flow, ptr %flow, i32 0, i32 1
  %0 = ptrtoint ptr %qentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qentry1, align 4
  store ptr null, ptr %qentry1, align 4
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_llc_flow_qentry_del(ptr nocapture noundef %flow) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %qentry1 = getelementptr inbounds %struct.smc_llc_flow, ptr %flow, i32 0, i32 1
  %0 = ptrtoint ptr %qentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qentry1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %qentry1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %qentry1, align 4
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_llc_flow_initiate(ptr noundef %lgr, i32 noundef %type) local_unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp = icmp eq i32 %type, 6
  %spec.select = select i1 %cmp, i32 6, i32 0
  %llc_flow_lock = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 21
  %llc_flow_lcl = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 18
  %llc_flow_rmt = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 19
  %llc_flow_waiter = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 16
  br label %again

again:                                            ; preds = %if.end86.again_crit_edge, %entry
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %lgr, align 4
  %cmp.i.not = icmp eq ptr %1, %lgr
  br i1 %cmp.i.not, label %again.cleanup91_crit_edge, label %if.end2

again.cleanup91_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup91

if.end2:                                          ; preds = %again
  call void @_raw_spin_lock_bh(ptr noundef %llc_flow_lock) #15
  %2 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %llc_flow_lcl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end2.if.end14_crit_edge

if.end2.if.end14_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end2
  %4 = ptrtoint ptr %llc_flow_rmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %llc_flow_rmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %spec.select)
  %cmp9 = icmp eq i32 %5, %spec.select
  %or.cond = or i1 %cmp6, %cmp9
  br i1 %or.cond, label %if.then10, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %type, ptr %llc_flow_lcl, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %llc_flow_lock) #15
  br label %cleanup91

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end2.if.end14_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %llc_flow_lock) #15
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 314) #15
  %7 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %lgr, align 4
  %cmp.i125.not = icmp eq ptr %8, %lgr
  br i1 %cmp.i125.not, label %if.end14.if.end86_crit_edge, label %lor.rhs

if.end14.if.end86_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

lor.rhs:                                          ; preds = %if.end14
  %9 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %llc_flow_lcl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp24 = icmp eq i32 %10, 0
  br i1 %cmp24, label %land.rhs, label %lor.rhs.if.then43_crit_edge

lor.rhs.if.then43_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then43

land.rhs:                                         ; preds = %lor.rhs
  %11 = ptrtoint ptr %llc_flow_rmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %llc_flow_rmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp27 = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %spec.select)
  %cmp31 = icmp eq i32 %12, %spec.select
  %spec.select123 = or i1 %cmp27, %cmp31
  br i1 %spec.select123, label %land.rhs.if.end86_crit_edge, label %land.rhs.if.then43_crit_edge

land.rhs.if.then43_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then43

land.rhs.if.end86_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.then43:                                        ; preds = %land.rhs.if.then43_crit_edge, %lor.rhs.if.then43_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call45148 = call i32 @prepare_to_wait_event(ptr noundef %llc_flow_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %14 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %lgr, align 4
  %cmp.i127.not149 = icmp eq ptr %15, %lgr
  br i1 %cmp.i127.not149, label %if.then43.for.end_crit_edge, label %if.then43.lor.rhs50_crit_edge

if.then43.lor.rhs50_crit_edge:                    ; preds = %if.then43
  br label %lor.rhs50

if.then43.for.end_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

lor.end65.thread:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool70.not129 = icmp eq i32 %call83, 0
  %spec.select159 = select i1 %tobool70.not129, i32 1, i32 %call83
  br label %for.end

lor.rhs50:                                        ; preds = %cleanup.lor.rhs50_crit_edge, %if.then43.lor.rhs50_crit_edge
  %__ret44.0150 = phi i32 [ %call83, %cleanup.lor.rhs50_crit_edge ], [ 2000, %if.then43.lor.rhs50_crit_edge ]
  %16 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %llc_flow_lcl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp53 = icmp eq i32 %17, 0
  br i1 %cmp53, label %lor.end65, label %lor.rhs50.lor.end65.thread132_crit_edge

lor.rhs50.lor.end65.thread132_crit_edge:          ; preds = %lor.rhs50
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end65.thread132

lor.end65:                                        ; preds = %lor.rhs50
  %18 = ptrtoint ptr %llc_flow_rmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %llc_flow_rmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp57 = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %spec.select)
  %cmp61 = icmp eq i32 %19, %spec.select
  %spec.select124 = or i1 %cmp57, %cmp61
  br i1 %spec.select124, label %for.end.loopexit.split.loop.exit143, label %lor.end65.lor.end65.thread132_crit_edge

lor.end65.lor.end65.thread132_crit_edge:          ; preds = %lor.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end65.thread132

lor.end65.thread132:                              ; preds = %lor.end65.lor.end65.thread132_crit_edge, %lor.rhs50.lor.end65.thread132_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret44.0150)
  %tobool76.not = icmp eq i32 %__ret44.0150, 0
  br i1 %tobool76.not, label %lor.end65.thread132.for.end_crit_edge, label %cleanup

lor.end65.thread132.for.end_crit_edge:            ; preds = %lor.end65.thread132
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup:                                          ; preds = %lor.end65.thread132
  %call83 = call i32 @schedule_timeout(i32 noundef %__ret44.0150) #15
  %call45 = call i32 @prepare_to_wait_event(ptr noundef %llc_flow_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %20 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %lgr, align 4
  %cmp.i127.not = icmp eq ptr %21, %lgr
  br i1 %cmp.i127.not, label %lor.end65.thread, label %cleanup.lor.rhs50_crit_edge

cleanup.lor.rhs50_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs50

for.end.loopexit.split.loop.exit143:              ; preds = %lor.end65
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret44.0150)
  %tobool70.not.le = icmp eq i32 %__ret44.0150, 0
  %spec.store.select93.le = select i1 %tobool70.not.le, i32 1, i32 %__ret44.0150
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit143, %lor.end65.thread132.for.end_crit_edge, %lor.end65.thread, %if.then43.for.end_crit_edge
  %__ret44.2.ph = phi i32 [ %spec.store.select93.le, %for.end.loopexit.split.loop.exit143 ], [ 2000, %if.then43.for.end_crit_edge ], [ %spec.select159, %lor.end65.thread ], [ 0, %lor.end65.thread132.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %llc_flow_waiter, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end86

if.end86:                                         ; preds = %for.end, %land.rhs.if.end86_crit_edge, %if.end14.if.end86_crit_edge
  %__ret.1 = phi i32 [ 2000, %land.rhs.if.end86_crit_edge ], [ %__ret44.2.ph, %for.end ], [ 2000, %if.end14.if.end86_crit_edge ]
  %tobool88.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool88.not, label %if.end86.cleanup91_crit_edge, label %if.end86.again_crit_edge

if.end86.again_crit_edge:                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %again

if.end86.cleanup91_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup91

cleanup91:                                        ; preds = %if.end86.cleanup91_crit_edge, %if.then10, %again.cleanup91_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ -110, %if.end86.cleanup91_crit_edge ], [ -19, %again.cleanup91_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_llc_flow_stop(ptr noundef %lgr, ptr noundef writeonly %flow) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %llc_flow_lock = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %llc_flow_lock) #15
  %0 = ptrtoint ptr %flow to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %flow, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %llc_flow_lock) #15
  %1 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %lgr, align 4
  %cmp.i.not = icmp eq ptr %2, %lgr
  br i1 %cmp.i.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %delayed_event = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 20
  %3 = ptrtoint ptr %delayed_event to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %delayed_event, align 8
  %tobool2.not = icmp ne ptr %4, null
  %llc_flow_lcl = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 18
  %cmp = icmp eq ptr %llc_flow_lcl, %flow
  %or.cond = select i1 %tobool2.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %llc_event_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %llc_event_work) #15
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %llc_flow_waiter = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %llc_flow_waiter, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smc_llc_wait(ptr noundef %lgr, ptr noundef readonly %lnk, i32 noundef %time_out, i8 noundef zeroext %exp_msg) local_unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21
  %llc_flow_lcl = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 18
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 348) #15
  %qentry = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 18, i32 1
  %1 = ptrtoint ptr %qentry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qentry, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.lor.lhs.false54_crit_edge

entry.lor.lhs.false54_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false54

lor.lhs.false:                                    ; preds = %entry
  %tobool4.not = icmp eq ptr %lnk, null
  br i1 %tobool4.not, label %lor.lhs.false.lor.end_crit_edge, label %land.lhs.true

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 54
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.i = icmp ugt i32 %4, 1
  br i1 %switch.i, label %land.lhs.true.lor.end_crit_edge, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

land.lhs.true.lor.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge
  %5 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %lgr, align 4
  %cmp.i = icmp eq ptr %6, %lgr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time_out)
  %tobool12.not = icmp eq i32 %time_out, 0
  %or.cond178 = or i1 %tobool12.not, %cmp.i
  br i1 %or.cond178, label %lor.end.if.end50_crit_edge, label %if.then15

lor.end.if.end50_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then15:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %state.i153 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 54
  %llc_msg_waiter = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 17
  %call17180 = call i32 @prepare_to_wait_event(ptr noundef %llc_msg_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %8 = ptrtoint ptr %qentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qentry, align 4
  %tobool20.not181 = icmp eq ptr %9, null
  br i1 %tobool20.not181, label %if.then15.lor.lhs.false21_crit_edge, label %if.then15.for.end_crit_edge

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then15.lor.lhs.false21_crit_edge:              ; preds = %if.then15
  br label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %cleanup.lor.lhs.false21_crit_edge, %if.then15.lor.lhs.false21_crit_edge
  %__ret16.0182 = phi i32 [ %call47, %cleanup.lor.lhs.false21_crit_edge ], [ %time_out, %if.then15.lor.lhs.false21_crit_edge ]
  br i1 %tobool4.not, label %lor.lhs.false21.lor.end29_crit_edge, label %land.lhs.true23

lor.lhs.false21.lor.end29_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end29

land.lhs.true23:                                  ; preds = %lor.lhs.false21
  %10 = ptrtoint ptr %state.i153 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i153, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %switch.i154 = icmp ugt i32 %11, 1
  br i1 %switch.i154, label %land.lhs.true23.lor.end29_crit_edge, label %land.lhs.true23.for.end_crit_edge

land.lhs.true23.for.end_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

land.lhs.true23.lor.end29_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end29

lor.end29:                                        ; preds = %land.lhs.true23.lor.end29_crit_edge, %lor.lhs.false21.lor.end29_crit_edge
  %12 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %lgr, align 4
  %cmp.i155 = icmp eq ptr %13, %lgr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.0182)
  %tobool40.not = icmp eq i32 %__ret16.0182, 0
  %or.cond179 = select i1 %cmp.i155, i1 true, i1 %tobool40.not
  br i1 %or.cond179, label %lor.end29.for.end_crit_edge, label %cleanup

lor.end29.for.end_crit_edge:                      ; preds = %lor.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup:                                          ; preds = %lor.end29
  %call47 = call i32 @schedule_timeout(i32 noundef %__ret16.0182) #15
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %llc_msg_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %14 = ptrtoint ptr %qentry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qentry, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %cleanup.lor.lhs.false21_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.lor.lhs.false21_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false21

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.end29.for.end_crit_edge, %land.lhs.true23.for.end_crit_edge, %if.then15.for.end_crit_edge
  call void @finish_wait(ptr noundef %llc_msg_waiter, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end50

if.end50:                                         ; preds = %for.end, %lor.end.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge
  %16 = ptrtoint ptr %qentry to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %qentry, align 4
  %tobool53.not = icmp eq ptr %.pr, null
  br i1 %tobool53.not, label %if.end50.out_crit_edge, label %if.end50.lor.lhs.false54_crit_edge

if.end50.lor.lhs.false54_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false54

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false54:                                  ; preds = %if.end50.lor.lhs.false54_crit_edge, %entry.lor.lhs.false54_crit_edge
  %17 = phi ptr [ %.pr, %if.end50.lor.lhs.false54_crit_edge ], [ %2, %entry.lor.lhs.false54_crit_edge ]
  %tobool55.not = icmp eq ptr %lnk, null
  br i1 %tobool55.not, label %lor.lhs.false54.lor.lhs.false58_crit_edge, label %land.lhs.true56

lor.lhs.false54.lor.lhs.false58_crit_edge:        ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false58

land.lhs.true56:                                  ; preds = %lor.lhs.false54
  %state.i157 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 54
  %18 = ptrtoint ptr %state.i157 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i157, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %switch.i158 = icmp ugt i32 %19, 1
  br i1 %switch.i158, label %land.lhs.true56.lor.lhs.false58_crit_edge, label %land.lhs.true56.if.then62_crit_edge

land.lhs.true56.if.then62_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then62

land.lhs.true56.lor.lhs.false58_crit_edge:        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %land.lhs.true56.lor.lhs.false58_crit_edge, %lor.lhs.false54.lor.lhs.false58_crit_edge
  %20 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %lgr, align 4
  %cmp.i159.not = icmp eq ptr %21, %lgr
  br i1 %cmp.i159.not, label %lor.lhs.false58.if.then62_crit_edge, label %if.end63

lor.lhs.false58.if.then62_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false58.if.then62_crit_edge, %land.lhs.true56.if.then62_crit_edge
  %22 = ptrtoint ptr %qentry to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr186 = load ptr, ptr %qentry, align 4
  %tobool.not.i = icmp eq ptr %.pr186, null
  br i1 %tobool.not.i, label %if.then62.out_crit_edge, label %if.then62.out.sink.split_crit_edge

if.then62.out.sink.split_crit_edge:               ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.then62.out_crit_edge:                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end63:                                         ; preds = %lor.lhs.false58
  %conv = zext i8 %exp_msg to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %exp_msg)
  %tobool65.not = icmp eq i8 %exp_msg, 0
  br i1 %tobool65.not, label %if.end63.out_crit_edge, label %land.lhs.true66

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true66:                                  ; preds = %if.end63
  %msg = getelementptr inbounds %struct.smc_llc_qentry, ptr %17, i32 0, i32 2
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %msg, align 4
  %bf.clear = and i8 %bf.load, 15
  %conv67 = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear, i8 %exp_msg)
  %cmp.not = icmp eq i8 %bf.clear, %exp_msg
  br i1 %cmp.not, label %land.lhs.true66.out_crit_edge, label %if.then70

land.lhs.true66.out_crit_edge:                    ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then70:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %exp_msg)
  %cmp72 = icmp eq i8 %exp_msg, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear)
  %cmp76 = icmp eq i8 %bf.clear, 4
  %or.cond = select i1 %cmp72, i1 %cmp76, i1 false
  br i1 %or.cond, label %if.then78, label %land.end

if.then78:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %qentry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qentry, align 4
  store ptr null, ptr %qentry, align 4
  %call81 = call fastcc zeroext i1 @smc_llc_flow_start(ptr noundef %llc_flow_lcl, ptr noundef %25)
  br label %cleanup112

land.end:                                         ; preds = %if.then70
  %.b152 = load i1, ptr @smc_llc_wait.__already_done, align 1
  br i1 %.b152, label %land.end.if.end102_crit_edge, label %if.then90, !prof !76

land.end.if.end102_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

if.then90:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @smc_llc_wait.__already_done, align 1
  %id = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 9
  %net = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 27
  %26 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net, align 4
  %net_cookie = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 47
  %28 = ptrtoint ptr %net_cookie to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %net_cookie, align 128
  %30 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %llc_flow_lcl, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %0, align 8
  %flags = getelementptr inbounds %struct.smc_llc_qentry, ptr %17, i32 0, i32 2, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags, align 1
  %conv100 = zext i8 %35 to i32
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 4, ptr noundef %id, i64 noundef %29, i32 noundef %conv67, i32 noundef %conv, i32 noundef %31, i32 noundef %33, i32 noundef %conv100) #18
  br label %if.end102

if.end102:                                        ; preds = %if.then90, %land.end.if.end102_crit_edge
  %36 = ptrtoint ptr %qentry to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qentry, align 4
  %tobool.not.i163 = icmp eq ptr %37, null
  br i1 %tobool.not.i163, label %if.end102.out_crit_edge, label %if.end102.out.sink.split_crit_edge

if.end102.out.sink.split_crit_edge:               ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.end102.out_crit_edge:                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out.sink.split:                                   ; preds = %if.end102.out.sink.split_crit_edge, %if.then62.out.sink.split_crit_edge
  %.sink = phi ptr [ %.pr186, %if.then62.out.sink.split_crit_edge ], [ %37, %if.end102.out.sink.split_crit_edge ]
  %38 = ptrtoint ptr %qentry to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %qentry, align 4
  call void @kfree(ptr noundef nonnull %.sink) #15
  br label %out

out:                                              ; preds = %out.sink.split, %if.end102.out_crit_edge, %land.lhs.true66.out_crit_edge, %if.end63.out_crit_edge, %if.then62.out_crit_edge, %if.end50.out_crit_edge
  %39 = ptrtoint ptr %qentry to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %qentry, align 4
  br label %cleanup112

cleanup112:                                       ; preds = %out, %if.then78
  %retval.0 = phi ptr [ %40, %out ], [ null, %if.then78 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @smc_llc_flow_start(ptr nocapture noundef %flow, ptr noundef %qentry) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 1
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lgr1, align 4
  %llc_flow_lock = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %llc_flow_lock) #15
  %4 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i32 %5 to i8
  %msg.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %msg.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %trunc.i = trunc i8 %bf.load.i to i4
  %7 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i, label %if.then.if.end.i_crit_edge [
    i4 2, label %if.then.land.lhs.true.i_crit_edge
    i4 4, label %if.then.land.lhs.true.i_crit_edge24
  ]

if.then.land.lhs.true.i_crit_edge24:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

if.then.land.lhs.true.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.land.lhs.true.i_crit_edge, %if.then.land.lhs.true.i_crit_edge24
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.i, i8 %conv)
  %cmp7.not.i = icmp eq i8 %bf.clear.i, %conv
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %delayed_event.i = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 20
  %8 = ptrtoint ptr %delayed_event.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %delayed_event.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true9.i.if.end.i_crit_edge

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %delayed_event.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %qentry, ptr %delayed_event.i, align 8
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true9.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %conv11.i = and i32 %5, 255
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.i, i8 %conv)
  %cmp13.not.i = icmp eq i8 %bf.clear.i, %conv
  br i1 %cmp13.not.i, label %if.end.i.if.end36.i_crit_edge, label %land.end.i

if.end.i.if.end36.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

land.end.i:                                       ; preds = %if.end.i
  %.b50.i = load i1, ptr @smc_llc_flow_parallel.__already_done, align 1
  br i1 %.b50.i, label %land.end.i.if.end36.i_crit_edge, label %if.then22.i, !prof !76

land.end.i.if.end36.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then22.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @smc_llc_flow_parallel.__already_done, align 1
  %id.i = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 9
  %11 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21
  %net.i = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 27
  %12 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net.i, align 4
  %net_cookie.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %net_cookie.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %net_cookie.i, align 128
  %conv26.i = zext i8 %bf.load.i to i32
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 4, ptr noundef %id.i, i64 noundef %15, i32 noundef %conv26.i, i32 noundef %conv11.i, i32 noundef %17) #18
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then22.i, %land.end.i.if.end36.i_crit_edge, %if.end.i.if.end36.i_crit_edge
  tail call void @kfree(ptr noundef %qentry) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %msg, align 4
  %bf.clear = and i8 %bf.load, 15
  %conv4 = zext i8 %bf.clear to i32
  %switch.tableidx = add nsw i32 %conv4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 8
  br i1 %19, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.smc_llc_flow_start, i32 0, i32 %switch.tableidx
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.sw.epilog_crit_edge ]
  %21 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %flow, align 4
  %qentry1.i = getelementptr inbounds %struct.smc_llc_flow, ptr %flow, i32 0, i32 1
  %22 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %qentry, ptr %qentry1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end36.i, %if.then.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %llc_flow_lock) #15
  ret i1 %tobool.not
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_llc_send_confirm_link(ptr noundef %link, i32 noundef %reqresp) local_unnamed_addr #2 align 64 {
entry:
  %pend = alloca ptr, align 4
  %wr_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend) #15
  %0 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf) #15
  %1 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf, align 4, !annotation !77
  %state.i.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 54
  %2 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.i.i.i = icmp ugt i32 %3, 1
  br i1 %switch.i.i.i, label %smc_link_sendable.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

smc_link_sendable.exit.i:                         ; preds = %entry
  %cur_qp_state.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %cur_qp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_qp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 3
  br i1 %cmp.i.i, label %if.end, label %smc_link_sendable.exit.i.cleanup_crit_edge

smc_link_sendable.exit.i.cleanup_crit_edge:       ; preds = %smc_link_sendable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %smc_link_sendable.exit.i
  %wr_tx_refcnt.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #15, !srcloc !78
  %call.i = call i32 @smc_wr_tx_get_free_slot(ptr noundef %link, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf, ptr noundef null, ptr noundef nonnull %pend) #15
  %7 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end3, label %if.end.put_out_crit_edge

if.end.put_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %wr_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr_buf, align 4
  %10 = getelementptr inbounds i8, ptr %9, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 43)
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %9, align 1
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %13 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lgr, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.i = icmp eq i8 %16, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 33, ptr %9, align 1
  %18 = getelementptr inbounds %struct.smc_llc_hdr, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 44, ptr %18, align 1
  br label %smc_llc_init_msg_hdr.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %20 = getelementptr inbounds %struct.smc_llc_hdr, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 44, ptr %20, align 1
  br label %smc_llc_init_msg_hdr.exit

smc_llc_init_msg_hdr.exit:                        ; preds = %if.else.i, %if.then.i
  %flags = getelementptr inbounds %struct.smc_llc_hdr, ptr %9, i32 0, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reqresp)
  %cmp = icmp eq i32 %reqresp, 1
  %spec.select.v = select i1 %cmp, i8 -125, i8 3
  %spec.select = or i8 %23, %spec.select.v
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select, ptr %flags, align 1
  %sender_mac = getelementptr inbounds %struct.smc_llc_msg_confirm_link, ptr %9, i32 0, i32 1
  %25 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link, align 8
  %ibport = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 1
  %27 = ptrtoint ptr %ibport to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ibport, align 4
  %conv15 = zext i8 %28 to i32
  %sub = add nsw i32 %conv15, -1
  %arrayidx = getelementptr %struct.smc_ib_device, ptr %26, i32 0, i32 8, i32 %sub
  %29 = call ptr @memcpy(ptr %sender_mac, ptr %arrayidx, i32 6)
  %sender_gid = getelementptr inbounds %struct.smc_llc_msg_confirm_link, ptr %9, i32 0, i32 2
  %gid = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 34
  %30 = call ptr @memcpy(ptr %sender_gid, ptr %gid, i32 16)
  %sender_qp_num = getelementptr inbounds %struct.smc_llc_msg_confirm_link, ptr %9, i32 0, i32 3
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 3
  %31 = ptrtoint ptr %roce_qp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %roce_qp, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qp_num, align 4
  %t.1.extract.trunc.i = trunc i32 %34 to i24
  %35 = ptrtoint ptr %sender_qp_num to i32
  call void @__asan_storeN_noabort(i32 %35, i32 3)
  store i24 %t.1.extract.trunc.i, ptr %sender_qp_num, align 1
  %link_id = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 43
  %36 = ptrtoint ptr %link_id to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %link_id, align 2
  %link_num = getelementptr inbounds %struct.smc_llc_msg_confirm_link, ptr %9, i32 0, i32 4
  %38 = ptrtoint ptr %link_num to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %link_num, align 1
  %link_uid = getelementptr inbounds %struct.smc_llc_msg_confirm_link, ptr %9, i32 0, i32 5
  %link_uid21 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 44
  %39 = ptrtoint ptr %link_uid21 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %link_uid21, align 1
  %41 = ptrtoint ptr %link_uid to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %link_uid, align 1
  %max_links = getelementptr inbounds %struct.smc_llc_msg_confirm_link, ptr %9, i32 0, i32 6
  %42 = ptrtoint ptr %max_links to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %max_links, align 1
  %43 = ptrtoint ptr %pend to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pend, align 4
  %call23 = call i32 @smc_wr_tx_send(ptr noundef %link, ptr noundef %44) #15
  br label %put_out

put_out:                                          ; preds = %smc_llc_init_msg_hdr.exit, %if.end.put_out_crit_edge
  %rc.0 = phi i32 [ %7, %if.end.put_out_crit_edge ], [ %call23, %smc_llc_init_msg_hdr.exit ]
  %call.i.i.i50 = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #15
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #15, !srcloc !80
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i51, label %put_out.cleanup_crit_edge

put_out.cleanup_crit_edge:                        ; preds = %put_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i51:                                      ; preds = %put_out
  call void @__sanitizer_cov_trace_pc() #17
  %wr_tx_wait.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i51, %put_out.cleanup_crit_edge, %smc_link_sendable.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %put_out.cleanup_crit_edge ], [ %rc.0, %if.then.i51 ], [ -67, %smc_link_sendable.exit.i.cleanup_crit_edge ], [ -67, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_tx_send(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_llc_send_add_link(ptr noundef %link, ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %gid, ptr noundef readonly %link_new, i32 noundef %reqresp) local_unnamed_addr #2 align 64 {
entry:
  %buf_lst.i = alloca i32, align 4
  %pend = alloca ptr, align 4
  %wr_buf = alloca ptr, align 4
  %wr_buf6 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend) #15
  %0 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend, align 4, !annotation !77
  %state.i.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 54
  %1 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %switch.i.i.i = icmp ugt i32 %2, 1
  br i1 %switch.i.i.i, label %smc_link_sendable.exit.i, label %entry.cleanup63_crit_edge

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup63

smc_link_sendable.exit.i:                         ; preds = %entry
  %cur_qp_state.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %cur_qp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cur_qp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 3
  br i1 %cmp.i.i, label %if.end, label %smc_link_sendable.exit.i.cleanup63_crit_edge

smc_link_sendable.exit.i.cleanup63_crit_edge:     ; preds = %smc_link_sendable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup63

if.end:                                           ; preds = %smc_link_sendable.exit.i
  %wr_tx_refcnt.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #15, !srcloc !78
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %6 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lgr, align 4
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp eq i8 %9, 2
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf) #15
  %10 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf, align 4, !annotation !77
  %call.i = call i32 @smc_wr_tx_get_v2_slot(ptr noundef %link, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf, ptr noundef nonnull %pend) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %wr_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wr_buf, align 4
  %arrayidx = getelementptr [8192 x i8], ptr %12, i32 0, i32 44
  %13 = call ptr @memset(ptr %arrayidx, i32 0, i32 44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf) #15
  br label %if.end14

cleanup:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf) #15
  br label %put_out

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf6) #15
  %14 = ptrtoint ptr %wr_buf6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf6, align 4, !annotation !77
  %call.i109 = call i32 @smc_wr_tx_get_free_slot(ptr noundef %link, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf6, ptr noundef null, ptr noundef nonnull %pend) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i109)
  %tobool8.not = icmp sgt i32 %call.i109, -1
  br i1 %tobool8.not, label %cleanup11.thread, label %cleanup11

cleanup11.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %wr_buf6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr_buf6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf6) #15
  br label %if.end14

cleanup11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf6) #15
  br label %put_out

if.end14:                                         ; preds = %cleanup11.thread, %cleanup.thread
  %ext.1 = phi ptr [ %arrayidx, %cleanup.thread ], [ null, %cleanup11.thread ]
  %addllc.2 = phi ptr [ %12, %cleanup.thread ], [ %16, %cleanup11.thread ]
  %17 = getelementptr inbounds i8, ptr %addllc.2, i32 1
  %18 = call ptr @memset(ptr %17, i32 0, i32 43)
  %19 = ptrtoint ptr %addllc.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %addllc.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reqresp)
  %cmp15 = icmp eq i32 %reqresp, 1
  br i1 %cmp15, label %if.then17, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.smc_llc_hdr, ptr %addllc.2, i32 0, i32 2
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags, align 1
  %22 = or i8 %21, -128
  store i8 %22, ptr %flags, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  %sender_mac = getelementptr inbounds %struct.smc_llc_msg_add_link, ptr %addllc.2, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %sender_mac, ptr %mac, i32 6)
  %sender_gid = getelementptr inbounds %struct.smc_llc_msg_add_link, ptr %addllc.2, i32 0, i32 3
  %24 = call ptr @memcpy(ptr %sender_gid, ptr %gid, i32 16)
  %tobool23.not = icmp eq ptr %link_new, null
  br i1 %tobool23.not, label %if.end21.if.end50_crit_edge, label %if.then24

if.end21.if.end50_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then24:                                        ; preds = %if.end21
  %link_id = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 43
  %25 = ptrtoint ptr %link_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %link_id, align 2
  %link_num = getelementptr inbounds %struct.smc_llc_msg_add_link, ptr %addllc.2, i32 0, i32 5
  %27 = ptrtoint ptr %link_num to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %link_num, align 1
  %sender_qp_num = getelementptr inbounds %struct.smc_llc_msg_add_link, ptr %addllc.2, i32 0, i32 4
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 3
  %28 = ptrtoint ptr %roce_qp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %roce_qp, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qp_num, align 4
  %t.1.extract.trunc.i = trunc i32 %31 to i24
  %32 = ptrtoint ptr %sender_qp_num to i32
  call void @__asan_storeN_noabort(i32 %32, i32 3)
  store i24 %t.1.extract.trunc.i, ptr %sender_qp_num, align 1
  %initial_psn = getelementptr inbounds %struct.smc_llc_msg_add_link, ptr %addllc.2, i32 0, i32 7
  %psn_initial = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 39
  %33 = ptrtoint ptr %psn_initial to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %psn_initial, align 4
  %t.1.extract.trunc.i110 = trunc i32 %34 to i24
  %35 = ptrtoint ptr %initial_psn to i32
  call void @__asan_storeN_noabort(i32 %35, i32 3)
  store i24 %t.1.extract.trunc.i110, ptr %initial_psn, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reqresp)
  %cmp27 = icmp eq i32 %reqresp, 0
  %path_mtu = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 37
  %36 = ptrtoint ptr %path_mtu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %path_mtu, align 4
  br i1 %cmp27, label %if.then29, label %if.else34

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %conv30 = trunc i32 %37 to i8
  %qp_mtu = getelementptr inbounds %struct.smc_llc_msg_add_link, ptr %addllc.2, i32 0, i32 6
  %38 = ptrtoint ptr %qp_mtu to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load31 = load i8, ptr %qp_mtu, align 1
  %bf.value = and i8 %conv30, 15
  %bf.clear32 = and i8 %bf.load31, -16
  br label %if.end45

if.else34:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %peer_mtu = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 38
  %39 = ptrtoint ptr %peer_mtu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %peer_mtu, align 8
  %41 = call i32 @llvm.umin.i32(i32 %37, i32 %40)
  %conv38 = trunc i32 %41 to i8
  %qp_mtu39 = getelementptr inbounds %struct.smc_llc_msg_add_link, ptr %addllc.2, i32 0, i32 6
  %42 = ptrtoint ptr %qp_mtu39 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load40 = load i8, ptr %qp_mtu39, align 1
  %bf.value41 = and i8 %conv38, 15
  %bf.clear42 = and i8 %bf.load40, -16
  br label %if.end45

if.end45:                                         ; preds = %if.else34, %if.then29
  %bf.value.sink = phi i8 [ %bf.value, %if.then29 ], [ %bf.clear42, %if.else34 ]
  %bf.clear32.sink = phi i8 [ %bf.clear32, %if.then29 ], [ %bf.value41, %if.else34 ]
  %qp_mtu.sink = phi ptr [ %qp_mtu, %if.then29 ], [ %qp_mtu39, %if.else34 ]
  %bf.set33 = or i8 %bf.clear32.sink, %bf.value.sink
  %43 = ptrtoint ptr %qp_mtu.sink to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %bf.set33, ptr %qp_mtu.sink, align 1
  %tobool46.not = icmp eq ptr %ext.1, null
  br i1 %tobool46.not, label %if.end45.if.end50_crit_edge, label %if.then48

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then48:                                        ; preds = %if.end45
  %44 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_lst.i) #15
  %46 = ptrtoint ptr %buf_lst.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %buf_lst.i, align 4, !annotation !77
  %uses_gateway.i = getelementptr inbounds %struct.smc_link_group, ptr %45, i32 0, i32 21, i32 0, i32 25
  %47 = ptrtoint ptr %uses_gateway.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %uses_gateway.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  %49 = ptrtoint ptr %ext.1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i = load i8, ptr %ext.1, align 1
  %bf.shl.i = select i1 %tobool.not.i, i8 -128, i8 0
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %ext.1, align 1
  %client_target_gid.i = getelementptr inbounds %struct.smc_llc_msg_add_link_v2_ext, ptr %ext.1, i32 0, i32 2
  %gid.i = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 34
  %50 = call ptr @memcpy(ptr %client_target_gid.i, ptr %gid.i, i32 16)
  %link_idx.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 46
  %51 = ptrtoint ptr %link_idx.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %link_idx.i, align 1
  %conv3.i = zext i8 %52 to i32
  %link_idx4.i = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 46
  %53 = ptrtoint ptr %link_idx4.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %link_idx4.i, align 1
  %conv5.i = zext i8 %54 to i32
  %rmbs_lock.i = getelementptr inbounds %struct.smc_link_group, ptr %45, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %rmbs_lock.i, i32 noundef 0) #15
  %conns_num.i = getelementptr inbounds %struct.smc_link_group, ptr %45, i32 0, i32 3
  %55 = ptrtoint ptr %conns_num.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %conns_num.i, align 8
  %conv6.i = trunc i32 %56 to i16
  %num_rkeys.i = getelementptr inbounds %struct.smc_llc_msg_add_link_v2_ext, ptr %ext.1, i32 0, i32 4
  %57 = ptrtoint ptr %num_rkeys.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %conv6.i, ptr %num_rkeys.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6.i)
  %tobool8.not.i = icmp eq i16 %conv6.i, 0
  br i1 %tobool8.not.i, label %if.then48.smc_llc_fill_ext_v2.exit_crit_edge, label %if.end.i112

if.then48.smc_llc_fill_ext_v2.exit_crit_edge:     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_fill_ext_v2.exit

if.end.i112:                                      ; preds = %if.then48
  %call.i111 = call fastcc ptr @smc_llc_get_first_rmb(ptr noundef %45, ptr noundef nonnull %buf_lst.i) #15
  %58 = ptrtoint ptr %num_rkeys.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %num_rkeys.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp103.i = icmp eq i16 %59, 0
  %tobool12.not104.i = icmp eq ptr %call.i111, null
  %or.cond105.i = select i1 %cmp103.i, i1 true, i1 %tobool12.not104.i
  br i1 %or.cond105.i, label %if.end.i112.smc_llc_fill_ext_v2.exit_crit_edge, label %if.end.i112.lor.lhs.false.i.i_crit_edge

if.end.i112.lor.lhs.false.i.i_crit_edge:          ; preds = %if.end.i112
  br label %lor.lhs.false.i.i

if.end.i112.smc_llc_fill_ext_v2.exit_crit_edge:   ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_fill_ext_v2.exit

lor.lhs.false.i.i:                                ; preds = %for.inc.i.lor.lhs.false.i.i_crit_edge, %if.end.i112.lor.lhs.false.i.i_crit_edge
  %i.0107.i = phi i32 [ %inc.i, %for.inc.i.lor.lhs.false.i.i_crit_edge ], [ 0, %if.end.i112.lor.lhs.false.i.i_crit_edge ]
  %buf_pos.0106.i = phi ptr [ %buf_pos.199.i, %for.inc.i.lor.lhs.false.i.i_crit_edge ], [ %call.i111, %if.end.i112.lor.lhs.false.i.i_crit_edge ]
  %60 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_pos.0106.i, i32 0, i32 5
  %mr_rx.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_pos.0106.i, i32 0, i32 5, i32 1, i32 12
  %arrayidx.i = getelementptr [3 x ptr], ptr %mr_rx.i, i32 0, i32 %conv3.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rkey.i, align 4
  %arrayidx15.i = getelementptr %struct.smc_llc_msg_add_link_v2_ext, ptr %ext.1, i32 0, i32 5, i32 %i.0107.i
  %65 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %arrayidx15.i, align 1
  %arrayidx17.i = getelementptr [3 x ptr], ptr %mr_rx.i, i32 0, i32 %conv5.i
  %66 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx17.i, align 4
  %rkey18.i = getelementptr inbounds %struct.ib_mr, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %rkey18.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rkey18.i, align 4
  %rmb_key_new.i = getelementptr %struct.smc_llc_msg_add_link_v2_ext, ptr %ext.1, i32 0, i32 5, i32 %i.0107.i, i32 1
  %70 = ptrtoint ptr %rmb_key_new.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %rmb_key_new.i, align 1
  %arrayidx21.i = getelementptr [3 x %struct.sg_table], ptr %60, i32 0, i32 %conv5.i
  %71 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx21.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_address.i, align 4
  %conv22.i = zext i32 %74 to i64
  %rmb_vaddr_new.i = getelementptr %struct.smc_llc_msg_add_link_v2_ext, ptr %ext.1, i32 0, i32 5, i32 %i.0107.i, i32 2
  %75 = ptrtoint ptr %rmb_vaddr_new.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 %conv22.i, ptr %rmb_vaddr_new.i, align 1
  %76 = ptrtoint ptr %buf_lst.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %buf_lst.i, align 4
  %arrayidx.i.i = getelementptr %struct.smc_link_group, ptr %45, i32 0, i32 7, i32 %77
  %78 = ptrtoint ptr %buf_pos.0106.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buf_pos.0106.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %79, %arrayidx.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %lor.lhs.false.i.i.smc_llc_get_next_rmb.exit.i_crit_edge

lor.lhs.false.i.i.smc_llc_get_next_rmb.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  %inc.i.i = add i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i.i)
  %cmp11.i.i.i = icmp slt i32 %inc.i.i, 16
  br i1 %cmp11.i.i.i, label %while.body.i.i.preheader.i, label %if.then.i.i.for.inc.thread.i_crit_edge

if.then.i.i.for.inc.thread.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.thread.i

while.body.i.i.preheader.i:                       ; preds = %if.then.i.i
  %arrayidx.i.i80.i = getelementptr %struct.smc_link_group, ptr %45, i32 0, i32 7, i32 %inc.i.i
  %80 = ptrtoint ptr %arrayidx.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %arrayidx.i.i80.i, align 4
  %cmp2.not.i.i81.i = icmp eq ptr %81, %arrayidx.i.i80.i
  %tobool.not10.i.i82.i = icmp eq ptr %81, null
  %tobool.not.i.i83.i = or i1 %cmp2.not.i.i81.i, %tobool.not10.i.i82.i
  br i1 %tobool.not.i.i83.i, label %while.body.i.i.preheader.i.if.end.i.i.i_crit_edge, label %while.body.i.i.preheader.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge

while.body.i.i.preheader.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge: ; preds = %while.body.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit.loopexit.i

while.body.i.i.preheader.i.if.end.i.i.i_crit_edge: ; preds = %while.body.i.i.preheader.i
  br label %if.end.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.smc_link_group, ptr %45, i32 0, i32 7, i32 %inc.i.i.i
  %82 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %cmp2.not.i.i.i = icmp eq ptr %83, %arrayidx.i.i.i
  %tobool.not10.i.i.i = icmp eq ptr %83, null
  %tobool.not.i.i.i = or i1 %cmp2.not.i.i.i, %tobool.not10.i.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.if.end.i.i.i_crit_edge, label %while.body.i.i.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge

while.body.i.i.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit.loopexit.i

while.body.i.i.i.if.end.i.i.i_crit_edge:          ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i.if.end.i.i.i_crit_edge, %while.body.i.i.preheader.i.if.end.i.i.i_crit_edge
  %84 = phi i32 [ %inc.i.i.i, %while.body.i.i.i.if.end.i.i.i_crit_edge ], [ %inc.i.i, %while.body.i.i.preheader.i.if.end.i.i.i_crit_edge ]
  %inc.i.i.i = add i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge, label %while.body.i.i.i

if.end.i.i.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit.loopexit.i

smc_llc_get_next_rmb.exit.loopexit.i:             ; preds = %if.end.i.i.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge, %while.body.i.i.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge, %while.body.i.i.preheader.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge
  %inc.i.i79.i = phi i32 [ %inc.i.i, %while.body.i.i.preheader.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge ], [ 16, %if.end.i.i.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge ], [ %inc.i.i.i, %while.body.i.i.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge ]
  %retval.0.i.ph.i = phi ptr [ %81, %while.body.i.i.preheader.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge ], [ null, %if.end.i.i.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge ], [ %83, %while.body.i.i.i.smc_llc_get_next_rmb.exit.loopexit.i_crit_edge ]
  %85 = ptrtoint ptr %buf_lst.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %inc.i.i79.i, ptr %buf_lst.i, align 4
  br label %smc_llc_get_next_rmb.exit.i

smc_llc_get_next_rmb.exit.i:                      ; preds = %smc_llc_get_next_rmb.exit.loopexit.i, %lor.lhs.false.i.i.smc_llc_get_next_rmb.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %79, %lor.lhs.false.i.i.smc_llc_get_next_rmb.exit.i_crit_edge ], [ %retval.0.i.ph.i, %smc_llc_get_next_rmb.exit.loopexit.i ]
  %tobool26.not98.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool26.not98.i, label %smc_llc_get_next_rmb.exit.i.for.inc.thread.i_crit_edge, label %smc_llc_get_next_rmb.exit.i.land.rhs.i_crit_edge

smc_llc_get_next_rmb.exit.i.land.rhs.i_crit_edge: ; preds = %smc_llc_get_next_rmb.exit.i
  br label %land.rhs.i

smc_llc_get_next_rmb.exit.i.for.inc.thread.i_crit_edge: ; preds = %smc_llc_get_next_rmb.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.thread.i

land.rhs.i:                                       ; preds = %smc_llc_get_next_rmb.exit77.i.land.rhs.i_crit_edge, %smc_llc_get_next_rmb.exit.i.land.rhs.i_crit_edge
  %buf_pos.199.i = phi ptr [ %retval.0.i76.i, %smc_llc_get_next_rmb.exit77.i.land.rhs.i_crit_edge ], [ %retval.0.i.i, %smc_llc_get_next_rmb.exit.i.land.rhs.i_crit_edge ]
  %used.i = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_pos.199.i, i32 0, i32 4
  %86 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool27.not.i = icmp eq i32 %87, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i64.i, label %for.inc.i

lor.lhs.false.i64.i:                              ; preds = %land.rhs.i
  %88 = ptrtoint ptr %buf_lst.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %buf_lst.i, align 4
  %arrayidx.i62.i = getelementptr %struct.smc_link_group, ptr %45, i32 0, i32 7, i32 %89
  %90 = ptrtoint ptr %buf_pos.199.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buf_pos.199.i, align 4
  %cmp.i.not.i63.i = icmp eq ptr %91, %arrayidx.i62.i
  br i1 %cmp.i.not.i63.i, label %if.then.i67.i, label %lor.lhs.false.i64.i.smc_llc_get_next_rmb.exit77.i_crit_edge

lor.lhs.false.i64.i.smc_llc_get_next_rmb.exit77.i_crit_edge: ; preds = %lor.lhs.false.i64.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit77.i

if.then.i67.i:                                    ; preds = %lor.lhs.false.i64.i
  %inc.i65.i = add i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i65.i)
  %cmp11.i.i66.i = icmp slt i32 %inc.i65.i, 16
  br i1 %cmp11.i.i66.i, label %while.body.i.i72.preheader.i, label %if.then.i67.i.for.inc.thread.i_crit_edge

if.then.i67.i.for.inc.thread.i_crit_edge:         ; preds = %if.then.i67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.thread.i

while.body.i.i72.preheader.i:                     ; preds = %if.then.i67.i
  %arrayidx.i.i6890.i = getelementptr %struct.smc_link_group, ptr %45, i32 0, i32 7, i32 %inc.i65.i
  %92 = ptrtoint ptr %arrayidx.i.i6890.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %arrayidx.i.i6890.i, align 4
  %cmp2.not.i.i6991.i = icmp eq ptr %93, %arrayidx.i.i6890.i
  %tobool.not10.i.i7092.i = icmp eq ptr %93, null
  %tobool.not.i.i7193.i = or i1 %cmp2.not.i.i6991.i, %tobool.not10.i.i7092.i
  br i1 %tobool.not.i.i7193.i, label %while.body.i.i72.preheader.i.if.end.i.i75.i_crit_edge, label %while.body.i.i72.preheader.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge

while.body.i.i72.preheader.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge: ; preds = %while.body.i.i72.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit77.loopexit.i

while.body.i.i72.preheader.i.if.end.i.i75.i_crit_edge: ; preds = %while.body.i.i72.preheader.i
  br label %if.end.i.i75.i

while.body.i.i72.i:                               ; preds = %if.end.i.i75.i
  %arrayidx.i.i68.i = getelementptr %struct.smc_link_group, ptr %45, i32 0, i32 7, i32 %inc.i.i73.i
  %94 = ptrtoint ptr %arrayidx.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %arrayidx.i.i68.i, align 4
  %cmp2.not.i.i69.i = icmp eq ptr %95, %arrayidx.i.i68.i
  %tobool.not10.i.i70.i = icmp eq ptr %95, null
  %tobool.not.i.i71.i = or i1 %cmp2.not.i.i69.i, %tobool.not10.i.i70.i
  br i1 %tobool.not.i.i71.i, label %while.body.i.i72.i.if.end.i.i75.i_crit_edge, label %while.body.i.i72.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge

while.body.i.i72.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge: ; preds = %while.body.i.i72.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit77.loopexit.i

while.body.i.i72.i.if.end.i.i75.i_crit_edge:      ; preds = %while.body.i.i72.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i75.i

if.end.i.i75.i:                                   ; preds = %while.body.i.i72.i.if.end.i.i75.i_crit_edge, %while.body.i.i72.preheader.i.if.end.i.i75.i_crit_edge
  %96 = phi i32 [ %inc.i.i73.i, %while.body.i.i72.i.if.end.i.i75.i_crit_edge ], [ %inc.i65.i, %while.body.i.i72.preheader.i.if.end.i.i75.i_crit_edge ]
  %inc.i.i73.i = add i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i.i73.i)
  %exitcond.not.i.i74.i = icmp eq i32 %inc.i.i73.i, 16
  br i1 %exitcond.not.i.i74.i, label %if.end.i.i75.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge, label %while.body.i.i72.i

if.end.i.i75.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge: ; preds = %if.end.i.i75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit77.loopexit.i

smc_llc_get_next_rmb.exit77.loopexit.i:           ; preds = %if.end.i.i75.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge, %while.body.i.i72.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge, %while.body.i.i72.preheader.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge
  %inc.i.i7389.i = phi i32 [ %inc.i65.i, %while.body.i.i72.preheader.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge ], [ 16, %if.end.i.i75.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge ], [ %inc.i.i73.i, %while.body.i.i72.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge ]
  %retval.0.i76.ph.i = phi ptr [ %93, %while.body.i.i72.preheader.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge ], [ null, %if.end.i.i75.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge ], [ %95, %while.body.i.i72.i.smc_llc_get_next_rmb.exit77.loopexit.i_crit_edge ]
  %97 = ptrtoint ptr %buf_lst.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %inc.i.i7389.i, ptr %buf_lst.i, align 4
  br label %smc_llc_get_next_rmb.exit77.i

smc_llc_get_next_rmb.exit77.i:                    ; preds = %smc_llc_get_next_rmb.exit77.loopexit.i, %lor.lhs.false.i64.i.smc_llc_get_next_rmb.exit77.i_crit_edge
  %retval.0.i76.i = phi ptr [ %91, %lor.lhs.false.i64.i.smc_llc_get_next_rmb.exit77.i_crit_edge ], [ %retval.0.i76.ph.i, %smc_llc_get_next_rmb.exit77.loopexit.i ]
  %tobool26.not.i = icmp eq ptr %retval.0.i76.i, null
  br i1 %tobool26.not.i, label %smc_llc_get_next_rmb.exit77.i.for.inc.thread.i_crit_edge, label %smc_llc_get_next_rmb.exit77.i.land.rhs.i_crit_edge

smc_llc_get_next_rmb.exit77.i.land.rhs.i_crit_edge: ; preds = %smc_llc_get_next_rmb.exit77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

smc_llc_get_next_rmb.exit77.i.for.inc.thread.i_crit_edge: ; preds = %smc_llc_get_next_rmb.exit77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.thread.i

for.inc.thread.i:                                 ; preds = %smc_llc_get_next_rmb.exit77.i.for.inc.thread.i_crit_edge, %if.then.i67.i.for.inc.thread.i_crit_edge, %smc_llc_get_next_rmb.exit.i.for.inc.thread.i_crit_edge, %if.then.i.i.for.inc.thread.i_crit_edge
  %inc115.i = add nuw nsw i32 %i.0107.i, 1
  br label %for.end.loopexit.i

for.inc.i:                                        ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %i.0107.i, 1
  %98 = ptrtoint ptr %num_rkeys.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %num_rkeys.i, align 1
  %conv10.i = zext i16 %99 to i32
  %cmp.not.i = icmp ult i32 %inc.i, %conv10.i
  br i1 %cmp.not.i, label %for.inc.i.lor.lhs.false.i.i_crit_edge, label %for.inc.i.for.end.loopexit.i_crit_edge

for.inc.i.for.end.loopexit.i_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.loopexit.i

for.inc.i.lor.lhs.false.i.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i.i

for.end.loopexit.i:                               ; preds = %for.inc.i.for.end.loopexit.i_crit_edge, %for.inc.thread.i
  %inc120.i = phi i32 [ %inc115.i, %for.inc.thread.i ], [ %inc.i, %for.inc.i.for.end.loopexit.i_crit_edge ]
  %phi.bo.i = shl i32 %inc120.i, 4
  %phi.bo = add i32 %phi.bo.i, 72
  br label %smc_llc_fill_ext_v2.exit

smc_llc_fill_ext_v2.exit:                         ; preds = %for.end.loopexit.i, %if.end.i112.smc_llc_fill_ext_v2.exit_crit_edge, %if.then48.smc_llc_fill_ext_v2.exit_crit_edge
  %len.0.i = phi i32 [ 72, %if.then48.smc_llc_fill_ext_v2.exit_crit_edge ], [ 72, %if.end.i112.smc_llc_fill_ext_v2.exit_crit_edge ], [ %phi.bo, %for.end.loopexit.i ]
  call void @mutex_unlock(ptr noundef %rmbs_lock.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_lst.i) #15
  br label %if.end50

if.end50:                                         ; preds = %smc_llc_fill_ext_v2.exit, %if.end45.if.end50_crit_edge, %if.end21.if.end50_crit_edge
  %len.0 = phi i32 [ %len.0.i, %smc_llc_fill_ext_v2.exit ], [ 44, %if.end45.if.end50_crit_edge ], [ 44, %if.end21.if.end50_crit_edge ]
  %100 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lgr, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %101, i32 0, i32 16
  %102 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %103)
  %cmp.i = icmp eq i8 %103, 2
  %104 = ptrtoint ptr %addllc.2 to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i113 = load i8, ptr %addllc.2, align 1
  %bf.clear.i114 = and i8 %bf.load.i113, 15
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set.i115 = or i8 %bf.clear.i114, 32
  %105 = ptrtoint ptr %addllc.2 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %bf.set.i115, ptr %addllc.2, align 1
  %conv2.i = trunc i32 %len.0 to i16
  %106 = getelementptr inbounds %struct.smc_llc_hdr, ptr %addllc.2, i32 0, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 %conv2.i, ptr %106, align 1
  br label %smc_llc_init_msg_hdr.exit

if.else.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  %108 = ptrtoint ptr %addllc.2 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %bf.clear.i114, ptr %addllc.2, align 1
  %conv7.i = trunc i32 %len.0 to i8
  %109 = getelementptr inbounds %struct.smc_llc_hdr, ptr %addllc.2, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv7.i, ptr %109, align 1
  br label %smc_llc_init_msg_hdr.exit

smc_llc_init_msg_hdr.exit:                        ; preds = %if.else.i, %if.then.i
  %111 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %lgr, align 4
  %smc_version54 = getelementptr inbounds %struct.smc_link_group, ptr %112, i32 0, i32 16
  %113 = ptrtoint ptr %smc_version54 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %smc_version54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %114)
  %cmp56 = icmp eq i8 %114, 2
  %115 = ptrtoint ptr %pend to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pend, align 4
  br i1 %cmp56, label %if.then58, label %if.else60

if.then58:                                        ; preds = %smc_llc_init_msg_hdr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call59 = call i32 @smc_wr_tx_v2_send(ptr noundef %link, ptr noundef %116, i32 noundef %len.0) #15
  br label %put_out

if.else60:                                        ; preds = %smc_llc_init_msg_hdr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call61 = call i32 @smc_wr_tx_send(ptr noundef %link, ptr noundef %116) #15
  br label %put_out

put_out:                                          ; preds = %if.else60, %if.then58, %cleanup11, %cleanup
  %rc.0 = phi i32 [ %call.i, %cleanup ], [ %call59, %if.then58 ], [ %call61, %if.else60 ], [ %call.i109, %cleanup11 ]
  %call.i.i.i118 = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #15
  %117 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #15, !srcloc !80
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %117, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i119, label %put_out.cleanup63_crit_edge

put_out.cleanup63_crit_edge:                      ; preds = %put_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup63

if.then.i119:                                     ; preds = %put_out
  call void @__sanitizer_cov_trace_pc() #17
  %wr_tx_wait.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %cleanup63

cleanup63:                                        ; preds = %if.then.i119, %put_out.cleanup63_crit_edge, %smc_link_sendable.exit.i.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ %rc.0, %put_out.cleanup63_crit_edge ], [ %rc.0, %if.then.i119 ], [ -67, %smc_link_sendable.exit.i.cleanup63_crit_edge ], [ -67, %entry.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_tx_v2_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_llc_send_delete_link(ptr noundef %link, i8 noundef zeroext %link_del_id, i32 noundef %reqresp, i1 noundef zeroext %orderly, i32 noundef %reason) local_unnamed_addr #2 align 64 {
entry:
  %pend = alloca ptr, align 4
  %wr_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend) #15
  %0 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf) #15
  %1 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf, align 4, !annotation !77
  %state.i.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 54
  %2 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.i.i.i = icmp ugt i32 %3, 1
  br i1 %switch.i.i.i, label %smc_link_sendable.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

smc_link_sendable.exit.i:                         ; preds = %entry
  %cur_qp_state.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %cur_qp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_qp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 3
  br i1 %cmp.i.i, label %if.end, label %smc_link_sendable.exit.i.cleanup_crit_edge

smc_link_sendable.exit.i.cleanup_crit_edge:       ; preds = %smc_link_sendable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %smc_link_sendable.exit.i
  %wr_tx_refcnt.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #15, !srcloc !78
  %call.i = call i32 @smc_wr_tx_get_free_slot(ptr noundef %link, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf, ptr noundef null, ptr noundef nonnull %pend) #15
  %7 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end3, label %if.end.put_out_crit_edge

if.end.put_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %wr_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr_buf, align 4
  %10 = getelementptr inbounds i8, ptr %9, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 43)
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %9, align 1
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %13 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lgr, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.i = icmp eq i8 %16, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 36, ptr %9, align 1
  %18 = getelementptr inbounds %struct.smc_llc_hdr, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 44, ptr %18, align 1
  br label %smc_llc_init_msg_hdr.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %20 = getelementptr inbounds %struct.smc_llc_hdr, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 44, ptr %20, align 1
  br label %smc_llc_init_msg_hdr.exit

smc_llc_init_msg_hdr.exit:                        ; preds = %if.else.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reqresp)
  %cmp = icmp eq i32 %reqresp, 1
  br i1 %cmp, label %if.then5, label %smc_llc_init_msg_hdr.exit.if.end8_crit_edge

smc_llc_init_msg_hdr.exit.if.end8_crit_edge:      ; preds = %smc_llc_init_msg_hdr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then5:                                         ; preds = %smc_llc_init_msg_hdr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.smc_llc_hdr, ptr %9, i32 0, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags, align 1
  %24 = or i8 %23, -128
  store i8 %24, ptr %flags, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %smc_llc_init_msg_hdr.exit.if.end8_crit_edge
  br i1 %orderly, label %if.then10, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %flags12 = getelementptr inbounds %struct.smc_llc_hdr, ptr %9, i32 0, i32 2
  %25 = ptrtoint ptr %flags12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags12, align 1
  %27 = or i8 %26, 32
  store i8 %27, ptr %flags12, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end8.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %link_del_id)
  %tobool17.not = icmp eq i8 %link_del_id, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %link_num = getelementptr inbounds %struct.smc_llc_msg_del_link, ptr %9, i32 0, i32 1
  %28 = ptrtoint ptr %link_num to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %link_del_id, ptr %link_num, align 1
  br label %if.end24

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %flags20 = getelementptr inbounds %struct.smc_llc_hdr, ptr %9, i32 0, i32 2
  %29 = ptrtoint ptr %flags20 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags20, align 1
  %31 = or i8 %30, 64
  store i8 %31, ptr %flags20, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then18
  %reason25 = getelementptr inbounds %struct.smc_llc_msg_del_link, ptr %9, i32 0, i32 2
  %32 = ptrtoint ptr %reason25 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %reason, ptr %reason25, align 1
  %33 = ptrtoint ptr %pend to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pend, align 4
  %call26 = call i32 @smc_wr_tx_send(ptr noundef %link, ptr noundef %34) #15
  br label %put_out

put_out:                                          ; preds = %if.end24, %if.end.put_out_crit_edge
  %rc.0 = phi i32 [ %7, %if.end.put_out_crit_edge ], [ %call26, %if.end24 ]
  %call.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #15
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #15, !srcloc !80
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i46, label %put_out.cleanup_crit_edge

put_out.cleanup_crit_edge:                        ; preds = %put_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i46:                                      ; preds = %put_out
  call void @__sanitizer_cov_trace_pc() #17
  %wr_tx_wait.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i46, %put_out.cleanup_crit_edge, %smc_link_sendable.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %put_out.cleanup_crit_edge ], [ %rc.0, %if.then.i46 ], [ -67, %smc_link_sendable.exit.i.cleanup_crit_edge ], [ -67, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_llc_cli_add_link(ptr noundef %link, ptr noundef %qentry) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr.i, align 4
  %qp_mtu = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %qp_mtu to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %qp_mtu, align 1
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %entry.out_reject_crit_edge, label %if.end

entry.out_reject_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_reject

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 320) #19
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.out_reject_crit_edge, label %if.end4

if.end.out_reject_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_reject

if.end4:                                          ; preds = %if.end
  %vlan_id = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_id, align 4
  %vlan_id5 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %vlan_id5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vlan_id5, align 2
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp eq i8 %8, 2
  br i1 %cmp, label %if.then7, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then7:                                         ; preds = %if.end4
  %check_smcrv2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %check_smcrv2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %check_smcrv2, align 1
  %saddr = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 26
  %10 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saddr, align 8
  %smcrv2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17
  %12 = ptrtoint ptr %smcrv2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %smcrv2, align 8
  %sender_gid = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %sender_gid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sender_gid, align 4
  %arrayidx2.i.i = getelementptr %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %16, %14
  %arrayidx4.i.i = getelementptr %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %18, 65535
  %or5.i.i = or i32 %xor.i.i, %or.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  %or5.i = or i32 %or.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.then7.smc_ib_gid_to_ipv4.exit_crit_edge

if.then7.smc_ib_gid_to_ipv4.exit_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_ib_gid_to_ipv4.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx7.i = getelementptr %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.i, align 4
  br label %smc_ib_gid_to_ipv4.exit

smc_ib_gid_to_ipv4.exit:                          ; preds = %if.then.i, %if.then7.smc_ib_gid_to_ipv4.exit_crit_edge
  %retval.0.i = phi i32 [ %20, %if.then.i ], [ -1, %if.then7.smc_ib_gid_to_ipv4.exit_crit_edge ]
  %daddr = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %daddr, align 8
  br label %if.end11

if.end11:                                         ; preds = %smc_ib_gid_to_ipv4.exit, %if.end4.if.end11_crit_edge
  %22 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link, align 8
  tail call void @smc_pnet_find_alt_roce(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef %23) #15
  %sender_gid12 = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 4, i32 1
  %peer_gid = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 42
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sender_gid12, ptr noundef dereferenceable(16) %peer_gid, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool16.not = icmp eq i32 %bcmp, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.end11.if.end32_crit_edge

if.end11.if.end32_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end11
  %24 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp19 = icmp eq i8 %25, 2
  br i1 %cmp19, label %land.lhs.true.if.then25_crit_edge, label %lor.lhs.false

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

lor.lhs.false:                                    ; preds = %land.lhs.true
  %sender_mac = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 1
  %peer_mac = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 41
  %bcmp170 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %sender_mac, ptr noundef dereferenceable(6) %peer_mac, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp170)
  %tobool24.not = icmp eq i32 %bcmp170, 0
  br i1 %tobool24.not, label %lor.lhs.false.if.then25_crit_edge, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge
  %ib_dev = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 13
  %26 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ib_dev, align 4
  %tobool26.not = icmp eq ptr %27, null
  br i1 %tobool26.not, label %land.lhs.true27, label %if.then25.if.end32_crit_edge

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true27:                                  ; preds = %if.then25
  %ib_dev_v2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 3
  %28 = ptrtoint ptr %ib_dev_v2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ib_dev_v2, align 4
  %tobool29.not = icmp eq ptr %29, null
  br i1 %tobool29.not, label %land.lhs.true27.out_reject_crit_edge, label %land.lhs.true27.if.end32_crit_edge

land.lhs.true27.if.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true27.out_reject_crit_edge:             ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_reject

if.end32:                                         ; preds = %land.lhs.true27.if.end32_crit_edge, %if.then25.if.end32_crit_edge, %lor.lhs.false.if.end32_crit_edge, %if.end11.if.end32_crit_edge
  %lgr_new_t.0 = phi i32 [ 2, %if.end11.if.end32_crit_edge ], [ 2, %lor.lhs.false.if.end32_crit_edge ], [ 3, %land.lhs.true27.if.end32_crit_edge ], [ 3, %if.then25.if.end32_crit_edge ]
  %30 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp35 = icmp eq i8 %31, 2
  br i1 %cmp35, label %land.lhs.true37, label %if.else

land.lhs.true37:                                  ; preds = %if.end32
  %ib_dev_v239 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 3
  %32 = ptrtoint ptr %ib_dev_v239 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ib_dev_v239, align 4
  %tobool40.not = icmp eq ptr %33, null
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true37.if.end58_crit_edge

land.lhs.true37.if.end58_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link, align 8
  %36 = ptrtoint ptr %ib_dev_v239 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %ib_dev_v239, align 4
  %ibport = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 1
  %37 = ptrtoint ptr %ibport to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ibport, align 4
  %ib_port_v2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 4
  %39 = ptrtoint ptr %ib_port_v2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %ib_port_v2, align 8
  br label %if.end58

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp48 = icmp ult i8 %31, 2
  br i1 %cmp48, label %land.lhs.true50, label %if.else.if.end58_crit_edge

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

land.lhs.true50:                                  ; preds = %if.else
  %ib_dev51 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 13
  %40 = ptrtoint ptr %ib_dev51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ib_dev51, align 4
  %tobool52.not = icmp eq ptr %41, null
  br i1 %tobool52.not, label %if.then53, label %land.lhs.true50.if.end58_crit_edge

land.lhs.true50.if.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then53:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %link, align 8
  %44 = ptrtoint ptr %ib_dev51 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %ib_dev51, align 4
  %ibport56 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 1
  %45 = ptrtoint ptr %ibport56 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ibport56, align 4
  %ib_port = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 15
  %47 = ptrtoint ptr %ib_port to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %ib_port, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %land.lhs.true50.if.end58_crit_edge, %if.else.if.end58_crit_edge, %if.then41, %land.lhs.true37.if.end58_crit_edge
  %lgr_new_t.1 = phi i32 [ %lgr_new_t.0, %land.lhs.true50.if.end58_crit_edge ], [ 4, %if.then53 ], [ %lgr_new_t.0, %if.else.if.end58_crit_edge ], [ 4, %if.then41 ], [ %lgr_new_t.0, %land.lhs.true37.if.end58_crit_edge ]
  %type.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 8
  %48 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type.i, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %49, label %land.lhs.true.i [
    i32 2, label %if.end58.out_reject_crit_edge
    i32 1, label %if.end.i
  ]

if.end58.out_reject_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_reject

land.lhs.true.i:                                  ; preds = %if.end58
  %lgr_new_t.off.i = add nsw i32 %lgr_new_t.1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lgr_new_t.off.i)
  %switch.i = icmp ult i32 %lgr_new_t.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i.out_reject_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i.out_reject_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_reject

if.end.i:                                         ; preds = %if.end58
  %lgr_new_t.off39.i = add nsw i32 %lgr_new_t.1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lgr_new_t.off39.i)
  %switch40.i = icmp ult i32 %lgr_new_t.off39.i, 2
  br i1 %switch40.i, label %for.body.preheader.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

for.body.preheader.i:                             ; preds = %if.end.i
  %state.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp11.i = icmp eq i32 %52, 0
  br i1 %cmp11.i, label %for.body.preheader.i.if.end63_crit_edge, label %for.inc.i

for.body.preheader.i.if.end63_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

for.inc.i:                                        ; preds = %for.body.preheader.i
  %state.1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %53 = ptrtoint ptr %state.1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp11.1.i = icmp eq i32 %54, 0
  br i1 %cmp11.1.i, label %for.inc.i.if.end63_crit_edge, label %for.inc.1.i

for.inc.i.if.end63_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %state.2.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  %state19.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %55 = ptrtoint ptr %state19.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %state19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp20.i = icmp eq i32 %56, 0
  br i1 %cmp20.i, label %if.else.i.if.end63_crit_edge, label %for.inc23.i

if.else.i.if.end63_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

for.inc23.i:                                      ; preds = %if.else.i
  %state19.1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %57 = ptrtoint ptr %state19.1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state19.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp20.1.i = icmp eq i32 %58, 0
  br i1 %cmp20.1.i, label %for.inc23.i.if.end63_crit_edge, label %for.inc23.1.i

for.inc23.i.if.end63_crit_edge:                   ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

for.inc23.1.i:                                    ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #17
  %state19.2.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.inc23.1.i, %for.inc.1.i
  %state19.2.sink.i = phi ptr [ %state19.2.i, %for.inc23.1.i ], [ %state.2.i, %for.inc.1.i ]
  %.sink.i = phi i32 [ 2, %for.inc23.1.i ], [ 0, %for.inc.1.i ]
  %59 = ptrtoint ptr %state19.2.sink.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %state19.2.sink.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp20.2.i = icmp eq i32 %60, 0
  br i1 %cmp20.2.i, label %cleanup.sink.split.i.if.end63_crit_edge, label %cleanup.sink.split.i.out_reject_crit_edge

cleanup.sink.split.i.out_reject_crit_edge:        ; preds = %cleanup.sink.split.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_reject

cleanup.sink.split.i.if.end63_crit_edge:          ; preds = %cleanup.sink.split.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.end63:                                         ; preds = %cleanup.sink.split.i.if.end63_crit_edge, %for.inc23.i.if.end63_crit_edge, %if.else.i.if.end63_crit_edge, %for.inc.i.if.end63_crit_edge, %for.body.preheader.i.if.end63_crit_edge
  %retval.0.i171.ph = phi i32 [ 1, %for.inc.i.if.end63_crit_edge ], [ 2, %for.body.preheader.i.if.end63_crit_edge ], [ 1, %for.inc23.i.if.end63_crit_edge ], [ 0, %if.else.i.if.end63_crit_edge ], [ %.sink.i, %cleanup.sink.split.i.if.end63_crit_edge ]
  %arrayidx = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph
  %conv64 = trunc i32 %retval.0.i171.ph to i8
  %call65 = tail call i32 @smcr_link_init(ptr noundef %1, ptr noundef %arrayidx, i8 noundef zeroext %conv64, ptr noundef nonnull %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end63.out_reject_crit_edge

if.end63.out_reject_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_reject

if.end68:                                         ; preds = %if.end63
  %sender_qp_num.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 4, i32 5
  %61 = ptrtoint ptr %sender_qp_num.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 3)
  %t.1.copyload.i.i = load i24, ptr %sender_qp_num.i, align 1
  %t.1.insert.ext.i.i = zext i24 %t.1.copyload.i.i to i32
  %peer_qpn.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 36
  %62 = ptrtoint ptr %peer_qpn.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %t.1.insert.ext.i.i, ptr %peer_qpn.i, align 8
  %peer_gid.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 42
  %63 = call ptr @memcpy(ptr %peer_gid.i, ptr %sender_gid12, i32 16)
  %peer_mac.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 41
  %sender_mac.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 1
  %64 = call ptr @memcpy(ptr %peer_mac.i, ptr %sender_mac.i, i32 6)
  %initial_psn.i = getelementptr inbounds %struct.smc_llc_msg_add_link, ptr %msg, i32 0, i32 7
  %65 = ptrtoint ptr %initial_psn.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 3)
  %t.1.copyload.i15.i = load i24, ptr %initial_psn.i, align 1
  %t.1.insert.ext.i16.i = zext i24 %t.1.copyload.i15.i to i32
  %peer_psn.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 40
  %66 = ptrtoint ptr %peer_psn.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %t.1.insert.ext.i16.i, ptr %peer_psn.i, align 8
  %67 = ptrtoint ptr %qp_mtu to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.i = load i8, ptr %qp_mtu, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  %peer_mtu.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 38
  %68 = ptrtoint ptr %peer_mtu.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv.i, ptr %peer_mtu.i, align 8
  %link_num = getelementptr inbounds %struct.smc_llc_msg_add_link, ptr %msg, i32 0, i32 5
  %69 = ptrtoint ptr %link_num to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %link_num, align 1
  %link_id = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 43
  %71 = ptrtoint ptr %link_id to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %link_id, align 2
  %lgr.i172 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 50
  %72 = ptrtoint ptr %lgr.i172 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lgr.i172, align 4
  %id.i = getelementptr inbounds %struct.smc_link_group, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id.i, align 8
  %conv.i173 = zext i8 %70 to i32
  %add.i = add i32 %75, %conv.i173
  %link_uid1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 44
  %76 = ptrtoint ptr %link_uid1.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %add.i, ptr %link_uid1.i, align 1
  %call69 = tail call i32 @smc_ib_ready_link(ptr noundef %arrayidx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.out_clear_lnk_crit_edge

if.end68.out_clear_lnk_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_clear_lnk

if.end72:                                         ; preds = %if.end68
  %call73 = tail call i32 @smcr_buf_map_lgr(ptr noundef %arrayidx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.out_clear_lnk_crit_edge

if.end72.out_clear_lnk_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_clear_lnk

if.end76:                                         ; preds = %if.end72
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 8
  %ibport78 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 1
  %79 = ptrtoint ptr %ibport78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ibport78, align 4
  %conv79 = zext i8 %80 to i32
  %sub = add nsw i32 %conv79, -1
  %arrayidx80 = getelementptr %struct.smc_ib_device, ptr %78, i32 0, i32 8, i32 %sub
  %gid = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 34
  %call83 = tail call i32 @smc_llc_send_add_link(ptr noundef %link, ptr noundef %arrayidx80, ptr noundef %gid, ptr noundef %arrayidx, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end76.out_clear_lnk_crit_edge

if.end76.out_clear_lnk_crit_edge:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_clear_lnk

if.end86:                                         ; preds = %if.end76
  %81 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp89 = icmp eq i8 %82, 2
  br i1 %cmp89, label %if.then91, label %if.else92

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @smc_llc_save_add_link_rkeys(ptr noundef %link, ptr noundef %arrayidx)
  br label %if.end97

if.else92:                                        ; preds = %if.end86
  %call93 = tail call fastcc i32 @smc_llc_cli_rkey_exchange(ptr noundef %link, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.else92.if.end97_crit_edge, label %if.else92.out_clear_lnk_crit_edge

if.else92.out_clear_lnk_crit_edge:                ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_clear_lnk

if.else92.if.end97_crit_edge:                     ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.end97:                                         ; preds = %if.else92.if.end97_crit_edge, %if.then91
  %call98 = tail call fastcc i32 @smc_llc_cli_conf_link(ptr noundef %link, ptr noundef %arrayidx, i32 noundef %lgr_new_t.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end97.out_crit_edge, label %if.end97.out_clear_lnk_crit_edge

if.end97.out_clear_lnk_crit_edge:                 ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_clear_lnk

if.end97.out_crit_edge:                           ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out_clear_lnk:                                    ; preds = %if.end97.out_clear_lnk_crit_edge, %if.else92.out_clear_lnk_crit_edge, %if.end76.out_clear_lnk_crit_edge, %if.end72.out_clear_lnk_crit_edge, %if.end68.out_clear_lnk_crit_edge
  %rc.0 = phi i32 [ %call69, %if.end68.out_clear_lnk_crit_edge ], [ %call73, %if.end72.out_clear_lnk_crit_edge ], [ %call83, %if.end76.out_clear_lnk_crit_edge ], [ %call98, %if.end97.out_clear_lnk_crit_edge ], [ 0, %if.else92.out_clear_lnk_crit_edge ]
  %state = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i171.ph, i32 54
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %state, align 8
  tail call void @smcr_link_clear(ptr noundef %arrayidx, i1 noundef zeroext false) #15
  br label %out_reject

out_reject:                                       ; preds = %out_clear_lnk, %if.end63.out_reject_crit_edge, %cleanup.sink.split.i.out_reject_crit_edge, %land.lhs.true.i.out_reject_crit_edge, %if.end58.out_reject_crit_edge, %land.lhs.true27.out_reject_crit_edge, %if.end.out_reject_crit_edge, %entry.out_reject_crit_edge
  %ini.0 = phi ptr [ %call7.i.i, %if.end63.out_reject_crit_edge ], [ %call7.i.i, %out_clear_lnk ], [ %call7.i.i, %land.lhs.true27.out_reject_crit_edge ], [ null, %entry.out_reject_crit_edge ], [ null, %if.end.out_reject_crit_edge ], [ %call7.i.i, %cleanup.sink.split.i.out_reject_crit_edge ], [ %call7.i.i, %if.end58.out_reject_crit_edge ], [ %call7.i.i, %land.lhs.true.i.out_reject_crit_edge ]
  %rc.1 = phi i32 [ %call65, %if.end63.out_reject_crit_edge ], [ %rc.0, %out_clear_lnk ], [ 0, %land.lhs.true27.out_reject_crit_edge ], [ 0, %entry.out_reject_crit_edge ], [ -12, %if.end.out_reject_crit_edge ], [ 0, %cleanup.sink.split.i.out_reject_crit_edge ], [ 0, %if.end58.out_reject_crit_edge ], [ 0, %land.lhs.true.i.out_reject_crit_edge ]
  %flags.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 0, i32 2
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %flags.i, align 1
  %86 = or i8 %85, -64
  store i8 %86, ptr %flags.i, align 1
  %87 = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 0, i32 1
  %add_link_rej_rsn.i = getelementptr inbounds %struct.anon.219, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %add_link_rej_rsn.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load.i174 = load i8, ptr %add_link_rej_rsn.i, align 1
  %bf.clear.i175 = and i8 %bf.load.i174, -16
  %bf.set.i = or i8 %bf.clear.i175, 1
  store i8 %bf.set.i, ptr %add_link_rej_rsn.i, align 1
  %link.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 1
  %89 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %link.i, align 4
  %lgr.i176 = getelementptr inbounds %struct.smc_link, ptr %90, i32 0, i32 50
  %91 = ptrtoint ptr %lgr.i176 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lgr.i176, align 4
  %smc_version.i.i = getelementptr inbounds %struct.smc_link_group, ptr %92, i32 0, i32 16
  %93 = ptrtoint ptr %smc_version.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %smc_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp.i.i177 = icmp eq i8 %94, 2
  %95 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i.i = load i8, ptr %msg, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  br i1 %cmp.i.i177, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %out_reject
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set.i.i = or i8 %bf.clear.i.i, 32
  %96 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %bf.set.i.i, ptr %msg, align 1
  %97 = ptrtoint ptr %87 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 44, ptr %87, align 1
  br label %smc_llc_cli_add_link_reject.exit

if.else.i.i:                                      ; preds = %out_reject
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %bf.clear.i.i, ptr %msg, align 1
  %99 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 44, ptr %87, align 1
  br label %smc_llc_cli_add_link_reject.exit

smc_llc_cli_add_link_reject.exit:                 ; preds = %if.else.i.i, %if.then.i.i
  %call.i = tail call fastcc i32 @smc_llc_send_message(ptr noundef %90, ptr noundef %msg) #15
  br label %out

out:                                              ; preds = %smc_llc_cli_add_link_reject.exit, %if.end97.out_crit_edge
  %ini.1 = phi ptr [ %ini.0, %smc_llc_cli_add_link_reject.exit ], [ %call7.i.i, %if.end97.out_crit_edge ]
  %rc.2 = phi i32 [ %rc.1, %smc_llc_cli_add_link_reject.exit ], [ 0, %if.end97.out_crit_edge ]
  tail call void @kfree(ptr noundef %ini.1) #15
  tail call void @kfree(ptr noundef %qentry) #15
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_pnet_find_alt_roce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcr_link_init(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @smc_llc_link_set_uid(ptr nocapture noundef %link) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %id = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %link_id = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 43
  %4 = ptrtoint ptr %link_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_id, align 2
  %conv = zext i8 %5 to i32
  %add = add i32 %3, %conv
  %link_uid1 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 44
  %6 = ptrtoint ptr %link_uid1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %add, ptr %link_uid1, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_ready_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcr_buf_map_lgr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_llc_save_add_link_rkeys(ptr nocapture noundef readonly %link, ptr nocapture noundef readonly %link_new) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %wr_rx_buf_v2 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 2
  %2 = ptrtoint ptr %wr_rx_buf_v2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_rx_buf_v2, align 8
  %num_rkeys = getelementptr i8, ptr %3, i32 70
  %4 = ptrtoint ptr %num_rkeys to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %num_rkeys, align 1
  %6 = and i16 %5, 255
  %conv2 = zext i16 %6 to i32
  %rmbs_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %rmbs_lock, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp730.not = icmp eq i16 %6, 0
  br i1 %cmp730.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 46
  %link_idx10 = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 46
  %rt = getelementptr i8, ptr %3, i32 72
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %link_idx, align 1
  %conv9 = zext i8 %8 to i32
  %9 = ptrtoint ptr %link_idx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %link_idx10, align 1
  %conv11 = zext i8 %10 to i32
  %arrayidx = getelementptr [0 x %struct.smc_llc_msg_add_link_cont_rt], ptr %rt, i32 0, i32 %i.031
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %arrayidx, align 1
  %rmb_vaddr_new = getelementptr inbounds %struct.smc_llc_msg_add_link_cont_rt, ptr %arrayidx, i32 0, i32 2
  %13 = ptrtoint ptr %rmb_vaddr_new to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %rmb_vaddr_new, align 1
  %rmb_key_new = getelementptr inbounds %struct.smc_llc_msg_add_link_cont_rt, ptr %arrayidx, i32 0, i32 1
  %15 = ptrtoint ptr %rmb_key_new to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %rmb_key_new, align 1
  tail call void @smc_rtoken_set(ptr noundef %1, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %12, i64 noundef %14, i32 noundef %16) #15
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %rmbs_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_llc_cli_rkey_exchange(ptr noundef %link, ptr nocapture noundef readonly %link_new) unnamed_addr #2 align 64 {
entry:
  %num_rkeys_send = alloca i8, align 1
  %buf_pos = alloca ptr, align 4
  %buf_lst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num_rkeys_send) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_pos) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_lst) #15
  %2 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf_lst, align 4, !annotation !77
  %rmbs_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %rmbs_lock, i32 noundef 0) #15
  %conns_num = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %conns_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %conns_num, align 8
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %num_rkeys_send to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %num_rkeys_send, align 1
  %call = call fastcc ptr @smc_llc_get_first_rmb(ptr noundef %1, ptr noundef nonnull %buf_lst)
  %6 = ptrtoint ptr %buf_pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %buf_pos, align 4
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 46
  %link_idx13 = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 46
  %qentry1.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %call2 = tail call ptr @smc_llc_wait(ptr noundef %1, ptr noundef null, i32 noundef 200, i8 noundef zeroext 3)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end:                                           ; preds = %do.body
  %num_rkeys = getelementptr inbounds %struct.smc_llc_qentry, ptr %call2, i32 0, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %num_rkeys to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_rkeys, align 1
  %9 = tail call i8 @llvm.umin.i8(i8 %8, i8 2)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1050.not = icmp eq i8 %9, 0
  br i1 %cmp1050.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %if.end
  %rt = getelementptr inbounds %struct.smc_llc_qentry, ptr %call2, i32 0, i32 2, i32 0, i32 4
  %10 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_idx, align 1
  %conv12 = zext i8 %11 to i32
  %12 = ptrtoint ptr %link_idx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %link_idx13, align 1
  %conv14 = zext i8 %13 to i32
  %14 = ptrtoint ptr %rt to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rt, align 1
  %rmb_vaddr_new = getelementptr %struct.smc_llc_qentry, ptr %call2, i32 0, i32 2, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %rmb_vaddr_new to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %rmb_vaddr_new, align 1
  %rmb_key_new = getelementptr %struct.smc_llc_qentry, ptr %call2, i32 0, i32 2, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %rmb_key_new to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %rmb_key_new, align 1
  tail call void @smc_rtoken_set(ptr noundef %1, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %15, i64 noundef %17, i32 noundef %19) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %exitcond.not = icmp eq i8 %9, 1
  br i1 %exitcond.not, label %for.body.for.end.loopexit_crit_edge, label %for.body.1

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.loopexit

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link_idx, align 1
  %conv12.1 = zext i8 %21 to i32
  %22 = ptrtoint ptr %link_idx13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %link_idx13, align 1
  %conv14.1 = zext i8 %23 to i32
  %arrayidx.1 = getelementptr %struct.smc_llc_qentry, ptr %call2, i32 0, i32 2, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %arrayidx.1, align 1
  %rmb_vaddr_new.1 = getelementptr %struct.smc_llc_qentry, ptr %call2, i32 0, i32 2, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %rmb_vaddr_new.1 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %rmb_vaddr_new.1, align 1
  %rmb_key_new.1 = getelementptr %struct.smc_llc_qentry, ptr %call2, i32 0, i32 2, i32 0, i32 4, i32 5
  %28 = ptrtoint ptr %rmb_key_new.1 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %rmb_key_new.1, align 1
  tail call void @smc_rtoken_set(ptr noundef %1, i32 noundef %conv12.1, i32 noundef %conv14.1, i32 noundef %25, i64 noundef %27, i32 noundef %29) #15
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body.1, %for.body.for.end.loopexit_crit_edge
  %30 = sub i8 %8, %9
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %num_rkeys_recv.0.lcssa = phi i8 [ %8, %if.end.for.end_crit_edge ], [ %30, %for.end.loopexit ]
  %31 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qentry1.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %for.end.smc_llc_flow_qentry_del.exit_crit_edge, label %if.then.i

for.end.smc_llc_flow_qentry_del.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_flow_qentry_del.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %qentry1.i, align 4
  tail call void @kfree(ptr noundef nonnull %32) #15
  br label %smc_llc_flow_qentry_del.exit

smc_llc_flow_qentry_del.exit:                     ; preds = %if.then.i, %for.end.smc_llc_flow_qentry_del.exit_crit_edge
  %call19 = call fastcc i32 @smc_llc_add_link_cont(ptr noundef %link, ptr noundef %link_new, ptr noundef nonnull %num_rkeys_send, ptr noundef nonnull %buf_lst, ptr noundef nonnull %buf_pos)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.cond, label %smc_llc_flow_qentry_del.exit.do.end_crit_edge

smc_llc_flow_qentry_del.exit.do.end_crit_edge:    ; preds = %smc_llc_flow_qentry_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.cond:                                          ; preds = %smc_llc_flow_qentry_del.exit
  %34 = ptrtoint ptr %num_rkeys_send to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_rkeys_send, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool24.not = icmp eq i8 %35, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_rkeys_recv.0.lcssa)
  %tobool26.not = icmp eq i8 %num_rkeys_recv.0.lcssa, 0
  %or.cond = select i1 %tobool24.not, i1 %tobool26.not, i1 false
  br i1 %or.cond, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %smc_llc_flow_qentry_del.exit.do.end_crit_edge, %do.body.do.end_crit_edge
  %rc.0 = phi i32 [ %call19, %smc_llc_flow_qentry_del.exit.do.end_crit_edge ], [ -110, %do.body.do.end_crit_edge ], [ 0, %do.cond.do.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rmbs_lock) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_lst) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_pos) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num_rkeys_send) #15
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_llc_cli_conf_link(ptr noundef %link, ptr noundef %link_new, i32 noundef %lgr_new_t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %call = tail call ptr @smc_llc_wait(ptr noundef %1, ptr noundef null, i32 noundef 500, i8 noundef zeroext 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %link_id = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 43
  %2 = ptrtoint ptr %link_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_id, align 2
  %call2 = tail call i32 @smc_llc_send_delete_link(ptr noundef %link, i8 noundef zeroext %3, i32 noundef 0, i1 noundef zeroext false, i32 noundef 65536)
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.smc_llc_qentry, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %msg, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.not = icmp eq i8 %bf.clear, 1
  br i1 %cmp.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.smc_llc_qentry, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 1
  %7 = or i8 %6, -128
  store i8 %7, ptr %flags, align 1
  %call10 = tail call fastcc i32 @smc_llc_send_message(ptr noundef %link, ptr noundef %msg)
  %qentry1.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qentry1.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then4.cleanup_crit_edge, label %if.then.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %qentry1.i, align 4
  tail call void @kfree(ptr noundef nonnull %9) #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %link.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link.i, align 4
  %peer_link_uid.i = getelementptr inbounds %struct.smc_link, ptr %12, i32 0, i32 45
  %link_uid.i = getelementptr inbounds %struct.smc_llc_msg_confirm_link, ptr %msg, i32 0, i32 5
  %13 = ptrtoint ptr %link_uid.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %link_uid.i, align 2
  %15 = ptrtoint ptr %peer_link_uid.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %peer_link_uid.i, align 1
  %qentry1.i1 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %qentry1.i1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qentry1.i1, align 4
  %tobool.not.i2 = icmp eq ptr %17, null
  br i1 %tobool.not.i2, label %if.end11.smc_llc_flow_qentry_del.exit4_crit_edge, label %if.then.i3

if.end11.smc_llc_flow_qentry_del.exit4_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_flow_qentry_del.exit4

if.then.i3:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %qentry1.i1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %qentry1.i1, align 4
  tail call void @kfree(ptr noundef nonnull %17) #15
  br label %smc_llc_flow_qentry_del.exit4

smc_llc_flow_qentry_del.exit4:                    ; preds = %if.then.i3, %if.end11.smc_llc_flow_qentry_del.exit4_crit_edge
  %call13 = tail call i32 @smc_ib_modify_qp_rts(ptr noundef %link_new) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %smc_llc_flow_qentry_del.exit4
  call void @__sanitizer_cov_trace_pc() #17
  %link_id16 = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 43
  %19 = ptrtoint ptr %link_id16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %link_id16, align 2
  %call17 = tail call i32 @smc_llc_send_delete_link(ptr noundef %link, i8 noundef zeroext %20, i32 noundef 0, i1 noundef zeroext false, i32 noundef 65536)
  br label %cleanup

if.end18:                                         ; preds = %smc_llc_flow_qentry_del.exit4
  tail call void @smc_wr_remember_qp_attr(ptr noundef %link_new) #15
  %call19 = tail call i32 @smcr_buf_reg_lgr(ptr noundef %link_new) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %link_id22 = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 43
  %21 = ptrtoint ptr %link_id22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %link_id22, align 2
  %call23 = tail call i32 @smc_llc_send_delete_link(ptr noundef %link, i8 noundef zeroext %22, i32 noundef 0, i1 noundef zeroext false, i32 noundef 65536)
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %call25 = tail call i32 @smc_llc_send_confirm_link(ptr noundef %link_new, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %link_id28 = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 43
  %23 = ptrtoint ptr %link_id28 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %link_id28, align 2
  %call29 = tail call i32 @smc_llc_send_delete_link(ptr noundef %link, i8 noundef zeroext %24, i32 noundef 0, i1 noundef zeroext false, i32 noundef 65536)
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  tail call void @smc_llc_link_active(ptr noundef %link_new)
  %lgr_new_t.off = add i32 %lgr_new_t, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lgr_new_t.off)
  %switch = icmp ult i32 %lgr_new_t.off, 2
  br i1 %switch, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 46
  %25 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %link_idx, align 1
  %conv36 = zext i8 %26 to i32
  tail call void @smcr_lgr_set_type_asym(ptr noundef %1, i32 noundef %lgr_new_t, i32 noundef %conv36) #15
  br label %cleanup

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smcr_lgr_set_type(ptr noundef %1, i32 noundef 2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then35, %if.then27, %if.then21, %if.then15, %if.then.i, %if.then4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -67, %if.then15 ], [ -67, %if.then21 ], [ -67, %if.then27 ], [ -67, %if.then ], [ 0, %if.else ], [ 0, %if.then35 ], [ -67, %if.then4.cleanup_crit_edge ], [ -67, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcr_link_clear(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_llc_srv_add_link(ptr noundef %link, ptr noundef %req_qentry) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %tobool.not = icmp eq ptr %req_qentry, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %msg = getelementptr inbounds %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 2
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %msg, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %send_req_add_link_resp.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %cmp, %land.lhs.true ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 320) #19
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5:                                          ; preds = %if.end
  %vlan_id = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_id, align 4
  %vlan_id6 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %vlan_id6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vlan_id6, align 2
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp8 = icmp eq i8 %8, 2
  br i1 %cmp8, label %if.then10, label %if.end5.if.end18_crit_edge

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then10:                                        ; preds = %if.end5
  %check_smcrv2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %check_smcrv2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %check_smcrv2, align 1
  %saddr = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 26
  %10 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saddr, align 8
  %smcrv2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17
  %12 = ptrtoint ptr %smcrv2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %smcrv2, align 8
  br i1 %send_req_add_link_resp.0.off0, label %if.then13, label %if.then10.if.end18_crit_edge

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then13:                                        ; preds = %if.then10
  %gid = getelementptr inbounds %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 2, i32 0, i32 4, i32 5
  %13 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gid, align 4
  %arrayidx2.i.i = getelementptr %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 2, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %16, %14
  %arrayidx4.i.i = getelementptr %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 2, i32 0, i32 4, i32 7
  %17 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %18, 65535
  %or5.i.i = or i32 %xor.i.i, %or.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  %or5.i = or i32 %or.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.then13.smc_ib_gid_to_ipv4.exit_crit_edge

if.then13.smc_ib_gid_to_ipv4.exit_crit_edge:      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_ib_gid_to_ipv4.exit

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx7.i = getelementptr %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 2, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.i, align 4
  br label %smc_ib_gid_to_ipv4.exit

smc_ib_gid_to_ipv4.exit:                          ; preds = %if.then.i, %if.then13.smc_ib_gid_to_ipv4.exit_crit_edge
  %retval.0.i = phi i32 [ %20, %if.then.i ], [ -1, %if.then13.smc_ib_gid_to_ipv4.exit_crit_edge ]
  %daddr = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %daddr, align 8
  br label %if.end18

if.end18:                                         ; preds = %smc_ib_gid_to_ipv4.exit, %if.then10.if.end18_crit_edge, %if.end5.if.end18_crit_edge
  %22 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link, align 8
  tail call void @smc_pnet_find_alt_roce(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef %23) #15
  %24 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp21 = icmp eq i8 %25, 2
  br i1 %cmp21, label %land.lhs.true23, label %if.else

land.lhs.true23:                                  ; preds = %if.end18
  %ib_dev_v2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 3
  %26 = ptrtoint ptr %ib_dev_v2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ib_dev_v2, align 4
  %tobool25.not = icmp eq ptr %27, null
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true23.if.end42_crit_edge

land.lhs.true23.if.end42_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link, align 8
  %30 = ptrtoint ptr %ib_dev_v2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %ib_dev_v2, align 4
  %ibport = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 1
  %31 = ptrtoint ptr %ibport to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ibport, align 4
  %ib_port_v2 = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 17, i32 4
  %33 = ptrtoint ptr %ib_port_v2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %ib_port_v2, align 8
  br label %if.end42

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp33 = icmp ult i8 %25, 2
  br i1 %cmp33, label %land.lhs.true35, label %if.else.if.end42_crit_edge

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

land.lhs.true35:                                  ; preds = %if.else
  %ib_dev = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 13
  %34 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ib_dev, align 4
  %tobool36.not = icmp eq ptr %35, null
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true35.if.end42_crit_edge

land.lhs.true35.if.end42_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link, align 8
  %38 = ptrtoint ptr %ib_dev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %ib_dev, align 4
  %ibport40 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 1
  %39 = ptrtoint ptr %ibport40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ibport40, align 4
  %ib_port = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i, i32 0, i32 15
  %41 = ptrtoint ptr %ib_port to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %ib_port, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %land.lhs.true35.if.end42_crit_edge, %if.else.if.end42_crit_edge, %if.then26, %land.lhs.true23.if.end42_crit_edge
  %switch40.i = phi i1 [ false, %land.lhs.true23.if.end42_crit_edge ], [ false, %if.else.if.end42_crit_edge ], [ false, %land.lhs.true35.if.end42_crit_edge ], [ true, %if.then37 ], [ true, %if.then26 ]
  %lgr_new_t.0 = phi i32 [ 2, %land.lhs.true23.if.end42_crit_edge ], [ 2, %if.else.if.end42_crit_edge ], [ 2, %land.lhs.true35.if.end42_crit_edge ], [ 4, %if.then37 ], [ 4, %if.then26 ]
  %type.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 8
  %42 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %43, label %land.lhs.true.i [
    i32 2, label %if.end42.out_crit_edge
    i32 1, label %if.end.i
  ]

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true.i:                                  ; preds = %if.end42
  br i1 %switch40.i, label %land.lhs.true.i.out_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i:                                         ; preds = %if.end42
  br i1 %switch40.i, label %for.body.preheader.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

for.body.preheader.i:                             ; preds = %if.end.i
  %state.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %45 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp11.i = icmp eq i32 %46, 0
  br i1 %cmp11.i, label %for.body.preheader.i.if.end47_crit_edge, label %for.inc.i

for.body.preheader.i.if.end47_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

for.inc.i:                                        ; preds = %for.body.preheader.i
  %state.1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %47 = ptrtoint ptr %state.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp11.1.i = icmp eq i32 %48, 0
  br i1 %cmp11.1.i, label %for.inc.i.if.end47_crit_edge, label %for.inc.1.i

for.inc.i.if.end47_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %state.2.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  %state19.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %49 = ptrtoint ptr %state19.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp20.i = icmp eq i32 %50, 0
  br i1 %cmp20.i, label %if.else.i.if.end47_crit_edge, label %for.inc23.i

if.else.i.if.end47_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

for.inc23.i:                                      ; preds = %if.else.i
  %state19.1.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %51 = ptrtoint ptr %state19.1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state19.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp20.1.i = icmp eq i32 %52, 0
  br i1 %cmp20.1.i, label %for.inc23.i.if.end47_crit_edge, label %for.inc23.1.i

for.inc23.i.if.end47_crit_edge:                   ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

for.inc23.1.i:                                    ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #17
  %state19.2.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.inc23.1.i, %for.inc.1.i
  %state19.2.sink.i = phi ptr [ %state19.2.i, %for.inc23.1.i ], [ %state.2.i, %for.inc.1.i ]
  %.sink.i = phi i32 [ 2, %for.inc23.1.i ], [ 0, %for.inc.1.i ]
  %53 = ptrtoint ptr %state19.2.sink.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state19.2.sink.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp20.2.i = icmp eq i32 %54, 0
  br i1 %cmp20.2.i, label %cleanup.sink.split.i.if.end47_crit_edge, label %cleanup.sink.split.i.out_crit_edge

cleanup.sink.split.i.out_crit_edge:               ; preds = %cleanup.sink.split.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

cleanup.sink.split.i.if.end47_crit_edge:          ; preds = %cleanup.sink.split.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end47:                                         ; preds = %cleanup.sink.split.i.if.end47_crit_edge, %for.inc23.i.if.end47_crit_edge, %if.else.i.if.end47_crit_edge, %for.inc.i.if.end47_crit_edge, %for.body.preheader.i.if.end47_crit_edge
  %retval.0.i216.ph = phi i32 [ 1, %for.inc.i.if.end47_crit_edge ], [ 2, %for.body.preheader.i.if.end47_crit_edge ], [ 1, %for.inc23.i.if.end47_crit_edge ], [ 0, %if.else.i.if.end47_crit_edge ], [ %.sink.i, %cleanup.sink.split.i.if.end47_crit_edge ]
  %arrayidx48 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i216.ph
  %conv49 = trunc i32 %retval.0.i216.ph to i8
  %call50 = tail call i32 @smcr_link_init(ptr noundef %1, ptr noundef %arrayidx48, i8 noundef zeroext %conv49, ptr noundef nonnull %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end53:                                         ; preds = %if.end47
  %call56 = tail call i32 @smcr_buf_map_lgr(ptr noundef %arrayidx48) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end53.out_err_crit_edge

if.end53.out_err_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end59:                                         ; preds = %if.end53
  %55 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx48, align 8
  %ibport61 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i216.ph, i32 1
  %57 = ptrtoint ptr %ibport61 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ibport61, align 4
  %conv62 = zext i8 %58 to i32
  %sub = add nsw i32 %conv62, -1
  %arrayidx63 = getelementptr %struct.smc_ib_device, ptr %56, i32 0, i32 8, i32 %sub
  %gid65 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i216.ph, i32 34
  %call67 = tail call i32 @smc_llc_send_add_link(ptr noundef %link, ptr noundef %arrayidx63, ptr noundef %gid65, ptr noundef %arrayidx48, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end59.out_err_crit_edge

if.end59.out_err_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end70:                                         ; preds = %if.end59
  %call71 = tail call ptr @smc_llc_wait(ptr noundef %1, ptr noundef %link, i32 noundef 200, i8 noundef zeroext 2)
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %if.end70.out_err_crit_edge, label %if.end74

if.end70.out_err_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end74:                                         ; preds = %if.end70
  %msg75 = getelementptr inbounds %struct.smc_llc_qentry, ptr %call71, i32 0, i32 2
  %flags = getelementptr inbounds %struct.smc_llc_qentry, ptr %call71, i32 0, i32 2, i32 0, i32 0, i32 2
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %flags, align 1
  %61 = and i8 %60, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool77.not = icmp eq i8 %61, 0
  br i1 %tobool77.not, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.end74
  %qentry1.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18, i32 1
  %62 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %qentry1.i, align 4
  %tobool.not.i217 = icmp eq ptr %63, null
  br i1 %tobool.not.i217, label %if.then78.out_err_crit_edge, label %if.then.i218

if.then78.out_err_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.then.i218:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %qentry1.i, align 4
  tail call void @kfree(ptr noundef nonnull %63) #15
  br label %out_err

if.end79:                                         ; preds = %if.end74
  %65 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp80 = icmp eq i32 %66, 1
  br i1 %cmp80, label %land.lhs.true82, label %if.end79.if.end97_crit_edge

if.end79.if.end97_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

land.lhs.true82:                                  ; preds = %if.end79
  %sender_gid = getelementptr inbounds %struct.smc_llc_qentry, ptr %call71, i32 0, i32 2, i32 0, i32 4, i32 1
  %peer_gid = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 42
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sender_gid, ptr noundef dereferenceable(16) %peer_gid, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool86.not = icmp eq i32 %bcmp, 0
  br i1 %tobool86.not, label %land.lhs.true87, label %land.lhs.true82.if.end97_crit_edge

land.lhs.true82.if.end97_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

land.lhs.true87:                                  ; preds = %land.lhs.true82
  %67 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %cmp90 = icmp eq i8 %68, 2
  br i1 %cmp90, label %land.lhs.true87.if.then96_crit_edge, label %lor.lhs.false

land.lhs.true87.if.then96_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then96

lor.lhs.false:                                    ; preds = %land.lhs.true87
  %sender_mac = getelementptr inbounds %struct.smc_llc_qentry, ptr %call71, i32 0, i32 2, i32 0, i32 1
  %peer_mac = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 41
  %bcmp215 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %sender_mac, ptr noundef dereferenceable(6) %peer_mac, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp215)
  %tobool95.not = icmp eq i32 %bcmp215, 0
  br i1 %tobool95.not, label %lor.lhs.false.if.then96_crit_edge, label %lor.lhs.false.if.end97_crit_edge

lor.lhs.false.if.end97_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

lor.lhs.false.if.then96_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then96

if.then96:                                        ; preds = %lor.lhs.false.if.then96_crit_edge, %land.lhs.true87.if.then96_crit_edge
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %lor.lhs.false.if.end97_crit_edge, %land.lhs.true82.if.end97_crit_edge, %if.end79.if.end97_crit_edge
  %lgr_new_t.1 = phi i32 [ %lgr_new_t.0, %land.lhs.true82.if.end97_crit_edge ], [ 3, %if.then96 ], [ %lgr_new_t.0, %lor.lhs.false.if.end97_crit_edge ], [ %lgr_new_t.0, %if.end79.if.end97_crit_edge ]
  %sender_qp_num.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %call71, i32 0, i32 2, i32 0, i32 4, i32 5
  %69 = ptrtoint ptr %sender_qp_num.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 3)
  %t.1.copyload.i.i = load i24, ptr %sender_qp_num.i, align 1
  %t.1.insert.ext.i.i = zext i24 %t.1.copyload.i.i to i32
  %peer_qpn.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i216.ph, i32 36
  %70 = ptrtoint ptr %peer_qpn.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %t.1.insert.ext.i.i, ptr %peer_qpn.i, align 8
  %peer_gid.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i216.ph, i32 42
  %sender_gid.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %call71, i32 0, i32 2, i32 0, i32 4, i32 1
  %71 = call ptr @memcpy(ptr %peer_gid.i, ptr %sender_gid.i, i32 16)
  %peer_mac.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i216.ph, i32 41
  %sender_mac.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %call71, i32 0, i32 2, i32 0, i32 1
  %72 = call ptr @memcpy(ptr %peer_mac.i, ptr %sender_mac.i, i32 6)
  %initial_psn.i = getelementptr inbounds %struct.smc_llc_msg_add_link, ptr %msg75, i32 0, i32 7
  %73 = ptrtoint ptr %initial_psn.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 3)
  %t.1.copyload.i15.i = load i24, ptr %initial_psn.i, align 1
  %t.1.insert.ext.i16.i = zext i24 %t.1.copyload.i15.i to i32
  %peer_psn.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i216.ph, i32 40
  %74 = ptrtoint ptr %peer_psn.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %t.1.insert.ext.i16.i, ptr %peer_psn.i, align 8
  %qp_mtu.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %call71, i32 0, i32 2, i32 0, i32 4, i32 6
  %75 = ptrtoint ptr %qp_mtu.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i = load i8, ptr %qp_mtu.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  %peer_mtu.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i216.ph, i32 38
  %76 = ptrtoint ptr %peer_mtu.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv.i, ptr %peer_mtu.i, align 8
  %qentry1.i220 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18, i32 1
  %77 = ptrtoint ptr %qentry1.i220 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %qentry1.i220, align 4
  %tobool.not.i221 = icmp eq ptr %78, null
  br i1 %tobool.not.i221, label %if.end97.smc_llc_flow_qentry_del.exit224_crit_edge, label %if.then.i222

if.end97.smc_llc_flow_qentry_del.exit224_crit_edge: ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_flow_qentry_del.exit224

if.then.i222:                                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %qentry1.i220 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %qentry1.i220, align 4
  tail call void @kfree(ptr noundef nonnull %78) #15
  br label %smc_llc_flow_qentry_del.exit224

smc_llc_flow_qentry_del.exit224:                  ; preds = %if.then.i222, %if.end97.smc_llc_flow_qentry_del.exit224_crit_edge
  %call99 = tail call i32 @smc_ib_ready_link(ptr noundef %arrayidx48) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %smc_llc_flow_qentry_del.exit224.out_err_crit_edge

smc_llc_flow_qentry_del.exit224.out_err_crit_edge: ; preds = %smc_llc_flow_qentry_del.exit224
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end102:                                        ; preds = %smc_llc_flow_qentry_del.exit224
  %call103 = tail call i32 @smcr_buf_reg_lgr(ptr noundef %arrayidx48) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.out_err_crit_edge

if.end102.out_err_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end106:                                        ; preds = %if.end102
  %80 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp109 = icmp eq i8 %81, 2
  br i1 %cmp109, label %if.then111, label %if.else112

if.then111:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @smc_llc_save_add_link_rkeys(ptr noundef %link, ptr noundef %arrayidx48)
  br label %if.end117

if.else112:                                       ; preds = %if.end106
  %call113 = tail call fastcc i32 @smc_llc_srv_rkey_exchange(ptr noundef %link, ptr noundef %arrayidx48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.else112.if.end117_crit_edge, label %if.else112.out_err_crit_edge

if.else112.out_err_crit_edge:                     ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.else112.if.end117_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

if.end117:                                        ; preds = %if.else112.if.end117_crit_edge, %if.then111
  %call118 = tail call fastcc i32 @smc_llc_srv_conf_link(ptr noundef %link, ptr noundef %arrayidx48, i32 noundef %lgr_new_t.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end117.out_err_crit_edge

if.end117.out_err_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end121:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

out_err:                                          ; preds = %if.end117.out_err_crit_edge, %if.else112.out_err_crit_edge, %if.end102.out_err_crit_edge, %smc_llc_flow_qentry_del.exit224.out_err_crit_edge, %if.then.i218, %if.then78.out_err_crit_edge, %if.end70.out_err_crit_edge, %if.end59.out_err_crit_edge, %if.end53.out_err_crit_edge
  %send_req_add_link_resp.1.off0 = phi i1 [ %send_req_add_link_resp.0.off0, %if.end53.out_err_crit_edge ], [ %send_req_add_link_resp.0.off0, %if.end59.out_err_crit_edge ], [ false, %smc_llc_flow_qentry_del.exit224.out_err_crit_edge ], [ false, %if.end102.out_err_crit_edge ], [ false, %if.end117.out_err_crit_edge ], [ false, %if.else112.out_err_crit_edge ], [ false, %if.end70.out_err_crit_edge ], [ false, %if.then78.out_err_crit_edge ], [ false, %if.then.i218 ]
  %rc.0 = phi i32 [ %call56, %if.end53.out_err_crit_edge ], [ %call67, %if.end59.out_err_crit_edge ], [ %call99, %smc_llc_flow_qentry_del.exit224.out_err_crit_edge ], [ %call103, %if.end102.out_err_crit_edge ], [ %call118, %if.end117.out_err_crit_edge ], [ %call113, %if.else112.out_err_crit_edge ], [ -110, %if.end70.out_err_crit_edge ], [ -67, %if.then78.out_err_crit_edge ], [ -67, %if.then.i218 ]
  %tobool122.not = icmp eq ptr %arrayidx48, null
  br i1 %tobool122.not, label %out_err.out_crit_edge, label %if.then123

out_err.out_crit_edge:                            ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then123:                                       ; preds = %out_err
  %state = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 %retval.0.i216.ph, i32 54
  %82 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %state, align 8
  tail call void @smcr_link_clear(ptr noundef nonnull %arrayidx48, i1 noundef zeroext false) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br i1 %send_req_add_link_resp.1.off0, label %if.then123.if.then126_crit_edge, label %if.then123.cleanup_crit_edge

if.then123.cleanup_crit_edge:                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then123.if.then126_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then126

out:                                              ; preds = %out_err.out_crit_edge, %if.end47.out_crit_edge, %cleanup.sink.split.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.end42.out_crit_edge, %if.end.out_crit_edge
  %send_req_add_link_resp.2.off0 = phi i1 [ %send_req_add_link_resp.0.off0, %if.end47.out_crit_edge ], [ %send_req_add_link_resp.1.off0, %out_err.out_crit_edge ], [ %send_req_add_link_resp.0.off0, %if.end.out_crit_edge ], [ %send_req_add_link_resp.0.off0, %cleanup.sink.split.i.out_crit_edge ], [ %send_req_add_link_resp.0.off0, %if.end42.out_crit_edge ], [ %send_req_add_link_resp.0.off0, %land.lhs.true.i.out_crit_edge ]
  %rc.1 = phi i32 [ %call50, %if.end47.out_crit_edge ], [ %rc.0, %out_err.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ 0, %cleanup.sink.split.i.out_crit_edge ], [ 0, %if.end42.out_crit_edge ], [ 0, %land.lhs.true.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #15
  br i1 %send_req_add_link_resp.2.off0, label %out.if.then126_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out.if.then126_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then126

if.then126:                                       ; preds = %out.if.then126_crit_edge, %if.then123.if.then126_crit_edge
  %rc.1230 = phi i32 [ %rc.0, %if.then123.if.then126_crit_edge ], [ %rc.1, %out.if.then126_crit_edge ]
  %msg.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 2, i32 0, i32 0, i32 2
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %flags.i, align 1
  %85 = or i8 %84, -128
  store i8 %85, ptr %flags.i, align 1
  %link.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 1
  %86 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %link.i, align 4
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %87, i32 0, i32 50
  %88 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lgr.i, align 4
  %smc_version.i.i = getelementptr inbounds %struct.smc_link_group, ptr %89, i32 0, i32 16
  %90 = ptrtoint ptr %smc_version.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %smc_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp.i.i225 = icmp eq i8 %91, 2
  %92 = ptrtoint ptr %msg.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i.i = load i8, ptr %msg.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  br i1 %cmp.i.i225, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set.i.i = or i8 %bf.clear.i.i, 32
  %93 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %bf.set.i.i, ptr %msg.i, align 1
  %94 = getelementptr inbounds %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 2, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 44, ptr %94, align 1
  br label %smc_llc_send_req_add_link_response.exit

if.else.i.i:                                      ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #17
  %96 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %bf.clear.i.i, ptr %msg.i, align 1
  %97 = getelementptr inbounds %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 2, i32 0, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 44, ptr %97, align 1
  br label %smc_llc_send_req_add_link_response.exit

smc_llc_send_req_add_link_response.exit:          ; preds = %if.else.i.i, %if.then.i.i
  %data.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %req_qentry, i32 0, i32 2, i32 0, i32 1
  %99 = call ptr @memset(ptr %data.i, i32 0, i32 40)
  %call.i = tail call fastcc i32 @smc_llc_send_message(ptr noundef %87, ptr noundef %msg.i) #15
  br label %cleanup

cleanup:                                          ; preds = %smc_llc_send_req_add_link_response.exit, %out.cleanup_crit_edge, %if.then123.cleanup_crit_edge, %if.end121
  %retval.0 = phi i32 [ 0, %if.end121 ], [ %rc.1230, %smc_llc_send_req_add_link_response.exit ], [ %rc.1, %out.cleanup_crit_edge ], [ %rc.0, %if.then123.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcr_buf_reg_lgr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_llc_srv_rkey_exchange(ptr noundef %link, ptr nocapture noundef readonly %link_new) unnamed_addr #2 align 64 {
entry:
  %num_rkeys_send = alloca i8, align 1
  %buf_pos = alloca ptr, align 4
  %buf_lst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num_rkeys_send) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_pos) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_lst) #15
  %2 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf_lst, align 4, !annotation !77
  %rmbs_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %rmbs_lock, i32 noundef 0) #15
  %conns_num = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %conns_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %conns_num, align 8
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %num_rkeys_send to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %num_rkeys_send, align 1
  %call = call fastcc ptr @smc_llc_get_first_rmb(ptr noundef %1, ptr noundef nonnull %buf_lst)
  %6 = ptrtoint ptr %buf_pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %buf_pos, align 4
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 46
  %link_idx14 = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 46
  %qentry1.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18, i32 1
  br label %do.body

do.body:                                          ; preds = %smc_llc_flow_qentry_del.exit.do.body_crit_edge, %entry
  %call2 = call fastcc i32 @smc_llc_add_link_cont(ptr noundef %link, ptr noundef %link_new, ptr noundef nonnull %num_rkeys_send, ptr noundef nonnull %buf_lst, ptr noundef nonnull %buf_pos)
  %call3 = tail call ptr @smc_llc_wait(ptr noundef %1, ptr noundef %link, i32 noundef 200, i8 noundef zeroext 3)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.body.out_crit_edge, label %if.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %do.body
  %num_rkeys = getelementptr inbounds %struct.smc_llc_qentry, ptr %call3, i32 0, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %num_rkeys to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_rkeys, align 1
  %9 = tail call i8 @llvm.umin.i8(i8 %8, i8 2)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1147.not = icmp eq i8 %9, 0
  br i1 %cmp1147.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %if.end
  %rt = getelementptr inbounds %struct.smc_llc_qentry, ptr %call3, i32 0, i32 2, i32 0, i32 4
  %10 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_idx, align 1
  %conv13 = zext i8 %11 to i32
  %12 = ptrtoint ptr %link_idx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %link_idx14, align 1
  %conv15 = zext i8 %13 to i32
  %14 = ptrtoint ptr %rt to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rt, align 1
  %rmb_vaddr_new = getelementptr %struct.smc_llc_qentry, ptr %call3, i32 0, i32 2, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %rmb_vaddr_new to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %rmb_vaddr_new, align 1
  %rmb_key_new = getelementptr %struct.smc_llc_qentry, ptr %call3, i32 0, i32 2, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %rmb_key_new to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %rmb_key_new, align 1
  tail call void @smc_rtoken_set(ptr noundef %1, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %15, i64 noundef %17, i32 noundef %19) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %exitcond.not = icmp eq i8 %9, 1
  br i1 %exitcond.not, label %for.body.for.end.loopexit_crit_edge, label %for.body.1

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.loopexit

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link_idx, align 1
  %conv13.1 = zext i8 %21 to i32
  %22 = ptrtoint ptr %link_idx14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %link_idx14, align 1
  %conv15.1 = zext i8 %23 to i32
  %arrayidx.1 = getelementptr %struct.smc_llc_qentry, ptr %call3, i32 0, i32 2, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %arrayidx.1, align 1
  %rmb_vaddr_new.1 = getelementptr %struct.smc_llc_qentry, ptr %call3, i32 0, i32 2, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %rmb_vaddr_new.1 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %rmb_vaddr_new.1, align 1
  %rmb_key_new.1 = getelementptr %struct.smc_llc_qentry, ptr %call3, i32 0, i32 2, i32 0, i32 4, i32 5
  %28 = ptrtoint ptr %rmb_key_new.1 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %rmb_key_new.1, align 1
  tail call void @smc_rtoken_set(ptr noundef %1, i32 noundef %conv13.1, i32 noundef %conv15.1, i32 noundef %25, i64 noundef %27, i32 noundef %29) #15
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body.1, %for.body.for.end.loopexit_crit_edge
  %30 = sub i8 %8, %9
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %num_rkeys_recv.0.lcssa = phi i8 [ %8, %if.end.for.end_crit_edge ], [ %30, %for.end.loopexit ]
  %31 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qentry1.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %for.end.smc_llc_flow_qentry_del.exit_crit_edge, label %if.then.i

for.end.smc_llc_flow_qentry_del.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_flow_qentry_del.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %qentry1.i, align 4
  tail call void @kfree(ptr noundef nonnull %32) #15
  br label %smc_llc_flow_qentry_del.exit

smc_llc_flow_qentry_del.exit:                     ; preds = %if.then.i, %for.end.smc_llc_flow_qentry_del.exit_crit_edge
  %34 = ptrtoint ptr %num_rkeys_send to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_rkeys_send, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool21.not = icmp eq i8 %35, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_rkeys_recv.0.lcssa)
  %tobool23.not = icmp eq i8 %num_rkeys_recv.0.lcssa, 0
  %or.cond = select i1 %tobool21.not, i1 %tobool23.not, i1 false
  br i1 %or.cond, label %smc_llc_flow_qentry_del.exit.out_crit_edge, label %smc_llc_flow_qentry_del.exit.do.body_crit_edge

smc_llc_flow_qentry_del.exit.do.body_crit_edge:   ; preds = %smc_llc_flow_qentry_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

smc_llc_flow_qentry_del.exit.out_crit_edge:       ; preds = %smc_llc_flow_qentry_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %smc_llc_flow_qentry_del.exit.out_crit_edge, %do.body.out_crit_edge
  %rc.0 = phi i32 [ -110, %do.body.out_crit_edge ], [ 0, %smc_llc_flow_qentry_del.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rmbs_lock) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_lst) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_pos) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num_rkeys_send) #15
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_llc_srv_conf_link(ptr noundef %link, ptr noundef %link_new, i32 noundef %lgr_new_t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  %call = tail call i32 @smc_llc_send_confirm_link(ptr noundef %link_new, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @smc_llc_wait(ptr noundef %1, ptr noundef %link, i32 noundef 500, i8 noundef zeroext 0)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end9.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %msg = getelementptr inbounds %struct.smc_llc_qentry, ptr %call2, i32 0, i32 2
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %msg, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.not = icmp eq i8 %bf.clear, 1
  br i1 %cmp.not, label %if.end10, label %if.then8.critedge

if.then8.critedge:                                ; preds = %lor.lhs.false
  %link_id.c = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 43
  %3 = ptrtoint ptr %link_id.c to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link_id.c, align 2
  %call6.c = tail call i32 @smc_llc_send_delete_link(ptr noundef %link, i8 noundef zeroext %4, i32 noundef 0, i1 noundef zeroext false, i32 noundef 65536)
  %qentry1.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18, i32 1
  %5 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qentry1.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then8.critedge.cleanup_crit_edge, label %if.then.i

if.then8.critedge.cleanup_crit_edge:              ; preds = %if.then8.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.then8.critedge
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %qentry1.i, align 4
  tail call void @kfree(ptr noundef nonnull %6) #15
  br label %cleanup

if.end9.critedge:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %link_id.c37 = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 43
  %8 = ptrtoint ptr %link_id.c37 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %link_id.c37, align 2
  %call6.c38 = tail call i32 @smc_llc_send_delete_link(ptr noundef %link, i8 noundef zeroext %9, i32 noundef 0, i1 noundef zeroext false, i32 noundef 65536)
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %link.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %call2, i32 0, i32 1
  %10 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link.i, align 4
  %peer_link_uid.i = getelementptr inbounds %struct.smc_link, ptr %11, i32 0, i32 45
  %link_uid.i = getelementptr inbounds %struct.smc_llc_msg_confirm_link, ptr %msg, i32 0, i32 5
  %12 = ptrtoint ptr %link_uid.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %link_uid.i, align 2
  %14 = ptrtoint ptr %peer_link_uid.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %peer_link_uid.i, align 1
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @smc_llc_link_active._rs, ptr noundef nonnull @__func__.smc_llc_link_active) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i39 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i39, label %if.end10.if.end.i_crit_edge, label %do.end.i

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 50
  %15 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lgr.i, align 4
  %id.i = getelementptr inbounds %struct.smc_link_group, ptr %16, i32 0, i32 9
  %net.i = getelementptr inbounds %struct.smc_link_group, ptr %16, i32 0, i32 21, i32 0, i32 27
  %17 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i, align 4
  %net_cookie.i = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %net_cookie.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %net_cookie.i, align 128
  %link_uid.i40 = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 44
  %peer_link_uid.i41 = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 45
  %21 = ptrtoint ptr %link_new to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link_new, align 8
  %ibdev.i = getelementptr inbounds %struct.smc_ib_device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ibdev.i, align 8
  %name.i = getelementptr inbounds %struct.ib_device, ptr %24, i32 0, i32 2
  %ibport.i = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 1
  %25 = ptrtoint ptr %ibport.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ibport.i, align 4
  %conv.i = zext i8 %26 to i32
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 4, ptr noundef %id.i, i64 noundef %20, i32 noundef 4, ptr noundef %link_uid.i40, i32 noundef 4, ptr noundef %peer_link_uid.i41, ptr noundef %name.i, i32 noundef %conv.i) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end10.if.end.i_crit_edge
  %state.i = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 54
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %state.i, align 8
  %lgr3.i = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 50
  %28 = ptrtoint ptr %lgr3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lgr3.i, align 4
  %llc_testlink_time.i = getelementptr inbounds %struct.smc_link_group, ptr %29, i32 0, i32 21, i32 0, i32 22
  %30 = ptrtoint ptr %llc_testlink_time.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %llc_testlink_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.i = icmp eq i32 %31, 0
  br i1 %tobool4.not.i, label %if.end.i.smc_llc_link_active.exit_crit_edge, label %if.then5.i

if.end.i.smc_llc_link_active.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_link_active.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %llc_testlink_time8.i = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 57
  %32 = ptrtoint ptr %llc_testlink_time8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %llc_testlink_time8.i, align 8
  %llc_testlink_wrk.i = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %llc_testlink_wrk.i, i32 noundef %31) #15
  br label %smc_llc_link_active.exit

smc_llc_link_active.exit:                         ; preds = %if.then5.i, %if.end.i.smc_llc_link_active.exit_crit_edge
  %lgr_new_t.off = add i32 %lgr_new_t, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lgr_new_t.off)
  %switch = icmp ult i32 %lgr_new_t.off, 2
  br i1 %switch, label %if.then16, label %if.else

if.then16:                                        ; preds = %smc_llc_link_active.exit
  call void @__sanitizer_cov_trace_pc() #17
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 46
  %34 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %link_idx, align 1
  %conv17 = zext i8 %35 to i32
  tail call void @smcr_lgr_set_type_asym(ptr noundef %1, i32 noundef %lgr_new_t, i32 noundef %conv17) #15
  br label %if.end18

if.else:                                          ; preds = %smc_llc_link_active.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smcr_lgr_set_type(ptr noundef %1, i32 noundef 2) #15
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %qentry1.i42 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %qentry1.i42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qentry1.i42, align 4
  %tobool.not.i43 = icmp eq ptr %37, null
  br i1 %tobool.not.i43, label %if.end18.cleanup_crit_edge, label %if.then.i44

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i44:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %qentry1.i42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %qentry1.i42, align 4
  tail call void @kfree(ptr noundef nonnull %37) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i44, %if.end18.cleanup_crit_edge, %if.end9.critedge, %if.then.i, %if.then8.critedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -67, %entry.cleanup_crit_edge ], [ -67, %if.end9.critedge ], [ -67, %if.then8.critedge.cleanup_crit_edge ], [ -67, %if.then.i ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.then.i44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_llc_add_link_local(ptr noundef %link) local_unnamed_addr #2 align 64 {
entry:
  %add_llc = alloca %struct.smc_llc_msg_add_link, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %add_llc) #15
  %0 = call ptr @memset(ptr %add_llc, i32 0, i32 44)
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %1 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lgr, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp.i = icmp eq i8 %4, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %add_llc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 34, ptr %add_llc, align 1
  %6 = getelementptr inbounds %struct.smc_llc_hdr, ptr %add_llc, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 44, ptr %6, align 1
  br label %smc_llc_init_msg_hdr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %add_llc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %add_llc, align 1
  %9 = getelementptr inbounds %struct.smc_llc_hdr, ptr %add_llc, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 44, ptr %9, align 1
  br label %smc_llc_init_msg_hdr.exit

smc_llc_init_msg_hdr.exit:                        ; preds = %if.else.i, %if.then.i
  call fastcc void @smc_llc_enqueue(ptr noundef %link, ptr noundef nonnull %add_llc)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %add_llc) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_llc_enqueue(ptr noundef %link, ptr nocapture noundef readonly %llc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 56) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %link2 = getelementptr inbounds %struct.smc_llc_qentry, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %link2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %link, ptr %link2, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %prev.i, align 4
  %msg = getelementptr inbounds %struct.smc_llc_qentry, ptr %call7.i, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %msg, ptr %llc, i32 44)
  %flags3 = getelementptr inbounds %struct.smc_llc_hdr, ptr %llc, i32 0, i32 2
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool4.not = icmp sgt i8 %8, -1
  br i1 %tobool4.not, label %if.end.do.body10_crit_edge, label %land.lhs.true

if.end.do.body10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body10

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %llc to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %llc, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp.not = icmp eq i8 %bf.clear, 5
  br i1 %cmp.not, label %land.lhs.true.do.body10_crit_edge, label %if.then8

land.lhs.true.do.body10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body10

if.then8:                                         ; preds = %land.lhs.true
  %10 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lgr1, align 4
  %llc_flow_lcl.i = getelementptr inbounds %struct.smc_link_group, ptr %11, i32 0, i32 21, i32 0, i32 18
  %12 = ptrtoint ptr %llc_flow_lcl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %llc_flow_lcl.i, align 8
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %msg, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  %15 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %conv.i, label %sw.default.i [
    i32 7, label %sw.bb.i
    i32 2, label %if.then8.sw.bb3.i_crit_edge
    i32 3, label %if.then8.sw.bb3.i_crit_edge37
    i32 1, label %if.then8.sw.bb3.i_crit_edge38
    i32 4, label %sw.bb8.i
    i32 6, label %if.then8.sw.bb16.i_crit_edge
    i32 9, label %if.then8.sw.bb16.i_crit_edge39
    i32 8, label %if.then8.sw.epilog.i_crit_edge
  ]

if.then8.sw.epilog.i_crit_edge:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.then8.sw.bb16.i_crit_edge39:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb16.i

if.then8.sw.bb16.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb16.i

if.then8.sw.bb3.i_crit_edge38:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i

if.then8.sw.bb3.i_crit_edge37:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i

if.then8.sw.bb3.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %if.then8
  %state.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 54
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 3
  br i1 %cmp.i.i, label %if.then.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %llc_testlink_resp.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 56
  tail call void @complete(ptr noundef %llc_testlink_resp.i) #15
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then8.sw.bb3.i_crit_edge, %if.then8.sw.bb3.i_crit_edge37, %if.then8.sw.bb3.i_crit_edge38
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb3.i.sw.epilog.i_crit_edge

sw.bb3.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

lor.lhs.false.i:                                  ; preds = %sw.bb3.i
  %qentry5.i = getelementptr inbounds %struct.smc_link_group, ptr %11, i32 0, i32 21, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %qentry5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qentry5.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.assign.i_crit_edge, label %lor.lhs.false.i.sw.epilog.i_crit_edge

lor.lhs.false.i.sw.epilog.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

lor.lhs.false.i.assign.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %assign.i

sw.bb8.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp9.not.i = icmp eq i32 %13, 4
  br i1 %cmp9.not.i, label %lor.lhs.false11.i, label %sw.bb8.i.sw.epilog.i_crit_edge

sw.bb8.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

lor.lhs.false11.i:                                ; preds = %sw.bb8.i
  %qentry12.i = getelementptr inbounds %struct.smc_link_group, ptr %11, i32 0, i32 21, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %qentry12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qentry12.i, align 4
  %tobool13.not.i = icmp eq ptr %21, null
  br i1 %tobool13.not.i, label %lor.lhs.false11.i.assign.i_crit_edge, label %lor.lhs.false11.i.sw.epilog.i_crit_edge

lor.lhs.false11.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

lor.lhs.false11.i.assign.i_crit_edge:             ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %assign.i

sw.bb16.i:                                        ; preds = %if.then8.sw.bb16.i_crit_edge, %if.then8.sw.bb16.i_crit_edge39
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp17.not.i = icmp eq i32 %13, 6
  br i1 %cmp17.not.i, label %lor.lhs.false19.i, label %sw.bb16.i.sw.epilog.i_crit_edge

sw.bb16.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

lor.lhs.false19.i:                                ; preds = %sw.bb16.i
  %qentry20.i = getelementptr inbounds %struct.smc_link_group, ptr %11, i32 0, i32 21, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %qentry20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qentry20.i, align 4
  %tobool21.not.i = icmp eq ptr %23, null
  br i1 %tobool21.not.i, label %lor.lhs.false19.i.assign.i_crit_edge, label %lor.lhs.false19.i.sw.epilog.i_crit_edge

lor.lhs.false19.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

lor.lhs.false19.i.assign.i_crit_edge:             ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %assign.i

sw.default.i:                                     ; preds = %if.then8
  %call.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @smc_llc_protocol_violation._rs, ptr noundef nonnull @__func__.smc_llc_protocol_violation) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %sw.default.i.if.end.i.i_crit_edge, label %do.end.i.i

sw.default.i.if.end.i.i_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #17
  %id.i.i = getelementptr inbounds %struct.smc_link_group, ptr %11, i32 0, i32 9
  %net.i.i = getelementptr inbounds %struct.smc_link_group, ptr %11, i32 0, i32 21, i32 0, i32 27
  %24 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i.i, align 4
  %net_cookie.i.i = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 47
  %26 = ptrtoint ptr %net_cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %net_cookie.i.i, align 128
  %conv.i.i = zext i8 %bf.load.i to i32
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 4, ptr noundef %id.i.i, i64 noundef %27, i32 noundef %conv.i.i) #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %sw.default.i.if.end.i.i_crit_edge
  %llc_termination_rsn.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %11, i32 0, i32 21, i32 0, i32 23
  %28 = ptrtoint ptr %llc_termination_rsn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %llc_termination_rsn.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.smc_llc_protocol_violation.exit.i_crit_edge

if.end.i.i.smc_llc_protocol_violation.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_protocol_violation.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %llc_termination_rsn.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 262144, ptr %llc_termination_rsn.i.i.i, align 4
  br label %smc_llc_protocol_violation.exit.i

smc_llc_protocol_violation.exit.i:                ; preds = %if.then.i.i.i, %if.end.i.i.smc_llc_protocol_violation.exit.i_crit_edge
  tail call void @smc_lgr_terminate_sched(ptr noundef %11) #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %smc_llc_protocol_violation.exit.i, %lor.lhs.false19.i.sw.epilog.i_crit_edge, %sw.bb16.i.sw.epilog.i_crit_edge, %lor.lhs.false11.i.sw.epilog.i_crit_edge, %sw.bb8.i.sw.epilog.i_crit_edge, %lor.lhs.false.i.sw.epilog.i_crit_edge, %sw.bb3.i.sw.epilog.i_crit_edge, %if.then.i, %sw.bb.i.sw.epilog.i_crit_edge, %if.then8.sw.epilog.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

assign.i:                                         ; preds = %lor.lhs.false19.i.assign.i_crit_edge, %lor.lhs.false11.i.assign.i_crit_edge, %lor.lhs.false.i.assign.i_crit_edge
  %qentry1.i.i = getelementptr inbounds %struct.smc_link_group, ptr %11, i32 0, i32 21, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %qentry1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i, ptr %qentry1.i.i, align 4
  %32 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lgr1, align 4
  %llc_msg_waiter.i = getelementptr inbounds %struct.smc_link_group, ptr %33, i32 0, i32 21, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %llc_msg_waiter.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

do.body10:                                        ; preds = %land.lhs.true.do.body10_crit_edge, %if.end.do.body10_crit_edge
  %llc_event_q_lock = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 11
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %llc_event_q_lock) #15
  %llc_event_q = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 10
  %prev.i34 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i34, align 4
  %call.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %35, ptr noundef %llc_event_q) #15
  br i1 %call.i.i35, label %if.end.i.i36, label %do.body10.list_add_tail.exit_crit_edge

do.body10.list_add_tail.exit_crit_edge:           ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i36:                                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i, ptr %prev.i34, align 4
  %37 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %llc_event_q, ptr %call7.i, align 8
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i36, %do.body10.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %llc_event_q_lock, i32 noundef %call14) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %40 = load ptr, ptr @system_highpri_wq, align 4
  %llc_event_work = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 15
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %llc_event_work) #15
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %assign.i, %sw.epilog.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_llc_srv_delete_link_local(ptr noundef %link, i8 noundef zeroext %del_link_id) local_unnamed_addr #2 align 64 {
entry:
  %del_llc = alloca %struct.smc_llc_msg_del_link, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %del_llc) #15
  %0 = call ptr @memset(ptr %del_llc, i32 0, i32 44)
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %1 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lgr, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp.i = icmp eq i8 %4, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %del_llc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 36, ptr %del_llc, align 1
  %6 = getelementptr inbounds %struct.smc_llc_hdr, ptr %del_llc, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 44, ptr %6, align 1
  br label %smc_llc_init_msg_hdr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %del_llc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %del_llc, align 1
  %9 = getelementptr inbounds %struct.smc_llc_hdr, ptr %del_llc, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 44, ptr %9, align 1
  br label %smc_llc_init_msg_hdr.exit

smc_llc_init_msg_hdr.exit:                        ; preds = %if.else.i, %if.then.i
  %link_num = getelementptr inbounds %struct.smc_llc_msg_del_link, ptr %del_llc, i32 0, i32 1
  %11 = ptrtoint ptr %link_num to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %del_link_id, ptr %link_num, align 1
  %reason = getelementptr inbounds %struct.smc_llc_msg_del_link, ptr %del_llc, i32 0, i32 2
  %12 = ptrtoint ptr %reason to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 65536, ptr %reason, align 1
  %flags = getelementptr inbounds %struct.smc_llc_hdr, ptr %del_llc, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %15 = or i8 %14, 32
  store i8 %15, ptr %flags, align 1
  call fastcc void @smc_llc_enqueue(ptr noundef %link, ptr noundef nonnull %del_llc)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %del_llc) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_llc_send_link_delete_all(ptr noundef %lgr, i1 noundef zeroext %ord, i32 noundef %rsn) local_unnamed_addr #2 align 64 {
entry:
  %pend.i = alloca ptr, align 4
  %wr_buf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 16
  %0 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.i = icmp eq i8 %1, 2
  %delllc.sroa.9.sroa.0.0 = select i1 %cmp.i, i8 0, i8 44
  %delllc.sroa.9.sroa.6.sroa.0.0 = select i1 %cmp.i, i8 44, i8 0
  %delllc.sroa.0.0 = select i1 %cmp.i, i8 36, i8 4
  %2 = select i1 %ord, i8 96, i8 64
  %delllc.sroa.9.sroa.6.0.insert.ext = zext i8 %delllc.sroa.9.sroa.6.sroa.0.0 to i16
  %delllc.sroa.9.sroa.0.0.insert.ext = zext i8 %delllc.sroa.9.sroa.0.0 to i16
  %delllc.sroa.9.sroa.0.0.insert.shift = shl nuw nsw i16 %delllc.sroa.9.sroa.0.0.insert.ext, 8
  %delllc.sroa.9.sroa.0.0.insert.insert = or i16 %delllc.sroa.9.sroa.0.0.insert.shift, %delllc.sroa.9.sroa.6.0.insert.ext
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %i.032.be, %for.body.backedge ]
  %arrayidx = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.032
  %state.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.032, i32 54
  %3 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.i.i = icmp ugt i32 %4, 1
  br i1 %switch.i.i, label %smc_link_sendable.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

smc_link_sendable.exit:                           ; preds = %for.body
  %cur_qp_state.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.032, i32 4, i32 1
  %5 = ptrtoint ptr %cur_qp_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_qp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i23 = icmp eq i32 %6, 3
  br i1 %cmp.i23, label %smc_link_sendable.exit.i.i, label %smc_link_sendable.exit.for.inc_crit_edge

smc_link_sendable.exit.for.inc_crit_edge:         ; preds = %smc_link_sendable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

smc_link_sendable.exit.i.i:                       ; preds = %smc_link_sendable.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend.i) #15
  %7 = ptrtoint ptr %pend.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf.i) #15
  %8 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf.i, align 4, !annotation !77
  %9 = ptrtoint ptr %cur_qp_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_qp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i.i.i = icmp eq i32 %10, 3
  br i1 %cmp.i.i.i, label %if.end.i, label %smc_llc_send_message_wait.exit.thread

smc_llc_send_message_wait.exit.thread:            ; preds = %smc_link_sendable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend.i) #15
  br label %for.inc

if.end.i:                                         ; preds = %smc_link_sendable.exit.i.i
  %wr_tx_refcnt.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.032, i32 21
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %11 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #15, !srcloc !78
  %call.i.i = call i32 @smc_wr_tx_get_free_slot(ptr noundef %arrayidx, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf.i, ptr noundef null, ptr noundef nonnull %pend.i) #15
  %12 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.put_out.i_crit_edge

if.end.i.put_out.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wr_buf.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %delllc.sroa.0.0, ptr %14, align 1
  %delllc.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 1
  %16 = ptrtoint ptr %delllc.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %delllc.sroa.9.sroa.0.0.insert.insert, ptr %delllc.sroa.9.0..sroa_idx, align 1
  %delllc.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 3
  %17 = ptrtoint ptr %delllc.sroa.11.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %2, ptr %delllc.sroa.11.0..sroa_idx, align 1
  %delllc.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 4
  %18 = ptrtoint ptr %delllc.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %delllc.sroa.15.0..sroa_idx, align 1
  %delllc.sroa.1525.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 5
  %19 = ptrtoint ptr %delllc.sroa.1525.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %rsn, ptr %delllc.sroa.1525.0..sroa_idx, align 1
  %delllc.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 9
  %20 = call ptr @memset(ptr %delllc.sroa.16.0..sroa_idx, i32 0, i32 35)
  %21 = ptrtoint ptr %pend.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pend.i, align 4
  %call4.i = call i32 @smc_wr_tx_send_wait(ptr noundef %arrayidx, ptr noundef %22, i32 noundef 200) #15
  br label %put_out.i

put_out.i:                                        ; preds = %if.end3.i, %if.end.i.put_out.i_crit_edge
  %rc.0.i = phi i32 [ %12, %if.end.i.put_out.i_crit_edge ], [ %call4.i, %if.end3.i ]
  %call.i.i.i12.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %23 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #15, !srcloc !80
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %put_out.i.smc_llc_send_message_wait.exit_crit_edge

put_out.i.smc_llc_send_message_wait.exit_crit_edge: ; preds = %put_out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_message_wait.exit

if.then.i.i:                                      ; preds = %put_out.i
  call void @__sanitizer_cov_trace_pc() #17
  %wr_tx_wait.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.032, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %smc_llc_send_message_wait.exit

smc_llc_send_message_wait.exit:                   ; preds = %if.then.i.i, %put_out.i.smc_llc_send_message_wait.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool15.not = icmp eq i32 %rc.0.i, 0
  %inc = add nuw nsw i32 %i.032, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 3
  %or.cond = select i1 %tobool15.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %smc_llc_send_message_wait.exit.for.end_crit_edge, label %smc_llc_send_message_wait.exit.for.body.backedge_crit_edge

smc_llc_send_message_wait.exit.for.body.backedge_crit_edge: ; preds = %smc_llc_send_message_wait.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.backedge

smc_llc_send_message_wait.exit.for.end_crit_edge: ; preds = %smc_llc_send_message_wait.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %smc_llc_send_message_wait.exit.thread, %smc_link_sendable.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc.old = add nuw nsw i32 %i.032, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.old)
  %exitcond.not.old = icmp eq i32 %inc.old, 3
  br i1 %exitcond.not.old, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %smc_llc_send_message_wait.exit.for.body.backedge_crit_edge
  %i.032.be = phi i32 [ %inc.old, %for.inc.for.body.backedge_crit_edge ], [ %inc, %smc_llc_send_message_wait.exit.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %smc_llc_send_message_wait.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_llc_lgr_init(ptr noundef %lgr, ptr nocapture noundef readonly %smc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %clcsock = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %clcsock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clcsock, align 8
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %llc_event_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 15
  tail call void @__init_work(ptr noundef %llc_event_work, i32 noundef 0) #15
  %6 = ptrtoint ptr %llc_event_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %llc_event_work, align 4
  %lockdep_map = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @smc_llc_lgr_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry4 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 15, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 15, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @smc_llc_event_work, ptr %func, align 4
  %llc_add_link_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 13
  tail call void @__init_work(ptr noundef %llc_add_link_work, i32 noundef 0) #15
  %10 = ptrtoint ptr %llc_add_link_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %llc_add_link_work, align 4
  %lockdep_map12 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map12, ptr noundef nonnull @.str.5, ptr noundef nonnull @smc_llc_lgr_init.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry14 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i70 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 13, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry14, ptr %prev.i70, align 4
  %func16 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 13, i32 2
  %13 = ptrtoint ptr %func16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @smc_llc_add_link_work, ptr %func16, align 4
  %llc_del_link_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 14
  tail call void @__init_work(ptr noundef %llc_del_link_work, i32 noundef 0) #15
  %14 = ptrtoint ptr %llc_del_link_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %llc_del_link_work, align 8
  %lockdep_map25 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map25, ptr noundef nonnull @.str.7, ptr noundef nonnull @smc_llc_lgr_init.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry27 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry27, ptr %entry27, align 4
  %prev.i71 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 14, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry27, ptr %prev.i71, align 4
  %func29 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 14, i32 2
  %17 = ptrtoint ptr %func29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @smc_llc_delete_link_work, ptr %func29, align 4
  %llc_event_q = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 10
  %18 = ptrtoint ptr %llc_event_q to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %llc_event_q, ptr %llc_event_q, align 4
  %prev.i72 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %llc_event_q, ptr %prev.i72, align 4
  %llc_event_q_lock = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %llc_event_q_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @smc_llc_lgr_init.__key.8, i16 noundef signext 3) #15
  %llc_flow_lock = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 21
  tail call void @__raw_spin_lock_init(ptr noundef %llc_flow_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @smc_llc_lgr_init.__key.10, i16 noundef signext 3) #15
  %llc_flow_waiter = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %llc_flow_waiter, ptr noundef nonnull @.str.13, ptr noundef nonnull @smc_llc_lgr_init.__key.12) #15
  %llc_msg_waiter = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %llc_msg_waiter, ptr noundef nonnull @.str.15, ptr noundef nonnull @smc_llc_lgr_init.__key.14) #15
  %llc_conf_mutex = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %llc_conf_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @smc_llc_lgr_init.__key.16) #15
  %sysctl_tcp_keepalive_time = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 58
  %20 = ptrtoint ptr %sysctl_tcp_keepalive_time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sysctl_tcp_keepalive_time, align 4
  %llc_testlink_time = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 22
  %22 = ptrtoint ptr %llc_testlink_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %llc_testlink_time, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_llc_event_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %llc_flow_lcl = getelementptr i8, ptr %work, i32 148
  %0 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %llc_flow_lcl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %delayed_event = getelementptr i8, ptr %work, i32 164
  %2 = ptrtoint ptr %delayed_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %delayed_event, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %delayed_event to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %delayed_event, align 8
  %link = getelementptr inbounds %struct.smc_llc_qentry, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link, align 4
  %state.i = getelementptr inbounds %struct.smc_link, ptr %6, i32 0, i32 54
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %switch.i = icmp ugt i32 %8, 1
  br i1 %switch.i, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @smc_llc_event_handler(ptr noundef nonnull %3)
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %llc_event_q_lock = getelementptr i8, ptr %work, i32 -224
  tail call void @_raw_spin_lock_bh(ptr noundef %llc_event_q_lock) #15
  %llc_event_q = getelementptr i8, ptr %work, i32 -232
  %9 = ptrtoint ptr %llc_event_q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %llc_event_q, align 4
  %cmp.i.not28 = icmp eq ptr %10, %llc_event_q
  br i1 %cmp.i.not28, label %if.end5.if.end14_crit_edge, label %if.end5.if.then8_crit_edge

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  br label %if.then8

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then8:                                         ; preds = %list_del_init.exit.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %11 = phi ptr [ %21, %list_del_init.exit.if.then8_crit_edge ], [ %10, %if.end5.if.then8_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del_init.exit_crit_edge

if.then8.list_del_init.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then8.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %llc_event_q_lock) #15
  tail call fastcc void @smc_llc_event_handler(ptr noundef %11)
  tail call void @_raw_spin_lock_bh(ptr noundef %llc_event_q_lock) #15
  %20 = ptrtoint ptr %llc_event_q to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %llc_event_q, align 4
  %cmp.i.not = icmp eq ptr %21, %llc_event_q
  br i1 %cmp.i.not, label %list_del_init.exit.if.end14_crit_edge, label %list_del_init.exit.if.then8_crit_edge

list_del_init.exit.if.then8_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

list_del_init.exit.if.end14_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end14:                                         ; preds = %list_del_init.exit.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %llc_event_q_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_llc_add_link_work(ptr noundef %work) #2 align 64 {
entry:
  %pend.i.i.i = alloca ptr, align 4
  %wr_buf.i.i.i = alloca ptr, align 4
  %gidlist.i.i.i = alloca %struct.smc_gidlist, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -15796
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not = icmp eq ptr %1, %add.ptr
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %qentry1.i = getelementptr i8, ptr %work, i32 240
  %2 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qentry1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.out_crit_edge, label %if.then.i

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %qentry1.i, align 4
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %out

if.end:                                           ; preds = %entry
  %5 = getelementptr i8, ptr %work, i32 -15060
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %qentry1.i.i = getelementptr i8, ptr %work, i32 240
  %8 = ptrtoint ptr %qentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qentry1.i.i, align 4
  store ptr null, ptr %qentry1.i.i, align 4
  %llc_conf_mutex.i = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %llc_conf_mutex.i, i32 noundef 0) #15
  %msg.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %msg.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear.i.i)
  %cmp.i.i = icmp eq i8 %bf.clear.i.i, 2
  br i1 %cmp.i.i, label %for.body.i.preheader.i.i, label %if.then1.if.else.i_crit_edge

if.then1.if.else.i_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

for.body.i.preheader.i.i:                         ; preds = %if.then1
  %arrayidx.i4.i.i = getelementptr %struct.smc_llc_qentry, ptr %9, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.i4.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i5.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i5.i.i, label %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge, label %for.body.i.preheader.i.i.if.else.i_crit_edge

for.body.i.preheader.i.i.if.else.i_crit_edge:     ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge
  %i.03.i6.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw nsw i32 %i.03.i6.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 40
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.then.i15_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.then.i15_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i15

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.anon.221, ptr %msg.i, i32 0, i32 1, i32 %inc.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i.i, align 1
  %tobool.not.i.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge, label %smc_llc_is_empty_llc_message.exit.i.i

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i

smc_llc_is_empty_llc_message.exit.i.i:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %i.03.i6.i.i)
  %cmp.i.le.i.i = icmp ult i32 %i.03.i6.i.i, 39
  br i1 %cmp.i.le.i.i, label %smc_llc_is_empty_llc_message.exit.i.i.if.else.i_crit_edge, label %smc_llc_is_empty_llc_message.exit.i.i.if.then.i15_crit_edge

smc_llc_is_empty_llc_message.exit.i.i.if.then.i15_crit_edge: ; preds = %smc_llc_is_empty_llc_message.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i15

smc_llc_is_empty_llc_message.exit.i.i.if.else.i_crit_edge: ; preds = %smc_llc_is_empty_llc_message.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i15:                                      ; preds = %smc_llc_is_empty_llc_message.exit.i.i.if.then.i15_crit_edge, %for.cond.i.i.i.if.then.i15_crit_edge
  %link.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link.i, align 4
  %lgr.i.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 50
  %17 = ptrtoint ptr %lgr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lgr.i.i.i, align 4
  %smc_version.i.i = getelementptr inbounds %struct.smc_link_group, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %smc_version.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %smc_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp.i11.i = icmp eq i8 %20, 2
  br i1 %cmp.i11.i, label %if.then.i.i, label %if.end.i16.i

if.then.i.i:                                      ; preds = %if.then.i15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend.i.i.i) #15
  %21 = ptrtoint ptr %pend.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend.i.i.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf.i.i.i) #15
  %22 = ptrtoint ptr %wr_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf.i.i.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %gidlist.i.i.i) #15
  %23 = call ptr @memset(ptr %gidlist.i.i.i, i32 255, i32 33)
  %state.i.i.i.i.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 54
  %24 = ptrtoint ptr %state.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %switch.i.i.i.i.i.i = icmp ugt i32 %25, 1
  br i1 %switch.i.i.i.i.i.i, label %smc_link_sendable.exit.i.i.i.i, label %if.then.i.i.smc_llc_send_request_add_link.exit.i.i_crit_edge

if.then.i.i.smc_llc_send_request_add_link.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_request_add_link.exit.i.i

smc_link_sendable.exit.i.i.i.i:                   ; preds = %if.then.i.i
  %cur_qp_state.i.i.i.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %cur_qp_state.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_qp_state.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i.i.i.i.i = icmp eq i32 %27, 3
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i.i, label %smc_link_sendable.exit.i.i.i.i.smc_llc_send_request_add_link.exit.i.i_crit_edge

smc_link_sendable.exit.i.i.i.i.smc_llc_send_request_add_link.exit.i.i_crit_edge: ; preds = %smc_link_sendable.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_request_add_link.exit.i.i

if.end.i.i.i:                                     ; preds = %smc_link_sendable.exit.i.i.i.i
  %wr_tx_refcnt.i.i.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i.i.i, i32 1, i32 3, i32 1) #15
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i.i.i, ptr %wr_tx_refcnt.i.i.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i.i.i) #15, !srcloc !78
  %29 = ptrtoint ptr %lgr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lgr.i.i.i, align 4
  %type.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %30, i32 0, i32 21, i32 0, i32 8
  %31 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type.i.i.i, align 4
  %33 = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %switch.i.i.i = icmp eq i32 %33, 2
  br i1 %switch.i.i.i, label %if.end.i.i.i.put_out.i.i.i_crit_edge, label %if.end5.i.i.i

if.end.i.i.i.put_out.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %16, align 8
  %gid.i.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 34
  call void @smc_fill_gid_list(ptr noundef %30, ptr noundef nonnull %gidlist.i.i.i, ptr noundef %35, ptr noundef %gid.i.i.i) #15
  %36 = ptrtoint ptr %gidlist.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %gidlist.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp8.i.i.i = icmp ult i8 %37, 2
  br i1 %cmp8.i.i.i, label %if.end5.i.i.i.put_out.i.i.i_crit_edge, label %if.end11.i.i.i

if.end5.i.i.i.put_out.i.i.i_crit_edge:            ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end5.i.i.i
  %call.i.i.i.i = call i32 @smc_wr_tx_get_v2_slot(ptr noundef %16, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf.i.i.i, ptr noundef nonnull %pend.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i12.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i12.i, label %if.end14.i.i.i, label %if.end11.i.i.i.put_out.i.i.i_crit_edge

if.end11.i.i.i.put_out.i.i.i_crit_edge:           ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out.i.i.i

if.end14.i.i.i:                                   ; preds = %if.end11.i.i.i
  %38 = ptrtoint ptr %wr_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr_buf.i.i.i, align 4
  %40 = getelementptr inbounds i8, ptr %39, i32 1
  %41 = call ptr @memset(ptr %40, i32 0, i32 43)
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 5, ptr %39, align 1
  %43 = ptrtoint ptr %gidlist.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %gidlist.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp1766.not.i.i.i = icmp eq i8 %44, 0
  br i1 %cmp1766.not.i.i.i, label %if.end14.i.i.i.for.end.i.i.i_crit_edge, label %if.end14.i.i.i.for.body.i.i15.i_crit_edge

if.end14.i.i.i.for.body.i.i15.i_crit_edge:        ; preds = %if.end14.i.i.i
  br label %for.body.i.i15.i

if.end14.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

for.body.i.i15.i:                                 ; preds = %for.body.i.i15.i.for.body.i.i15.i_crit_edge, %if.end14.i.i.i.for.body.i.i15.i_crit_edge
  %i.067.i.i.i = phi i32 [ %inc.i.i14.i, %for.body.i.i15.i.for.body.i.i15.i_crit_edge ], [ 0, %if.end14.i.i.i.for.body.i.i15.i_crit_edge ]
  %arrayidx.i.i13.i = getelementptr %struct.smc_llc_msg_req_add_link_v2, ptr %39, i32 0, i32 4, i32 %i.067.i.i.i
  %arrayidx21.i.i.i = getelementptr %struct.smc_gidlist, ptr %gidlist.i.i.i, i32 0, i32 1, i32 %i.067.i.i.i
  %45 = call ptr @memcpy(ptr %arrayidx.i.i13.i, ptr %arrayidx21.i.i.i, i32 16)
  %inc.i.i14.i = add nuw nsw i32 %i.067.i.i.i, 1
  %46 = ptrtoint ptr %gidlist.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %gidlist.i.i.i, align 1
  %conv16.i.i.i = zext i8 %47 to i32
  %cmp17.i.i.i = icmp ult i32 %inc.i.i14.i, %conv16.i.i.i
  br i1 %cmp17.i.i.i, label %for.body.i.i15.i.for.body.i.i15.i_crit_edge, label %for.body.i.i15.i.for.end.i.i.i_crit_edge

for.body.i.i15.i.for.end.i.i.i_crit_edge:         ; preds = %for.body.i.i15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

for.body.i.i15.i.for.body.i.i15.i_crit_edge:      ; preds = %for.body.i.i15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i15.i

for.end.i.i.i:                                    ; preds = %for.body.i.i15.i.for.end.i.i.i_crit_edge, %if.end14.i.i.i.for.end.i.i.i_crit_edge
  %.lcssa64.i.i.i = phi i8 [ 0, %if.end14.i.i.i.for.end.i.i.i_crit_edge ], [ %47, %for.body.i.i15.i.for.end.i.i.i_crit_edge ]
  %conv16.le.i.i.i = zext i8 %.lcssa64.i.i.i to i32
  %gid_cnt.i.i.i = getelementptr inbounds %struct.smc_llc_msg_req_add_link_v2, ptr %39, i32 0, i32 2
  %48 = ptrtoint ptr %gid_cnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.lcssa64.i.i.i, ptr %gid_cnt.i.i.i, align 1
  %mul.i.i.i = shl nuw nsw i32 %conv16.le.i.i.i, 4
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 28
  %49 = ptrtoint ptr %lgr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lgr.i.i.i, align 4
  %smc_version.i.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %50, i32 0, i32 16
  %51 = ptrtoint ptr %smc_version.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %smc_version.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %cmp.i.i.i.i = icmp eq i8 %52, 2
  %53 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i.i.i.i = load i8, ptr %39, align 1
  %bf.clear.i.i.i.i = and i8 %bf.load.i.i.i.i, 15
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set.i.i.i.i = or i8 %bf.clear.i.i.i.i, 32
  %54 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %bf.set.i.i.i.i, ptr %39, align 1
  %conv2.i.i.i.i = trunc i32 %add.i.i.i to i16
  %55 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %conv2.i.i.i.i, ptr %40, align 1
  br label %smc_llc_init_msg_hdr.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %bf.clear.i.i.i.i, ptr %39, align 1
  %conv7.i.i.i.i = trunc i32 %add.i.i.i to i8
  %57 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv7.i.i.i.i, ptr %40, align 1
  br label %smc_llc_init_msg_hdr.exit.i.i.i

smc_llc_init_msg_hdr.exit.i.i.i:                  ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %58 = ptrtoint ptr %pend.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pend.i.i.i, align 4
  %call28.i.i.i = call i32 @smc_wr_tx_v2_send(ptr noundef %16, ptr noundef %59, i32 noundef %add.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %call28.i.i.i, 0
  br i1 %tobool29.not.i.i.i, label %if.then30.i.i.i, label %smc_llc_init_msg_hdr.exit.i.i.i.put_out.i.i.i_crit_edge

smc_llc_init_msg_hdr.exit.i.i.i.put_out.i.i.i_crit_edge: ; preds = %smc_llc_init_msg_hdr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out.i.i.i

if.then30.i.i.i:                                  ; preds = %smc_llc_init_msg_hdr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %lgr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lgr.i.i.i, align 4
  %llc_flow_lcl.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %61, i32 0, i32 21, i32 0, i32 18
  %62 = ptrtoint ptr %llc_flow_lcl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 5, ptr %llc_flow_lcl.i.i.i, align 8
  br label %put_out.i.i.i

put_out.i.i.i:                                    ; preds = %if.then30.i.i.i, %smc_llc_init_msg_hdr.exit.i.i.i.put_out.i.i.i_crit_edge, %if.end11.i.i.i.put_out.i.i.i_crit_edge, %if.end5.i.i.i.put_out.i.i.i_crit_edge, %if.end.i.i.i.put_out.i.i.i_crit_edge
  %call.i.i.i61.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i.i.i, i32 1, i32 3, i32 1) #15
  %63 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i.i.i, ptr %wr_tx_refcnt.i.i.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i.i.i) #15, !srcloc !80
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %63, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i62.i.i.i, label %put_out.i.i.i.smc_llc_send_request_add_link.exit.i.i_crit_edge

put_out.i.i.i.smc_llc_send_request_add_link.exit.i.i_crit_edge: ; preds = %put_out.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_request_add_link.exit.i.i

if.then.i62.i.i.i:                                ; preds = %put_out.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %wr_tx_wait.i.i.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i.i.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %smc_llc_send_request_add_link.exit.i.i

smc_llc_send_request_add_link.exit.i.i:           ; preds = %if.then.i62.i.i.i, %put_out.i.i.i.smc_llc_send_request_add_link.exit.i.i_crit_edge, %smc_link_sendable.exit.i.i.i.i.smc_llc_send_request_add_link.exit.i.i_crit_edge, %if.then.i.i.smc_llc_send_request_add_link.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %gidlist.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend.i.i.i) #15
  br label %smc_llc_cli_add_link_invite.exit.i

if.end.i16.i:                                     ; preds = %if.then.i15
  %type.i.i = getelementptr inbounds %struct.smc_link_group, ptr %18, i32 0, i32 21, i32 0, i32 8
  %64 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type.i.i, align 4
  %66 = and i32 %65, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %switch.i.i = icmp eq i32 %66, 2
  br i1 %switch.i.i, label %if.end.i16.i.smc_llc_cli_add_link_invite.exit.i_crit_edge, label %if.end8.i.i

if.end.i16.i.smc_llc_cli_add_link_invite.exit.i_crit_edge: ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_cli_add_link_invite.exit.i

if.end8.i.i:                                      ; preds = %if.end.i16.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 320) #19
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.smc_llc_cli_add_link_invite.exit.i_crit_edge, label %if.end11.i.i

if.end8.i.i.smc_llc_cli_add_link_invite.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_cli_add_link_invite.exit.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %vlan_id.i.i = getelementptr inbounds %struct.smc_link_group, ptr %18, i32 0, i32 4
  %68 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vlan_id.i.i, align 4
  %vlan_id12.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %vlan_id12.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %vlan_id12.i.i, align 2
  %71 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %16, align 8
  tail call void @smc_pnet_find_alt_roce(ptr noundef %18, ptr noundef nonnull %call7.i.i.i.i, ptr noundef %72) #15
  %ib_dev.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i.i.i, i32 0, i32 13
  %73 = ptrtoint ptr %ib_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ib_dev.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %74, null
  br i1 %tobool13.not.i.i, label %if.end11.i.i.smc_llc_cli_add_link_invite.exit.i_crit_edge, label %if.end15.i.i

if.end11.i.i.smc_llc_cli_add_link_invite.exit.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_cli_add_link_invite.exit.i

if.end15.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ib_port.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i.i.i, i32 0, i32 15
  %75 = ptrtoint ptr %ib_port.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ib_port.i.i, align 8
  %conv17.i.i = zext i8 %76 to i32
  %sub.i.i = add nsw i32 %conv17.i.i, -1
  %arrayidx.i.i = getelementptr %struct.smc_ib_device, ptr %74, i32 0, i32 8, i32 %sub.i.i
  %ib_gid.i.i = getelementptr inbounds %struct.smc_init_info, ptr %call7.i.i.i.i, i32 0, i32 14
  %call19.i.i = tail call i32 @smc_llc_send_add_link(ptr noundef %16, ptr noundef %arrayidx.i.i, ptr noundef %ib_gid.i.i, ptr noundef null, i32 noundef 0) #15
  br label %smc_llc_cli_add_link_invite.exit.i

smc_llc_cli_add_link_invite.exit.i:               ; preds = %if.end15.i.i, %if.end11.i.i.smc_llc_cli_add_link_invite.exit.i_crit_edge, %if.end8.i.i.smc_llc_cli_add_link_invite.exit.i_crit_edge, %if.end.i16.i.smc_llc_cli_add_link_invite.exit.i_crit_edge, %smc_llc_send_request_add_link.exit.i.i
  %ini.0.i.i = phi ptr [ null, %smc_llc_send_request_add_link.exit.i.i ], [ %call7.i.i.i.i, %if.end15.i.i ], [ %call7.i.i.i.i, %if.end11.i.i.smc_llc_cli_add_link_invite.exit.i_crit_edge ], [ null, %if.end8.i.i.smc_llc_cli_add_link_invite.exit.i_crit_edge ], [ null, %if.end.i16.i.smc_llc_cli_add_link_invite.exit.i_crit_edge ]
  call void @kfree(ptr noundef %ini.0.i.i) #15
  call void @kfree(ptr noundef %9) #15
  br label %smc_llc_process_cli_add_link.exit

if.else.i:                                        ; preds = %smc_llc_is_empty_llc_message.exit.i.i.if.else.i_crit_edge, %for.body.i.preheader.i.i.if.else.i_crit_edge, %if.then1.if.else.i_crit_edge
  %link2.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %9, i32 0, i32 1
  %77 = ptrtoint ptr %link2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %link2.i, align 4
  %call3.i = tail call i32 @smc_llc_cli_add_link(ptr noundef %78, ptr noundef %9) #15
  br label %smc_llc_process_cli_add_link.exit

smc_llc_process_cli_add_link.exit:                ; preds = %if.else.i, %smc_llc_cli_add_link_invite.exit.i
  call void @mutex_unlock(ptr noundef %llc_conf_mutex.i) #15
  br label %out

if.else:                                          ; preds = %if.end
  %llc_flow_lcl.i = getelementptr i8, ptr %work, i32 236
  %qentry.i = getelementptr i8, ptr %work, i32 240
  %79 = ptrtoint ptr %qentry.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %qentry.i, align 4
  %link1.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %link1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %link1.i, align 4
  store ptr null, ptr %qentry.i, align 4
  %llc_conf_mutex.i16 = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %llc_conf_mutex.i16, i32 noundef 0) #15
  %call4.i = tail call i32 @smc_llc_srv_add_link(ptr noundef %82, ptr noundef %80) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i17 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i, label %if.else.smc_llc_process_srv_add_link.exit_crit_edge

if.else.smc_llc_process_srv_add_link.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_process_srv_add_link.exit

land.lhs.true.i:                                  ; preds = %if.else
  %type.i = getelementptr i8, ptr %work, i32 -168
  %83 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp.i18 = icmp eq i32 %84, 2
  br i1 %cmp.i18, label %if.then.i20, label %land.lhs.true.i.smc_llc_process_srv_add_link.exit_crit_edge

land.lhs.true.i.smc_llc_process_srv_add_link.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_process_srv_add_link.exit

if.then.i20:                                      ; preds = %land.lhs.true.i
  %call.i.i = tail call fastcc ptr @smc_llc_find_asym_link(ptr noundef %add.ptr) #15
  %tobool.not.i.i19 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i19, label %if.then.i20.smc_llc_process_srv_add_link.exit_crit_edge, label %if.end.i.i

if.then.i20.smc_llc_process_srv_add_link.exit_crit_edge: ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_process_srv_add_link.exit

if.end.i.i:                                       ; preds = %if.then.i20
  %state.i.i = getelementptr inbounds %struct.smc_link, ptr %call.i.i, i32 0, i32 54
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %state.i.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end.i.i
  %85 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i.i, i32 3, i32 1) #15, !srcloc !83
  %asmresult.i.i.i = extractvalue { i32, i32 } %85, 0
  %tobool.not.i.i.i21 = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i21, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %85, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i.i.i)
  %cmp.i.i22 = icmp eq i32 %asmresult1.i.i.i, 3
  br i1 %cmp.i.i22, label %if.end17.i.i, label %__cmpxchg.exit.i.i.smc_llc_process_srv_add_link.exit_crit_edge

__cmpxchg.exit.i.i.smc_llc_process_srv_add_link.exit_crit_edge: ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_process_srv_add_link.exit

if.end17.i.i:                                     ; preds = %__cmpxchg.exit.i.i
  %call18.i.i = tail call ptr @smc_switch_conns(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i, i1 noundef zeroext false) #15
  tail call void @smc_wr_tx_wait_no_pending_sends(ptr noundef nonnull %call.i.i) #15
  %tobool19.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool19.not.i.i, label %if.end17.i.i.out_free.i.i_crit_edge, label %if.end21.i.i

if.end17.i.i.out_free.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free.i.i

if.end21.i.i:                                     ; preds = %if.end17.i.i
  %86 = ptrtoint ptr %llc_flow_lcl.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4, ptr %llc_flow_lcl.i, align 8
  %link_id.i.i = getelementptr inbounds %struct.smc_link, ptr %call.i.i, i32 0, i32 43
  %87 = ptrtoint ptr %link_id.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %link_id.i.i, align 2
  %call22.i.i = tail call i32 @smc_llc_send_delete_link(ptr noundef nonnull %call18.i.i, i8 noundef zeroext %88, i32 noundef 0, i1 noundef zeroext true, i32 noundef 327680) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smcr_link_down_cond(ptr noundef nonnull %call18.i.i) #15
  br label %out_free.i.i

if.end25.i.i:                                     ; preds = %if.end21.i.i
  %call26.i.i = tail call ptr @smc_llc_wait(ptr noundef %add.ptr, ptr noundef nonnull %call18.i.i, i32 noundef 200, i8 noundef zeroext 4) #15
  %tobool27.not.i.i = icmp eq ptr %call26.i.i, null
  br i1 %tobool27.not.i.i, label %if.then28.i.i, label %if.end29.i.i

if.then28.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smcr_link_down_cond(ptr noundef nonnull %call18.i.i) #15
  br label %out_free.i.i

if.end29.i.i:                                     ; preds = %if.end25.i.i
  %89 = ptrtoint ptr %qentry.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %qentry.i, align 4
  %tobool.not.i48.i.i = icmp eq ptr %90, null
  br i1 %tobool.not.i48.i.i, label %if.end29.i.i.out_free.i.i_crit_edge, label %if.then.i.i.i

if.end29.i.i.out_free.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free.i.i

if.then.i.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %qentry.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %qentry.i, align 4
  tail call void @kfree(ptr noundef nonnull %90) #15
  br label %out_free.i.i

out_free.i.i:                                     ; preds = %if.then.i.i.i, %if.end29.i.i.out_free.i.i_crit_edge, %if.then28.i.i, %if.then24.i.i, %if.end17.i.i.out_free.i.i_crit_edge
  tail call void @smcr_link_clear(ptr noundef nonnull %call.i.i, i1 noundef zeroext true) #15
  br label %smc_llc_process_srv_add_link.exit

smc_llc_process_srv_add_link.exit:                ; preds = %out_free.i.i, %__cmpxchg.exit.i.i.smc_llc_process_srv_add_link.exit_crit_edge, %if.then.i20.smc_llc_process_srv_add_link.exit_crit_edge, %land.lhs.true.i.smc_llc_process_srv_add_link.exit_crit_edge, %if.else.smc_llc_process_srv_add_link.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %llc_conf_mutex.i16) #15
  tail call void @kfree(ptr noundef %80) #15
  br label %out

out:                                              ; preds = %smc_llc_process_srv_add_link.exit, %smc_llc_process_cli_add_link.exit, %if.then.i, %if.then.out_crit_edge
  %llc_flow_lcl3 = getelementptr i8, ptr %work, i32 236
  %92 = ptrtoint ptr %llc_flow_lcl3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %llc_flow_lcl3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %93)
  %cmp4.not = icmp eq i32 %93, 5
  br i1 %cmp4.not, label %out.if.end7_crit_edge, label %if.then5

out.if.end7_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %out
  %llc_flow_lock.i = getelementptr i8, ptr %work, i32 256
  call void @_raw_spin_lock_bh(ptr noundef %llc_flow_lock.i) #15
  %94 = ptrtoint ptr %llc_flow_lcl3 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 8)
  store i64 0, ptr %llc_flow_lcl3, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %llc_flow_lock.i) #15
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not.i = icmp eq ptr %96, %add.ptr
  br i1 %cmp.i.not.i, label %if.then5.if.else.i27_crit_edge, label %land.lhs.true.i24

if.then5.if.else.i27_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i27

land.lhs.true.i24:                                ; preds = %if.then5
  %delayed_event.i = getelementptr i8, ptr %work, i32 252
  %97 = ptrtoint ptr %delayed_event.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %delayed_event.i, align 8
  %tobool2.not.i.not = icmp eq ptr %98, null
  br i1 %tobool2.not.i.not, label %land.lhs.true.i24.if.else.i27_crit_edge, label %if.then.i26

land.lhs.true.i24.if.else.i27_crit_edge:          ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i27

if.then.i26:                                      ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #17
  %llc_event_work.i = getelementptr i8, ptr %work, i32 88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %99 = load ptr, ptr @system_wq, align 4
  %call.i.i.i25 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %99, ptr noundef %llc_event_work.i) #15
  br label %if.end7

if.else.i27:                                      ; preds = %land.lhs.true.i24.if.else.i27_crit_edge, %if.then5.if.else.i27_crit_edge
  %llc_flow_waiter.i = getelementptr i8, ptr %work, i32 132
  call void @__wake_up(ptr noundef %llc_flow_waiter.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end7

if.end7:                                          ; preds = %if.else.i27, %if.then.i26, %out.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_llc_delete_link_work(ptr noundef %work) #2 align 64 {
entry:
  %add_llc.i.i = alloca %struct.smc_llc_msg_add_link, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -15840
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not = icmp eq ptr %1, %add.ptr
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %qentry1.i = getelementptr i8, ptr %work, i32 196
  %2 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qentry1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.out_crit_edge, label %if.then.i

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %qentry1.i, align 4
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %out

if.end:                                           ; preds = %entry
  %5 = getelementptr i8, ptr %work, i32 -15104
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %qentry1.i.i = getelementptr i8, ptr %work, i32 196
  %8 = ptrtoint ptr %qentry1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qentry1.i.i, align 4
  store ptr null, ptr %qentry1.i.i, align 4
  %link.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link.i, align 4
  %msg.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %9, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %9, i32 0, i32 2, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 1
  %14 = and i8 %13, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i10 = icmp eq i8 %14, 0
  br i1 %tobool.not.i10, label %if.end.i, label %if.then.i11

if.then.i11:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_lgr_terminate_sched(ptr noundef %add.ptr) #15
  br label %smc_llc_process_cli_delete_link.exit

if.end.i:                                         ; preds = %if.then1
  %llc_conf_mutex.i = getelementptr i8, ptr %work, i32 -136
  tail call void @mutex_lock_nested(ptr noundef %llc_conf_mutex.i, i32 noundef 0) #15
  %link_num.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %9, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %link_num.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %link_num.i, align 1
  %link_id.i = getelementptr i8, ptr %work, i32 -14534
  %17 = ptrtoint ptr %link_id.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_id.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %16)
  %cmp5.not.i = icmp eq i8 %18, %16
  br i1 %cmp5.not.i, label %if.end.i.for.end.i_crit_edge, label %for.inc.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end.i
  %link_id.1.i = getelementptr i8, ptr %work, i32 -13670
  %19 = ptrtoint ptr %link_id.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %link_id.1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %16)
  %cmp5.not.1.i = icmp eq i8 %20, %16
  br i1 %cmp5.not.1.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.1.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %link_id.2.i = getelementptr i8, ptr %work, i32 -12806
  %21 = ptrtoint ptr %link_id.2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %link_id.2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %16)
  %cmp5.not.2.i = icmp eq i8 %22, %16
  br i1 %cmp5.not.2.i, label %for.inc.1.i.for.end.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 1
  %25 = or i8 %24, -128
  store i8 %25, ptr %flags.i, align 1
  br label %if.then16.i

for.end.i:                                        ; preds = %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %lnk_idx.090.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.smc_link_group, ptr %add.ptr, i32 0, i32 21, i32 0, i32 1, i32 %lnk_idx.090.lcssa.i
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags.i, align 1
  %28 = or i8 %27, -128
  store i8 %28, ptr %flags.i, align 1
  %tobool15.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool15.not.i, label %for.end.i.if.then16.i_crit_edge, label %if.end19.i

for.end.i.if.then16.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16.i

if.then16.i:                                      ; preds = %for.end.i.if.then16.i_crit_edge, %for.inc.2.i
  %reason.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %9, i32 0, i32 2, i32 0, i32 2
  %29 = ptrtoint ptr %reason.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 1048576, ptr %reason.i, align 1
  %call18.i = tail call fastcc i32 @smc_llc_send_message(ptr noundef %11, ptr noundef %msg.i) #15
  br label %out_unlock.i

if.end19.i:                                       ; preds = %for.end.i
  %call20.i = tail call fastcc ptr @smc_llc_find_asym_link(ptr noundef %add.ptr) #15
  %reason21.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %9, i32 0, i32 2, i32 0, i32 2
  %30 = ptrtoint ptr %reason21.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %reason21.i, align 1
  %call23.i = tail call fastcc i32 @smc_llc_send_message(ptr noundef %11, ptr noundef %msg.i) #15
  %state.i = getelementptr %struct.smc_link_group, ptr %add.ptr, i32 0, i32 21, i32 0, i32 1, i32 %lnk_idx.090.lcssa.i, i32 54
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end19.i
  %31 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i, i32 3, i32 1) #15, !srcloc !83
  %asmresult.i.i = extractvalue { i32, i32 } %31, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %31, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i.i)
  %cmp39.i = icmp eq i32 %asmresult1.i.i, 3
  br i1 %cmp39.i, label %if.then41.i, label %__cmpxchg.exit.i.if.end43.i_crit_edge

__cmpxchg.exit.i.if.end43.i_crit_edge:            ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.i

if.then41.i:                                      ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call42.i = tail call ptr @smc_switch_conns(ptr noundef %add.ptr, ptr noundef nonnull %arrayidx.i, i1 noundef zeroext false) #15
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %__cmpxchg.exit.i.if.end43.i_crit_edge
  tail call void @smcr_link_clear(ptr noundef nonnull %arrayidx.i, i1 noundef zeroext true) #15
  %cmp45.i = icmp eq ptr %arrayidx.i, %call20.i
  br i1 %cmp45.i, label %if.end43.i.out_unlock.i_crit_edge, label %if.else.i

if.end43.i.out_unlock.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.i

if.else.i:                                        ; preds = %if.end43.i
  %state.i.i.i = getelementptr i8, ptr %work, i32 -14400
  %32 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i.i.i = icmp eq i32 %33, 3
  %inc.i.i = zext i1 %cmp.i.i.i to i32
  %state.i.1.i.i = getelementptr i8, ptr %work, i32 -13536
  %34 = ptrtoint ptr %state.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i.1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.i.1.i.i = icmp eq i32 %35, 3
  %inc.1.i.i = zext i1 %cmp.i.1.i.i to i32
  %spec.select.1.i.i = add nuw nsw i32 %inc.1.i.i, %inc.i.i
  %state.i.2.i.i = getelementptr i8, ptr %work, i32 -12672
  %36 = ptrtoint ptr %state.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state.i.2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.i.2.i.i = icmp eq i32 %37, 3
  %inc.2.i.i = zext i1 %cmp.i.2.i.i to i32
  %spec.select.2.i.i = add nuw nsw i32 %spec.select.1.i.i, %inc.2.i.i
  %38 = zext i32 %spec.select.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %spec.select.2.i.i, label %if.else.i.out_unlock.i_crit_edge [
    i32 1, label %if.then50.i
    i32 0, label %if.then53.i
  ]

if.else.i.out_unlock.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.i

if.then50.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smcr_lgr_set_type(ptr noundef %add.ptr, i32 noundef 1) #15
  br label %out_unlock.i

if.then53.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smcr_lgr_set_type(ptr noundef %add.ptr, i32 noundef 0) #15
  tail call void @smc_lgr_terminate_sched(ptr noundef %add.ptr) #15
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.then53.i, %if.then50.i, %if.else.i.out_unlock.i_crit_edge, %if.end43.i.out_unlock.i_crit_edge, %if.then16.i
  tail call void @mutex_unlock(ptr noundef %llc_conf_mutex.i) #15
  br label %smc_llc_process_cli_delete_link.exit

smc_llc_process_cli_delete_link.exit:             ; preds = %out_unlock.i, %if.then.i11
  tail call void @kfree(ptr noundef %9) #15
  br label %out

if.else:                                          ; preds = %if.end
  %llc_conf_mutex.i12 = getelementptr i8, ptr %work, i32 -136
  tail call void @mutex_lock_nested(ptr noundef %llc_conf_mutex.i12, i32 noundef 0) #15
  %qentry1.i.i13 = getelementptr i8, ptr %work, i32 196
  %39 = ptrtoint ptr %qentry1.i.i13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %qentry1.i.i13, align 4
  store ptr null, ptr %qentry1.i.i13, align 4
  %link.i14 = getelementptr inbounds %struct.smc_llc_qentry, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %link.i14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %link.i14, align 4
  %msg.i15 = getelementptr inbounds %struct.smc_llc_qentry, ptr %40, i32 0, i32 2
  %flags.i16 = getelementptr inbounds %struct.smc_llc_qentry, ptr %40, i32 0, i32 2, i32 0, i32 0, i32 2
  %43 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flags.i16, align 1
  %45 = and i8 %44, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i17 = icmp eq i8 %45, 0
  br i1 %tobool.not.i17, label %for.cond.preheader.i, label %if.then.i21

for.cond.preheader.i:                             ; preds = %if.else
  %link_num.i18 = getelementptr inbounds %struct.smc_llc_qentry, ptr %40, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %link_num.i18 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %link_num.i18, align 1
  %link_id.i19 = getelementptr i8, ptr %work, i32 -14534
  %48 = ptrtoint ptr %link_id.i19 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %link_id.i19, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %47)
  %cmp7.i = icmp eq i8 %49, %47
  br i1 %cmp7.i, label %for.cond.preheader.i.for.end.i27_crit_edge, label %for.inc.i23

for.cond.preheader.i.for.end.i27_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i27

if.then.i21:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %reason.i20 = getelementptr inbounds %struct.smc_llc_qentry, ptr %40, i32 0, i32 2, i32 0, i32 2
  %50 = ptrtoint ptr %reason.i20 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %reason.i20, align 1
  tail call void @smc_llc_send_link_delete_all(ptr noundef %add.ptr, i1 noundef zeroext true, i32 noundef %51) #15
  tail call void @smc_lgr_terminate_sched(ptr noundef %add.ptr) #15
  br label %smc_llc_process_srv_delete_link.exit

for.inc.i23:                                      ; preds = %for.cond.preheader.i
  %link_id.1.i22 = getelementptr i8, ptr %work, i32 -13670
  %52 = ptrtoint ptr %link_id.1.i22 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %link_id.1.i22, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %47)
  %cmp7.1.i = icmp eq i8 %53, %47
  br i1 %cmp7.1.i, label %for.inc.i23.for.end.i27_crit_edge, label %for.inc.1.i25

for.inc.i23.for.end.i27_crit_edge:                ; preds = %for.inc.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i27

for.inc.1.i25:                                    ; preds = %for.inc.i23
  %link_id.2.i24 = getelementptr i8, ptr %work, i32 -12806
  %54 = ptrtoint ptr %link_id.2.i24 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %link_id.2.i24, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %47)
  %cmp7.2.i = icmp eq i8 %55, %47
  br i1 %cmp7.2.i, label %for.inc.1.i25.for.end.i27_crit_edge, label %for.inc.1.i25.smc_llc_process_srv_delete_link.exit_crit_edge

for.inc.1.i25.smc_llc_process_srv_delete_link.exit_crit_edge: ; preds = %for.inc.1.i25
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_process_srv_delete_link.exit

for.inc.1.i25.for.end.i27_crit_edge:              ; preds = %for.inc.1.i25
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i27

for.end.i27:                                      ; preds = %for.inc.1.i25.for.end.i27_crit_edge, %for.inc.i23.for.end.i27_crit_edge, %for.cond.preheader.i.for.end.i27_crit_edge
  %i.0109.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i27_crit_edge ], [ 1, %for.inc.i23.for.end.i27_crit_edge ], [ 2, %for.inc.1.i25.for.end.i27_crit_edge ]
  %arrayidx.i26 = getelementptr %struct.smc_link_group, ptr %add.ptr, i32 0, i32 21, i32 0, i32 1, i32 %i.0109.lcssa.i
  %tobool13.not.i = icmp eq ptr %arrayidx.i26, null
  br i1 %tobool13.not.i, label %for.end.i27.smc_llc_process_srv_delete_link.exit_crit_edge, label %if.end15.i

for.end.i27.smc_llc_process_srv_delete_link.exit_crit_edge: ; preds = %for.end.i27
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_process_srv_delete_link.exit

if.end15.i:                                       ; preds = %for.end.i27
  %state.i28 = getelementptr %struct.smc_link_group, ptr %add.ptr, i32 0, i32 21, i32 0, i32 1, i32 %i.0109.lcssa.i, i32 54
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i28, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %state.i28, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i32

do.body.i.i32:                                    ; preds = %do.body.i.i32.do.body.i.i32_crit_edge, %if.end15.i
  %56 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i28, i32 3, i32 1) #15, !srcloc !83
  %asmresult.i.i30 = extractvalue { i32, i32 } %56, 0
  %tobool.not.i.i31 = icmp eq i32 %asmresult.i.i30, 0
  br i1 %tobool.not.i.i31, label %__cmpxchg.exit.i34, label %do.body.i.i32.do.body.i.i32_crit_edge

do.body.i.i32.do.body.i.i32_crit_edge:            ; preds = %do.body.i.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i32

__cmpxchg.exit.i34:                               ; preds = %do.body.i.i32
  %asmresult1.i.i33 = extractvalue { i32, i32 } %56, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult1.i.i33)
  %cmp31.i = icmp eq i32 %asmresult1.i.i33, 3
  br i1 %cmp31.i, label %if.then33.i, label %__cmpxchg.exit.i34.if.end38.i_crit_edge

__cmpxchg.exit.i34.if.end38.i_crit_edge:          ; preds = %__cmpxchg.exit.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38.i

if.then33.i:                                      ; preds = %__cmpxchg.exit.i34
  %call34.i = tail call ptr @smc_switch_conns(ptr noundef %add.ptr, ptr noundef nonnull %arrayidx.i26, i1 noundef zeroext false) #15
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %if.then33.i.if.end38.i_crit_edge, label %if.then36.i

if.then33.i.if.end38.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38.i

if.then36.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_wr_tx_wait_no_pending_sends(ptr noundef nonnull %arrayidx.i26) #15
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %if.then33.i.if.end38.i_crit_edge, %__cmpxchg.exit.i34.if.end38.i_crit_edge
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not.i = icmp eq ptr %58, %add.ptr
  br i1 %cmp.i.not.i, label %if.end38.i.if.end52.i_crit_edge, label %if.then41.i35

if.end38.i.if.end52.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.i

if.then41.i35:                                    ; preds = %if.end38.i
  %call43.i = tail call fastcc i32 @smc_llc_send_message(ptr noundef %42, ptr noundef %msg.i15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.then41.i35.if.end52.i_crit_edge

if.then41.i35.if.end52.i_crit_edge:               ; preds = %if.then41.i35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.i

if.then45.i:                                      ; preds = %if.then41.i35
  %call46.i = tail call ptr @smc_llc_wait(ptr noundef %add.ptr, ptr noundef %42, i32 noundef 200, i8 noundef zeroext 4) #15
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %if.then45.i.if.end52.i_crit_edge, label %if.then48.i

if.then45.i.if.end52.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.i

if.then48.i:                                      ; preds = %if.then45.i
  %59 = ptrtoint ptr %qentry1.i.i13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %qentry1.i.i13, align 4
  %tobool.not.i102.i = icmp eq ptr %60, null
  br i1 %tobool.not.i102.i, label %if.then48.i.if.end52.i_crit_edge, label %if.then.i.i

if.then48.i.if.end52.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.i

if.then.i.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %qentry1.i.i13 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %qentry1.i.i13, align 4
  tail call void @kfree(ptr noundef nonnull %60) #15
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then.i.i, %if.then48.i.if.end52.i_crit_edge, %if.then45.i.if.end52.i_crit_edge, %if.then41.i35.if.end52.i_crit_edge, %if.end38.i.if.end52.i_crit_edge
  tail call void @smcr_link_clear(ptr noundef nonnull %arrayidx.i26, i1 noundef zeroext true) #15
  %state.i.i.i36 = getelementptr i8, ptr %work, i32 -14400
  %62 = ptrtoint ptr %state.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state.i.i.i36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp.i.i.i37 = icmp eq i32 %63, 3
  %inc.i.i38 = zext i1 %cmp.i.i.i37 to i32
  %state.i.1.i.i39 = getelementptr i8, ptr %work, i32 -13536
  %64 = ptrtoint ptr %state.i.1.i.i39 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state.i.1.i.i39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp.i.1.i.i40 = icmp eq i32 %65, 3
  %inc.1.i.i41 = zext i1 %cmp.i.1.i.i40 to i32
  %spec.select.1.i.i42 = add nuw nsw i32 %inc.1.i.i41, %inc.i.i38
  %state.i.2.i.i43 = getelementptr i8, ptr %work, i32 -12672
  %66 = ptrtoint ptr %state.i.2.i.i43 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %state.i.2.i.i43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp.i.2.i.i44 = icmp eq i32 %67, 3
  %inc.2.i.i45 = zext i1 %cmp.i.2.i.i44 to i32
  %spec.select.2.i.i46 = add nuw nsw i32 %spec.select.1.i.i42, %inc.2.i.i45
  %68 = zext i32 %spec.select.2.i.i46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %spec.select.2.i.i46, label %if.end52.i.if.end60.i_crit_edge [
    i32 1, label %if.then56.i
    i32 0, label %if.then58.i
  ]

if.end52.i.if.end60.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smcr_lgr_set_type(ptr noundef %add.ptr, i32 noundef 1) #15
  br label %if.end60.i

if.then58.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smcr_lgr_set_type(ptr noundef %add.ptr, i32 noundef 0) #15
  tail call void @smc_lgr_terminate_sched(ptr noundef %add.ptr) #15
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then58.i, %if.then56.i, %if.end52.i.if.end60.i_crit_edge
  %type.i = getelementptr i8, ptr %work, i32 -212
  %69 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp61.i = icmp eq i32 %70, 1
  br i1 %cmp61.i, label %land.lhs.true.i, label %if.end60.i.smc_llc_process_srv_delete_link.exit_crit_edge

if.end60.i.smc_llc_process_srv_delete_link.exit_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_process_srv_delete_link.exit

land.lhs.true.i:                                  ; preds = %if.end60.i
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i103.not.i = icmp eq ptr %72, %add.ptr
  br i1 %cmp.i103.not.i, label %land.lhs.true.i.smc_llc_process_srv_delete_link.exit_crit_edge, label %if.then66.i

land.lhs.true.i.smc_llc_process_srv_delete_link.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_process_srv_delete_link.exit

if.then66.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %add_llc.i.i) #15
  %73 = call ptr @memset(ptr %add_llc.i.i, i32 0, i32 44)
  %lgr.i.i = getelementptr inbounds %struct.smc_link, ptr %42, i32 0, i32 50
  %74 = ptrtoint ptr %lgr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lgr.i.i, align 4
  %smc_version.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %75, i32 0, i32 16
  %76 = ptrtoint ptr %smc_version.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %smc_version.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %cmp.i.i105.i = icmp eq i8 %77, 2
  br i1 %cmp.i.i105.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %add_llc.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 34, ptr %add_llc.i.i, align 1
  %79 = getelementptr inbounds %struct.smc_llc_hdr, ptr %add_llc.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 44, ptr %79, align 1
  br label %smc_llc_add_link_local.exit.i

if.else.i.i.i:                                    ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #17
  %81 = ptrtoint ptr %add_llc.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %add_llc.i.i, align 1
  %82 = getelementptr inbounds %struct.smc_llc_hdr, ptr %add_llc.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 44, ptr %82, align 1
  br label %smc_llc_add_link_local.exit.i

smc_llc_add_link_local.exit.i:                    ; preds = %if.else.i.i.i, %if.then.i.i.i
  call fastcc void @smc_llc_enqueue(ptr noundef %42, ptr noundef nonnull %add_llc.i.i) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %add_llc.i.i) #15
  br label %smc_llc_process_srv_delete_link.exit

smc_llc_process_srv_delete_link.exit:             ; preds = %smc_llc_add_link_local.exit.i, %land.lhs.true.i.smc_llc_process_srv_delete_link.exit_crit_edge, %if.end60.i.smc_llc_process_srv_delete_link.exit_crit_edge, %for.end.i27.smc_llc_process_srv_delete_link.exit_crit_edge, %for.inc.1.i25.smc_llc_process_srv_delete_link.exit_crit_edge, %if.then.i21
  tail call void @mutex_unlock(ptr noundef %llc_conf_mutex.i12) #15
  tail call void @kfree(ptr noundef %40) #15
  br label %out

out:                                              ; preds = %smc_llc_process_srv_delete_link.exit, %smc_llc_process_cli_delete_link.exit, %if.then.i, %if.then.out_crit_edge
  %llc_flow_lcl3 = getelementptr i8, ptr %work, i32 192
  %llc_flow_lock.i = getelementptr i8, ptr %work, i32 212
  tail call void @_raw_spin_lock_bh(ptr noundef %llc_flow_lock.i) #15
  %84 = ptrtoint ptr %llc_flow_lcl3 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 0, ptr %llc_flow_lcl3, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %llc_flow_lock.i) #15
  %85 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not.i47 = icmp eq ptr %86, %add.ptr
  br i1 %cmp.i.not.i47, label %out.if.else.i50_crit_edge, label %land.lhs.true.i48

out.if.else.i50_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i50

land.lhs.true.i48:                                ; preds = %out
  %delayed_event.i = getelementptr i8, ptr %work, i32 208
  %87 = ptrtoint ptr %delayed_event.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %delayed_event.i, align 8
  %tobool2.not.i.not = icmp eq ptr %88, null
  br i1 %tobool2.not.i.not, label %land.lhs.true.i48.if.else.i50_crit_edge, label %if.then.i49

land.lhs.true.i48.if.else.i50_crit_edge:          ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i50

if.then.i49:                                      ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #17
  %llc_event_work.i = getelementptr i8, ptr %work, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %89 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %89, ptr noundef %llc_event_work.i) #15
  br label %smc_llc_flow_stop.exit

if.else.i50:                                      ; preds = %land.lhs.true.i48.if.else.i50_crit_edge, %out.if.else.i50_crit_edge
  %llc_flow_waiter.i = getelementptr i8, ptr %work, i32 88
  tail call void @__wake_up(ptr noundef %llc_flow_waiter.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %smc_llc_flow_stop.exit

smc_llc_flow_stop.exit:                           ; preds = %if.else.i50, %if.then.i49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_llc_lgr_clear(ptr noundef %lgr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %llc_event_q_lock.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %llc_event_q_lock.i) #15
  %llc_event_q.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 10
  %0 = ptrtoint ptr %llc_event_q.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %llc_event_q.i, align 4
  %cmp.not21.i = icmp eq ptr %1, %llc_event_q.i
  br i1 %cmp.not21.i, label %entry.smc_llc_event_flush.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.smc_llc_event_flush.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_event_flush.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %qentry.022.i = phi ptr [ %q.0.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %qentry.022.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %q.0.i = load ptr, ptr %qentry.022.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qentry.022.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %qentry.022.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %qentry.022.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qentry.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %9 = ptrtoint ptr %qentry.022.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %qentry.022.i, ptr %qentry.022.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %qentry.022.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %qentry.022.i, ptr %prev.i3.i.i, align 4
  tail call void @kfree(ptr noundef %qentry.022.i) #15
  %cmp.not.i = icmp eq ptr %q.0.i, %llc_event_q.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.smc_llc_event_flush.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del_init.exit.i.smc_llc_event_flush.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_event_flush.exit

smc_llc_event_flush.exit:                         ; preds = %list_del_init.exit.i.smc_llc_event_flush.exit_crit_edge, %entry.smc_llc_event_flush.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %llc_event_q_lock.i) #15
  %llc_flow_waiter = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %llc_flow_waiter, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  %llc_msg_waiter = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %llc_msg_waiter, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  %llc_event_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 15
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %llc_event_work) #15
  %llc_add_link_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 13
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %llc_add_link_work) #15
  %llc_del_link_work = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 14
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %llc_del_link_work) #15
  %delayed_event = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 20
  %11 = ptrtoint ptr %delayed_event to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %delayed_event, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %smc_llc_event_flush.exit.if.end_crit_edge, label %if.then

smc_llc_event_flush.exit.if.end_crit_edge:        ; preds = %smc_llc_event_flush.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %smc_llc_event_flush.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %12) #15
  %13 = ptrtoint ptr %delayed_event to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %delayed_event, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %smc_llc_event_flush.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_llc_link_init(ptr noundef %link) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %llc_testlink_resp = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 56
  %0 = ptrtoint ptr %llc_testlink_resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %llc_testlink_resp, align 4
  %wait.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 56, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #15
  %llc_testlink_wrk = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 55
  tail call void @__init_work(ptr noundef %llc_testlink_wrk, i32 noundef 0) #15
  %1 = ptrtoint ptr %llc_testlink_wrk to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %llc_testlink_wrk, align 4
  %lockdep_map = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 55, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @smc_llc_link_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 55, i32 0, i32 1
  %2 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 55, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 55, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @smc_llc_testlink_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 55, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @smc_llc_link_init.__key.19) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_llc_testlink_work(ptr noundef %work) #2 align 64 {
entry:
  %pend.i = alloca ptr, align 4
  %wr_buf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -700
  %state.i = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %wr_rx_tstamp = getelementptr i8, ptr %work, i32 -320
  %2 = ptrtoint ptr %wr_rx_tstamp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wr_rx_tstamp, align 4
  %llc_testlink_time = getelementptr i8, ptr %work, i32 156
  %4 = ptrtoint ptr %llc_testlink_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %llc_testlink_time, align 8
  %add = add i32 %5, %3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %6, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then2, label %smc_link_sendable.exit.i.i

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub3 = sub i32 %add, %7
  br label %out

smc_link_sendable.exit.i.i:                       ; preds = %if.end
  %llc_testlink_resp = getelementptr i8, ptr %work, i32 100
  %8 = ptrtoint ptr %llc_testlink_resp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %llc_testlink_resp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend.i) #15
  %9 = ptrtoint ptr %pend.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf.i) #15
  %10 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf.i, align 4, !annotation !77
  %cur_qp_state.i.i.i = getelementptr i8, ptr %work, i32 -680
  %11 = ptrtoint ptr %cur_qp_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_qp_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i.i.i = icmp eq i32 %12, 3
  br i1 %cmp.i.i.i, label %if.end.i, label %smc_link_sendable.exit.i.i.smc_llc_send_test_link.exit_crit_edge

smc_link_sendable.exit.i.i.smc_llc_send_test_link.exit_crit_edge: ; preds = %smc_link_sendable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_test_link.exit

if.end.i:                                         ; preds = %smc_link_sendable.exit.i.i
  %wr_tx_refcnt.i.i = getelementptr i8, ptr %work, i32 -356
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #15, !srcloc !78
  %call.i.i = call i32 @smc_wr_tx_get_free_slot(ptr noundef %add.ptr, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf.i, ptr noundef null, ptr noundef nonnull %pend.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.put_out.i_crit_edge

if.end.i.put_out.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out.i

if.end3.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr_buf.i, align 4
  %16 = getelementptr inbounds i8, ptr %15, i32 1
  %17 = call ptr @memset(ptr %16, i32 0, i32 43)
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %15, align 1
  %lgr.i = getelementptr i8, ptr %work, i32 -120
  %19 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lgr.i, align 4
  %smc_version.i.i = getelementptr inbounds %struct.smc_link_group, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %smc_version.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %smc_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp.i.i = icmp eq i8 %22, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 39, ptr %15, align 1
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 44, ptr %16, align 1
  br label %smc_llc_init_msg_hdr.exit.i

if.else.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 44, ptr %16, align 1
  br label %smc_llc_init_msg_hdr.exit.i

smc_llc_init_msg_hdr.exit.i:                      ; preds = %if.else.i.i, %if.then.i.i
  %user_data5.i = getelementptr inbounds %struct.smc_llc_msg_test_link, ptr %15, i32 0, i32 1
  %26 = call ptr @memset(ptr %user_data5.i, i32 0, i32 16)
  %27 = ptrtoint ptr %pend.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pend.i, align 4
  %call6.i = call i32 @smc_wr_tx_send(ptr noundef %add.ptr, ptr noundef %28) #15
  br label %put_out.i

put_out.i:                                        ; preds = %smc_llc_init_msg_hdr.exit.i, %if.end.i.put_out.i_crit_edge
  %call.i.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %29 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #15, !srcloc !80
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i4.i, label %put_out.i.smc_llc_send_test_link.exit_crit_edge

put_out.i.smc_llc_send_test_link.exit_crit_edge:  ; preds = %put_out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_test_link.exit

if.then.i4.i:                                     ; preds = %put_out.i
  call void @__sanitizer_cov_trace_pc() #17
  %wr_tx_wait.i.i = getelementptr i8, ptr %work, i32 -408
  call void @__wake_up(ptr noundef %wr_tx_wait.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %smc_llc_send_test_link.exit

smc_llc_send_test_link.exit:                      ; preds = %if.then.i4.i, %put_out.i.smc_llc_send_test_link.exit_crit_edge, %smc_link_sendable.exit.i.i.smc_llc_send_test_link.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend.i) #15
  %call7 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %llc_testlink_resp, i32 noundef 200) #15
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp.i31 = icmp eq i32 %31, 3
  br i1 %cmp.i31, label %if.end10, label %smc_llc_send_test_link.exit.cleanup_crit_edge

smc_llc_send_test_link.exit.cleanup_crit_edge:    ; preds = %smc_llc_send_test_link.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %smc_llc_send_test_link.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp11 = icmp slt i32 %call7, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  call void @smcr_link_down_cond_sched(ptr noundef %add.ptr) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %llc_testlink_time to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %llc_testlink_time, align 8
  br label %out

out:                                              ; preds = %if.end13, %if.then2
  %next_interval.0 = phi i32 [ %sub3, %if.then2 ], [ %33, %if.end13 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i32 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %work, i32 noundef %next_interval.0) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then12, %smc_llc_send_test_link.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_llc_link_active(ptr noundef %link) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smc_llc_link_active._rs, ptr noundef nonnull @__func__.smc_llc_link_active) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %id = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 9
  %net = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 27
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %net_cookie = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %net_cookie to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %net_cookie, align 128
  %link_uid = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 44
  %peer_link_uid = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 45
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 8
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibdev, align 8
  %name = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 2
  %ibport = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 1
  %10 = ptrtoint ptr %ibport to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ibport, align 4
  %conv = zext i8 %11 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 4, ptr noundef %id, i64 noundef %5, i32 noundef 4, ptr noundef %link_uid, i32 noundef 4, ptr noundef %peer_link_uid, ptr noundef %name, i32 noundef %conv) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 54
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state, align 8
  %lgr3 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %13 = ptrtoint ptr %lgr3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lgr3, align 4
  %llc_testlink_time = getelementptr inbounds %struct.smc_link_group, ptr %14, i32 0, i32 21, i32 0, i32 22
  %15 = ptrtoint ptr %llc_testlink_time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %llc_testlink_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %llc_testlink_time8 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 57
  %17 = ptrtoint ptr %llc_testlink_time8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %llc_testlink_time8, align 8
  %llc_testlink_wrk = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %llc_testlink_wrk, i32 noundef %16) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_llc_link_clear(ptr noundef %link, i1 noundef zeroext %log) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %log, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smc_llc_link_clear._rs, ptr noundef nonnull @__func__.smc_llc_link_clear) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %id = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 9
  %net = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 27
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %net_cookie = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %net_cookie to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %net_cookie, align 128
  %link_uid = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 44
  %peer_link_uid = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 45
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 8
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibdev, align 8
  %name = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 2
  %ibport = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 1
  %10 = ptrtoint ptr %ibport to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ibport, align 4
  %conv = zext i8 %11 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %id, i64 noundef %5, i32 noundef 4, ptr noundef %link_uid, i32 noundef 4, ptr noundef %peer_link_uid, ptr noundef %name, i32 noundef %conv) #18
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %llc_testlink_resp = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 56
  tail call void @complete(ptr noundef %llc_testlink_resp) #15
  %llc_testlink_wrk = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 55
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %llc_testlink_wrk) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_llc_do_confirm_rkey(ptr noundef %send_link, ptr nocapture noundef readonly %rmb_desc) local_unnamed_addr #2 align 64 {
entry:
  %pend.i = alloca ptr, align 4
  %wr_buf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %send_link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend.i) #15
  %2 = ptrtoint ptr %pend.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf.i) #15
  %3 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf.i, align 4, !annotation !77
  %state.i.i.i.i = getelementptr inbounds %struct.smc_link, ptr %send_link, i32 0, i32 54
  %4 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %switch.i.i.i.i = icmp ugt i32 %5, 1
  br i1 %switch.i.i.i.i, label %smc_link_sendable.exit.i.i, label %entry.smc_llc_send_confirm_rkey.exit.thread_crit_edge

entry.smc_llc_send_confirm_rkey.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_confirm_rkey.exit.thread

smc_link_sendable.exit.i.i:                       ; preds = %entry
  %cur_qp_state.i.i.i = getelementptr inbounds %struct.smc_link, ptr %send_link, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %cur_qp_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_qp_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i.i.i = icmp eq i32 %7, 3
  br i1 %cmp.i.i.i, label %if.end.i, label %smc_link_sendable.exit.i.i.smc_llc_send_confirm_rkey.exit.thread_crit_edge

smc_link_sendable.exit.i.i.smc_llc_send_confirm_rkey.exit.thread_crit_edge: ; preds = %smc_link_sendable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_confirm_rkey.exit.thread

if.end.i:                                         ; preds = %smc_link_sendable.exit.i.i
  %wr_tx_refcnt.i.i = getelementptr inbounds %struct.smc_link, ptr %send_link, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #15, !srcloc !78
  %call.i.i = call i32 @smc_wr_tx_get_free_slot(ptr noundef %send_link, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf.i, ptr noundef null, ptr noundef nonnull %pend.i) #15
  %9 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.put_out.i_crit_edge

if.end.i.put_out.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out.i

if.end3.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr_buf.i, align 4
  %12 = getelementptr inbounds i8, ptr %11, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 43)
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %11, align 1
  %15 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lgr1, align 4
  %smc_version.i.i = getelementptr inbounds %struct.smc_link_group, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %smc_version.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %smc_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.i.i = icmp eq i8 %18, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 38, ptr %11, align 1
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 44, ptr %12, align 1
  br label %smc_llc_init_msg_hdr.exit.i

if.else.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 44, ptr %12, align 1
  br label %smc_llc_init_msg_hdr.exit.i

smc_llc_init_msg_hdr.exit.i:                      ; preds = %if.else.i.i, %if.then.i.i
  %22 = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 5
  %mr_rx.i = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 5, i32 1, i32 12
  %23 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lgr1, align 4
  %arrayidx.i = getelementptr %struct.smc_link_group, ptr %24, i32 0, i32 21, i32 0, i32 1, i32 0
  %state.i.i = getelementptr %struct.smc_link_group, ptr %24, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %25 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i79.i = icmp ne i32 %26, 3
  %cmp7.not.i = icmp eq ptr %arrayidx.i, %send_link
  %or.cond.i = or i1 %cmp.i79.i, %cmp7.not.i
  br i1 %or.cond.i, label %smc_llc_init_msg_hdr.exit.i.for.inc.i_crit_edge, label %if.then8.i

smc_llc_init_msg_hdr.exit.i.for.inc.i_crit_edge:  ; preds = %smc_llc_init_msg_hdr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then8.i:                                       ; preds = %smc_llc_init_msg_hdr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %link_id.i = getelementptr %struct.smc_link_group, ptr %24, i32 0, i32 21, i32 0, i32 1, i32 0, i32 43
  %27 = ptrtoint ptr %link_id.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %link_id.i, align 2
  %arrayidx9.i = getelementptr %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx9.i, align 1
  %link_idx.i = getelementptr %struct.smc_link_group, ptr %24, i32 0, i32 21, i32 0, i32 1, i32 0, i32 46
  %30 = ptrtoint ptr %link_idx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %link_idx.i, align 1
  %idxprom.i = zext i8 %31 to i32
  %arrayidx10.i = getelementptr [3 x ptr], ptr %mr_rx.i, i32 0, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx10.i, align 4
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rkey.i, align 4
  %rmb_key.i = getelementptr %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 1, i32 1
  %36 = ptrtoint ptr %rmb_key.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %rmb_key.i, align 1
  %37 = load i8, ptr %link_idx.i, align 1
  %idxprom14.i = zext i8 %37 to i32
  %arrayidx15.i = getelementptr [3 x %struct.sg_table], ptr %22, i32 0, i32 %idxprom14.i
  %38 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx15.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %41 to i64
  %rmb_vaddr.i = getelementptr %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 1, i32 2
  %42 = ptrtoint ptr %rmb_vaddr.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %conv.i, ptr %rmb_vaddr.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %smc_llc_init_msg_hdr.exit.i.for.inc.i_crit_edge
  %rtok_ix.1.i = phi i32 [ 2, %if.then8.i ], [ 1, %smc_llc_init_msg_hdr.exit.i.for.inc.i_crit_edge ]
  %43 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lgr1, align 4
  %arrayidx.1.i = getelementptr %struct.smc_link_group, ptr %44, i32 0, i32 21, i32 0, i32 1, i32 1
  %state.i.1.i = getelementptr %struct.smc_link_group, ptr %44, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %45 = ptrtoint ptr %state.i.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp.i79.1.i = icmp ne i32 %46, 3
  %cmp7.not.1.i = icmp eq ptr %arrayidx.1.i, %send_link
  %or.cond.1.i = or i1 %cmp.i79.1.i, %cmp7.not.1.i
  br i1 %or.cond.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then8.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i

if.then8.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %link_id.1.i = getelementptr %struct.smc_link_group, ptr %44, i32 0, i32 21, i32 0, i32 1, i32 1, i32 43
  %47 = ptrtoint ptr %link_id.1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %link_id.1.i, align 2
  %arrayidx9.1.i = getelementptr %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 %rtok_ix.1.i
  %49 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx9.1.i, align 1
  %link_idx.1.i = getelementptr %struct.smc_link_group, ptr %44, i32 0, i32 21, i32 0, i32 1, i32 1, i32 46
  %50 = ptrtoint ptr %link_idx.1.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %link_idx.1.i, align 1
  %idxprom.1.i = zext i8 %51 to i32
  %arrayidx10.1.i = getelementptr [3 x ptr], ptr %mr_rx.i, i32 0, i32 %idxprom.1.i
  %52 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx10.1.i, align 4
  %rkey.1.i = getelementptr inbounds %struct.ib_mr, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %rkey.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rkey.1.i, align 4
  %rmb_key.1.i = getelementptr %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 %rtok_ix.1.i, i32 1
  %56 = ptrtoint ptr %rmb_key.1.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %rmb_key.1.i, align 1
  %57 = load i8, ptr %link_idx.1.i, align 1
  %idxprom14.1.i = zext i8 %57 to i32
  %arrayidx15.1.i = getelementptr [3 x %struct.sg_table], ptr %22, i32 0, i32 %idxprom14.1.i
  %58 = ptrtoint ptr %arrayidx15.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx15.1.i, align 4
  %dma_address.1.i = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %dma_address.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_address.1.i, align 4
  %conv.1.i = zext i32 %61 to i64
  %rmb_vaddr.1.i = getelementptr %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 %rtok_ix.1.i, i32 2
  %62 = ptrtoint ptr %rmb_vaddr.1.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %conv.1.i, ptr %rmb_vaddr.1.i, align 1
  %inc.1.i = add nuw nsw i32 %rtok_ix.1.i, 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then8.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %rtok_ix.1.1.i = phi i32 [ %inc.1.i, %if.then8.1.i ], [ %rtok_ix.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %63 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lgr1, align 4
  %arrayidx.2.i = getelementptr %struct.smc_link_group, ptr %64, i32 0, i32 21, i32 0, i32 1, i32 2
  %state.i.2.i = getelementptr %struct.smc_link_group, ptr %64, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %65 = ptrtoint ptr %state.i.2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp.i79.2.i = icmp ne i32 %66, 3
  %cmp7.not.2.i = icmp eq ptr %arrayidx.2.i, %send_link
  %or.cond.2.i = or i1 %cmp.i79.2.i, %cmp7.not.2.i
  br i1 %or.cond.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then8.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i

if.then8.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  %link_id.2.i = getelementptr %struct.smc_link_group, ptr %64, i32 0, i32 21, i32 0, i32 1, i32 2, i32 43
  %67 = ptrtoint ptr %link_id.2.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %link_id.2.i, align 2
  %arrayidx9.2.i = getelementptr %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 %rtok_ix.1.1.i
  %69 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx9.2.i, align 1
  %link_idx.2.i = getelementptr %struct.smc_link_group, ptr %64, i32 0, i32 21, i32 0, i32 1, i32 2, i32 46
  %70 = ptrtoint ptr %link_idx.2.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %link_idx.2.i, align 1
  %idxprom.2.i = zext i8 %71 to i32
  %arrayidx10.2.i = getelementptr [3 x ptr], ptr %mr_rx.i, i32 0, i32 %idxprom.2.i
  %72 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx10.2.i, align 4
  %rkey.2.i = getelementptr inbounds %struct.ib_mr, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %rkey.2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rkey.2.i, align 4
  %rmb_key.2.i = getelementptr %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 %rtok_ix.1.1.i, i32 1
  %76 = ptrtoint ptr %rmb_key.2.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %75, ptr %rmb_key.2.i, align 1
  %77 = load i8, ptr %link_idx.2.i, align 1
  %idxprom14.2.i = zext i8 %77 to i32
  %arrayidx15.2.i = getelementptr [3 x %struct.sg_table], ptr %22, i32 0, i32 %idxprom14.2.i
  %78 = ptrtoint ptr %arrayidx15.2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx15.2.i, align 4
  %dma_address.2.i = getelementptr inbounds %struct.scatterlist, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %dma_address.2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_address.2.i, align 4
  %conv.2.i = zext i32 %81 to i64
  %rmb_vaddr.2.i = getelementptr %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 %rtok_ix.1.1.i, i32 2
  %82 = ptrtoint ptr %rmb_vaddr.2.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %conv.2.i, ptr %rmb_vaddr.2.i, align 1
  %inc.2.i = add nuw nsw i32 %rtok_ix.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then8.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %rtok_ix.1.2.i = phi i32 [ %inc.2.i, %if.then8.2.i ], [ %rtok_ix.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %83 = trunc i32 %rtok_ix.1.2.i to i8
  %conv20.i = add nsw i8 %83, -1
  %rtoken21.i = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1
  %84 = ptrtoint ptr %rtoken21.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv20.i, ptr %rtoken21.i, align 1
  %link_idx24.i = getelementptr inbounds %struct.smc_link, ptr %send_link, i32 0, i32 46
  %85 = ptrtoint ptr %link_idx24.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %link_idx24.i, align 1
  %idxprom25.i = zext i8 %86 to i32
  %arrayidx26.i = getelementptr [3 x ptr], ptr %mr_rx.i, i32 0, i32 %idxprom25.i
  %87 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx26.i, align 4
  %rkey27.i = getelementptr inbounds %struct.ib_mr, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %rkey27.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rkey27.i, align 4
  %rmb_key30.i = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 0, i32 1
  %91 = ptrtoint ptr %rmb_key30.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %90, ptr %rmb_key30.i, align 1
  %92 = load i8, ptr %link_idx24.i, align 1
  %idxprom33.i = zext i8 %92 to i32
  %arrayidx34.i = getelementptr [3 x %struct.sg_table], ptr %22, i32 0, i32 %idxprom33.i
  %93 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx34.i, align 4
  %dma_address36.i = getelementptr inbounds %struct.scatterlist, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %dma_address36.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_address36.i, align 4
  %conv37.i = zext i32 %96 to i64
  %rmb_vaddr40.i = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, ptr %11, i32 0, i32 1, i32 0, i32 2
  %97 = ptrtoint ptr %rmb_vaddr40.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 %conv37.i, ptr %rmb_vaddr40.i, align 1
  %98 = ptrtoint ptr %pend.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pend.i, align 4
  %call41.i = call i32 @smc_wr_tx_send(ptr noundef %send_link, ptr noundef %99) #15
  br label %put_out.i

put_out.i:                                        ; preds = %for.inc.2.i, %if.end.i.put_out.i_crit_edge
  %rc.0.i = phi i32 [ %9, %if.end.i.put_out.i_crit_edge ], [ %call41.i, %for.inc.2.i ]
  %call.i.i.i81.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %100 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #15, !srcloc !80
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %100, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i82.i, label %put_out.i.smc_llc_send_confirm_rkey.exit_crit_edge

put_out.i.smc_llc_send_confirm_rkey.exit_crit_edge: ; preds = %put_out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_confirm_rkey.exit

if.then.i82.i:                                    ; preds = %put_out.i
  call void @__sanitizer_cov_trace_pc() #17
  %wr_tx_wait.i.i = getelementptr inbounds %struct.smc_link, ptr %send_link, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %smc_llc_send_confirm_rkey.exit

smc_llc_send_confirm_rkey.exit.thread:            ; preds = %smc_link_sendable.exit.i.i.smc_llc_send_confirm_rkey.exit.thread_crit_edge, %entry.smc_llc_send_confirm_rkey.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend.i) #15
  br label %if.end9

smc_llc_send_confirm_rkey.exit:                   ; preds = %if.then.i82.i, %put_out.i.smc_llc_send_confirm_rkey.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool.not, label %if.end, label %smc_llc_send_confirm_rkey.exit.if.end9_crit_edge

smc_llc_send_confirm_rkey.exit.if.end9_crit_edge: ; preds = %smc_llc_send_confirm_rkey.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end:                                           ; preds = %smc_llc_send_confirm_rkey.exit
  %call2 = call ptr @smc_llc_wait(ptr noundef %1, ptr noundef %send_link, i32 noundef 200, i8 noundef zeroext 6)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %lor.lhs.false

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.smc_llc_qentry, ptr %call2, i32 0, i32 2, i32 0, i32 0, i32 2
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %flags, align 1
  %103 = and i8 %102, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool4.not = icmp eq i8 %103, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  %qentry1.i = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 18, i32 1
  %104 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %qentry1.i, align 4
  %tobool.not.i16 = icmp eq ptr %105, null
  br i1 %tobool.not.i16, label %lor.lhs.false.if.end9_crit_edge, label %if.then.i

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %qentry1.i, align 4
  call void @kfree(ptr noundef nonnull %105) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %lor.lhs.false.if.end9_crit_edge, %if.end.if.end9_crit_edge, %smc_llc_send_confirm_rkey.exit.if.end9_crit_edge, %smc_llc_send_confirm_rkey.exit.thread
  %rc.023 = phi i32 [ %spec.select, %lor.lhs.false.if.end9_crit_edge ], [ %spec.select, %if.then.i ], [ -14, %if.end.if.end9_crit_edge ], [ -67, %smc_llc_send_confirm_rkey.exit.thread ], [ %rc.0.i, %smc_llc_send_confirm_rkey.exit.if.end9_crit_edge ]
  ret i32 %rc.023
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_llc_do_delete_rkey(ptr noundef %lgr, ptr nocapture noundef readonly %rmb_desc) local_unnamed_addr #2 align 64 {
entry:
  %pend.i = alloca ptr, align 4
  %wr_buf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.i.i = icmp ugt i32 %1, 1
  br i1 %switch.i.i, label %entry.smc_llc_usable_link.exit_crit_edge, label %for.inc.i

entry.smc_llc_usable_link.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_usable_link.exit

for.inc.i:                                        ; preds = %entry
  %state.i.1.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %2 = ptrtoint ptr %state.i.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.i.1.i = icmp ugt i32 %3, 1
  br i1 %switch.i.1.i, label %for.inc.i.smc_llc_usable_link.exit_crit_edge, label %for.inc.1.i

for.inc.i.smc_llc_usable_link.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_usable_link.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %state.i.2.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %4 = ptrtoint ptr %state.i.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %switch.i.2.i = icmp ugt i32 %5, 1
  br i1 %switch.i.2.i, label %for.inc.1.i.smc_llc_usable_link.exit_crit_edge, label %for.inc.1.i.cleanup_crit_edge

for.inc.1.i.cleanup_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.1.i.smc_llc_usable_link.exit_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_usable_link.exit

smc_llc_usable_link.exit:                         ; preds = %for.inc.1.i.smc_llc_usable_link.exit_crit_edge, %for.inc.i.smc_llc_usable_link.exit_crit_edge, %entry.smc_llc_usable_link.exit_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %entry.smc_llc_usable_link.exit_crit_edge ], [ 1, %for.inc.i.smc_llc_usable_link.exit_crit_edge ], [ 2, %for.inc.1.i.smc_llc_usable_link.exit_crit_edge ]
  %arrayidx.le.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.09.lcssa.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %smc_llc_usable_link.exit.cleanup_crit_edge, label %if.end

smc_llc_usable_link.exit.cleanup_crit_edge:       ; preds = %smc_llc_usable_link.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %smc_llc_usable_link.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend.i) #15
  %6 = ptrtoint ptr %pend.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf.i) #15
  %7 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf.i, align 4, !annotation !77
  %state.i.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.09.lcssa.i, i32 54
  %8 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %switch.i.i.i.i = icmp ugt i32 %9, 1
  br i1 %switch.i.i.i.i, label %smc_link_sendable.exit.i.i, label %if.end.smc_llc_send_delete_rkey.exit.thread_crit_edge

if.end.smc_llc_send_delete_rkey.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_delete_rkey.exit.thread

smc_link_sendable.exit.i.i:                       ; preds = %if.end
  %cur_qp_state.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.09.lcssa.i, i32 4, i32 1
  %10 = ptrtoint ptr %cur_qp_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_qp_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i.i.i = icmp eq i32 %11, 3
  br i1 %cmp.i.i.i, label %if.end.i, label %smc_link_sendable.exit.i.i.smc_llc_send_delete_rkey.exit.thread_crit_edge

smc_link_sendable.exit.i.i.smc_llc_send_delete_rkey.exit.thread_crit_edge: ; preds = %smc_link_sendable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_delete_rkey.exit.thread

if.end.i:                                         ; preds = %smc_link_sendable.exit.i.i
  %wr_tx_refcnt.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.09.lcssa.i, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #15, !srcloc !78
  %call.i.i = call i32 @smc_wr_tx_get_free_slot(ptr noundef nonnull %arrayidx.le.i, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf.i, ptr noundef null, ptr noundef nonnull %pend.i) #15
  %13 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.put_out.i_crit_edge

if.end.i.put_out.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out.i

if.end3.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr_buf.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 44)
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 9, ptr %15, align 4
  %lgr.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.09.lcssa.i, i32 50
  %18 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lgr.i, align 4
  %smc_version.i.i = getelementptr inbounds %struct.smc_link_group, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %smc_version.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %smc_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.i.i = icmp eq i8 %21, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 41, ptr %15, align 1
  %23 = getelementptr inbounds %struct.smc_llc_hdr, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 44, ptr %23, align 1
  br label %smc_llc_init_msg_hdr.exit.i

if.else.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %15, align 1
  %26 = getelementptr inbounds %struct.smc_llc_hdr, ptr %15, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 44, ptr %26, align 1
  br label %smc_llc_init_msg_hdr.exit.i

smc_llc_init_msg_hdr.exit.i:                      ; preds = %if.else.i.i, %if.then.i.i
  %num_rkeys.i = getelementptr inbounds %struct.smc_llc_msg_delete_rkey, ptr %15, i32 0, i32 1
  %28 = ptrtoint ptr %num_rkeys.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %num_rkeys.i, align 4
  %mr_rx.i = getelementptr inbounds %struct.smc_buf_desc, ptr %rmb_desc, i32 0, i32 5, i32 1, i32 12
  %link_idx.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.09.lcssa.i, i32 46
  %29 = ptrtoint ptr %link_idx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %link_idx.i, align 1
  %idxprom.i = zext i8 %30 to i32
  %arrayidx.i = getelementptr [3 x ptr], ptr %mr_rx.i, i32 0, i32 %idxprom.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rkey.i, align 4
  %rkey5.i = getelementptr inbounds %struct.smc_llc_msg_delete_rkey, ptr %15, i32 0, i32 4
  %35 = ptrtoint ptr %rkey5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rkey5.i, align 4
  %36 = ptrtoint ptr %pend.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pend.i, align 4
  %call7.i = call i32 @smc_wr_tx_send(ptr noundef nonnull %arrayidx.le.i, ptr noundef %37) #15
  br label %put_out.i

put_out.i:                                        ; preds = %smc_llc_init_msg_hdr.exit.i, %if.end.i.put_out.i_crit_edge
  %rc.0.i = phi i32 [ %13, %if.end.i.put_out.i_crit_edge ], [ %call7.i, %smc_llc_init_msg_hdr.exit.i ]
  %call.i.i.i23.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %38 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #15, !srcloc !80
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i24.i, label %put_out.i.smc_llc_send_delete_rkey.exit_crit_edge

put_out.i.smc_llc_send_delete_rkey.exit_crit_edge: ; preds = %put_out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_send_delete_rkey.exit

if.then.i24.i:                                    ; preds = %put_out.i
  call void @__sanitizer_cov_trace_pc() #17
  %wr_tx_wait.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %i.09.lcssa.i, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %smc_llc_send_delete_rkey.exit

smc_llc_send_delete_rkey.exit.thread:             ; preds = %smc_link_sendable.exit.i.i.smc_llc_send_delete_rkey.exit.thread_crit_edge, %if.end.smc_llc_send_delete_rkey.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend.i) #15
  br label %cleanup

smc_llc_send_delete_rkey.exit:                    ; preds = %if.then.i24.i, %put_out.i.smc_llc_send_delete_rkey.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool2.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool2.not, label %if.end4, label %smc_llc_send_delete_rkey.exit.cleanup_crit_edge

smc_llc_send_delete_rkey.exit.cleanup_crit_edge:  ; preds = %smc_llc_send_delete_rkey.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %smc_llc_send_delete_rkey.exit
  %call5 = call ptr @smc_llc_wait(ptr noundef %lgr, ptr noundef nonnull %arrayidx.le.i, i32 noundef 200, i8 noundef zeroext 9)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %flags = getelementptr inbounds %struct.smc_llc_qentry, ptr %call5, i32 0, i32 2, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags, align 1
  %41 = and i8 %40, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool7.not = icmp eq i8 %41, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -14
  %qentry1.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qentry1.i, align 4
  %tobool.not.i23 = icmp eq ptr %43, null
  br i1 %tobool.not.i23, label %lor.lhs.false.cleanup_crit_edge, label %if.then.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %qentry1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %qentry1.i, align 4
  call void @kfree(ptr noundef nonnull %43) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %smc_llc_send_delete_rkey.exit.cleanup_crit_edge, %smc_llc_send_delete_rkey.exit.thread, %smc_llc_usable_link.exit.cleanup_crit_edge, %for.inc.1.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -67, %smc_llc_usable_link.exit.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false.cleanup_crit_edge ], [ %spec.select, %if.then.i ], [ -67, %for.inc.1.i.cleanup_crit_edge ], [ -14, %if.end4.cleanup_crit_edge ], [ -67, %smc_llc_send_delete_rkey.exit.thread ], [ %rc.0.i, %smc_llc_send_delete_rkey.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @smc_llc_save_peer_uid(ptr nocapture noundef readonly %qentry) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 1
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %peer_link_uid = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 45
  %msg = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2
  %link_uid = getelementptr inbounds %struct.smc_llc_msg_confirm_link, ptr %msg, i32 0, i32 5
  %2 = ptrtoint ptr %link_uid to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %link_uid, align 2
  %4 = ptrtoint ptr %peer_link_uid to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %peer_link_uid, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smc_llc_eval_conf_link(ptr nocapture noundef readonly %qentry, i32 noundef %type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %msg = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2
  %link_num = getelementptr inbounds %struct.smc_llc_msg_confirm_link, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %link_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_num, align 1
  %link = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 1
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %link_id = getelementptr inbounds %struct.smc_link, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %link_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %link_id, align 2
  %5 = load ptr, ptr %link, align 4
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lgr.i, align 4
  %id.i = getelementptr inbounds %struct.smc_link_group, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 8
  %link_id.i = getelementptr inbounds %struct.smc_link, ptr %5, i32 0, i32 43
  %10 = ptrtoint ptr %link_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_id.i, align 2
  %conv.i = zext i8 %11 to i32
  %add.i = add i32 %9, %conv.i
  %link_uid1.i = getelementptr inbounds %struct.smc_link, ptr %5, i32 0, i32 44
  %12 = ptrtoint ptr %link_uid1.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %add.i, ptr %link_uid1.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %. = select i1 %tobool.not, i32 -524, i32 0
  ret i32 %.
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_llc_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([16 x %struct.smc_wr_rx_handler], ptr @smc_llc_rx_handlers, i32 0, i32 0, i32 1), align 4
  %tobool.not7 = icmp eq ptr %0, null
  br i1 %tobool.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.smc_wr_rx_handler, ptr %handler.08, i32 1
  %handler1 = getelementptr %struct.smc_wr_rx_handler, ptr %handler.08, i32 1, i32 1
  %1 = ptrtoint ptr %handler1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %handler1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %handler.08 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ @smc_llc_rx_handlers, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %handler.08 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %handler.08, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %handler.08, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pprev.i, align 4
  %call = tail call i32 @smc_wr_rx_register_handler(ptr noundef %handler.08) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_rx_register_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_tx_get_free_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smc_llc_tx_handler(ptr nocapture noundef %pend, ptr nocapture noundef %link, i32 noundef %wc_status) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_tx_get_v2_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smc_llc_get_first_rmb(ptr noundef %lgr, ptr nocapture noundef %buf_lst) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %buf_lst, align 4
  %arrayidx.i.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %2, %arrayidx.i.i
  %tobool.not10.i.i = icmp eq ptr %2, null
  %tobool.not.i.i = or i1 %cmp2.not.i.i, %tobool.not10.i.i
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.smc_llc_get_next_rmb.exit_crit_edge

entry.smc_llc_get_next_rmb.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %buf_lst, align 4
  %arrayidx.i.i.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i.i.1, align 4
  %cmp2.not.i.i.1 = icmp eq ptr %5, %arrayidx.i.i.1
  %tobool.not10.i.i.1 = icmp eq ptr %5, null
  %tobool.not.i.i.1 = or i1 %cmp2.not.i.i.1, %tobool.not10.i.i.1
  br i1 %tobool.not.i.i.1, label %if.end.i.i.1, label %if.end.i.i.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.smc_llc_get_next_rmb.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.1:                                     ; preds = %if.end.i.i
  %6 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %buf_lst, align 4
  %arrayidx.i.i.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i.i.2, align 4
  %cmp2.not.i.i.2 = icmp eq ptr %8, %arrayidx.i.i.2
  %tobool.not10.i.i.2 = icmp eq ptr %8, null
  %tobool.not.i.i.2 = or i1 %cmp2.not.i.i.2, %tobool.not10.i.i.2
  br i1 %tobool.not.i.i.2, label %if.end.i.i.2, label %if.end.i.i.1.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.1.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.2:                                     ; preds = %if.end.i.i.1
  %9 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %buf_lst, align 4
  %arrayidx.i.i.3 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i.i.3, align 4
  %cmp2.not.i.i.3 = icmp eq ptr %11, %arrayidx.i.i.3
  %tobool.not10.i.i.3 = icmp eq ptr %11, null
  %tobool.not.i.i.3 = or i1 %cmp2.not.i.i.3, %tobool.not10.i.i.3
  br i1 %tobool.not.i.i.3, label %if.end.i.i.3, label %if.end.i.i.2.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.2.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.3:                                     ; preds = %if.end.i.i.2
  %12 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %buf_lst, align 4
  %arrayidx.i.i.4 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 5
  %13 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i.i.4, align 4
  %cmp2.not.i.i.4 = icmp eq ptr %14, %arrayidx.i.i.4
  %tobool.not10.i.i.4 = icmp eq ptr %14, null
  %tobool.not.i.i.4 = or i1 %cmp2.not.i.i.4, %tobool.not10.i.i.4
  br i1 %tobool.not.i.i.4, label %if.end.i.i.4, label %if.end.i.i.3.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.3.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.4:                                     ; preds = %if.end.i.i.3
  %15 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %buf_lst, align 4
  %arrayidx.i.i.5 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 6
  %16 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.i.i.5, align 4
  %cmp2.not.i.i.5 = icmp eq ptr %17, %arrayidx.i.i.5
  %tobool.not10.i.i.5 = icmp eq ptr %17, null
  %tobool.not.i.i.5 = or i1 %cmp2.not.i.i.5, %tobool.not10.i.i.5
  br i1 %tobool.not.i.i.5, label %if.end.i.i.5, label %if.end.i.i.4.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.4.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.5:                                     ; preds = %if.end.i.i.4
  %18 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %buf_lst, align 4
  %arrayidx.i.i.6 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 7
  %19 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i.i.6, align 4
  %cmp2.not.i.i.6 = icmp eq ptr %20, %arrayidx.i.i.6
  %tobool.not10.i.i.6 = icmp eq ptr %20, null
  %tobool.not.i.i.6 = or i1 %cmp2.not.i.i.6, %tobool.not10.i.i.6
  br i1 %tobool.not.i.i.6, label %if.end.i.i.6, label %if.end.i.i.5.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.5.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.6:                                     ; preds = %if.end.i.i.5
  %21 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %buf_lst, align 4
  %arrayidx.i.i.7 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 8
  %22 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx.i.i.7, align 4
  %cmp2.not.i.i.7 = icmp eq ptr %23, %arrayidx.i.i.7
  %tobool.not10.i.i.7 = icmp eq ptr %23, null
  %tobool.not.i.i.7 = or i1 %cmp2.not.i.i.7, %tobool.not10.i.i.7
  br i1 %tobool.not.i.i.7, label %if.end.i.i.7, label %if.end.i.i.6.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.6.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.7:                                     ; preds = %if.end.i.i.6
  %24 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 9, ptr %buf_lst, align 4
  %arrayidx.i.i.8 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 9
  %25 = ptrtoint ptr %arrayidx.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx.i.i.8, align 4
  %cmp2.not.i.i.8 = icmp eq ptr %26, %arrayidx.i.i.8
  %tobool.not10.i.i.8 = icmp eq ptr %26, null
  %tobool.not.i.i.8 = or i1 %cmp2.not.i.i.8, %tobool.not10.i.i.8
  br i1 %tobool.not.i.i.8, label %if.end.i.i.8, label %if.end.i.i.7.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.7.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.8:                                     ; preds = %if.end.i.i.7
  %27 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %buf_lst, align 4
  %arrayidx.i.i.9 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 10
  %28 = ptrtoint ptr %arrayidx.i.i.9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx.i.i.9, align 4
  %cmp2.not.i.i.9 = icmp eq ptr %29, %arrayidx.i.i.9
  %tobool.not10.i.i.9 = icmp eq ptr %29, null
  %tobool.not.i.i.9 = or i1 %cmp2.not.i.i.9, %tobool.not10.i.i.9
  br i1 %tobool.not.i.i.9, label %if.end.i.i.9, label %if.end.i.i.8.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.8.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.9:                                     ; preds = %if.end.i.i.8
  %30 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 11, ptr %buf_lst, align 4
  %arrayidx.i.i.10 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 11
  %31 = ptrtoint ptr %arrayidx.i.i.10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %arrayidx.i.i.10, align 4
  %cmp2.not.i.i.10 = icmp eq ptr %32, %arrayidx.i.i.10
  %tobool.not10.i.i.10 = icmp eq ptr %32, null
  %tobool.not.i.i.10 = or i1 %cmp2.not.i.i.10, %tobool.not10.i.i.10
  br i1 %tobool.not.i.i.10, label %if.end.i.i.10, label %if.end.i.i.9.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.9.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.10:                                    ; preds = %if.end.i.i.9
  %33 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 12, ptr %buf_lst, align 4
  %arrayidx.i.i.11 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 12
  %34 = ptrtoint ptr %arrayidx.i.i.11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx.i.i.11, align 4
  %cmp2.not.i.i.11 = icmp eq ptr %35, %arrayidx.i.i.11
  %tobool.not10.i.i.11 = icmp eq ptr %35, null
  %tobool.not.i.i.11 = or i1 %cmp2.not.i.i.11, %tobool.not10.i.i.11
  br i1 %tobool.not.i.i.11, label %if.end.i.i.11, label %if.end.i.i.10.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.10.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.11:                                    ; preds = %if.end.i.i.10
  %36 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 13, ptr %buf_lst, align 4
  %arrayidx.i.i.12 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 13
  %37 = ptrtoint ptr %arrayidx.i.i.12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %arrayidx.i.i.12, align 4
  %cmp2.not.i.i.12 = icmp eq ptr %38, %arrayidx.i.i.12
  %tobool.not10.i.i.12 = icmp eq ptr %38, null
  %tobool.not.i.i.12 = or i1 %cmp2.not.i.i.12, %tobool.not10.i.i.12
  br i1 %tobool.not.i.i.12, label %if.end.i.i.12, label %if.end.i.i.11.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.11.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.12:                                    ; preds = %if.end.i.i.11
  %39 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 14, ptr %buf_lst, align 4
  %arrayidx.i.i.13 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 14
  %40 = ptrtoint ptr %arrayidx.i.i.13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %arrayidx.i.i.13, align 4
  %cmp2.not.i.i.13 = icmp eq ptr %41, %arrayidx.i.i.13
  %tobool.not10.i.i.13 = icmp eq ptr %41, null
  %tobool.not.i.i.13 = or i1 %cmp2.not.i.i.13, %tobool.not10.i.i.13
  br i1 %tobool.not.i.i.13, label %if.end.i.i.13, label %if.end.i.i.12.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.12.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.13:                                    ; preds = %if.end.i.i.12
  %42 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 15, ptr %buf_lst, align 4
  %arrayidx.i.i.14 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 7, i32 15
  %43 = ptrtoint ptr %arrayidx.i.i.14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %arrayidx.i.i.14, align 4
  %cmp2.not.i.i.14 = icmp eq ptr %44, %arrayidx.i.i.14
  %tobool.not10.i.i.14 = icmp eq ptr %44, null
  %tobool.not.i.i.14 = or i1 %cmp2.not.i.i.14, %tobool.not10.i.i.14
  br i1 %tobool.not.i.i.14, label %if.end.i.i.14, label %if.end.i.i.13.smc_llc_get_next_rmb.exit_crit_edge

if.end.i.i.13.smc_llc_get_next_rmb.exit_crit_edge: ; preds = %if.end.i.i.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit

if.end.i.i.14:                                    ; preds = %if.end.i.i.13
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16, ptr %buf_lst, align 4
  br label %smc_llc_get_next_rmb.exit

smc_llc_get_next_rmb.exit:                        ; preds = %if.end.i.i.14, %if.end.i.i.13.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.12.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.11.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.10.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.9.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.8.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.7.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.6.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.5.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.4.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.3.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.2.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.1.smc_llc_get_next_rmb.exit_crit_edge, %if.end.i.i.smc_llc_get_next_rmb.exit_crit_edge, %entry.smc_llc_get_next_rmb.exit_crit_edge
  %retval.0.i = phi ptr [ %2, %entry.smc_llc_get_next_rmb.exit_crit_edge ], [ %5, %if.end.i.i.smc_llc_get_next_rmb.exit_crit_edge ], [ %8, %if.end.i.i.1.smc_llc_get_next_rmb.exit_crit_edge ], [ %11, %if.end.i.i.2.smc_llc_get_next_rmb.exit_crit_edge ], [ %14, %if.end.i.i.3.smc_llc_get_next_rmb.exit_crit_edge ], [ %17, %if.end.i.i.4.smc_llc_get_next_rmb.exit_crit_edge ], [ %20, %if.end.i.i.5.smc_llc_get_next_rmb.exit_crit_edge ], [ %23, %if.end.i.i.6.smc_llc_get_next_rmb.exit_crit_edge ], [ %26, %if.end.i.i.7.smc_llc_get_next_rmb.exit_crit_edge ], [ %29, %if.end.i.i.8.smc_llc_get_next_rmb.exit_crit_edge ], [ %32, %if.end.i.i.9.smc_llc_get_next_rmb.exit_crit_edge ], [ %35, %if.end.i.i.10.smc_llc_get_next_rmb.exit_crit_edge ], [ %38, %if.end.i.i.11.smc_llc_get_next_rmb.exit_crit_edge ], [ %41, %if.end.i.i.12.smc_llc_get_next_rmb.exit_crit_edge ], [ %44, %if.end.i.i.13.smc_llc_get_next_rmb.exit_crit_edge ], [ null, %if.end.i.i.14 ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_rtoken_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_llc_add_link_cont(ptr noundef %link, ptr nocapture noundef readonly %link_new, ptr nocapture noundef %num_rkeys_todo, ptr nocapture noundef %buf_lst, ptr nocapture noundef %buf_pos) unnamed_addr #2 align 64 {
entry:
  %pend = alloca ptr, align 4
  %wr_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr1 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend) #15
  %2 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf) #15
  %3 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf, align 4, !annotation !77
  %state.i.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 54
  %4 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %switch.i.i.i = icmp ugt i32 %5, 1
  br i1 %switch.i.i.i, label %smc_link_sendable.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

smc_link_sendable.exit.i:                         ; preds = %entry
  %cur_qp_state.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %cur_qp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_qp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 3
  br i1 %cmp.i.i, label %if.end, label %smc_link_sendable.exit.i.cleanup_crit_edge

smc_link_sendable.exit.i.cleanup_crit_edge:       ; preds = %smc_link_sendable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %smc_link_sendable.exit.i
  %wr_tx_refcnt.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #15, !srcloc !78
  %call.i = call i32 @smc_wr_tx_get_free_slot(ptr noundef %link, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf, ptr noundef null, ptr noundef nonnull %pend) #15
  %9 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end4, label %if.end.put_out_crit_edge

if.end.put_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %wr_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr_buf, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 44)
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 46
  %13 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %link_idx, align 1
  %conv = zext i8 %14 to i32
  %link_idx5 = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 46
  %15 = ptrtoint ptr %link_idx5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %link_idx5, align 1
  %conv6 = zext i8 %16 to i32
  %link_id = getelementptr inbounds %struct.smc_link, ptr %link_new, i32 0, i32 43
  %17 = ptrtoint ptr %link_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_id, align 2
  %link_num = getelementptr inbounds %struct.smc_llc_msg_add_link_cont, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %link_num to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %link_num, align 1
  %20 = ptrtoint ptr %num_rkeys_todo to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_rkeys_todo, align 1
  %num_rkeys = getelementptr inbounds %struct.smc_llc_msg_add_link_cont, ptr %11, i32 0, i32 2
  %22 = ptrtoint ptr %num_rkeys to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %num_rkeys, align 1
  %23 = load i8, ptr %num_rkeys_todo, align 1
  %24 = call i8 @llvm.umin.i8(i8 %23, i8 2)
  %cond = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp12118.not = icmp eq i8 %24, 0
  br i1 %cmp12118.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.0119 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %25 = ptrtoint ptr %buf_pos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf_pos, align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %if.then15, label %if.end21

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %num_rkeys to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_rkeys, align 1
  %29 = ptrtoint ptr %num_rkeys_todo to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_rkeys_todo, align 1
  %sub = sub i8 %28, %30
  store i8 %sub, ptr %num_rkeys, align 1
  store i8 0, ptr %num_rkeys_todo, align 1
  br label %for.end

if.end21:                                         ; preds = %for.body
  %31 = getelementptr inbounds %struct.smc_buf_desc, ptr %26, i32 0, i32 5
  %mr_rx = getelementptr inbounds %struct.smc_buf_desc, ptr %26, i32 0, i32 5, i32 1, i32 12
  %arrayidx = getelementptr [3 x ptr], ptr %mr_rx, i32 0, i32 %conv
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rkey, align 4
  %arrayidx22 = getelementptr %struct.smc_llc_msg_add_link_cont, ptr %11, i32 0, i32 4, i32 %i.0119
  %36 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %arrayidx22, align 1
  %arrayidx24 = getelementptr [3 x ptr], ptr %mr_rx, i32 0, i32 %conv6
  %37 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx24, align 4
  %rkey25 = getelementptr inbounds %struct.ib_mr, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %rkey25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rkey25, align 4
  %rmb_key_new = getelementptr %struct.smc_llc_msg_add_link_cont, ptr %11, i32 0, i32 4, i32 %i.0119, i32 1
  %41 = ptrtoint ptr %rmb_key_new to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %rmb_key_new, align 1
  %arrayidx28 = getelementptr [3 x %struct.sg_table], ptr %31, i32 0, i32 %conv6
  %42 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx28, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_address, align 4
  %conv29 = zext i32 %45 to i64
  %rmb_vaddr_new = getelementptr %struct.smc_llc_msg_add_link_cont, ptr %11, i32 0, i32 4, i32 %i.0119, i32 2
  %46 = ptrtoint ptr %rmb_vaddr_new to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %conv29, ptr %rmb_vaddr_new, align 1
  %47 = ptrtoint ptr %num_rkeys_todo to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_rkeys_todo, align 1
  %dec = add i8 %48, -1
  store i8 %dec, ptr %num_rkeys_todo, align 1
  %49 = ptrtoint ptr %buf_pos to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf_pos, align 4
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %if.end21.if.then.i_crit_edge, label %lor.lhs.false.i

if.end21.if.then.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end21
  %51 = ptrtoint ptr %buf_lst to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_lst, align 4
  %arrayidx.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 7, i32 %52
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %cmp.i.not.i = icmp eq ptr %54, %arrayidx.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %smc_llc_get_next_rmb.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end21.if.then.i_crit_edge
  %55 = ptrtoint ptr %buf_lst to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_lst, align 4
  %inc.i = add i32 %56, 1
  store i32 %inc.i, ptr %buf_lst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i)
  %cmp11.i.i = icmp slt i32 %inc.i, 16
  br i1 %cmp11.i.i, label %if.then.i.while.body.i.i_crit_edge, label %if.then.i.for.inc.sink.split_crit_edge

if.then.i.for.inc.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %57 = phi i32 [ %inc.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %inc.i, %if.then.i.while.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 7, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %59, %arrayidx.i.i
  %tobool.not10.i.i = icmp eq ptr %59, null
  %tobool.not.i.i = or i1 %cmp2.not.i.i, %tobool.not10.i.i
  br i1 %tobool.not.i.i, label %if.end.i.i, label %smc_llc_get_next_rmb.exit.thread122

smc_llc_get_next_rmb.exit.thread122:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %buf_pos to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %buf_pos, align 4
  br label %land.rhs.preheader

if.end.i.i:                                       ; preds = %while.body.i.i
  %inc.i.i = add i32 %57, 1
  %61 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %inc.i.i, ptr %buf_lst, align 4
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %if.end.i.i.for.inc.sink.split_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

if.end.i.i.for.inc.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

smc_llc_get_next_rmb.exit:                        ; preds = %lor.lhs.false.i
  %62 = ptrtoint ptr %buf_pos to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %54, ptr %buf_pos, align 4
  %tobool33.not116 = icmp eq ptr %54, null
  br i1 %tobool33.not116, label %smc_llc_get_next_rmb.exit.for.inc_crit_edge, label %smc_llc_get_next_rmb.exit.land.rhs.preheader_crit_edge

smc_llc_get_next_rmb.exit.land.rhs.preheader_crit_edge: ; preds = %smc_llc_get_next_rmb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.preheader

smc_llc_get_next_rmb.exit.for.inc_crit_edge:      ; preds = %smc_llc_get_next_rmb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.rhs.preheader:                               ; preds = %smc_llc_get_next_rmb.exit.land.rhs.preheader_crit_edge, %smc_llc_get_next_rmb.exit.thread122
  %storemerge117.ph = phi ptr [ %54, %smc_llc_get_next_rmb.exit.land.rhs.preheader_crit_edge ], [ %59, %smc_llc_get_next_rmb.exit.thread122 ]
  br label %land.rhs

land.rhs:                                         ; preds = %smc_llc_get_next_rmb.exit111.land.rhs_crit_edge, %land.rhs.preheader
  %storemerge117 = phi ptr [ %retval.0.i110, %smc_llc_get_next_rmb.exit111.land.rhs_crit_edge ], [ %storemerge117.ph, %land.rhs.preheader ]
  %used = getelementptr inbounds %struct.smc_buf_desc, ptr %storemerge117, i32 0, i32 4
  %63 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool34.not = icmp eq i32 %64, 0
  br i1 %tobool34.not, label %lor.lhs.false.i98, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false.i98:                                ; preds = %land.rhs
  %65 = ptrtoint ptr %buf_lst to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %buf_lst, align 4
  %arrayidx.i96 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 7, i32 %66
  %67 = ptrtoint ptr %storemerge117 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %storemerge117, align 4
  %cmp.i.not.i97 = icmp eq ptr %68, %arrayidx.i96
  br i1 %cmp.i.not.i97, label %if.then.i101, label %lor.lhs.false.i98.smc_llc_get_next_rmb.exit111_crit_edge

lor.lhs.false.i98.smc_llc_get_next_rmb.exit111_crit_edge: ; preds = %lor.lhs.false.i98
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit111

if.then.i101:                                     ; preds = %lor.lhs.false.i98
  %69 = ptrtoint ptr %buf_lst to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %buf_lst, align 4
  %inc.i99 = add i32 %70, 1
  store i32 %inc.i99, ptr %buf_lst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i99)
  %cmp11.i.i100 = icmp slt i32 %inc.i99, 16
  br i1 %cmp11.i.i100, label %if.then.i101.while.body.i.i106_crit_edge, label %if.then.i101.for.inc.sink.split_crit_edge

if.then.i101.for.inc.sink.split_crit_edge:        ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

if.then.i101.while.body.i.i106_crit_edge:         ; preds = %if.then.i101
  br label %while.body.i.i106

while.body.i.i106:                                ; preds = %if.end.i.i109.while.body.i.i106_crit_edge, %if.then.i101.while.body.i.i106_crit_edge
  %71 = phi i32 [ %inc.i.i107, %if.end.i.i109.while.body.i.i106_crit_edge ], [ %inc.i99, %if.then.i101.while.body.i.i106_crit_edge ]
  %arrayidx.i.i102 = getelementptr %struct.smc_link_group, ptr %1, i32 0, i32 7, i32 %71
  %72 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %arrayidx.i.i102, align 4
  %cmp2.not.i.i103 = icmp eq ptr %73, %arrayidx.i.i102
  %tobool.not10.i.i104 = icmp eq ptr %73, null
  %tobool.not.i.i105 = or i1 %cmp2.not.i.i103, %tobool.not10.i.i104
  br i1 %tobool.not.i.i105, label %if.end.i.i109, label %while.body.i.i106.smc_llc_get_next_rmb.exit111_crit_edge

while.body.i.i106.smc_llc_get_next_rmb.exit111_crit_edge: ; preds = %while.body.i.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_get_next_rmb.exit111

if.end.i.i109:                                    ; preds = %while.body.i.i106
  %inc.i.i107 = add i32 %71, 1
  %74 = ptrtoint ptr %buf_lst to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %inc.i.i107, ptr %buf_lst, align 4
  %exitcond.not.i.i108 = icmp eq i32 %inc.i.i107, 16
  br i1 %exitcond.not.i.i108, label %if.end.i.i109.for.inc.sink.split_crit_edge, label %if.end.i.i109.while.body.i.i106_crit_edge

if.end.i.i109.while.body.i.i106_crit_edge:        ; preds = %if.end.i.i109
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i106

if.end.i.i109.for.inc.sink.split_crit_edge:       ; preds = %if.end.i.i109
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

smc_llc_get_next_rmb.exit111:                     ; preds = %while.body.i.i106.smc_llc_get_next_rmb.exit111_crit_edge, %lor.lhs.false.i98.smc_llc_get_next_rmb.exit111_crit_edge
  %retval.0.i110 = phi ptr [ %68, %lor.lhs.false.i98.smc_llc_get_next_rmb.exit111_crit_edge ], [ %73, %while.body.i.i106.smc_llc_get_next_rmb.exit111_crit_edge ]
  %75 = ptrtoint ptr %buf_pos to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %retval.0.i110, ptr %buf_pos, align 4
  %tobool33.not = icmp eq ptr %retval.0.i110, null
  br i1 %tobool33.not, label %smc_llc_get_next_rmb.exit111.for.inc_crit_edge, label %smc_llc_get_next_rmb.exit111.land.rhs_crit_edge

smc_llc_get_next_rmb.exit111.land.rhs_crit_edge:  ; preds = %smc_llc_get_next_rmb.exit111
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

smc_llc_get_next_rmb.exit111.for.inc_crit_edge:   ; preds = %smc_llc_get_next_rmb.exit111
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc.sink.split:                               ; preds = %if.end.i.i109.for.inc.sink.split_crit_edge, %if.then.i101.for.inc.sink.split_crit_edge, %if.end.i.i.for.inc.sink.split_crit_edge, %if.then.i.for.inc.sink.split_crit_edge
  %76 = ptrtoint ptr %buf_pos to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %buf_pos, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %smc_llc_get_next_rmb.exit111.for.inc_crit_edge, %land.rhs.for.inc_crit_edge, %smc_llc_get_next_rmb.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then15, %if.end4.for.end_crit_edge
  %77 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load = load i8, ptr %11, align 1
  %bf.clear = and i8 %bf.load, -16
  %bf.set = or i8 %bf.clear, 3
  store i8 %bf.set, ptr %11, align 1
  %78 = getelementptr inbounds %struct.smc_llc_hdr, ptr %11, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 44, ptr %78, align 1
  %80 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp37 = icmp eq i32 %82, 0
  br i1 %cmp37, label %if.then39, label %for.end.if.end43_crit_edge

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.smc_llc_hdr, ptr %11, i32 0, i32 2
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %flags, align 1
  %85 = or i8 %84, -128
  store i8 %85, ptr %flags, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %for.end.if.end43_crit_edge
  %86 = ptrtoint ptr %pend to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pend, align 4
  %call44 = call i32 @smc_wr_tx_send(ptr noundef %link, ptr noundef %87) #15
  br label %put_out

put_out:                                          ; preds = %if.end43, %if.end.put_out_crit_edge
  %rc.0 = phi i32 [ %9, %if.end.put_out_crit_edge ], [ %call44, %if.end43 ]
  %call.i.i.i113 = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #15
  %88 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #15, !srcloc !80
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %88, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i114, label %put_out.cleanup_crit_edge

put_out.cleanup_crit_edge:                        ; preds = %put_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i114:                                     ; preds = %put_out
  call void @__sanitizer_cov_trace_pc() #17
  %wr_tx_wait.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i114, %put_out.cleanup_crit_edge, %smc_link_sendable.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %put_out.cleanup_crit_edge ], [ %rc.0, %if.then.i114 ], [ -67, %smc_link_sendable.exit.i.cleanup_crit_edge ], [ -67, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_llc_send_message(ptr noundef %link, ptr nocapture noundef readonly %llcbuf) unnamed_addr #2 align 64 {
entry:
  %pend = alloca ptr, align 4
  %wr_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend) #15
  %0 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf) #15
  %1 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf, align 4, !annotation !77
  %state.i.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 54
  %2 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.i.i.i = icmp ugt i32 %3, 1
  br i1 %switch.i.i.i, label %smc_link_sendable.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

smc_link_sendable.exit.i:                         ; preds = %entry
  %cur_qp_state.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %cur_qp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_qp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 3
  br i1 %cmp.i.i, label %if.end, label %smc_link_sendable.exit.i.cleanup_crit_edge

smc_link_sendable.exit.i.cleanup_crit_edge:       ; preds = %smc_link_sendable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %smc_link_sendable.exit.i
  %wr_tx_refcnt.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #15, !srcloc !78
  %call.i = call i32 @smc_wr_tx_get_free_slot(ptr noundef %link, ptr noundef nonnull @smc_llc_tx_handler, ptr noundef nonnull %wr_buf, ptr noundef null, ptr noundef nonnull %pend) #15
  %7 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end3, label %if.end.put_out_crit_edge

if.end.put_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %wr_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr_buf, align 4
  %10 = call ptr @memcpy(ptr %9, ptr %llcbuf, i32 44)
  %11 = ptrtoint ptr %pend to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pend, align 4
  %call4 = call i32 @smc_wr_tx_send(ptr noundef %link, ptr noundef %12) #15
  br label %put_out

put_out:                                          ; preds = %if.end3, %if.end.put_out_crit_edge
  %rc.0 = phi i32 [ %7, %if.end.put_out_crit_edge ], [ %call4, %if.end3 ]
  %call.i.i.i12 = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i, i32 1, i32 3, i32 1) #15
  %13 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i, ptr %wr_tx_refcnt.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i) #15, !srcloc !80
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %put_out.cleanup_crit_edge

put_out.cleanup_crit_edge:                        ; preds = %put_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %put_out
  call void @__sanitizer_cov_trace_pc() #17
  %wr_tx_wait.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %put_out.cleanup_crit_edge, %smc_link_sendable.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %put_out.cleanup_crit_edge ], [ %rc.0, %if.then.i ], [ -67, %smc_link_sendable.exit.i.cleanup_crit_edge ], [ -67, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_modify_qp_rts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_remember_qp_attr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcr_lgr_set_type_asym(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcr_lgr_set_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_tx_send_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_lgr_terminate_sched(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_llc_event_handler(ptr noundef %qentry) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2
  %link1 = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 1
  %0 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link1, align 4
  %lgr2 = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %lgr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lgr2, align 4
  %state.i = getelementptr inbounds %struct.smc_link, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %switch.i = icmp ugt i32 %5, 1
  br i1 %switch.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %msg, align 4
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  %7 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %conv, label %sw.default [
    i32 7, label %sw.bb
    i32 2, label %sw.bb6
    i32 1, label %if.end.sw.bb58_crit_edge
    i32 3, label %if.end.sw.bb58_crit_edge240
    i32 4, label %sw.bb67
    i32 6, label %sw.bb86
    i32 8, label %if.end.out_crit_edge
    i32 9, label %sw.bb91
    i32 5, label %sw.bb97
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.sw.bb58_crit_edge240:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb58

if.end.sw.bb58_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb58

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 1
  %10 = or i8 %9, -128
  store i8 %10, ptr %flags, align 1
  %call5 = tail call fastcc i32 @smc_llc_send_message(ptr noundef %1, ptr noundef %msg)
  br label %out

sw.bb6:                                           ; preds = %if.end
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %12, %3
  br i1 %cmp.i.not, label %sw.bb6.out_crit_edge, label %if.end9

sw.bb6.out_crit_edge:                             ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end9:                                          ; preds = %sw.bb6
  %13 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %call12 = tail call fastcc zeroext i1 @smc_llc_is_local_add_link(ptr noundef %msg)
  %llc_flow_lcl = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 18
  %16 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %llc_flow_lcl, align 8
  br i1 %call12, label %if.then13, label %if.end23

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp14 = icmp eq i32 %17, 2
  br i1 %cmp14, label %if.then13.out_crit_edge, label %if.end17

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end17:                                         ; preds = %if.then13
  %call19 = tail call fastcc zeroext i1 @smc_llc_flow_start(ptr noundef %llc_flow_lcl, ptr noundef %qentry)
  br i1 %call19, label %if.then20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %llc_add_link_work = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %llc_add_link_work) #15
  br label %cleanup

if.end23:                                         ; preds = %if.then11
  %19 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %17, label %if.end23.if.end44_crit_edge [
    i32 2, label %land.lhs.true
    i32 5, label %if.then38
  ]

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end23
  %qentry29 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %qentry29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qentry29, align 4
  %tobool30.not = icmp eq ptr %21, null
  br i1 %tobool30.not, label %if.then31, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %qentry29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %qentry, ptr %qentry29, align 4
  %llc_msg_waiter = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %llc_msg_waiter, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

if.then38:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %llc_flow_lcl to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %llc_flow_lcl, align 8
  %qentry1.i195 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %qentry1.i195 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %qentry, ptr %qentry1.i195, align 4
  %llc_add_link_work42 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i196 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %llc_add_link_work42) #15
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.end23.if.end44_crit_edge
  %call46 = tail call fastcc zeroext i1 @smc_llc_flow_start(ptr noundef %llc_flow_lcl, ptr noundef %qentry)
  br i1 %call46, label %if.then47, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  %llc_add_link_work48 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i197 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %llc_add_link_work48) #15
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %llc_flow_lcl51 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 18
  %call52 = tail call fastcc zeroext i1 @smc_llc_flow_start(ptr noundef %llc_flow_lcl51, ptr noundef %qentry)
  br i1 %call52, label %if.then53, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %llc_add_link_work54 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i198 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %llc_add_link_work54) #15
  br label %cleanup

sw.bb58:                                          ; preds = %if.end.sw.bb58_crit_edge, %if.end.sw.bb58_crit_edge240
  %llc_flow_lcl59 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 18
  %28 = ptrtoint ptr %llc_flow_lcl59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %llc_flow_lcl59, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp61.not = icmp eq i32 %29, 0
  br i1 %cmp61.not, label %sw.bb58.out_crit_edge, label %if.then63

sw.bb58.out_crit_edge:                            ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then63:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #17
  %qentry1.i199 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %qentry1.i199 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %qentry, ptr %qentry1.i199, align 4
  %llc_msg_waiter65 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %llc_msg_waiter65, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

sw.bb67:                                          ; preds = %if.end
  %llc_flow_lcl68 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 18
  %31 = ptrtoint ptr %llc_flow_lcl68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %llc_flow_lcl68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp70 = icmp eq i32 %32, 2
  br i1 %cmp70, label %land.lhs.true72, label %sw.bb67.if.else79_crit_edge

sw.bb67.if.else79_crit_edge:                      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else79

land.lhs.true72:                                  ; preds = %sw.bb67
  %qentry74 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %qentry74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qentry74, align 4
  %tobool75.not = icmp eq ptr %34, null
  br i1 %tobool75.not, label %if.then76, label %land.lhs.true72.if.else79_crit_edge

land.lhs.true72.if.else79_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else79

if.then76:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %qentry74 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %qentry, ptr %qentry74, align 4
  %llc_msg_waiter78 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %llc_msg_waiter78, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

if.else79:                                        ; preds = %land.lhs.true72.if.else79_crit_edge, %sw.bb67.if.else79_crit_edge
  %call81 = tail call fastcc zeroext i1 @smc_llc_flow_start(ptr noundef %llc_flow_lcl68, ptr noundef %qentry)
  br i1 %call81, label %if.then82, label %if.else79.cleanup_crit_edge

if.else79.cleanup_crit_edge:                      ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then82:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #17
  %llc_del_link_work = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i201 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %llc_del_link_work) #15
  br label %cleanup

sw.bb86:                                          ; preds = %if.end
  %llc_flow_rmt = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 19
  %call87 = tail call fastcc zeroext i1 @smc_llc_flow_start(ptr noundef %llc_flow_rmt, ptr noundef %qentry)
  br i1 %call87, label %if.then88, label %sw.bb86.cleanup_crit_edge

sw.bb86.cleanup_crit_edge:                        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then88:                                        ; preds = %sw.bb86
  %qentry1.i202 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 19, i32 1
  %37 = ptrtoint ptr %qentry1.i202 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qentry1.i202, align 4
  %link2.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %link2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link2.i, align 4
  %rtoken.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %38, i32 0, i32 2, i32 0, i32 1
  %41 = ptrtoint ptr %rtoken.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rtoken.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %42)
  %cmp.i203 = icmp ugt i8 %42, 3
  br i1 %cmp.i203, label %if.then88.out_err.i_crit_edge, label %if.end.i

if.then88.out_err.i_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

if.end.i:                                         ; preds = %if.then88
  %rmb_vaddr.i = getelementptr inbounds %struct.smc_rmb_rtoken, ptr %rtoken.i, i32 0, i32 2
  %43 = ptrtoint ptr %rmb_vaddr.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %rmb_vaddr.i, align 1
  %rmb_key.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %38, i32 0, i32 2, i32 0, i32 2
  %45 = ptrtoint ptr %rmb_key.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %rmb_key.i, align 1
  %call.i = tail call i32 @smc_rtoken_add(ptr noundef %40, i64 noundef %44, i32 noundef %46) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %if.end.i.out_err.i_crit_edge, label %for.cond.preheader.i

if.end.i.out_err.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %47 = tail call i8 @llvm.umin.i8(i8 %42, i8 2) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp19.not71.i = icmp eq i8 %47, 0
  br i1 %cmp19.not71.i, label %for.cond.preheader.i.out.i_crit_edge, label %for.body.i

for.cond.preheader.i.out.i_crit_edge:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

for.body.i:                                       ; preds = %for.cond.preheader.i
  %arrayidx22.i = getelementptr [3 x %struct.smc_rmb_rtoken], ptr %rtoken.i, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %49 to i32
  %rmb_vaddr26.i = getelementptr [3 x %struct.smc_rmb_rtoken], ptr %rtoken.i, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %rmb_vaddr26.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %rmb_vaddr26.i, align 1
  %rmb_key29.i = getelementptr [3 x %struct.smc_rmb_rtoken], ptr %rtoken.i, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %rmb_key29.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %rmb_key29.i, align 1
  tail call void @smc_rtoken_set2(ptr noundef %3, i32 noundef %call.i, i32 noundef %conv23.i, i64 noundef %51, i32 noundef %53) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %exitcond.i = icmp eq i8 %47, 1
  br i1 %exitcond.i, label %for.body.i.out.i_crit_edge, label %for.body.i.1

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

for.body.i.1:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx22.i.1 = getelementptr [3 x %struct.smc_rmb_rtoken], ptr %rtoken.i, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx22.i.1 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx22.i.1, align 1
  %conv23.i.1 = zext i8 %55 to i32
  %rmb_vaddr26.i.1 = getelementptr [3 x %struct.smc_rmb_rtoken], ptr %rtoken.i, i32 0, i32 2, i32 2
  %56 = ptrtoint ptr %rmb_vaddr26.i.1 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %rmb_vaddr26.i.1, align 1
  %rmb_key29.i.1 = getelementptr [3 x %struct.smc_rmb_rtoken], ptr %rtoken.i, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %rmb_key29.i.1 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %rmb_key29.i.1, align 1
  tail call void @smc_rtoken_set2(ptr noundef %3, i32 noundef %call.i, i32 noundef %conv23.i.1, i64 noundef %57, i32 noundef %59) #15
  br label %out.i

out_err.i:                                        ; preds = %if.end.i.out_err.i_crit_edge, %if.then88.out_err.i_crit_edge
  %flags.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %38, i32 0, i32 2, i32 0, i32 0, i32 2
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %flags.i, align 1
  %62 = or i8 %61, 48
  store i8 %62, ptr %flags.i, align 1
  br label %out.i

out.i:                                            ; preds = %out_err.i, %for.body.i.1, %for.body.i.out.i_crit_edge, %for.cond.preheader.i.out.i_crit_edge
  %msg.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %38, i32 0, i32 2
  %flags38.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %38, i32 0, i32 2, i32 0, i32 0, i32 2
  %63 = ptrtoint ptr %flags38.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %flags38.i, align 1
  %65 = or i8 %64, -128
  store i8 %65, ptr %flags38.i, align 1
  %lgr43.i = getelementptr inbounds %struct.smc_link, ptr %40, i32 0, i32 50
  %66 = ptrtoint ptr %lgr43.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lgr43.i, align 4
  %smc_version.i.i = getelementptr inbounds %struct.smc_link_group, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %smc_version.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %smc_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp.i.i = icmp eq i8 %69, 2
  %70 = ptrtoint ptr %msg.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i.i = load i8, ptr %msg.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set.i.i = or i8 %bf.clear.i.i, 32
  %71 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %bf.set.i.i, ptr %msg.i, align 1
  %72 = getelementptr inbounds %struct.smc_llc_qentry, ptr %38, i32 0, i32 2, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 44, ptr %72, align 1
  br label %smc_llc_init_msg_hdr.exit.i

if.else.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  %74 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %bf.clear.i.i, ptr %msg.i, align 1
  %75 = getelementptr inbounds %struct.smc_llc_qentry, ptr %38, i32 0, i32 2, i32 0, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 44, ptr %75, align 1
  br label %smc_llc_init_msg_hdr.exit.i

smc_llc_init_msg_hdr.exit.i:                      ; preds = %if.else.i.i, %if.then.i.i
  %call45.i = tail call fastcc i32 @smc_llc_send_message(ptr noundef %40, ptr noundef %msg.i) #15
  %77 = ptrtoint ptr %qentry1.i202 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %qentry1.i202, align 4
  %tobool.not.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i, label %smc_llc_init_msg_hdr.exit.i.smc_llc_rmt_conf_rkey.exit_crit_edge, label %if.then.i70.i

smc_llc_init_msg_hdr.exit.i.smc_llc_rmt_conf_rkey.exit_crit_edge: ; preds = %smc_llc_init_msg_hdr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_rmt_conf_rkey.exit

if.then.i70.i:                                    ; preds = %smc_llc_init_msg_hdr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %qentry1.i202 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %qentry1.i202, align 4
  tail call void @kfree(ptr noundef nonnull %78) #15
  br label %smc_llc_rmt_conf_rkey.exit

smc_llc_rmt_conf_rkey.exit:                       ; preds = %if.then.i70.i, %smc_llc_init_msg_hdr.exit.i.smc_llc_rmt_conf_rkey.exit_crit_edge
  %llc_flow_lock.i = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %llc_flow_lock.i) #15
  %80 = ptrtoint ptr %llc_flow_rmt to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 0, ptr %llc_flow_rmt, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %llc_flow_lock.i) #15
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %3, align 4
  %llc_flow_waiter.i = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %llc_flow_waiter.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

sw.bb91:                                          ; preds = %if.end
  %llc_flow_rmt92 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 19
  %call93 = tail call fastcc zeroext i1 @smc_llc_flow_start(ptr noundef %llc_flow_rmt92, ptr noundef %qentry)
  br i1 %call93, label %if.then94, label %sw.bb91.cleanup_crit_edge

sw.bb91.cleanup_crit_edge:                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then94:                                        ; preds = %sw.bb91
  %qentry1.i205 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 19, i32 1
  %83 = ptrtoint ptr %qentry1.i205 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %qentry1.i205, align 4
  %msg.i206 = getelementptr inbounds %struct.smc_llc_qentry, ptr %84, i32 0, i32 2
  %link2.i207 = getelementptr inbounds %struct.smc_llc_qentry, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %link2.i207 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %link2.i207, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 16
  %87 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %cmp.i208 = icmp eq i8 %88, 2
  br i1 %cmp.i208, label %if.then.i, label %if.end28.i

if.then.i:                                        ; preds = %if.then94
  %wr_rx_buf_v2.i = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 2
  %89 = ptrtoint ptr %wr_rx_buf_v2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %wr_rx_buf_v2.i, align 8
  %91 = call ptr @memcpy(ptr %90, ptr %msg.i206, i32 44)
  %92 = load ptr, ptr %wr_rx_buf_v2.i, align 8
  %num_inval_rkeys.i = getelementptr inbounds %struct.smc_llc_msg_delete_rkey_v2, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %num_inval_rkeys.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %num_inval_rkeys.i, align 1
  %num_rkeys.i = getelementptr inbounds %struct.smc_llc_msg_delete_rkey_v2, ptr %92, i32 0, i32 1
  %94 = ptrtoint ptr %num_rkeys.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %num_rkeys.i, align 4
  %conv5.i = zext i8 %95 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp11115.not.i = icmp eq i8 %95, 0
  br i1 %cmp11115.not.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i210_crit_edge

if.then.i.for.body.i210_crit_edge:                ; preds = %if.then.i
  br label %for.body.i210

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i210:                                    ; preds = %for.inc.i.for.body.i210_crit_edge, %if.then.i.for.body.i210_crit_edge
  %i.0116.i = phi i32 [ %inc15.i, %for.inc.i.for.body.i210_crit_edge ], [ 0, %if.then.i.for.body.i210_crit_edge ]
  %arrayidx.i = getelementptr %struct.smc_llc_msg_delete_rkey_v2, ptr %92, i32 0, i32 4, i32 %i.0116.i
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i, align 4
  %call.i209 = tail call i32 @smc_rtoken_delete(ptr noundef %86, i32 noundef %97) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool.not.i = icmp eq i32 %call.i209, 0
  br i1 %tobool.not.i, label %for.body.i210.for.inc.i_crit_edge, label %if.then13.i

for.body.i210.for.inc.i_crit_edge:                ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then13.i:                                      ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %num_inval_rkeys.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %num_inval_rkeys.i, align 1
  %inc.i211 = add i8 %99, 1
  store i8 %inc.i211, ptr %num_inval_rkeys.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then13.i, %for.body.i210.for.inc.i_crit_edge
  %inc15.i = add nuw nsw i32 %i.0116.i, 1
  %exitcond117.not.i = icmp eq i32 %inc15.i, %conv5.i
  br i1 %exitcond117.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i210_crit_edge

for.inc.i.for.body.i210_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i210

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %rkey16.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 4
  %lgr18.i = getelementptr inbounds %struct.smc_link, ptr %86, i32 0, i32 50
  %100 = call ptr @memset(ptr %rkey16.i, i32 0, i32 36)
  %101 = ptrtoint ptr %lgr18.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lgr18.i, align 4
  %smc_version.i.i212 = getelementptr inbounds %struct.smc_link_group, ptr %102, i32 0, i32 16
  %103 = ptrtoint ptr %smc_version.i.i212 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %smc_version.i.i212, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %104)
  %cmp.i.i213 = icmp eq i8 %104, 2
  %105 = ptrtoint ptr %msg.i206 to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load.i.i214 = load i8, ptr %msg.i206, align 1
  %bf.clear.i.i215 = and i8 %bf.load.i.i214, 15
  br i1 %cmp.i.i213, label %if.then.i.i217, label %if.else.i.i218

if.then.i.i217:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set.i.i216 = or i8 %bf.clear.i.i215, 32
  %106 = ptrtoint ptr %msg.i206 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %bf.set.i.i216, ptr %msg.i206, align 1
  %107 = getelementptr inbounds %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 44, ptr %107, align 1
  br label %smc_llc_init_msg_hdr.exit.i219

if.else.i.i218:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %109 = ptrtoint ptr %msg.i206 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %bf.clear.i.i215, ptr %msg.i206, align 1
  %110 = getelementptr inbounds %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 0, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 44, ptr %110, align 1
  br label %smc_llc_init_msg_hdr.exit.i219

smc_llc_init_msg_hdr.exit.i219:                   ; preds = %if.else.i.i218, %if.then.i.i217
  %112 = ptrtoint ptr %num_inval_rkeys.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %num_inval_rkeys.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool20.not.i = icmp eq i8 %113, 0
  br i1 %tobool20.not.i, label %smc_llc_init_msg_hdr.exit.i219.finish.i_crit_edge, label %if.then21.i

smc_llc_init_msg_hdr.exit.i219.finish.i_crit_edge: ; preds = %smc_llc_init_msg_hdr.exit.i219
  call void @__sanitizer_cov_trace_pc() #17
  br label %finish.i

if.then21.i:                                      ; preds = %smc_llc_init_msg_hdr.exit.i219
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i220 = getelementptr inbounds %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 0, i32 2
  %114 = ptrtoint ptr %flags.i220 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %flags.i220, align 1
  %116 = or i8 %115, 32
  store i8 %116, ptr %flags.i220, align 1
  %117 = ptrtoint ptr %num_inval_rkeys.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %num_inval_rkeys.i, align 1
  br label %finish.sink.split.i

if.end28.i:                                       ; preds = %if.then94
  %num_rkeys29.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 1
  %119 = ptrtoint ptr %num_rkeys29.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %num_rkeys29.i, align 4
  %121 = tail call i8 @llvm.umin.i8(i8 %120, i8 8) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp42112.not.i = icmp eq i8 %121, 0
  br i1 %cmp42112.not.i, label %if.end28.i.finish.i_crit_edge, label %for.body44.i

if.end28.i.finish.i_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %finish.i

for.body44.i:                                     ; preds = %if.end28.i
  %arrayidx46.i = getelementptr %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 4, i32 0
  %122 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx46.i, align 4
  %call47.i = tail call i32 @smc_rtoken_delete(ptr noundef %86, i32 noundef %123) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  %conv52.i = select i1 %tobool48.not.i, i8 0, i8 -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %121)
  %exitcond.not.i = icmp eq i8 %121, 1
  br i1 %exitcond.not.i, label %for.body44.i.for.end56.i_crit_edge, label %for.body44.i.1

for.body44.i.for.end56.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end56.i

for.body44.i.1:                                   ; preds = %for.body44.i
  %arrayidx46.i.1 = getelementptr %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 4, i32 1
  %124 = ptrtoint ptr %arrayidx46.i.1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx46.i.1, align 4
  %call47.i.1 = tail call i32 @smc_rtoken_delete(ptr noundef %86, i32 noundef %125) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.1)
  %tobool48.not.i.1 = icmp eq i32 %call47.i.1, 0
  %conv52.i.1 = select i1 %tobool48.not.i.1, i8 0, i8 64
  %err_mask.1.i.1 = or i8 %conv52.i.1, %conv52.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %121)
  %exitcond.not.i.1 = icmp eq i8 %121, 2
  br i1 %exitcond.not.i.1, label %for.body44.i.1.for.end56.i_crit_edge, label %for.body44.i.2

for.body44.i.1.for.end56.i_crit_edge:             ; preds = %for.body44.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end56.i

for.body44.i.2:                                   ; preds = %for.body44.i.1
  %arrayidx46.i.2 = getelementptr %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 4, i32 2
  %126 = ptrtoint ptr %arrayidx46.i.2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx46.i.2, align 4
  %call47.i.2 = tail call i32 @smc_rtoken_delete(ptr noundef %86, i32 noundef %127) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.2)
  %tobool48.not.i.2 = icmp eq i32 %call47.i.2, 0
  %conv52.i.2 = select i1 %tobool48.not.i.2, i8 0, i8 32
  %err_mask.1.i.2 = or i8 %conv52.i.2, %err_mask.1.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %121)
  %exitcond.not.i.2 = icmp eq i8 %121, 3
  br i1 %exitcond.not.i.2, label %for.body44.i.2.for.end56.i_crit_edge, label %for.body44.i.3

for.body44.i.2.for.end56.i_crit_edge:             ; preds = %for.body44.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end56.i

for.body44.i.3:                                   ; preds = %for.body44.i.2
  %arrayidx46.i.3 = getelementptr %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 4, i32 3
  %128 = ptrtoint ptr %arrayidx46.i.3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx46.i.3, align 4
  %call47.i.3 = tail call i32 @smc_rtoken_delete(ptr noundef %86, i32 noundef %129) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.3)
  %tobool48.not.i.3 = icmp eq i32 %call47.i.3, 0
  %conv52.i.3 = select i1 %tobool48.not.i.3, i8 0, i8 16
  %err_mask.1.i.3 = or i8 %conv52.i.3, %err_mask.1.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %121)
  %exitcond.not.i.3 = icmp eq i8 %121, 4
  br i1 %exitcond.not.i.3, label %for.body44.i.3.for.end56.i_crit_edge, label %for.body44.i.4

for.body44.i.3.for.end56.i_crit_edge:             ; preds = %for.body44.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end56.i

for.body44.i.4:                                   ; preds = %for.body44.i.3
  %arrayidx46.i.4 = getelementptr %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 4, i32 4
  %130 = ptrtoint ptr %arrayidx46.i.4 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx46.i.4, align 4
  %call47.i.4 = tail call i32 @smc_rtoken_delete(ptr noundef %86, i32 noundef %131) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.4)
  %tobool48.not.i.4 = icmp eq i32 %call47.i.4, 0
  %conv52.i.4 = select i1 %tobool48.not.i.4, i8 0, i8 8
  %err_mask.1.i.4 = or i8 %conv52.i.4, %err_mask.1.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %121)
  %exitcond.not.i.4 = icmp eq i8 %121, 5
  br i1 %exitcond.not.i.4, label %for.body44.i.4.for.end56.i_crit_edge, label %for.body44.i.5

for.body44.i.4.for.end56.i_crit_edge:             ; preds = %for.body44.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end56.i

for.body44.i.5:                                   ; preds = %for.body44.i.4
  %arrayidx46.i.5 = getelementptr %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 4, i32 5
  %132 = ptrtoint ptr %arrayidx46.i.5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx46.i.5, align 4
  %call47.i.5 = tail call i32 @smc_rtoken_delete(ptr noundef %86, i32 noundef %133) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.5)
  %tobool48.not.i.5 = icmp eq i32 %call47.i.5, 0
  %conv52.i.5 = select i1 %tobool48.not.i.5, i8 0, i8 4
  %err_mask.1.i.5 = or i8 %conv52.i.5, %err_mask.1.i.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %121)
  %exitcond.not.i.5 = icmp eq i8 %121, 6
  br i1 %exitcond.not.i.5, label %for.body44.i.5.for.end56.i_crit_edge, label %for.body44.i.6

for.body44.i.5.for.end56.i_crit_edge:             ; preds = %for.body44.i.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end56.i

for.body44.i.6:                                   ; preds = %for.body44.i.5
  %arrayidx46.i.6 = getelementptr %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 4, i32 6
  %134 = ptrtoint ptr %arrayidx46.i.6 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx46.i.6, align 4
  %call47.i.6 = tail call i32 @smc_rtoken_delete(ptr noundef %86, i32 noundef %135) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.6)
  %tobool48.not.i.6 = icmp eq i32 %call47.i.6, 0
  %conv52.i.6 = select i1 %tobool48.not.i.6, i8 0, i8 2
  %err_mask.1.i.6 = or i8 %conv52.i.6, %err_mask.1.i.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %121)
  %exitcond.not.i.6 = icmp eq i8 %121, 7
  br i1 %exitcond.not.i.6, label %for.body44.i.6.for.end56.i_crit_edge, label %for.body44.i.7

for.body44.i.6.for.end56.i_crit_edge:             ; preds = %for.body44.i.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end56.i

for.body44.i.7:                                   ; preds = %for.body44.i.6
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx46.i.7 = getelementptr %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 4, i32 7
  %136 = ptrtoint ptr %arrayidx46.i.7 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx46.i.7, align 4
  %call47.i.7 = tail call i32 @smc_rtoken_delete(ptr noundef %86, i32 noundef %137) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.7)
  %tobool48.not.i.7 = icmp ne i32 %call47.i.7, 0
  %conv52.i.7 = zext i1 %tobool48.not.i.7 to i8
  %err_mask.1.i.7 = or i8 %err_mask.1.i.6, %conv52.i.7
  br label %for.end56.i

for.end56.i:                                      ; preds = %for.body44.i.7, %for.body44.i.6.for.end56.i_crit_edge, %for.body44.i.5.for.end56.i_crit_edge, %for.body44.i.4.for.end56.i_crit_edge, %for.body44.i.3.for.end56.i_crit_edge, %for.body44.i.2.for.end56.i_crit_edge, %for.body44.i.1.for.end56.i_crit_edge, %for.body44.i.for.end56.i_crit_edge
  %err_mask.1.i.lcssa = phi i8 [ %conv52.i, %for.body44.i.for.end56.i_crit_edge ], [ %err_mask.1.i.1, %for.body44.i.1.for.end56.i_crit_edge ], [ %err_mask.1.i.2, %for.body44.i.2.for.end56.i_crit_edge ], [ %err_mask.1.i.3, %for.body44.i.3.for.end56.i_crit_edge ], [ %err_mask.1.i.4, %for.body44.i.4.for.end56.i_crit_edge ], [ %err_mask.1.i.5, %for.body44.i.5.for.end56.i_crit_edge ], [ %err_mask.1.i.6, %for.body44.i.6.for.end56.i_crit_edge ], [ %err_mask.1.i.7, %for.body44.i.7 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %err_mask.1.i.lcssa)
  %tobool57.not.i = icmp eq i8 %err_mask.1.i.lcssa, 0
  br i1 %tobool57.not.i, label %for.end56.i.finish.i_crit_edge, label %if.then58.i

for.end56.i.finish.i_crit_edge:                   ; preds = %for.end56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %finish.i

if.then58.i:                                      ; preds = %for.end56.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags60.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 0, i32 2
  %138 = ptrtoint ptr %flags60.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %flags60.i, align 1
  %140 = or i8 %139, 32
  store i8 %140, ptr %flags60.i, align 1
  br label %finish.sink.split.i

finish.sink.split.i:                              ; preds = %if.then58.i, %if.then21.i
  %.sink.i = phi i8 [ %118, %if.then21.i ], [ %err_mask.1.i.lcssa, %if.then58.i ]
  %err_mask26.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 2
  %141 = ptrtoint ptr %err_mask26.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %.sink.i, ptr %err_mask26.i, align 1
  br label %finish.i

finish.i:                                         ; preds = %finish.sink.split.i, %for.end56.i.finish.i_crit_edge, %if.end28.i.finish.i_crit_edge, %smc_llc_init_msg_hdr.exit.i219.finish.i_crit_edge
  %flags67.i = getelementptr inbounds %struct.smc_llc_qentry, ptr %84, i32 0, i32 2, i32 0, i32 0, i32 2
  %142 = ptrtoint ptr %flags67.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %flags67.i, align 1
  %144 = or i8 %143, -128
  store i8 %144, ptr %flags67.i, align 1
  %call72.i = tail call fastcc i32 @smc_llc_send_message(ptr noundef %86, ptr noundef %msg.i206) #15
  %145 = ptrtoint ptr %qentry1.i205 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %qentry1.i205, align 4
  %tobool.not.i.i221 = icmp eq ptr %146, null
  br i1 %tobool.not.i.i221, label %finish.i.smc_llc_rmt_delete_rkey.exit_crit_edge, label %if.then.i111.i

finish.i.smc_llc_rmt_delete_rkey.exit_crit_edge:  ; preds = %finish.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_rmt_delete_rkey.exit

if.then.i111.i:                                   ; preds = %finish.i
  call void @__sanitizer_cov_trace_pc() #17
  %147 = ptrtoint ptr %qentry1.i205 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %qentry1.i205, align 4
  tail call void @kfree(ptr noundef nonnull %146) #15
  br label %smc_llc_rmt_delete_rkey.exit

smc_llc_rmt_delete_rkey.exit:                     ; preds = %if.then.i111.i, %finish.i.smc_llc_rmt_delete_rkey.exit_crit_edge
  %llc_flow_lock.i222 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %llc_flow_lock.i222) #15
  %148 = ptrtoint ptr %llc_flow_rmt92 to i32
  call void @__asan_storeN_noabort(i32 %148, i32 8)
  store i64 0, ptr %llc_flow_rmt92, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %llc_flow_lock.i222) #15
  %149 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile ptr, ptr %3, align 4
  %llc_flow_waiter.i228 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %llc_flow_waiter.i228, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

sw.bb97:                                          ; preds = %if.end
  %151 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 8
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %153, label %sw.bb97.out_crit_edge [
    i32 0, label %land.lhs.true101
    i32 1, label %if.then118
  ]

sw.bb97.out_crit_edge:                            ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true101:                                 ; preds = %sw.bb97
  %llc_flow_lcl102 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 18
  %155 = ptrtoint ptr %llc_flow_lcl102 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %llc_flow_lcl102, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %156)
  %cmp104 = icmp eq i32 %156, 5
  br i1 %cmp104, label %land.lhs.true106, label %land.lhs.true101.out_crit_edge

land.lhs.true101.out_crit_edge:                   ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true106:                                 ; preds = %land.lhs.true101
  %flags108 = getelementptr inbounds %struct.smc_llc_qentry, ptr %qentry, i32 0, i32 2, i32 0, i32 0, i32 2
  %157 = ptrtoint ptr %flags108 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %flags108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %158)
  %tobool110.not = icmp sgt i8 %158, -1
  br i1 %tobool110.not, label %land.lhs.true106.out_crit_edge, label %if.then111

land.lhs.true106.out_crit_edge:                   ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then111:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @smc_llc_flow_stop(ptr noundef %3, ptr noundef %llc_flow_lcl102)
  br label %out

if.then118:                                       ; preds = %sw.bb97
  %llc_flow_lcl119 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 18
  %call120 = tail call fastcc zeroext i1 @smc_llc_flow_start(ptr noundef %llc_flow_lcl119, ptr noundef %qentry)
  br i1 %call120, label %if.then121, label %if.then118.cleanup_crit_edge

if.then118.cleanup_crit_edge:                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then121:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #17
  %159 = ptrtoint ptr %llc_flow_lcl119 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 2, ptr %llc_flow_lcl119, align 8
  %llc_add_link_work124 = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %160 = load ptr, ptr @system_wq, align 4
  %call.i.i231 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %160, ptr noundef %llc_add_link_work124) #15
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call.i232 = tail call i32 @___ratelimit(ptr noundef nonnull @smc_llc_protocol_violation._rs, ptr noundef nonnull @__func__.smc_llc_protocol_violation) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool.not.i233 = icmp eq i32 %call.i232, 0
  br i1 %tobool.not.i233, label %sw.default.if.end.i236_crit_edge, label %do.end.i

sw.default.if.end.i236_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i236

do.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  %id.i = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 9
  %net.i = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 27
  %161 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %net.i, align 4
  %net_cookie.i = getelementptr inbounds %struct.net, ptr %162, i32 0, i32 47
  %163 = ptrtoint ptr %net_cookie.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %net_cookie.i, align 128
  %conv.i234 = zext i8 %bf.load to i32
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 4, ptr noundef %id.i, i64 noundef %164, i32 noundef %conv.i234) #18
  br label %if.end.i236

if.end.i236:                                      ; preds = %do.end.i, %sw.default.if.end.i236_crit_edge
  %llc_termination_rsn.i.i = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 23
  %165 = ptrtoint ptr %llc_termination_rsn.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %llc_termination_rsn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool.not.i.i235 = icmp eq i32 %166, 0
  br i1 %tobool.not.i.i235, label %if.then.i.i237, label %if.end.i236.smc_llc_protocol_violation.exit_crit_edge

if.end.i236.smc_llc_protocol_violation.exit_crit_edge: ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_protocol_violation.exit

if.then.i.i237:                                   ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #17
  %167 = ptrtoint ptr %llc_termination_rsn.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 262144, ptr %llc_termination_rsn.i.i, align 4
  br label %smc_llc_protocol_violation.exit

smc_llc_protocol_violation.exit:                  ; preds = %if.then.i.i237, %if.end.i236.smc_llc_protocol_violation.exit_crit_edge
  tail call void @smc_lgr_terminate_sched(ptr noundef %3) #15
  br label %out

out:                                              ; preds = %smc_llc_protocol_violation.exit, %if.then111, %land.lhs.true106.out_crit_edge, %land.lhs.true101.out_crit_edge, %sw.bb97.out_crit_edge, %sw.bb58.out_crit_edge, %if.then13.out_crit_edge, %sw.bb6.out_crit_edge, %sw.bb, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @kfree(ptr noundef %qentry) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then121, %if.then118.cleanup_crit_edge, %smc_llc_rmt_delete_rkey.exit, %sw.bb91.cleanup_crit_edge, %smc_llc_rmt_conf_rkey.exit, %sw.bb86.cleanup_crit_edge, %if.then82, %if.else79.cleanup_crit_edge, %if.then76, %if.then63, %if.then53, %if.else.cleanup_crit_edge, %if.then47, %if.end44.cleanup_crit_edge, %if.then38, %if.then31, %if.then20, %if.end17.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @smc_llc_is_local_add_link(ptr nocapture noundef readonly %llc) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %llc to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %llc, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 2
  br i1 %cmp, label %for.body.i.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.i.preheader:                             ; preds = %entry
  %arrayidx.i4 = getelementptr %struct.anon.221, ptr %llc, i32 0, i32 1, i32 0
  %1 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i5 = icmp eq i8 %2, 0
  br i1 %tobool.not.i5, label %for.body.i.preheader.for.cond.i_crit_edge, label %for.body.i.preheader.if.end_crit_edge

for.body.i.preheader.if.end_crit_edge:            ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.03.i6 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.03.i6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %for.cond.i.smc_llc_is_empty_llc_message.exit_crit_edge, label %for.body.i

for.cond.i.smc_llc_is_empty_llc_message.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_is_empty_llc_message.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.anon.221, ptr %llc, i32 0, i32 1, i32 %inc.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.smc_llc_is_empty_llc_message.exit_crit_edge

for.body.i.smc_llc_is_empty_llc_message.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_llc_is_empty_llc_message.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

smc_llc_is_empty_llc_message.exit:                ; preds = %for.body.i.smc_llc_is_empty_llc_message.exit_crit_edge, %for.cond.i.smc_llc_is_empty_llc_message.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %i.03.i6)
  %cmp.i.le = icmp ult i32 %i.03.i6, 39
  br i1 %cmp.i.le, label %smc_llc_is_empty_llc_message.exit.if.end_crit_edge, label %smc_llc_is_empty_llc_message.exit.return_crit_edge

smc_llc_is_empty_llc_message.exit.return_crit_edge: ; preds = %smc_llc_is_empty_llc_message.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

smc_llc_is_empty_llc_message.exit.if.end_crit_edge: ; preds = %smc_llc_is_empty_llc_message.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %smc_llc_is_empty_llc_message.exit.if.end_crit_edge, %for.body.i.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %smc_llc_is_empty_llc_message.exit.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %smc_llc_is_empty_llc_message.exit.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_rtoken_add(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_rtoken_set2(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_rtoken_delete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_fill_gid_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smc_llc_find_asym_link(ptr noundef readonly %lgr) unnamed_addr #12 align 64 {
for.body3.lr.ph:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.i = icmp ugt i32 %1, 1
  %gid = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 34
  br i1 %switch.i, label %lor.lhs.false, label %for.body3.lr.ph.for.body3.lr.ph.1_crit_edge

for.body3.lr.ph.for.body3.lr.ph.1_crit_edge:      ; preds = %for.body3.lr.ph
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3.lr.ph.1

for.body3.lr.ph.1:                                ; preds = %if.end.1138.for.body3.lr.ph.1_crit_edge, %lor.lhs.false.1134.for.body3.lr.ph.1_crit_edge, %for.body3.lr.ph.for.body3.lr.ph.1_crit_edge
  %state.i.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %2 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.i.1 = icmp ugt i32 %3, 1
  %gid.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 34
  br i1 %switch.i.1, label %lor.lhs.false.1, label %for.body3.lr.ph.1.out.thread_crit_edge

for.body3.lr.ph.1.out.thread_crit_edge:           ; preds = %for.body3.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

lor.lhs.false.1:                                  ; preds = %for.body3.lr.ph.1
  %state.i100.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %4 = ptrtoint ptr %state.i100.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i100.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %switch.i101.1 = icmp ugt i32 %5, 1
  br i1 %switch.i101.1, label %if.end.1, label %lor.lhs.false.1.out.thread_crit_edge

lor.lhs.false.1.out.thread_crit_edge:             ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end.1:                                         ; preds = %lor.lhs.false.1
  %gid11.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 34
  %bcmp99.1 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %gid.1, ptr noundef dereferenceable(16) %gid11.1, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp99.1)
  %tobool.not.1 = icmp eq i32 %bcmp99.1, 0
  br i1 %tobool.not.1, label %for.cond25.preheader.thread, label %if.end.1.out.thread_crit_edge

if.end.1.out.thread_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

lor.lhs.false:                                    ; preds = %for.body3.lr.ph
  %state.i100 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %6 = ptrtoint ptr %state.i100 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.i101 = icmp ugt i32 %7, 1
  br i1 %switch.i101, label %if.end, label %lor.lhs.false.lor.lhs.false.1134_crit_edge

lor.lhs.false.lor.lhs.false.1134_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.1134

if.end:                                           ; preds = %lor.lhs.false
  %gid11 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 34
  %bcmp99 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %gid, ptr noundef dereferenceable(16) %gid11, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp99)
  %tobool.not = icmp eq i32 %bcmp99, 0
  br i1 %tobool.not, label %if.end.for.cond25.preheader_crit_edge, label %if.end.lor.lhs.false.1134_crit_edge

if.end.lor.lhs.false.1134_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.1134

if.end.for.cond25.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %if.end.1138.for.cond25.preheader_crit_edge, %if.end.for.cond25.preheader_crit_edge
  %j.1114.lcssa = phi i32 [ 1, %if.end.for.cond25.preheader_crit_edge ], [ 2, %if.end.1138.for.cond25.preheader_crit_edge ]
  %peer_gid = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 42
  %peer_gid49 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %j.1114.lcssa, i32 42
  %state.i102 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %8 = ptrtoint ptr %state.i102 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i102, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %switch.i103 = icmp ugt i32 %9, 1
  br i1 %switch.i103, label %for.cond25.preheader.land.lhs.true46_crit_edge, label %for.inc59.thread

for.cond25.preheader.land.lhs.true46_crit_edge:   ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true46

for.cond25.preheader.thread:                      ; preds = %if.end.1
  %peer_gid145 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 42
  %peer_gid49146 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 42
  %state.i102147 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %10 = ptrtoint ptr %state.i102147 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i102147, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %switch.i103148 = icmp ugt i32 %11, 1
  br i1 %switch.i103148, label %land.lhs.true, label %for.cond25.preheader.thread.for.inc59_crit_edge

for.cond25.preheader.thread.for.inc59_crit_edge:  ; preds = %for.cond25.preheader.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc59

lor.lhs.false.1134:                               ; preds = %if.end.lor.lhs.false.1134_crit_edge, %lor.lhs.false.lor.lhs.false.1134_crit_edge
  %state.i100.1132 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %12 = ptrtoint ptr %state.i100.1132 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i100.1132, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %switch.i101.1133 = icmp ugt i32 %13, 1
  br i1 %switch.i101.1133, label %if.end.1138, label %lor.lhs.false.1134.for.body3.lr.ph.1_crit_edge

lor.lhs.false.1134.for.body3.lr.ph.1_crit_edge:   ; preds = %lor.lhs.false.1134
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3.lr.ph.1

if.end.1138:                                      ; preds = %lor.lhs.false.1134
  %gid11.1135 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 34
  %bcmp99.1136 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %gid, ptr noundef dereferenceable(16) %gid11.1135, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp99.1136)
  %tobool.not.1137 = icmp eq i32 %bcmp99.1136, 0
  br i1 %tobool.not.1137, label %if.end.1138.for.cond25.preheader_crit_edge, label %if.end.1138.for.body3.lr.ph.1_crit_edge

if.end.1138.for.body3.lr.ph.1_crit_edge:          ; preds = %if.end.1138
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3.lr.ph.1

if.end.1138.for.cond25.preheader_crit_edge:       ; preds = %if.end.1138
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond25.preheader

land.lhs.true:                                    ; preds = %for.cond25.preheader.thread
  %peer_gid39 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 42
  %bcmp98 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid145, ptr noundef dereferenceable(16) %peer_gid39, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp98)
  %tobool42.not = icmp eq i32 %bcmp98, 0
  br i1 %tobool42.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.land.lhs.true46_crit_edge

land.lhs.true.land.lhs.true46_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true46

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true46:                                  ; preds = %land.lhs.true.land.lhs.true46_crit_edge, %for.cond25.preheader.land.lhs.true46_crit_edge
  %cmp33.not.1150181 = phi i1 [ true, %land.lhs.true.land.lhs.true46_crit_edge ], [ false, %for.cond25.preheader.land.lhs.true46_crit_edge ]
  %j.1114.lcssa157178 = phi i32 [ 2, %land.lhs.true.land.lhs.true46_crit_edge ], [ %j.1114.lcssa, %for.cond25.preheader.land.lhs.true46_crit_edge ]
  %peer_gid49165175 = phi ptr [ %peer_gid49146, %land.lhs.true.land.lhs.true46_crit_edge ], [ %peer_gid49, %for.cond25.preheader.land.lhs.true46_crit_edge ]
  %peer_gid162 = phi ptr [ %peer_gid145, %land.lhs.true.land.lhs.true46_crit_edge ], [ %peer_gid, %for.cond25.preheader.land.lhs.true46_crit_edge ]
  %i.0116.lcssa154 = phi i32 [ 1, %land.lhs.true.land.lhs.true46_crit_edge ], [ 0, %for.cond25.preheader.land.lhs.true46_crit_edge ]
  %peer_gid53 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 42
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid49165175, ptr noundef dereferenceable(16) %peer_gid53, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool56.not = icmp eq i32 %bcmp, 0
  br i1 %tobool56.not, label %land.lhs.true46.out_crit_edge, label %land.lhs.true46.for.inc59_crit_edge

land.lhs.true46.for.inc59_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc59

land.lhs.true46.out_crit_edge:                    ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.inc59:                                        ; preds = %land.lhs.true46.for.inc59_crit_edge, %for.cond25.preheader.thread.for.inc59_crit_edge
  %peer_gid49166 = phi ptr [ %peer_gid49146, %for.cond25.preheader.thread.for.inc59_crit_edge ], [ %peer_gid49165175, %land.lhs.true46.for.inc59_crit_edge ]
  %peer_gid161 = phi ptr [ %peer_gid145, %for.cond25.preheader.thread.for.inc59_crit_edge ], [ %peer_gid162, %land.lhs.true46.for.inc59_crit_edge ]
  %j.1114.lcssa158 = phi i32 [ 2, %for.cond25.preheader.thread.for.inc59_crit_edge ], [ %j.1114.lcssa157178, %land.lhs.true46.for.inc59_crit_edge ]
  %i.0116.lcssa153 = phi i32 [ 1, %for.cond25.preheader.thread.for.inc59_crit_edge ], [ %i.0116.lcssa154, %land.lhs.true46.for.inc59_crit_edge ]
  %cmp33.not.1149 = phi i1 [ true, %for.cond25.preheader.thread.for.inc59_crit_edge ], [ %cmp33.not.1150181, %land.lhs.true46.for.inc59_crit_edge ]
  %state.i102.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %14 = ptrtoint ptr %state.i102.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i102.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %switch.i103.1 = icmp ugt i32 %15, 1
  br i1 %switch.i103.1, label %if.end32.1, label %for.inc59.for.inc59.1_crit_edge

for.inc59.for.inc59.1_crit_edge:                  ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc59.1

for.inc59.thread:                                 ; preds = %for.cond25.preheader
  %state.i102.1187 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %16 = ptrtoint ptr %state.i102.1187 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i102.1187, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %switch.i103.1188 = icmp ugt i32 %17, 1
  br i1 %switch.i103.1188, label %for.inc59.thread.land.lhs.true.1_crit_edge, label %for.inc59.thread.for.inc59.1_crit_edge

for.inc59.thread.for.inc59.1_crit_edge:           ; preds = %for.inc59.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc59.1

for.inc59.thread.land.lhs.true.1_crit_edge:       ; preds = %for.inc59.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.1

if.end32.1:                                       ; preds = %for.inc59
  br i1 %cmp33.not.1149, label %if.end32.1.if.end44.1_crit_edge, label %if.end32.1.land.lhs.true.1_crit_edge

if.end32.1.land.lhs.true.1_crit_edge:             ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.1

if.end32.1.if.end44.1_crit_edge:                  ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.1

land.lhs.true.1:                                  ; preds = %if.end32.1.land.lhs.true.1_crit_edge, %for.inc59.thread.land.lhs.true.1_crit_edge
  %peer_gid49166189203 = phi ptr [ %peer_gid49166, %if.end32.1.land.lhs.true.1_crit_edge ], [ %peer_gid49, %for.inc59.thread.land.lhs.true.1_crit_edge ]
  %peer_gid161190202 = phi ptr [ %peer_gid161, %if.end32.1.land.lhs.true.1_crit_edge ], [ %peer_gid, %for.inc59.thread.land.lhs.true.1_crit_edge ]
  %j.1114.lcssa158191200 = phi i32 [ %j.1114.lcssa158, %if.end32.1.land.lhs.true.1_crit_edge ], [ %j.1114.lcssa, %for.inc59.thread.land.lhs.true.1_crit_edge ]
  %i.0116.lcssa153192199 = phi i32 [ %i.0116.lcssa153, %if.end32.1.land.lhs.true.1_crit_edge ], [ 0, %for.inc59.thread.land.lhs.true.1_crit_edge ]
  %peer_gid39.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 42
  %bcmp98.1 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid161190202, ptr noundef dereferenceable(16) %peer_gid39.1, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp98.1)
  %tobool42.not.1 = icmp eq i32 %bcmp98.1, 0
  br i1 %tobool42.not.1, label %land.lhs.true.1.out_crit_edge, label %land.lhs.true.1.if.end44.1_crit_edge

land.lhs.true.1.if.end44.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.1

land.lhs.true.1.out_crit_edge:                    ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end44.1:                                       ; preds = %land.lhs.true.1.if.end44.1_crit_edge, %if.end32.1.if.end44.1_crit_edge
  %peer_gid49166189204 = phi ptr [ %peer_gid49166189203, %land.lhs.true.1.if.end44.1_crit_edge ], [ %peer_gid49166, %if.end32.1.if.end44.1_crit_edge ]
  %j.1114.lcssa158191201 = phi i32 [ %j.1114.lcssa158191200, %land.lhs.true.1.if.end44.1_crit_edge ], [ %j.1114.lcssa158, %if.end32.1.if.end44.1_crit_edge ]
  %peer_gid164 = phi ptr [ %peer_gid161190202, %land.lhs.true.1.if.end44.1_crit_edge ], [ %peer_gid161, %if.end32.1.if.end44.1_crit_edge ]
  %i.0116.lcssa156 = phi i32 [ %i.0116.lcssa153192199, %land.lhs.true.1.if.end44.1_crit_edge ], [ %i.0116.lcssa153, %if.end32.1.if.end44.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.1114.lcssa158191201)
  %cmp45.not.1 = icmp eq i32 %j.1114.lcssa158191201, 1
  br i1 %cmp45.not.1, label %if.end44.1.for.inc59.1_crit_edge, label %land.lhs.true46.1

if.end44.1.for.inc59.1_crit_edge:                 ; preds = %if.end44.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc59.1

land.lhs.true46.1:                                ; preds = %if.end44.1
  %peer_gid53.1 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 1, i32 42
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid49166189204, ptr noundef dereferenceable(16) %peer_gid53.1, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool56.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool56.not.1, label %land.lhs.true46.1.out_crit_edge, label %land.lhs.true46.1.for.inc59.1_crit_edge

land.lhs.true46.1.for.inc59.1_crit_edge:          ; preds = %land.lhs.true46.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc59.1

land.lhs.true46.1.out_crit_edge:                  ; preds = %land.lhs.true46.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.inc59.1:                                      ; preds = %land.lhs.true46.1.for.inc59.1_crit_edge, %if.end44.1.for.inc59.1_crit_edge, %for.inc59.thread.for.inc59.1_crit_edge, %for.inc59.for.inc59.1_crit_edge
  %peer_gid49167 = phi ptr [ %peer_gid49166189204, %land.lhs.true46.1.for.inc59.1_crit_edge ], [ %peer_gid49166189204, %if.end44.1.for.inc59.1_crit_edge ], [ %peer_gid49166, %for.inc59.for.inc59.1_crit_edge ], [ %peer_gid49, %for.inc59.thread.for.inc59.1_crit_edge ]
  %peer_gid163 = phi ptr [ %peer_gid164, %land.lhs.true46.1.for.inc59.1_crit_edge ], [ %peer_gid164, %if.end44.1.for.inc59.1_crit_edge ], [ %peer_gid161, %for.inc59.for.inc59.1_crit_edge ], [ %peer_gid, %for.inc59.thread.for.inc59.1_crit_edge ]
  %j.1114.lcssa159 = phi i32 [ 2, %land.lhs.true46.1.for.inc59.1_crit_edge ], [ 1, %if.end44.1.for.inc59.1_crit_edge ], [ %j.1114.lcssa158, %for.inc59.for.inc59.1_crit_edge ], [ %j.1114.lcssa, %for.inc59.thread.for.inc59.1_crit_edge ]
  %i.0116.lcssa155 = phi i32 [ %i.0116.lcssa156, %land.lhs.true46.1.for.inc59.1_crit_edge ], [ %i.0116.lcssa156, %if.end44.1.for.inc59.1_crit_edge ], [ %i.0116.lcssa153, %for.inc59.for.inc59.1_crit_edge ], [ 0, %for.inc59.thread.for.inc59.1_crit_edge ]
  %state.i102.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %18 = ptrtoint ptr %state.i102.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i102.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %switch.i103.2 = icmp ugt i32 %19, 1
  br i1 %switch.i103.2, label %land.lhs.true.2, label %for.inc59.1.out.thread_crit_edge

for.inc59.1.out.thread_crit_edge:                 ; preds = %for.inc59.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

land.lhs.true.2:                                  ; preds = %for.inc59.1
  %peer_gid39.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 42
  %bcmp98.2 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid163, ptr noundef dereferenceable(16) %peer_gid39.2, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp98.2)
  %tobool42.not.2 = icmp eq i32 %bcmp98.2, 0
  br i1 %tobool42.not.2, label %land.lhs.true.2.out_crit_edge, label %if.end44.2

land.lhs.true.2.out_crit_edge:                    ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end44.2:                                       ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %j.1114.lcssa159)
  %cmp45.not.2 = icmp eq i32 %j.1114.lcssa159, 2
  br i1 %cmp45.not.2, label %if.end44.2.out.thread_crit_edge, label %land.lhs.true46.2

if.end44.2.out.thread_crit_edge:                  ; preds = %if.end44.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

land.lhs.true46.2:                                ; preds = %if.end44.2
  %peer_gid53.2 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 2, i32 42
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_gid49167, ptr noundef dereferenceable(16) %peer_gid53.2, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool56.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool56.not.2, label %land.lhs.true46.2.out_crit_edge, label %land.lhs.true46.2.out.thread_crit_edge

land.lhs.true46.2.out.thread_crit_edge:           ; preds = %land.lhs.true46.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

land.lhs.true46.2.out_crit_edge:                  ; preds = %land.lhs.true46.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %land.lhs.true46.2.out_crit_edge, %land.lhs.true.2.out_crit_edge, %land.lhs.true46.1.out_crit_edge, %land.lhs.true.1.out_crit_edge, %land.lhs.true46.out_crit_edge, %land.lhs.true.out_crit_edge
  %asym_idx.0 = phi i32 [ 1, %land.lhs.true.out_crit_edge ], [ %j.1114.lcssa157178, %land.lhs.true46.out_crit_edge ], [ %i.0116.lcssa153192199, %land.lhs.true.1.out_crit_edge ], [ 2, %land.lhs.true46.1.out_crit_edge ], [ %i.0116.lcssa155, %land.lhs.true.2.out_crit_edge ], [ 1, %land.lhs.true46.2.out_crit_edge ]
  %arrayidx64 = getelementptr %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 %asym_idx.0
  br label %out.thread

out.thread:                                       ; preds = %out, %land.lhs.true46.2.out.thread_crit_edge, %if.end44.2.out.thread_crit_edge, %for.inc59.1.out.thread_crit_edge, %if.end.1.out.thread_crit_edge, %lor.lhs.false.1.out.thread_crit_edge, %for.body3.lr.ph.1.out.thread_crit_edge
  %20 = phi ptr [ %arrayidx64, %out ], [ null, %if.end.1.out.thread_crit_edge ], [ null, %lor.lhs.false.1.out.thread_crit_edge ], [ null, %for.body3.lr.ph.1.out.thread_crit_edge ], [ null, %land.lhs.true46.2.out.thread_crit_edge ], [ null, %if.end44.2.out.thread_crit_edge ], [ null, %for.inc59.1.out.thread_crit_edge ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smc_switch_conns(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_tx_wait_no_pending_sends(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcr_link_down_cond(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcr_link_down_cond_sched(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_llc_rx_handler(ptr nocapture noundef readonly %wc, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %4 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %byte_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %5)
  %cmp = icmp ult i32 %5, 44
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load)
  %tobool.not = icmp ult i8 %bf.load, 16
  %7 = getelementptr inbounds %struct.smc_llc_hdr, ptr %buf, i32 0, i32 1
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %9)
  %cmp3.not = icmp eq i8 %9, 44
  br i1 %cmp3.not, label %if.then1.if.end13_crit_edge, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then1.if.end13_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.else:                                          ; preds = %if.end
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 44, i16 %11)
  %cmp9 = icmp ult i16 %11, 44
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.then1.if.end13_crit_edge
  tail call fastcc void @smc_llc_enqueue(ptr noundef %3, ptr noundef %buf)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/smc/smc_llc.c", i32 310, i32 7}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../net/smc/smc_llc.c", i32 363, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smc_llc_wait._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @smc_llc_wait._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @smc_llc_lgr_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../net/smc/smc_llc.c", i32 2116, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @smc_llc_lgr_init.__key.4, !12, !"__key", i1 false, i1 false}
!12 = !{!"../net/smc/smc_llc.c", i32 2117, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @smc_llc_lgr_init.__key.6, !15, !"__key", i1 false, i1 false}
!15 = !{!"../net/smc/smc_llc.c", i32 2118, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @smc_llc_lgr_init.__key.8, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/smc/smc_llc.c", i32 2120, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @smc_llc_lgr_init.__key.10, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/smc/smc_llc.c", i32 2121, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @smc_llc_lgr_init.__key.12, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/smc/smc_llc.c", i32 2122, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @smc_llc_lgr_init.__key.14, !27, !"__key", i1 false, i1 false}
!27 = !{!"../net/smc/smc_llc.c", i32 2123, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @smc_llc_lgr_init.__key.16, !30, !"__key", i1 false, i1 false}
!30 = !{!"../net/smc/smc_llc.c", i32 2124, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @smc_llc_link_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/smc/smc_llc.c", i32 2146, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @smc_llc_link_init.__key.19, !33, !"__key", i1 false, i1 false}
!36 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/smc/smc_llc.c", i32 2152, i32 2}
!39 = !{ptr @smc_llc_link_active._rs, !38, !"_rs", i1 false, i1 false}
!40 = !{ptr @__func__.smc_llc_link_active, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @smc_llc_link_active._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @smc_llc_link_active._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @smc_llc_link_clear._rs, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../net/smc/smc_llc.c", i32 2171, i32 3}
!46 = !{ptr @__func__.smc_llc_link_clear, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @smc_llc_link_clear._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @smc_llc_link_clear._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../net/smc/smc_llc.c", i32 245, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @smc_llc_flow_parallel._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @smc_llc_flow_parallel._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @smc_llc_protocol_violation._rs, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../net/smc/smc_llc.c", i32 1821, i32 2}
!58 = !{ptr @__func__.smc_llc_protocol_violation, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @smc_llc_protocol_violation._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @smc_llc_protocol_violation._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @init_completion.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/completion.h", i32 87, i32 2}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @smc_llc_rx_handlers, !66, !"smc_llc_rx_handlers", i1 false, i1 false}
!66 = !{!"../net/smc/smc_llc.c", i32 2261, i32 33}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{!"auto-init"}
!78 = !{i64 2148598935, i64 2148598961, i64 2148598990, i64 2148599024, i64 2148599055, i64 2148599078}
!79 = !{i64 2148687411}
!80 = !{i64 2148602120, i64 2148602152, i64 2148602181, i64 2148602215, i64 2148602246, i64 2148602269}
!81 = !{i64 2148687640}
!82 = !{i64 2159563555}
!83 = !{i64 1108427, i64 1108448, i64 1108471, i64 1108490, i64 1108509}
!84 = !{i64 2159563984}
!85 = !{i64 2159568838}
!86 = !{i64 2159569267}
!87 = !{i64 2159570699}
!88 = !{i64 2159571128}
