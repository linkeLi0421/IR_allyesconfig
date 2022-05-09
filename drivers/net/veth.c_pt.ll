; ModuleID = '/llk/IR_all_yes/drivers/net/veth.c_pt.bc'
source_filename = "../drivers/net/veth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bpf_redirect_info = type { i32, i32, ptr, ptr, i32, i32, i32, %struct.bpf_nh_params }
%struct.bpf_nh_params = type { i32, %union.anon.195 }
%union.anon.195 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.123 }
%struct.atomic_t = type { i32 }
%union.anon.123 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.198 = type { [32 x i8] }
%struct.veth_q_stat_desc = type { [32 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.189, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.189 = type { ptr }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.59, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.59 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.54, i32, %struct.spinlock }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ifinfomsg = type { i8, i8, i16, i32, i32, i32 }
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.veth_rq = type { %struct.napi_struct, ptr, ptr, ptr, %struct.xdp_mem_info, %struct.veth_rq_stats, i8, [31 x i8], %struct.ptr_ring, %struct.xdp_rxq_info }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.xdp_mem_info = type { i32, i32 }
%struct.veth_rq_stats = type { %struct.veth_stats, %struct.u64_stats_sync }
%struct.veth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.153, [48 x i8], %union.anon.154, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.156, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.153 = type { i64 }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type { i32, ptr }
%union.anon.156 = type { %struct.anon.157 }
%struct.anon.157 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.158, i32, i32, i32, i16, i16, %union.anon.160, i32, %union.anon.161, %union.anon.162, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.158 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i32 }
%union.anon.162 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netdev_bpf = type { i32, %union.anon.173 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, ptr, ptr }
%struct.veth_xdp_tx_bq = type { [16 x ptr], i32 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.91 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { %struct.anon.93, [0 x %struct.sock_filter] }
%struct.anon.93 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.page = type { i32, %union.anon.10, %union.anon.138, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.138 = type { %struct.atomic_t }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }

@veth_link_ops = internal global { %struct.rtnl_link_ops, [52 x i8] } { %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 32, ptr null, ptr @veth_setup, i8 0, i32 1, ptr @veth_policy, ptr @veth_validate, ptr @veth_newlink, ptr null, ptr @veth_dellink, ptr null, ptr null, ptr null, ptr null, ptr @veth_get_num_queues, ptr @veth_get_num_queues, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @veth_get_link_net, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_veth__682_1835_veth_init6 = internal global ptr @veth_init, section ".initcall6.init", align 4
@__exitcall_veth_exit = internal global ptr @veth_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description683 = internal constant [41 x i8] c"veth.description=Virtual Ethernet Tunnel\00", section ".modinfo", align 1
@__UNIQUE_ID_file684 = internal constant [27 x i8] c"veth.file=drivers/net/veth\00", section ".modinfo", align 1
@__UNIQUE_ID_license685 = internal constant [20 x i8] c"veth.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias686 = internal constant [26 x i8] c"veth.alias=rtnl-link-veth\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"veth\00", [27 x i8] zeroinitializer }, align 32
@veth_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.49 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@veth_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @veth_dev_init, ptr null, ptr @veth_open, ptr @veth_close, ptr @veth_xmit, ptr @passthru_features_check, ptr null, ptr null, ptr @veth_set_multicast_list, ptr @eth_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @veth_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @veth_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @veth_fix_features, ptr @veth_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @veth_get_iflink, ptr null, ptr @veth_set_rx_headroom, ptr @veth_xdp, ptr @veth_ndo_xdp_xmit, ptr null, ptr null, ptr null, ptr null, ptr @veth_peer_dev, ptr null }, [80 x i8] zeroinitializer }, align 32
@veth_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @veth_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @veth_get_strings, ptr null, ptr @veth_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @veth_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @veth_get_channels, ptr @veth_set_channels, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @veth_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@veth_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@veth_alloc_queues.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&priv->rq[i].stats.syncp)->seq\00", [63 x i8] zeroinitializer }, align 32
@veth_open.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/net/veth.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@bpf_redirect_info = external dso_local global %struct.bpf_redirect_info, section ".data..percpu", align 4
@veth_xdp_rcv_one.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Driver BUG: missing reserved tailroom\00", [58 x i8] zeroinitializer }, align 32
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@veth_xdp_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xdp_bulk_tx = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_bulk_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@veth_xdp_rcv_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@veth_xdp_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ptr_ring_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&r->producer_lock\00", [46 x i8] zeroinitializer }, align 32
@ptr_ring_init.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&r->consumer_lock\00", [46 x i8] zeroinitializer }, align 32
@veth_close.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@veth_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@veth_get_stats64.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@veth_fix_features.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@veth_get_iflink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@veth_set_rx_headroom.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@veth_xdp_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@veth_xdp_set.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"veth: Cannot set XDP when peer is detached\00", [53 x i8] zeroinitializer }, align 32
@veth_xdp_set.__msg.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"veth: Peer MTU is too large to set XDP\00", [57 x i8] zeroinitializer }, align 32
@veth_xdp_set.__msg.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"veth: XDP expects number of rx queues not less than peer tx queues\00", [61 x i8] zeroinitializer }, align 32
@veth_xdp_set.__msg.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"veth: Setup for XDP failed\00", [37 x i8] zeroinitializer }, align 32
@veth_peer_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@ethtool_stats_keys = internal constant { [1 x %struct.anon.198], [32 x i8] } { [1 x %struct.anon.198] [%struct.anon.198 { [32 x i8] c"peer_ifindex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_queue_%u_%.18s\00", [46 x i8] zeroinitializer }, align 32
@veth_rq_stats_desc = internal constant { [7 x %struct.veth_q_stat_desc], [36 x i8] } { [7 x %struct.veth_q_stat_desc] [%struct.veth_q_stat_desc { [32 x i8] c"xdp_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.veth_q_stat_desc { [32 x i8] c"xdp_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.veth_q_stat_desc { [32 x i8] c"drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.veth_q_stat_desc { [32 x i8] c"xdp_redirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.veth_q_stat_desc { [32 x i8] c"xdp_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.veth_q_stat_desc { [32 x i8] c"xdp_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.veth_q_stat_desc { [32 x i8] c"xdp_tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }], [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_queue_%u_%.18s\00", [46 x i8] zeroinitializer }, align 32
@veth_tq_stats_desc = internal constant { [2 x %struct.veth_q_stat_desc], [56 x i8] } { [2 x %struct.veth_q_stat_desc] [%struct.veth_q_stat_desc { [32 x i8] c"xdp_xmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.veth_q_stat_desc { [32 x i8] c"xdp_xmit_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }], [56 x i8] zeroinitializer }, align 32
@veth_get_ethtool_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@veth_set_channels.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@veth_set_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014Can't restore rx queues config %d -> %d %d\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"veth_set_channels\00", [46 x i8] zeroinitializer }, align 32
@veth_set_channels._entry_ptr = internal global ptr @veth_set_channels._entry, section ".printk_index", align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"veth%%d\00", [24 x i8] zeroinitializer }, align 32
@veth_dellink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@veth_get_link_net.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"veth_link_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1807, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1808, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"veth_policy\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1785, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"veth_netdev_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1528, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"veth_ethtool_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 227, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1336, i32 16 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1319, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1262, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 608, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 695, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 613, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 271, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"../include/net/xdp.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 200, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 53, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 108, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 723, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1160, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 495, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [28 x i8] c"../include/linux/ptr_ring.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 496, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1461, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1470, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1476, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1484, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 132, i32 25 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"ethtool_stats_keys\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 115, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 146, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"veth_rq_stats_desc\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 94, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 151, i32 25 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"veth_tq_stats_desc\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 106, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1235, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [22 x i8] c"../drivers/net/veth.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1670, i32 30 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias686, ptr @__UNIQUE_ID_description683, ptr @__UNIQUE_ID_file684, ptr @__UNIQUE_ID_license685, ptr @__exitcall_veth_exit, ptr @__initcall__kmod_veth__682_1835_veth_init6, ptr @veth_exit, ptr @veth_set_channels._entry, ptr @veth_set_channels._entry_ptr, ptr @veth_link_ops, ptr @.str, ptr @veth_policy, ptr @veth_netdev_ops, ptr @veth_ethtool_ops, ptr @veth_dev_init.__key, ptr @.str.1, ptr @veth_alloc_queues.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @ptr_ring_init.__key, ptr @.str.17, ptr @ptr_ring_init.__key.18, ptr @.str.19, ptr @veth_xdp_set.__msg, ptr @veth_xdp_set.__msg.20, ptr @veth_xdp_set.__msg.21, ptr @veth_xdp_set.__msg.22, ptr @.str.23, ptr @ethtool_stats_keys, ptr @.str.24, ptr @veth_rq_stats_desc, ptr @.str.25, ptr @veth_tq_stats_desc, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_link_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_alloc_queues.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptr_ring_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptr_ring_init.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_xdp_set.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_xdp_set.__msg.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_xdp_set.__msg.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_xdp_set.__msg.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_stats_keys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_rq_stats_desc to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_tq_stats_desc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @veth_set_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @veth_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @rtnl_link_unregister(ptr noundef nonnull @veth_link_ops) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_link_register(ptr noundef nonnull @veth_link_ops) #20
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @veth_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #20
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags, align 16
  %and = and i64 %1, -17336321
  %or5 = or i64 %and, 17334272
  store i64 %or5, ptr %priv_flags, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @veth_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %3 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @veth_ethtool_ops, ptr %ethtool_ops, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features, align 16
  %or8 = or i64 %5, 106748457062889
  store i64 %or8, ptr %features, align 16
  %and10 = and i64 %or8, -105553116266881
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 26
  %6 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %and10, ptr %vlan_features, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %7 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %8 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @veth_dev_free, ptr %priv_destructor, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %9 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65535, ptr %max_mtu, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %10 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 106748457058793, ptr %hw_features, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 27
  %11 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 106748457058793, ptr %hw_enc_features, align 16
  %mpls_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 28
  %12 = ptrtoint ptr %mpls_features to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 26845446152, ptr %mpls_features, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @veth_validate(ptr nocapture noundef readonly %tb, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end:                                           ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.return_crit_edge, label %is_valid_ether_addr.exit.if.end8_crit_edge

is_valid_ether_addr.exit.if.end8_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

is_valid_ether_addr.exit.return_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end8:                                          ; preds = %is_valid_ether_addr.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %arrayidx9 = getelementptr ptr, ptr %tb, i32 4
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.end8.if.end18_crit_edge, label %if.then11

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then11:                                        ; preds = %if.end8
  %add.ptr.i.i24 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i24, align 4
  %13 = add i32 %12, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65468, i32 %13)
  %14 = icmp ult i32 %13, -65468
  br i1 %14, label %if.then11.return_crit_edge, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then11.return_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end18:                                         ; preds = %if.then11.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  br label %return

return:                                           ; preds = %if.end18, %if.then11.return_crit_edge, %is_valid_ether_addr.exit.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %if.then.return_crit_edge ], [ -99, %is_valid_ether_addr.exit.return_crit_edge ], [ -22, %if.then11.return_crit_edge ], [ -99, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_newlink(ptr noundef %src_net, ptr noundef %dev, ptr noundef %tb, ptr noundef readonly %data, ptr noundef %extack) #2 align 64 {
entry:
  %addr.i256 = alloca [6 x i8], align 1
  %addr.i244 = alloca [6 x i8], align 1
  %addr.i = alloca [6 x i8], align 1
  %ifname = alloca [16 x i8], align 1
  %peer_tb = alloca [59 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ifname) #20
  %0 = call ptr @memset(ptr %ifname, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %peer_tb) #20
  %1 = call ptr @memset(ptr %peer_tb, i32 255, i32 236)
  %cmp.not = icmp eq ptr %data, null
  br i1 %cmp.not, label %entry.if.else22_crit_edge, label %land.lhs.true

entry.if.else22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else22

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %land.lhs.true.if.else22_crit_edge, label %if.then

land.lhs.true.if.else22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else22

if.then:                                          ; preds = %land.lhs.true
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %conv.i = zext i16 %5 to i32
  %sub = add nsw i32 %conv.i, -20
  %call5 = call i32 @rtnl_nla_parse_ifla(ptr noundef nonnull %peer_tb, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.cleanup169_crit_edge, label %if.end

if.then.cleanup169_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup169

if.end:                                           ; preds = %if.then
  %arrayidx.i = getelementptr inbounds ptr, ptr %peer_tb, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.if.end8.i_crit_edge, label %if.then.i

if.end.if.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8.i

if.then.i:                                        ; preds = %if.end
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %9)
  %cmp.not.i = icmp eq i16 %9, 10
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.cleanup169_crit_edge

if.then.i.cleanup169_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup169

if.end.i:                                         ; preds = %if.then.i
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.cleanup169_crit_edge

if.end.i.cleanup169_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup169

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 8
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %14 to i32
  %or.i.i.i = or i32 %11, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.cleanup169_crit_edge, label %is_valid_ether_addr.exit.i.if.end8.i_crit_edge

is_valid_ether_addr.exit.i.if.end8.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8.i

is_valid_ether_addr.exit.i.cleanup169_crit_edge:  ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup169

if.end8.i:                                        ; preds = %is_valid_ether_addr.exit.i.if.end8.i_crit_edge, %if.end.if.end8.i_crit_edge
  %arrayidx9.i = getelementptr inbounds ptr, ptr %peer_tb, i32 4
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %16, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end14_crit_edge, label %if.then11.i

if.end8.i.if.end14_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then11.i:                                      ; preds = %if.end8.i
  %add.ptr.i.i24.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i24.i, align 4
  %19 = add i32 %18, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65468, i32 %19)
  %20 = icmp ult i32 %19, -65468
  br i1 %20, label %if.then11.i.cleanup169_crit_edge, label %if.then11.i.if.end14_crit_edge

if.then11.i.if.end14_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then11.i.cleanup169_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup169

if.end14:                                         ; preds = %if.then11.i.if.end14_crit_edge, %if.end8.i.if.end14_crit_edge
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %if.end14.if.else22_crit_edge, label %land.lhs.true15

if.end14.if.else22_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else22

land.lhs.true15:                                  ; preds = %if.end14
  %arrayidx16 = getelementptr inbounds ptr, ptr %peer_tb, i32 3
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %land.lhs.true15.if.else22_crit_edge, label %if.then18

land.lhs.true15.if.else22_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else22

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #22
  %call21 = call i32 @nla_strscpy(ptr noundef nonnull %ifname, ptr noundef nonnull %22, i32 noundef 16) #20
  br label %if.end25

if.else22:                                        ; preds = %land.lhs.true15.if.else22_crit_edge, %if.end14.if.else22_crit_edge, %land.lhs.true.if.else22_crit_edge, %entry.if.else22_crit_edge
  %tobool.not286 = phi i1 [ false, %land.lhs.true15.if.else22_crit_edge ], [ true, %if.end14.if.else22_crit_edge ], [ true, %land.lhs.true.if.else22_crit_edge ], [ true, %entry.if.else22_crit_edge ]
  %ifmp.0284 = phi ptr [ %add.ptr.i, %land.lhs.true15.if.else22_crit_edge ], [ null, %if.end14.if.else22_crit_edge ], [ null, %land.lhs.true.if.else22_crit_edge ], [ null, %entry.if.else22_crit_edge ]
  %tbp.1282 = phi ptr [ %peer_tb, %land.lhs.true15.if.else22_crit_edge ], [ %peer_tb, %if.end14.if.else22_crit_edge ], [ %tb, %land.lhs.true.if.else22_crit_edge ], [ %tb, %entry.if.else22_crit_edge ]
  %call24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ifname, i32 noundef 16, ptr noundef nonnull @.str.28)
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then18
  %tobool.not285 = phi i1 [ false, %if.then18 ], [ %tobool.not286, %if.else22 ]
  %ifmp.0283 = phi ptr [ %add.ptr.i, %if.then18 ], [ %ifmp.0284, %if.else22 ]
  %tbp.1281 = phi ptr [ %peer_tb, %if.then18 ], [ %tbp.1282, %if.else22 ]
  %name_assign_type.0 = phi i8 [ 3, %if.then18 ], [ 1, %if.else22 ]
  %call26 = call ptr @rtnl_link_get_net(ptr noundef %src_net, ptr noundef %tbp.1281) #20
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  %23 = ptrtoint ptr %call26 to i32
  br label %cleanup169

if.end30:                                         ; preds = %if.end25
  %call32 = call ptr @rtnl_create_link(ptr noundef %call26, ptr noundef nonnull %ifname, i8 noundef zeroext %name_assign_type.0, ptr noundef nonnull @veth_link_ops, ptr noundef %tbp.1281, ptr noundef %extack) #20
  %cmp.i241 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end30
  %count.i = getelementptr inbounds %struct.net, ptr %call26, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !138
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #20
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #20, !srcloc !139
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i242, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !140

if.end5.i.i.i.i.put_net.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %put_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #20
  br label %put_net.exit

if.then.i242:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !141
  call void @__put_net(ptr noundef %call26) #20
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i242, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_net.exit_crit_edge
  %25 = ptrtoint ptr %call32 to i32
  br label %cleanup169

if.end36:                                         ; preds = %if.end30
  br i1 %tobool.not285, label %if.end47.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36
  %arrayidx38 = getelementptr ptr, ptr %tbp.1281, i32 1
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %27, null
  br i1 %tobool39.not, label %land.lhs.true43.critedge239, label %lor.lhs.false.land.lhs.true43_crit_edge

lor.lhs.false.land.lhs.true43_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true43

land.lhs.true43.critedge239:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #20
  %28 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #20
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %addr.i, align 1
  %31 = and i8 %30, -4
  %32 = or i8 %31, 2
  store i8 %32, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %call32, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #20
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 55
  %33 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #20
  br label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true43.critedge239, %lor.lhs.false.land.lhs.true43_crit_edge
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %34 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp44.not = icmp eq i32 %35, 0
  br i1 %cmp44.not, label %land.lhs.true43.if.end47_crit_edge, label %if.then45

land.lhs.true43.if.end47_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #22
  %ifi_index = getelementptr inbounds %struct.ifinfomsg, ptr %ifmp.0283, i32 0, i32 3
  %36 = ptrtoint ptr %ifi_index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ifi_index, align 4
  %ifindex46 = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 17
  %38 = ptrtoint ptr %ifindex46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ifindex46, align 4
  br label %if.end47

if.end47.critedge:                                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i244) #20
  %39 = call ptr @memset(ptr %addr.i244, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i244, i32 noundef 6) #20
  %40 = ptrtoint ptr %addr.i244 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %addr.i244, align 1
  %42 = and i8 %41, -4
  %43 = or i8 %42, 2
  store i8 %43, ptr %addr.i244, align 1
  call void @dev_addr_mod(ptr noundef %call32, i32 noundef 0, ptr noundef nonnull %addr.i244, i32 noundef 6) #20
  %addr_assign_type.i245 = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 55
  %44 = ptrtoint ptr %addr_assign_type.i245 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %addr_assign_type.i245, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i244) #20
  br label %if.end47

if.end47:                                         ; preds = %if.end47.critedge, %if.then45, %land.lhs.true43.if.end47_crit_edge
  %gso_max_size = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 137
  %45 = ptrtoint ptr %gso_max_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gso_max_size, align 8
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 137
  %47 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %46, ptr %gso_max_size.i, align 8
  %gso_max_segs = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 138
  %48 = ptrtoint ptr %gso_max_segs to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %gso_max_segs, align 4
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 138
  %50 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store volatile i16 %49, ptr %gso_max_segs.i, align 4
  %call48 = call i32 @register_netdevice(ptr noundef %call32) #20
  %count.i246 = getelementptr inbounds %struct.net, ptr %call26, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i247 = call zeroext i1 @__kasan_check_write(ptr noundef %count.i246, i32 noundef 4) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !138
  call void @llvm.prefetch.p0(ptr %count.i246, i32 1, i32 3, i32 1) #20
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i246, ptr %count.i246, i32 1, ptr elementtype(i32) %count.i246) #20, !srcloc !139
  %asmresult.i.i.i.i.i.i.i248 = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i248)
  %cmp.i.i.i.i249 = icmp eq i32 %asmresult.i.i.i.i.i.i.i248, 1
  br i1 %cmp.i.i.i.i249, label %if.then.i253, label %if.end5.i.i.i.i251

if.end5.i.i.i.i251:                               ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i248)
  %.not.i.i.i.i250 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i248, 0
  br i1 %.not.i.i.i.i250, label %if.end5.i.i.i.i251.put_net.exit255_crit_edge, label %if.then10.i.i.i.i252, !prof !140

if.end5.i.i.i.i251.put_net.exit255_crit_edge:     ; preds = %if.end5.i.i.i.i251
  call void @__sanitizer_cov_trace_pc() #22
  br label %put_net.exit255

if.then10.i.i.i.i252:                             ; preds = %if.end5.i.i.i.i251
  call void @__sanitizer_cov_trace_pc() #22
  call void @refcount_warn_saturate(ptr noundef %count.i246, i32 noundef 3) #20
  br label %put_net.exit255

if.then.i253:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !141
  call void @__put_net(ptr noundef %call26) #20
  br label %put_net.exit255

put_net.exit255:                                  ; preds = %if.then.i253, %if.then10.i.i.i.i252, %if.end5.i.i.i.i251.put_net.exit255_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %err_register_peer, label %if.end52

if.end52:                                         ; preds = %put_net.exit255
  %features.i = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 23
  %52 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features.i, align 16
  %and.i = and i64 %53, -16385
  store i64 %and.i, ptr %features.i, align 16
  %wanted_features.i = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 25
  %54 = ptrtoint ptr %wanted_features.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %wanted_features.i, align 32
  %and1.i = and i64 %55, -16385
  store i64 %and1.i, ptr %wanted_features.i, align 32
  call void @netdev_update_features(ptr noundef %call32) #20
  call void @netif_carrier_off(ptr noundef %call32) #20
  %call53 = call i32 @rtnl_configure_link(ptr noundef %call32, ptr noundef %ifmp.0283) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.err_configure_peer_crit_edge, label %if.end57

if.end52.err_configure_peer_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_configure_peer

if.end57:                                         ; preds = %if.end52
  %arrayidx58 = getelementptr ptr, ptr %tb, i32 1
  %56 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx58, align 4
  %cmp59 = icmp eq ptr %57, null
  br i1 %cmp59, label %if.then61, label %if.end57.if.end62_crit_edge

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end62

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i256) #20
  %58 = call ptr @memset(ptr %addr.i256, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i256, i32 noundef 6) #20
  %59 = ptrtoint ptr %addr.i256 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %addr.i256, align 1
  %61 = and i8 %60, -4
  %62 = or i8 %61, 2
  store i8 %62, ptr %addr.i256, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i256, i32 noundef 6) #20
  %addr_assign_type.i257 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %63 = ptrtoint ptr %addr_assign_type.i257 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %addr_assign_type.i257, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i256) #20
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end57.if.end62_crit_edge
  %arrayidx63 = getelementptr ptr, ptr %tb, i32 3
  %64 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %65, null
  br i1 %tobool64.not, label %if.else69, label %if.then65

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  %call68 = call i32 @nla_strscpy(ptr noundef %dev, ptr noundef nonnull %65, i32 noundef 16) #20
  br label %if.end73

if.else69:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  %call72 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dev, i32 noundef 16, ptr noundef nonnull @.str.28)
  br label %if.end73

