; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_flow_offload.c_pt.bc'
source_filename = "../net/netfilter/nft_flow_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.nf_flow_route = type { [2 x %struct.anon.206] }
%struct.anon.206 = type { ptr, %struct.anon.207, %struct.anon.209, i32 }
%struct.anon.207 = type { i32, [2 x %struct.anon.208], i8 }
%struct.anon.208 = type { i16, i16 }
%struct.anon.209 = type { i32, i32, [6 x i8], [6 x i8] }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_flowtable = type { %struct.list_head, ptr, ptr, i32, i32, i32, i64, [88 x i8], %struct.list_head, %struct.nf_flowtable, [48 x i8] }
%struct.nf_flowtable = type { %struct.list_head, %struct.rhashtable, i32, ptr, %struct.delayed_work, i32, %struct.flow_block, %struct.rw_semaphore, %struct.possible_net_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.flow_block = type { %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.possible_net_t = type { ptr }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.151, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.151 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.170, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.113 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.113 = type { %union.nf_inet_addr, %union.anon.114, i8, i8 }
%union.anon.114 = type { i16 }
%struct.anon.170 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.20, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.106, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.106 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.6, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.6 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.150 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net_device_path_stack = type { i32, [5 x %struct.net_device_path] }
%struct.net_device_path = type { i32, ptr, %union.anon.146 }
%union.anon.146 = type { %struct.anon.148, [4 x i8] }
%struct.anon.148 = type { i32, i16, i16 }
%struct.nft_forward_info = type { ptr, ptr, ptr, [2 x %struct.id], i8, i8, [6 x i8], [6 x i8], i32 }
%struct.id = type { i16, i16 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.anon.147 = type { i16, i16, [6 x i8] }
%struct.nft_hook = type { %struct.list_head, i8, %struct.nf_hook_ops, %struct.callback_head }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }

@nft_flow_offload_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_flow_offload_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_flow_offload_policy, i32 1, i8 0, i8 0 }, section ".data..read_mostly", align 4
@flow_offload_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @flow_offload_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_nft_flow_offload__645_484_nft_flow_offload_module_init6 = internal global ptr @nft_flow_offload_module_init, section ".initcall6.init", align 4
@__exitcall_nft_flow_offload_module_exit = internal global ptr @nft_flow_offload_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file646 = internal constant [53 x i8] c"nft_flow_offload.file=net/netfilter/nft_flow_offload\00", section ".modinfo", align 1
@__UNIQUE_ID_license647 = internal constant [29 x i8] c"nft_flow_offload.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author648 = internal constant [64 x i8] c"nft_flow_offload.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias649 = internal constant [45 x i8] c"nft_flow_offload.alias=nft-expr-flow_offload\00", section ".modinfo", align 1
@__UNIQUE_ID_description650 = internal constant [67 x i8] c"nft_flow_offload.description=nftables hardware flow offload module\00", section ".modinfo", align 1
@nft_flow_offload_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_flow_offload_eval, ptr null, i32 16, ptr @nft_flow_offload_init, ptr @nft_flow_offload_activate, ptr @nft_flow_offload_deactivate, ptr @nft_flow_offload_destroy, ptr null, ptr @nft_flow_offload_dump, ptr @nft_flow_offload_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_flow_offload_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"flow_offload\00", [19 x i8] zeroinitializer }, align 32
@nft_flow_offload_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 255, %union.anon.29 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@nft_flowtable_find_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/netfilter/nft_flow_offload.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.8 = private unnamed_addr constant [29 x i8] c"flow_offload_netdev_notifier\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 454, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"nft_flow_offload_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 421, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 434, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [24 x i8] c"nft_flow_offload_policy\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 357, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 1011, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [36 x i8] c"../net/netfilter/nft_flow_offload.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 171, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias649, ptr @__UNIQUE_ID_author648, ptr @__UNIQUE_ID_description650, ptr @__UNIQUE_ID_file646, ptr @__UNIQUE_ID_license647, ptr @__exitcall_nft_flow_offload_module_exit, ptr @__initcall__kmod_nft_flow_offload__645_484_nft_flow_offload_module_init6, ptr @nft_flow_offload_module_exit, ptr @flow_offload_netdev_notifier, ptr @nft_flow_offload_ops, ptr @.str, ptr @nft_flow_offload_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_offload_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_flow_offload_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_flow_offload_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_flow_offload_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_flow_offload_type) #7
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @flow_offload_netdev_notifier) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_flow_offload_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @flow_offload_netdev_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_flow_offload_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %register_expr, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

register_expr:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @flow_offload_netdev_notifier) #7
  br label %cleanup

cleanup:                                          ; preds = %register_expr, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %register_expr ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_flow_offload_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %_tcph = alloca %struct.tcphdr, align 4
  %route = alloca %struct.nf_flow_route, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %data = getelementptr inbounds %struct.nft_flowtable, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #7
  %2 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %route) #7
  %3 = call ptr @memset(ptr %route, i32 0, i32 88)
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pf.i, align 1
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not.i.i.i = icmp eq i8 %12, 0
  br i1 %tobool.i.not.i.i.i, label %entry.if.end.i_crit_edge, label %skb_sec_path.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 22
  %13 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %14, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %16 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.if.end.i_crit_edge, label %skb_sec_path.exit.i.out_crit_edge