if.end73:                                         ; preds = %if.else69, %if.then65
  %call74 = call i32 @register_netdevice(ptr noundef %dev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end73.err_configure_peer_crit_edge, label %if.end78

if.end73.err_configure_peer_crit_edge:            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_configure_peer

if.end78:                                         ; preds = %if.end73
  call void @netif_carrier_off(ptr noundef %dev) #20
  %add.ptr.i258 = getelementptr i8, ptr %dev, i32 2304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !142
  %66 = ptrtoint ptr %add.ptr.i258 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %call32, ptr %add.ptr.i258, align 8
  %arrayidx.i259 = getelementptr ptr, ptr %tb, i32 31
  %67 = ptrtoint ptr %arrayidx.i259 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i259, align 4
  %tobool.not.i260 = icmp eq ptr %68, null
  br i1 %tobool.not.i260, label %land.lhs.true.i, label %if.end78.if.end3.i_crit_edge

if.end78.if.end3.i_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.end78
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %69 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i261 = icmp ugt i32 %70, 1
  br i1 %cmp.i261, label %if.then.i262, label %land.lhs.true.i.if.end3.i_crit_edge

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i

if.then.i262:                                     ; preds = %land.lhs.true.i
  %call.i = call i32 @netif_set_real_num_tx_queues(ptr noundef %dev, i32 noundef 1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i262.if.end3.i_crit_edge, label %if.then.i262.err_queues_crit_edge

if.then.i262.err_queues_crit_edge:                ; preds = %if.then.i262
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_queues

if.then.i262.if.end3.i_crit_edge:                 ; preds = %if.then.i262
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i262.if.end3.i_crit_edge, %land.lhs.true.i.if.end3.i_crit_edge, %if.end78.if.end3.i_crit_edge
  %arrayidx4.i = getelementptr ptr, ptr %tb, i32 32
  %71 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %72, null
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %if.end3.i.if.end121_crit_edge

if.end3.i.if.end121_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end121

land.lhs.true6.i:                                 ; preds = %if.end3.i
  %num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 88
  %73 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp7.i = icmp ugt i32 %74, 1
  br i1 %cmp7.i, label %if.then8.i, label %land.lhs.true6.i.if.end121_crit_edge

land.lhs.true6.i.if.end121_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end121

if.then8.i:                                       ; preds = %land.lhs.true6.i
  %call9.i = call i32 @netif_set_real_num_rx_queues(ptr noundef %dev, i32 noundef 1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i263 = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i263, label %if.then8.i.if.end121_crit_edge, label %if.then8.i.err_queues_crit_edge

if.then8.i.err_queues_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_queues

if.then8.i.if.end121_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end121

if.end121:                                        ; preds = %if.then8.i.if.end121_crit_edge, %land.lhs.true6.i.if.end121_crit_edge, %if.end3.i.if.end121_crit_edge
  %add.ptr.i265 = getelementptr i8, ptr %call32, i32 2304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !143
  %75 = ptrtoint ptr %add.ptr.i265 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %dev, ptr %add.ptr.i265, align 8
  %call165 = call fastcc i32 @veth_init_queues(ptr noundef %call32, ptr noundef %tb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %if.end121.err_queues_crit_edge

if.end121.err_queues_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_queues

if.end168:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #22
  %features.i266 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %76 = ptrtoint ptr %features.i266 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %features.i266, align 16
  %and.i267 = and i64 %77, -16385
  store i64 %and.i267, ptr %features.i266, align 16
  %wanted_features.i268 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 25
  %78 = ptrtoint ptr %wanted_features.i268 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %wanted_features.i268, align 32
  %and1.i269 = and i64 %79, -16385
  store i64 %and1.i269, ptr %wanted_features.i268, align 32
  call void @netdev_update_features(ptr noundef %dev) #20
  br label %cleanup169

err_queues:                                       ; preds = %if.end121.err_queues_crit_edge, %if.then8.i.err_queues_crit_edge, %if.then.i262.err_queues_crit_edge
  %err.0 = phi i32 [ %call165, %if.end121.err_queues_crit_edge ], [ %call9.i, %if.then8.i.err_queues_crit_edge ], [ %call.i, %if.then.i262.err_queues_crit_edge ]
  call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #20
  br label %err_configure_peer

err_configure_peer:                               ; preds = %err_queues, %if.end73.err_configure_peer_crit_edge, %if.end52.err_configure_peer_crit_edge
  %err.1 = phi i32 [ %call53, %if.end52.err_configure_peer_crit_edge ], [ %call74, %if.end73.err_configure_peer_crit_edge ], [ %err.0, %err_queues ]
  call void @unregister_netdevice_queue(ptr noundef %call32, ptr noundef null) #20
  br label %cleanup169

err_register_peer:                                ; preds = %put_net.exit255
  call void @__sanitizer_cov_trace_pc() #22
  call void @free_netdev(ptr noundef %call32) #20
  br label %cleanup169

cleanup169:                                       ; preds = %err_register_peer, %err_configure_peer, %if.end168, %put_net.exit, %if.then28, %if.then11.i.cleanup169_crit_edge, %is_valid_ether_addr.exit.i.cleanup169_crit_edge, %if.end.i.cleanup169_crit_edge, %if.then.i.cleanup169_crit_edge, %if.then.cleanup169_crit_edge
  %retval.1 = phi i32 [ %23, %if.then28 ], [ %25, %put_net.exit ], [ %call48, %err_register_peer ], [ %err.1, %err_configure_peer ], [ 0, %if.end168 ], [ %call5, %if.then.cleanup169_crit_edge ], [ -99, %if.end.i.cleanup169_crit_edge ], [ -22, %if.then11.i.cleanup169_crit_edge ], [ -99, %is_valid_ether_addr.exit.i.cleanup169_crit_edge ], [ -22, %if.then.i.cleanup169_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %peer_tb) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ifname) #20
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @veth_dellink(ptr noundef %dev, ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @veth_dellink.__warned, align 1
  br i1 %.b42, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_dellink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1769, ptr noundef nonnull @.str.4) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  store volatile ptr null, ptr %add.ptr.i, align 8
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #20
  %tobool19.not = icmp eq ptr %1, null
  br i1 %tobool19.not, label %do.end.if.end35_crit_edge, label %if.then20

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i43 = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %add.ptr.i43, align 8
  tail call void @unregister_netdevice_queue(ptr noundef nonnull %1, ptr noundef %head) #20
  br label %if.end35

if.end35:                                         ; preds = %if.then20, %do.end.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_get_num_queues() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #20
  %1 = tail call i32 @llvm.smin.i32(i32 %call4.i.i, i32 4096)
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @veth_get_link_net(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @veth_get_link_net.__warned, align 1
  br i1 %.b11, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_get_link_net.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1792, ptr noundef nonnull @.str.4) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool6.not = icmp eq ptr %1, null
  %dev. = select i1 %tobool6.not, ptr %dev, ptr %1
  %cond.in = getelementptr inbounds %struct.net_device, ptr %dev., i32 0, i32 127
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @veth_dev_free(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rq.i = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq.i, align 4
  tail call void @kfree(ptr noundef %1) #20
  %2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 64
  tail call void @free_percpu(ptr noundef %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_dev_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 48, i32 noundef 16, i32 noundef 3264) #23
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call124 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call124, i32 %0)
  %cmp25 = icmp ult i32 %call124, %0
  br i1 %cmp25, label %for.body.lr.ph, label %for.cond.preheader.if.end9_crit_edge

for.cond.preheader.if.end9_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %call to i32
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 64
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call126 = phi i32 [ %call124, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call126
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_lstats, ptr %6, i32 0, i32 2
  %dep_map.i = getelementptr inbounds %struct.pcpu_lstats, ptr %6, i32 0, i32 2, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @veth_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %7 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %syncp, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call126, ptr noundef nonnull @__cpu_possible_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.end9:                                          ; preds = %for.body.if.end9_crit_edge, %for.cond.preheader.if.end9_crit_edge
  %9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %9, align 64
  %num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 88
  %11 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_rx_queues.i, align 8
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 896) #20
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !144

kcalloc.exit.thread.i:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  %rq19.i = getelementptr i8, ptr %dev, i32 2324
  %15 = ptrtoint ptr %rq19.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rq19.i, align 4
  br label %if.then12

if.end7.i.i.i:                                    ; preds = %if.end9
  %16 = extractvalue { i32, i1 } %13, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #23
  %rq.i = getelementptr i8, ptr %dev, i32 2324
  %17 = ptrtoint ptr %rq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i.i, ptr %rq.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.if.then12_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.if.then12_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then12

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %18 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21.not.i = icmp eq i32 %19, 0
  br i1 %cmp21.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rq.i, align 4
  %dev5.i = getelementptr %struct.veth_rq, ptr %21, i32 %i.022.i, i32 2
  %22 = ptrtoint ptr %dev5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev5.i, align 4
  %23 = load ptr, ptr %rq.i, align 4
  %syncp.i = getelementptr %struct.veth_rq, ptr %23, i32 %i.022.i, i32 5, i32 1
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp.i, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @veth_alloc_queues.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %24 = ptrtoint ptr %syncp.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %syncp.i, align 4
  %inc.i = add nuw i32 %i.022.i, 1
  %25 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_rx_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %26
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

if.then12:                                        ; preds = %if.end7.i.i.i.if.then12_crit_edge, %kcalloc.exit.thread.i
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %9, align 64
  tail call void @free_percpu(ptr noundef %28) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %for.body.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ -12, %if.then12 ], [ -12, %if.end.thread ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b38 = load i1, ptr @veth_open.__warned, align 1
  br i1 %.b38, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_open.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1262, ptr noundef nonnull @.str.4) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %_xdp_prog = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %_xdp_prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_xdp_prog, align 8
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = tail call fastcc i32 @veth_enable_xdp(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end22_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.else:                                          ; preds = %if.end8
  %wanted_features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 25
  %4 = ptrtoint ptr %wanted_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wanted_features.i, align 32
  %and.i = and i64 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else.if.end22_crit_edge, label %if.then16

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.then16:                                        ; preds = %if.else
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %6 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %real_num_rx_queues.i, align 4
  %call.i = tail call fastcc i32 @veth_napi_enable_range(ptr noundef %dev, i32 noundef 0, i32 noundef %7) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.then16.if.end22_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.then10.if.end22_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @netif_carrier_on(ptr noundef %dev) #20
  tail call void @netif_carrier_on(ptr noundef nonnull %1) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %do.end.cleanup_crit_edge ], [ %call11, %if.then10.cleanup_crit_edge ], [ %call.i, %if.then16.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @veth_close.__warned, align 1
  br i1 %.b21, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_close.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1289, ptr noundef nonnull @.str.4) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void @netif_carrier_off(ptr noundef %dev) #20
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @netif_carrier_off(ptr noundef nonnull %1) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  %_xdp_prog = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %_xdp_prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_xdp_prog, align 8
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @veth_disable_xdp(ptr noundef %dev)
  br label %if.end14

if.else:                                          ; preds = %if.end8
  %wanted_features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 25
  %4 = ptrtoint ptr %wanted_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wanted_features.i, align 32
  %and.i = and i64 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else.if.end14_crit_edge, label %if.then12

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then12:                                        ; preds = %if.else
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %6 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %real_num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp64.i.i = icmp sgt i32 %7, 0
  br i1 %cmp64.i.i, label %for.body.lr.ph.i.i, label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @synchronize_net() #20
  br label %if.end14

for.body.lr.ph.i.i:                               ; preds = %if.then12
  %rq1.i.i = getelementptr i8, ptr %dev, i32 2324
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.065.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %8 = ptrtoint ptr %rq1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.veth_rq, ptr %9, i32 %i.065.i.i
  %napi.i.i = getelementptr %struct.veth_rq, ptr %9, i32 %i.065.i.i, i32 1
  %10 = ptrtoint ptr %napi.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %napi.i.i, align 32
  tail call void @napi_disable(ptr noundef %arrayidx.i.i) #20
  tail call void @__netif_napi_del(ptr noundef %arrayidx.i.i) #20
  %inc.i.i = add nuw nsw i32 %i.065.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.body41.lr.ph.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.body41.lr.ph.i.i:                             ; preds = %for.body.i.i
  tail call void @synchronize_net() #20
  br label %for.body41.i.i

for.body41.i.i:                                   ; preds = %for.body41.i.i.for.body41.i.i_crit_edge, %for.body41.lr.ph.i.i
  %i.167.i.i = phi i32 [ 0, %for.body41.lr.ph.i.i ], [ %inc46.i.i, %for.body41.i.i.for.body41.i.i_crit_edge ]
  %11 = ptrtoint ptr %rq1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq1.i.i, align 4
  %rx_notify_masked.i.i = getelementptr %struct.veth_rq, ptr %12, i32 %i.167.i.i, i32 6
  %13 = ptrtoint ptr %rx_notify_masked.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rx_notify_masked.i.i, align 32
  %xdp_ring.i.i = getelementptr %struct.veth_rq, ptr %12, i32 %i.167.i.i, i32 8
  tail call fastcc void @ptr_ring_cleanup(ptr noundef %xdp_ring.i.i) #20
  %inc46.i.i = add nuw nsw i32 %i.167.i.i, 1
  %exitcond68.not.i.i = icmp eq i32 %inc46.i.i, %7
  br i1 %exitcond68.not.i.i, label %for.body41.i.i.if.end14_crit_edge, label %for.body41.i.i.for.body41.i.i_crit_edge

for.body41.i.i.for.body41.i.i_crit_edge:          ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body41.i.i

for.body41.i.i.if.end14_crit_edge:                ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.end14:                                         ; preds = %for.body41.i.i.if.end14_crit_edge, %for.end.thread.i.i, %if.else.if.end14_crit_edge, %if.then10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !145
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b69 = load i1, ptr @veth_xmit.__warned, align 1
  br i1 %.b69, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 322, ptr noundef nonnull @.str.5) #20
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.then14, label %if.end15, !prof !144

if.then14:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #20
  br label %if.end44

if.end15:                                         ; preds = %do.end8
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %8 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %9 to i32
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 89
  %10 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %real_num_rx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp = icmp ugt i32 %11, %conv
  br i1 %cmp, label %if.then19, label %if.end15.if.end29_crit_edge

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.then19:                                        ; preds = %if.end15
  %rq20 = getelementptr i8, ptr %7, i32 2324
  %12 = ptrtoint ptr %rq20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq20, align 4
  %arrayidx = getelementptr %struct.veth_rq, ptr %13, i32 %conv
  %napi = getelementptr %struct.veth_rq, ptr %13, i32 %conv, i32 1
  %14 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %napi, align 32
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.then19.if.end29_crit_edge, label %land.rhs

if.then19.if.end29_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

land.rhs:                                         ; preds = %if.then19
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %16 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features.i, align 16
  %and.i = and i64 %17, 1900544
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i71 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i71, label %land.rhs.if.end29_crit_edge, label %lor.rhs.i

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

lor.rhs.i:                                        ; preds = %land.rhs
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %destructor.i, align 4
  %cmp.i = icmp eq ptr %19, @sock_wfree
  br i1 %cmp.i, label %land.rhs.i, label %lor.rhs.i.if.end29_crit_edge

lor.rhs.i.if.end29_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

land.rhs.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  %features1.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 23
  %20 = ptrtoint ptr %features1.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %features1.i, align 16
  %and2.i = and i64 %21, 720575940379279360
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.i = icmp ne i64 %and2.i, 0
  br label %if.end29

if.end29:                                         ; preds = %land.rhs.i, %lor.rhs.i.if.end29_crit_edge, %land.rhs.if.end29_crit_edge, %if.then19.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %use_napi.0.off0 = phi i1 [ false, %if.end15.if.end29_crit_edge ], [ false, %if.then19.if.end29_crit_edge ], [ true, %land.rhs.if.end29_crit_edge ], [ false, %lor.rhs.i.if.end29_crit_edge ], [ %tobool3.i, %land.rhs.i ]
  %rq.0 = phi ptr [ null, %if.end15.if.end29_crit_edge ], [ %arrayidx, %if.then19.if.end29_crit_edge ], [ %arrayidx, %land.rhs.if.end29_crit_edge ], [ %arrayidx, %lor.rhs.i.if.end29_crit_edge ], [ %arrayidx, %land.rhs.i ]
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #20
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %22 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx_flags.i, align 1
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i72 = icmp eq i8 %26, 0
  br i1 %tobool.not.i72, label %if.end29.skb_tx_timestamp.exit_crit_edge, label %if.then.i73

if.end29.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_tx_timestamp.exit

if.then.i73:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #20
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i73, %if.end29.skb_tx_timestamp.exit_crit_edge
  %call.i74 = tail call i32 @__dev_forward_skb(ptr noundef nonnull %7, ptr noundef %skb) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %cond.false.i, label %skb_tx_timestamp.exit.if.end44_crit_edge

skb_tx_timestamp.exit.if.end44_crit_edge:         ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end44

cond.false.i:                                     ; preds = %skb_tx_timestamp.exit
  br i1 %use_napi.0.off0, label %cond.true2.i, label %veth_forward_skb.exit

cond.true2.i:                                     ; preds = %cond.false.i
  %xdp_ring.i.i = getelementptr inbounds %struct.veth_rq, ptr %rq.0, i32 0, i32 8
  %producer_lock.i.i.i = getelementptr inbounds %struct.veth_rq, ptr %rq.0, i32 0, i32 8, i32 1
  tail call void @_raw_spin_lock(ptr noundef %producer_lock.i.i.i) #20
  %size.i.i.i.i = getelementptr inbounds %struct.veth_rq, ptr %rq.0, i32 0, i32 8, i32 7
  %27 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i.i, label %cond.true2.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.i.i, !prof !144

cond.true2.i.if.then.i.i_crit_edge:               ; preds = %cond.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %cond.true2.i
  %queue.i.i.i.i = getelementptr inbounds %struct.veth_rq, ptr %rq.0, i32 0, i32 8, i32 9
  %29 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue.i.i.i.i, align 8
  %31 = ptrtoint ptr %xdp_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xdp_ring.i.i, align 128
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i.i.i.i, label %do.end.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.then.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i

do.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !146
  %35 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue.i.i.i.i, align 8
  %37 = ptrtoint ptr %xdp_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xdp_ring.i.i, align 128
  %inc.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i, ptr %xdp_ring.i.i, align 128
  %arrayidx13.i.i.i.i = getelementptr ptr, ptr %36, i32 %38
  %39 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %skb, ptr %arrayidx13.i.i.i.i, align 4
  %40 = load i32, ptr %xdp_ring.i.i, align 128
  %41 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp.not.i.i.i.i = icmp slt i32 %40, %42
  br i1 %cmp.not.i.i.i.i, label %do.end.i.i.i.i.if.end44.thread_crit_edge, label %if.then24.i.i.i.i, !prof !140

do.end.i.i.i.i.if.end44.thread_crit_edge:         ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end44.thread

if.then24.i.i.i.i:                                ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %43 = ptrtoint ptr %xdp_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %xdp_ring.i.i, align 128
  br label %if.end44.thread

if.end44.thread:                                  ; preds = %if.then24.i.i.i.i, %do.end.i.i.i.i.if.end44.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %producer_lock.i.i.i) #20
  br label %if.then46

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.i.i.if.then.i.i_crit_edge, %cond.true2.i.if.then.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %producer_lock.i.i.i) #20
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #20
  br label %if.end44

veth_forward_skb.exit:                            ; preds = %cond.false.i
  %call5.i = tail call i32 @netif_rx(ptr noundef %skb) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp32 = icmp eq i32 %call5.i, 0
  br i1 %cmp32, label %if.end44.thread97, label %veth_forward_skb.exit.if.end44_crit_edge, !prof !140

veth_forward_skb.exit.if.end44_crit_edge:         ; preds = %veth_forward_skb.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end44

if.end44.thread97:                                ; preds = %veth_forward_skb.exit
  call void @__sanitizer_cov_trace_pc() #22
  %44 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 64
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %53, %47
  %54 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_lstats, ptr %54, i32 0, i32 2
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #20
  %bytes.i = getelementptr inbounds %struct.pcpu_lstats, ptr %54, i32 0, i32 1
  %conv.i.i = zext i32 %1 to i64
  %55 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %bytes.i, align 8
  %add.i.i = add i64 %56, %conv.i.i
  store i64 %add.i.i, ptr %bytes.i, align 8
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %54, align 8
  %inc.i.i = add i64 %58, 1
  store i64 %inc.i.i, ptr %54, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_lstats, ptr %54, i32 0, i32 2, i32 0, i32 1
  %59 = tail call ptr @llvm.returnaddress(i32 0) #20
  %60 = ptrtoint ptr %59 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %60) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !147
  %61 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i76 = add i32 %62, 1
  store i32 %inc.i.i.i.i76, ptr %syncp.i, align 4
  br label %if.end47

if.end44:                                         ; preds = %veth_forward_skb.exit.if.end44_crit_edge, %if.then.i.i, %skb_tx_timestamp.exit.if.end44_crit_edge, %if.then14
  %use_napi.1.off0 = phi i1 [ false, %if.then14 ], [ false, %veth_forward_skb.exit.if.end44_crit_edge ], [ %use_napi.0.off0, %skb_tx_timestamp.exit.if.end44_crit_edge ], [ true, %if.then.i.i ]
  %rq.1 = phi ptr [ null, %if.then14 ], [ %rq.0, %veth_forward_skb.exit.if.end44_crit_edge ], [ %rq.0, %skb_tx_timestamp.exit.if.end44_crit_edge ], [ %rq.0, %if.then.i.i ]
  %dropped = getelementptr i8, ptr %dev, i32 2312
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dropped, i32 noundef 8) #20
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %dropped) #20
  br i1 %use_napi.1.off0, label %if.end44.if.then46_crit_edge, label %if.end44.if.end47_crit_edge

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47

if.end44.if.then46_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then46

if.then46:                                        ; preds = %if.end44.if.then46_crit_edge, %if.end44.thread
  %rq.296 = phi ptr [ %rq.0, %if.end44.thread ], [ %rq.1, %if.end44.if.then46_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !148
  %rx_notify_masked.i = getelementptr inbounds %struct.veth_rq, ptr %rq.296, i32 0, i32 6
  %63 = ptrtoint ptr %rx_notify_masked.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load volatile i8, ptr %rx_notify_masked.i, align 32, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i77 = icmp eq i8 %64, 0
  br i1 %tobool.not.i77, label %land.lhs.true.i79, label %if.then46.if.end47_crit_edge

if.then46.if.end47_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47

land.lhs.true.i79:                                ; preds = %if.then46
  %call.i78 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %rq.296) #20
  br i1 %call.i78, label %do.body9.i, label %land.lhs.true.i79.if.end47_crit_edge

land.lhs.true.i79.if.end47_crit_edge:             ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47

do.body9.i:                                       ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #22
  %65 = ptrtoint ptr %rx_notify_masked.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store volatile i8 1, ptr %rx_notify_masked.i, align 32
  tail call void @__napi_schedule(ptr noundef %rq.296) #20
  br label %if.end47

if.end47:                                         ; preds = %do.body9.i, %land.lhs.true.i79.if.end47_crit_edge, %if.then46.if.end47_crit_edge, %if.end44.if.end47_crit_edge, %if.end44.thread97
  %call.i80 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i80, label %if.end47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i83

if.end47.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i83:                                ; preds = %if.end47
  %call1.i81 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, label %if.then.i86

land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i86, %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, %if.end47.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %66 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i87 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %sub.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i88, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @passthru_features_check(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @veth_set_multicast_list(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @veth_get_stats64(ptr noundef %dev, ptr nocapture noundef %tot) #2 align 64 {
entry:
  %packets = alloca i64, align 8
  %bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packets) #20
  %0 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %packets, align 8, !annotation !151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #20
  %1 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %bytes, align 8, !annotation !151
  call void @dev_lstats_read(ptr noundef %dev, ptr noundef nonnull %packets, ptr noundef nonnull %bytes) #20
  %dropped.i = getelementptr i8, ptr %dev, i32 2312
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dropped.i, i32 noundef 8) #20
  %call.i.i = call i64 @generic_atomic64_read(ptr noundef %dropped.i) #20
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %tot, i32 0, i32 7
  %2 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i.i, ptr %tx_dropped, align 8
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %bytes, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %tot, i32 0, i32 3
  %5 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %tx_bytes, align 8
  %6 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %packets, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %tot, i32 0, i32 1
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %tx_packets, align 8
  %num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 88
  %9 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp47.not.i = icmp eq i32 %10, 0
  br i1 %cmp47.not.i, label %entry.veth_stats_rx.exit_crit_edge, label %for.body.lr.ph.i

entry.veth_stats_rx.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_stats_rx.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %rq.i = getelementptr i8, ptr %dev, i32 2324
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rx.sroa.0.0 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add24.i, %do.end.i.for.body.i_crit_edge ]
  %rx.sroa.10.0 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add20.i, %do.end.i.for.body.i_crit_edge ]
  %rx.sroa.16.0 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add22.i, %do.end.i.for.body.i_crit_edge ]
  %rx.sroa.22100.0 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add18.i, %do.end.i.for.body.i_crit_edge ]
  %rx.sroa.30104.0 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %do.end.i.for.body.i_crit_edge ]
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq.i, align 4
  %stats3.i = getelementptr %struct.veth_rq, ptr %12, i32 %i.048.i, i32 5
  %syncp.i = getelementptr %struct.veth_rq, ptr %12, i32 %i.048.i, i32 5, i32 1
  %peer_tq_xdp_xmit_err5.i = getelementptr inbounds %struct.veth_stats, ptr %stats3.i, i32 0, i32 8
  %xdp_tx_err7.i = getelementptr inbounds %struct.veth_stats, ptr %stats3.i, i32 0, i32 6
  %xdp_packets9.i = getelementptr inbounds %struct.veth_stats, ptr %stats3.i, i32 0, i32 1
  %xdp_bytes11.i = getelementptr inbounds %struct.veth_stats, ptr %stats3.i, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body.i
  %call4.i = call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp.i) #20
  %13 = ptrtoint ptr %peer_tq_xdp_xmit_err5.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %peer_tq_xdp_xmit_err5.i, align 8
  %15 = ptrtoint ptr %xdp_tx_err7.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %xdp_tx_err7.i, align 8
  %17 = ptrtoint ptr %xdp_packets9.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %xdp_packets9.i, align 8
  %19 = ptrtoint ptr %xdp_bytes11.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %xdp_bytes11.i, align 8
  %21 = ptrtoint ptr %stats3.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %stats3.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !152
  %23 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %syncp.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq i32 %24, %call4.i
  br i1 %cmp.i.i.i.i.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %add.i = add i64 %14, %rx.sroa.30104.0
  %add18.i = add i64 %16, %rx.sroa.22100.0
  %add20.i = add i64 %18, %rx.sroa.10.0
  %add22.i = add i64 %20, %rx.sroa.16.0
  %add24.i = add i64 %22, %rx.sroa.0.0
  %inc.i = add nuw i32 %i.048.i, 1
  %25 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_rx_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %26
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %veth_stats_rx.exit.loopexit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

veth_stats_rx.exit.loopexit:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %27 = add i64 %add.i, %add24.i
  br label %veth_stats_rx.exit

veth_stats_rx.exit:                               ; preds = %veth_stats_rx.exit.loopexit, %entry.veth_stats_rx.exit_crit_edge
  %rx.sroa.10.1 = phi i64 [ 0, %entry.veth_stats_rx.exit_crit_edge ], [ %add20.i, %veth_stats_rx.exit.loopexit ]
  %rx.sroa.16.1 = phi i64 [ 0, %entry.veth_stats_rx.exit_crit_edge ], [ %add22.i, %veth_stats_rx.exit.loopexit ]
  %rx.sroa.22100.1 = phi i64 [ 0, %entry.veth_stats_rx.exit_crit_edge ], [ %add18.i, %veth_stats_rx.exit.loopexit ]
  %add3 = phi i64 [ 0, %entry.veth_stats_rx.exit_crit_edge ], [ %27, %veth_stats_rx.exit.loopexit ]
  %28 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tx_dropped, align 8
  %add = add i64 %29, %rx.sroa.22100.1
  store i64 %add, ptr %tx_dropped, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %tot, i32 0, i32 6
  %30 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add3, ptr %rx_dropped, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %tot, i32 0, i32 2
  %31 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %rx.sroa.16.1, ptr %rx_bytes, align 8
  %32 = ptrtoint ptr %tot to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %rx.sroa.10.1, ptr %tot, align 8
  %33 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !145
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %veth_stats_rx.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

veth_stats_rx.exit.rcu_read_lock.exit_crit_edge:  ; preds = %veth_stats_rx.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %veth_stats_rx.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %veth_stats_rx.exit.rcu_read_lock.exit_crit_edge
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %add.ptr.i, align 8
  %call6 = call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @veth_get_stats64.__warned, align 1
  br i1 %.b50, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_get_stats64.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 416, ptr noundef nonnull @.str.5) #20
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %38, null
  br i1 %tobool14.not, label %do.end12.if.end33_crit_edge, label %if.then15

do.end12.if.end33_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then15:                                        ; preds = %do.end12
  call void @dev_lstats_read(ptr noundef nonnull %38, ptr noundef nonnull %packets, ptr noundef nonnull %bytes) #20
  %dropped.i51 = getelementptr i8, ptr %38, i32 2312
  %call.i.i.i52 = call zeroext i1 @__kasan_check_read(ptr noundef %dropped.i51, i32 noundef 8) #20
  %call.i.i53 = call i64 @generic_atomic64_read(ptr noundef %dropped.i51) #20
  %39 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %bytes, align 8
  %41 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rx_bytes, align 8
  %add18 = add i64 %42, %40
  store i64 %add18, ptr %rx_bytes, align 8
  %43 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %packets, align 8
  %45 = ptrtoint ptr %tot to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tot, align 8
  %add20 = add i64 %46, %44
  store i64 %add20, ptr %tot, align 8
  %num_rx_queues.i58 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 88
  %47 = ptrtoint ptr %num_rx_queues.i58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_rx_queues.i58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp47.not.i59 = icmp eq i32 %48, 0
  br i1 %cmp47.not.i59, label %if.then15.veth_stats_rx.exit81_crit_edge, label %for.body.lr.ph.i61

if.then15.veth_stats_rx.exit81_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_stats_rx.exit81

for.body.lr.ph.i61:                               ; preds = %if.then15
  %rq.i60 = getelementptr i8, ptr %38, i32 2324
  br label %for.body.i69

for.body.i69:                                     ; preds = %do.end.i80.for.body.i69_crit_edge, %for.body.lr.ph.i61
  %rx.sroa.10.2 = phi i64 [ 0, %for.body.lr.ph.i61 ], [ %add20.i75, %do.end.i80.for.body.i69_crit_edge ]
  %rx.sroa.16.2 = phi i64 [ 0, %for.body.lr.ph.i61 ], [ %add22.i76, %do.end.i80.for.body.i69_crit_edge ]
  %rx.sroa.22100.2 = phi i64 [ 0, %for.body.lr.ph.i61 ], [ %add18.i74, %do.end.i80.for.body.i69_crit_edge ]
  %rx.sroa.30104.2 = phi i64 [ 0, %for.body.lr.ph.i61 ], [ %add.i73, %do.end.i80.for.body.i69_crit_edge ]
  %i.048.i62 = phi i32 [ 0, %for.body.lr.ph.i61 ], [ %inc.i78, %do.end.i80.for.body.i69_crit_edge ]
  %49 = ptrtoint ptr %rq.i60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rq.i60, align 4
  %stats3.i63 = getelementptr %struct.veth_rq, ptr %50, i32 %i.048.i62, i32 5
  %syncp.i64 = getelementptr %struct.veth_rq, ptr %50, i32 %i.048.i62, i32 5, i32 1
  %peer_tq_xdp_xmit_err5.i65 = getelementptr inbounds %struct.veth_stats, ptr %stats3.i63, i32 0, i32 8
  %xdp_tx_err7.i66 = getelementptr inbounds %struct.veth_stats, ptr %stats3.i63, i32 0, i32 6
  %xdp_packets9.i67 = getelementptr inbounds %struct.veth_stats, ptr %stats3.i63, i32 0, i32 1
  %xdp_bytes11.i68 = getelementptr inbounds %struct.veth_stats, ptr %stats3.i63, i32 0, i32 2
  br label %do.body.i72

do.body.i72:                                      ; preds = %do.body.i72.do.body.i72_crit_edge, %for.body.i69
  %call4.i70 = call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp.i64) #20
  %51 = ptrtoint ptr %peer_tq_xdp_xmit_err5.i65 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %peer_tq_xdp_xmit_err5.i65, align 8
  %53 = ptrtoint ptr %xdp_tx_err7.i66 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %xdp_tx_err7.i66, align 8
  %55 = ptrtoint ptr %xdp_packets9.i67 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %xdp_packets9.i67, align 8
  %57 = ptrtoint ptr %xdp_bytes11.i68 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %xdp_bytes11.i68, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !152
  %59 = ptrtoint ptr %syncp.i64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %syncp.i64, align 4
  %cmp.i.i.i.i.not.i71 = icmp eq i32 %60, %call4.i70
  br i1 %cmp.i.i.i.i.not.i71, label %do.end.i80, label %do.body.i72.do.body.i72_crit_edge

do.body.i72.do.body.i72_crit_edge:                ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i72

do.end.i80:                                       ; preds = %do.body.i72
  %add.i73 = add i64 %52, %rx.sroa.30104.2
  %add18.i74 = add i64 %54, %rx.sroa.22100.2
  %add20.i75 = add i64 %56, %rx.sroa.10.2
  %add22.i76 = add i64 %58, %rx.sroa.16.2
  %inc.i78 = add nuw i32 %i.048.i62, 1
  %61 = ptrtoint ptr %num_rx_queues.i58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_rx_queues.i58, align 8
  %cmp.i79 = icmp ult i32 %inc.i78, %62
  br i1 %cmp.i79, label %do.end.i80.for.body.i69_crit_edge, label %do.end.i80.veth_stats_rx.exit81_crit_edge

do.end.i80.veth_stats_rx.exit81_crit_edge:        ; preds = %do.end.i80
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_stats_rx.exit81

do.end.i80.for.body.i69_crit_edge:                ; preds = %do.end.i80
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i69