skb_sec_path.exit.i.out_crit_edge:                ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

skb_sec_path.exit.i.if.end.i_crit_edge:           ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %skb_sec_path.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp eq i8 %9, 2
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then1.i:                                       ; preds = %if.end.i
  %optlen.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %optlen.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %optlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.i = icmp eq i8 %18, 0
  br i1 %tobool3.not.i, label %if.then1.i.if.end_crit_edge, label %if.then1.i.out_crit_edge

if.then1.i.out_crit_edge:                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then1.i.if.end_crit_edge:                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.then1.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 5
  %19 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %20, 7
  %and1.i = and i32 %20, -8
  %21 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %if.end
  %protonum = getelementptr inbounds %struct.nf_conn, ptr %21, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %22 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %protonum, align 2
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %if.end7.out_crit_edge [
    i8 6, label %sw.bb
    i8 17, label %if.end7.sw.epilog_crit_edge
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %if.end7
  %thoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %25 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %thoff.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 7
  %29 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i, align 8
  %31 = add i32 %26, %30
  %sub.i1.i = sub i32 %28, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !38

if.end.i.i:                                       ; preds = %sw.bb
  %tobool2.not.i.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.out_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %5, i32 noundef %26, ptr noundef nonnull %_tcph, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.out_crit_edge, label %lor.lhs.false.i.i.lor.lhs.false_crit_edge

lor.lhs.false.i.i.lor.lhs.false_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false.i.i.out_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

skb_header_pointer.exit:                          ; preds = %sw.bb
  %data.i119 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %32 = ptrtoint ptr %data.i119 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i119, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %26
  %tobool12.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool12.not, label %skb_header_pointer.exit.out_crit_edge, label %skb_header_pointer.exit.lor.lhs.false_crit_edge, !prof !39

skb_header_pointer.exit.lor.lhs.false_crit_edge:  ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

skb_header_pointer.exit.out_crit_edge:            ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %skb_header_pointer.exit.lor.lhs.false_crit_edge, %lor.lhs.false.i.i.lor.lhs.false_crit_edge
  %retval.0.i.i127 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.lor.lhs.false_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.lor.lhs.false_crit_edge ]
  %fin = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i127, i32 0, i32 4
  %34 = ptrtoint ptr %fin to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load = load i16, ptr %fin, align 4
  %35 = and i16 %bf.load, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %.not = icmp eq i16 %35, 0
  br i1 %.not, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.out_crit_edge, !prof !40

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge
  %tcph.0 = phi ptr [ null, %if.end7.sw.epilog_crit_edge ], [ %retval.0.i.i127, %lor.lhs.false.sw.epilog_crit_edge ]
  %ext.i = getelementptr inbounds %struct.nf_conn, ptr %21, i32 0, i32 13
  %36 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ext.i, align 8
  %tobool.not.i120 = icmp eq ptr %37, null
  br i1 %tobool.not.i120, label %sw.epilog.lor.lhs.false25_crit_edge, label %nf_ct_ext_exist.exit

sw.epilog.lor.lhs.false25_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false25

nf_ct_ext_exist.exit:                             ; preds = %sw.epilog
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.i.i.not = icmp eq i8 %39, 0
  br i1 %tobool.i.i.not, label %nf_ct_ext_exist.exit.lor.lhs.false25_crit_edge, label %nf_ct_ext_exist.exit.out_crit_edge

nf_ct_ext_exist.exit.out_crit_edge:               ; preds = %nf_ct_ext_exist.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

nf_ct_ext_exist.exit.lor.lhs.false25_crit_edge:   ; preds = %nf_ct_ext_exist.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %nf_ct_ext_exist.exit.lor.lhs.false25_crit_edge, %sw.epilog.lor.lhs.false25_crit_edge
  %status = getelementptr inbounds %struct.nf_conn, ptr %21, i32 0, i32 5
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status, align 8
  %and = and i32 %41, 4160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end28, label %lor.lhs.false25.out_crit_edge

lor.lhs.false25.out_crit_edge:                    ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end28:                                         ; preds = %lor.lhs.false25
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %status, align 8
  %44 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool30.not = icmp eq i32 %44, 0
  br i1 %tobool30.not, label %if.end28.out_crit_edge, label %if.end32

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end32:                                         ; preds = %if.end28
  %call34 = call i32 @_test_and_set_bit(i32 noundef 14, ptr noundef %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 2
  %cond = zext i1 %cmp to i32
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %call40 = call fastcc i32 @nft_flow_route(ptr noundef %pkt, ptr noundef nonnull %21, ptr noundef nonnull %route, i32 noundef %cond, ptr noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end37.err_flow_route_crit_edge, label %if.end44

if.end37.err_flow_route_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_flow_route

if.end44:                                         ; preds = %if.end37
  %call45 = call ptr @flow_offload_alloc(ptr noundef nonnull %21) #7
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.err_flow_alloc_crit_edge, label %if.end48

if.end44.err_flow_alloc_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_flow_alloc

if.end48:                                         ; preds = %if.end44
  %call49 = call i32 @flow_offload_route_init(ptr noundef nonnull %call45, ptr noundef nonnull %route) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end48.err_flow_add_crit_edge, label %if.end53

if.end48.err_flow_add_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_flow_add

if.end53:                                         ; preds = %if.end48
  %tobool54.not = icmp eq ptr %tcph.0, null
  br i1 %tobool54.not, label %if.end53.if.end66_crit_edge, label %if.then55

if.end53.if.end66_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.nf_conn, ptr %21, i32 0, i32 14, i32 1, i32 1
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flags, align 1
  %49 = or i8 %48, 8
  store i8 %49, ptr %flags, align 1
  %flags62 = getelementptr %struct.nf_conn, ptr %21, i32 0, i32 14, i32 1, i32 21
  %50 = ptrtoint ptr %flags62 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags62, align 1
  %52 = or i8 %51, 8
  store i8 %52, ptr %flags62, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then55, %if.end53.if.end66_crit_edge
  %call67 = call i32 @flow_offload_add(ptr noundef %data, ptr noundef nonnull %call45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.err_flow_add_crit_edge, label %if.end71

if.end66.err_flow_add_crit_edge:                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_flow_add

if.end71:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %lnot74 = xor i1 %cmp, true
  %lnot.ext75 = zext i1 %lnot74 to i32
  %arrayidx76 = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %lnot.ext75
  %53 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx76, align 4
  call void @dst_release(ptr noundef %54) #7
  br label %cleanup

err_flow_add:                                     ; preds = %if.end66.err_flow_add_crit_edge, %if.end48.err_flow_add_crit_edge
  call void @flow_offload_free(ptr noundef nonnull %call45) #7
  br label %err_flow_alloc

err_flow_alloc:                                   ; preds = %err_flow_add, %if.end44.err_flow_alloc_crit_edge
  %lnot80 = xor i1 %cmp, true
  %lnot.ext81 = zext i1 %lnot80 to i32
  %arrayidx82 = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %lnot.ext81
  %55 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx82, align 4
  call void @dst_release(ptr noundef %56) #7
  br label %err_flow_route

err_flow_route:                                   ; preds = %err_flow_alloc, %if.end37.err_flow_route_crit_edge
  call void @_clear_bit(i32 noundef 14, ptr noundef %status) #7
  br label %out

out:                                              ; preds = %err_flow_route, %if.end32.out_crit_edge, %if.end28.out_crit_edge, %lor.lhs.false25.out_crit_edge, %nf_ct_ext_exist.exit.out_crit_edge, %lor.lhs.false.out_crit_edge, %skb_header_pointer.exit.out_crit_edge, %lor.lhs.false.i.i.out_crit_edge, %if.end.i.i.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %if.then1.i.out_crit_edge, %skb_sec_path.exit.i.out_crit_edge
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end71
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %route) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_flow_offload_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %nft.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %table = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %table, align 4
  %call3 = tail call ptr @nft_flowtable_lookup(ptr noundef %7, ptr noundef nonnull %1, i8 noundef zeroext %shl.i) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %data.i, align 4
  %use = getelementptr inbounds %struct.nft_flowtable, ptr %call3, i32 0, i32 5
  %10 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %use, align 8
  %inc = add i32 %bf.load, 1
  %bf.value = and i32 %inc, 1073741823
  %bf.clear10 = and i32 %bf.load, -1073741824
  %bf.set = or i32 %bf.value, %bf.clear10
  store i32 %bf.set, ptr %use, align 8
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %family, align 2
  %call12 = tail call i32 @nf_ct_netns_get(ptr noundef %12, i8 noundef zeroext %14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then5 ], [ %call12, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nft_flow_offload_activate(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %use = getelementptr inbounds %struct.nft_flowtable, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %use, align 8
  %inc = add i32 %bf.load, 1
  %bf.value = and i32 %inc, 1073741823
  %bf.clear2 = and i32 %bf.load, -1073741824
  %bf.set = or i32 %bf.value, %bf.clear2
  store i32 %bf.set, ptr %use, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_flow_offload_deactivate(ptr noundef %ctx, ptr nocapture noundef readonly %expr, i32 noundef %phase) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @nf_tables_deactivate_flowtable(ptr noundef %ctx, ptr noundef %1, i32 noundef %phase) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_flow_offload_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 2
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_flow_offload_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %name = getelementptr inbounds %struct.nft_flowtable, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @strlen(ptr noundef %3) #10
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp ne i32 %call1.i, 0
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_flow_offload_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %call = tail call i32 @nft_chain_validate_hooks(ptr noundef %1, i32 noundef 4) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_flow_route(ptr nocapture noundef readonly %pkt, ptr noundef %ct, ptr nocapture noundef %route, i32 noundef %dir, ptr noundef %ft) unnamed_addr #2 align 64 {
entry:
  %other_dst = alloca ptr, align 4
  %fl = alloca %struct.flowi, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !39

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %and25.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %other_dst) #7
  %8 = ptrtoint ptr %other_dst to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %other_dst, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl) #7
  %9 = call ptr @memset(ptr %fl, i32 0, i32 88)
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pf.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %13, label %skb_dst.exit.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb5
  ]

skb_dst.exit.sw.epilog_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  %tuple = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %dir, i32 1
  %15 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tuple, align 8
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 2
  %17 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %daddr, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ifindex, align 4
  %22 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %fl, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  %daddr7 = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 1
  %tuple10 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %dir, i32 1
  %23 = call ptr @memcpy(ptr %daddr7, ptr %tuple10, i32 16)
  %in.i64 = getelementptr inbounds %struct.nf_hook_state, ptr %11, i32 0, i32 2
  %24 = ptrtoint ptr %in.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in.i64, align 4
  %ifindex14 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %ifindex14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifindex14, align 4
  %28 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fl, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %skb_dst.exit.sw.epilog_crit_edge
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %11, i32 0, i32 5
  %29 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net.i, align 4
  %31 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pf.i, align 1
  %conv20 = zext i8 %32 to i16
  %call21 = call i32 @nf_route(ptr noundef %30, ptr noundef nonnull %other_dst, ptr noundef nonnull %fl, i1 noundef zeroext false, i16 noundef zeroext %conv20) #7
  %33 = ptrtoint ptr %other_dst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %other_dst, align 4
  %tobool.not = icmp eq ptr %34, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %7, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not.i68 = icmp eq i32 %dir, 0
  %lnot.ext.i = zext i1 %tobool.not.i68 to i32
  %in.i69 = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %lnot.ext.i, i32 1
  %39 = ptrtoint ptr %in.i69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %in.i69, align 4
  %arrayidx3.i = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %dir
  %40 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %7, ptr %arrayidx3.i, align 4
  %xfrm.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 4
  %41 = ptrtoint ptr %xfrm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xfrm.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  %..i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %xmit_type.i = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %dir, i32 3
  %43 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %..i.i, ptr %xmit_type.i, align 4
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %34, align 4
  %ifindex.i70 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %ifindex.i70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ifindex.i70, align 4
  %tobool.not.i71 = xor i1 %tobool.not.i68, true
  %lnot.ext.i72 = zext i1 %tobool.not.i71 to i32
  %in.i73 = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %lnot.ext.i72, i32 1
  %48 = ptrtoint ptr %in.i73 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %in.i73, align 4
  %arrayidx3.i74 = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %lnot.ext.i
  %49 = ptrtoint ptr %arrayidx3.i74 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %34, ptr %arrayidx3.i74, align 4
  %xfrm.i.i.i75 = getelementptr inbounds %struct.dst_entry, ptr %34, i32 0, i32 4
  %50 = ptrtoint ptr %xfrm.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xfrm.i.i.i75, align 4
  %tobool.not.i.i76 = icmp eq ptr %51, null
  %..i.i77 = select i1 %tobool.not.i.i76, i32 1, i32 2
  %xmit_type.i78 = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %lnot.ext.i, i32 3
  %52 = ptrtoint ptr %xmit_type.i78 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %..i.i77, ptr %xmit_type.i78, align 4
  %53 = load i32, ptr %xmit_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp = icmp ne i32 %53, 1
  %tobool.not.i.i76.not = xor i1 %tobool.not.i.i76, true
  %brmerge = select i1 %cmp, i1 true, i1 %tobool.not.i.i76.not
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.then34

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @nft_dev_forward_path(ptr noundef %route, ptr noundef %ct, i32 noundef %dir, ptr noundef %ft)
  call fastcc void @nft_dev_forward_path(ptr noundef %route, ptr noundef %ct, i32 noundef %lnot.ext.i, ptr noundef %ft)
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %other_dst) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_offload_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_offload_route_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_offload_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_offload_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_route(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_dev_forward_path(ptr nocapture noundef %route, ptr noundef %ct, i32 noundef %dir, ptr noundef %ft) unnamed_addr #2 align 64 {
entry:
  %stack = alloca %struct.net_device_path_stack, align 4
  %info = alloca %struct.nft_forward_info, align 4
  %ha = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %dir
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %stack) #7
  %2 = call ptr @memset(ptr %stack, i32 255, i32 104)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #7
  %3 = call ptr @memset(ptr %info, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ha) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not.i = icmp eq i32 %dir, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %tuple.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext.i, i32 1
  %4 = call ptr @memset(ptr %ha, i32 255, i32 6)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %neigh_lookup.i.i = getelementptr inbounds %struct.dst_ops, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %neigh_lookup.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %neigh_lookup.i.i, align 8
  %call.i.i = tail call ptr %10(ptr noundef %1, ptr noundef null, ptr noundef %tuple.i) #7
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool2.not1.i = icmp eq ptr %call.i.i, null
  %tobool2.not.i = or i1 %cmp.i.i.i, %tobool2.not1.i
  br i1 %tobool2.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %11 = getelementptr inbounds [6 x i8], ptr %ha, i32 0, i32 4
  %lock.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i, i32 0, i32 5
  tail call void @_raw_read_lock_bh(ptr noundef %lock.i) #7
  %nud_state3.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %nud_state3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nud_state3.i, align 8
  %ha4.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %ha4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ha4.i, align 4
  %16 = ptrtoint ptr %ha to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ha, align 4
  %add.ptr.i.i = getelementptr %struct.neighbour, ptr %call.i.i, i32 0, i32 18, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 2
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %11, align 4
  tail call void @_raw_read_unlock_bh(ptr noundef %lock.i) #7
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #7, !srcloc !42
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %neigh_release.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #7
  br label %neigh_release.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @neigh_destroy(ptr noundef nonnull %call.i.i) #7
  br label %neigh_release.exit.i