veth_stats_rx.exit81:                             ; preds = %do.end.i80.veth_stats_rx.exit81_crit_edge, %if.then15.veth_stats_rx.exit81_crit_edge
  %rx.sroa.10.3 = phi i64 [ 0, %if.then15.veth_stats_rx.exit81_crit_edge ], [ %add20.i75, %do.end.i80.veth_stats_rx.exit81_crit_edge ]
  %rx.sroa.16.3 = phi i64 [ 0, %if.then15.veth_stats_rx.exit81_crit_edge ], [ %add22.i76, %do.end.i80.veth_stats_rx.exit81_crit_edge ]
  %rx.sroa.22100.3 = phi i64 [ 0, %if.then15.veth_stats_rx.exit81_crit_edge ], [ %add18.i74, %do.end.i80.veth_stats_rx.exit81_crit_edge ]
  %rx.sroa.30104.3 = phi i64 [ 0, %if.then15.veth_stats_rx.exit81_crit_edge ], [ %add.i73, %do.end.i80.veth_stats_rx.exit81_crit_edge ]
  %63 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %tx_dropped, align 8
  %add23 = add i64 %64, %rx.sroa.30104.3
  store i64 %add23, ptr %tx_dropped, align 8
  %65 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %rx_dropped, align 8
  %add26 = add i64 %66, %rx.sroa.22100.3
  store i64 %add26, ptr %rx_dropped, align 8
  %67 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %tx_bytes, align 8
  %add29 = add i64 %68, %rx.sroa.16.3
  store i64 %add29, ptr %tx_bytes, align 8
  %69 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %tx_packets, align 8
  %add32 = add i64 %70, %rx.sroa.10.3
  store i64 %add32, ptr %tx_packets, align 8
  br label %if.end33

if.end33:                                         ; preds = %veth_stats_rx.exit81, %do.end12.if.end33_crit_edge
  %call.i82 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i82, label %if.end33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i85

if.end33.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i85:                                ; preds = %if.end33
  %call1.i83 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %land.lhs.true.i85.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i87

land.lhs.true.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i87:                               ; preds = %land.lhs.true.i85
  %.b4.i86 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i86, label %land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge, label %if.then.i88

land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i88:                                      ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i88, %land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i85.rcu_read_unlock.exit_crit_edge, %if.end33.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %71 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i89 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i89 to ptr
  %preempt_count.i.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i90, align 4
  %sub.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i90, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @veth_poll_controller(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @veth_fix_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @veth_fix_features.__warned, align 1
  br i1 %.b21, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_fix_features.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1390, ptr noundef nonnull @.str.4) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.if.end12_crit_edge, label %if.then7

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  %_xdp_prog = getelementptr i8, ptr %1, i32 2320
  %2 = ptrtoint ptr %_xdp_prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_xdp_prog, align 8
  %tobool9.not = icmp eq ptr %3, null
  %and = and i64 %features, -26845446145
  %spec.select = select i1 %tobool9.not, i64 %features, i64 %and
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %do.end.if.end12_crit_edge
  %features.addr.1 = phi i64 [ %spec.select, %if.then7 ], [ %features, %do.end.if.end12_crit_edge ]
  %_xdp_prog13 = getelementptr i8, ptr %dev, i32 2320
  %4 = ptrtoint ptr %_xdp_prog13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_xdp_prog13, align 8
  %tobool14.not = icmp eq ptr %5, null
  %or = or i64 %features.addr.1, 16384
  %spec.select22 = select i1 %tobool14.not, i64 %features.addr.1, i64 %or
  ret i64 %spec.select22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_set_features(ptr noundef %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and2 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %_xdp_prog = getelementptr i8, ptr %dev, i32 2320
  %4 = ptrtoint ptr %_xdp_prog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_xdp_prog, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %and6 = and i64 %features, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  %real_num_rx_queues.i22 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %6 = ptrtoint ptr %real_num_rx_queues.i22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %real_num_rx_queues.i22, align 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %call.i = tail call fastcc i32 @veth_napi_enable_range(ptr noundef %dev, i32 noundef 0, i32 noundef %7) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp64.i.i = icmp sgt i32 %7, 0
  br i1 %cmp64.i.i, label %for.body.lr.ph.i.i, label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @synchronize_net() #20
  br label %if.end13

for.body.lr.ph.i.i:                               ; preds = %if.else
  %rq1.i.i = getelementptr i8, ptr %dev, i32 2324
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.065.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %8 = ptrtoint ptr %rq1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.veth_rq, ptr %9, i32 %i.065.i.i
  %napi.i.i = getelementptr %struct.veth_rq, ptr %9, i32 %i.065.i.i, i32 1
  %10 = ptrtoint ptr %napi.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %napi.i.i, align 32
  tail call void @napi_disable(ptr noundef %arrayidx.i.i) #20
  tail call void @__netif_napi_del(ptr noundef %arrayidx.i.i) #20
  %inc.i.i = add nuw nsw i32 %i.065.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.body41.lr.ph.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.body41.lr.ph.i.i:                             ; preds = %for.body.i.i
  tail call void @synchronize_net() #20
  br label %for.body41.i.i

for.body41.i.i:                                   ; preds = %for.body41.i.i.for.body41.i.i_crit_edge, %for.body41.lr.ph.i.i
  %i.167.i.i = phi i32 [ 0, %for.body41.lr.ph.i.i ], [ %inc46.i.i, %for.body41.i.i.for.body41.i.i_crit_edge ]
  %11 = ptrtoint ptr %rq1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq1.i.i, align 4
  %rx_notify_masked.i.i = getelementptr %struct.veth_rq, ptr %12, i32 %i.167.i.i, i32 6
  %13 = ptrtoint ptr %rx_notify_masked.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rx_notify_masked.i.i, align 32
  %xdp_ring.i.i = getelementptr %struct.veth_rq, ptr %12, i32 %i.167.i.i, i32 8
  tail call fastcc void @ptr_ring_cleanup(ptr noundef %xdp_ring.i.i) #20
  %inc46.i.i = add nuw nsw i32 %i.167.i.i, 1
  %exitcond68.not.i.i = icmp eq i32 %inc46.i.i, %7
  br i1 %exitcond68.not.i.i, label %for.body41.i.i.if.end13_crit_edge, label %for.body41.i.i.for.body41.i.i_crit_edge

for.body41.i.i.for.body41.i.i_crit_edge:          ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body41.i.i

for.body41.i.i.if.end13_crit_edge:                ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.end13:                                         ; preds = %for.body41.i.i.if.end13_crit_edge, %for.end.thread.i.i, %if.then8.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then8.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %lor.lhs.false4.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_get_iflink(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !145
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr.i, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @veth_get_iflink.__warned, align 1
  br i1 %.b13, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_get_iflink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1377, ptr noundef nonnull @.str.5) #20
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end9.cond.end_crit_edge, label %cond.true

do.end9.cond.end_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.true:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #22
  %ifindex = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end9.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ 0, %do.end9.cond.end_crit_edge ]
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i14, label %cond.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

cond.end.rcu_read_unlock.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %cond.end
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %cond.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %8 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i21 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @veth_set_rx_headroom(ptr noundef %dev, i32 noundef %new_hr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = tail call i32 @llvm.smax.i32(i32 %new_hr, i32 0)
  %1 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !145
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %add.ptr.i, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @veth_set_rx_headroom.__warned, align 1
  br i1 %.b36, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_set_rx_headroom.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1432, ptr noundef nonnull @.str.5) #20
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %do.end11.out_crit_edge, label %if.end18, !prof !144

do.end11.out_crit_edge:                           ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end18:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #22
  %requested_headroom = getelementptr i8, ptr %dev, i32 2328
  %7 = ptrtoint ptr %requested_headroom to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %0, ptr %requested_headroom, align 8
  %requested_headroom21 = getelementptr i8, ptr %6, i32 2328
  %8 = ptrtoint ptr %requested_headroom21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %requested_headroom21, align 8
  %10 = tail call i32 @llvm.umax.i32(i32 %0, i32 %9)
  %conv = trunc i32 %10 to i16
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %11 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %needed_headroom, align 8
  %needed_headroom25 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 21
  %12 = ptrtoint ptr %needed_headroom25 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %needed_headroom25, align 8
  br label %out

out:                                              ; preds = %if.end18, %do.end11.out_crit_edge
  %call.i38 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i38, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i41

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i41:                                ; preds = %out
  %call1.i39 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool.not.i40, label %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i43

land.lhs.true.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i43:                               ; preds = %land.lhs.true.i41
  %.b4.i42 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42, label %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, label %if.then.i44

land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i44:                                      ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i44, %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i45 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i45 to ptr
  %preempt_count.i.i.i.i46 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i46, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i46, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_xdp(ptr noundef %dev, ptr nocapture noundef readonly %xdp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

sw.bb:                                            ; preds = %entry
  %prog = getelementptr inbounds %struct.netdev_bpf, ptr %xdp, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog, align 4
  %extack = getelementptr inbounds %struct.netdev_bpf, ptr %xdp, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extack, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %_xdp_prog.i = getelementptr i8, ptr %dev, i32 2320
  %6 = ptrtoint ptr %_xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_xdp_prog.i, align 8
  store ptr %3, ptr %_xdp_prog.i, align 8
  %call2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call2.i, label %sw.bb.do.end.i_crit_edge, label %land.lhs.true.i

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b133.i = load i1, ptr @veth_xdp_set.__warned, align 1
  br i1 %.b133.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_xdp_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1457, ptr noundef nonnull @.str.4) #20
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 8
  %tobool7.i = icmp ne ptr %3, null
  br i1 %tobool7.i, label %if.then8.i, label %if.end62.i

if.then8.i:                                       ; preds = %do.end.i
  %tobool9.not.i = icmp eq ptr %9, null
  br i1 %tobool9.not.i, label %do.body11.i, label %if.end17.i

do.body11.i:                                      ; preds = %if.then8.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @veth_xdp_set.__msg) #20
  %tobool12.not.i = icmp eq ptr %5, null
  br i1 %tobool12.not.i, label %do.body11.i.err91.i_crit_edge, label %do.body11.i.err91.sink.split.i_crit_edge

do.body11.i.err91.sink.split.i_crit_edge:         ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err91.sink.split.i

do.body11.i.err91.i_crit_edge:                    ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err91.i

if.end17.i:                                       ; preds = %if.then8.i
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %11 to i32
  %sub18.i = sub nsw i32 3582, %conv.i
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 20
  %12 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub18.i)
  %cmp.i = icmp ugt i32 %13, %sub18.i
  br i1 %cmp.i, label %do.body21.i, label %if.end29.i

do.body21.i:                                      ; preds = %if.end17.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @veth_xdp_set.__msg.20) #20
  %tobool23.not.i = icmp eq ptr %5, null
  br i1 %tobool23.not.i, label %do.body21.i.err91.i_crit_edge, label %do.body21.i.err91.sink.split.i_crit_edge

do.body21.i.err91.sink.split.i_crit_edge:         ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err91.sink.split.i

do.body21.i.err91.i_crit_edge:                    ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err91.i

if.end29.i:                                       ; preds = %if.end17.i
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %14 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %real_num_rx_queues.i, align 4
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 105
  %16 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %real_num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp30.i = icmp ult i32 %15, %17
  br i1 %cmp30.i, label %do.body33.i, label %if.end41.i

do.body33.i:                                      ; preds = %if.end29.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @veth_xdp_set.__msg.21) #20
  %tobool35.not.i = icmp eq ptr %5, null
  br i1 %tobool35.not.i, label %do.body33.i.err91.i_crit_edge, label %do.body33.i.err91.sink.split.i_crit_edge

do.body33.i.err91.sink.split.i_crit_edge:         ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err91.sink.split.i

do.body33.i.err91.i_crit_edge:                    ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err91.i

if.end41.i:                                       ; preds = %if.end29.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %if.end41.i.if.end56.i_crit_edge, label %if.then43.i

if.end41.i.if.end56.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end56.i

if.then43.i:                                      ; preds = %if.end41.i
  %call44.i = tail call fastcc i32 @veth_enable_xdp(ptr noundef %dev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.then43.i.if.end56.i_crit_edge, label %do.body47.i

if.then43.i.if.end56.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end56.i

do.body47.i:                                      ; preds = %if.then43.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @veth_xdp_set.__msg.22) #20
  %tobool49.not.i = icmp eq ptr %5, null
  br i1 %tobool49.not.i, label %do.body47.i.err91.i_crit_edge, label %do.body47.i.err91.sink.split.i_crit_edge

do.body47.i.err91.sink.split.i_crit_edge:         ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err91.sink.split.i

do.body47.i.err91.i_crit_edge:                    ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err91.i

if.end56.i:                                       ; preds = %if.then43.i.if.end56.i_crit_edge, %if.end41.i.if.end56.i_crit_edge
  %tobool57.not.i = icmp eq ptr %7, null
  br i1 %tobool57.not.i, label %if.end62.thread137.i, label %if.end56.i.if.end77.i_crit_edge

if.end56.i.if.end77.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end77.i

if.end62.thread137.i:                             ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #22
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 24
  %20 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %hw_features.i, align 8
  %and59.i = and i64 %21, -26845446145
  store i64 %and59.i, ptr %hw_features.i, align 8
  %max_mtu60.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 31
  %22 = ptrtoint ptr %max_mtu60.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub18.i, ptr %max_mtu60.i, align 4
  br label %if.end78.i

if.end62.i:                                       ; preds = %do.end.i
  %tobool63.not.i = icmp eq ptr %7, null
  br i1 %tobool63.not.i, label %if.end62.i.if.end78.i_crit_edge, label %if.then66.i

if.end62.i.if.end78.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end78.i

if.then66.i:                                      ; preds = %if.end62.i
  %flags67.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %23 = ptrtoint ptr %flags67.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags67.i, align 8
  %and68.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.then66.i.if.end71.i_crit_edge, label %if.then70.i

if.then66.i.if.end71.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end71.i

if.then70.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @veth_disable_xdp(ptr noundef %dev) #20
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then70.i, %if.then66.i.if.end71.i_crit_edge
  %tobool72.not.i = icmp eq ptr %9, null
  br i1 %tobool72.not.i, label %if.end71.i.if.end77.i_crit_edge, label %if.then73.i

if.end71.i.if.end77.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end77.i

if.then73.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #22
  %hw_features74.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 24
  %25 = ptrtoint ptr %hw_features74.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %hw_features74.i, align 8
  %or.i = or i64 %26, 26845446144
  store i64 %or.i, ptr %hw_features74.i, align 8
  %max_mtu75.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 31
  %27 = ptrtoint ptr %max_mtu75.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 65535, ptr %max_mtu75.i, align 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then73.i, %if.end71.i.if.end77.i_crit_edge, %if.end56.i.if.end77.i_crit_edge
  tail call void @bpf_prog_put(ptr noundef nonnull %7) #20
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end77.i, %if.end62.i.if.end78.i_crit_edge, %if.end62.thread137.i
  %tobool63135.i = phi i1 [ true, %if.end77.i ], [ false, %if.end62.i.if.end78.i_crit_edge ], [ false, %if.end62.thread137.i ]
  %xor132.i = xor i1 %tobool7.i, %tobool63135.i
  %xor132.not.i = xor i1 %xor132.i, true
  %tobool88.not.i = icmp eq ptr %9, null
  %or.cond.i = select i1 %xor132.not.i, i1 true, i1 %tobool88.not.i
  br i1 %or.cond.i, label %if.end78.i.return_crit_edge, label %if.then89.i

if.end78.i.return_crit_edge:                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.then89.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @netdev_update_features(ptr noundef nonnull %9) #20
  br label %return

err91.sink.split.i:                               ; preds = %do.body47.i.err91.sink.split.i_crit_edge, %do.body33.i.err91.sink.split.i_crit_edge, %do.body21.i.err91.sink.split.i_crit_edge, %do.body11.i.err91.sink.split.i_crit_edge
  %veth_xdp_set.__msg.22.sink.i = phi ptr [ @veth_xdp_set.__msg, %do.body11.i.err91.sink.split.i_crit_edge ], [ @veth_xdp_set.__msg.20, %do.body21.i.err91.sink.split.i_crit_edge ], [ @veth_xdp_set.__msg.21, %do.body33.i.err91.sink.split.i_crit_edge ], [ @veth_xdp_set.__msg.22, %do.body47.i.err91.sink.split.i_crit_edge ]
  %err.0.ph.i = phi i32 [ -107, %do.body11.i.err91.sink.split.i_crit_edge ], [ -34, %do.body21.i.err91.sink.split.i_crit_edge ], [ -28, %do.body33.i.err91.sink.split.i_crit_edge ], [ %call44.i, %do.body47.i.err91.sink.split.i_crit_edge ]
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %veth_xdp_set.__msg.22.sink.i, ptr %5, align 4
  br label %err91.i

err91.i:                                          ; preds = %err91.sink.split.i, %do.body47.i.err91.i_crit_edge, %do.body33.i.err91.i_crit_edge, %do.body21.i.err91.i_crit_edge, %do.body11.i.err91.i_crit_edge
  %err.0.i = phi i32 [ -107, %do.body11.i.err91.i_crit_edge ], [ -34, %do.body21.i.err91.i_crit_edge ], [ -28, %do.body33.i.err91.i_crit_edge ], [ %call44.i, %do.body47.i.err91.i_crit_edge ], [ %err.0.ph.i, %err91.sink.split.i ]
  %29 = ptrtoint ptr %_xdp_prog.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %7, ptr %_xdp_prog.i, align 8
  br label %return

return:                                           ; preds = %err91.i, %if.then89.i, %if.end78.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %err.0.i, %err91.i ], [ 0, %if.then89.i ], [ 0, %if.end78.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_ndo_xdp_xmit(ptr noundef %dev, i32 noundef %n, ptr nocapture noundef readonly %frames, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @veth_xdp_xmit(ptr noundef %dev, i32 noundef %n, ptr noundef %frames, i32 noundef %flags, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %conv = sext i32 %n to i64
  %dropped = getelementptr i8, ptr %dev, i32 2312
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dropped, i32 noundef 8) #20
  tail call void @generic_atomic64_add(i64 noundef %conv, ptr noundef %dropped) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @veth_peer_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b10 = load i1, ptr @veth_peer_dev.__warned, align 1
  br i1 %.b10, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_peer_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 461, ptr noundef nonnull @.str.5) #20
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @veth_enable_xdp(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %wanted_features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %wanted_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wanted_features.i, align 32
  %and.i = and i64 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  %rq = getelementptr i8, ptr %dev, i32 2324
  %5 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq, align 4
  %xdp_rxq = getelementptr inbounds %struct.veth_rq, ptr %6, i32 0, i32 9
  %call2 = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %xdp_rxq) #20
  br i1 %call2, label %land.end.if.end18_crit_edge, label %if.then

land.end.if.end18_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then:                                          ; preds = %land.end
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %7 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %real_num_rx_queues, align 4
  %call4 = tail call fastcc i32 @veth_enable_xdp_range(ptr noundef %dev, i32 noundef 0, i32 noundef %8, i1 noundef zeroext %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %if.then
  br i1 %4, label %if.end.if.end18_crit_edge, label %if.then8

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then8:                                         ; preds = %if.end
  %9 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %real_num_rx_queues, align 4
  %call.i = tail call fastcc i32 @__veth_napi_enable_range(ptr noundef %dev, i32 noundef 0, i32 noundef %10) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then8
  %11 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %real_num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8.i = icmp sgt i32 %12, 0
  br i1 %cmp8.i, label %if.then11.for.body.i_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then11.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rq, align 4
  %xdp_rxq.i = getelementptr %struct.veth_rq, ptr %14, i32 %i.09.i, i32 9
  %mem.i = getelementptr %struct.veth_rq, ptr %14, i32 %i.09.i, i32 9, i32 3
  %xdp_mem.i = getelementptr %struct.veth_rq, ptr %14, i32 %i.09.i, i32 4
  %15 = ptrtoint ptr %xdp_mem.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %xdp_mem.i, align 4
  %17 = ptrtoint ptr %mem.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %mem.i, align 4
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq.i) #20
  %arrayidx.i = getelementptr %struct.veth_rq, ptr %14, i32 %i.09.i
  tail call void @__netif_napi_del(ptr noundef %arrayidx.i) #20
  tail call void @synchronize_net() #20
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %18 = ptrtoint ptr %wanted_features.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %wanted_features.i, align 32
  %and.i131 = and i64 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i131)
  %tobool.i132.not = icmp eq i64 %and.i131, 0
  br i1 %tobool.i132.not, label %if.then15, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %features, align 16
  %or = or i64 %21, 16384
  store i64 %or, ptr %features, align 16
  tail call void @netdev_features_change(ptr noundef %dev) #20
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge, %if.end.if.end18_crit_edge, %land.end.if.end18_crit_edge
  %real_num_rx_queues19 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %22 = ptrtoint ptr %real_num_rx_queues19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %real_num_rx_queues19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp134.not = icmp eq i32 %23, 0
  br i1 %cmp134.not, label %if.end18.cleanup_crit_edge, label %do.body.lr.ph

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body.lr.ph:                                    ; preds = %if.end18
  %_xdp_prog = getelementptr i8, ptr %dev, i32 2320
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.0135 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %24 = ptrtoint ptr %_xdp_prog to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_xdp_prog, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !153
  %26 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rq, align 4
  %xdp_prog46 = getelementptr %struct.veth_rq, ptr %27, i32 %i.0135, i32 3
  %28 = ptrtoint ptr %xdp_prog46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %25, ptr %xdp_prog46, align 8
  %29 = load ptr, ptr %rq, align 4
  %arrayidx61 = getelementptr %struct.veth_rq, ptr %29, i32 %i.0135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !154
  %30 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rq, align 4
  %napi92 = getelementptr %struct.veth_rq, ptr %31, i32 %i.0135, i32 1
  %32 = ptrtoint ptr %napi92 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx61, ptr %napi92, align 32
  %inc = add nuw i32 %i.0135, 1
  %33 = ptrtoint ptr %real_num_rx_queues19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %real_num_rx_queues19, align 4
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then.cleanup_crit_edge ], [ %call.i, %if.then11.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ %call.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @veth_enable_xdp_range(ptr noundef %dev, i32 noundef %start, i32 noundef %end, i1 noundef zeroext %napi_already_on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp70 = icmp slt i32 %start, %end
  br i1 %cmp70, label %for.body.lr.ph, label %entry.cleanup30_crit_edge

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup30

for.body.lr.ph:                                   ; preds = %entry
  %rq1 = getelementptr i8, ptr %dev, i32 2324
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ %start, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %rq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq1, align 4
  %arrayidx = getelementptr %struct.veth_rq, ptr %1, i32 %i.071
  br i1 %napi_already_on, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull @veth_poll, i32 noundef 64) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %xdp_rxq = getelementptr %struct.veth_rq, ptr %1, i32 %i.071, i32 9
  %napi_id = getelementptr inbounds %struct.napi_struct, ptr %arrayidx, i32 0, i32 15
  %2 = ptrtoint ptr %napi_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %napi_id, align 8
  %call3 = tail call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq, ptr noundef %dev, i32 noundef %i.071, i32 noundef %3) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.err_rxq_reg_crit_edge, label %if.end6

if.end.err_rxq_reg_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_rxq_reg

if.end6:                                          ; preds = %if.end
  %call8 = tail call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %xdp_rxq, i32 noundef 0, ptr noundef null) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %err_reg_mem, label %for.inc

for.inc:                                          ; preds = %if.end6
  %xdp_mem = getelementptr %struct.veth_rq, ptr %1, i32 %i.071, i32 4
  %mem = getelementptr %struct.veth_rq, ptr %1, i32 %i.071, i32 9, i32 3
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %mem, align 4
  %6 = ptrtoint ptr %xdp_mem to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %xdp_mem, align 4
  %inc = add i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %end
  br i1 %exitcond.not, label %for.inc.cleanup30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.cleanup30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup30

err_reg_mem:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %rq1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rq1, align 4
  %xdp_rxq15 = getelementptr %struct.veth_rq, ptr %8, i32 %i.071, i32 9
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq15) #20
  br label %err_rxq_reg

err_rxq_reg:                                      ; preds = %err_reg_mem, %if.end.err_rxq_reg_crit_edge
  %err.060 = phi i32 [ %call8, %err_reg_mem ], [ %call3, %if.end.err_rxq_reg_crit_edge ]
  %i.172 = add i32 %i.071, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.172, i32 %start)
  %cmp17.not73 = icmp slt i32 %i.172, %start
  br i1 %cmp17.not73, label %err_rxq_reg.cleanup30_crit_edge, label %err_rxq_reg.for.body18_crit_edge

err_rxq_reg.for.body18_crit_edge:                 ; preds = %err_rxq_reg
  br label %for.body18

err_rxq_reg.cleanup30_crit_edge:                  ; preds = %err_rxq_reg
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup30

for.body18:                                       ; preds = %if.end26.for.body18_crit_edge, %err_rxq_reg.for.body18_crit_edge
  %i.174 = phi i32 [ %i.1, %if.end26.for.body18_crit_edge ], [ %i.172, %err_rxq_reg.for.body18_crit_edge ]
  %9 = ptrtoint ptr %rq1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rq1, align 4
  %xdp_rxq22 = getelementptr %struct.veth_rq, ptr %10, i32 %i.174, i32 9
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq22) #20
  br i1 %napi_already_on, label %for.body18.if.end26_crit_edge, label %if.then24

for.body18.if.end26_crit_edge:                    ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26

if.then24:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx21 = getelementptr %struct.veth_rq, ptr %10, i32 %i.174
  tail call void @__netif_napi_del(ptr noundef %arrayidx21) #20
  tail call void @synchronize_net() #20
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %for.body18.if.end26_crit_edge
  %i.1 = add i32 %i.174, -1
  %cmp17.not = icmp slt i32 %i.1, %start
  br i1 %cmp17.not, label %if.end26.cleanup30_crit_edge, label %if.end26.for.body18_crit_edge

if.end26.for.body18_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body18

if.end26.cleanup30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup30

cleanup30:                                        ; preds = %if.end26.cleanup30_crit_edge, %err_rxq_reg.cleanup30_crit_edge, %for.inc.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.0 = phi i32 [ %err.060, %err_rxq_reg.cleanup30_crit_edge ], [ 0, %entry.cleanup30_crit_edge ], [ %err.060, %if.end26.cleanup30_crit_edge ], [ 0, %for.inc.cleanup30_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_features_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  %xdpf.i = alloca [16 x ptr], align 4
  %stats = alloca %struct.veth_stats, align 8
  %bq = alloca %struct.veth_xdp_tx_bq, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %stats) #20
  %0 = call ptr @memset(ptr %stats, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %bq) #20
  %1 = call ptr @memset(ptr %bq, i32 255, i32 64)
  %count = getelementptr inbounds %struct.veth_xdp_tx_bq, ptr %bq, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %count, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, ptrtoint (ptr @bpf_redirect_info to i32)
  %9 = inttoptr i32 %add.i to ptr
  %kern_flags.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %kern_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %kern_flags.i, align 4
  %or.i = or i32 %11, 1
  store i32 %or.i, ptr %kern_flags.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %xdpf.i) #20
  %12 = call ptr @memset(ptr %xdpf.i, i32 255, i32 64)
  %size.i.i.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 8, i32 7
  %queue.i.i.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 8, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp117.i = icmp sgt i32 %budget, 0
  br i1 %cmp117.i, label %for.body.lr.ph.i, label %entry.veth_xdp_rcv.exit_crit_edge

entry.veth_xdp_rcv.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_xdp_rcv.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %consumer_head.i.i.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 8, i32 3
  %consumer_tail.i.i.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 8, i32 4
  %batch.i.i.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 8, i32 8
  %xdp_bytes.i = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n_xdpf.0120.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %n_xdpf.2.i, %for.inc.i.for.body.i_crit_edge ]
  %done.0119.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc30.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.for.end.i_crit_edge, label %__ptr_ring_peek.exit.i.i, !prof !144

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

__ptr_ring_peek.exit.i.i:                         ; preds = %for.body.i
  %15 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue.i.i.i, align 8
  %17 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %consumer_head.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr ptr, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %__ptr_ring_peek.exit.i.i.for.end.i_crit_edge, label %if.then.i.i

__ptr_ring_peek.exit.i.i.for.end.i_crit_edge:     ; preds = %__ptr_ring_peek.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

if.then.i.i:                                      ; preds = %__ptr_ring_peek.exit.i.i
  %inc.i.i.i = add i32 %18, 1
  %21 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %consumer_tail.i.i.i, align 4
  %sub.i.i.i = sub i32 %inc.i.i.i, %22
  %23 = ptrtoint ptr %batch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %batch.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %24)
  %cmp.not.i.i.i = icmp slt i32 %sub.i.i.i, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %14)
  %cmp2.not.i.i.i = icmp slt i32 %inc.i.i.i, %14
  %or.cond.i.i = select i1 %cmp.not.i.i.i, i1 %cmp2.not.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i, !prof !155

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp5.not46.i.i.i = icmp slt i32 %18, %22
  br i1 %cmp5.not46.i.i.i, label %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge, !prof !144

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %head.047.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %18, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queue.i.i.i, align 8
  %dec.i.i.i = add i32 %head.047.i.i.i, -1
  %arrayidx.i5.i.i = getelementptr ptr, ptr %26, i32 %head.047.i.i.i
  %27 = ptrtoint ptr %arrayidx.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.i5.i.i, align 4
  %28 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %consumer_tail.i.i.i, align 4
  %cmp5.not.i.i.i = icmp slt i32 %dec.i.i.i, %29
  br i1 %cmp5.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge, !prof !144

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge
  %30 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc.i.i.i, ptr %consumer_tail.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %31 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %32)
  %cmp14.not.i.i.i = icmp slt i32 %inc.i.i.i, %32
  br i1 %cmp14.not.i.i.i, label %if.end.i.i.i.__ptr_ring_consume.exit.i_crit_edge, label %if.then21.i.i.i, !prof !140