neigh_release.exit.i:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge
  %21 = and i8 %13, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not.i = icmp eq i8 %21, 0
  br i1 %tobool6.not.i, label %neigh_release.exit.i.if.end_crit_edge, label %nft_dev_fill_forward_path.exit

neigh_release.exit.i.if.end_crit_edge:            ; preds = %neigh_release.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_dev_fill_forward_path.exit:                   ; preds = %neigh_release.exit.i
  %call9.i = call i32 @dev_fill_forward_path(ptr noundef %6, ptr noundef nonnull %ha, ptr noundef nonnull %stack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp = icmp sgt i32 %call9.i, -1
  br i1 %cmp, label %if.then, label %nft_dev_fill_forward_path.exit.if.end_crit_edge

nft_dev_fill_forward_path.exit.if.end_crit_edge:  ; preds = %nft_dev_fill_forward_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %nft_dev_fill_forward_path.exit
  %h_dest.i = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 7
  %22 = call ptr @memcpy(ptr %h_dest.i, ptr %ha, i32 6)
  %23 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp141.i = icmp sgt i32 %24, 0
  br i1 %cmp141.i, label %for.body.lr.ph.i, label %if.then.for.end.i_crit_edge

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %h_source40.i = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 6
  %add.ptr.i134.i = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 6, i32 4
  %num_encaps68.i = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 4
  %ingress_vlans.i = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 5
  %xmit_type.i = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 8
  %outdev.i = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0142.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc71.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.net_device_path_stack, ptr %stack, i32 0, i32 1, i32 %i.0142.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %26, label %sw.default.i [
    i32 0, label %for.body.i.sw.bb.i_crit_edge
    i32 4, label %for.body.i.sw.bb.i_crit_edge126
    i32 1, label %for.body.i.sw.bb.i_crit_edge127
    i32 3, label %for.body.i.sw.bb.i_crit_edge128
    i32 2, label %sw.bb39.i
  ]

for.body.i.sw.bb.i_crit_edge128:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge127:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge126:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %for.body.i.sw.bb.i_crit_edge, %for.body.i.sw.bb.i_crit_edge126, %for.body.i.sw.bb.i_crit_edge127, %for.body.i.sw.bb.i_crit_edge128
  %dev.i = getelementptr %struct.net_device_path_stack, ptr %stack, i32 0, i32 1, i32 %i.0142.i, i32 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %info, align 4
  %31 = ptrtoint ptr %h_source40.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %h_source40.i, align 4
  %33 = ptrtoint ptr %add.ptr.i134.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i134.i, align 2
  %conv.i.i = zext i16 %34 to i32
  %or.i.i = or i32 %32, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %sw.bb.i.if.end.i115_crit_edge

sw.bb.i.if.end.i115_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i115

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 86
  %35 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr.i, align 64
  %37 = call ptr @memcpy(ptr %h_source40.i, ptr %36, i32 6)
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then.i, %sw.bb.i.if.end.i115_crit_edge
  %38 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %26, label %if.end14.i [
    i32 0, label %if.end.i115.for.inc.i_crit_edge
    i32 4, label %if.then12.i
  ]

if.end.i115.for.inc.i_crit_edge:                  ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then12.i:                                      ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end14.i:                                       ; preds = %if.end.i115
  %39 = ptrtoint ptr %num_encaps68.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_encaps68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp15.i = icmp ugt i8 %40, 1
  br i1 %cmp15.i, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %info, align 4
  br label %for.inc.i

if.end19.i:                                       ; preds = %if.end14.i
  %42 = ptrtoint ptr %outdev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %29, ptr %outdev.i, align 4
  %43 = getelementptr %struct.net_device_path_stack, ptr %stack, i32 0, i32 1, i32 %i.0142.i, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 4
  %idxprom.i = zext i8 %40 to i32
  %arrayidx22.i = getelementptr %struct.nft_forward_info, ptr %info, i32 0, i32 3, i32 %idxprom.i
  %46 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx22.i, align 4
  %proto.i = getelementptr inbounds %struct.anon.147, ptr %43, i32 0, i32 1
  %47 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %proto.i, align 2
  %49 = ptrtoint ptr %num_encaps68.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_encaps68.i, align 4
  %idxprom26.i = zext i8 %50 to i32
  %proto28.i = getelementptr %struct.nft_forward_info, ptr %info, i32 0, i32 3, i32 %idxprom26.i, i32 1
  %51 = ptrtoint ptr %proto28.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %48, ptr %proto28.i, align 2
  %inc.i = add i8 %50, 1
  store i8 %inc.i, ptr %num_encaps68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp31.i = icmp eq i32 %26, 3
  br i1 %cmp31.i, label %if.then33.i, label %if.end19.i.for.inc.i_crit_edge

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then33.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %h_dest36.i = getelementptr inbounds %struct.anon.147, ptr %43, i32 0, i32 2
  %52 = call ptr @memcpy(ptr %h_dest.i, ptr %h_dest36.i, i32 6)
  br label %for.inc.i

sw.bb39.i:                                        ; preds = %for.body.i
  %53 = ptrtoint ptr %h_source40.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %h_source40.i, align 4
  %55 = ptrtoint ptr %add.ptr.i134.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i134.i, align 2
  %conv.i135.i = zext i16 %56 to i32
  %or.i136.i = or i32 %54, %conv.i135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i136.i)
  %cmp.i137.i = icmp eq i32 %or.i136.i, 0
  br i1 %cmp.i137.i, label %if.then43.i, label %sw.bb39.i.if.end48.i_crit_edge