if.end.i.i.i.__ptr_ring_consume.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__ptr_ring_consume.exit.i

if.then21.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %33 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %consumer_tail.i.i.i, align 4
  br label %__ptr_ring_consume.exit.i

__ptr_ring_consume.exit.i:                        ; preds = %if.then21.i.i.i, %if.end.i.i.i.__ptr_ring_consume.exit.i_crit_edge
  %consumer_head.0.i.i.i = phi i32 [ 0, %if.then21.i.i.i ], [ %inc.i.i.i, %if.end.i.i.i.__ptr_ring_consume.exit.i_crit_edge ]
  %34 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %consumer_head.0.i.i.i, ptr %consumer_head.i.i.i, align 128
  %35 = ptrtoint ptr %20 to i32
  %and.i.i52 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.i.not.i = icmp eq i32 %and.i.i52, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %__ptr_ring_consume.exit.i
  %and.i106.i = and i32 %35, -2
  %36 = inttoptr i32 %and.i106.i to ptr
  %len.i = getelementptr inbounds %struct.xdp_frame, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %38 to i64
  %39 = ptrtoint ptr %xdp_bytes.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %xdp_bytes.i, align 8
  %add.i53 = add i64 %40, %conv.i
  store i64 %add.i53, ptr %xdp_bytes.i, align 8
  %call4.i = call fastcc ptr @veth_xdp_rcv_one(ptr noundef %napi, ptr noundef %36, ptr noundef nonnull %bq, ptr noundef nonnull %stats) #20
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then2.i.for.inc.i_crit_edge, label %if.then6.i

if.then2.i.for.inc.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.then2.i
  %inc.i = add i32 %n_xdpf.0120.i, 1
  %arrayidx.i54 = getelementptr [16 x ptr], ptr %xdpf.i, i32 0, i32 %n_xdpf.0120.i
  %41 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call4.i, ptr %arrayidx.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i)
  %cmp7.i = icmp eq i32 %inc.i, 16
  br i1 %cmp7.i, label %if.then9.i, label %if.then6.i.for.inc.i_crit_edge

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @veth_xdp_rcv_bulk_skb(ptr noundef %napi, ptr noundef nonnull %xdpf.i, i32 noundef 16, ptr noundef nonnull %stats) #20
  br label %for.inc.i

if.else.i:                                        ; preds = %__ptr_ring_consume.exit.i
  %len12.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %42 = ptrtoint ptr %len12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len12.i, align 4
  %conv13.i = zext i32 %43 to i64
  %44 = ptrtoint ptr %xdp_bytes.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %xdp_bytes.i, align 8
  %add15.i = add i64 %45, %conv13.i
  store i64 %add15.i, ptr %xdp_bytes.i, align 8
  %call16.i = call fastcc ptr @veth_xdp_rcv_skb(ptr noundef %napi, ptr noundef nonnull %20, ptr noundef nonnull %bq, ptr noundef nonnull %stats) #20
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.then18.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then18.i:                                      ; preds = %if.else.i
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %call16.i, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #20
  %46 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i.not.i = icmp eq i32 %47, 1
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %if.then18.i.if.then23.i_crit_edge

if.then18.i.if.then23.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then23.i

lor.lhs.false.i:                                  ; preds = %if.then18.i
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call16.i, i32 0, i32 12
  %48 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i107.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i107.i, label %lor.lhs.false.i.if.else25.i_crit_edge, label %skb_cloned.exit.i.i

lor.lhs.false.i.if.else25.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else25.i

skb_cloned.exit.i.i:                              ; preds = %lor.lhs.false.i
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call16.i, i32 0, i32 17
  %49 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 10
  %call.i.i.i.i108.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #20
  %51 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %52, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_cloned.exit.i.i.if.else25.i_crit_edge, label %skb_unclone.exit.i

skb_cloned.exit.i.i.if.else25.i_crit_edge:        ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else25.i

skb_unclone.exit.i:                               ; preds = %skb_cloned.exit.i.i
  %call7.i.i = tail call i32 @pskb_expand_head(ptr noundef nonnull %call16.i, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool22.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool22.not.i, label %skb_unclone.exit.i.if.else25.i_crit_edge, label %skb_unclone.exit.i.if.then23.i_crit_edge

skb_unclone.exit.i.if.then23.i_crit_edge:         ; preds = %skb_unclone.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then23.i

skb_unclone.exit.i.if.else25.i_crit_edge:         ; preds = %skb_unclone.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else25.i

if.then23.i:                                      ; preds = %skb_unclone.exit.i.if.then23.i_crit_edge, %if.then18.i.if.then23.i_crit_edge
  %call24.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %call16.i) #20
  br label %for.inc.i

if.else25.i:                                      ; preds = %skb_unclone.exit.i.if.else25.i_crit_edge, %skb_cloned.exit.i.i.if.else25.i_crit_edge, %lor.lhs.false.i.if.else25.i_crit_edge
  %call26.i = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %call16.i) #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else25.i, %if.then23.i, %if.else.i.for.inc.i_crit_edge, %if.then9.i, %if.then6.i.for.inc.i_crit_edge, %if.then2.i.for.inc.i_crit_edge
  %n_xdpf.2.i = phi i32 [ 0, %if.then9.i ], [ %inc.i, %if.then6.i.for.inc.i_crit_edge ], [ %n_xdpf.0120.i, %if.then2.i.for.inc.i_crit_edge ], [ %n_xdpf.0120.i, %if.then23.i ], [ %n_xdpf.0120.i, %if.else25.i ], [ %n_xdpf.0120.i, %if.else.i.for.inc.i_crit_edge ]
  %inc30.i = add nuw nsw i32 %done.0119.i, 1
  %exitcond.not.i = icmp eq i32 %inc30.i, %budget
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %__ptr_ring_peek.exit.i.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %done.0.lcssa.i = phi i32 [ %budget, %for.inc.i.for.end.i_crit_edge ], [ %done.0119.i, %__ptr_ring_peek.exit.i.i.for.end.i_crit_edge ], [ %done.0119.i, %for.body.i.for.end.i_crit_edge ]
  %n_xdpf.0.lcssa.i = phi i32 [ %n_xdpf.2.i, %for.inc.i.for.end.i_crit_edge ], [ %n_xdpf.0120.i, %__ptr_ring_peek.exit.i.i.for.end.i_crit_edge ], [ %n_xdpf.0120.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_xdpf.0.lcssa.i)
  %tobool32.not.i = icmp eq i32 %n_xdpf.0.lcssa.i, 0
  br i1 %tobool32.not.i, label %for.end.i.veth_xdp_rcv.exit_crit_edge, label %if.then33.i

for.end.i.veth_xdp_rcv.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_xdp_rcv.exit

if.then33.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @veth_xdp_rcv_bulk_skb(ptr noundef %napi, ptr noundef nonnull %xdpf.i, i32 noundef %n_xdpf.0.lcssa.i, ptr noundef nonnull %stats) #20
  br label %veth_xdp_rcv.exit

veth_xdp_rcv.exit:                                ; preds = %if.then33.i, %for.end.i.veth_xdp_rcv.exit_crit_edge, %entry.veth_xdp_rcv.exit_crit_edge
  %done.0.lcssa130.i = phi i32 [ %done.0.lcssa.i, %if.then33.i ], [ %done.0.lcssa.i, %for.end.i.veth_xdp_rcv.exit_crit_edge ], [ 0, %entry.veth_xdp_rcv.exit_crit_edge ]
  %stats36.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 5
  %syncp.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 5, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #20
  %xdp_redirect.i = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 3
  %53 = ptrtoint ptr %xdp_redirect.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %xdp_redirect.i, align 8
  %xdp_redirect38.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 5, i32 0, i32 3
  %55 = ptrtoint ptr %xdp_redirect38.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %xdp_redirect38.i, align 8
  %add39.i = add i64 %56, %54
  store i64 %add39.i, ptr %xdp_redirect38.i, align 8
  %xdp_bytes40.i = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 2
  %57 = ptrtoint ptr %xdp_bytes40.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %xdp_bytes40.i, align 8
  %xdp_bytes43.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 5, i32 0, i32 2
  %59 = ptrtoint ptr %xdp_bytes43.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %xdp_bytes43.i, align 8
  %add44.i = add i64 %60, %58
  store i64 %add44.i, ptr %xdp_bytes43.i, align 8
  %xdp_drops.i = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 4
  %61 = ptrtoint ptr %xdp_drops.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %xdp_drops.i, align 8
  %xdp_drops47.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 5, i32 0, i32 4
  %63 = ptrtoint ptr %xdp_drops47.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %xdp_drops47.i, align 8
  %add48.i = add i64 %64, %62
  store i64 %add48.i, ptr %xdp_drops47.i, align 8
  %65 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %stats, align 8
  %67 = ptrtoint ptr %stats36.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %stats36.i, align 8
  %add52.i = add i64 %68, %66
  store i64 %add52.i, ptr %stats36.i, align 8
  %conv53.i = sext i32 %done.0.lcssa130.i to i64
  %xdp_packets.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 5, i32 0, i32 1
  %69 = ptrtoint ptr %xdp_packets.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %xdp_packets.i, align 8
  %add56.i = add i64 %70, %conv53.i
  store i64 %add56.i, ptr %xdp_packets.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 5, i32 1, i32 0, i32 1
  %71 = tail call ptr @llvm.returnaddress(i32 0) #20
  %72 = ptrtoint ptr %71 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %72) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !147
  %73 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %xdpf.i) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %done.0.lcssa130.i, i32 %budget)
  %cmp = icmp slt i32 %done.0.lcssa130.i, %budget
  br i1 %cmp, label %land.lhs.true, label %veth_xdp_rcv.exit.if.end35_crit_edge

veth_xdp_rcv.exit.if.end35_crit_edge:             ; preds = %veth_xdp_rcv.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

land.lhs.true:                                    ; preds = %veth_xdp_rcv.exit
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %done.0.lcssa130.i) #20
  br i1 %call1, label %do.body8, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

do.body8:                                         ; preds = %land.lhs.true
  %rx_notify_masked = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 6
  %75 = ptrtoint ptr %rx_notify_masked to i32
  call void @__asan_store1_noabort(i32 %75)
  store volatile i8 0, ptr %rx_notify_masked, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !156
  %76 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i, label %do.body8.if.end35_crit_edge, label %__ptr_ring_empty.exit, !prof !144

do.body8.if.end35_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

__ptr_ring_empty.exit:                            ; preds = %do.body8
  %78 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %queue.i.i.i, align 8
  %consumer_head.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 8, i32 3
  %80 = ptrtoint ptr %consumer_head.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %consumer_head.i, align 128
  %arrayidx.i55 = getelementptr ptr, ptr %79, i32 %81
  %82 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i55, align 4
  %tobool3.not.i = icmp eq ptr %83, null
  br i1 %tobool3.not.i, label %__ptr_ring_empty.exit.if.end35_crit_edge, label %if.then20, !prof !140

__ptr_ring_empty.exit.if.end35_crit_edge:         ; preds = %__ptr_ring_empty.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then20:                                        ; preds = %__ptr_ring_empty.exit
  %call21 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #20
  br i1 %call21, label %do.body27, label %if.then20.if.end35_crit_edge

if.then20.if.end35_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

do.body27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  %84 = ptrtoint ptr %rx_notify_masked to i32
  call void @__asan_store1_noabort(i32 %84)
  store volatile i8 1, ptr %rx_notify_masked, align 32
  tail call void @__napi_schedule(ptr noundef %napi) #20
  br label %if.end35

if.end35:                                         ; preds = %do.body27, %if.then20.if.end35_crit_edge, %__ptr_ring_empty.exit.if.end35_crit_edge, %do.body8.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %veth_xdp_rcv.exit.if.end35_crit_edge
  %xdp_tx = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 5
  %85 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %xdp_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %cmp36.not = icmp eq i64 %86, 0
  br i1 %cmp36.not, label %if.end35.if.end38_crit_edge, label %if.then37

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  %dev.i = getelementptr inbounds %struct.veth_rq, ptr %napi, i32 0, i32 2
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 2304
  %89 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %92, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !145
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i.i, label %if.then37.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then37.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then37
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i56 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i56, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i57

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i

if.then.i.i57:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #20
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i57, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then37.rcu_read_lock.exit.i_crit_edge
  call fastcc void @veth_xdp_flush_bq(ptr noundef %napi, ptr noundef nonnull %bq) #20
  %93 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %add.ptr.i.i, align 8
  %call2.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i58 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b39.i = load i1, ptr @veth_xdp_flush.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i59

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8.i

if.then.i59:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_xdp_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 568, ptr noundef nonnull @.str.5) #20
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i59, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %94, null
  br i1 %tobool10.not.i, label %do.end8.i.out.i_crit_edge, label %if.end15.i, !prof !144

do.end8.i.out.i_crit_edge:                        ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i

if.end15.i:                                       ; preds = %do.end8.i
  %rq17.i = getelementptr i8, ptr %94, i32 2324
  %95 = ptrtoint ptr %rq17.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rq17.i, align 4
  %97 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i60 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i60 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cpu.i.i, align 4
  %real_num_rx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %94, i32 0, i32 89
  %101 = ptrtoint ptr %real_num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %real_num_rx_queues.i.i, align 4
  %rem.i.i = urem i32 %100, %102
  %xdp_prog.i = getelementptr %struct.veth_rq, ptr %96, i32 %rem.i.i, i32 3
  %103 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %xdp_prog.i, align 8
  %tobool24.not.i = icmp eq ptr %104, null
  br i1 %tobool24.not.i, label %if.end15.i.out.i_crit_edge, label %if.end34.i, !prof !144

if.end15.i.out.i_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i

if.end34.i:                                       ; preds = %if.end15.i
  %arrayidx.i61 = getelementptr %struct.veth_rq, ptr %96, i32 %rem.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !148
  %rx_notify_masked.i.i = getelementptr %struct.veth_rq, ptr %96, i32 %rem.i.i, i32 6
  %105 = ptrtoint ptr %rx_notify_masked.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load volatile i8, ptr %rx_notify_masked.i.i, align 32, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i41.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i41.i, label %land.lhs.true.i43.i, label %if.end34.i.out.i_crit_edge

if.end34.i.out.i_crit_edge:                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i

land.lhs.true.i43.i:                              ; preds = %if.end34.i
  %call.i42.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx.i61) #20
  br i1 %call.i42.i, label %do.body9.i.i, label %land.lhs.true.i43.i.out.i_crit_edge

land.lhs.true.i43.i.out.i_crit_edge:              ; preds = %land.lhs.true.i43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i

do.body9.i.i:                                     ; preds = %land.lhs.true.i43.i
  call void @__sanitizer_cov_trace_pc() #22
  %107 = ptrtoint ptr %rx_notify_masked.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store volatile i8 1, ptr %rx_notify_masked.i.i, align 32
  tail call void @__napi_schedule(ptr noundef %arrayidx.i61) #20
  br label %out.i

out.i:                                            ; preds = %do.body9.i.i, %land.lhs.true.i43.i.out.i_crit_edge, %if.end34.i.out.i_crit_edge, %if.end15.i.out.i_crit_edge, %do.end8.i.out.i_crit_edge
  %call.i44.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i44.i, label %out.i.veth_xdp_flush.exit_crit_edge, label %land.lhs.true.i47.i

out.i.veth_xdp_flush.exit_crit_edge:              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_xdp_flush.exit

land.lhs.true.i47.i:                              ; preds = %out.i
  %call1.i45.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45.i)
  %tobool.not.i46.i = icmp eq i32 %call1.i45.i, 0
  br i1 %tobool.not.i46.i, label %land.lhs.true.i47.i.veth_xdp_flush.exit_crit_edge, label %land.lhs.true2.i49.i

land.lhs.true.i47.i.veth_xdp_flush.exit_crit_edge: ; preds = %land.lhs.true.i47.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_xdp_flush.exit

land.lhs.true2.i49.i:                             ; preds = %land.lhs.true.i47.i
  %.b4.i48.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48.i, label %land.lhs.true2.i49.i.veth_xdp_flush.exit_crit_edge, label %if.then.i50.i

land.lhs.true2.i49.i.veth_xdp_flush.exit_crit_edge: ; preds = %land.lhs.true2.i49.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_xdp_flush.exit

if.then.i50.i:                                    ; preds = %land.lhs.true2.i49.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %veth_xdp_flush.exit

veth_xdp_flush.exit:                              ; preds = %if.then.i50.i, %land.lhs.true2.i49.i.veth_xdp_flush.exit_crit_edge, %land.lhs.true.i47.i.veth_xdp_flush.exit_crit_edge, %out.i.veth_xdp_flush.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %108 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i51.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i.i.i51.i to ptr
  %preempt_count.i.i.i.i52.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %preempt_count.i.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %preempt_count.i.i.i.i52.i, align 4
  %sub.i.i.i.i = add i32 %111, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i52.i, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  br label %if.end38

if.end38:                                         ; preds = %veth_xdp_flush.exit, %if.end35.if.end38_crit_edge
  %112 = ptrtoint ptr %xdp_redirect.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %xdp_redirect.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %cmp39.not = icmp eq i64 %113, 0
  br i1 %cmp39.not, label %if.end38.if.end41_crit_edge, label %if.then40

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @xdp_do_flush() #20
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %114 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i62 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i62 to ptr
  %cpu.i63 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %cpu.i63 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cpu.i63, align 4
  %arrayidx.i64 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i64, align 4
  %add.i65 = add i32 %119, ptrtoint (ptr @bpf_redirect_info to i32)
  %120 = inttoptr i32 %add.i65 to ptr
  %kern_flags.i66 = getelementptr inbounds %struct.bpf_redirect_info, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %kern_flags.i66 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %kern_flags.i66, align 4
  %and.i = and i32 %122, -2
  store i32 %and.i, ptr %kern_flags.i66, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %bq) #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %stats) #20
  ret i32 %done.0.lcssa130.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @veth_xdp_rcv_one(ptr noundef %rq, ptr noundef %frame, ptr nocapture noundef %bq, ptr nocapture noundef %stats) unnamed_addr #2 align 64 {
entry:
  %orig_frame = alloca %struct.xdp_frame, align 4
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %orig_frame) #20
  %0 = call ptr @memset(ptr %orig_frame, i32 255, i32 24)
  %1 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !145
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %xdp_prog1 = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 3
  %5 = ptrtoint ptr %xdp_prog1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %xdp_prog1, align 8
  %call = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b78 = load i1, ptr @veth_xdp_rcv_one.__warned, align 1
  br i1 %.b78, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_xdp_rcv_one.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 608, ptr noundef nonnull @.str.5) #20
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.end8.if.end50_crit_edge, label %if.then13, !prof !144

do.end8.if.end50_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50

if.then13:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #20
  %7 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %8 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %9 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %10 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %11 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %12 = getelementptr inbounds i8, ptr %xdp, i32 20
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  %14 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frame, align 4
  %headroom.i = getelementptr inbounds %struct.xdp_frame, ptr %frame, i32 0, i32 2
  %16 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %headroom.i, align 2
  %conv.i = zext i16 %17 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %15, i32 %idx.neg.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -24
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr1.i, ptr %9, align 4
  %19 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %xdp, align 4
  %len.i = getelementptr inbounds %struct.xdp_frame, ptr %frame, i32 0, i32 1
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len.i, align 4
  %conv5.i = zext i16 %21 to i32
  %add.ptr6.i = getelementptr i8, ptr %15, i32 %conv5.i
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr6.i, ptr %7, align 4
  %metasize.i = getelementptr inbounds %struct.xdp_frame, ptr %frame, i32 0, i32 3
  %23 = ptrtoint ptr %metasize.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i = load i32, ptr %metasize.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  %idx.neg8.i = sub nsw i32 0, %bf.lshr.i
  %add.ptr9.i = getelementptr i8, ptr %15, i32 %idx.neg8.i
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr9.i, ptr %8, align 4
  %bf.clear.i = and i32 %bf.load.i, 16777215
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %bf.clear.i, ptr %11, align 4
  %xdp_rxq = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 9
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %xdp_rxq, ptr %10, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str.8, i32 noundef 613) #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@veth_xdp_rcv_one, %if.then.i.i)) #20
          to label %if.else.i.i [label %if.then.i.i], !srcloc !157

if.then.i.i:                                      ; preds = %if.then13
  %call3.i.i = tail call i64 @sched_clock() #20
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %6, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %6, i32 0, i32 9
  %27 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi.i.i, ptr noundef %28) #20
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %6, i32 0, i32 7
  %29 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stats9.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %37, %31
  %38 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %38, i32 0, i32 3
  %39 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !158
  %and.i.i.i.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @trace_hardirqs_off() #20
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %40 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %41 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !159
  %45 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i79 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %50, ptrtoint (ptr @lockdep_recursion to i32)
  %51 = inttoptr i32 %add.i.i.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !160
  %54 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i7.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool20.not.i.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %58 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i.i.i = icmp eq i32 %61, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %62 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i9.i.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %65, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !161
  %66 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %69, ptrtoint (ptr @hardirqs_enabled to i32)
  %70 = inttoptr i32 %add47.i.i.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !162
  %73 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i12.i.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool54.not.i.i.i.i = icmp eq i32 %72, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 271, i32 noundef 9, ptr noundef null) #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %77 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %78, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !163
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %38, i32 0, i32 3, i32 0, i32 1
  %79 = call ptr @llvm.returnaddress(i32 0) #20
  %80 = ptrtoint ptr %79 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %80) #20
  %81 = ptrtoint ptr %38 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %38, align 8
  %inc.i.i.i = add i64 %82, 1
  store i64 %inc.i.i.i, ptr %38, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %38, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #20
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %83 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i80 = add i64 %conv.i.i.i, %84
  store i64 %add.i.i.i80, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %80) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !147
  %85 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %86, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @trace_hardirqs_on() #20
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %87 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #20, !srcloc !164
  %and.i.i.i3.i.i = and i32 %87, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !144

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @warn_bogus_irq_restore() #20
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #20, !srcloc !165
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %6, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %6, i32 0, i32 9
  %88 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi15.i.i, ptr noundef %89) #20
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@veth_xdp_rcv_one, %l_yes.i.i)) #20
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !157

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i81, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i81:                                ; preds = %arch_static_branch.exit.i
  %90 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %10, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 14
  %94 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %95, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i81.sw.bb19_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i81.sw.bb19_crit_edge:              ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb19

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i81
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 15
  %96 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %97, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.sw.bb19_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.sw.bb19_crit_edge:     ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb19

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %call6.i = call i32 @xdp_master_redirect(ptr noundef nonnull %xdp) #20
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %98 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i32 %act.0.i, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb19_crit_edge
    i32 4, label %sw.bb32
    i32 0, label %bpf_prog_run_xdp.exit.sw.bb45_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb47_crit_edge
  ]

bpf_prog_run_xdp.exit.sw.bb47_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb47

bpf_prog_run_xdp.exit.sw.bb45_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb45

bpf_prog_run_xdp.exit.sw.bb19_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb19

sw.bb:                                            ; preds = %bpf_prog_run_xdp.exit
  %99 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %xdp, align 4
  %101 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %9, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %100 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %102 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %103 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %8, align 4
  %sub.ptr.rhs.cast3.i = ptrtoint ptr %104 to i32
  %sub.ptr.sub4.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast3.i
  %105 = call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i, i32 0) #20
  %sub.i = sub i32 %sub.ptr.sub.i, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp5.i = icmp ult i32 %sub.i, 24
  br i1 %cmp5.i, label %sw.bb.err_xdp_crit_edge, label %if.end.i, !prof !144

sw.bb.err_xdp_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_xdp

if.end.i:                                         ; preds = %sw.bb
  %106 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %7, align 4
  %108 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %11, align 4
  %add.ptr.i85 = getelementptr i8, ptr %102, i32 %109
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i85, i32 -256
  %cmp9.i = icmp ugt ptr %107, %add.ptr8.i
  br i1 %cmp9.i, label %if.then16.i, label %cleanup, !prof !144

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @xdp_warn(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #20
  br label %err_xdp

sw.bb19:                                          ; preds = %bpf_prog_run_xdp.exit.sw.bb19_crit_edge, %netif_is_bond_slave.exit.i.sw.bb19_crit_edge, %land.lhs.true.i81.sw.bb19_crit_edge
  %110 = call ptr @memcpy(ptr %orig_frame, ptr %frame, i32 24)
  %111 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %10, align 4
  %mem = getelementptr inbounds %struct.xdp_rxq_info, ptr %112, i32 0, i32 3
  %mem21 = getelementptr inbounds %struct.xdp_frame, ptr %frame, i32 0, i32 4
  %113 = ptrtoint ptr %mem21 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %mem21, align 4
  %115 = ptrtoint ptr %mem to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %114, ptr %mem, align 4
  %call22 = call fastcc i32 @veth_xdp_tx(ptr noundef %rq, ptr noundef nonnull %xdp, ptr noundef %bq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.then29, label %if.end30, !prof !144

if.then29:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #22
  %dev = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %117, ptr noundef nonnull %6, i32 noundef 3)
  %118 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %stats, align 8
  %inc = add i64 %119, 1
  store i64 %inc, ptr %stats, align 8
  br label %err_xdp

if.end30:                                         ; preds = %sw.bb19
  %xdp_tx = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 5
  %120 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %xdp_tx, align 8
  %inc31 = add i64 %121, 1
  store i64 %inc31, ptr %xdp_tx, align 8
  %call.i90 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i90, label %if.end30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i93

if.end30.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i93:                                ; preds = %if.end30
  %call1.i91 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, label %if.then.i96

land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i96, %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, %if.end30.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  br label %cleanup.thread139

sw.bb32:                                          ; preds = %bpf_prog_run_xdp.exit
  %122 = call ptr @memcpy(ptr %orig_frame, ptr %frame, i32 24)
  %123 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %10, align 4
  %mem34 = getelementptr inbounds %struct.xdp_rxq_info, ptr %124, i32 0, i32 3
  %mem35 = getelementptr inbounds %struct.xdp_frame, ptr %frame, i32 0, i32 4
  %125 = ptrtoint ptr %mem35 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 8)
  %126 = load i64, ptr %mem35, align 4
  %127 = ptrtoint ptr %mem34 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 8)
  store i64 %126, ptr %mem34, align 4
  %dev36 = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  %128 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev36, align 4
  %call37 = call i32 @xdp_do_redirect(ptr noundef %129, ptr noundef nonnull %xdp, ptr noundef nonnull %6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end42, label %if.then39

if.then39:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #22
  %130 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %stats, align 8
  %inc41 = add i64 %131, 1
  store i64 %inc41, ptr %stats, align 8
  br label %err_xdp

if.end42:                                         ; preds = %sw.bb32
  %xdp_redirect = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 3
  %132 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %xdp_redirect, align 8
  %inc43 = add i64 %133, 1
  store i64 %inc43, ptr %xdp_redirect, align 8
  %call.i99 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i99, label %if.end42.rcu_read_unlock.exit109_crit_edge, label %land.lhs.true.i102

if.end42.rcu_read_unlock.exit109_crit_edge:       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit109

land.lhs.true.i102:                               ; preds = %if.end42
  %call1.i100 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool.not.i101 = icmp eq i32 %call1.i100, 0
  br i1 %tobool.not.i101, label %land.lhs.true.i102.rcu_read_unlock.exit109_crit_edge, label %land.lhs.true2.i104

land.lhs.true.i102.rcu_read_unlock.exit109_crit_edge: ; preds = %land.lhs.true.i102
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit109

land.lhs.true2.i104:                              ; preds = %land.lhs.true.i102
  %.b4.i103 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i103, label %land.lhs.true2.i104.rcu_read_unlock.exit109_crit_edge, label %if.then.i105

land.lhs.true2.i104.rcu_read_unlock.exit109_crit_edge: ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit109

if.then.i105:                                     ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit109

rcu_read_unlock.exit109:                          ; preds = %if.then.i105, %land.lhs.true2.i104.rcu_read_unlock.exit109_crit_edge, %land.lhs.true.i102.rcu_read_unlock.exit109_crit_edge, %if.end42.rcu_read_unlock.exit109_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  br label %cleanup.thread139

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #22
  %dev44 = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  %134 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev44, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef %135, ptr noundef nonnull %6, i32 noundef %act.0.i) #20
  br label %sw.bb45

sw.bb45:                                          ; preds = %sw.default, %bpf_prog_run_xdp.exit.sw.bb45_crit_edge
  %dev46 = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  %136 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev46, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %137, ptr noundef nonnull %6, i32 noundef %act.0.i)
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb45, %bpf_prog_run_xdp.exit.sw.bb47_crit_edge
  %xdp_drops = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 4
  %138 = ptrtoint ptr %xdp_drops to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %xdp_drops, align 8
  %inc48 = add i64 %139, 1
  store i64 %inc48, ptr %xdp_drops, align 8
  br label %err_xdp