sw.bb39.i.if.end48.i_crit_edge:                   ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then43.i:                                      ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev46.i = getelementptr %struct.net_device_path_stack, ptr %stack, i32 0, i32 1, i32 %i.0142.i, i32 1
  %57 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev46.i, align 4
  %dev_addr47.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 86
  %59 = ptrtoint ptr %dev_addr47.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_addr47.i, align 64
  %61 = call ptr @memcpy(ptr %h_source40.i, ptr %60, i32 6)
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %sw.bb39.i.if.end48.i_crit_edge
  %62 = getelementptr %struct.net_device_path_stack, ptr %stack, i32 0, i32 1, i32 %i.0142.i, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %64, label %if.end48.i.sw.epilog.i_crit_edge [
    i32 3, label %sw.bb49.i
    i32 1, label %sw.bb54.i
    i32 2, label %sw.bb67.i
  ]

if.end48.i.sw.epilog.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb49.i:                                        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %num_encaps68.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_encaps68.i, align 4
  %conv51.i = zext i8 %67 to i32
  %sub.i = add nsw i32 %conv51.i, -1
  %shl.i = shl nuw i32 1, %sub.i
  %68 = ptrtoint ptr %ingress_vlans.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ingress_vlans.i, align 1
  %70 = trunc i32 %shl.i to i8
  %conv53.i = or i8 %69, %70
  store i8 %conv53.i, ptr %ingress_vlans.i, align 1
  br label %sw.epilog.i