cleanup.thread139:                                ; preds = %rcu_read_unlock.exit109, %rcu_read_unlock.exit
  %140 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i106 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i.i.i.i106 to ptr
  %preempt_count.i.i.i.i107 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %preempt_count.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %preempt_count.i.i.i.i107, align 4
  %sub.i.i.i108 = add i32 %143, -1
  store volatile i32 %sub.i.i.i108, ptr %preempt_count.i.i.i.i107, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #20
  br label %cleanup51

cleanup:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %144 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %100, ptr %frame, align 4
  %sub.ptr.lhs.cast22.i = ptrtoint ptr %107 to i32
  %sub.ptr.sub24.i = sub i32 %sub.ptr.lhs.cast22.i, %sub.ptr.lhs.cast.i
  %conv.i86 = trunc i32 %sub.ptr.sub24.i to i16
  %145 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv.i86, ptr %len.i, align 4
  %146 = trunc i32 %sub.ptr.sub.i to i16
  %conv26.i = add i16 %146, -24
  %147 = ptrtoint ptr %headroom.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv26.i, ptr %headroom.i, align 2
  %bf.shl.i = shl i32 %105, 24
  %bf.value32.i = and i32 %109, 16777215
  %bf.set34.i = or i32 %bf.value32.i, %bf.shl.i
  %148 = ptrtoint ptr %metasize.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %bf.set34.i, ptr %metasize.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #20
  br label %if.end50

if.end50:                                         ; preds = %cleanup, %do.end8.if.end50_crit_edge
  %call.i110 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i110, label %if.end50.rcu_read_unlock.exit120_crit_edge, label %land.lhs.true.i113

if.end50.rcu_read_unlock.exit120_crit_edge:       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit120

land.lhs.true.i113:                               ; preds = %if.end50
  %call1.i111 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool.not.i112, label %land.lhs.true.i113.rcu_read_unlock.exit120_crit_edge, label %land.lhs.true2.i115

land.lhs.true.i113.rcu_read_unlock.exit120_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit120

land.lhs.true2.i115:                              ; preds = %land.lhs.true.i113
  %.b4.i114 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i114, label %land.lhs.true2.i115.rcu_read_unlock.exit120_crit_edge, label %if.then.i116

land.lhs.true2.i115.rcu_read_unlock.exit120_crit_edge: ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit120

if.then.i116:                                     ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit120

rcu_read_unlock.exit120:                          ; preds = %if.then.i116, %land.lhs.true2.i115.rcu_read_unlock.exit120_crit_edge, %land.lhs.true.i113.rcu_read_unlock.exit120_crit_edge, %if.end50.rcu_read_unlock.exit120_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %149 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i117 = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i.i.i.i117 to ptr
  %preempt_count.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %preempt_count.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %preempt_count.i.i.i.i118, align 4
  %sub.i.i.i119 = add i32 %152, -1
  store volatile i32 %sub.i.i.i119, ptr %preempt_count.i.i.i.i118, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  br label %cleanup51

err_xdp:                                          ; preds = %sw.bb47, %if.then39, %if.then29, %if.then16.i, %sw.bb.err_xdp_crit_edge
  %frame.addr.0.ph = phi ptr [ %orig_frame, %if.then29 ], [ %orig_frame, %if.then39 ], [ %frame, %sw.bb47 ], [ %frame, %if.then16.i ], [ %frame, %sw.bb.err_xdp_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #20
  %call.i121 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i121, label %err_xdp.rcu_read_unlock.exit131_crit_edge, label %land.lhs.true.i124

err_xdp.rcu_read_unlock.exit131_crit_edge:        ; preds = %err_xdp
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit131

land.lhs.true.i124:                               ; preds = %err_xdp
  %call1.i122 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %tobool.not.i123 = icmp eq i32 %call1.i122, 0
  br i1 %tobool.not.i123, label %land.lhs.true.i124.rcu_read_unlock.exit131_crit_edge, label %land.lhs.true2.i126

land.lhs.true.i124.rcu_read_unlock.exit131_crit_edge: ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit131

land.lhs.true2.i126:                              ; preds = %land.lhs.true.i124
  %.b4.i125 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i125, label %land.lhs.true2.i126.rcu_read_unlock.exit131_crit_edge, label %if.then.i127

land.lhs.true2.i126.rcu_read_unlock.exit131_crit_edge: ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit131

if.then.i127:                                     ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit131

rcu_read_unlock.exit131:                          ; preds = %if.then.i127, %land.lhs.true2.i126.rcu_read_unlock.exit131_crit_edge, %land.lhs.true.i124.rcu_read_unlock.exit131_crit_edge, %err_xdp.rcu_read_unlock.exit131_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %153 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i128 = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i.i.i128 to ptr
  %preempt_count.i.i.i.i129 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %preempt_count.i.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %preempt_count.i.i.i.i129, align 4
  %sub.i.i.i130 = add i32 %156, -1
  store volatile i32 %sub.i.i.i130, ptr %preempt_count.i.i.i.i129, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  call void @xdp_return_frame(ptr noundef %frame.addr.0.ph) #20
  br label %cleanup51

cleanup51:                                        ; preds = %rcu_read_unlock.exit131, %rcu_read_unlock.exit120, %cleanup.thread139
  %retval.0 = phi ptr [ %frame, %rcu_read_unlock.exit120 ], [ null, %rcu_read_unlock.exit131 ], [ null, %cleanup.thread139 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %orig_frame) #20
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @veth_xdp_rcv_bulk_skb(ptr noundef %rq, ptr nocapture noundef readonly %frames, i32 noundef %n_xdpf, ptr nocapture noundef %stats) unnamed_addr #2 align 64 {
entry:
  %skbs = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %skbs) #20
  %0 = call ptr @memset(ptr %skbs, i32 255, i32 64)
  %call = call i32 @xdp_alloc_skb_bulk(ptr noundef nonnull %skbs, i32 noundef %n_xdpf, i32 noundef 2848) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_xdpf)
  %cmp13 = icmp sgt i32 %n_xdpf, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry
  br i1 %cmp13, label %for.body5.lr.ph, label %for.cond2.preheader.cleanup18_crit_edge

for.cond2.preheader.cleanup18_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup18

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  %dev = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  br label %for.body5

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp13, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %frames, i32 %i.04
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  call void @xdp_return_frame(ptr noundef %2) #20
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond5.not = icmp eq i32 %inc, %n_xdpf
  br i1 %exitcond5.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %conv = sext i32 %n_xdpf to i64
  %3 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %stats, align 8
  %add = add i64 %4, %conv
  store i64 %add, ptr %stats, align 8
  br label %cleanup18

for.body5:                                        ; preds = %cleanup.for.body5_crit_edge, %for.body5.lr.ph
  %i.12 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc16, %cleanup.for.body5_crit_edge ]
  %arrayidx6 = getelementptr [16 x ptr], ptr %skbs, i32 0, i32 %i.12
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr ptr, ptr %frames, i32 %i.12
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call8 = call ptr @__xdp_build_skb_from_frame(ptr noundef %8, ptr noundef %6, ptr noundef %10) #20
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then9, label %if.end13

if.then9:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #22
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7, align 4
  call void @xdp_return_frame(ptr noundef %12) #20
  %13 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %stats, align 8
  %inc12 = add i64 %14, 1
  store i64 %inc12, ptr %stats, align 8
  br label %cleanup

if.end13:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #22
  %call14 = call i32 @napi_gro_receive(ptr noundef %rq, ptr noundef nonnull %call8) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9
  %inc16 = add nuw nsw i32 %i.12, 1
  %exitcond.not = icmp eq i32 %inc16, %n_xdpf
  br i1 %exitcond.not, label %cleanup.cleanup18_crit_edge, label %cleanup.for.body5_crit_edge

cleanup.for.body5_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body5

cleanup.cleanup18_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup.cleanup18_crit_edge, %for.end, %for.cond2.preheader.cleanup18_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %skbs) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @veth_xdp_rcv_skb(ptr noundef %rq, ptr noundef %skb, ptr nocapture noundef %bq, ptr nocapture noundef %stats) unnamed_addr #2 align 64 {
entry:
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #20
  %0 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %3 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %4 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %5 = call ptr @memset(ptr %xdp, i32 255, i32 28)
  %6 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destructor.i, align 4
  %cmp.not.i = icmp eq ptr %7, @sock_wfree
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i235

if.then.i235:                                     ; preds = %entry
  %tobool.not.i.i234 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i234, label %do.body.i.i, label %if.then.i.i236

if.then.i.i236:                                   ; preds = %if.then.i235
  call void @__sanitizer_cov_trace_pc() #22
  tail call void %7(ptr noundef %skb) #20
  %8 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %destructor.i, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %9, align 4
  br label %skb_prepare_for_gro.exit

do.body.i.i:                                      ; preds = %if.then.i235
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool3.not.i.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_prepare_for_gro.exit_crit_edge, label %do.body7.i.i, !prof !140

do.body.i.i.skb_prepare_for_gro.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_prepare_for_gro.exit

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #20, !srcloc !166
  unreachable

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %14 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  br label %skb_prepare_for_gro.exit

skb_prepare_for_gro.exit:                         ; preds = %if.end.i, %do.body.i.i.skb_prepare_for_gro.exit_crit_edge, %if.then.i.i236
  %15 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !145
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %skb_prepare_for_gro.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

skb_prepare_for_gro.exit.rcu_read_lock.exit_crit_edge: ; preds = %skb_prepare_for_gro.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %skb_prepare_for_gro.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %skb_prepare_for_gro.exit.rcu_read_lock.exit_crit_edge
  %xdp_prog1 = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 3
  %19 = ptrtoint ptr %xdp_prog1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %xdp_prog1, align 8
  %call = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b230 = load i1, ptr @veth_xdp_rcv_skb.__warned, align 1
  br i1 %.b230, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_xdp_rcv_skb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 712, ptr noundef nonnull @.str.5) #20
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %if.then14, label %if.end15, !prof !144

if.then14:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup147

if.end15:                                         ; preds = %do.end8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %25 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %26 to i32
  %add.ptr.i237 = getelementptr i8, ptr %24, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i237 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub36 = sub i32 0, %sub.ptr.sub
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %add = add i32 %sub.ptr.sub, %28
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %29 = add i32 %sub.ptr.sub, %sub.ptr.rhs.cast.i
  %sub = sub i32 %sub.ptr.lhs.cast, %29
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #20
  %30 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i239.not = icmp eq i32 %31, 1
  br i1 %cmp.i239.not, label %lor.lhs.false, label %if.end15.if.then24_crit_edge

if.end15.if.then24_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end15
  %head_frag.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %32 = ptrtoint ptr %head_frag.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i241 = load i8, ptr %head_frag.i, align 2
  %33 = and i8 %bf.load.i241, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i242 = icmp eq i8 %33, 0
  br i1 %tobool.not.i242, label %lor.lhs.false.if.then24_crit_edge, label %lor.rhs.i

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then24

lor.rhs.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i241)
  %tobool.not.i.i243 = icmp sgt i8 %bf.load.i241, -1
  br i1 %tobool.not.i.i243, label %lor.rhs.i.lor.lhs.false21_crit_edge, label %skb_head_is_locked.exit

lor.rhs.i.lor.lhs.false21_crit_edge:              ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false21

skb_head_is_locked.exit:                          ; preds = %lor.rhs.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %34 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 10
  %call.i.i.i.i244 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #20
  %36 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i245 = and i32 %37, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i245)
  %cmp.i.i.not = icmp eq i32 %and.i.i245, 1
  br i1 %cmp.i.i.not, label %skb_head_is_locked.exit.lor.lhs.false21_crit_edge, label %skb_head_is_locked.exit.if.then24_crit_edge

skb_head_is_locked.exit.if.then24_crit_edge:      ; preds = %skb_head_is_locked.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then24

skb_head_is_locked.exit.lor.lhs.false21_crit_edge: ; preds = %skb_head_is_locked.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %skb_head_is_locked.exit.lor.lhs.false21_crit_edge, %lor.rhs.i.lor.lhs.false21_crit_edge
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i = icmp ne i32 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub)
  %cmp = icmp ult i32 %sub, 256
  %or.cond = select i1 %tobool.i, i1 true, i1 %cmp
  br i1 %or.cond, label %lor.lhs.false21.if.then24_crit_edge, label %lor.lhs.false21.if.end55_crit_edge

lor.lhs.false21.if.end55_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end55

lor.lhs.false21.if.then24_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false21.if.then24_crit_edge, %skb_head_is_locked.exit.if.then24_crit_edge, %lor.lhs.false.if.then24_crit_edge, %if.end15.if.then24_crit_edge
  %40 = add i32 %add, 641
  %add27 = and i32 %40, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add27)
  %cmp28 = icmp ugt i32 %add27, 4096
  br i1 %cmp28, label %if.then24.xdp_drop_crit_edge, label %if.end30

if.then24.xdp_drop_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #22
  br label %xdp_drop

if.end30:                                         ; preds = %if.then24
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 10784, i32 noundef 0, i32 noundef 0, ptr noundef null) #20
  %tobool32.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool32.not, label %if.end30.xdp_drop_crit_edge, label %if.end34

if.end30.xdp_drop_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  br label %xdp_drop

if.end34:                                         ; preds = %if.end30
  %call35 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #20
  %add.ptr = getelementptr i8, ptr %call35, i32 258
  %call37 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub36, ptr noundef %add.ptr, i32 noundef %add) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.drop.sink.split_crit_edge

if.end34.drop.sink.split_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #22
  br label %drop.sink.split

if.end40:                                         ; preds = %if.end34
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %call.i246 = tail call ptr @build_skb(ptr noundef %call35, i32 noundef 4096) #20
  %tobool.not.i247 = icmp eq ptr %call.i246, null
  br i1 %tobool.not.i247, label %if.end40.drop.sink.split_crit_edge, label %cleanup

if.end40.drop.sink.split_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %drop.sink.split

cleanup:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #22
  %add41 = add i32 %sub.ptr.sub, 258
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i246, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %add41
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i246, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %46, i32 %add41
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i248 = tail call ptr @skb_put(ptr noundef nonnull %call.i246, i32 noundef %42) #20
  tail call void @skb_copy_header(ptr noundef nonnull %call.i246, ptr noundef %skb) #20
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %head.i251 = getelementptr inbounds %struct.sk_buff, ptr %call.i246, i32 0, i32 18
  %49 = ptrtoint ptr %head.i251 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i251, align 8
  %sub.ptr.lhs.cast.i252 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i253 = ptrtoint ptr %50 to i32
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i257 = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i258 = ptrtoint ptr %54 to i32
  %55 = add i32 %sub.ptr.rhs.cast.i253, %sub.ptr.lhs.cast.i257
  %sub.ptr.sub.i254 = sub i32 %sub.ptr.lhs.cast.i252, %55
  %sub49 = add i32 %sub.ptr.sub.i254, %sub.ptr.rhs.cast.i258
  tail call void @skb_headers_offset_update(ptr noundef nonnull %call.i246, i32 noundef %sub49) #20
  tail call void @consume_skb(ptr noundef %skb) #20
  br label %if.end55

if.end55:                                         ; preds = %cleanup, %lor.lhs.false21.if.end55_crit_edge
  %skb.addr.1 = phi ptr [ %call.i246, %cleanup ], [ %skb, %lor.lhs.false21.if.end55_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 17
  %56 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %end.i, align 4
  %head57 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 18
  %58 = ptrtoint ptr %head57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head57, align 8
  %sub.ptr.lhs.cast58 = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast59 = ptrtoint ptr %59 to i32
  %sub.ptr.sub60 = add i32 %sub.ptr.lhs.cast58, 256
  %add61 = sub i32 %sub.ptr.sub60, %sub.ptr.rhs.cast59
  %xdp_rxq = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 9
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add61, ptr %4, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %xdp_rxq, ptr %3, align 4
  %mac_header = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 21
  %62 = ptrtoint ptr %mac_header to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %mac_header, align 2
  %conv = zext i16 %63 to i32
  %add.ptr.i = getelementptr i8, ptr %59, i32 %conv
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %59, ptr %2, align 4
  %65 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.i, ptr %xdp, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %add
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr2.i, ptr %0, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i, ptr %1, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str.8, i32 noundef 613) #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@veth_xdp_rcv_skb, %if.then.i.i)) #20
          to label %if.else.i.i [label %if.then.i.i], !srcloc !157

if.then.i.i:                                      ; preds = %if.end55
  %call3.i.i = tail call i64 @sched_clock() #20
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 9
  %68 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi.i.i, ptr noundef %69) #20
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 7
  %70 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %stats9.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %78, %72
  %79 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %79, i32 0, i32 3
  %80 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !158
  %and.i.i.i.i = and i32 %80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @trace_hardirqs_off() #20
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %81 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i.i.i.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %82 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %85, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !159
  %86 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i231 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i231 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %91, ptrtoint (ptr @lockdep_recursion to i32)
  %92 = inttoptr i32 %add.i.i.i.i to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !160
  %95 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i7.i.i.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %98, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool20.not.i.i.i.i = icmp eq i32 %94, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %99 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.i.i.i.i = icmp eq i32 %102, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %103 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i9.i.i.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %106, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !161
  %107 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %110, ptrtoint (ptr @hardirqs_enabled to i32)
  %111 = inttoptr i32 %add47.i.i.i.i to ptr
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %111, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !162
  %114 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i12.i.i.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %117, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool54.not.i.i.i.i = icmp eq i32 %113, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 271, i32 noundef 9, ptr noundef null) #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %118 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %119, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !163
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %79, i32 0, i32 3, i32 0, i32 1
  %120 = call ptr @llvm.returnaddress(i32 0) #20
  %121 = ptrtoint ptr %120 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %121) #20
  %122 = ptrtoint ptr %79 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %79, align 8
  %inc.i.i.i = add i64 %123, 1
  store i64 %inc.i.i.i, ptr %79, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %79, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #20
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %124 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i232 = add i64 %conv.i.i.i, %125
  store i64 %add.i.i.i232, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %121) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !147
  %126 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %127, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @trace_hardirqs_on() #20
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %128 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #20, !srcloc !164
  %and.i.i.i3.i.i = and i32 %128, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !144

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @warn_bogus_irq_restore() #20
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %80) #20, !srcloc !165
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #22
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 9
  %129 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi15.i.i, ptr noundef %130) #20
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@veth_xdp_rcv_skb, %l_yes.i.i)) #20
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !157

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i233, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i233:                               ; preds = %arch_static_branch.exit.i
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %3, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 14
  %135 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %136, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i233.sw.bb_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i233.sw.bb_crit_edge:               ; preds = %land.lhs.true.i233
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i233
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 15
  %137 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %138, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.sw.bb_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.sw.bb_crit_edge:       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %call6.i = call i32 @xdp_master_redirect(ptr noundef nonnull %xdp) #20
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %139 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %act.0.i, label %sw.default [
    i32 2, label %sw.epilog
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb_crit_edge
    i32 4, label %sw.bb82
    i32 0, label %bpf_prog_run_xdp.exit.sw.bb101_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb103_crit_edge
  ]

bpf_prog_run_xdp.exit.sw.bb103_crit_edge:         ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb103

bpf_prog_run_xdp.exit.sw.bb101_crit_edge:         ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb101

bpf_prog_run_xdp.exit.sw.bb_crit_edge:            ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

sw.bb:                                            ; preds = %bpf_prog_run_xdp.exit.sw.bb_crit_edge, %netif_is_bond_slave.exit.i.sw.bb_crit_edge, %land.lhs.true.i233.sw.bb_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %140 = load ptr, ptr @mem_map, align 4
  %141 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %xdp, align 4
  %143 = ptrtoint ptr %142 to i32
  %sub66 = add i32 %143, 1073741824
  %shr = lshr i32 %sub66, 12
  %144 = getelementptr %struct.page, ptr %140, i32 %shr, i32 1
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %144, align 4
  %and.i.i260 = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i260)
  %tobool.not.i.i261 = icmp eq i32 %and.i.i260, 0
  br i1 %tobool.not.i.i261, label %if.end.i.i, label %if.then.i.i263, !prof !140

if.then.i.i263:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %sub.i.i262 = add i32 %146, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr69 = getelementptr %struct.page, ptr %140, i32 %shr
  %147 = ptrtoint ptr %add.ptr69 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i263
  %retval.0.i.i264 = phi i32 [ %sub.i.i262, %if.then.i.i263 ], [ %147, %if.end.i.i ]
  %148 = inttoptr i32 %retval.0.i.i264 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %148, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #20
  %149 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i265 = add i32 %150, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i265)
  %cmp.i.i266 = icmp ult i32 %add.i.i265, 128
  br i1 %cmp.i.i266, label %if.then.i1.i, label %do.end5.i.i, !prof !144

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @dump_page(ptr noundef %148, ptr noundef nonnull @.str.15) #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #20, !srcloc !167
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #20
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #20
  %151 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #20, !srcloc !168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@veth_xdp_rcv_skb, %if.then.i.i.i.i267)) #20
          to label %get_page.exit [label %if.then.i.i.i.i267], !srcloc !157

if.then.i.i.i.i267:                               ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @__page_ref_mod(ptr noundef %148, i32 noundef 1) #20
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i267, %do.end5.i.i
  call void @consume_skb(ptr noundef %skb.addr.1) #20
  %152 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %3, align 4
  %mem = getelementptr inbounds %struct.xdp_rxq_info, ptr %153, i32 0, i32 3
  %xdp_mem = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 4
  %154 = ptrtoint ptr %xdp_mem to i32
  call void @__asan_loadN_noabort(i32 %154, i32 8)
  %155 = load i64, ptr %xdp_mem, align 4
  %156 = ptrtoint ptr %mem to i32
  call void @__asan_storeN_noabort(i32 %156, i32 8)
  store i64 %155, ptr %mem, align 4
  %call70 = call fastcc i32 @veth_xdp_tx(ptr noundef %rq, ptr noundef nonnull %xdp, ptr noundef %bq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then79, label %if.end80, !prof !144

if.then79:                                        ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #22
  %dev = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  %157 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %158, ptr noundef nonnull %20, i32 noundef 3)
  br label %err_xdp

if.end80:                                         ; preds = %get_page.exit
  %xdp_tx = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 5
  %159 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %xdp_tx, align 8
  %inc81 = add i64 %160, 1
  store i64 %inc81, ptr %xdp_tx, align 8
  %call.i268 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i268, label %if.end80.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i271

if.end80.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i271:                               ; preds = %if.end80
  %call1.i269 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i269)
  %tobool.not.i270 = icmp eq i32 %call1.i269, 0
  br i1 %tobool.not.i270, label %land.lhs.true.i271.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i273

land.lhs.true.i271.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i271
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i273:                              ; preds = %land.lhs.true.i271
  %.b4.i272 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i272, label %land.lhs.true2.i273.rcu_read_unlock.exit_crit_edge, label %if.then.i274

land.lhs.true2.i273.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i273
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i274:                                     ; preds = %land.lhs.true2.i273
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i274, %land.lhs.true2.i273.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i271.rcu_read_unlock.exit_crit_edge, %if.end80.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %161 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i275 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i.i.i275 to ptr
  %preempt_count.i.i.i.i276 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %preempt_count.i.i.i.i276 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %preempt_count.i.i.i.i276, align 4
  %sub.i.i.i = add i32 %164, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i276, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  br label %cleanup147

sw.bb82:                                          ; preds = %bpf_prog_run_xdp.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %165 = load ptr, ptr @mem_map, align 4
  %166 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %xdp, align 4
  %168 = ptrtoint ptr %167 to i32
  %sub84 = add i32 %168, 1073741824
  %shr85 = lshr i32 %sub84, 12
  %169 = getelementptr %struct.page, ptr %165, i32 %shr85, i32 1
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %169, align 4
  %and.i.i277 = and i32 %171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i277)
  %tobool.not.i.i278 = icmp eq i32 %and.i.i277, 0
  br i1 %tobool.not.i.i278, label %if.end.i.i281, label %if.then.i.i280, !prof !140

if.then.i.i280:                                   ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #22
  %sub.i.i279 = add i32 %171, -1
  br label %_compound_head.exit.i287

if.end.i.i281:                                    ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr88 = getelementptr %struct.page, ptr %165, i32 %shr85
  %172 = ptrtoint ptr %add.ptr88 to i32
  br label %_compound_head.exit.i287

_compound_head.exit.i287:                         ; preds = %if.end.i.i281, %if.then.i.i280
  %retval.0.i.i282 = phi i32 [ %sub.i.i279, %if.then.i.i280 ], [ %172, %if.end.i.i281 ]
  %173 = inttoptr i32 %retval.0.i.i282 to ptr
  %_refcount.i.i.i.i283 = getelementptr inbounds %struct.page, ptr %173, i32 0, i32 3
  %call.i.i.i.i.i.i284 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i283, i32 noundef 4) #20
  %174 = ptrtoint ptr %_refcount.i.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %_refcount.i.i.i.i283, align 4
  %add.i.i285 = add i32 %175, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i285)
  %cmp.i.i286 = icmp ult i32 %add.i.i285, 128
  br i1 %cmp.i.i286, label %if.then.i1.i288, label %do.end5.i.i290, !prof !144

if.then.i1.i288:                                  ; preds = %_compound_head.exit.i287
  call void @__sanitizer_cov_trace_pc() #22
  call void @dump_page(ptr noundef %173, ptr noundef nonnull @.str.15) #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #20, !srcloc !167
  unreachable

do.end5.i.i290:                                   ; preds = %_compound_head.exit.i287
  %call.i.i.i.i9.i.i289 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i283, i32 noundef 4) #20
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i283, i32 1, i32 3, i32 1) #20
  %176 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i283, ptr %_refcount.i.i.i.i283, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i283) #20, !srcloc !168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@veth_xdp_rcv_skb, %if.then.i.i.i.i291)) #20
          to label %get_page.exit292 [label %if.then.i.i.i.i291], !srcloc !157

if.then.i.i.i.i291:                               ; preds = %do.end5.i.i290
  call void @__sanitizer_cov_trace_pc() #22
  call void @__page_ref_mod(ptr noundef %173, i32 noundef 1) #20
  br label %get_page.exit292

get_page.exit292:                                 ; preds = %if.then.i.i.i.i291, %do.end5.i.i290
  call void @consume_skb(ptr noundef %skb.addr.1) #20
  %177 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %3, align 4
  %mem90 = getelementptr inbounds %struct.xdp_rxq_info, ptr %178, i32 0, i32 3
  %xdp_mem91 = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 4
  %179 = ptrtoint ptr %xdp_mem91 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 8)
  %180 = load i64, ptr %xdp_mem91, align 4
  %181 = ptrtoint ptr %mem90 to i32
  call void @__asan_storeN_noabort(i32 %181, i32 8)
  store i64 %180, ptr %mem90, align 4
  %dev92 = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  %182 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev92, align 4
  %call93 = call i32 @xdp_do_redirect(ptr noundef %183, ptr noundef nonnull %xdp, ptr noundef nonnull %20) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end98, label %get_page.exit292.err_xdp_crit_edge

get_page.exit292.err_xdp_crit_edge:               ; preds = %get_page.exit292
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_xdp

if.end98:                                         ; preds = %get_page.exit292
  %xdp_redirect = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 3
  %184 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %xdp_redirect, align 8
  %inc99 = add i64 %185, 1
  store i64 %inc99, ptr %xdp_redirect, align 8
  %call.i293 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i293, label %if.end98.rcu_read_unlock.exit303_crit_edge, label %land.lhs.true.i296

if.end98.rcu_read_unlock.exit303_crit_edge:       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit303

land.lhs.true.i296:                               ; preds = %if.end98
  %call1.i294 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i294)
  %tobool.not.i295 = icmp eq i32 %call1.i294, 0
  br i1 %tobool.not.i295, label %land.lhs.true.i296.rcu_read_unlock.exit303_crit_edge, label %land.lhs.true2.i298

land.lhs.true.i296.rcu_read_unlock.exit303_crit_edge: ; preds = %land.lhs.true.i296
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit303

land.lhs.true2.i298:                              ; preds = %land.lhs.true.i296
  %.b4.i297 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i297, label %land.lhs.true2.i298.rcu_read_unlock.exit303_crit_edge, label %if.then.i299

land.lhs.true2.i298.rcu_read_unlock.exit303_crit_edge: ; preds = %land.lhs.true2.i298
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit303

if.then.i299:                                     ; preds = %land.lhs.true2.i298
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit303

rcu_read_unlock.exit303:                          ; preds = %if.then.i299, %land.lhs.true2.i298.rcu_read_unlock.exit303_crit_edge, %land.lhs.true.i296.rcu_read_unlock.exit303_crit_edge, %if.end98.rcu_read_unlock.exit303_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %186 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i300 = and i32 %186, -16384
  %187 = inttoptr i32 %and.i.i.i.i.i300 to ptr
  %preempt_count.i.i.i.i301 = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %preempt_count.i.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %preempt_count.i.i.i.i301, align 4
  %sub.i.i.i302 = add i32 %189, -1
  store volatile i32 %sub.i.i.i302, ptr %preempt_count.i.i.i.i301, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  br label %cleanup147

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #22
  %dev100 = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  %190 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev100, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef %191, ptr noundef nonnull %20, i32 noundef %act.0.i) #20
  br label %sw.bb101