sw.bb54.i:                                        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_id.i = getelementptr inbounds %struct.anon.148, ptr %62, i32 0, i32 1
  %71 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vlan_id.i, align 4
  %73 = ptrtoint ptr %num_encaps68.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_encaps68.i, align 4
  %idxprom57.i = zext i8 %74 to i32
  %arrayidx58.i = getelementptr %struct.nft_forward_info, ptr %info, i32 0, i32 3, i32 %idxprom57.i
  %75 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %72, ptr %arrayidx58.i, align 4
  %vlan_proto.i = getelementptr inbounds %struct.anon.148, ptr %62, i32 0, i32 2
  %76 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vlan_proto.i, align 2
  %78 = load i8, ptr %num_encaps68.i, align 4
  %idxprom62.i = zext i8 %78 to i32
  %proto64.i = getelementptr %struct.nft_forward_info, ptr %info, i32 0, i32 3, i32 %idxprom62.i, i32 1
  %79 = ptrtoint ptr %proto64.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %77, ptr %proto64.i, align 2
  %inc66.i = add i8 %78, 1
  store i8 %inc66.i, ptr %num_encaps68.i, align 4
  br label %sw.epilog.i

sw.bb67.i:                                        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %num_encaps68.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %num_encaps68.i, align 4
  %dec.i = add i8 %81, -1
  store i8 %dec.i, ptr %num_encaps68.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb67.i, %sw.bb54.i, %sw.bb49.i, %if.end48.i.sw.epilog.i_crit_edge
  %82 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3, ptr %xmit_type.i, align 4
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %info, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i, %sw.epilog.i, %if.then33.i, %if.end19.i.for.inc.i_crit_edge, %if.then17.i, %if.then12.i, %if.end.i115.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %i.0142.i, %sw.default.i ], [ %i.0142.i, %sw.epilog.i ], [ %i.0142.i, %if.end.i115.for.inc.i_crit_edge ], [ %24, %if.then12.i ], [ %i.0142.i, %if.then17.i ], [ %i.0142.i, %if.then33.i ], [ %i.0142.i, %if.end19.i.for.inc.i_crit_edge ]
  %inc71.i = add i32 %i.1.i, 1
  %cmp.i = icmp slt i32 %inc71.i, %24
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %outdev72.i = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 1
  %84 = ptrtoint ptr %outdev72.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %outdev72.i, align 4
  %tobool.not.i116 = icmp eq ptr %85, null
  %86 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %info, align 4
  br i1 %tobool.not.i116, label %if.then73.i, label %for.end.i.if.end76.i_crit_edge