sw.bb101:                                         ; preds = %sw.default, %bpf_prog_run_xdp.exit.sw.bb101_crit_edge
  %dev102 = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  %192 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev102, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %193, ptr noundef nonnull %20, i32 noundef %act.0.i)
  br label %sw.bb103

sw.bb103:                                         ; preds = %sw.bb101, %bpf_prog_run_xdp.exit.sw.bb103_crit_edge
  %xdp_drops = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 4
  br label %xdp_drop

sw.epilog:                                        ; preds = %bpf_prog_run_xdp.exit
  %call.i304 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i304, label %sw.epilog.rcu_read_unlock.exit314_crit_edge, label %land.lhs.true.i307

sw.epilog.rcu_read_unlock.exit314_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit314

land.lhs.true.i307:                               ; preds = %sw.epilog
  %call1.i305 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i305)
  %tobool.not.i306 = icmp eq i32 %call1.i305, 0
  br i1 %tobool.not.i306, label %land.lhs.true.i307.rcu_read_unlock.exit314_crit_edge, label %land.lhs.true2.i309

land.lhs.true.i307.rcu_read_unlock.exit314_crit_edge: ; preds = %land.lhs.true.i307
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit314

land.lhs.true2.i309:                              ; preds = %land.lhs.true.i307
  %.b4.i308 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i308, label %land.lhs.true2.i309.rcu_read_unlock.exit314_crit_edge, label %if.then.i310

land.lhs.true2.i309.rcu_read_unlock.exit314_crit_edge: ; preds = %land.lhs.true2.i309
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit314

if.then.i310:                                     ; preds = %land.lhs.true2.i309
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit314

rcu_read_unlock.exit314:                          ; preds = %if.then.i310, %land.lhs.true2.i309.rcu_read_unlock.exit314_crit_edge, %land.lhs.true.i307.rcu_read_unlock.exit314_crit_edge, %sw.epilog.rcu_read_unlock.exit314_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %194 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i311 = and i32 %194, -16384
  %195 = inttoptr i32 %and.i.i.i.i.i311 to ptr
  %preempt_count.i.i.i.i312 = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %preempt_count.i.i.i.i312 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %preempt_count.i.i.i.i312, align 4
  %sub.i.i.i313 = add i32 %197, -1
  store volatile i32 %sub.i.i.i313, ptr %preempt_count.i.i.i.i312, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  %198 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast106 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast107 = ptrtoint ptr %199 to i32
  %sub.ptr.sub108 = sub i32 %sub.ptr.lhs.cast106, %sub.ptr.rhs.cast107
  %add109 = add i32 %sub.ptr.sub108, %sub.ptr.sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add109)
  %cmp110 = icmp sgt i32 %add109, 0
  br i1 %cmp110, label %if.then112, label %if.else

if.then112:                                       ; preds = %rcu_read_unlock.exit314
  call void @__sanitizer_cov_trace_pc() #22
  %data.i315 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %200 = ptrtoint ptr %data.i315 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %data.i315, align 4
  %idx.neg.i = sub nsw i32 0, %add109
  %add.ptr.i316 = getelementptr i8, ptr %201, i32 %idx.neg.i
  store ptr %add.ptr.i316, ptr %data.i315, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %202 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %203, %add109
  store i32 %add.i, ptr %len1.i, align 4
  br label %if.end120

if.else:                                          ; preds = %rcu_read_unlock.exit314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add109)
  %cmp114 = icmp slt i32 %add109, 0
  br i1 %cmp114, label %if.then116, label %if.else.if.end120_crit_edge

if.else.if.end120_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end120

if.then116:                                       ; preds = %if.else
  %len1.i317 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %204 = ptrtoint ptr %len1.i317 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %len1.i317, align 4
  %sub.i = add i32 %205, %add109
  store i32 %sub.i, ptr %len1.i317, align 4
  %data_len.i318 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 7
  %206 = ptrtoint ptr %data_len.i318 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %data_len.i318, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %207)
  %cmp.i319 = icmp ult i32 %sub.i, %207
  br i1 %cmp.i319, label %do.body4.i, label %__skb_pull.exit, !prof !144

do.body4.i:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #20, !srcloc !169
  unreachable

__skb_pull.exit:                                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #22
  %sub117 = sub i32 0, %add109
  %data.i320 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %208 = ptrtoint ptr %data.i320 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data.i320, align 4
  %add.ptr.i321 = getelementptr i8, ptr %209, i32 %sub117
  store ptr %add.ptr.i321, ptr %data.i320, align 4
  br label %if.end120

if.end120:                                        ; preds = %__skb_pull.exit, %if.else.if.end120_crit_edge, %if.then112
  %210 = ptrtoint ptr %mac_header to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %mac_header, align 2
  %212 = trunc i32 %sub.ptr.sub108 to i16
  %conv124 = sub i16 %211, %212
  store i16 %conv124, ptr %mac_header, align 2
  %213 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %0, align 4
  %cmp129.not = icmp eq ptr %214, %add.ptr2.i
  br i1 %cmp129.not, label %if.end120.if.end133_crit_edge, label %if.then131

if.end120.if.end133_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end133

if.then131:                                       ; preds = %if.end120
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 7
  %215 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool.i.not.i = icmp eq i32 %216, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !140

do.body3.i:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #22
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #20, !srcloc !170
  unreachable

__skb_put.exit:                                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #22
  %sub.ptr.lhs.cast126 = ptrtoint ptr %214 to i32
  %sub.ptr.rhs.cast127 = ptrtoint ptr %add.ptr2.i to i32
  %sub.ptr.sub128 = sub i32 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 16
  %217 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %tail.i, align 8
  %add.ptr.i322 = getelementptr i8, ptr %218, i32 %sub.ptr.sub128
  store ptr %add.ptr.i322, ptr %tail.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %219 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %len9.i, align 4
  %add.i323 = add i32 %220, %sub.ptr.sub128
  store i32 %add.i323, ptr %len9.i, align 4
  br label %if.end133

if.end133:                                        ; preds = %__skb_put.exit, %if.end120.if.end133_crit_edge
  %dev134 = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  %221 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev134, align 4
  %call135 = call zeroext i16 @eth_type_trans(ptr noundef %skb.addr.1, ptr noundef %222) #20
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 18
  %223 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %call135, ptr %protocol, align 8
  %224 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %xdp, align 4
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 4
  %tobool140.not = icmp eq ptr %225, %227
  br i1 %tobool140.not, label %if.end133.cleanup147_crit_edge, label %if.then141

if.end133.cleanup147_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup147

if.then141:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #22
  %sub.ptr.rhs.cast138 = ptrtoint ptr %227 to i32
  %sub.ptr.lhs.cast137 = ptrtoint ptr %225 to i32
  %sub.ptr.sub139 = sub i32 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast138
  %conv142 = trunc i32 %sub.ptr.sub139 to i8
  %228 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %end.i, align 4
  %meta_len1.i = getelementptr inbounds %struct.skb_shared_info, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %meta_len1.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv142, ptr %meta_len1.i, align 1
  br label %cleanup147

drop.sink.split:                                  ; preds = %if.end40.drop.sink.split_crit_edge, %if.end34.drop.sink.split_crit_edge
  tail call void @page_frag_free(ptr noundef %call35) #20
  br label %xdp_drop

xdp_drop:                                         ; preds = %drop.sink.split, %sw.bb103, %if.end30.xdp_drop_crit_edge, %if.then24.xdp_drop_crit_edge
  %stats.sink351 = phi ptr [ %xdp_drops, %sw.bb103 ], [ %stats, %drop.sink.split ], [ %stats, %if.then24.xdp_drop_crit_edge ], [ %stats, %if.end30.xdp_drop_crit_edge ]
  %skb.addr.3 = phi ptr [ %skb.addr.1, %sw.bb103 ], [ %skb, %drop.sink.split ], [ %skb, %if.then24.xdp_drop_crit_edge ], [ %skb, %if.end30.xdp_drop_crit_edge ]
  %231 = ptrtoint ptr %stats.sink351 to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %stats.sink351, align 8
  %inc145 = add i64 %232, 1
  store i64 %inc145, ptr %stats.sink351, align 8
  %call.i324 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i324, label %xdp_drop.rcu_read_unlock.exit334_crit_edge, label %land.lhs.true.i327

xdp_drop.rcu_read_unlock.exit334_crit_edge:       ; preds = %xdp_drop
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit334

land.lhs.true.i327:                               ; preds = %xdp_drop
  %call1.i325 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i325)
  %tobool.not.i326 = icmp eq i32 %call1.i325, 0
  br i1 %tobool.not.i326, label %land.lhs.true.i327.rcu_read_unlock.exit334_crit_edge, label %land.lhs.true2.i329

land.lhs.true.i327.rcu_read_unlock.exit334_crit_edge: ; preds = %land.lhs.true.i327
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit334

land.lhs.true2.i329:                              ; preds = %land.lhs.true.i327
  %.b4.i328 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i328, label %land.lhs.true2.i329.rcu_read_unlock.exit334_crit_edge, label %if.then.i330

land.lhs.true2.i329.rcu_read_unlock.exit334_crit_edge: ; preds = %land.lhs.true2.i329
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit334

if.then.i330:                                     ; preds = %land.lhs.true2.i329
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit334

rcu_read_unlock.exit334:                          ; preds = %if.then.i330, %land.lhs.true2.i329.rcu_read_unlock.exit334_crit_edge, %land.lhs.true.i327.rcu_read_unlock.exit334_crit_edge, %xdp_drop.rcu_read_unlock.exit334_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %233 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i331 = and i32 %233, -16384
  %234 = inttoptr i32 %and.i.i.i.i.i331 to ptr
  %preempt_count.i.i.i.i332 = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %preempt_count.i.i.i.i332 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %preempt_count.i.i.i.i332, align 4
  %sub.i.i.i333 = add i32 %236, -1
  store volatile i32 %sub.i.i.i333, ptr %preempt_count.i.i.i.i332, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  call void @kfree_skb_reason(ptr noundef %skb.addr.3, i32 noundef 0) #20
  br label %cleanup147

err_xdp:                                          ; preds = %get_page.exit292.err_xdp_crit_edge, %if.then79
  %237 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %237)
  %storemerge.in = load i64, ptr %stats, align 8
  %storemerge = add i64 %storemerge.in, 1
  store i64 %storemerge, ptr %stats, align 8
  %call.i335 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i335, label %err_xdp.rcu_read_unlock.exit345_crit_edge, label %land.lhs.true.i338

err_xdp.rcu_read_unlock.exit345_crit_edge:        ; preds = %err_xdp
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit345

land.lhs.true.i338:                               ; preds = %err_xdp
  %call1.i336 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i336)
  %tobool.not.i337 = icmp eq i32 %call1.i336, 0
  br i1 %tobool.not.i337, label %land.lhs.true.i338.rcu_read_unlock.exit345_crit_edge, label %land.lhs.true2.i340

land.lhs.true.i338.rcu_read_unlock.exit345_crit_edge: ; preds = %land.lhs.true.i338
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit345

land.lhs.true2.i340:                              ; preds = %land.lhs.true.i338
  %.b4.i339 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i339, label %land.lhs.true2.i340.rcu_read_unlock.exit345_crit_edge, label %if.then.i341

land.lhs.true2.i340.rcu_read_unlock.exit345_crit_edge: ; preds = %land.lhs.true2.i340
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit345

if.then.i341:                                     ; preds = %land.lhs.true2.i340
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit345

rcu_read_unlock.exit345:                          ; preds = %if.then.i341, %land.lhs.true2.i340.rcu_read_unlock.exit345_crit_edge, %land.lhs.true.i338.rcu_read_unlock.exit345_crit_edge, %err_xdp.rcu_read_unlock.exit345_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %238 = call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i342 = and i32 %238, -16384
  %239 = inttoptr i32 %and.i.i.i.i.i342 to ptr
  %preempt_count.i.i.i.i343 = getelementptr inbounds %struct.thread_info, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %preempt_count.i.i.i.i343 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile i32, ptr %preempt_count.i.i.i.i343, align 4
  %sub.i.i.i344 = add i32 %241, -1
  store volatile i32 %sub.i.i.i344, ptr %preempt_count.i.i.i.i343, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  %242 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %xdp, align 4
  call void @page_frag_free(ptr noundef %243) #20
  br label %cleanup147

cleanup147:                                       ; preds = %rcu_read_unlock.exit345, %rcu_read_unlock.exit334, %if.then141, %if.end133.cleanup147_crit_edge, %rcu_read_unlock.exit303, %rcu_read_unlock.exit, %if.then14
  %retval.0 = phi ptr [ null, %rcu_read_unlock.exit334 ], [ %skb, %if.then14 ], [ %skb.addr.1, %if.then141 ], [ %skb.addr.1, %if.end133.cleanup147_crit_edge ], [ null, %rcu_read_unlock.exit345 ], [ null, %rcu_read_unlock.exit303 ], [ null, %rcu_read_unlock.exit ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #20
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !159
  %5 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !160
  %14 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !161
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !162
  %33 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !140

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 271, i32 noundef 9, ptr noundef null) #20
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !163
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #20
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @veth_xdp_tx(ptr noundef %rq, ptr noundef %xdp, ptr nocapture noundef %bq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %0 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxq.i, align 4
  %mem.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call.i = tail call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %xdp) #20
  br label %xdp_convert_buff_to_frame.exit

if.end.i:                                         ; preds = %entry
  %data_hard_start.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %4 = ptrtoint ptr %data_hard_start.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_hard_start.i, align 4
  %6 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %data_meta.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %8 = ptrtoint ptr %data_meta.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_meta.i.i, align 4
  %sub.ptr.rhs.cast3.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub4.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast3.i.i
  %10 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i.i, i32 0) #20
  %sub.i.i = sub i32 %sub.ptr.sub.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i)
  %cmp5.i.i = icmp ult i32 %sub.i.i, 24
  br i1 %cmp5.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.i, !prof !144

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  %data_end.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %11 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_end.i.i, align 4
  %frame_sz.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %13 = ptrtoint ptr %frame_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_sz.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %14
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -256
  %cmp9.i.i = icmp ugt ptr %12, %add.ptr8.i.i
  br i1 %cmp9.i.i, label %if.then16.i.i, label %if.end5.i, !prof !144

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @xdp_warn(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #20
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %5, align 4
  %16 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_end.i.i, align 4
  %18 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast22.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast23.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub24.i.i = sub i32 %sub.ptr.lhs.cast22.i.i, %sub.ptr.rhs.cast23.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub24.i.i to i16
  %len.i.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %len.i.i, align 4
  %21 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv26.i.i = add i16 %21, -24
  %headroom27.i.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %headroom27.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv26.i.i, ptr %headroom27.i.i, align 2
  %metasize28.i.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %metasize28.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i.i = load i32, ptr %metasize28.i.i, align 4
  %bf.shl.i.i = shl i32 %10, 24
  %bf.clear.i.i = and i32 %bf.load.i.i, 16777215
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %metasize28.i.i, align 4
  %24 = ptrtoint ptr %frame_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_sz.i.i, align 4
  %bf.value32.i.i = and i32 %25, 16777215
  %bf.set34.i.i = or i32 %bf.value32.i.i, %bf.shl.i.i
  store i32 %bf.set34.i.i, ptr %metasize28.i.i, align 4
  %mem6.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxq.i, align 4
  %mem8.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %mem8.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %mem8.i, align 4
  %30 = ptrtoint ptr %mem6.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %mem6.i, align 4
  br label %xdp_convert_buff_to_frame.exit

xdp_convert_buff_to_frame.exit:                   ; preds = %if.end5.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %5, %if.end5.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xdp_convert_buff_to_frame.exit.cleanup_crit_edge, label %if.end, !prof !144

xdp_convert_buff_to_frame.exit.cleanup_crit_edge: ; preds = %xdp_convert_buff_to_frame.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %xdp_convert_buff_to_frame.exit
  %count = getelementptr inbounds %struct.veth_xdp_tx_bq, ptr %bq, i32 0, i32 1
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %32)
  %cmp = icmp eq i32 %32, 16
  br i1 %cmp, label %if.then10, label %if.end.if.end11_crit_edge, !prof !144

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @veth_xdp_flush_bq(ptr noundef %rq, ptr noundef %bq)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %33 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %count, align 4
  %arrayidx = getelementptr [16 x ptr], ptr %bq, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %xdp_convert_buff_to_frame.exit.cleanup_crit_edge, %if.then16.i.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -75, %xdp_convert_buff_to_frame.exit.cleanup_crit_edge ], [ -75, %if.then16.i.i ], [ -75, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #20
          to label %if.end48 [label %do.body], !srcloc !157

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #20
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
  call void @__sanitizer_cov_trace_pc() #22
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #20
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
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #22
  %9 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !171
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !128) #20
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !128) #20
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
  call void @__sanitizer_cov_trace_pc() #22
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #22
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #20
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
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 51, ptr noundef nonnull @.str.5) #20
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !174
  %31 = tail call i32 @llvm.read_register.i32(metadata !128) #20
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @veth_xdp_flush_bq(ptr noundef %rq, ptr nocapture noundef %bq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %count = getelementptr inbounds %struct.veth_xdp_tx_bq, ptr %bq, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %call = tail call fastcc i32 @veth_xdp_xmit(ptr noundef %1, i32 noundef %3, ptr noundef %bq, i32 noundef 0, i1 noundef zeroext false)
  %4 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp234 = icmp ult i32 %4, %6
  br i1 %cmp234, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge, !prof !144

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %bq, i32 0, i32 %i.035
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void @xdp_return_frame(ptr noundef %8) #20
  %inc = add nuw i32 %i.035, 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %cmp2 = icmp ult i32 %inc, %10
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !prof !144

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %6, %entry.for.end_crit_edge ], [ %10, %for.body.for.end_crit_edge ]
  %11 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  %sub = sub i32 %.lcssa, %4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call fastcc void @trace_xdp_bulk_tx(ptr noundef %13, i32 noundef %4, i32 noundef %sub, i32 noundef %11)
  %syncp = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 5, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %conv = zext i32 %4 to i64
  %xdp_tx = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 5, i32 0, i32 5
  %14 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %xdp_tx, align 8
  %add = add i64 %15, %conv
  store i64 %add, ptr %xdp_tx, align 8
  %conv8 = sext i32 %sub to i64
  %xdp_tx_err = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 5, i32 0, i32 6
  %16 = ptrtoint ptr %xdp_tx_err to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %xdp_tx_err, align 8
  %add11 = add i64 %17, %conv8
  store i64 %add11, ptr %xdp_tx_err, align 8
  %dep_map.i.i = getelementptr inbounds %struct.veth_rq, ptr %rq, i32 0, i32 5, i32 1, i32 0, i32 1
  %18 = tail call ptr @llvm.returnaddress(i32 0) #20
  %19 = ptrtoint ptr %18 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %19) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !147
  %20 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %count, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @veth_xdp_xmit(ptr noundef %dev, i32 noundef %n, ptr nocapture noundef readonly %frames, i32 noundef %flags, i1 noundef zeroext %ndo_xmit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup75_crit_edge, !prof !140

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup75

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !145
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr.i, align 8
  %call4 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end13

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b103 = load i1, ptr @veth_xdp_xmit.__warned, align 1
  br i1 %.b103, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_xdp_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 478, ptr noundef nonnull @.str.5) #20
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %do.end13.out_crit_edge, label %if.end25, !prof !144

do.end13.out_crit_edge:                           ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end25:                                         ; preds = %do.end13
  %rq27 = getelementptr i8, ptr %5, i32 2324
  %6 = ptrtoint ptr %rq27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq27, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 89
  %12 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %real_num_rx_queues.i, align 4
  %rem.i = urem i32 %11, %13
  %arrayidx = getelementptr %struct.veth_rq, ptr %7, i32 %rem.i
  %napi = getelementptr %struct.veth_rq, ptr %7, i32 %rem.i, i32 1
  %14 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %napi, align 32
  %tobool34.not = icmp eq ptr %15, null
  br i1 %tobool34.not, label %if.end25.out_crit_edge, label %if.end36

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end36:                                         ; preds = %if.end25
  %mtu = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 19
  %18 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %19 to i32
  %add = add i32 %17, 4
  %add37 = add i32 %add, %conv
  %xdp_ring = getelementptr %struct.veth_rq, ptr %7, i32 %rem.i, i32 8
  %producer_lock = getelementptr %struct.veth_rq, ptr %7, i32 %rem.i, i32 8, i32 1
  tail call void @_raw_spin_lock(ptr noundef %producer_lock) #20
  %size.i = getelementptr %struct.veth_rq, ptr %7, i32 %rem.i, i32 8, i32 7
  %queue.i = getelementptr %struct.veth_rq, ptr %7, i32 %rem.i, i32 8, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp128 = icmp sgt i32 %n, 0
  br i1 %cmp128, label %if.end36.for.body_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end36.for.body_crit_edge
  %i.0130 = phi i32 [ %inc56, %for.inc.for.body_crit_edge ], [ 0, %if.end36.for.body_crit_edge ]
  %arrayidx39 = getelementptr ptr, ptr %frames, i32 %i.0130
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx39, align 4
  %22 = ptrtoint ptr %21 to i32
  %or.i = or i32 %22, 1
  %23 = inttoptr i32 %or.i to ptr
  %len = getelementptr inbounds %struct.xdp_frame, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len, align 4
  %conv41 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %conv41)
  %cmp42 = icmp ult i32 %add37, %conv41
  br i1 %cmp42, label %for.body.for.end_crit_edge, label %lor.rhs, !prof !144

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

lor.rhs:                                          ; preds = %for.body
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i106 = icmp eq i32 %27, 0
  br i1 %tobool.not.i106, label %lor.rhs.for.end_crit_edge, label %lor.lhs.false.i, !prof !144

lor.rhs.for.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

lor.lhs.false.i:                                  ; preds = %lor.rhs
  %28 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue.i, align 8
  %30 = ptrtoint ptr %xdp_ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xdp_ring, align 128
  %arrayidx.i = getelementptr ptr, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %do.end.i, label %lor.lhs.false.i.for.end_crit_edge

lor.lhs.false.i.for.end_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

do.end.i:                                         ; preds = %lor.lhs.false.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !146
  %34 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue.i, align 8
  %36 = ptrtoint ptr %xdp_ring to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xdp_ring, align 128
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %xdp_ring, align 128
  %arrayidx13.i = getelementptr ptr, ptr %35, i32 %37
  %38 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %23, ptr %arrayidx13.i, align 4
  %39 = load i32, ptr %xdp_ring, align 128
  %40 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.not.i = icmp slt i32 %39, %41
  br i1 %cmp.not.i, label %do.end.i.for.inc_crit_edge, label %if.then24.i, !prof !140

do.end.i.for.inc_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then24.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %42 = ptrtoint ptr %xdp_ring to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %xdp_ring, align 128
  br label %for.inc

for.inc:                                          ; preds = %if.then24.i, %do.end.i.for.inc_crit_edge
  %inc56 = add nuw nsw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc56, %n
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false.i.for.end_crit_edge, %lor.rhs.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end36.for.end_crit_edge
  %nxmit.0.lcssa = phi i32 [ 0, %if.end36.for.end_crit_edge ], [ %i.0130, %lor.rhs.for.end_crit_edge ], [ %i.0130, %lor.lhs.false.i.for.end_crit_edge ], [ %i.0130, %for.body.for.end_crit_edge ], [ %n, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %producer_lock) #20
  %and59 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %for.end.if.end62_crit_edge, label %if.then61

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end62

if.then61:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !148
  %rx_notify_masked.i = getelementptr %struct.veth_rq, ptr %7, i32 %rem.i, i32 6
  %43 = ptrtoint ptr %rx_notify_masked.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load volatile i8, ptr %rx_notify_masked.i, align 32, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i107 = icmp eq i8 %44, 0
  br i1 %tobool.not.i107, label %land.lhs.true.i109, label %if.then61.if.end62_crit_edge

if.then61.if.end62_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end62

land.lhs.true.i109:                               ; preds = %if.then61
  %call.i108 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx) #20
  br i1 %call.i108, label %do.body9.i, label %land.lhs.true.i109.if.end62_crit_edge

land.lhs.true.i109.if.end62_crit_edge:            ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end62

do.body9.i:                                       ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #22
  %45 = ptrtoint ptr %rx_notify_masked.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store volatile i8 1, ptr %rx_notify_masked.i, align 32
  tail call void @__napi_schedule(ptr noundef %arrayidx) #20
  br label %if.end62

if.end62:                                         ; preds = %do.body9.i, %land.lhs.true.i109.if.end62_crit_edge, %if.then61.if.end62_crit_edge, %for.end.if.end62_crit_edge
  br i1 %ndo_xmit, label %if.then64, label %if.end62.out_crit_edge

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  %stats = getelementptr %struct.veth_rq, ptr %7, i32 %rem.i, i32 5
  %syncp = getelementptr %struct.veth_rq, ptr %7, i32 %rem.i, i32 5, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %conv65 = sext i32 %nxmit.0.lcssa to i64
  %peer_tq_xdp_xmit = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 7
  %46 = ptrtoint ptr %peer_tq_xdp_xmit to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %peer_tq_xdp_xmit, align 8
  %add67 = add i64 %47, %conv65
  store i64 %add67, ptr %peer_tq_xdp_xmit, align 8
  %sub = sub i32 %n, %nxmit.0.lcssa
  %conv68 = sext i32 %sub to i64
  %peer_tq_xdp_xmit_err = getelementptr inbounds %struct.veth_stats, ptr %stats, i32 0, i32 8
  %48 = ptrtoint ptr %peer_tq_xdp_xmit_err to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %peer_tq_xdp_xmit_err, align 8
  %add71 = add i64 %49, %conv68
  store i64 %add71, ptr %peer_tq_xdp_xmit_err, align 8
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %50 = tail call ptr @llvm.returnaddress(i32 0) #20
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %51) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !147
  %52 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %out

out:                                              ; preds = %if.then64, %if.end62.out_crit_edge, %if.end25.out_crit_edge, %do.end13.out_crit_edge
  %ret.0 = phi i32 [ -6, %do.end13.out_crit_edge ], [ %nxmit.0.lcssa, %if.then64 ], [ %nxmit.0.lcssa, %if.end62.out_crit_edge ], [ -6, %if.end25.out_crit_edge ]
  %call.i110 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i110, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i113

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i113:                               ; preds = %out
  %call1.i111 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool.not.i112, label %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i115

land.lhs.true.i113.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i115:                              ; preds = %land.lhs.true.i113
  %.b4.i114 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i114, label %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, label %if.then.i116

land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i116:                                     ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.13) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i116, %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !150
  %54 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i.i117 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i117 to ptr
  %preempt_count.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i118, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i118, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  br label %cleanup75