for.end.i.if.end76.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

if.then73.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %outdev72.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %outdev72.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then73.i, %for.end.i.if.end76.i_crit_edge
  %hw_outdev.i = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 2
  %89 = ptrtoint ptr %hw_outdev.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %87, ptr %hw_outdev.i, align 4
  %flags.i.i = getelementptr inbounds %struct.nft_flowtable, ptr %ft, i32 0, i32 9, i32 5
  %90 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  %tobool.not.i.i = icmp eq ptr %87, null
  %or.cond.i = select i1 %tobool.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i, label %if.end76.i.if.end_crit_edge, label %lor.lhs.false.i.i

if.end76.i.if.end_crit_edge:                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.i:                                ; preds = %if.end76.i
  %flags.i138.i = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 14
  %92 = ptrtoint ptr %flags.i138.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i138.i, align 8
  %and.i139.i = and i32 %93, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139.i)
  %tobool1.not.i.i = icmp eq i32 %and.i139.i, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false2.i.i, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %type.i.i = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 32
  %94 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %type.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %95)
  %cmp.not.i.i = icmp eq i16 %95, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false2.i.i.if.end_crit_edge

lor.lhs.false2.i.i.if.end_crit_edge:              ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false2.i.i
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 56
  %96 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %addr_len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %97)
  %cmp6.not.i.i = icmp eq i8 %97, 6
  br i1 %cmp6.not.i.i, label %lor.lhs.false8.i.i, label %lor.lhs.false4.i.i.if.end_crit_edge

lor.lhs.false4.i.i.if.end_crit_edge:              ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false8.i.i:                               ; preds = %lor.lhs.false4.i.i
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 86
  %98 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_addr.i.i, align 64
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %102 = and i32 %101, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.i.not.i.i.i = icmp eq i32 %102, 0
  br i1 %tobool.i.not.i.i.i, label %nft_is_valid_ether_device.exit.i, label %lor.lhs.false8.i.i.if.end_crit_edge

lor.lhs.false8.i.i.if.end_crit_edge:              ; preds = %lor.lhs.false8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_is_valid_ether_device.exit.i:                 ; preds = %lor.lhs.false8.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %99, i32 4
  %103 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %104 to i32
  %or.i.i.i.i = or i32 %101, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.not.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.not.i, label %nft_is_valid_ether_device.exit.i.if.end_crit_edge, label %if.then83.i

nft_is_valid_ether_device.exit.i.if.end_crit_edge: ; preds = %nft_is_valid_ether_device.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then83.i:                                      ; preds = %nft_is_valid_ether_device.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %xmit_type84.i = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 8
  %105 = ptrtoint ptr %xmit_type84.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3, ptr %xmit_type84.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then83.i, %nft_is_valid_ether_device.exit.i.if.end_crit_edge, %lor.lhs.false8.i.i.if.end_crit_edge, %lor.lhs.false4.i.i.if.end_crit_edge, %lor.lhs.false2.i.i.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge, %if.end76.i.if.end_crit_edge, %nft_dev_fill_forward_path.exit.if.end_crit_edge, %neigh_release.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %106 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %107, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call.i = call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i117 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i117, label %land.lhs.true.i, label %lor.lhs.false.do.end.i_crit_edge

lor.lhs.false.do.end.i_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i118 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i118, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @nft_flowtable_find_dev.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i119

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i119:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nft_flowtable_find_dev.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 171, ptr noundef nonnull @.str.3) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i119, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.do.end.i_crit_edge
  %hook_list.i = getelementptr inbounds %struct.nft_flowtable, ptr %ft, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i120.for.cond.i_crit_edge, %do.end.i
  %hook.0.in.i = phi ptr [ %hook_list.i, %do.end.i ], [ %hook.0.i, %for.body.i120.for.cond.i_crit_edge ]
  %108 = ptrtoint ptr %hook.0.in.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %hook.0.i = load volatile ptr, ptr %hook.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %hook.0.i, %hook_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i120

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i120:                                    ; preds = %for.cond.i
  %dev10.i = getelementptr inbounds %struct.nft_hook, ptr %hook.0.i, i32 0, i32 2, i32 1
  %109 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev10.i, align 4
  %cmp11.not.i = icmp eq ptr %110, %107
  br i1 %cmp11.not.i, label %if.end6, label %for.body.i120.for.cond.i_crit_edge