cleanup75:                                        ; preds = %rcu_read_unlock.exit, %entry.cleanup75_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -22, %entry.cleanup75_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_bulk_tx(ptr noundef %dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_bulk_tx, i32 0, i32 1), ptr blockaddress(@trace_xdp_bulk_tx, %do.body)) #20
          to label %if.end48 [label %do.body], !srcloc !157

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #20
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
  call void @__sanitizer_cov_trace_pc() #22
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #20
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
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #22
  %9 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !175
  %call42 = tail call i32 @__traceiter_xdp_bulk_tx(ptr noundef null, ptr noundef %dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !176
  %13 = tail call i32 @llvm.read_register.i32(metadata !128) #20
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !128) #20
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
  call void @__sanitizer_cov_trace_pc() #22
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #22
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #20
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
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !128) #20
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_bulk_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_bulk_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_bulk_tx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @trace_xdp_bulk_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 80, ptr noundef nonnull @.str.5) #20
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !174
  %31 = tail call i32 @llvm.read_register.i32(metadata !128) #20
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_bulk_tx(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_alloc_skb_bulk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xdp_build_skb_from_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_copy_header(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_headers_offset_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__veth_napi_enable_range(ptr nocapture noundef readonly %dev, i32 noundef %start, i32 noundef %end) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp88 = icmp slt i32 %start, %end
  br i1 %cmp88, label %for.body.lr.ph, label %entry.cleanup62_crit_edge

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup62

for.body.lr.ph:                                   ; preds = %entry
  %rq1 = getelementptr i8, ptr %dev, i32 2324
  br label %for.body

for.cond3.preheader:                              ; preds = %for.inc
  br i1 %cmp88, label %for.body5.lr.ph, label %for.cond3.preheader.cleanup62_crit_edge

for.cond3.preheader.cleanup62_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup62

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %rq7 = getelementptr i8, ptr %dev, i32 2324
  br label %for.body5

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ %start, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %rq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq1, align 4
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #23
  %queue.i = getelementptr %struct.veth_rq, ptr %1, i32 %i.089, i32 8, i32 9
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i.i.i, ptr %queue.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %for.cond53.preheader, label %for.inc

for.cond53.preheader:                             ; preds = %for.body
  %i.292 = add i32 %i.089, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.292, i32 %start)
  %cmp54.not93 = icmp slt i32 %i.292, %start
  br i1 %cmp54.not93, label %for.cond53.preheader.cleanup62_crit_edge, label %for.cond53.preheader.for.body55_crit_edge

for.cond53.preheader.for.body55_crit_edge:        ; preds = %for.cond53.preheader
  br label %for.body55

for.cond53.preheader.cleanup62_crit_edge:         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup62

for.inc:                                          ; preds = %for.body
  %xdp_ring = getelementptr %struct.veth_rq, ptr %1, i32 %i.089, i32 8
  %size1.i.i = getelementptr %struct.veth_rq, ptr %1, i32 %i.089, i32 8, i32 7
  %3 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %size1.i.i, align 128
  %batch.i.i = getelementptr %struct.veth_rq, ptr %1, i32 %i.089, i32 8, i32 8
  %4 = ptrtoint ptr %batch.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %batch.i.i, align 4
  %consumer_tail.i = getelementptr %struct.veth_rq, ptr %1, i32 %i.089, i32 8, i32 4
  %5 = ptrtoint ptr %consumer_tail.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %consumer_tail.i, align 4
  %consumer_head.i = getelementptr %struct.veth_rq, ptr %1, i32 %i.089, i32 8, i32 3
  %6 = ptrtoint ptr %consumer_head.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %consumer_head.i, align 128
  %7 = ptrtoint ptr %xdp_ring to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %xdp_ring, align 128
  %producer_lock.i = getelementptr %struct.veth_rq, ptr %1, i32 %i.089, i32 8, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %producer_lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @ptr_ring_init.__key, i16 noundef signext 3) #20
  %consumer_lock.i = getelementptr %struct.veth_rq, ptr %1, i32 %i.089, i32 8, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %consumer_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @ptr_ring_init.__key.18, i16 noundef signext 3) #20
  %inc = add i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %end
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %i.191 = phi i32 [ %start, %for.body5.lr.ph ], [ %inc51, %for.body5.for.body5_crit_edge ]
  %8 = ptrtoint ptr %rq7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq7, align 4
  %arrayidx8 = getelementptr %struct.veth_rq, ptr %9, i32 %i.191
  tail call void @napi_enable(ptr noundef %arrayidx8) #20
  %10 = ptrtoint ptr %rq7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq7, align 4
  %arrayidx10 = getelementptr %struct.veth_rq, ptr %11, i32 %i.191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !177
  %12 = ptrtoint ptr %rq7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq7, align 4
  %napi38 = getelementptr %struct.veth_rq, ptr %13, i32 %i.191, i32 1
  %14 = ptrtoint ptr %napi38 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx10, ptr %napi38, align 32
  %inc51 = add i32 %i.191, 1
  %exitcond97.not = icmp eq i32 %inc51, %end
  br i1 %exitcond97.not, label %for.body5.cleanup62_crit_edge, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body5

for.body5.cleanup62_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup62

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.cond53.preheader.for.body55_crit_edge
  %i.294 = phi i32 [ %i.2, %for.body55.for.body55_crit_edge ], [ %i.292, %for.cond53.preheader.for.body55_crit_edge ]
  %15 = ptrtoint ptr %rq1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq1, align 4
  %xdp_ring58 = getelementptr %struct.veth_rq, ptr %16, i32 %i.294, i32 8
  tail call fastcc void @ptr_ring_cleanup(ptr noundef %xdp_ring58)
  %i.2 = add i32 %i.294, -1
  %cmp54.not = icmp slt i32 %i.2, %start
  br i1 %cmp54.not, label %for.body55.cleanup62_crit_edge, label %for.body55.for.body55_crit_edge

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body55

for.body55.cleanup62_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup62

cleanup62:                                        ; preds = %for.body55.cleanup62_crit_edge, %for.body5.cleanup62_crit_edge, %for.cond53.preheader.cleanup62_crit_edge, %for.cond3.preheader.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.0 = phi i32 [ -12, %for.cond53.preheader.cleanup62_crit_edge ], [ 0, %for.cond3.preheader.cleanup62_crit_edge ], [ 0, %entry.cleanup62_crit_edge ], [ -12, %for.body55.cleanup62_crit_edge ], [ 0, %for.body5.cleanup62_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ptr_ring_cleanup(ptr noundef %r) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %queue.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %r, i32 0, i32 9
  %consumer_lock.i = getelementptr inbounds %struct.ptr_ring, ptr %r, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %consumer_lock.i) #20
  %size.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %r, i32 0, i32 7
  %0 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i.i3 = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i.i3, label %entry.ptr_ring_consume.exit.thread_crit_edge, label %__ptr_ring_peek.exit.i.i.lr.ph, !prof !144

entry.ptr_ring_consume.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %ptr_ring_consume.exit.thread

__ptr_ring_peek.exit.i.i.lr.ph:                   ; preds = %entry
  %consumer_head.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %r, i32 0, i32 3
  %consumer_tail.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %r, i32 0, i32 4
  %batch.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %r, i32 0, i32 8
  br label %__ptr_ring_peek.exit.i.i

__ptr_ring_peek.exit.i.i:                         ; preds = %veth_ptr_free.exit.__ptr_ring_peek.exit.i.i_crit_edge, %__ptr_ring_peek.exit.i.i.lr.ph
  %2 = phi i32 [ %1, %__ptr_ring_peek.exit.i.i.lr.ph ], [ %28, %veth_ptr_free.exit.__ptr_ring_peek.exit.i.i_crit_edge ]
  %3 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue.i.i.i, align 8
  %5 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %consumer_head.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr ptr, ptr %4, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %__ptr_ring_peek.exit.i.i.ptr_ring_consume.exit.thread_crit_edge, label %if.then.i.i

__ptr_ring_peek.exit.i.i.ptr_ring_consume.exit.thread_crit_edge: ; preds = %__ptr_ring_peek.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ptr_ring_consume.exit.thread

if.then.i.i:                                      ; preds = %__ptr_ring_peek.exit.i.i
  %inc.i.i.i = add i32 %6, 1
  %9 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %consumer_tail.i.i.i, align 4
  %sub.i.i.i = sub i32 %inc.i.i.i, %10
  %11 = ptrtoint ptr %batch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %batch.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %12)
  %cmp.not.i.i.i = icmp slt i32 %sub.i.i.i, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %2)
  %cmp2.not.i.i.i = icmp slt i32 %inc.i.i.i, %2
  %or.cond.i.i = select i1 %cmp.not.i.i.i, i1 %cmp2.not.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i, !prof !155

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp5.not46.i.i.i = icmp slt i32 %6, %10
  br i1 %cmp5.not46.i.i.i, label %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge, !prof !144

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %head.047.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %6, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %13 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue.i.i.i, align 8
  %dec.i.i.i = add i32 %head.047.i.i.i, -1
  %arrayidx.i5.i.i = getelementptr ptr, ptr %14, i32 %head.047.i.i.i
  %15 = ptrtoint ptr %arrayidx.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.i5.i.i, align 4
  %16 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %consumer_tail.i.i.i, align 4
  %cmp5.not.i.i.i = icmp slt i32 %dec.i.i.i, %17
  br i1 %cmp5.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge, !prof !144

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge
  %18 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.i.i.i, ptr %consumer_tail.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %19 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %20)
  %cmp14.not.i.i.i = icmp slt i32 %inc.i.i.i, %20
  br i1 %cmp14.not.i.i.i, label %if.end.i.i.i.ptr_ring_consume.exit_crit_edge, label %if.then21.i.i.i, !prof !140

if.end.i.i.i.ptr_ring_consume.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ptr_ring_consume.exit

if.then21.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %21 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %consumer_tail.i.i.i, align 4
  br label %ptr_ring_consume.exit

ptr_ring_consume.exit.thread:                     ; preds = %veth_ptr_free.exit.ptr_ring_consume.exit.thread_crit_edge, %__ptr_ring_peek.exit.i.i.ptr_ring_consume.exit.thread_crit_edge, %entry.ptr_ring_consume.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %consumer_lock.i) #20
  %22 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue.i.i.i, align 8
  tail call void @kvfree(ptr noundef %23) #20
  ret void

ptr_ring_consume.exit:                            ; preds = %if.then21.i.i.i, %if.end.i.i.i.ptr_ring_consume.exit_crit_edge
  %consumer_head.0.i.i.i = phi i32 [ 0, %if.then21.i.i.i ], [ %inc.i.i.i, %if.end.i.i.i.ptr_ring_consume.exit_crit_edge ]
  %24 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %consumer_head.0.i.i.i, ptr %consumer_head.i.i.i, align 128
  tail call void @_raw_spin_unlock(ptr noundef %consumer_lock.i) #20
  %25 = ptrtoint ptr %8 to i32
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %ptr_ring_consume.exit
  call void @__sanitizer_cov_trace_pc() #22
  %and.i4.i = and i32 %25, -2
  %26 = inttoptr i32 %and.i4.i to ptr
  tail call void @xdp_return_frame(ptr noundef %26) #20
  br label %veth_ptr_free.exit

if.else.i:                                        ; preds = %ptr_ring_consume.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #20
  br label %veth_ptr_free.exit

veth_ptr_free.exit:                               ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_lock(ptr noundef %consumer_lock.i) #20
  %27 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i, label %veth_ptr_free.exit.ptr_ring_consume.exit.thread_crit_edge, label %veth_ptr_free.exit.__ptr_ring_peek.exit.i.i_crit_edge, !prof !144

veth_ptr_free.exit.__ptr_ring_peek.exit.i.i_crit_edge: ; preds = %veth_ptr_free.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %__ptr_ring_peek.exit.i.i

veth_ptr_free.exit.ptr_ring_consume.exit.thread_crit_edge: ; preds = %veth_ptr_free.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %ptr_ring_consume.exit.thread
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @veth_napi_enable_range(ptr noundef %dev, i32 noundef %start, i32 noundef %end) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp29 = icmp slt i32 %start, %end
  br i1 %cmp29, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call234 = tail call fastcc i32 @__veth_napi_enable_range(ptr noundef %dev, i32 noundef %start, i32 noundef %end)
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rq1 = getelementptr i8, ptr %dev, i32 2324
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ %start, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %rq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq1, align 4
  %arrayidx = getelementptr %struct.veth_rq, ptr %1, i32 %i.030
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull @veth_poll, i32 noundef 64) #20
  %inc = add i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %end
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  %call2 = tail call fastcc i32 @__veth_napi_enable_range(ptr noundef %dev, i32 noundef %start, i32 noundef %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp ne i32 %call2, 0
  %or.cond = and i1 %tobool.not, %cmp29
  br i1 %or.cond, label %for.body5.lr.ph, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body5.lr.ph:                                  ; preds = %for.end
  %rq7 = getelementptr i8, ptr %dev, i32 2324
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %i.132 = phi i32 [ %start, %for.body5.lr.ph ], [ %inc11, %for.body5.for.body5_crit_edge ]
  %2 = ptrtoint ptr %rq7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq7, align 4
  %arrayidx8 = getelementptr %struct.veth_rq, ptr %3, i32 %i.132
  tail call void @__netif_napi_del(ptr noundef %arrayidx8) #20
  tail call void @synchronize_net() #20
  %inc11 = add i32 %i.132, 1
  %exitcond33.not = icmp eq i32 %inc11, %end
  br i1 %exitcond33.not, label %for.body5.cleanup_crit_edge, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body5

for.body5.cleanup_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %for.body5.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.thread
  %call237 = phi i32 [ %call234, %for.end.thread ], [ %call2, %for.end.cleanup_crit_edge ], [ %call2, %for.body5.cleanup_crit_edge ]
  ret i32 %call237
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @veth_disable_xdp(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %0 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %real_num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp67.not = icmp eq i32 %1, 0
  br i1 %cmp67.not, label %entry.for.end_crit_edge, label %do.body4.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

do.body4.lr.ph:                                   ; preds = %entry
  %rq = getelementptr i8, ptr %dev, i32 2324
  br label %do.body4

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %do.body4.lr.ph
  %i.068 = phi i32 [ 0, %do.body4.lr.ph ], [ %inc, %do.body4.do.body4_crit_edge ]
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq, align 4
  %xdp_prog = getelementptr %struct.veth_rq, ptr %3, i32 %i.068, i32 3
  %4 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %xdp_prog, align 8
  %inc = add nuw i32 %i.068, 1
  %5 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %real_num_rx_queues, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %do.body4.do.body4_crit_edge, label %do.body4.for.end_crit_edge

do.body4.for.end_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body4

for.end:                                          ; preds = %do.body4.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %6, %do.body4.for.end_crit_edge ]
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.end.if.then37_crit_edge, label %lor.lhs.false

for.end.if.then37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then37

lor.lhs.false:                                    ; preds = %for.end
  %wanted_features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 25
  %9 = ptrtoint ptr %wanted_features.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %wanted_features.i, align 32
  %and.i = and i64 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i60.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i60.not, label %lor.lhs.false.if.then37_crit_edge, label %lor.lhs.false.if.end42_crit_edge

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %for.end.if.then37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %cmp64.i.i = icmp sgt i32 %.lcssa, 0
  br i1 %cmp64.i.i, label %for.body.lr.ph.i.i, label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @synchronize_net() #20
  br label %veth_napi_del.exit

for.body.lr.ph.i.i:                               ; preds = %if.then37
  %rq1.i.i = getelementptr i8, ptr %dev, i32 2324
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.065.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %rq1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.veth_rq, ptr %12, i32 %i.065.i.i
  %napi.i.i = getelementptr %struct.veth_rq, ptr %12, i32 %i.065.i.i, i32 1
  %13 = ptrtoint ptr %napi.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %napi.i.i, align 32
  tail call void @napi_disable(ptr noundef %arrayidx.i.i) #20
  tail call void @__netif_napi_del(ptr noundef %arrayidx.i.i) #20
  %inc.i.i = add nuw nsw i32 %i.065.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %.lcssa
  br i1 %exitcond.not.i.i, label %for.body41.lr.ph.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.body41.lr.ph.i.i:                             ; preds = %for.body.i.i
  tail call void @synchronize_net() #20
  br label %for.body41.i.i

for.body41.i.i:                                   ; preds = %for.body41.i.i.for.body41.i.i_crit_edge, %for.body41.lr.ph.i.i
  %i.167.i.i = phi i32 [ 0, %for.body41.lr.ph.i.i ], [ %inc46.i.i, %for.body41.i.i.for.body41.i.i_crit_edge ]
  %14 = ptrtoint ptr %rq1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq1.i.i, align 4
  %rx_notify_masked.i.i = getelementptr %struct.veth_rq, ptr %15, i32 %i.167.i.i, i32 6
  %16 = ptrtoint ptr %rx_notify_masked.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rx_notify_masked.i.i, align 32
  %xdp_ring.i.i = getelementptr %struct.veth_rq, ptr %15, i32 %i.167.i.i, i32 8
  tail call fastcc void @ptr_ring_cleanup(ptr noundef %xdp_ring.i.i) #20
  %inc46.i.i = add nuw nsw i32 %i.167.i.i, 1
  %exitcond68.not.i.i = icmp eq i32 %inc46.i.i, %.lcssa
  br i1 %exitcond68.not.i.i, label %for.body41.i.i.veth_napi_del.exit_crit_edge, label %for.body41.i.i.for.body41.i.i_crit_edge

for.body41.i.i.for.body41.i.i_crit_edge:          ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body41.i.i

for.body41.i.i.veth_napi_del.exit_crit_edge:      ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_napi_del.exit

veth_napi_del.exit:                               ; preds = %for.body41.i.i.veth_napi_del.exit_crit_edge, %for.end.thread.i.i
  %wanted_features.i61 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 25
  %17 = ptrtoint ptr %wanted_features.i61 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wanted_features.i61, align 32
  %and.i62 = and i64 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i62)
  %tobool.i63.not = icmp eq i64 %and.i62, 0
  br i1 %tobool.i63.not, label %land.lhs.true, label %veth_napi_del.exit.if.end42_crit_edge

veth_napi_del.exit.if.end42_crit_edge:            ; preds = %veth_napi_del.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

land.lhs.true:                                    ; preds = %veth_napi_del.exit
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %and1.i.i65 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i65)
  %tobool.i66.not = icmp eq i32 %and1.i.i65, 0
  br i1 %tobool.i66.not, label %land.lhs.true.if.end42_crit_edge, label %if.then40

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %21 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %features, align 16
  %and = and i64 %22, -16385
  store i64 %and, ptr %features, align 16
  tail call void @netdev_features_change(ptr noundef %dev) #20
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %land.lhs.true.if.end42_crit_edge, %veth_napi_del.exit.if.end42_crit_edge, %lor.lhs.false.if.end42_crit_edge
  %23 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %real_num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp8.i = icmp sgt i32 %24, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %if.end42.veth_disable_xdp_range.exit_crit_edge

if.end42.veth_disable_xdp_range.exit_crit_edge:   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_disable_xdp_range.exit

for.body.lr.ph.i:                                 ; preds = %if.end42
  %rq1.i = getelementptr i8, ptr %dev, i32 2324
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %rq1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rq1.i, align 4
  %xdp_rxq.i = getelementptr %struct.veth_rq, ptr %26, i32 %i.09.i, i32 9
  %mem.i = getelementptr %struct.veth_rq, ptr %26, i32 %i.09.i, i32 9, i32 3
  %xdp_mem.i = getelementptr %struct.veth_rq, ptr %26, i32 %i.09.i, i32 4
  %27 = ptrtoint ptr %xdp_mem.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %xdp_mem.i, align 4
  %29 = ptrtoint ptr %mem.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %mem.i, align 4
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq.i) #20
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.body.i.veth_disable_xdp_range.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.body.i.veth_disable_xdp_range.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_disable_xdp_range.exit

veth_disable_xdp_range.exit:                      ; preds = %for.body.i.veth_disable_xdp_range.exit_crit_edge, %if.end42.veth_disable_xdp_range.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_forward_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_lstats_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !158
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @trace_hardirqs_off() #20
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #20
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #20
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #20
  tail call void @trace_hardirqs_on() #20
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #20
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #20
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #20
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #20, !srcloc !164
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !144

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @warn_bogus_irq_restore() #20
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #20, !srcloc !165
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !178
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !179
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !180
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @veth_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #20
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.23, i32 noundef 32) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @veth_get_strings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr noundef %buf) #2 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %0 = call ptr @memcpy(ptr %buf, ptr @ethtool_stats_keys, i32 32)
  %add.ptr = getelementptr i8, ptr %buf, i32 32
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %p, align 4
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %2 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp34.not = icmp eq i32 %3, 0
  br i1 %cmp34.not, label %sw.bb.for.cond7.preheader_crit_edge, label %sw.bb.for.cond1.preheader_crit_edge

sw.bb.for.cond1.preheader_crit_edge:              ; preds = %sw.bb
  br label %for.cond1.preheader

sw.bb.for.cond7.preheader_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond7.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.for.cond1.preheader_crit_edge, %sw.bb.for.cond1.preheader_crit_edge
  %i.035 = phi i32 [ %inc5, %for.cond1.preheader.for.cond1.preheader_crit_edge ], [ 0, %sw.bb.for.cond1.preheader_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef %i.035, ptr noundef nonnull @veth_rq_stats_desc) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef %i.035, ptr noundef getelementptr inbounds ([7 x %struct.veth_q_stat_desc], ptr @veth_rq_stats_desc, i32 0, i32 1)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef %i.035, ptr noundef getelementptr inbounds ([7 x %struct.veth_q_stat_desc], ptr @veth_rq_stats_desc, i32 0, i32 2)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef %i.035, ptr noundef getelementptr inbounds ([7 x %struct.veth_q_stat_desc], ptr @veth_rq_stats_desc, i32 0, i32 3)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef %i.035, ptr noundef getelementptr inbounds ([7 x %struct.veth_q_stat_desc], ptr @veth_rq_stats_desc, i32 0, i32 4)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef %i.035, ptr noundef getelementptr inbounds ([7 x %struct.veth_q_stat_desc], ptr @veth_rq_stats_desc, i32 0, i32 5)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.24, i32 noundef %i.035, ptr noundef getelementptr inbounds ([7 x %struct.veth_q_stat_desc], ptr @veth_rq_stats_desc, i32 0, i32 6)) #20
  %inc5 = add nuw i32 %i.035, 1
  %4 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %real_num_rx_queues, align 4
  %cmp = icmp ult i32 %inc5, %5
  br i1 %cmp, label %for.cond1.preheader.for.cond1.preheader_crit_edge, label %for.cond1.preheader.for.cond7.preheader_crit_edge

for.cond1.preheader.for.cond7.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond7.preheader

for.cond1.preheader.for.cond1.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond1.preheader

for.cond7.preheader:                              ; preds = %for.cond1.preheader.for.cond7.preheader_crit_edge, %sw.bb.for.cond7.preheader_crit_edge
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  %6 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp837.not = icmp eq i32 %7, 0
  br i1 %cmp837.not, label %for.cond7.preheader.sw.epilog_crit_edge, label %for.cond7.preheader.for.cond10.preheader_crit_edge

for.cond7.preheader.for.cond10.preheader_crit_edge: ; preds = %for.cond7.preheader
  br label %for.cond10.preheader

for.cond7.preheader.sw.epilog_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.cond10.preheader:                             ; preds = %for.cond10.preheader.for.cond10.preheader_crit_edge, %for.cond7.preheader.for.cond10.preheader_crit_edge
  %i.138 = phi i32 [ %inc20, %for.cond10.preheader.for.cond10.preheader_crit_edge ], [ 0, %for.cond7.preheader.for.cond10.preheader_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef %i.138, ptr noundef nonnull @veth_tq_stats_desc) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.25, i32 noundef %i.138, ptr noundef getelementptr inbounds ([2 x %struct.veth_q_stat_desc], ptr @veth_tq_stats_desc, i32 0, i32 1)) #20
  %inc20 = add nuw i32 %i.138, 1
  %8 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %real_num_tx_queues, align 8
  %cmp8 = icmp ult i32 %inc20, %9
  br i1 %cmp8, label %for.cond10.preheader.for.cond10.preheader_crit_edge, label %for.cond10.preheader.sw.epilog_crit_edge

for.cond10.preheader.sw.epilog_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.cond10.preheader.for.cond10.preheader_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond10.preheader

sw.epilog:                                        ; preds = %for.cond10.preheader.sw.epilog_crit_edge, %for.cond7.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @veth_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b101 = load i1, ptr @veth_get_ethtool_stats.__warned, align 1
  br i1 %.b101, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_get_ethtool_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 173, ptr noundef nonnull @.str.4) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %conv = sext i32 %cond to i64
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %data, align 8
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %5 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %real_num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp105.not = icmp eq i32 %6, 0
  br i1 %cmp105.not, label %cond.end.for.end26_crit_edge, label %for.body.lr.ph

cond.end.for.end26_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end26

for.body.lr.ph:                                   ; preds = %cond.end
  %rq = getelementptr i8, ptr %dev, i32 2324
  br label %for.body

for.body:                                         ; preds = %do.end22.for.body_crit_edge, %for.body.lr.ph
  %idx.0107 = phi i32 [ 1, %for.body.lr.ph ], [ %add23, %do.end22.for.body_crit_edge ]
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc25, %do.end22.for.body_crit_edge ]
  %7 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rq, align 4
  %stats9 = getelementptr %struct.veth_rq, ptr %8, i32 %i.0106, i32 5
  %syncp = getelementptr %struct.veth_rq, ptr %8, i32 %i.0106, i32 5, i32 1
  %add.ptr = getelementptr i8, ptr %stats9, i32 8
  %arrayidx18 = getelementptr i64, ptr %data, i32 %idx.0107
  %add.ptr.1 = getelementptr i8, ptr %stats9, i32 16
  %add.1 = add i32 %idx.0107, 1
  %arrayidx18.1 = getelementptr i64, ptr %data, i32 %add.1
  %add.2 = add i32 %idx.0107, 2
  %arrayidx18.2 = getelementptr i64, ptr %data, i32 %add.2
  %add.ptr.3 = getelementptr i8, ptr %stats9, i32 24
  %add.3 = add i32 %idx.0107, 3
  %arrayidx18.3 = getelementptr i64, ptr %data, i32 %add.3
  %add.ptr.4 = getelementptr i8, ptr %stats9, i32 32
  %add.4 = add i32 %idx.0107, 4
  %arrayidx18.4 = getelementptr i64, ptr %data, i32 %add.4
  %add.ptr.5 = getelementptr i8, ptr %stats9, i32 40
  %add.5 = add i32 %idx.0107, 5
  %arrayidx18.5 = getelementptr i64, ptr %data, i32 %add.5
  %add.ptr.6 = getelementptr i8, ptr %stats9, i32 48
  %add.6 = add i32 %idx.0107, 6
  %arrayidx18.6 = getelementptr i64, ptr %data, i32 %add.6
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %for.body
  %call11 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr, align 8
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx18, align 8
  %12 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.1, align 8
  %14 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx18.1, align 8
  %15 = ptrtoint ptr %stats9 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %stats9, align 8
  %17 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx18.2, align 8
  %18 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.3, align 8
  %20 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx18.3, align 8
  %21 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.4, align 8
  %23 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx18.4, align 8
  %24 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.5, align 8
  %26 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx18.5, align 8
  %27 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.6, align 8
  %29 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx18.6, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !152
  %30 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %31, %call11
  br i1 %cmp.i.i.i.i.not, label %do.end22, label %do.body10.do.body10_crit_edge

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body10

do.end22:                                         ; preds = %do.body10
  %add23 = add i32 %idx.0107, 7
  %inc25 = add nuw i32 %i.0106, 1
  %32 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %real_num_rx_queues, align 4
  %cmp = icmp ult i32 %inc25, %33
  br i1 %cmp, label %do.end22.for.body_crit_edge, label %do.end22.for.end26_crit_edge

do.end22.for.end26_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end26

do.end22.for.body_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end26:                                        ; preds = %do.end22.for.end26_crit_edge, %cond.end.for.end26_crit_edge
  %idx.0.lcssa = phi i32 [ 1, %cond.end.for.end26_crit_edge ], [ %add23, %do.end22.for.end26_crit_edge ]
  br i1 %tobool6.not, label %for.end26.cleanup_crit_edge, label %for.cond31.preheader

for.end26.cleanup_crit_edge:                      ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond31.preheader:                             ; preds = %for.end26
  %real_num_rx_queues32 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 89
  %34 = ptrtoint ptr %real_num_rx_queues32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %real_num_rx_queues32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp33109.not = icmp eq i32 %35, 0
  br i1 %cmp33109.not, label %for.cond31.preheader.cleanup_crit_edge, label %for.body35.lr.ph

for.cond31.preheader.cleanup_crit_edge:           ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body35.lr.ph:                                 ; preds = %for.cond31.preheader
  %rq37 = getelementptr i8, ptr %1, i32 2324
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  br label %for.body35

for.body35:                                       ; preds = %do.end63.for.body35_crit_edge, %for.body35.lr.ph
  %i.1110 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc65, %do.end63.for.body35_crit_edge ]
  %36 = ptrtoint ptr %rq37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rq37, align 4
  %stats39 = getelementptr %struct.veth_rq, ptr %37, i32 %i.1110, i32 5
  %38 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %real_num_tx_queues, align 8
  %rem = urem i32 %i.1110, %39
  %mul = shl i32 %rem, 1
  %add43 = add i32 %mul, %idx.0.lcssa
  %syncp45 = getelementptr %struct.veth_rq, ptr %37, i32 %i.1110, i32 5, i32 1
  %add.ptr53 = getelementptr i8, ptr %stats39, i32 56
  %arrayidx55 = getelementptr i64, ptr %data, i32 %add43
  %add.ptr53.1 = getelementptr i8, ptr %stats39, i32 64
  %add54.1 = add i32 %add43, 1
  %arrayidx55.1 = getelementptr i64, ptr %data, i32 %add54.1
  br label %do.body44

do.body44:                                        ; preds = %do.body44.do.body44_crit_edge, %for.body35
  %call46 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp45)
  %40 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr53, align 8
  %42 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx55, align 8
  %add56 = add i64 %43, %41
  store i64 %add56, ptr %arrayidx55, align 8
  %44 = ptrtoint ptr %add.ptr53.1 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr53.1, align 8
  %46 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx55.1, align 8
  %add56.1 = add i64 %47, %45
  store i64 %add56.1, ptr %arrayidx55.1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !152
  %48 = ptrtoint ptr %syncp45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %syncp45, align 4
  %cmp.i.i.i.i103.not = icmp eq i32 %49, %call46
  br i1 %cmp.i.i.i.i103.not, label %do.end63, label %do.body44.do.body44_crit_edge

do.body44.do.body44_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body44

do.end63:                                         ; preds = %do.body44
  %inc65 = add nuw i32 %i.1110, 1
  %50 = ptrtoint ptr %real_num_rx_queues32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %real_num_rx_queues32, align 4
  %cmp33 = icmp ult i32 %inc65, %51
  br i1 %cmp33, label %do.end63.for.body35_crit_edge, label %do.end63.cleanup_crit_edge

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.end63.for.body35_crit_edge:                    ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body35