for.body.i120.for.cond.i_crit_edge:               ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end6:                                          ; preds = %for.body.i120
  %111 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %info, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 17
  %113 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ifindex, align 4
  %in = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %lnot.ext.i, i32 1
  %115 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %in, align 4
  %num_encaps = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 4
  %116 = ptrtoint ptr %num_encaps to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %num_encaps, align 4
  %conv = zext i8 %117 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp12124.not = icmp eq i8 %117, 0
  br i1 %cmp12124.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.0125 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx14 = getelementptr %struct.nft_forward_info, ptr %info, i32 0, i32 3, i32 %i.0125
  %118 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx14, align 4
  %arrayidx22 = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %lnot.ext.i, i32 1, i32 1, i32 %i.0125
  %120 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %arrayidx22, align 4
  %proto = getelementptr %struct.nft_forward_info, ptr %info, i32 0, i32 3, i32 %i.0125, i32 1
  %121 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %proto, align 2
  %proto34 = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %lnot.ext.i, i32 1, i32 1, i32 %i.0125, i32 1
  %123 = ptrtoint ptr %proto34 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %proto34, align 2
  %inc = add nuw nsw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %num_encaps42 = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %lnot.ext.i, i32 1, i32 2
  %124 = ptrtoint ptr %num_encaps42 to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load = load i8, ptr %num_encaps42, align 4
  %bf.shl = shl i8 %117, 6
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, %bf.shl
  %ingress_vlans = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 5
  %125 = ptrtoint ptr %ingress_vlans to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ingress_vlans, align 1
  %bf.value51 = shl i8 %126, 4
  %bf.shl52 = and i8 %bf.value51, 48
  %bf.set54 = or i8 %bf.shl52, %bf.set
  store i8 %bf.set54, ptr %num_encaps42, align 4
  %xmit_type = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 8
  %127 = ptrtoint ptr %xmit_type to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %xmit_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %128)
  %cmp55 = icmp eq i32 %128, 3
  br i1 %cmp55, label %if.then57, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then57:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %out = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %dir, i32 2
  %h_source = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %dir, i32 2, i32 2
  %h_source61 = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 6
  %129 = call ptr @memcpy(ptr %h_source, ptr %h_source61, i32 6)
  %h_dest = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %dir, i32 2, i32 3
  %h_dest67 = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 7
  %130 = call ptr @memcpy(ptr %h_dest, ptr %h_dest67, i32 6)
  %outdev = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 1
  %131 = ptrtoint ptr %outdev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %outdev, align 4
  %ifindex69 = getelementptr inbounds %struct.net_device, ptr %132, i32 0, i32 17
  %133 = ptrtoint ptr %ifindex69 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ifindex69, align 4
  %135 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %out, align 4
  %hw_outdev = getelementptr inbounds %struct.nft_forward_info, ptr %info, i32 0, i32 2
  %136 = ptrtoint ptr %hw_outdev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw_outdev, align 4
  %ifindex74 = getelementptr inbounds %struct.net_device, ptr %137, i32 0, i32 17
  %138 = ptrtoint ptr %ifindex74 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ifindex74, align 4
  %hw_ifindex = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %dir, i32 2, i32 1
  %140 = ptrtoint ptr %hw_ifindex to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %hw_ifindex, align 4
  %xmit_type81 = getelementptr [2 x %struct.anon.206], ptr %route, i32 0, i32 %dir, i32 3
  %141 = ptrtoint ptr %xmit_type81 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 3, ptr %xmit_type81, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %for.end.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ha) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #7
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %stack) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_fill_forward_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_flowtable_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_tables_deactivate_flowtable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flow_offload_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  tail call void @nf_flow_table_cleanup(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_flow_table_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_nft_flow_offload__645_484_nft_flow_offload_module_init6, !1, !"__initcall__kmod_nft_flow_offload__645_484_nft_flow_offload_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_flow_offload.c", i32 484, i32 1}
!2 = !{ptr @__exitcall_nft_flow_offload_module_exit, !3, !"__exitcall_nft_flow_offload_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_flow_offload.c", i32 485, i32 1}
!4 = !{ptr @__UNIQUE_ID_file646, !5, !"__UNIQUE_ID_file646", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_flow_offload.c", i32 487, i32 1}
!6 = !{ptr @__UNIQUE_ID_license647, !5, !"__UNIQUE_ID_license647", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author648, !8, !"__UNIQUE_ID_author648", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_flow_offload.c", i32 488, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias649, !10, !"__UNIQUE_ID_alias649", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_flow_offload.c", i32 489, i32 1}
!11 = !{ptr @__UNIQUE_ID_description650, !12, !"__UNIQUE_ID_description650", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_flow_offload.c", i32 490, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_flow_offload.c", i32 434, i32 11}
!15 = !{ptr @nft_flow_offload_type, !16, !"nft_flow_offload_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_flow_offload.c", i32 433, i32 29}
!17 = !{ptr @nft_flow_offload_ops, !18, !"nft_flow_offload_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_flow_offload.c", i32 421, i32 34}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_flow_offload.c", i32 171, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nft_flow_offload_policy, !26, !"nft_flow_offload_policy", i1 false, i1 false}
!26 = !{!"../net/netfilter/nft_flow_offload.c", i32 357, i32 32}
!27 = !{ptr @flow_offload_netdev_notifier, !28, !"flow_offload_netdev_notifier", i1 false, i1 false}
!28 = !{!"../net/netfilter/nft_flow_offload.c", i32 454, i32 30}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"branch_weights", i32 4000000, i32 4001}
!41 = !{i64 2148309984}
!42 = !{i64 2148224448, i64 2148224480, i64 2148224509, i64 2148224543, i64 2148224574, i64 2148224597}
!43 = !{i64 2149316432}