cleanup:                                          ; preds = %do.end63.cleanup_crit_edge, %for.cond31.preheader.cleanup_crit_edge, %for.end26.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @veth_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %0 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %real_num_rx_queues, align 4
  %mul = mul i32 %1, 7
  %add = add i32 %mul, 1
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  %2 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_num_tx_queues, align 8
  %mul1 = shl i32 %3, 1
  %add2 = add i32 %add, %mul1
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add2, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @veth_get_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %channels) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  %0 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %real_num_tx_queues, align 8
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %2 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tx_count, align 4
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %3 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %real_num_rx_queues, align 4
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 5
  %5 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_count, align 4
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues, align 4
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 2
  %8 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_tx, align 4
  %num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 88
  %9 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_rx_queues, align 8
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 1
  %11 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_rx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @veth_set_channels(ptr noundef %dev, ptr nocapture noundef readonly %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup68_crit_edge, label %lor.lhs.false

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup68

lor.lhs.false:                                    ; preds = %entry
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %2 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup68_crit_edge, label %do.body

lor.lhs.false.cleanup68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup68

do.body:                                          ; preds = %lor.lhs.false
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call2, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b112 = load i1, ptr @veth_set_channels.__warned, align 1
  br i1 %.b112, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @veth_set_channels.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1199, ptr noundef nonnull @.str.4) #20
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end.if.end29_crit_edge, label %cond.end

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

cond.end:                                         ; preds = %do.end
  %add.ptr.i113 = getelementptr i8, ptr %5, i32 2304
  %_xdp_prog = getelementptr i8, ptr %dev, i32 2320
  %6 = ptrtoint ptr %_xdp_prog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_xdp_prog, align 8
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %cond.end.if.end18_crit_edge, label %land.lhs.true15

cond.end.if.end18_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

land.lhs.true15:                                  ; preds = %cond.end
  %8 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_count, align 4
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 105
  %10 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp ult i32 %9, %11
  br i1 %cmp, label %land.lhs.true15.cleanup68_crit_edge, label %land.lhs.true15.if.end18_crit_edge

land.lhs.true15.if.end18_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

land.lhs.true15.cleanup68_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup68

if.end18:                                         ; preds = %land.lhs.true15.if.end18_crit_edge, %cond.end.if.end18_crit_edge
  %tobool21.not = icmp eq ptr %add.ptr.i113, null
  br i1 %tobool21.not, label %if.end18.if.end29_crit_edge, label %land.lhs.true22

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

land.lhs.true22:                                  ; preds = %if.end18
  %_xdp_prog23 = getelementptr i8, ptr %5, i32 2320
  %12 = ptrtoint ptr %_xdp_prog23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_xdp_prog23, align 8
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %land.lhs.true22.if.end29_crit_edge, label %land.lhs.true25

land.lhs.true22.if.end29_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %14 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_count, align 4
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 89
  %16 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %real_num_rx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp27 = icmp ugt i32 %15, %17
  br i1 %cmp27, label %land.lhs.true25.cleanup68_crit_edge, label %land.lhs.true25.if.end29_crit_edge

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

land.lhs.true25.cleanup68_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup68

if.end29:                                         ; preds = %land.lhs.true25.if.end29_crit_edge, %land.lhs.true22.if.end29_crit_edge, %if.end18.if.end29_crit_edge, %do.end.if.end29_crit_edge
  %real_num_rx_queues30 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %18 = ptrtoint ptr %real_num_rx_queues30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %real_num_rx_queues30, align 4
  %20 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_count, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end29.if.end41_crit_edge, label %if.then33

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.then33:                                        ; preds = %if.end29
  tail call void @netif_carrier_off(ptr noundef %dev) #20
  br i1 %tobool10.not, label %if.then33.if.end36_crit_edge, label %if.then35

if.then33.if.end36_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @netif_carrier_off(ptr noundef nonnull %5) #20
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then33.if.end36_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i = icmp slt i32 %19, %21
  br i1 %cmp.not.i, label %if.end.i, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.end.i:                                         ; preds = %if.end36
  %_xdp_prog.i = getelementptr i8, ptr %dev, i32 2320
  %24 = ptrtoint ptr %_xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_xdp_prog.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %call2.i = tail call fastcc i32 @veth_enable_xdp_range(ptr noundef %dev, i32 noundef %19, i32 noundef %21, i1 noundef zeroext false) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then1.i.out_crit_edge

if.then1.i.out_crit_edge:                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end5.i:                                        ; preds = %if.then1.i
  %call6.i = tail call fastcc i32 @__veth_napi_enable_range(ptr noundef %dev, i32 noundef %19, i32 noundef %21) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end41_crit_edge, label %for.body.lr.ph.i.i

if.end5.i.if.end41_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

for.body.lr.ph.i.i:                               ; preds = %if.end5.i
  %rq1.i.i = getelementptr i8, ptr %dev, i32 2324
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ %19, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %rq1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rq1.i.i, align 4
  %xdp_rxq.i.i = getelementptr %struct.veth_rq, ptr %27, i32 %i.09.i.i, i32 9
  %mem.i.i = getelementptr %struct.veth_rq, ptr %27, i32 %i.09.i.i, i32 9, i32 3
  %xdp_mem.i.i = getelementptr %struct.veth_rq, ptr %27, i32 %i.09.i.i, i32 4
  %28 = ptrtoint ptr %xdp_mem.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %xdp_mem.i.i, align 4
  %30 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %mem.i.i, align 4
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq.i.i) #20
  %arrayidx.i.i = getelementptr %struct.veth_rq, ptr %27, i32 %i.09.i.i
  tail call void @__netif_napi_del(ptr noundef %arrayidx.i.i) #20
  tail call void @synchronize_net() #20
  %inc.i.i = add i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %21
  br i1 %exitcond.not.i.i, label %for.body.i.i.veth_enable_range_safe.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.body.i.i.veth_enable_range_safe.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_enable_range_safe.exit

if.else.i:                                        ; preds = %if.end.i
  %wanted_features.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 25
  %31 = ptrtoint ptr %wanted_features.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %wanted_features.i.i, align 32
  %and.i.i = and i64 %32, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i.if.end41_crit_edge, label %if.then11.i

if.else.i.if.end41_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %call12.i = tail call fastcc i32 @veth_napi_enable_range(ptr noundef %dev, i32 noundef %19, i32 noundef %21) #20
  br label %veth_enable_range_safe.exit

veth_enable_range_safe.exit:                      ; preds = %if.then11.i, %for.body.i.i.veth_enable_range_safe.exit_crit_edge
  %retval.0.i = phi i32 [ %call12.i, %if.then11.i ], [ %call6.i, %for.body.i.i.veth_enable_range_safe.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool38.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool38.not, label %veth_enable_range_safe.exit.if.end41_crit_edge, label %veth_enable_range_safe.exit.out_crit_edge

veth_enable_range_safe.exit.out_crit_edge:        ; preds = %veth_enable_range_safe.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

veth_enable_range_safe.exit.if.end41_crit_edge:   ; preds = %veth_enable_range_safe.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.end41:                                         ; preds = %veth_enable_range_safe.exit.if.end41_crit_edge, %if.else.i.if.end41_crit_edge, %if.end5.i.if.end41_crit_edge, %if.end36.if.end41_crit_edge, %if.end29.if.end41_crit_edge
  %33 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_count, align 4
  %call43 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %dev, i32 noundef %34) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.revert_crit_edge

if.end41.revert_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  br label %revert

if.end46:                                         ; preds = %if.end41
  %35 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_count, align 4
  %call48 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %dev, i32 noundef %36) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end46.out_crit_edge, label %if.then50

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then50:                                        ; preds = %if.end46
  %call51 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %dev, i32 noundef %19) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then50.revert_crit_edge, label %cleanup.thread

if.then50.revert_crit_edge:                       ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #22
  br label %revert

cleanup.thread:                                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #22
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %21, i32 noundef %19, i32 noundef %call51) #25
  br label %out

out:                                              ; preds = %revert, %cleanup.thread, %if.end46.out_crit_edge, %veth_enable_range_safe.exit.out_crit_edge, %if.then1.i.out_crit_edge
  %old_rx_count.0 = phi i32 [ %19, %veth_enable_range_safe.exit.out_crit_edge ], [ %61, %revert ], [ %19, %if.end46.out_crit_edge ], [ %19, %cleanup.thread ], [ %19, %if.then1.i.out_crit_edge ]
  %new_rx_count.0 = phi i32 [ %21, %veth_enable_range_safe.exit.out_crit_edge ], [ %19, %revert ], [ %21, %if.end46.out_crit_edge ], [ %21, %cleanup.thread ], [ %21, %if.then1.i.out_crit_edge ]
  %err.0 = phi i32 [ %retval.0.i, %veth_enable_range_safe.exit.out_crit_edge ], [ %err.1, %revert ], [ 0, %if.end46.out_crit_edge ], [ %call48, %cleanup.thread ], [ %call2.i, %if.then1.i.out_crit_edge ]
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i, align 4
  %and1.i.i115 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i115)
  %tobool.i116.not = icmp eq i32 %and1.i.i115, 0
  br i1 %tobool.i116.not, label %out.cleanup68_crit_edge, label %if.then62

out.cleanup68_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup68

if.then62:                                        ; preds = %out
  call void @__sanitizer_cov_trace_cmp4(i32 %new_rx_count.0, i32 %old_rx_count.0)
  %cmp.not.i117 = icmp slt i32 %new_rx_count.0, %old_rx_count.0
  br i1 %cmp.not.i117, label %if.end.i120, label %if.then62.veth_disable_range_safe.exit_crit_edge

if.then62.veth_disable_range_safe.exit_crit_edge: ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_disable_range_safe.exit

if.end.i120:                                      ; preds = %if.then62
  %_xdp_prog.i118 = getelementptr i8, ptr %dev, i32 2320
  %39 = ptrtoint ptr %_xdp_prog.i118 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_xdp_prog.i118, align 8
  %tobool.not.i119 = icmp eq ptr %40, null
  br i1 %tobool.not.i119, label %if.else.i134, label %for.body.lr.ph.i.i122

for.body.lr.ph.i.i122:                            ; preds = %if.end.i120
  %rq1.i.i121 = getelementptr i8, ptr %dev, i32 2324
  br label %for.body.i.i126

for.body.i.i126:                                  ; preds = %for.body.i.i126.for.body.i.i126_crit_edge, %for.body.lr.ph.i.i122
  %i.065.i.i = phi i32 [ %new_rx_count.0, %for.body.lr.ph.i.i122 ], [ %inc.i.i124, %for.body.i.i126.for.body.i.i126_crit_edge ]
  %41 = ptrtoint ptr %rq1.i.i121 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rq1.i.i121, align 4
  %arrayidx.i.i123 = getelementptr %struct.veth_rq, ptr %42, i32 %i.065.i.i
  %napi.i.i = getelementptr %struct.veth_rq, ptr %42, i32 %i.065.i.i, i32 1
  %43 = ptrtoint ptr %napi.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr null, ptr %napi.i.i, align 32
  tail call void @napi_disable(ptr noundef %arrayidx.i.i123) #20
  tail call void @__netif_napi_del(ptr noundef %arrayidx.i.i123) #20
  %inc.i.i124 = add i32 %i.065.i.i, 1
  %exitcond.not.i.i125 = icmp eq i32 %inc.i.i124, %old_rx_count.0
  br i1 %exitcond.not.i.i125, label %for.body41.lr.ph.i.i, label %for.body.i.i126.for.body.i.i126_crit_edge

for.body.i.i126.for.body.i.i126_crit_edge:        ; preds = %for.body.i.i126
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i126

for.body41.lr.ph.i.i:                             ; preds = %for.body.i.i126
  tail call void @synchronize_net() #20
  br label %for.body41.i.i

for.body41.i.i:                                   ; preds = %for.body41.i.i.for.body41.i.i_crit_edge, %for.body41.lr.ph.i.i
  %i.167.i.i = phi i32 [ %new_rx_count.0, %for.body41.lr.ph.i.i ], [ %inc46.i.i, %for.body41.i.i.for.body41.i.i_crit_edge ]
  %44 = ptrtoint ptr %rq1.i.i121 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rq1.i.i121, align 4
  %rx_notify_masked.i.i = getelementptr %struct.veth_rq, ptr %45, i32 %i.167.i.i, i32 6
  %46 = ptrtoint ptr %rx_notify_masked.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %rx_notify_masked.i.i, align 32
  %xdp_ring.i.i = getelementptr %struct.veth_rq, ptr %45, i32 %i.167.i.i, i32 8
  tail call fastcc void @ptr_ring_cleanup(ptr noundef %xdp_ring.i.i) #20
  %inc46.i.i = add i32 %i.167.i.i, 1
  %exitcond68.not.i.i = icmp eq i32 %inc46.i.i, %old_rx_count.0
  br i1 %exitcond68.not.i.i, label %for.body41.i.i.for.body.i18.i_crit_edge, label %for.body41.i.i.for.body41.i.i_crit_edge

for.body41.i.i.for.body41.i.i_crit_edge:          ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body41.i.i

for.body41.i.i.for.body.i18.i_crit_edge:          ; preds = %for.body41.i.i
  br label %for.body.i18.i

for.body.i18.i:                                   ; preds = %for.body.i18.i.for.body.i18.i_crit_edge, %for.body41.i.i.for.body.i18.i_crit_edge
  %i.09.i.i127 = phi i32 [ %inc.i19.i, %for.body.i18.i.for.body.i18.i_crit_edge ], [ %new_rx_count.0, %for.body41.i.i.for.body.i18.i_crit_edge ]
  %47 = ptrtoint ptr %rq1.i.i121 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rq1.i.i121, align 4
  %xdp_rxq.i.i128 = getelementptr %struct.veth_rq, ptr %48, i32 %i.09.i.i127, i32 9
  %mem.i.i129 = getelementptr %struct.veth_rq, ptr %48, i32 %i.09.i.i127, i32 9, i32 3
  %xdp_mem.i.i130 = getelementptr %struct.veth_rq, ptr %48, i32 %i.09.i.i127, i32 4
  %49 = ptrtoint ptr %xdp_mem.i.i130 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %xdp_mem.i.i130, align 4
  %51 = ptrtoint ptr %mem.i.i129 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %mem.i.i129, align 4
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq.i.i128) #20
  %inc.i19.i = add i32 %i.09.i.i127, 1
  %exitcond.not.i20.i = icmp eq i32 %inc.i19.i, %old_rx_count.0
  br i1 %exitcond.not.i20.i, label %for.body.i18.i.veth_disable_range_safe.exit_crit_edge, label %for.body.i18.i.for.body.i18.i_crit_edge

for.body.i18.i.for.body.i18.i_crit_edge:          ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i18.i

for.body.i18.i.veth_disable_range_safe.exit_crit_edge: ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_disable_range_safe.exit

if.else.i134:                                     ; preds = %if.end.i120
  %wanted_features.i.i131 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 25
  %52 = ptrtoint ptr %wanted_features.i.i131 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %wanted_features.i.i131, align 32
  %and.i.i132 = and i64 %53, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i132)
  %tobool.i.not.i133 = icmp eq i64 %and.i.i132, 0
  br i1 %tobool.i.not.i133, label %if.else.i134.veth_disable_range_safe.exit_crit_edge, label %for.body.lr.ph.i25.i

if.else.i134.veth_disable_range_safe.exit_crit_edge: ; preds = %if.else.i134
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_disable_range_safe.exit

for.body.lr.ph.i25.i:                             ; preds = %if.else.i134
  %rq1.i24.i = getelementptr i8, ptr %dev, i32 2324
  br label %for.body.i31.i

for.body.i31.i:                                   ; preds = %for.body.i31.i.for.body.i31.i_crit_edge, %for.body.lr.ph.i25.i
  %i.065.i26.i = phi i32 [ %new_rx_count.0, %for.body.lr.ph.i25.i ], [ %inc.i29.i, %for.body.i31.i.for.body.i31.i_crit_edge ]
  %54 = ptrtoint ptr %rq1.i24.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rq1.i24.i, align 4
  %arrayidx.i27.i = getelementptr %struct.veth_rq, ptr %55, i32 %i.065.i26.i
  %napi.i28.i = getelementptr %struct.veth_rq, ptr %55, i32 %i.065.i26.i, i32 1
  %56 = ptrtoint ptr %napi.i28.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr null, ptr %napi.i28.i, align 32
  tail call void @napi_disable(ptr noundef %arrayidx.i27.i) #20
  tail call void @__netif_napi_del(ptr noundef %arrayidx.i27.i) #20
  %inc.i29.i = add i32 %i.065.i26.i, 1
  %exitcond.not.i30.i = icmp eq i32 %inc.i29.i, %old_rx_count.0
  br i1 %exitcond.not.i30.i, label %for.body41.lr.ph.i34.i, label %for.body.i31.i.for.body.i31.i_crit_edge

for.body.i31.i.for.body.i31.i_crit_edge:          ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i31.i

for.body41.lr.ph.i34.i:                           ; preds = %for.body.i31.i
  tail call void @synchronize_net() #20
  br label %for.body41.i40.i

for.body41.i40.i:                                 ; preds = %for.body41.i40.i.for.body41.i40.i_crit_edge, %for.body41.lr.ph.i34.i
  %i.167.i35.i = phi i32 [ %new_rx_count.0, %for.body41.lr.ph.i34.i ], [ %inc46.i38.i, %for.body41.i40.i.for.body41.i40.i_crit_edge ]
  %57 = ptrtoint ptr %rq1.i24.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rq1.i24.i, align 4
  %rx_notify_masked.i36.i = getelementptr %struct.veth_rq, ptr %58, i32 %i.167.i35.i, i32 6
  %59 = ptrtoint ptr %rx_notify_masked.i36.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %rx_notify_masked.i36.i, align 32
  %xdp_ring.i37.i = getelementptr %struct.veth_rq, ptr %58, i32 %i.167.i35.i, i32 8
  tail call fastcc void @ptr_ring_cleanup(ptr noundef %xdp_ring.i37.i) #20
  %inc46.i38.i = add i32 %i.167.i35.i, 1
  %exitcond68.not.i39.i = icmp eq i32 %inc46.i38.i, %old_rx_count.0
  br i1 %exitcond68.not.i39.i, label %for.body41.i40.i.veth_disable_range_safe.exit_crit_edge, label %for.body41.i40.i.for.body41.i40.i_crit_edge

for.body41.i40.i.for.body41.i40.i_crit_edge:      ; preds = %for.body41.i40.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body41.i40.i

for.body41.i40.i.veth_disable_range_safe.exit_crit_edge: ; preds = %for.body41.i40.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %veth_disable_range_safe.exit

veth_disable_range_safe.exit:                     ; preds = %for.body41.i40.i.veth_disable_range_safe.exit_crit_edge, %if.else.i134.veth_disable_range_safe.exit_crit_edge, %for.body.i18.i.veth_disable_range_safe.exit_crit_edge, %if.then62.veth_disable_range_safe.exit_crit_edge
  tail call void @netif_carrier_on(ptr noundef %dev) #20
  br i1 %tobool10.not, label %veth_disable_range_safe.exit.cleanup68_crit_edge, label %if.then64

veth_disable_range_safe.exit.cleanup68_crit_edge: ; preds = %veth_disable_range_safe.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup68

if.then64:                                        ; preds = %veth_disable_range_safe.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @netif_carrier_on(ptr noundef nonnull %5) #20
  br label %cleanup68

revert:                                           ; preds = %if.then50.revert_crit_edge, %if.end41.revert_crit_edge
  %err.1 = phi i32 [ %call43, %if.end41.revert_crit_edge ], [ %call48, %if.then50.revert_crit_edge ]
  %60 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_count, align 4
  br label %out

cleanup68:                                        ; preds = %if.then64, %veth_disable_range_safe.exit.cleanup68_crit_edge, %out.cleanup68_crit_edge, %land.lhs.true25.cleanup68_crit_edge, %land.lhs.true15.cleanup68_crit_edge, %lor.lhs.false.cleanup68_crit_edge, %entry.cleanup68_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup68_crit_edge ], [ -22, %entry.cleanup68_crit_edge ], [ -22, %land.lhs.true15.cleanup68_crit_edge ], [ -22, %land.lhs.true25.cleanup68_crit_edge ], [ %err.0, %veth_disable_range_safe.exit.cleanup68_crit_edge ], [ %err.0, %if.then64 ], [ %err.0, %out.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @veth_get_link_ksettings(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %cmd) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10000, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %port, align 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %autoneg, align 1
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_nla_parse_ifla(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtnl_link_get_net(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtnl_create_link(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_configure_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @veth_init_queues(ptr noundef %dev, ptr nocapture noundef readonly %tb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 31
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3

land.lhs.true:                                    ; preds = %entry
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %dev, i32 noundef 1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %land.lhs.true.if.end3_crit_edge, %entry.if.end3_crit_edge
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 32
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true6, label %if.end3.if.end13_crit_edge

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

land.lhs.true6:                                   ; preds = %if.end3
  %num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 88
  %6 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_rx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp7 = icmp ugt i32 %7, 1
  br i1 %cmp7, label %if.then8, label %land.lhs.true6.if.end13_crit_edge

land.lhs.true6.if.end13_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true6
  %call9 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %dev, i32 noundef 1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %land.lhs.true6.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %if.then.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readonly willreturn }
attributes #25 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !38, !39, !41, !42, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !124, !126}
!llvm.named.register.sp = !{!128}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_veth__682_1835_veth_init6, !1, !"__initcall__kmod_veth__682_1835_veth_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/veth.c", i32 1835, i32 1}
!2 = !{ptr @__exitcall_veth_exit, !3, !"__exitcall_veth_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/veth.c", i32 1836, i32 1}
!4 = !{ptr @__UNIQUE_ID_description683, !5, !"__UNIQUE_ID_description683", i1 false, i1 false}
!5 = !{!"../drivers/net/veth.c", i32 1838, i32 1}
!6 = !{ptr @__UNIQUE_ID_file684, !7, !"__UNIQUE_ID_file684", i1 false, i1 false}
!7 = !{!"../drivers/net/veth.c", i32 1839, i32 1}
!8 = !{ptr @__UNIQUE_ID_license685, !7, !"__UNIQUE_ID_license685", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias686, !10, !"__UNIQUE_ID_alias686", i1 false, i1 false}
!10 = !{!"../drivers/net/veth.c", i32 1840, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/veth.c", i32 1808, i32 11}
!13 = !{ptr @veth_link_ops, !14, !"veth_link_ops", i1 false, i1 false}
!14 = !{!"../drivers/net/veth.c", i32 1807, i32 29}
!15 = !{ptr @veth_netdev_ops, !16, !"veth_netdev_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/veth.c", i32 1528, i32 36}
!17 = !{ptr @veth_dev_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/veth.c", i32 1336, i32 16}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @veth_alloc_queues.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/veth.c", i32 1319, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../drivers/net/veth.c", i32 1262, i32 28}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../drivers/net/veth.c", i32 608, i32 13}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/filter.h", i32 613, i32 2}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/net/xdp.h", i32 200, i32 3}
!41 = !{ptr @__func__.xdp_update_frame_from_buff, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../drivers/net/veth.c", i32 478, i32 8}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/trace/events/xdp.h", i32 53, i32 1}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../drivers/net/veth.c", i32 712, i32 13}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/skbuff.h", i32 1719, i32 2}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../drivers/net/veth.c", i32 568, i32 8}
!67 = !{ptr @ptr_ring_init.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/ptr_ring.h", i32 495, i32 2}
!69 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ptr_ring_init.__key.18, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/ptr_ring.h", i32 496, i32 2}
!72 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../drivers/net/veth.c", i32 1289, i32 28}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../drivers/net/veth.c", i32 322, i32 8}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../drivers/net/veth.c", i32 416, i32 9}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../drivers/net/veth.c", i32 1390, i32 9}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../drivers/net/veth.c", i32 1377, i32 9}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../drivers/net/veth.c", i32 1432, i32 9}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../drivers/net/veth.c", i32 1457, i32 9}
!87 = !{ptr @veth_xdp_set.__msg, !88, !"__msg", i1 false, i1 false}
!88 = !{!"../drivers/net/veth.c", i32 1461, i32 4}
!89 = !{ptr @veth_xdp_set.__msg.20, !90, !"__msg", i1 false, i1 false}
!90 = !{!"../drivers/net/veth.c", i32 1470, i32 4}
!91 = !{ptr @veth_xdp_set.__msg.21, !92, !"__msg", i1 false, i1 false}
!92 = !{!"../drivers/net/veth.c", i32 1476, i32 4}
!93 = !{ptr @veth_xdp_set.__msg.22, !94, !"__msg", i1 false, i1 false}
!94 = !{!"../drivers/net/veth.c", i32 1484, i32 5}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../drivers/net/veth.c", i32 461, i32 9}
!97 = !{ptr @veth_ethtool_ops, !98, !"veth_ethtool_ops", i1 false, i1 false}
!98 = !{!"../drivers/net/veth.c", i32 227, i32 33}
!99 = !{ptr @.str.23, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/veth.c", i32 132, i32 25}
!101 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/veth.c", i32 146, i32 25}
!103 = !{ptr @.str.25, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/veth.c", i32 151, i32 25}
!105 = !{ptr @ethtool_stats_keys, !106, !"ethtool_stats_keys", i1 false, i1 false}
!106 = !{!"../drivers/net/veth.c", i32 115, i32 3}
!107 = !{ptr @veth_rq_stats_desc, !108, !"veth_rq_stats_desc", i1 false, i1 false}
!108 = !{!"../drivers/net/veth.c", i32 94, i32 38}
!109 = !{ptr @veth_tq_stats_desc, !110, !"veth_tq_stats_desc", i1 false, i1 false}
!110 = !{!"../drivers/net/veth.c", i32 106, i32 38}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../drivers/net/veth.c", i32 173, i32 28}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../drivers/net/veth.c", i32 1199, i32 9}
!115 = !{ptr @.str.26, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/veth.c", i32 1235, i32 4}
!117 = !{ptr @.str.27, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @veth_set_channels._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @veth_set_channels._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @veth_policy, !121, !"veth_policy", i1 false, i1 false}
!121 = !{!"../drivers/net/veth.c", i32 1785, i32 32}
!122 = !{ptr @.str.28, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/veth.c", i32 1670, i32 30}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../drivers/net/veth.c", i32 1769, i32 9}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../drivers/net/veth.c", i32 1792, i32 28}
!128 = !{!"sp"}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i64 2148613363}
!139 = !{i64 2148527803, i64 2148527835, i64 2148527864, i64 2148527898, i64 2148527929, i64 2148527952}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 2149847583}
!142 = !{i64 2159299090}
!143 = !{i64 2159306394}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{i64 2149629833}
!146 = !{i64 2154876996}
!147 = !{i64 2150382528}
!148 = !{i64 2159150239}
!149 = !{i8 0, i8 2}
!150 = !{i64 2149630099}
!151 = !{!"auto-init"}
!152 = !{i64 2150381878}
!153 = !{i64 2159228483}
!154 = !{i64 2159236461}
!155 = !{!"branch_weights", i32 4000000, i32 4001}
!156 = !{i64 2159204390}
!157 = !{i64 2149081073, i64 2149081078, i64 2149081091, i64 2149081135, i64 2149081169, i64 2149081190}
!158 = !{i64 927508, i64 927569}
!159 = !{i64 2150274130}
!160 = !{i64 2150279064}
!161 = !{i64 2150300782}
!162 = !{i64 2150305676}
!163 = !{i64 2150382203}
!164 = !{i64 930240}
!165 = !{i64 930525}
!166 = !{i64 2154996866, i64 2154997354, i64 2154996903, i64 2154996959, i64 2154996993, i64 2154997017, i64 2154997058, i64 2154997079, i64 2154997107, i64 2154997141}
!167 = !{i64 2153849641, i64 2153850125, i64 2153849678, i64 2153849734, i64 2153849768, i64 2153849792, i64 2153849833, i64 2153849854, i64 2153849882, i64 2153849916}
!168 = !{i64 2148523808, i64 2148523834, i64 2148523863, i64 2148523897, i64 2148523928, i64 2148523951}
!169 = !{i64 2154981816, i64 2154982304, i64 2154981853, i64 2154981909, i64 2154981943, i64 2154981967, i64 2154982008, i64 2154982029, i64 2154982057, i64 2154982091}
!170 = !{i64 2154978848, i64 2154979336, i64 2154978885, i64 2154978941, i64 2154978975, i64 2154978999, i64 2154979040, i64 2154979061, i64 2154979089, i64 2154979123}
!171 = !{i64 2158750775}
!172 = !{i64 2158750990}
!173 = !{i64 2149638392}
!174 = !{i64 2149639428}
!175 = !{i64 2158767421}
!176 = !{i64 2158767648}
!177 = !{i64 2159212287}
!178 = !{i64 2150961415}
!179 = !{i64 2150961257}
!180 = !{i64 2150961585}
