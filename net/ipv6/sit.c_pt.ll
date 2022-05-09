; ModuleID = '/llk/IR_all_yes/net/ipv6/sit.c_pt.bc'
source_filename = "../net/ipv6/sit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.137 }
%union.anon.137 = type { ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xfrm_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tnl_ptk_info = type { i16, i16, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.101, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.101 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.143, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.157, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.143 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.157 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
%struct.ip_tunnel_6rd = type { %struct.in6_addr, i32, i16, i16 }
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sit_net = type { [16 x ptr], [16 x ptr], [16 x ptr], [1 x ptr], [4 x ptr], ptr }
%struct.ip_tunnel = type { ptr, %struct.hlist_node, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i16, %struct.dst_cache, %struct.ip_tunnel_parm, i32, i32, i32, %struct.ip_tunnel_encap, %struct.ip_tunnel_6rd_parm, ptr, i32, i32, %struct.gro_cells, i32, i8, i8 }
%struct.dst_cache = type { ptr, i32 }
%struct.ip_tunnel_6rd_parm = type { %struct.in6_addr, i32, i16, i16 }
%struct.gro_cells = type { ptr }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.ip_tunnel_prl = type { i32, i16, i16, i32, i32 }
%struct.ip_tunnel_prl_entry = type { ptr, i32, i16, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.83 = type { i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.97, i32, %struct.list_head, ptr }
%union.anon.97 = type { %struct.in6_addr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ip_tunnel_encap_ops = type { ptr, ptr, ptr }
%struct.vlan_hdr = type { i16, i16 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.162 }
%union.anon.162 = type { i32 }

@__param_str_log_ecn_error = internal constant [18 x i8] c"sit.log_ecn_error\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@log_ecn_error = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_log_ecn_error = internal constant %struct.kernel_param { ptr @__param_str_log_ecn_error, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.137 { ptr @log_ecn_error } }, section "__param", align 4
@__UNIQUE_ID_log_ecn_errortype592 = internal constant [32 x i8] c"sit.parmtype=log_ecn_error:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_log_ecn_error593 = internal constant [63 x i8] c"sit.parm=log_ecn_error:Log packets received with corrupted ECN\00", section ".modinfo", align 1
@sit_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 180, ptr null, ptr @ipip6_tunnel_setup, i8 0, i32 20, ptr @ipip6_policy, ptr @ipip6_validate, ptr @ipip6_newlink, ptr @ipip6_changelink, ptr @ipip6_dellink, ptr @ipip6_get_size, ptr @ipip6_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@sit_handler = internal global %struct.xfrm_tunnel { ptr @ipip6_rcv, ptr null, ptr @ipip6_err, ptr null, i32 1 }, section ".data..read_mostly", align 4
@ipip_handler = internal global %struct.xfrm_tunnel { ptr @ipip_rcv, ptr null, ptr @ipip6_err, ptr null, i32 2 }, section ".data..read_mostly", align 4
@mplsip_handler = internal global %struct.xfrm_tunnel { ptr @mplsip_rcv, ptr null, ptr @ipip6_err, ptr null, i32 2 }, section ".data..read_mostly", align 4
@sit_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @sit_init_net, ptr null, ptr null, ptr @sit_exit_batch_net, ptr @sit_net_id, i32 216 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_sit__635_2020_sit_init6 = internal global ptr @sit_init, section ".initcall6.init", align 4
@__exitcall_sit_cleanup = internal global ptr @sit_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file636 = internal constant [22 x i8] c"sit.file=net/ipv6/sit\00", section ".modinfo", align 1
@__UNIQUE_ID_license637 = internal constant [16 x i8] c"sit.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias638 = internal constant [24 x i8] c"sit.alias=rtnl-link-sit\00", section ".modinfo", align 1
@__UNIQUE_ID_alias639 = internal constant [22 x i8] c"sit.alias=netdev-sit0\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sit\00", [28 x i8] zeroinitializer }, align 32
@ipip6_policy = internal constant { [21 x %struct.nla_policy], [56 x i8] } { [21 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@ipip6_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ipip6_tunnel_init, ptr @ipip6_tunnel_uninit, ptr null, ptr null, ptr @sit_tunnel_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipip6_tunnel_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipip6_tunnel_ctl, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ip_tunnel_header_ops = external dso_local constant %struct.header_ops, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ipip6_tunnel_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@sit_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ipip6_tunnel_unlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/ipv6/sit.c\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ipip6_tunnel_del_prl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ipip6_tunnel_del_prl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_tunnel_del_prl.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ipip6_tunnel_xmit.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.7, ptr @.str.12, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipip6_tunnel_xmit\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nexthop == NULL\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sit: nexthop == NULL\0A\00", [42 x i8] zeroinitializer }, align 32
@ipip6_tunnel_xmit.descriptor.14 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.7, ptr @.str.12, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@iptun_encaps = external dso_local global [8 x ptr], align 4
@ip_tunnel_encap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/net/ip_tunnels.h\00", [39 x i8] zeroinitializer }, align 32
@ipip6_tunnel_get_prl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_tunnel_get_prl.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipip6_tunnel_add_prl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipip6_tunnel_add_prl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_tunnel_add_prl.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_tunnel_locate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sit%d\00", [26 x i8] zeroinitializer }, align 32
@ipip6_tunnel_link.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016sit: non-ECT from %pI4 with TOS=%#x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipip6_rcv\00", [22 x i8] zeroinitializer }, align 32
@ipip6_rcv._entry_ptr = internal global ptr @ipip6_rcv._entry, section ".printk_index", align 4
@ipip6_tunnel_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_tunnel_lookup.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_tunnel_lookup.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_tunnel_lookup.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_tunnel_lookup.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_tunnel_lookup.__warned.29 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipip6_tunnel_lookup.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@packet_is_spoofed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014sit: Src spoofed %pI4/%pI6c -> %pI4/%pI6c\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"packet_is_spoofed\00", [46 x i8] zeroinitializer }, align 32
@packet_is_spoofed._entry_ptr = internal global ptr @packet_is_spoofed._entry, section ".printk_index", align 4
@packet_is_spoofed._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.7, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014sit: Dst spoofed %pI4/%pI6c -> %pI4/%pI6c\0A\00", [51 x i8] zeroinitializer }, align 32
@packet_is_spoofed._entry_ptr.35 = internal global ptr @packet_is_spoofed._entry.33, section ".printk_index", align 4
@__ipip6_tunnel_locate_prl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ipip6_tunnel_locate_prl.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@mplsip_tpi = internal constant { %struct.tnl_ptk_info, [16 x i8] } { %struct.tnl_ptk_info { i16 0, i16 -30649, i32 0, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ipip_tpi = internal constant { %struct.tnl_ptk_info, [16 x i8] } { %struct.tnl_ptk_info { i16 0, i16 2048, i32 0, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sit0\00", [27 x i8] zeroinitializer }, align 32
@sysctl_fb_tunnels_only_for_init_net = external dso_local local_unnamed_addr global i32, align 4
@init_net = external dso_local global %struct.net, align 128
@sit_destroy_tunnels.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sit_destroy_tunnels.__warned.41 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sit_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 1978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sit_init\00", [23 x i8] zeroinitializer }, align 32
@sit_init._entry_ptr = internal global ptr @sit_init._entry, section ".printk_index", align 4
@sit_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.7, i32 1985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016sit: %s: can't register ip6ip4\0A\00", [62 x i8] zeroinitializer }, align 32
@sit_init._entry_ptr.46 = internal global ptr @sit_init._entry.44, section ".printk_index", align 4
@sit_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.7, i32 1990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016sit: %s: can't register ip4ip4\0A\00", [62 x i8] zeroinitializer }, align 32
@sit_init._entry_ptr.49 = internal global ptr @sit_init._entry.47, section ".printk_index", align 4
@sit_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.7, i32 1996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016sit: %s: can't register mplsip\0A\00", [62 x i8] zeroinitializer }, align 32
@sit_init._entry_ptr.52 = internal global ptr @sit_init._entry.50, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 4, i64 41, i64 137]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 34525, i64 34887]
@__sancov_gen_cov_switch_values.54 = internal global [14 x i64] [i64 12, i64 32, i64 35312, i64 35313, i64 35314, i64 35315, i64 35316, i64 35317, i64 35318, i64 35319, i64 35320, i64 35321, i64 35322, i64 35323]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 35317, i64 35318, i64 35319]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 35312, i64 35313, i64 35314, i64 35315]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 4, i64 41, i64 137]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 4, i64 41, i64 137]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 41]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 11]
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"log_ecn_error\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 64, i32 13 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"sit_net_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1954, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1831, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"ipip6_policy\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1799, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"ipip6_netdev_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1400, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1456, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 45, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 695, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 723, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 166, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 430, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 893, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1011, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [28 x i8] c"../include/net/ip_tunnels.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 371, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 230, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 214, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 156, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 259, i32 16 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 718, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 660, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 672, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 598, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 271, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 313, i32 9 }
@___asan_gen_.177 = private unnamed_addr constant [11 x i8] c"mplsip_tpi\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 751, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant [9 x i8] c"ipip_tpi\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 745, i32 34 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1909, i32 24 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1978, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1985, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1990, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [18 x i8] c"../net/ipv6/sit.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1996, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_alias638, ptr @__UNIQUE_ID_alias639, ptr @__UNIQUE_ID_file636, ptr @__UNIQUE_ID_license637, ptr @__UNIQUE_ID_log_ecn_error593, ptr @__UNIQUE_ID_log_ecn_errortype592, ptr @__exitcall_sit_cleanup, ptr @__initcall__kmod_sit__635_2020_sit_init6, ptr @__param_log_ecn_error, ptr @ipip6_rcv._entry, ptr @ipip6_rcv._entry_ptr, ptr @packet_is_spoofed._entry, ptr @packet_is_spoofed._entry.33, ptr @packet_is_spoofed._entry_ptr, ptr @packet_is_spoofed._entry_ptr.35, ptr @sit_cleanup, ptr @sit_init._entry, ptr @sit_init._entry.44, ptr @sit_init._entry.47, ptr @sit_init._entry.50, ptr @sit_init._entry_ptr, ptr @sit_init._entry_ptr.46, ptr @sit_init._entry_ptr.49, ptr @sit_init._entry_ptr.52, ptr @log_ecn_error, ptr @sit_net_ops, ptr @.str, ptr @ipip6_policy, ptr @ipip6_netdev_ops, ptr @ipip6_tunnel_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @mplsip_tpi, ptr @ipip_tpi, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ecn_error to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sit_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip6_policy to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip6_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip6_tunnel_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip6_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_is_spoofed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_is_spoofed._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mplsip_tpi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip_tpi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sit_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sit_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sit_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sit_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sit_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @rtnl_link_unregister(ptr noundef nonnull @sit_link_ops) #20
  %call = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @sit_handler, i16 noundef zeroext 10) #20
  %call1 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @ipip_handler, i16 noundef zeroext 2) #20
  %call2 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @mplsip_handler, i16 noundef zeroext 28) #20
  tail call void @unregister_pernet_device(ptr noundef nonnull @sit_net_ops) #20
  tail call void @rcu_barrier() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_tunnel_deregister(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sit_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #23
  %call1 = tail call i32 @register_pernet_device(ptr noundef nonnull @sit_net_ops) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @sit_handler, i16 noundef zeroext 10) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #23
  br label %xfrm_tunnel_failed

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @ipip_handler, i16 noundef zeroext 2) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.43) #23
  br label %xfrm_tunnel4_failed

if.end19:                                         ; preds = %if.end10
  %call20 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @mplsip_handler, i16 noundef zeroext 28) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.43) #23
  br label %xfrm_tunnel_mpls_failed

if.end28:                                         ; preds = %if.end19
  %call29 = tail call i32 @rtnl_link_register(ptr noundef nonnull @sit_link_ops) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %rtnl_link_failed, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

rtnl_link_failed:                                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #22
  %call33 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @mplsip_handler, i16 noundef zeroext 28) #20
  br label %xfrm_tunnel_mpls_failed

xfrm_tunnel_mpls_failed:                          ; preds = %rtnl_link_failed, %do.end25
  %err.1 = phi i32 [ %call20, %do.end25 ], [ %call29, %rtnl_link_failed ]
  %call34 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @ipip_handler, i16 noundef zeroext 2) #20
  br label %xfrm_tunnel4_failed

xfrm_tunnel4_failed:                              ; preds = %xfrm_tunnel_mpls_failed, %do.end16
  %err.2 = phi i32 [ %call11, %do.end16 ], [ %err.1, %xfrm_tunnel_mpls_failed ]
  %call35 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @sit_handler, i16 noundef zeroext 10) #20
  br label %xfrm_tunnel_failed

xfrm_tunnel_failed:                               ; preds = %xfrm_tunnel4_failed, %do.end7
  %err.3 = phi i32 [ %call2, %do.end7 ], [ %err.2, %xfrm_tunnel4_failed ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @sit_net_ops) #20
  br label %cleanup

cleanup:                                          ; preds = %xfrm_tunnel_failed, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %err.3, %xfrm_tunnel_failed ], [ %call29, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ipip6_tunnel_setup(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hlen = getelementptr i8, ptr %dev, i32 2424
  %0 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hlen, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ipip6_netdev_ops, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %3 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ip_tunnel_header_ops, ptr %header_ops, align 4
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %4 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %5 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ipip6_dev_free, ptr %priv_destructor, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 776, ptr %type, align 16
  %sub = sub i32 1480, %1
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %8 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1280, ptr %min_mtu, align 8
  %sub1 = sub i32 65555, %1
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %9 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub1, ptr %max_mtu, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %flags, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %12, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %13 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %addr_len, align 1
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %14 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features, align 16
  %or3 = or i64 %15, 26845450345
  store i64 %or3, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %16 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hw_features, align 8
  %or4 = or i64 %17, 26845446249
  store i64 %or4, ptr %hw_features, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipip6_validate(ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 41, label %if.end._crit_edge
    i8 4, label %if.end._crit_edge8
    i8 -119, label %if.end._crit_edge9
    i8 0, label %if.end._crit_edge10
  ]

if.end._crit_edge10:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %5

if.end._crit_edge9:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %5

if.end._crit_edge8:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %5

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

5:                                                ; preds = %if.end._crit_edge, %if.end._crit_edge8, %if.end._crit_edge9, %if.end._crit_edge10
  br label %cleanup

cleanup:                                          ; preds = %5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %5 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip6_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  %tmp.i = alloca %struct.in6_addr, align 4
  %ipencap = alloca %struct.ip_tunnel_encap, align 8
  %ip6rd = alloca %struct.ip_tunnel_6rd, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipencap) #20
  %2 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ip6rd) #20
  %5 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd, i32 0, i32 1
  %6 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %8 = ptrtoint ptr %ipencap to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %ipencap, align 8
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %entry.if.end5_crit_edge, label %if.end.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %data, i32 15
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i.i, align 2
  %13 = ptrtoint ptr %ipencap to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %ipencap, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %14 = xor i1 %tobool2.not.i, true
  %arrayidx6.i = getelementptr ptr, ptr %data, i32 16
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %16, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then8.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i43.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i43.i, align 2
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %2, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end11.i_crit_edge
  %ret.1.off0.i = phi i1 [ true, %if.then8.i ], [ %14, %if.end5.i.if.end11.i_crit_edge ]
  %arrayidx12.i = getelementptr ptr, ptr %data, i32 17
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %21, null
  br i1 %tobool13.not.i, label %if.end17.i, label %if.end17.i.thread

if.end17.i:                                       ; preds = %if.end11.i
  %arrayidx18.i = getelementptr ptr, ptr %data, i32 18
  %22 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %23, null
  br i1 %tobool19.not.i, label %ipip6_netlink_encap_parms.exit, label %if.end17.i.ipip6_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.ipip6_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_netlink_encap_parms.exit.thread

if.end17.i.thread:                                ; preds = %if.end11.i
  %add.ptr.i.i44.i = getelementptr i8, ptr %21, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i44.i, align 2
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %3, align 4
  %arrayidx18.i76 = getelementptr ptr, ptr %data, i32 18
  %27 = ptrtoint ptr %arrayidx18.i76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx18.i76, align 4
  %tobool19.not.i77 = icmp eq ptr %28, null
  br i1 %tobool19.not.i77, label %if.end17.i.thread.if.then_crit_edge, label %if.end17.i.thread.ipip6_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.thread.ipip6_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_netlink_encap_parms.exit.thread

if.end17.i.thread.if.then_crit_edge:              ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

ipip6_netlink_encap_parms.exit.thread:            ; preds = %if.end17.i.thread.ipip6_netlink_encap_parms.exit.thread_crit_edge, %if.end17.i.ipip6_netlink_encap_parms.exit.thread_crit_edge
  %29 = phi ptr [ %28, %if.end17.i.thread.ipip6_netlink_encap_parms.exit.thread_crit_edge ], [ %23, %if.end17.i.ipip6_netlink_encap_parms.exit.thread_crit_edge ]
  %add.ptr.i.i45.i = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i45.i, align 2
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %4, align 2
  br label %if.then

ipip6_netlink_encap_parms.exit:                   ; preds = %if.end17.i
  br i1 %ret.1.off0.i, label %ipip6_netlink_encap_parms.exit.if.then_crit_edge, label %ipip6_netlink_encap_parms.exit.if.end5_crit_edge

ipip6_netlink_encap_parms.exit.if.end5_crit_edge: ; preds = %ipip6_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

ipip6_netlink_encap_parms.exit.if.then_crit_edge: ; preds = %ipip6_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then:                                          ; preds = %ipip6_netlink_encap_parms.exit.if.then_crit_edge, %ipip6_netlink_encap_parms.exit.thread, %if.end17.i.thread.if.then_crit_edge
  %call3 = call i32 @ip_tunnel_encap_setup(ptr noundef %add.ptr.i, ptr noundef nonnull %ipencap) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %ipip6_netlink_encap_parms.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %parms = getelementptr i8, ptr %dev, i32 2364
  %fwmark = getelementptr i8, ptr %dev, i32 2476
  call fastcc void @ipip6_netlink_parms(ptr noundef %data, ptr noundef %parms, ptr noundef %fwmark)
  %call7 = call fastcc ptr @ipip6_tunnel_locate(ptr noundef %1, ptr noundef %parms, i32 noundef 0)
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc i32 @ipip6_tunnel_create(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %34, null
  br i1 %tobool14.not, label %if.end13.if.end24_crit_edge, label %if.then15

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then15:                                        ; preds = %if.end13
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %36)
  %cmp18 = icmp ugt i32 %36, 1279
  br i1 %cmp18, label %land.lhs.true, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then15
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %37 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %38 to i32
  %sub = sub nuw nsw i32 65575, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %sub)
  %cmp19.not = icmp ugt i32 %36, %sub
  br i1 %cmp19.not, label %land.lhs.true.if.end24_crit_edge, label %if.then21

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %mtu22 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %39 = ptrtoint ptr %mtu22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %mtu22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true.if.end24_crit_edge, %if.then15.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %40 = call ptr @memset(ptr %ip6rd, i32 0, i32 24)
  br i1 %tobool.not.i, label %if.end24.cleanup_crit_edge, label %if.end.i59

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i59:                                       ; preds = %if.end24
  %arrayidx.i57 = getelementptr ptr, ptr %data, i32 11
  %41 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i57, align 4
  %tobool2.not.i58 = icmp eq ptr %42, null
  br i1 %tobool2.not.i58, label %if.end.i59.if.end5.i63_crit_edge, label %if.then3.i60

if.end.i59.if.end5.i63_crit_edge:                 ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i63

if.then3.i60:                                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #20
  %43 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %42, i32 noundef 16) #20
  %44 = call ptr @memcpy(ptr %ip6rd, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #20
  br label %if.end5.i63

if.end5.i63:                                      ; preds = %if.then3.i60, %if.end.i59.if.end5.i63_crit_edge
  %45 = xor i1 %tobool2.not.i58, true
  %arrayidx6.i61 = getelementptr ptr, ptr %data, i32 12
  %46 = ptrtoint ptr %arrayidx6.i61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx6.i61, align 4
  %tobool7.not.i62 = icmp eq ptr %47, null
  br i1 %tobool7.not.i62, label %if.end5.i63.if.end10.i_crit_edge, label %if.then8.i65

if.end5.i63.if.end10.i_crit_edge:                 ; preds = %if.end5.i63
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10.i

if.then8.i65:                                     ; preds = %if.end5.i63
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i.i64 = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i.i64, align 4
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %5, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i65, %if.end5.i63.if.end10.i_crit_edge
  %ret.1.off0.i66 = phi i1 [ true, %if.then8.i65 ], [ %45, %if.end5.i63.if.end10.i_crit_edge ]
  %arrayidx11.i = getelementptr ptr, ptr %data, i32 13
  %51 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx11.i, align 4
  %tobool12.not.i = icmp eq ptr %52, null
  br i1 %tobool12.not.i, label %if.end16.i, label %if.end16.i.thread

if.end16.i:                                       ; preds = %if.end10.i
  %arrayidx17.i = getelementptr ptr, ptr %data, i32 14
  %53 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %54, null
  br i1 %tobool18.not.i, label %ipip6_netlink_6rd_parms.exit, label %if.end16.i.ipip6_netlink_6rd_parms.exit.thread_crit_edge

if.end16.i.ipip6_netlink_6rd_parms.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_netlink_6rd_parms.exit.thread

if.end16.i.thread:                                ; preds = %if.end10.i
  %add.ptr.i.i41.i = getelementptr i8, ptr %52, i32 4
  %55 = ptrtoint ptr %add.ptr.i.i41.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i.i41.i, align 2
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %6, align 4
  %arrayidx17.i82 = getelementptr ptr, ptr %data, i32 14
  %58 = ptrtoint ptr %arrayidx17.i82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx17.i82, align 4
  %tobool18.not.i83 = icmp eq ptr %59, null
  br i1 %tobool18.not.i83, label %if.end16.i.thread.if.then26_crit_edge, label %if.end16.i.thread.ipip6_netlink_6rd_parms.exit.thread_crit_edge

if.end16.i.thread.ipip6_netlink_6rd_parms.exit.thread_crit_edge: ; preds = %if.end16.i.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_netlink_6rd_parms.exit.thread

if.end16.i.thread.if.then26_crit_edge:            ; preds = %if.end16.i.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then26

ipip6_netlink_6rd_parms.exit.thread:              ; preds = %if.end16.i.thread.ipip6_netlink_6rd_parms.exit.thread_crit_edge, %if.end16.i.ipip6_netlink_6rd_parms.exit.thread_crit_edge
  %60 = phi ptr [ %59, %if.end16.i.thread.ipip6_netlink_6rd_parms.exit.thread_crit_edge ], [ %54, %if.end16.i.ipip6_netlink_6rd_parms.exit.thread_crit_edge ]
  %add.ptr.i.i42.i = getelementptr i8, ptr %60, i32 4
  %61 = ptrtoint ptr %add.ptr.i.i42.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %add.ptr.i.i42.i, align 2
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %7, align 2
  br label %if.then26

ipip6_netlink_6rd_parms.exit:                     ; preds = %if.end16.i
  br i1 %ret.1.off0.i66, label %ipip6_netlink_6rd_parms.exit.if.then26_crit_edge, label %ipip6_netlink_6rd_parms.exit.cleanup_crit_edge

ipip6_netlink_6rd_parms.exit.cleanup_crit_edge:   ; preds = %ipip6_netlink_6rd_parms.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

ipip6_netlink_6rd_parms.exit.if.then26_crit_edge: ; preds = %ipip6_netlink_6rd_parms.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then26

if.then26:                                        ; preds = %ipip6_netlink_6rd_parms.exit.if.then26_crit_edge, %ipip6_netlink_6rd_parms.exit.thread, %if.end16.i.thread.if.then26_crit_edge
  %call27 = call fastcc i32 @ipip6_tunnel_update_6rd(ptr noundef %add.ptr.i, ptr noundef nonnull %ip6rd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #22
  call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.then26.cleanup_crit_edge, %ipip6_netlink_6rd_parms.exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ -17, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call27, %if.then30 ], [ 0, %if.then26.cleanup_crit_edge ], [ %call10, %ipip6_netlink_6rd_parms.exit.cleanup_crit_edge ], [ %call10, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ip6rd) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip6_changelink(ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  %tmp.i = alloca %struct.in6_addr, align 4
  %p = alloca %struct.ip_tunnel_parm, align 4
  %ipencap = alloca %struct.ip_tunnel_encap, align 8
  %ip6rd = alloca %struct.ip_tunnel_6rd, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p) #20
  %0 = call ptr @memset(ptr %p, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipencap) #20
  %1 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 3
  %net1 = getelementptr i8, ptr %dev, i32 2324
  %4 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net1, align 4
  %6 = load i32, ptr @sit_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ip6rd) #20
  %7 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd, i32 0, i32 3
  %fwmark3 = getelementptr i8, ptr %dev, i32 2476
  %10 = ptrtoint ptr %fwmark3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fwmark3, align 4
  %fb_tunnel_dev = getelementptr inbounds %struct.sit_net, ptr %call2, i32 0, i32 5
  %12 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb_tunnel_dev, align 4
  %cmp = icmp eq ptr %13, %dev
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %ipencap to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %ipencap, align 8
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %if.end10, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %data, i32 15
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i.i, align 2
  %19 = ptrtoint ptr %ipencap to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %ipencap, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %20 = xor i1 %tobool2.not.i, true
  %arrayidx6.i = getelementptr ptr, ptr %data, i32 16
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %22, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then8.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i43.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i43.i, align 2
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %1, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end11.i_crit_edge
  %ret.1.off0.i = phi i1 [ true, %if.then8.i ], [ %20, %if.end5.i.if.end11.i_crit_edge ]
  %arrayidx12.i = getelementptr ptr, ptr %data, i32 17
  %26 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %27, null
  br i1 %tobool13.not.i, label %if.end17.i, label %if.end17.i.thread

if.end17.i:                                       ; preds = %if.end11.i
  %arrayidx18.i = getelementptr ptr, ptr %data, i32 18
  %28 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %29, null
  br i1 %tobool19.not.i, label %ipip6_netlink_encap_parms.exit, label %if.end17.i.ipip6_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.ipip6_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_netlink_encap_parms.exit.thread

if.end17.i.thread:                                ; preds = %if.end11.i
  %add.ptr.i.i44.i = getelementptr i8, ptr %27, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i44.i, align 2
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %2, align 4
  %arrayidx18.i96 = getelementptr ptr, ptr %data, i32 18
  %33 = ptrtoint ptr %arrayidx18.i96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx18.i96, align 4
  %tobool19.not.i97 = icmp eq ptr %34, null
  br i1 %tobool19.not.i97, label %if.end17.i.thread.if.then5_crit_edge, label %if.end17.i.thread.ipip6_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.thread.ipip6_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_netlink_encap_parms.exit.thread

if.end17.i.thread.if.then5_crit_edge:             ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then5

ipip6_netlink_encap_parms.exit.thread:            ; preds = %if.end17.i.thread.ipip6_netlink_encap_parms.exit.thread_crit_edge, %if.end17.i.ipip6_netlink_encap_parms.exit.thread_crit_edge
  %35 = phi ptr [ %34, %if.end17.i.thread.ipip6_netlink_encap_parms.exit.thread_crit_edge ], [ %29, %if.end17.i.ipip6_netlink_encap_parms.exit.thread_crit_edge ]
  %add.ptr.i.i45.i = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i45.i, align 2
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %3, align 2
  br label %if.then5

ipip6_netlink_encap_parms.exit:                   ; preds = %if.end17.i
  br i1 %ret.1.off0.i, label %ipip6_netlink_encap_parms.exit.if.then5_crit_edge, label %ipip6_netlink_encap_parms.exit.if.end.i59_crit_edge

ipip6_netlink_encap_parms.exit.if.end.i59_crit_edge: ; preds = %ipip6_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i59

ipip6_netlink_encap_parms.exit.if.then5_crit_edge: ; preds = %ipip6_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then5

if.then5:                                         ; preds = %ipip6_netlink_encap_parms.exit.if.then5_crit_edge, %ipip6_netlink_encap_parms.exit.thread, %if.end17.i.thread.if.then5_crit_edge
  %call6 = call i32 @ip_tunnel_encap_setup(ptr noundef %add.ptr.i, ptr noundef nonnull %ipencap) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.then5.if.end.i59_crit_edge

if.then5.if.end.i59_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i59

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %39 = call ptr @memset(ptr %p, i32 0, i32 52)
  %iph.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %protocol.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %40 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 41, ptr %protocol.i, align 1
  %41 = ptrtoint ptr %iph.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 69, ptr %iph.i, align 4
  %ttl.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 5
  %42 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 64, ptr %ttl.i, align 4
  br label %ipip6_netlink_parms.exit

if.end.i59:                                       ; preds = %if.then5.if.end.i59_crit_edge, %ipip6_netlink_encap_parms.exit.if.end.i59_crit_edge
  %43 = call ptr @memset(ptr %p, i32 0, i32 52)
  %iph.i87 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %protocol.i88 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %44 = ptrtoint ptr %protocol.i88 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 41, ptr %protocol.i88, align 1
  %45 = ptrtoint ptr %iph.i87 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 69, ptr %iph.i87, align 4
  %ttl.i89 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 5
  %46 = ptrtoint ptr %ttl.i89 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 64, ptr %ttl.i89, align 4
  %arrayidx.i57 = getelementptr ptr, ptr %data, i32 1
  %47 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i57, align 4
  %tobool7.not.i58 = icmp eq ptr %48, null
  br i1 %tobool7.not.i58, label %if.end.i59.if.end10.i_crit_edge, label %if.then8.i61

if.end.i59.if.end10.i_crit_edge:                  ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10.i

if.then8.i61:                                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i.i60 = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i.i60, align 4
  %link.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 1
  %51 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %link.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i61, %if.end.i59.if.end10.i_crit_edge
  %arrayidx11.i = getelementptr ptr, ptr %data, i32 2
  %52 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx11.i, align 4
  %tobool12.not.i = icmp eq ptr %53, null
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i64_crit_edge, label %if.then13.i

if.end10.i.if.end17.i64_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i64

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i115.i = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i115.i, align 4
  %saddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 8
  %56 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %saddr.i, align 4
  br label %if.end17.i64

if.end17.i64:                                     ; preds = %if.then13.i, %if.end10.i.if.end17.i64_crit_edge
  %arrayidx18.i62 = getelementptr ptr, ptr %data, i32 3
  %57 = ptrtoint ptr %arrayidx18.i62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx18.i62, align 4
  %tobool19.not.i63 = icmp eq ptr %58, null
  br i1 %tobool19.not.i63, label %if.end17.i64.if.end24.i_crit_edge, label %if.then20.i65

if.end17.i64.if.end24.i_crit_edge:                ; preds = %if.end17.i64
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24.i

if.then20.i65:                                    ; preds = %if.end17.i64
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i116.i = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i116.i, align 4
  %daddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 9
  %61 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %daddr.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i65, %if.end17.i64.if.end24.i_crit_edge
  %arrayidx25.i = getelementptr ptr, ptr %data, i32 4
  %62 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx25.i, align 4
  %tobool26.not.i = icmp eq ptr %63, null
  br i1 %tobool26.not.i, label %if.end24.i.if.end38.i_crit_edge, label %if.then27.i

if.end24.i.if.end38.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38.i

if.then27.i:                                      ; preds = %if.end24.i
  %add.ptr.i.i117.i = getelementptr i8, ptr %63, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i117.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr.i.i117.i, align 1
  %66 = ptrtoint ptr %ttl.i89 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %ttl.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool34.not.i = icmp eq i8 %65, 0
  br i1 %tobool34.not.i, label %if.then27.i.if.end38.i_crit_edge, label %if.then35.i

if.then27.i.if.end38.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #22
  %frag_off.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %67 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 16384, ptr %frag_off.i, align 2
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.then27.i.if.end38.i_crit_edge, %if.end24.i.if.end38.i_crit_edge
  %arrayidx39.i = getelementptr ptr, ptr %data, i32 5
  %68 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx39.i, align 4
  %tobool40.not.i = icmp eq ptr %69, null
  br i1 %tobool40.not.i, label %if.end38.i.if.end45.i_crit_edge, label %if.then41.i

if.end38.i.if.end45.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end45.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i118.i = getelementptr i8, ptr %69, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i118.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr.i.i118.i, align 1
  %tos.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 1
  %72 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %tos.i, align 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then41.i, %if.end38.i.if.end45.i_crit_edge
  %arrayidx46.i = getelementptr ptr, ptr %data, i32 10
  %73 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx46.i, align 4
  %tobool47.not.i = icmp eq ptr %74, null
  br i1 %tobool47.not.i, label %if.end45.i.if.then51.i_crit_edge, label %lor.lhs.false.i

if.end45.i.if.then51.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then51.i

lor.lhs.false.i:                                  ; preds = %if.end45.i
  %add.ptr.i.i119.i = getelementptr i8, ptr %74, i32 4
  %75 = ptrtoint ptr %add.ptr.i.i119.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr.i.i119.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool50.not.i = icmp eq i8 %76, 0
  br i1 %tobool50.not.i, label %lor.lhs.false.i.if.end54.i_crit_edge, label %lor.lhs.false.i.if.then51.i_crit_edge

lor.lhs.false.i.if.then51.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then51.i

lor.lhs.false.i.if.end54.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end54.i

if.then51.i:                                      ; preds = %lor.lhs.false.i.if.then51.i_crit_edge, %if.end45.i.if.then51.i_crit_edge
  %frag_off53.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %77 = ptrtoint ptr %frag_off53.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 16384, ptr %frag_off53.i, align 2
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then51.i, %lor.lhs.false.i.if.end54.i_crit_edge
  %arrayidx55.i = getelementptr ptr, ptr %data, i32 8
  %78 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx55.i, align 4
  %tobool56.not.i = icmp eq ptr %79, null
  br i1 %tobool56.not.i, label %if.end54.i.if.end60.i_crit_edge, label %if.then57.i

if.end54.i.if.end60.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i120.i = getelementptr i8, ptr %79, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i120.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i120.i, align 2
  %i_flags.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 2
  %82 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %i_flags.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then57.i, %if.end54.i.if.end60.i_crit_edge
  %arrayidx61.i = getelementptr ptr, ptr %data, i32 9
  %83 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx61.i, align 4
  %tobool62.not.i = icmp eq ptr %84, null
  br i1 %tobool62.not.i, label %if.end60.i.if.end68.i_crit_edge, label %if.then63.i

if.end60.i.if.end68.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68.i

if.then63.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i121.i = getelementptr i8, ptr %84, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i121.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %add.ptr.i.i121.i, align 1
  %87 = ptrtoint ptr %protocol.i88 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %protocol.i88, align 1
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then63.i, %if.end60.i.if.end68.i_crit_edge
  %arrayidx69.i = getelementptr ptr, ptr %data, i32 20
  %88 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx69.i, align 4
  %tobool70.not.i = icmp eq ptr %89, null
  br i1 %tobool70.not.i, label %if.end68.i.ipip6_netlink_parms.exit_crit_edge, label %if.then71.i

if.end68.i.ipip6_netlink_parms.exit_crit_edge:    ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_netlink_parms.exit

if.then71.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i122.i = getelementptr i8, ptr %89, i32 4
  %90 = ptrtoint ptr %add.ptr.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i122.i, align 4
  br label %ipip6_netlink_parms.exit

ipip6_netlink_parms.exit:                         ; preds = %if.then71.i, %if.end68.i.ipip6_netlink_parms.exit_crit_edge, %if.end10
  %fwmark.0 = phi i32 [ %11, %if.end10 ], [ %11, %if.end68.i.ipip6_netlink_parms.exit_crit_edge ], [ %91, %if.then71.i ]
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags, align 8
  %and = and i32 %93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %daddr17 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 9
  %94 = ptrtoint ptr %daddr17 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %daddr17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool18.not = icmp eq i32 %95, 0
  br i1 %tobool.not, label %land.lhs.true15, label %land.lhs.true

land.lhs.true:                                    ; preds = %ipip6_netlink_parms.exit
  br i1 %tobool18.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true15:                                  ; preds = %ipip6_netlink_parms.exit
  br i1 %tobool18.not, label %land.lhs.true15.if.end20_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true15.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge
  %call21 = call fastcc ptr @ipip6_tunnel_locate(ptr noundef %5, ptr noundef nonnull %p, i32 noundef 0)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.if.end29_crit_edge, label %if.then23

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.then23:                                        ; preds = %if.end20
  %dev24 = getelementptr inbounds %struct.ip_tunnel, ptr %call21, i32 0, i32 2
  %96 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev24, align 4
  %cmp25.not = icmp eq ptr %97, %dev
  br i1 %cmp25.not, label %if.then23.if.end29_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %t.0 = phi ptr [ %call21, %if.then23.if.end29_crit_edge ], [ %add.ptr.i, %if.end20.if.end29_crit_edge ]
  call fastcc void @ipip6_tunnel_update(ptr noundef %t.0, ptr noundef nonnull %p, i32 noundef %fwmark.0)
  %98 = call ptr @memset(ptr %ip6rd, i32 0, i32 24)
  br i1 %tobool.not.i, label %if.end29.cleanup_crit_edge, label %if.end.i70

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i70:                                       ; preds = %if.end29
  %arrayidx.i68 = getelementptr ptr, ptr %data, i32 11
  %99 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i68, align 4
  %tobool2.not.i69 = icmp eq ptr %100, null
  br i1 %tobool2.not.i69, label %if.end.i70.if.end5.i74_crit_edge, label %if.then3.i71

if.end.i70.if.end5.i74_crit_edge:                 ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i74

if.then3.i71:                                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #20
  %101 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %100, i32 noundef 16) #20
  %102 = call ptr @memcpy(ptr %ip6rd, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #20
  br label %if.end5.i74

if.end5.i74:                                      ; preds = %if.then3.i71, %if.end.i70.if.end5.i74_crit_edge
  %103 = xor i1 %tobool2.not.i69, true
  %arrayidx6.i72 = getelementptr ptr, ptr %data, i32 12
  %104 = ptrtoint ptr %arrayidx6.i72 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx6.i72, align 4
  %tobool7.not.i73 = icmp eq ptr %105, null
  br i1 %tobool7.not.i73, label %if.end5.i74.if.end10.i80_crit_edge, label %if.then8.i76

if.end5.i74.if.end10.i80_crit_edge:               ; preds = %if.end5.i74
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10.i80

if.then8.i76:                                     ; preds = %if.end5.i74
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i.i75 = getelementptr i8, ptr %105, i32 4
  %106 = ptrtoint ptr %add.ptr.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i.i.i75, align 4
  %108 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %7, align 4
  br label %if.end10.i80

if.end10.i80:                                     ; preds = %if.then8.i76, %if.end5.i74.if.end10.i80_crit_edge
  %ret.1.off0.i77 = phi i1 [ true, %if.then8.i76 ], [ %103, %if.end5.i74.if.end10.i80_crit_edge ]
  %arrayidx11.i78 = getelementptr ptr, ptr %data, i32 13
  %109 = ptrtoint ptr %arrayidx11.i78 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx11.i78, align 4
  %tobool12.not.i79 = icmp eq ptr %110, null
  br i1 %tobool12.not.i79, label %if.end16.i, label %if.end16.i.thread

if.end16.i:                                       ; preds = %if.end10.i80
  %arrayidx17.i = getelementptr ptr, ptr %data, i32 14
  %111 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %112, null
  br i1 %tobool18.not.i, label %ipip6_netlink_6rd_parms.exit, label %if.end16.i.ipip6_netlink_6rd_parms.exit.thread_crit_edge

if.end16.i.ipip6_netlink_6rd_parms.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_netlink_6rd_parms.exit.thread

if.end16.i.thread:                                ; preds = %if.end10.i80
  %add.ptr.i.i41.i = getelementptr i8, ptr %110, i32 4
  %113 = ptrtoint ptr %add.ptr.i.i41.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr.i.i41.i, align 2
  %115 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %8, align 4
  %arrayidx17.i102 = getelementptr ptr, ptr %data, i32 14
  %116 = ptrtoint ptr %arrayidx17.i102 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx17.i102, align 4
  %tobool18.not.i103 = icmp eq ptr %117, null
  br i1 %tobool18.not.i103, label %if.end16.i.thread.if.then31_crit_edge, label %if.end16.i.thread.ipip6_netlink_6rd_parms.exit.thread_crit_edge

if.end16.i.thread.ipip6_netlink_6rd_parms.exit.thread_crit_edge: ; preds = %if.end16.i.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_netlink_6rd_parms.exit.thread

if.end16.i.thread.if.then31_crit_edge:            ; preds = %if.end16.i.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then31

ipip6_netlink_6rd_parms.exit.thread:              ; preds = %if.end16.i.thread.ipip6_netlink_6rd_parms.exit.thread_crit_edge, %if.end16.i.ipip6_netlink_6rd_parms.exit.thread_crit_edge
  %118 = phi ptr [ %117, %if.end16.i.thread.ipip6_netlink_6rd_parms.exit.thread_crit_edge ], [ %112, %if.end16.i.ipip6_netlink_6rd_parms.exit.thread_crit_edge ]
  %add.ptr.i.i42.i = getelementptr i8, ptr %118, i32 4
  %119 = ptrtoint ptr %add.ptr.i.i42.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %add.ptr.i.i42.i, align 2
  %121 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %9, align 2
  br label %if.then31

ipip6_netlink_6rd_parms.exit:                     ; preds = %if.end16.i
  br i1 %ret.1.off0.i77, label %ipip6_netlink_6rd_parms.exit.if.then31_crit_edge, label %ipip6_netlink_6rd_parms.exit.cleanup_crit_edge

ipip6_netlink_6rd_parms.exit.cleanup_crit_edge:   ; preds = %ipip6_netlink_6rd_parms.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

ipip6_netlink_6rd_parms.exit.if.then31_crit_edge: ; preds = %ipip6_netlink_6rd_parms.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then31

if.then31:                                        ; preds = %ipip6_netlink_6rd_parms.exit.if.then31_crit_edge, %ipip6_netlink_6rd_parms.exit.thread, %if.end16.i.thread.if.then31_crit_edge
  %call32 = call fastcc i32 @ipip6_tunnel_update_6rd(ptr noundef %t.0, ptr noundef nonnull %ip6rd)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %ipip6_netlink_6rd_parms.exit.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.then31 ], [ -22, %entry.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ -22, %land.lhs.true15.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -17, %if.then23.cleanup_crit_edge ], [ 0, %ipip6_netlink_6rd_parms.exit.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ip6rd) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap) #20
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipip6_dellink(ptr noundef %dev, ptr noundef %head) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = load i32, ptr @sit_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %fb_tunnel_dev = getelementptr inbounds %struct.sit_net, ptr %call1, i32 0, i32 5
  %3 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fb_tunnel_dev, align 4
  %cmp.not = icmp eq ptr %4, %dev
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipip6_get_size(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 148
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip6_fill_info(ptr noundef %skb, ptr noundef %dev) #4 align 64 {
entry:
  %tmp.i125 = alloca i16, align 2
  %tmp.i123 = alloca i16, align 2
  %tmp.i121 = alloca i16, align 2
  %tmp.i119 = alloca i16, align 2
  %tmp.i117 = alloca i16, align 2
  %tmp.i115 = alloca i16, align 2
  %tmp.i.i113 = alloca i32, align 4
  %tmp.i110 = alloca i32, align 4
  %tmp.i108 = alloca i16, align 2
  %tmp.i106 = alloca i8, align 1
  %tmp.i104 = alloca i8, align 1
  %tmp.i102 = alloca i8, align 1
  %tmp.i100 = alloca i8, align 1
  %tmp.i.i98 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr i8, ptr %dev, i32 2380
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #20
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %saddr = getelementptr i8, ptr %dev, i32 2408
  %3 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %saddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #20
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i98) #20
  %8 = ptrtoint ptr %tmp.i.i98 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i.i98, align 4
  %call.i.i99 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i98) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i98) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99)
  %tobool7.not = icmp eq i32 %call.i.i99, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false4.nla_put_failure_crit_edge

lor.lhs.false4.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %ttl = getelementptr i8, ptr %dev, i32 2404
  %9 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ttl, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i100) #20
  %11 = ptrtoint ptr %tmp.i100 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tmp.i100, align 1
  %call.i101 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i100) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i100) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool11.not = icmp eq i32 %call.i101, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false8.nla_put_failure_crit_edge

lor.lhs.false8.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %tos = getelementptr i8, ptr %dev, i32 2397
  %12 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tos, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i102) #20
  %14 = ptrtoint ptr %tmp.i102 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp.i102, align 1
  %call.i103 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i102) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i102) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool15.not = icmp eq i32 %call.i103, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false12.nla_put_failure_crit_edge

lor.lhs.false12.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %frag_off = getelementptr i8, ptr %dev, i32 2402
  %15 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %frag_off, align 2
  %17 = lshr i16 %16, 14
  %18 = trunc i16 %17 to i8
  %19 = and i8 %18, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i104) #20
  %20 = ptrtoint ptr %tmp.i104 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tmp.i104, align 1
  %call.i105 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i104) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i104) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool22.not = icmp eq i32 %call.i105, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %lor.lhs.false16.nla_put_failure_crit_edge

lor.lhs.false16.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false23:                                  ; preds = %lor.lhs.false16
  %protocol = getelementptr i8, ptr %dev, i32 2405
  %21 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %protocol, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i106) #20
  %23 = ptrtoint ptr %tmp.i106 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tmp.i106, align 1
  %call.i107 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %tmp.i106) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i106) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool26.not = icmp eq i32 %call.i107, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %lor.lhs.false23.nla_put_failure_crit_edge

lor.lhs.false23.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %i_flags = getelementptr i8, ptr %dev, i32 2384
  %24 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %i_flags, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i108) #20
  %26 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %tmp.i108, align 2
  %call.i109 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %tmp.i108) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i108) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool29.not = icmp eq i32 %call.i109, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %lor.lhs.false27.nla_put_failure_crit_edge

lor.lhs.false27.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %fwmark = getelementptr i8, ptr %dev, i32 2476
  %27 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i110) #20
  %29 = ptrtoint ptr %tmp.i110 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.i110, align 4
  %call.i111 = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %tmp.i110) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i110) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool32.not = icmp eq i32 %call.i111, 0
  br i1 %tobool32.not, label %if.end, label %lor.lhs.false30.nla_put_failure_crit_edge

lor.lhs.false30.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

if.end:                                           ; preds = %lor.lhs.false30
  %ip6rd = getelementptr i8, ptr %dev, i32 2436
  %call.i112 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 16, ptr noundef %ip6rd) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool34.not = icmp eq i32 %call.i112, 0
  br i1 %tobool34.not, label %lor.lhs.false35, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false35:                                  ; preds = %if.end
  %relay_prefix = getelementptr i8, ptr %dev, i32 2452
  %30 = ptrtoint ptr %relay_prefix to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %relay_prefix, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i113) #20
  %32 = ptrtoint ptr %tmp.i.i113 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tmp.i.i113, align 4
  %call.i.i114 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i.i113) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i113) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114)
  %tobool38.not = icmp eq i32 %call.i.i114, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false35.nla_put_failure_crit_edge

lor.lhs.false35.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false39:                                  ; preds = %lor.lhs.false35
  %prefixlen = getelementptr i8, ptr %dev, i32 2456
  %33 = ptrtoint ptr %prefixlen to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %prefixlen, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i115) #20
  %35 = ptrtoint ptr %tmp.i115 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %tmp.i115, align 2
  %call.i116 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 2, ptr noundef nonnull %tmp.i115) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i115) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool42.not = icmp eq i32 %call.i116, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false39.nla_put_failure_crit_edge

lor.lhs.false39.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false43:                                  ; preds = %lor.lhs.false39
  %relay_prefixlen = getelementptr i8, ptr %dev, i32 2458
  %36 = ptrtoint ptr %relay_prefixlen to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %relay_prefixlen, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i117) #20
  %38 = ptrtoint ptr %tmp.i117 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %tmp.i117, align 2
  %call.i118 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i117) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i117) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool46.not = icmp eq i32 %call.i118, 0
  br i1 %tobool46.not, label %if.end48, label %lor.lhs.false43.nla_put_failure_crit_edge

lor.lhs.false43.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

if.end48:                                         ; preds = %lor.lhs.false43
  %encap = getelementptr i8, ptr %dev, i32 2428
  %39 = ptrtoint ptr %encap to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %encap, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i119) #20
  %41 = ptrtoint ptr %tmp.i119 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %tmp.i119, align 2
  %call.i120 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %tmp.i119) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i119) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool50.not = icmp eq i32 %call.i120, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %if.end48.nla_put_failure_crit_edge

if.end48.nla_put_failure_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false51:                                  ; preds = %if.end48
  %sport = getelementptr i8, ptr %dev, i32 2432
  %42 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sport, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i121) #20
  %44 = ptrtoint ptr %tmp.i121 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %tmp.i121, align 2
  %call.i122 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 2, ptr noundef nonnull %tmp.i121) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i121) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool54.not = icmp eq i32 %call.i122, 0
  br i1 %tobool54.not, label %lor.lhs.false55, label %lor.lhs.false51.nla_put_failure_crit_edge

lor.lhs.false51.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false55:                                  ; preds = %lor.lhs.false51
  %dport = getelementptr i8, ptr %dev, i32 2434
  %45 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dport, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i123) #20
  %47 = ptrtoint ptr %tmp.i123 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %tmp.i123, align 2
  %call.i124 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 2, ptr noundef nonnull %tmp.i123) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i123) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool58.not = icmp eq i32 %call.i124, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %lor.lhs.false55.nla_put_failure_crit_edge

lor.lhs.false55.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false59:                                  ; preds = %lor.lhs.false55
  %flags = getelementptr i8, ptr %dev, i32 2430
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i125) #20
  %50 = ptrtoint ptr %tmp.i125 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %tmp.i125, align 2
  %call.i126 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 2, ptr noundef nonnull %tmp.i125) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i125) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool62.not = icmp eq i32 %call.i126, 0
  br i1 %tobool62.not, label %lor.lhs.false59.cleanup_crit_edge, label %lor.lhs.false59.nla_put_failure_crit_edge

lor.lhs.false59.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #22
  br label %nla_put_failure

lor.lhs.false59.cleanup_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false59.nla_put_failure_crit_edge, %lor.lhs.false55.nla_put_failure_crit_edge, %lor.lhs.false51.nla_put_failure_crit_edge, %if.end48.nla_put_failure_crit_edge, %lor.lhs.false43.nla_put_failure_crit_edge, %lor.lhs.false39.nla_put_failure_crit_edge, %lor.lhs.false35.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %lor.lhs.false30.nla_put_failure_crit_edge, %lor.lhs.false27.nla_put_failure_crit_edge, %lor.lhs.false23.nla_put_failure_crit_edge, %lor.lhs.false16.nla_put_failure_crit_edge, %lor.lhs.false12.nla_put_failure_crit_edge, %lor.lhs.false8.nla_put_failure_crit_edge, %lor.lhs.false4.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false59.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %lor.lhs.false59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_tunnel_get_link_net(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipip6_dev_free(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_cache = getelementptr i8, ptr %dev, i32 2356
  tail call void @dst_cache_destroy(ptr noundef %dst_cache) #20
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @free_percpu(ptr noundef %2) #20
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip6_tunnel_init(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %1 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i, align 4
  %net = getelementptr i8, ptr %dev, i32 2324
  %3 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %net, align 4
  %parms = getelementptr i8, ptr %dev, i32 2364
  %call5 = tail call ptr @strcpy(ptr noundef %parms, ptr noundef %dev) #24
  tail call fastcc void @ipip6_tunnel_bind_dev(ptr noundef %dev)
  %call6 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #25
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call739 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call739, i32 %4)
  %cmp40 = icmp ult i32 %call739, %4
  br i1 %cmp40, label %for.body.lr.ph, label %for.cond.preheader.if.end15_crit_edge

for.cond.preheader.if.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %call6 to i32
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 64
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call741 = phi i32 [ %call739, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call741
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %5
  %10 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %10, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %10, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @ipip6_tunnel_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %11 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %syncp, align 4
  %call7 = tail call i32 @cpumask_next(i32 noundef %call741, ptr noundef nonnull @__cpu_possible_mask) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.end15:                                         ; preds = %for.body.if.end15_crit_edge, %for.cond.preheader.if.end15_crit_edge
  %13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call6, ptr %13, align 64
  %dst_cache = getelementptr i8, ptr %dev, i32 2356
  %call16 = tail call i32 @dst_cache_init(ptr noundef %dst_cache, i32 noundef 3264) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %13, align 64
  tail call void @free_percpu(ptr noundef %16) #20
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %13, align 64
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %dev_tracker = getelementptr i8, ptr %dev, i32 2320
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end19.cleanup_crit_edge, label %do.body1.i.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end19
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !171
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %19 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add13.i.i = add i32 %30, 1
  store i32 %add13.i.i, ptr %28, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #20, !srcloc !172
  %and.i.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !173

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @warn_bogus_irq_restore() #20
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #20, !srcloc !174
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 3264) #20
  br label %cleanup

cleanup:                                          ; preds = %dev_hold.exit.i, %if.end19.cleanup_crit_edge, %if.then18, %if.end.thread
  %retval.0 = phi i32 [ %call16, %if.then18 ], [ -12, %if.end.thread ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %dev_hold.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipip6_tunnel_uninit(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %2 = load i32, ptr @sit_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %fb_tunnel_dev = getelementptr inbounds %struct.sit_net, ptr %call1, i32 0, i32 5
  %3 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fb_tunnel_dev, align 4
  %cmp = icmp eq ptr %4, %dev
  br i1 %cmp, label %do.body4, label %if.else

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %tunnels_wc = getelementptr inbounds %struct.sit_net, ptr %call1, i32 0, i32 3
  %5 = ptrtoint ptr %tunnels_wc to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %tunnels_wc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @ipip6_tunnel_unlink(ptr noundef %call1, ptr noundef %add.ptr.i)
  %call11 = tail call fastcc i32 @ipip6_tunnel_del_prl(ptr noundef %add.ptr.i, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i = getelementptr i8, ptr %dev, i32 2360
  %7 = ptrtoint ptr %reset_ts.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reset_ts.i, align 4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.dev_put_track.exit_crit_edge, label %do.body1.i.i

if.end.dev_put_track.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %if.end
  %dev_tracker = getelementptr i8, ptr %dev, i32 2320
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #20
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !171
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add13.i.i = add i32 %20, -1
  store i32 %add13.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #20, !srcloc !172
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !173

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @warn_bogus_irq_restore() #20
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #20, !srcloc !174
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %if.end.dev_put_track.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sit_tunnel_xmit(ptr noundef %skb, ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %switch.selectcmp.i = icmp eq i16 %1, 2048
  %switch.select.i = select i1 %switch.selectcmp.i, i32 20, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %1)
  %switch.selectcmp3.i = icmp eq i16 %1, -31011
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 40, i32 %switch.select.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %switch.select4.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %entry.if.end_crit_edge, !prof !173

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %9, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.tx_err_crit_edge, label %pskb_inet_may_pull.exit, !prof !173

if.end.i.i.i.tx_err_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_err

pskb_inet_may_pull.exit:                          ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #20
  %cmp14.i.i.i.not = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.i.not, label %pskb_inet_may_pull.exit.tx_err_crit_edge, label %pskb_inet_may_pull.exit.if.end_crit_edge

pskb_inet_may_pull.exit.if.end_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

pskb_inet_may_pull.exit.tx_err_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_err

if.end:                                           ; preds = %pskb_inet_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol.i, align 8
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %13, label %if.end.tx_err_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb2
    i16 -30649, label %sw.bb4
  ]

if.end.tx_err_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_err

sw.bb:                                            ; preds = %if.end
  %call1.i = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef 256) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %tx_error.i

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %iph.i = getelementptr i8, ptr %dev, i32 2396
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %15, align 8
  %inner_protocol_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %17 = ptrtoint ptr %inner_protocol_type.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %bf.load.i.i = load i32, ptr %inner_protocol_type.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4194304
  store i32 %bf.set.i.i, ptr %inner_protocol_type.i.i, align 2
  tail call void @ip_tunnel_xmit(ptr noundef %skb, ptr noundef %dev, ptr noundef %iph.i, i8 noundef zeroext 4) #20
  br label %return

tx_error.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #20
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %18 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @ipip6_tunnel_xmit(ptr noundef %skb, ptr noundef %dev)
  br label %return

sw.bb4:                                           ; preds = %if.end
  %call1.i14 = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef 256) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %if.end.i20, label %tx_error.i23

if.end.i20:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #22
  %iph.i16 = getelementptr i8, ptr %dev, i32 2396
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -119, ptr %20, align 8
  %inner_protocol_type.i.i17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %22 = ptrtoint ptr %inner_protocol_type.i.i17 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %bf.load.i.i18 = load i32, ptr %inner_protocol_type.i.i17, align 2
  %bf.set.i.i19 = or i32 %bf.load.i.i18, 4194304
  store i32 %bf.set.i.i19, ptr %inner_protocol_type.i.i17, align 2
  tail call void @ip_tunnel_xmit(ptr noundef %skb, ptr noundef %dev, ptr noundef %iph.i16, i8 noundef zeroext -119) #20
  br label %return

tx_error.i23:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #20
  %tx_errors.i21 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %23 = ptrtoint ptr %tx_errors.i21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_errors.i21, align 4
  %inc.i22 = add i32 %24, 1
  store i32 %inc.i22, ptr %tx_errors.i21, align 4
  br label %return

tx_err:                                           ; preds = %if.end.tx_err_crit_edge, %pskb_inet_may_pull.exit.tx_err_crit_edge, %if.end.i.i.i.tx_err_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %25 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #20
  br label %return

return:                                           ; preds = %tx_err, %tx_error.i23, %if.end.i20, %sw.bb2, %tx_error.i, %if.end.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip6_tunnel_siocdevprivate(ptr noundef %dev, ptr noundef %ifr, ptr noundef %data, i32 noundef %cmd) #4 align 64 {
entry:
  %ip6rd.i69 = alloca %struct.ip_tunnel_6rd, align 4
  %ip6rd.i = alloca %struct.ip_tunnel_6rd, align 4
  %p.i = alloca %struct.ip_tunnel_parm, align 4
  %prl.i = alloca %struct.ip_tunnel_prl, align 4
  %kprl.i = alloca %struct.ip_tunnel_prl, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 35312, label %entry.sw.bb_crit_edge
    i32 35313, label %entry.sw.bb_crit_edge102
    i32 35315, label %entry.sw.bb_crit_edge103
    i32 35314, label %entry.sw.bb_crit_edge104
    i32 35316, label %sw.bb1
    i32 35317, label %entry.sw.bb3_crit_edge
    i32 35318, label %entry.sw.bb3_crit_edge105
    i32 35319, label %entry.sw.bb3_crit_edge106
    i32 35320, label %sw.bb5
    i32 35321, label %entry.sw.bb7_crit_edge
    i32 35323, label %entry.sw.bb7_crit_edge107
    i32 35322, label %entry.sw.bb7_crit_edge108
  ]

entry.sw.bb7_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb7

entry.sw.bb7_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb7

entry.sw.bb3_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb3

entry.sw.bb3_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb3

entry.sw.bb_crit_edge104:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.bb_crit_edge103:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.bb_crit_edge102:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge102, %entry.sw.bb_crit_edge103, %entry.sw.bb_crit_edge104
  %call = tail call i32 @ip_tunnel_siocdevprivate(ptr noundef %dev, ptr noundef %ifr, ptr noundef %data, i32 noundef %cmd) #20
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kprl.i) #20
  %1 = getelementptr inbounds %struct.ip_tunnel_prl, ptr %kprl.i, i32 0, i32 3
  %net.i.i = getelementptr i8, ptr %dev, i32 2324
  %2 = call ptr @memset(ptr %kprl.i, i32 255, i32 16)
  %3 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i, align 4
  %5 = load i32, ptr @sit_net_id, align 4
  %call1.i141.i = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5) #20
  %fb_tunnel_dev.i = getelementptr inbounds %struct.sit_net, ptr %call1.i141.i, i32 0, i32 5
  %6 = ptrtoint ptr %fb_tunnel_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_tunnel_dev.i, align 4
  %cmp.i = icmp eq ptr %7, %dev
  br i1 %cmp.i, label %sw.bb1.ipip6_tunnel_get_prl.exit_crit_edge, label %if.end8.i.i.i

sw.bb1.ipip6_tunnel_get_prl.exit_crit_edge:       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_tunnel_get_prl.exit

if.end8.i.i.i:                                    ; preds = %sw.bb1
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #20
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #20
  br i1 %call.i.i.i, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 16, i32 -1226833920) #27, !srcloc !175
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !176

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kprl.i, i32 noundef 16) #20
  %9 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !177
  %and.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #20, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kprl.i, ptr noundef %data, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #20, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end4.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !176

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i188.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i188.i
  %add.ptr.i.i.i = getelementptr i8, ptr %kprl.i, i32 %sub.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i188.i)
  br label %ipip6_tunnel_get_prl.exit

if.end4.i:                                        ; preds = %if.end.i.i.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %div127.i = lshr i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cmp5.i = icmp ugt i32 %14, 31
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end4.i.if.end7.i.i.i_crit_edge

if.end4.i.if.end7.i.i.i_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i.i.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %15 = ptrtoint ptr %kprl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %kprl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6.not.i = icmp eq i32 %16, 0
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.end7.i.i.i_crit_edge

land.lhs.true.i.if.end7.i.i.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i.i.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %call10.i = call zeroext i1 @capable(i32 noundef 12) #20
  br i1 %call10.i, label %lor.lhs.false.i.if.end7.i.i.i_crit_edge, label %lor.lhs.false.i.cond.end.i_crit_edge

lor.lhs.false.i.cond.end.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end.i

lor.lhs.false.i.if.end7.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %lor.lhs.false.i.if.end7.i.i.i_crit_edge, %land.lhs.true.i.if.end7.i.i.i_crit_edge, %if.end4.i.if.end7.i.i.i_crit_edge
  %cmax.0194.i = phi i32 [ %div127.i, %lor.lhs.false.i.if.end7.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.if.end7.i.i.i_crit_edge ], [ %div127.i, %if.end4.i.if.end7.i.i.i_crit_edge ]
  %17 = shl nuw i32 %cmax.0194.i, 4
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 4206016) #25
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end7.i.i.i, %lor.lhs.false.i.cond.end.i_crit_edge
  %cmax.0193.i = phi i32 [ %div127.i, %lor.lhs.false.i.cond.end.i_crit_edge ], [ %cmax.0194.i, %if.end7.i.i.i ]
  %cond.i = phi ptr [ null, %lor.lhs.false.i.cond.end.i_crit_edge ], [ %call8.i.i.i, %if.end7.i.i.i ]
  %18 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !180
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i.i = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i.i, label %cond.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

cond.end.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %cond.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #20
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %cond.end.i.rcu_read_lock.exit.i_crit_edge
  %tobool17.not.i = icmp eq ptr %cond.i, null
  br i1 %tobool17.not.i, label %if.end7.i.i174.i, label %rcu_read_lock.exit.i.if.end23.i_crit_edge

rcu_read_lock.exit.i.if.end23.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end23.i

if.end7.i.i174.i:                                 ; preds = %rcu_read_lock.exit.i
  %prl_count.i = getelementptr i8, ptr %dev, i32 2464
  %22 = ptrtoint ptr %prl_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prl_count.i, align 4
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 %cmax.0193.i) #20
  %25 = shl nuw i32 %24, 4
  %call8.i.i173.i = call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 4205344) #25
  %tobool20.not.i = icmp eq ptr %call8.i.i173.i, null
  br i1 %tobool20.not.i, label %if.end7.i.i174.i.out.i_crit_edge, label %if.end7.i.i174.i.if.end23.i_crit_edge

if.end7.i.i174.i.if.end23.i_crit_edge:            ; preds = %if.end7.i.i174.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end23.i

if.end7.i.i174.i.out.i_crit_edge:                 ; preds = %if.end7.i.i174.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i

if.end23.i:                                       ; preds = %if.end7.i.i174.i.if.end23.i_crit_edge, %rcu_read_lock.exit.i.if.end23.i_crit_edge
  %kp.0.i = phi ptr [ %cond.i, %rcu_read_lock.exit.i.if.end23.i_crit_edge ], [ %call8.i.i173.i, %if.end7.i.i174.i.if.end23.i_crit_edge ]
  %prl25.i = getelementptr i8, ptr %dev, i32 2460
  %26 = ptrtoint ptr %prl25.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %prl25.i, align 4
  %call27.i = call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true29.i, label %if.end23.i.do.end37.i_crit_edge

if.end23.i.do.end37.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end37.i

land.lhs.true29.i:                                ; preds = %if.end23.i
  %call30.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true29.i.do.end37.i_crit_edge, label %land.lhs.true32.i

land.lhs.true29.i.do.end37.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end37.i

land.lhs.true32.i:                                ; preds = %land.lhs.true29.i
  %.b129.i = load i1, ptr @ipip6_tunnel_get_prl.__warned, align 1
  br i1 %.b129.i, label %land.lhs.true32.i.do.end37.i_crit_edge, label %if.then34.i

land.lhs.true32.i.do.end37.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end37.i

if.then34.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_get_prl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 345, ptr noundef nonnull @.str.3) #20
  br label %do.end37.i

do.end37.i:                                       ; preds = %if.then34.i, %land.lhs.true32.i.do.end37.i_crit_edge, %land.lhs.true29.i.do.end37.i_crit_edge, %if.end23.i.do.end37.i_crit_edge
  %tobool39.not202.i = icmp ne ptr %27, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmax.0193.i)
  %cmp40.not203.i = icmp ne i32 %cmax.0193.i, 0
  %or.cond204.i = select i1 %tobool39.not202.i, i1 %cmp40.not203.i, i1 false
  br i1 %or.cond204.i, label %do.end37.i.if.end42.i_crit_edge, label %do.end37.i.out.i_crit_edge

do.end37.i.out.i_crit_edge:                       ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i

do.end37.i.if.end42.i_crit_edge:                  ; preds = %do.end37.i
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end74.i.if.end42.i_crit_edge, %do.end37.i.if.end42.i_crit_edge
  %prl.0206.i = phi ptr [ %41, %do.end74.i.if.end42.i_crit_edge ], [ %27, %do.end37.i.if.end42.i_crit_edge ]
  %c.0205.i = phi i32 [ %c.1.i, %do.end74.i.if.end42.i_crit_edge ], [ 0, %do.end37.i.if.end42.i_crit_edge ]
  %28 = ptrtoint ptr %kprl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %kprl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp44.not.i = icmp eq i32 %29, 0
  br i1 %cmp44.not.i, label %if.end42.i.if.end50.i_crit_edge, label %land.lhs.true45.i

if.end42.i.if.end50.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50.i

land.lhs.true45.i:                                ; preds = %if.end42.i
  %addr46.i = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %prl.0206.i, i32 0, i32 1
  %30 = ptrtoint ptr %addr46.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr46.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp48.not.i = icmp eq i32 %31, %29
  br i1 %cmp48.not.i, label %land.lhs.true45.i.if.end50.i_crit_edge, label %land.lhs.true45.i.for.inc.i_crit_edge

land.lhs.true45.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

land.lhs.true45.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50.i

if.end50.i:                                       ; preds = %land.lhs.true45.i.if.end50.i_crit_edge, %if.end42.i.if.end50.i_crit_edge
  %addr51.i = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %prl.0206.i, i32 0, i32 1
  %32 = ptrtoint ptr %addr51.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr51.i, align 4
  %arrayidx.i = getelementptr %struct.ip_tunnel_prl, ptr %kp.0.i, i32 %c.0205.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.i, align 4
  %flags.i = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %prl.0206.i, i32 0, i32 2
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags.i, align 4
  %flags54.i = getelementptr %struct.ip_tunnel_prl, ptr %kp.0.i, i32 %c.0205.i, i32 1
  %37 = ptrtoint ptr %flags54.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %flags54.i, align 4
  %inc.i = add nuw i32 %c.0205.i, 1
  %38 = ptrtoint ptr %kprl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %kprl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp56.not.i = icmp eq i32 %39, 0
  br i1 %cmp56.not.i, label %if.end50.i.for.inc.i_crit_edge, label %if.end50.i.out.i_crit_edge

if.end50.i.out.i_crit_edge:                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i

if.end50.i.for.inc.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end50.i.for.inc.i_crit_edge, %land.lhs.true45.i.for.inc.i_crit_edge
  %c.1.i = phi i32 [ %c.0205.i, %land.lhs.true45.i.for.inc.i_crit_edge ], [ %inc.i, %if.end50.i.for.inc.i_crit_edge ]
  %40 = ptrtoint ptr %prl.0206.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %prl.0206.i, align 4
  %call64.i = call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %land.lhs.true66.i, label %for.inc.i.do.end74.i_crit_edge

for.inc.i.do.end74.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end74.i

land.lhs.true66.i:                                ; preds = %for.inc.i
  %call67.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %land.lhs.true66.i.do.end74.i_crit_edge, label %land.lhs.true69.i

land.lhs.true66.i.do.end74.i_crit_edge:           ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end74.i

land.lhs.true69.i:                                ; preds = %land.lhs.true66.i
  %.b126128.i = load i1, ptr @ipip6_tunnel_get_prl.__warned.17, align 1
  br i1 %.b126128.i, label %land.lhs.true69.i.do.end74.i_crit_edge, label %if.then71.i

land.lhs.true69.i.do.end74.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end74.i

if.then71.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_get_prl.__warned.17, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 345, ptr noundef nonnull @.str.3) #20
  br label %do.end74.i

do.end74.i:                                       ; preds = %if.then71.i, %land.lhs.true69.i.do.end74.i_crit_edge, %land.lhs.true66.i.do.end74.i_crit_edge, %for.inc.i.do.end74.i_crit_edge
  %tobool39.not.i = icmp ne ptr %41, null
  call void @__sanitizer_cov_trace_cmp4(i32 %c.1.i, i32 %cmax.0193.i)
  %cmp40.not.i = icmp ult i32 %c.1.i, %cmax.0193.i
  %or.cond.i = select i1 %tobool39.not.i, i1 %cmp40.not.i, i1 false
  br i1 %or.cond.i, label %do.end74.i.if.end42.i_crit_edge, label %do.end74.i.out.i_crit_edge

do.end74.i.out.i_crit_edge:                       ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.i

do.end74.i.if.end42.i_crit_edge:                  ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42.i

out.i:                                            ; preds = %do.end74.i.out.i_crit_edge, %if.end50.i.out.i_crit_edge, %do.end37.i.out.i_crit_edge, %if.end7.i.i174.i.out.i_crit_edge
  %c.2.i = phi i32 [ 0, %if.end7.i.i174.i.out.i_crit_edge ], [ 0, %do.end37.i.out.i_crit_edge ], [ %c.1.i, %do.end74.i.out.i_crit_edge ], [ %inc.i, %if.end50.i.out.i_crit_edge ]
  %kp.1.i = phi ptr [ null, %if.end7.i.i174.i.out.i_crit_edge ], [ %kp.0.i, %do.end37.i.out.i_crit_edge ], [ %kp.0.i, %if.end50.i.out.i_crit_edge ], [ %kp.0.i, %do.end74.i.out.i_crit_edge ]
  %call.i177.i = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i177.i, label %out.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i180.i

out.i.rcu_read_unlock.exit.i_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit.i

land.lhs.true.i180.i:                             ; preds = %out.i
  %call1.i178.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i178.i)
  %tobool.not.i179.i = icmp eq i32 %call1.i178.i, 0
  br i1 %tobool.not.i179.i, label %land.lhs.true.i180.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i182.i

land.lhs.true.i180.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i180.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i182.i:                            ; preds = %land.lhs.true.i180.i
  %.b4.i181.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i181.i, label %land.lhs.true2.i182.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i183.i

land.lhs.true2.i182.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i182.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit.i

if.then.i183.i:                                   ; preds = %land.lhs.true2.i182.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #20
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i183.i, %land.lhs.true2.i182.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i180.i.rcu_read_unlock.exit.i_crit_edge, %out.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !181
  %42 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i184.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i184.i to ptr
  %preempt_count.i.i.i.i185.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i185.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i185.i, align 4
  %sub.i.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i185.i, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  %mul.i = shl i32 %c.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool76.not.i = icmp eq i32 %mul.i, 0
  br i1 %tobool76.not.i, label %rcu_read_unlock.exit.i.lor.lhs.false80.i_crit_edge, label %land.lhs.true77.i

rcu_read_unlock.exit.i.lor.lhs.false80.i_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false80.i

land.lhs.true77.i:                                ; preds = %rcu_read_unlock.exit.i
  %add.ptr.i = getelementptr %struct.ip_tunnel_prl, ptr %data, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %land.lhs.true77.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.if.then89.i_crit_edge, label %if.then27.i.i.i, !prof !176

land.rhs16.i.i.i.if.then89.i_crit_edge:           ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then89.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %if.then89.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true77.i
  call void @__check_object_size(ptr noundef %kp.1.i, i32 noundef %mul.i, i1 noundef zeroext true) #20
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #20
  %call.i.i134.i = call zeroext i1 @should_fail_usercopy() #20
  br i1 %call.i.i134.i, label %if.then.i.i.i.i.if.then89.i_crit_edge, label %if.end.i.i138.i

if.then.i.i.i.i.if.then89.i_crit_edge:            ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then89.i

if.end.i.i138.i:                                  ; preds = %if.then.i.i.i.i
  %46 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i, i32 %mul.i, i32 -1226833920) #27, !srcloc !182
  %asmresult.i.i136.i = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i136.i)
  %cmp.i6.i137.i = icmp eq i32 %asmresult.i.i136.i, 0
  br i1 %cmp.i6.i137.i, label %copy_to_user.exit.i, label %if.end.i.i138.i.if.then89.i_crit_edge

if.end.i.i138.i.if.then89.i_crit_edge:            ; preds = %if.end.i.i138.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then89.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i138.i
  %call.i.i.i139.i = call zeroext i1 @__kasan_check_read(ptr noundef %kp.1.i, i32 noundef %mul.i) #20
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr.i, ptr noundef %kp.1.i, i32 noundef %mul.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool79.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool79.not.i, label %copy_to_user.exit.i.lor.lhs.false80.i_crit_edge, label %copy_to_user.exit.i.if.then89.i_crit_edge

copy_to_user.exit.i.if.then89.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then89.i

copy_to_user.exit.i.lor.lhs.false80.i_crit_edge:  ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false80.i

lor.lhs.false80.i:                                ; preds = %copy_to_user.exit.i.lor.lhs.false80.i_crit_edge, %rcu_read_unlock.exit.i.lor.lhs.false80.i_crit_edge
  %datalen82.i = getelementptr inbounds %struct.ip_tunnel_prl, ptr %data, i32 0, i32 3
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 361) #20
  %47 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #10, !srcloc !177
  %and.i.i = and i32 %49, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #20, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  %50 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %datalen82.i, i32 %mul.i, i32 -1226833921) #20, !srcloc !183
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #20, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool88.not.i = icmp eq i32 %50, 0
  br i1 %tobool88.not.i, label %lor.lhs.false80.i.if.end90.i_crit_edge, label %lor.lhs.false80.i.if.then89.i_crit_edge

lor.lhs.false80.i.if.then89.i_crit_edge:          ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then89.i

lor.lhs.false80.i.if.end90.i_crit_edge:           ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end90.i

if.then89.i:                                      ; preds = %lor.lhs.false80.i.if.then89.i_crit_edge, %copy_to_user.exit.i.if.then89.i_crit_edge, %if.end.i.i138.i.if.then89.i_crit_edge, %if.then.i.i.i.i.if.then89.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.if.then89.i_crit_edge
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then89.i, %lor.lhs.false80.i.if.end90.i_crit_edge
  %ret.0.i = phi i32 [ -14, %if.then89.i ], [ 0, %lor.lhs.false80.i.if.end90.i_crit_edge ]
  call void @kfree(ptr noundef %kp.1.i) #20
  br label %ipip6_tunnel_get_prl.exit

ipip6_tunnel_get_prl.exit:                        ; preds = %if.end90.i, %if.then11.i.i.i, %sw.bb1.ipip6_tunnel_get_prl.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end90.i ], [ -22, %sw.bb1.ipip6_tunnel_get_prl.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kprl.i) #20
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge105, %entry.sw.bb3_crit_edge106
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prl.i) #20
  %51 = getelementptr inbounds %struct.ip_tunnel_prl, ptr %prl.i, i32 0, i32 1
  %net.i = getelementptr i8, ptr %dev, i32 2324
  %52 = call ptr @memset(ptr %prl.i, i32 255, i32 16)
  %53 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %56, i32 noundef 12) #20
  br i1 %call1.i, label %if.end.i, label %sw.bb3.ipip6_tunnel_prl_ctl.exit_crit_edge

sw.bb3.ipip6_tunnel_prl_ctl.exit_crit_edge:       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_tunnel_prl_ctl.exit

if.end.i:                                         ; preds = %sw.bb3
  %57 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net.i, align 4
  %59 = load i32, ptr @sit_net_id, align 4
  %call1.i.i20 = tail call fastcc ptr @net_generic(ptr noundef %58, i32 noundef %59) #20
  %fb_tunnel_dev.i21 = getelementptr inbounds %struct.sit_net, ptr %call1.i.i20, i32 0, i32 5
  %60 = ptrtoint ptr %fb_tunnel_dev.i21 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fb_tunnel_dev.i21, align 4
  %cmp.i22 = icmp eq ptr %61, %dev
  br i1 %cmp.i22, label %if.end.i.ipip6_tunnel_prl_ctl.exit_crit_edge, label %if.end8.i.i.i24

if.end.i.ipip6_tunnel_prl_ctl.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_tunnel_prl_ctl.exit

if.end8.i.i.i24:                                  ; preds = %if.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #20
  %call.i.i.i23 = tail call zeroext i1 @should_fail_usercopy() #20
  br i1 %call.i.i.i23, label %if.end8.i.i.i24.if.then11.i.i.i38_crit_edge, label %land.lhs.true.i.i.i27

if.end8.i.i.i24.if.then11.i.i.i38_crit_edge:      ; preds = %if.end8.i.i.i24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i38

land.lhs.true.i.i.i27:                            ; preds = %if.end8.i.i.i24
  %62 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 16, i32 -1226833920) #27, !srcloc !175
  %asmresult.i.i.i25 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i25)
  %cmp.i6.i.i26 = icmp eq i32 %asmresult.i.i.i25, 0
  br i1 %cmp.i6.i.i26, label %if.end.i.i.i35, label %land.lhs.true.i.i.i27.if.then11.i.i.i38_crit_edge, !prof !176

land.lhs.true.i.i.i27.if.then11.i.i.i38_crit_edge: ; preds = %land.lhs.true.i.i.i27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i38

if.end.i.i.i35:                                   ; preds = %land.lhs.true.i.i.i27
  %call.i.i.i.i28 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prl.i, i32 noundef 16) #20
  %63 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i.i.i29 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i.i29 to ptr
  %cpu_domain.i.i.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i30) #10, !srcloc !177
  %and.i.i.i.i.i31 = and i32 %65, -13
  %or.i.i.i.i.i32 = or i32 %and.i.i.i.i.i31, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i32) #20, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  %call1.i.i.i.i33 = call i32 @arm_copy_from_user(ptr noundef nonnull %prl.i, ptr noundef %data, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #20, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i33)
  %tobool4.not.i.i.i34 = icmp eq i32 %call1.i.i.i.i33, 0
  br i1 %tobool4.not.i.i.i34, label %if.end7.i, label %if.end.i.i.i35.if.then11.i.i.i38_crit_edge, !prof !176

if.end.i.i.i35.if.then11.i.i.i38_crit_edge:       ; preds = %if.end.i.i.i35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i38

if.then11.i.i.i38:                                ; preds = %if.end.i.i.i35.if.then11.i.i.i38_crit_edge, %land.lhs.true.i.i.i27.if.then11.i.i.i38_crit_edge, %if.end8.i.i.i24.if.then11.i.i.i38_crit_edge
  %res.0.i.i23.i = phi i32 [ %call1.i.i.i.i33, %if.end.i.i.i35.if.then11.i.i.i38_crit_edge ], [ 16, %if.end8.i.i.i24.if.then11.i.i.i38_crit_edge ], [ 16, %land.lhs.true.i.i.i27.if.then11.i.i.i38_crit_edge ]
  %sub.i.i.i36 = sub i32 16, %res.0.i.i23.i
  %add.ptr.i.i.i37 = getelementptr i8, ptr %prl.i, i32 %sub.i.i.i36
  %66 = call ptr @memset(ptr %add.ptr.i.i.i37, i32 0, i32 %res.0.i.i23.i)
  br label %ipip6_tunnel_prl_ctl.exit

if.end7.i:                                        ; preds = %if.end.i.i.i35
  %67 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %cmd, label %if.end7.i.sw.epilog.i_crit_edge [
    i32 35318, label %sw.bb.i
    i32 35317, label %if.end7.i.sw.bb9.i_crit_edge
    i32 35319, label %if.end7.i.sw.bb9.i_crit_edge109
  ]

if.end7.i.sw.bb9.i_crit_edge109:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb9.i

if.end7.i.sw.bb9.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb9.i

if.end7.i.sw.epilog.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  %call8.i = call fastcc i32 @ipip6_tunnel_del_prl(ptr noundef %add.ptr.i.i, ptr noundef nonnull %prl.i) #20
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end7.i.sw.bb9.i_crit_edge, %if.end7.i.sw.bb9.i_crit_edge109
  call void @__sanitizer_cov_trace_const_cmp4(i32 35319, i32 %cmd)
  %cmp10.i = icmp eq i32 %cmd, 35319
  %68 = ptrtoint ptr %prl.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %prl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.i = icmp eq i32 %69, 0
  br i1 %cmp.i.i, label %sw.bb9.i.sw.epilog.i_crit_edge, label %if.end.i.i

sw.bb9.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

if.end.i.i:                                       ; preds = %sw.bb9.i
  %call.i.i39 = call i32 @rtnl_is_locked() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool.not.i.i40 = icmp eq i32 %call.i.i39, 0
  br i1 %tobool.not.i.i40, label %land.rhs.i.i, label %if.end.i.i.if.end31.i.i_crit_edge

if.end.i.i.if.end31.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.i
  %.b147.i.i = load i1, ptr @ipip6_tunnel_add_prl.__already_done, align 1
  br i1 %.b147.i.i, label %land.rhs.i.i.if.end31.i.i_crit_edge, label %if.then9.i.i, !prof !176

land.rhs.i.i.if.end31.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.i.i

if.then9.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_add_prl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 378, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 378) #20
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then9.i.i, %land.rhs.i.i.if.end31.i.i_crit_edge, %if.end.i.i.if.end31.i.i_crit_edge
  %call40.i.i = call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call40.i.i, label %if.end31.i.i.do.end48.i.i_crit_edge, label %land.lhs.true.i.i41

if.end31.i.i.do.end48.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end48.i.i

land.lhs.true.i.i41:                              ; preds = %if.end31.i.i
  %call41.i.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool42.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool42.not.i.i, label %land.lhs.true.i.i41.do.end48.i.i_crit_edge, label %land.lhs.true43.i.i

land.lhs.true.i.i41.do.end48.i.i_crit_edge:       ; preds = %land.lhs.true.i.i41
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end48.i.i

land.lhs.true43.i.i:                              ; preds = %land.lhs.true.i.i41
  %.b143146.i.i = load i1, ptr @ipip6_tunnel_add_prl.__warned, align 1
  br i1 %.b143146.i.i, label %land.lhs.true43.i.i.do.end48.i.i_crit_edge, label %if.then45.i.i

land.lhs.true43.i.i.do.end48.i.i_crit_edge:       ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end48.i.i

if.then45.i.i:                                    ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_add_prl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 380, ptr noundef nonnull @.str.8) #20
  br label %do.end48.i.i

do.end48.i.i:                                     ; preds = %if.then45.i.i, %land.lhs.true43.i.i.do.end48.i.i_crit_edge, %land.lhs.true.i.i41.do.end48.i.i_crit_edge, %if.end31.i.i.do.end48.i.i_crit_edge
  %prl.i.i = getelementptr i8, ptr %dev, i32 2460
  %70 = ptrtoint ptr %prl.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %p.0149.i.i = load ptr, ptr %prl.i.i, align 4
  %tobool50.not150.i.i = icmp eq ptr %p.0149.i.i, null
  br i1 %tobool50.not150.i.i, label %do.end48.i.i.for.end.i.i_crit_edge, label %do.end48.i.i.for.body.i.i_crit_edge

do.end48.i.i.for.body.i.i_crit_edge:              ; preds = %do.end48.i.i
  br label %for.body.i.i

do.end48.i.i.for.end.i.i_crit_edge:               ; preds = %do.end48.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %do.end70.i.i.for.body.i.i_crit_edge, %do.end48.i.i.for.body.i.i_crit_edge
  %p.0151.i.i = phi ptr [ %p.0.i.i, %do.end70.i.i.for.body.i.i_crit_edge ], [ %p.0149.i.i, %do.end48.i.i.for.body.i.i_crit_edge ]
  %addr51.i.i = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %p.0151.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %addr51.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %addr51.i.i, align 4
  %73 = ptrtoint ptr %prl.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %prl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp53.i.i = icmp eq i32 %72, %74
  br i1 %cmp53.i.i, label %if.then54.i.i, label %do.body60.i.i

if.then54.i.i:                                    ; preds = %for.body.i.i
  br i1 %cmp10.i, label %if.then56.i.i, label %if.then54.i.i.sw.epilog.i_crit_edge

if.then54.i.i.sw.epilog.i_crit_edge:              ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

if.then56.i.i:                                    ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %75 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %51, align 4
  %flags57.i.i = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %p.0151.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %flags57.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %flags57.i.i, align 4
  br label %sw.epilog.i

do.body60.i.i:                                    ; preds = %for.body.i.i
  %call61.i.i = call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call61.i.i, label %do.body60.i.i.do.end70.i.i_crit_edge, label %land.lhs.true62.i.i

do.body60.i.i.do.end70.i.i_crit_edge:             ; preds = %do.body60.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end70.i.i

land.lhs.true62.i.i:                              ; preds = %do.body60.i.i
  %call63.i.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %tobool64.not.i.i = icmp eq i32 %call63.i.i, 0
  br i1 %tobool64.not.i.i, label %land.lhs.true62.i.i.do.end70.i.i_crit_edge, label %land.lhs.true65.i.i

land.lhs.true62.i.i.do.end70.i.i_crit_edge:       ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end70.i.i

land.lhs.true65.i.i:                              ; preds = %land.lhs.true62.i.i
  %.b144145.i.i = load i1, ptr @ipip6_tunnel_add_prl.__warned.21, align 1
  br i1 %.b144145.i.i, label %land.lhs.true65.i.i.do.end70.i.i_crit_edge, label %if.then67.i.i

land.lhs.true65.i.i.do.end70.i.i_crit_edge:       ; preds = %land.lhs.true65.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end70.i.i

if.then67.i.i:                                    ; preds = %land.lhs.true65.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_add_prl.__warned.21, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 380, ptr noundef nonnull @.str.8) #20
  br label %do.end70.i.i

do.end70.i.i:                                     ; preds = %if.then67.i.i, %land.lhs.true65.i.i.do.end70.i.i_crit_edge, %land.lhs.true62.i.i.do.end70.i.i_crit_edge, %do.body60.i.i.do.end70.i.i_crit_edge
  %78 = ptrtoint ptr %p.0151.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %p.0.i.i = load ptr, ptr %p.0151.i.i, align 4
  %tobool50.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool50.not.i.i, label %do.end70.i.i.for.end.i.i_crit_edge, label %do.end70.i.i.for.body.i.i_crit_edge

do.end70.i.i.for.body.i.i_crit_edge:              ; preds = %do.end70.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

do.end70.i.i.for.end.i.i_crit_edge:               ; preds = %do.end70.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %do.end70.i.i.for.end.i.i_crit_edge, %do.end48.i.i.for.end.i.i_crit_edge
  br i1 %cmp10.i, label %for.end.i.i.sw.epilog.i_crit_edge, label %if.end74.i.i

for.end.i.i.sw.epilog.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

if.end74.i.i:                                     ; preds = %for.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i42 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 20) #28
  %tobool76.not.i.i = icmp eq ptr %call7.i.i.i.i42, null
  br i1 %tobool76.not.i.i, label %if.end74.i.i.sw.epilog.i_crit_edge, label %if.end78.i.i

if.end74.i.i.sw.epilog.i_crit_edge:               ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

if.end78.i.i:                                     ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %80 = ptrtoint ptr %prl.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prl.i.i, align 4
  %82 = ptrtoint ptr %call7.i.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %call7.i.i.i.i42, align 8
  %83 = ptrtoint ptr %prl.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %prl.i, align 4
  %addr82.i.i = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %call7.i.i.i.i42, i32 0, i32 1
  %85 = ptrtoint ptr %addr82.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %addr82.i.i, align 4
  %86 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %51, align 4
  %flags84.i.i = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %call7.i.i.i.i42, i32 0, i32 2
  %88 = ptrtoint ptr %flags84.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %flags84.i.i, align 8
  %prl_count.i.i = getelementptr i8, ptr %dev, i32 2464
  %89 = ptrtoint ptr %prl_count.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %prl_count.i.i, align 4
  %inc.i.i = add i32 %90, 1
  store i32 %inc.i.i, ptr %prl_count.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !184
  %91 = ptrtoint ptr %prl.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %call7.i.i.i.i42, ptr %prl.i.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end78.i.i, %if.end74.i.i.sw.epilog.i_crit_edge, %for.end.i.i.sw.epilog.i_crit_edge, %if.then56.i.i, %if.then54.i.i.sw.epilog.i_crit_edge, %sw.bb9.i.sw.epilog.i_crit_edge, %sw.bb.i, %if.end7.i.sw.epilog.i_crit_edge
  %err.0.i = phi i32 [ -1, %if.end7.i.sw.epilog.i_crit_edge ], [ %call8.i, %sw.bb.i ], [ -22, %sw.bb9.i.sw.epilog.i_crit_edge ], [ 0, %if.then56.i.i ], [ 0, %if.end78.i.i ], [ -17, %if.then54.i.i.sw.epilog.i_crit_edge ], [ -6, %for.end.i.i.sw.epilog.i_crit_edge ], [ -105, %if.end74.i.i.sw.epilog.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i.i = getelementptr i8, ptr %dev, i32 2360
  %93 = ptrtoint ptr %reset_ts.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %reset_ts.i.i, align 4
  call void @netdev_state_change(ptr noundef %dev) #20
  br label %ipip6_tunnel_prl_ctl.exit

ipip6_tunnel_prl_ctl.exit:                        ; preds = %sw.epilog.i, %if.then11.i.i.i38, %if.end.i.ipip6_tunnel_prl_ctl.exit_crit_edge, %sw.bb3.ipip6_tunnel_prl_ctl.exit_crit_edge
  %retval.0.i43 = phi i32 [ %err.0.i, %sw.epilog.i ], [ -1, %sw.bb3.ipip6_tunnel_prl_ctl.exit_crit_edge ], [ -22, %if.end.i.ipip6_tunnel_prl_ctl.exit_crit_edge ], [ -14, %if.then11.i.i.i38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prl.i) #20
  br label %return

sw.bb5:                                           ; preds = %entry
  %add.ptr.i.i44 = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ip6rd.i) #20
  %94 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd.i, i32 0, i32 1
  %95 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd.i, i32 0, i32 2
  %96 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p.i) #20
  %97 = call ptr @memset(ptr %p.i, i32 255, i32 52)
  %net.i.i45 = getelementptr i8, ptr %dev, i32 2324
  %98 = ptrtoint ptr %net.i.i45 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %net.i.i45, align 4
  %100 = load i32, ptr @sit_net_id, align 4
  %call1.i.i46 = tail call fastcc ptr @net_generic(ptr noundef %99, i32 noundef %100) #20
  %fb_tunnel_dev.i47 = getelementptr inbounds %struct.sit_net, ptr %call1.i.i46, i32 0, i32 5
  %101 = ptrtoint ptr %fb_tunnel_dev.i47 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fb_tunnel_dev.i47, align 4
  %cmp.i48 = icmp eq ptr %102, %dev
  br i1 %cmp.i48, label %if.end8.i.i.i50, label %sw.bb5.if.end5.i_crit_edge

sw.bb5.if.end5.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i

if.end8.i.i.i50:                                  ; preds = %sw.bb5
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #20
  %call.i.i.i49 = tail call zeroext i1 @should_fail_usercopy() #20
  br i1 %call.i.i.i49, label %if.end8.i.i.i50.if.then11.i.i.i64_crit_edge, label %land.lhs.true.i.i.i53

if.end8.i.i.i50.if.then11.i.i.i64_crit_edge:      ; preds = %if.end8.i.i.i50
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i64

land.lhs.true.i.i.i53:                            ; preds = %if.end8.i.i.i50
  %103 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 52, i32 -1226833920) #27, !srcloc !175
  %asmresult.i.i.i51 = extractvalue { i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i51)
  %cmp.i6.i.i52 = icmp eq i32 %asmresult.i.i.i51, 0
  br i1 %cmp.i6.i.i52, label %if.end.i.i.i61, label %land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge, !prof !176

land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge: ; preds = %land.lhs.true.i.i.i53
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i64

if.end.i.i.i61:                                   ; preds = %land.lhs.true.i.i.i53
  %call.i.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p.i, i32 noundef 52) #20
  %104 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i.i.i55 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i.i.i55 to ptr
  %cpu_domain.i.i.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 4
  %106 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i56) #10, !srcloc !177
  %and.i.i.i.i.i57 = and i32 %106, -13
  %or.i.i.i.i.i58 = or i32 %and.i.i.i.i.i57, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i58) #20, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  %call1.i.i.i.i59 = call i32 @arm_copy_from_user(ptr noundef nonnull %p.i, ptr noundef %data, i32 noundef 52) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #20, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i59)
  %tobool4.not.i.i.i60 = icmp eq i32 %call1.i.i.i.i59, 0
  br i1 %tobool4.not.i.i.i60, label %if.end.i65, label %if.end.i.i.i61.if.then11.i.i.i64_crit_edge, !prof !176

if.end.i.i.i61.if.then11.i.i.i64_crit_edge:       ; preds = %if.end.i.i.i61
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i64

if.then11.i.i.i64:                                ; preds = %if.end.i.i.i61.if.then11.i.i.i64_crit_edge, %land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge, %if.end8.i.i.i50.if.then11.i.i.i64_crit_edge
  %res.0.i.i46.i = phi i32 [ %call1.i.i.i.i59, %if.end.i.i.i61.if.then11.i.i.i64_crit_edge ], [ 52, %if.end8.i.i.i50.if.then11.i.i.i64_crit_edge ], [ 52, %land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge ]
  %sub.i.i.i62 = sub i32 52, %res.0.i.i46.i
  %add.ptr.i.i.i63 = getelementptr i8, ptr %p.i, i32 %sub.i.i.i62
  %107 = call ptr @memset(ptr %add.ptr.i.i.i63, i32 0, i32 %res.0.i.i46.i)
  br label %ipip6_tunnel_get6rd.exit

if.end.i65:                                       ; preds = %if.end.i.i.i61
  call void @__sanitizer_cov_trace_pc() #22
  %108 = ptrtoint ptr %net.i.i45 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %net.i.i45, align 4
  %call4.i = call fastcc ptr @ipip6_tunnel_locate(ptr noundef %109, ptr noundef nonnull %p.i, i32 noundef 0) #20
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i65, %sw.bb5.if.end5.i_crit_edge
  %t.0.i = phi ptr [ %call4.i, %if.end.i65 ], [ %add.ptr.i.i44, %sw.bb5.if.end5.i_crit_edge ]
  %tobool6.not.i = icmp eq ptr %t.0.i, null
  %spec.select.i = select i1 %tobool6.not.i, ptr %add.ptr.i.i44, ptr %t.0.i
  %ip6rd10.i = getelementptr inbounds %struct.ip_tunnel, ptr %spec.select.i, i32 0, i32 20
  %110 = call ptr @memcpy(ptr %ip6rd.i, ptr %ip6rd10.i, i32 16)
  %relay_prefix.i = getelementptr inbounds %struct.ip_tunnel, ptr %spec.select.i, i32 0, i32 20, i32 1
  %111 = ptrtoint ptr %relay_prefix.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %relay_prefix.i, align 4
  %113 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %94, align 4
  %prefixlen.i = getelementptr inbounds %struct.ip_tunnel, ptr %spec.select.i, i32 0, i32 20, i32 2
  %114 = ptrtoint ptr %prefixlen.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %prefixlen.i, align 4
  %116 = ptrtoint ptr %95 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %95, align 4
  %relay_prefixlen.i = getelementptr inbounds %struct.ip_tunnel, ptr %spec.select.i, i32 0, i32 20, i32 3
  %117 = ptrtoint ptr %relay_prefixlen.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %relay_prefixlen.i, align 2
  %119 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %96, align 2
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #20
  %call.i.i37.i = call zeroext i1 @should_fail_usercopy() #20
  br i1 %call.i.i37.i, label %if.end5.i.ipip6_tunnel_get6rd.exit_crit_edge, label %if.end.i.i40.i

if.end5.i.ipip6_tunnel_get6rd.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_tunnel_get6rd.exit

if.end.i.i40.i:                                   ; preds = %if.end5.i
  %120 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 24, i32 -1226833920) #27, !srcloc !182
  %asmresult.i.i38.i = extractvalue { i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i38.i)
  %cmp.i6.i39.i = icmp eq i32 %asmresult.i.i38.i, 0
  br i1 %cmp.i6.i39.i, label %copy_to_user.exit.i67, label %if.end.i.i40.i.ipip6_tunnel_get6rd.exit_crit_edge

if.end.i.i40.i.ipip6_tunnel_get6rd.exit_crit_edge: ; preds = %if.end.i.i40.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_tunnel_get6rd.exit

copy_to_user.exit.i67:                            ; preds = %if.end.i.i40.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i.i.i41.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ip6rd.i, i32 noundef 24) #20
  %call.i12.i.i.i66 = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %ip6rd.i, i32 noundef 24) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i66)
  %tobool19.not.i = icmp eq i32 %call.i12.i.i.i66, 0
  %spec.select51.i = select i1 %tobool19.not.i, i32 0, i32 -14
  br label %ipip6_tunnel_get6rd.exit

ipip6_tunnel_get6rd.exit:                         ; preds = %copy_to_user.exit.i67, %if.end.i.i40.i.ipip6_tunnel_get6rd.exit_crit_edge, %if.end5.i.ipip6_tunnel_get6rd.exit_crit_edge, %if.then11.i.i.i64
  %retval.0.i68 = phi i32 [ -14, %if.then11.i.i.i64 ], [ -14, %if.end5.i.ipip6_tunnel_get6rd.exit_crit_edge ], [ -14, %if.end.i.i40.i.ipip6_tunnel_get6rd.exit_crit_edge ], [ %spec.select51.i, %copy_to_user.exit.i67 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p.i) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ip6rd.i) #20
  br label %return

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge107, %entry.sw.bb7_crit_edge108
  %add.ptr.i.i70 = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ip6rd.i69) #20
  %net.i71 = getelementptr i8, ptr %dev, i32 2324
  %121 = call ptr @memset(ptr %ip6rd.i69, i32 255, i32 24)
  %122 = ptrtoint ptr %net.i71 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %net.i71, align 4
  %user_ns.i72 = getelementptr inbounds %struct.net, ptr %123, i32 0, i32 11
  %124 = ptrtoint ptr %user_ns.i72 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %user_ns.i72, align 4
  %call1.i73 = tail call zeroext i1 @ns_capable(ptr noundef %125, i32 noundef 12) #20
  br i1 %call1.i73, label %if.end8.i.i.i75, label %sw.bb7.ipip6_tunnel_6rdctl.exit_crit_edge

sw.bb7.ipip6_tunnel_6rdctl.exit_crit_edge:        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_tunnel_6rdctl.exit

if.end8.i.i.i75:                                  ; preds = %sw.bb7
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #20
  %call.i.i.i74 = tail call zeroext i1 @should_fail_usercopy() #20
  br i1 %call.i.i.i74, label %if.end8.i.i.i75.if.then11.i.i.i89_crit_edge, label %land.lhs.true.i.i.i78

if.end8.i.i.i75.if.then11.i.i.i89_crit_edge:      ; preds = %if.end8.i.i.i75
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i89

land.lhs.true.i.i.i78:                            ; preds = %if.end8.i.i.i75
  %126 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 24, i32 -1226833920) #27, !srcloc !175
  %asmresult.i.i.i76 = extractvalue { i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i76)
  %cmp.i6.i.i77 = icmp eq i32 %asmresult.i.i.i76, 0
  br i1 %cmp.i6.i.i77, label %if.end.i.i.i86, label %land.lhs.true.i.i.i78.if.then11.i.i.i89_crit_edge, !prof !176

land.lhs.true.i.i.i78.if.then11.i.i.i89_crit_edge: ; preds = %land.lhs.true.i.i.i78
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i89

if.end.i.i.i86:                                   ; preds = %land.lhs.true.i.i.i78
  %call.i.i.i.i79 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ip6rd.i69, i32 noundef 24) #20
  %127 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i.i.i80 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i.i.i80 to ptr
  %cpu_domain.i.i.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 4
  %129 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i81) #10, !srcloc !177
  %and.i.i.i.i.i82 = and i32 %129, -13
  %or.i.i.i.i.i83 = or i32 %and.i.i.i.i.i82, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i83) #20, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  %call1.i.i.i.i84 = call i32 @arm_copy_from_user(ptr noundef nonnull %ip6rd.i69, ptr noundef %data, i32 noundef 24) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #20, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i84)
  %tobool4.not.i.i.i85 = icmp eq i32 %call1.i.i.i.i84, 0
  br i1 %tobool4.not.i.i.i85, label %if.end4.i90, label %if.end.i.i.i86.if.then11.i.i.i89_crit_edge, !prof !176

if.end.i.i.i86.if.then11.i.i.i89_crit_edge:       ; preds = %if.end.i.i.i86
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i.i.i89

if.then11.i.i.i89:                                ; preds = %if.end.i.i.i86.if.then11.i.i.i89_crit_edge, %land.lhs.true.i.i.i78.if.then11.i.i.i89_crit_edge, %if.end8.i.i.i75.if.then11.i.i.i89_crit_edge
  %res.0.i.i20.i = phi i32 [ %call1.i.i.i.i84, %if.end.i.i.i86.if.then11.i.i.i89_crit_edge ], [ 24, %if.end8.i.i.i75.if.then11.i.i.i89_crit_edge ], [ 24, %land.lhs.true.i.i.i78.if.then11.i.i.i89_crit_edge ]
  %sub.i.i.i87 = sub i32 24, %res.0.i.i20.i
  %add.ptr.i.i.i88 = getelementptr i8, ptr %ip6rd.i69, i32 %sub.i.i.i87
  %130 = call ptr @memset(ptr %add.ptr.i.i.i88, i32 0, i32 %res.0.i.i20.i)
  br label %ipip6_tunnel_6rdctl.exit

if.end4.i90:                                      ; preds = %if.end.i.i.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 35322, i32 %cmd)
  %cmp.not.i = icmp eq i32 %cmd, 35322
  br i1 %cmp.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end4.i90
  %call6.i = call fastcc i32 @ipip6_tunnel_update_6rd(ptr noundef %add.ptr.i.i70, ptr noundef nonnull %ip6rd.i69) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then5.i.ipip6_tunnel_6rdctl.exit_crit_edge, label %if.then5.i.if.end11.i_crit_edge

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.i

if.then5.i.ipip6_tunnel_6rdctl.exit_crit_edge:    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_tunnel_6rdctl.exit

if.else.i:                                        ; preds = %if.end4.i90
  %131 = ptrtoint ptr %net.i71 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %net.i71, align 4
  %133 = load i32, ptr @sit_net_id, align 4
  %call1.i.i91 = call fastcc ptr @net_generic(ptr noundef %132, i32 noundef %133) #20
  %fb_tunnel_dev.i.i = getelementptr inbounds %struct.sit_net, ptr %call1.i.i91, i32 0, i32 5
  %134 = ptrtoint ptr %fb_tunnel_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %fb_tunnel_dev.i.i, align 4
  %cmp.i.i92 = icmp eq ptr %135, %dev
  %tobool.not.i.i93 = icmp eq ptr %135, null
  %or.cond.i.i = or i1 %cmp.i.i92, %tobool.not.i.i93
  %ip6rd.i.i = getelementptr i8, ptr %dev, i32 2436
  br i1 %or.cond.i.i, label %if.then.i.i94, label %if.else.i.i

if.then.i.i94:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %136 = ptrtoint ptr %ip6rd.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 537001984, ptr %ip6rd.i.i, align 4
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %dev, i32 2440
  %prefixlen.i.i = getelementptr i8, ptr %dev, i32 2456
  %137 = call ptr @memset(ptr %arrayidx1.i.i.i.i, i32 0, i32 16)
  %138 = ptrtoint ptr %prefixlen.i.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 16, ptr %prefixlen.i.i, align 4
  %relay_prefixlen.i.i = getelementptr i8, ptr %dev, i32 2458
  %139 = ptrtoint ptr %relay_prefixlen.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %relay_prefixlen.i.i, align 2
  br label %if.end11.i

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %ip6rd8.i.i = getelementptr i8, ptr %135, i32 2436
  %140 = call ptr @memcpy(ptr %ip6rd.i.i, ptr %ip6rd8.i.i, i32 24)
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i.i, %if.then.i.i94, %if.then5.i.if.end11.i_crit_edge
  br label %ipip6_tunnel_6rdctl.exit

ipip6_tunnel_6rdctl.exit:                         ; preds = %if.end11.i, %if.then5.i.ipip6_tunnel_6rdctl.exit_crit_edge, %if.then11.i.i.i89, %sw.bb7.ipip6_tunnel_6rdctl.exit_crit_edge
  %retval.0.i95 = phi i32 [ 0, %if.end11.i ], [ -1, %sw.bb7.ipip6_tunnel_6rdctl.exit_crit_edge ], [ %call6.i, %if.then5.i.ipip6_tunnel_6rdctl.exit_crit_edge ], [ -14, %if.then11.i.i.i89 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ip6rd.i69) #20
  br label %return

return:                                           ; preds = %ipip6_tunnel_6rdctl.exit, %ipip6_tunnel_get6rd.exit, %ipip6_tunnel_prl_ctl.exit, %ipip6_tunnel_get_prl.exit, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i95, %ipip6_tunnel_6rdctl.exit ], [ %retval.0.i68, %ipip6_tunnel_get6rd.exit ], [ %retval.0.i43, %ipip6_tunnel_prl_ctl.exit ], [ %retval.0.i, %ipip6_tunnel_get_prl.exit ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_get_iflink(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip6_tunnel_ctl(ptr noundef %dev, ptr noundef %p, i32 noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 35312, label %sw.bb
    i32 35313, label %sw.bb1
    i32 35315, label %sw.bb3
    i32 35314, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

sw.bb:                                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %net.i.i = getelementptr i8, ptr %dev, i32 2324
  %1 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i.i, align 4
  %3 = load i32, ptr @sit_net_id, align 4
  %call1.i.i = tail call fastcc ptr @net_generic(ptr noundef %2, i32 noundef %3) #20
  %fb_tunnel_dev.i = getelementptr inbounds %struct.sit_net, ptr %call1.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %fb_tunnel_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb_tunnel_dev.i, align 4
  %cmp.i = icmp eq ptr %5, %dev
  br i1 %cmp.i, label %if.then.i, label %sw.bb.ipip6_tunnel_get.exit_crit_edge

sw.bb.ipip6_tunnel_get.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipip6_tunnel_get.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %6 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i.i, align 4
  %call2.i = tail call fastcc ptr @ipip6_tunnel_locate(ptr noundef %7, ptr noundef %p, i32 noundef 0) #20
  br label %ipip6_tunnel_get.exit

ipip6_tunnel_get.exit:                            ; preds = %if.then.i, %sw.bb.ipip6_tunnel_get.exit_crit_edge
  %t.0.i = phi ptr [ %call2.i, %if.then.i ], [ %add.ptr.i.i, %sw.bb.ipip6_tunnel_get.exit_crit_edge ]
  %tobool.not.i = icmp eq ptr %t.0.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr %add.ptr.i.i, ptr %t.0.i
  %parms.i = getelementptr inbounds %struct.ip_tunnel, ptr %spec.select.i, i32 0, i32 15
  %8 = call ptr @memcpy(ptr %p, ptr %parms.i, i32 52)
  br label %return

sw.bb1:                                           ; preds = %entry
  %net.i = getelementptr i8, ptr %dev, i32 2324
  %9 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i, align 4
  %user_ns.i.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ns.i.i, align 4
  %call.i.i = tail call zeroext i1 @ns_capable(ptr noundef %12, i32 noundef 12) #20
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end.i.i:                                       ; preds = %sw.bb1
  %protocol.i.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %13 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protocol.i.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %14, label %if.end.i.i.return_crit_edge [
    i8 41, label %if.end.i.i.if.end3.i.i_crit_edge
    i8 4, label %if.end.i.i.if.end3.i.i_crit_edge44
    i8 -119, label %if.end.i.i.if.end3.i.i_crit_edge45
    i8 0, label %if.end.i.i.if.end3.i.i_crit_edge46
  ]

if.end.i.i.if.end3.i.i_crit_edge46:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i.i

if.end.i.i.if.end3.i.i_crit_edge45:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i.i

if.end.i.i.if.end3.i.i_crit_edge44:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i.i

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end3.i.i:                                      ; preds = %if.end.i.i.if.end3.i.i_crit_edge, %if.end.i.i.if.end3.i.i_crit_edge44, %if.end.i.i.if.end3.i.i_crit_edge45, %if.end.i.i.if.end3.i.i_crit_edge46
  %iph.i.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %16 = ptrtoint ptr %iph.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i = load i8, ptr %iph.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %bf.load.i.i)
  %17 = icmp eq i8 %bf.load.i.i, 69
  br i1 %17, label %lor.lhs.false11.i.i, label %if.end3.i.i.return_crit_edge

if.end3.i.i.return_crit_edge:                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

lor.lhs.false11.i.i:                              ; preds = %if.end3.i.i
  %frag_off.i.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %18 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %frag_off.i.i, align 2
  %20 = and i16 %19, -16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i, label %if.end15.i.i, label %lor.lhs.false11.i.i.return_crit_edge

lor.lhs.false11.i.i.return_crit_edge:             ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end15.i.i:                                     ; preds = %lor.lhs.false11.i.i
  %ttl.i.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 5
  %21 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ttl.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool17.not.i.i, label %if.end15.i.i.if.end.i_crit_edge, label %if.then18.i.i

if.end15.i.i.if.end.i_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %or.i.i = or i16 %19, 16384
  %23 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %or.i.i, ptr %frag_off.i.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then18.i.i, %if.end15.i.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i, align 4
  %call3.i = tail call fastcc ptr @ipip6_tunnel_locate(ptr noundef %25, ptr noundef %p, i32 noundef 1) #20
  %tobool4.not.i = icmp eq ptr %call3.i, null
  %..i = select i1 %tobool4.not.i, i32 -105, i32 0
  br label %return

sw.bb3:                                           ; preds = %entry
  %add.ptr.i.i13 = getelementptr i8, ptr %dev, i32 2304
  %net.i14 = getelementptr i8, ptr %dev, i32 2324
  %26 = ptrtoint ptr %net.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net.i14, align 4
  %user_ns.i.i15 = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %user_ns.i.i15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %user_ns.i.i15, align 4
  %call.i.i16 = tail call zeroext i1 @ns_capable(ptr noundef %29, i32 noundef 12) #20
  br i1 %call.i.i16, label %if.end.i.i18, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end.i.i18:                                     ; preds = %sw.bb3
  %protocol.i.i17 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %protocol.i.i17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %protocol.i.i17, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %31, label %if.end.i.i18.return_crit_edge [
    i8 41, label %if.end.i.i18.if.end3.i.i21_crit_edge
    i8 4, label %if.end.i.i18.if.end3.i.i21_crit_edge47
    i8 -119, label %if.end.i.i18.if.end3.i.i21_crit_edge48
    i8 0, label %if.end.i.i18.if.end3.i.i21_crit_edge49
  ]

if.end.i.i18.if.end3.i.i21_crit_edge49:           ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i.i21

if.end.i.i18.if.end3.i.i21_crit_edge48:           ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i.i21

if.end.i.i18.if.end3.i.i21_crit_edge47:           ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i.i21

if.end.i.i18.if.end3.i.i21_crit_edge:             ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i.i21

if.end.i.i18.return_crit_edge:                    ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end3.i.i21:                                    ; preds = %if.end.i.i18.if.end3.i.i21_crit_edge, %if.end.i.i18.if.end3.i.i21_crit_edge47, %if.end.i.i18.if.end3.i.i21_crit_edge48, %if.end.i.i18.if.end3.i.i21_crit_edge49
  %iph.i.i19 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %33 = ptrtoint ptr %iph.i.i19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i20 = load i8, ptr %iph.i.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %bf.load.i.i20)
  %34 = icmp eq i8 %bf.load.i.i20, 69
  br i1 %34, label %lor.lhs.false11.i.i24, label %if.end3.i.i21.return_crit_edge

if.end3.i.i21.return_crit_edge:                   ; preds = %if.end3.i.i21
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

lor.lhs.false11.i.i24:                            ; preds = %if.end3.i.i21
  %frag_off.i.i22 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %frag_off.i.i22 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %frag_off.i.i22, align 2
  %37 = and i16 %36, -16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i.i23 = icmp eq i16 %37, 0
  br i1 %tobool.not.i.i23, label %if.end15.i.i27, label %lor.lhs.false11.i.i24.return_crit_edge

lor.lhs.false11.i.i24.return_crit_edge:           ; preds = %lor.lhs.false11.i.i24
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end15.i.i27:                                   ; preds = %lor.lhs.false11.i.i24
  %ttl.i.i25 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 5
  %38 = ptrtoint ptr %ttl.i.i25 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ttl.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool17.not.i.i26 = icmp eq i8 %39, 0
  br i1 %tobool17.not.i.i26, label %if.end15.i.i27.if.end.i34_crit_edge, label %if.then18.i.i29

if.end15.i.i27.if.end.i34_crit_edge:              ; preds = %if.end15.i.i27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i34

if.then18.i.i29:                                  ; preds = %if.end15.i.i27
  call void @__sanitizer_cov_trace_pc() #22
  %or.i.i28 = or i16 %36, 16384
  %40 = ptrtoint ptr %frag_off.i.i22 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %or.i.i28, ptr %frag_off.i.i22, align 2
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.then18.i.i29, %if.end15.i.i27.if.end.i34_crit_edge
  %41 = ptrtoint ptr %net.i14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net.i14, align 4
  %call3.i30 = tail call fastcc ptr @ipip6_tunnel_locate(ptr noundef %42, ptr noundef %p, i32 noundef 0) #20
  %43 = ptrtoint ptr %net.i14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net.i14, align 4
  %45 = load i32, ptr @sit_net_id, align 4
  %call1.i.i31 = tail call fastcc ptr @net_generic(ptr noundef %44, i32 noundef %45) #20
  %fb_tunnel_dev.i32 = getelementptr inbounds %struct.sit_net, ptr %call1.i.i31, i32 0, i32 5
  %46 = ptrtoint ptr %fb_tunnel_dev.i32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fb_tunnel_dev.i32, align 4
  %cmp.i33 = icmp eq ptr %47, %dev
  %tobool6.not.i = icmp eq ptr %call3.i30, null
  br i1 %cmp.i33, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i34
  br i1 %tobool6.not.i, label %if.then5.i.return_crit_edge, label %if.then5.i.if.end29.i_crit_edge

if.then5.i.if.end29.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29.i

if.then5.i.return_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.else.i:                                        ; preds = %if.end.i34
  br i1 %tobool6.not.i, label %if.else15.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else.i
  %dev11.i = getelementptr inbounds %struct.ip_tunnel, ptr %call3.i30, i32 0, i32 2
  %48 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev11.i, align 4
  %cmp12.not.i = icmp eq ptr %49, %dev
  br i1 %cmp12.not.i, label %if.then10.i.if.end28.i_crit_edge, label %if.then10.i.return_crit_edge

if.then10.i.return_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.then10.i.if.end28.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28.i

if.else15.i:                                      ; preds = %if.else.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  %daddr23.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 9
  %52 = ptrtoint ptr %daddr23.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %daddr23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool24.not.i = icmp eq i32 %53, 0
  br i1 %tobool16.not.i, label %land.lhs.true21.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else15.i
  br i1 %tobool24.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.end28.i_crit_edge

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

land.lhs.true21.i:                                ; preds = %if.else15.i
  br i1 %tobool24.not.i, label %land.lhs.true21.i.if.end28.i_crit_edge, label %land.lhs.true21.i.return_crit_edge

land.lhs.true21.i.return_crit_edge:               ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

land.lhs.true21.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28.i

if.end28.i:                                       ; preds = %land.lhs.true21.i.if.end28.i_crit_edge, %land.lhs.true.i.if.end28.i_crit_edge, %if.then10.i.if.end28.i_crit_edge
  %t.0.i35 = phi ptr [ %call3.i30, %if.then10.i.if.end28.i_crit_edge ], [ %add.ptr.i.i13, %land.lhs.true.i.if.end28.i_crit_edge ], [ %add.ptr.i.i13, %land.lhs.true21.i.if.end28.i_crit_edge ]
  %fwmark.i = getelementptr inbounds %struct.ip_tunnel, ptr %t.0.i35, i32 0, i32 25
  %54 = ptrtoint ptr %fwmark.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fwmark.i, align 4
  tail call fastcc void @ipip6_tunnel_update(ptr noundef %t.0.i35, ptr noundef %p, i32 noundef %55) #20
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end28.i, %if.then5.i.if.end29.i_crit_edge
  br label %return

sw.bb5:                                           ; preds = %entry
  %net.i37 = getelementptr i8, ptr %dev, i32 2324
  %56 = ptrtoint ptr %net.i37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net.i37, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %59, i32 noundef 12) #20
  br i1 %call1.i, label %if.end.i41, label %sw.bb5.return_crit_edge

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end.i41:                                       ; preds = %sw.bb5
  %60 = ptrtoint ptr %net.i37 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net.i37, align 4
  %62 = load i32, ptr @sit_net_id, align 4
  %call1.i.i38 = tail call fastcc ptr @net_generic(ptr noundef %61, i32 noundef %62) #20
  %fb_tunnel_dev.i39 = getelementptr inbounds %struct.sit_net, ptr %call1.i.i38, i32 0, i32 5
  %63 = ptrtoint ptr %fb_tunnel_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fb_tunnel_dev.i39, align 4
  %cmp.i40 = icmp eq ptr %64, %dev
  br i1 %cmp.i40, label %if.then3.i, label %if.end.i41.if.end15.i_crit_edge

if.end.i41.if.end15.i_crit_edge:                  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15.i

if.then3.i:                                       ; preds = %if.end.i41
  %65 = ptrtoint ptr %net.i37 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net.i37, align 4
  %call5.i = tail call fastcc ptr @ipip6_tunnel_locate(ptr noundef %66, ptr noundef %p, i32 noundef 0) #20
  %tobool.not.i42 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i42, label %if.then3.i.return_crit_edge, label %if.end7.i

if.then3.i.return_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end7.i:                                        ; preds = %if.then3.i
  %67 = ptrtoint ptr %net.i37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %net.i37, align 4
  %69 = load i32, ptr @sit_net_id, align 4
  %call1.i25.i = tail call fastcc ptr @net_generic(ptr noundef %68, i32 noundef %69) #20
  %fb_tunnel_dev9.i = getelementptr inbounds %struct.sit_net, ptr %call1.i25.i, i32 0, i32 5
  %70 = ptrtoint ptr %fb_tunnel_dev9.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fb_tunnel_dev9.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %71, i32 2304
  %cmp11.i = icmp eq ptr %call5.i, %add.ptr.i26.i
  br i1 %cmp11.i, label %if.end7.i.return_crit_edge, label %if.end13.i

if.end7.i.return_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev14.i = getelementptr inbounds %struct.ip_tunnel, ptr %call5.i, i32 0, i32 2
  %72 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev14.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %if.end.i41.if.end15.i_crit_edge
  %dev.addr.0.i = phi ptr [ %73, %if.end13.i ], [ %dev, %if.end.i41.if.end15.i_crit_edge ]
  tail call void @unregister_netdevice_queue(ptr noundef %dev.addr.0.i, ptr noundef null) #20
  br label %return

return:                                           ; preds = %if.end15.i, %if.end7.i.return_crit_edge, %if.then3.i.return_crit_edge, %sw.bb5.return_crit_edge, %if.end29.i, %land.lhs.true21.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.then10.i.return_crit_edge, %if.then5.i.return_crit_edge, %lor.lhs.false11.i.i24.return_crit_edge, %if.end3.i.i21.return_crit_edge, %if.end.i.i18.return_crit_edge, %sw.bb3.return_crit_edge, %if.end.i, %lor.lhs.false11.i.i.return_crit_edge, %if.end3.i.i.return_crit_edge, %if.end.i.i.return_crit_edge, %sw.bb1.return_crit_edge, %ipip6_tunnel_get.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %ipip6_tunnel_get.exit ], [ -22, %entry.return_crit_edge ], [ %..i, %if.end.i ], [ -22, %if.end.i.i.return_crit_edge ], [ -22, %if.end3.i.i.return_crit_edge ], [ -22, %lor.lhs.false11.i.i.return_crit_edge ], [ -1, %sw.bb1.return_crit_edge ], [ 0, %if.end29.i ], [ -2, %if.then5.i.return_crit_edge ], [ -17, %if.then10.i.return_crit_edge ], [ -22, %land.lhs.true21.i.return_crit_edge ], [ -22, %land.lhs.true.i.return_crit_edge ], [ -22, %if.end.i.i18.return_crit_edge ], [ -22, %if.end3.i.i21.return_crit_edge ], [ -22, %lor.lhs.false11.i.i24.return_crit_edge ], [ -1, %sw.bb3.return_crit_edge ], [ 0, %if.end15.i ], [ -1, %sw.bb5.return_crit_edge ], [ -2, %if.then3.i.return_crit_edge ], [ -1, %if.end7.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipip6_tunnel_bind_dev(ptr nocapture noundef %dev) unnamed_addr #4 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #20
  %0 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %1 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.land.lhs.true_crit_edge, label %if.then

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  %net = getelementptr i8, ptr %dev, i32 2324
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %saddr = getelementptr i8, ptr %dev, i32 2408
  %5 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %saddr, align 4
  %tos = getelementptr i8, ptr %dev, i32 2397
  %7 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tos, align 1
  %9 = and i8 %8, 30
  %link = getelementptr i8, ptr %dev, i32 2380
  %10 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link, align 4
  %user_ns.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %12 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i.i, align 4
  %call.i.i = tail call i32 @make_kuid(ptr noundef %13, i32 noundef 0) #20
  %14 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %fl4, align 8
  %flowic_iif.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %15 = ptrtoint ptr %flowic_iif.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %flowic_iif.i.i, align 4
  %flowic_mark.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %16 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flowic_mark.i.i, align 8
  %flowic_tos.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %17 = ptrtoint ptr %flowic_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %9, ptr %flowic_tos.i.i, align 4
  %flowic_scope.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %18 = ptrtoint ptr %flowic_scope.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %flowic_scope.i.i, align 1
  %flowic_proto.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %19 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 41, ptr %flowic_proto.i.i, align 2
  %flowic_flags.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %20 = ptrtoint ptr %flowic_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %flowic_flags.i.i, align 1
  %flowic_secid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %21 = ptrtoint ptr %flowic_secid.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flowic_secid.i.i, align 8
  %flowic_tun_key.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %22 = ptrtoint ptr %flowic_tun_key.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %flowic_tun_key.i.i, align 8
  %flowic_uid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %23 = ptrtoint ptr %flowic_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i.i, ptr %flowic_uid.i.i, align 4
  %daddr10.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %24 = ptrtoint ptr %daddr10.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %2, ptr %daddr10.i.i, align 4
  %saddr11.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %25 = ptrtoint ptr %saddr11.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %6, ptr %saddr11.i.i, align 8
  %uli.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %26 = ptrtoint ptr %uli.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %uli.i.i, align 8
  %sport14.i.i = getelementptr inbounds %struct.anon.83, ptr %uli.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %sport14.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %sport14.i.i, align 2
  %flowic_multipath_hash.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %28 = ptrtoint ptr %flowic_multipath_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %flowic_multipath_hash.i.i, align 8
  %call11.i = call ptr @ip_route_output_flow(ptr noundef %4, ptr noundef nonnull %fl4, ptr noundef null) #20
  %cmp.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end9.thread52, label %if.end9

if.end9.thread52:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %flags54 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %29 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags54, align 8
  %or55 = or i32 %30, 16
  store i32 %or55, ptr %flags54, align 8
  br label %land.lhs.true

if.end9:                                          ; preds = %if.then
  %31 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call11.i, align 4
  call void @dst_release(ptr noundef %call11.i) #20
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 8
  %or = or i32 %34, 16
  store i32 %or, ptr %flags, align 8
  %tobool10.not = icmp eq ptr %32, null
  br i1 %tobool10.not, label %if.end9.land.lhs.true_crit_edge, label %if.end9.land.lhs.true21_crit_edge

if.end9.land.lhs.true21_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true21

if.end9.land.lhs.true_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9.land.lhs.true_crit_edge, %if.end9.thread52, %entry.land.lhs.true_crit_edge
  %link12 = getelementptr i8, ptr %dev, i32 2380
  %35 = ptrtoint ptr %link12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %link12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool13.not = icmp eq i32 %36, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end30_crit_edge, label %if.end19

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

if.end19:                                         ; preds = %land.lhs.true
  %net15 = getelementptr i8, ptr %dev, i32 2324
  %37 = ptrtoint ptr %net15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net15, align 4
  %call18 = call ptr @__dev_get_by_index(ptr noundef %38, i32 noundef %36) #20
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end19.if.end30_crit_edge, label %if.end19.land.lhs.true21_crit_edge

if.end19.land.lhs.true21_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true21

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

land.lhs.true21:                                  ; preds = %if.end19.land.lhs.true21_crit_edge, %if.end9.land.lhs.true21_crit_edge
  %tdev.262 = phi ptr [ %call18, %if.end19.land.lhs.true21_crit_edge ], [ %32, %if.end9.land.lhs.true21_crit_edge ]
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %tdev.262, i32 0, i32 15
  %39 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %40, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then23, label %land.lhs.true21.if.end30_crit_edge

land.lhs.true21.if.end30_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #22
  %hlen = getelementptr i8, ptr %dev, i32 2424
  %41 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hlen, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %tdev.262, i32 0, i32 20
  %43 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mtu, align 4
  %add.neg = sub i32 -20, %42
  %sub = add i32 %add.neg, %44
  %mtu24 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %45 = call i32 @llvm.umax.i32(i32 %sub, i32 1280)
  %46 = ptrtoint ptr %mtu24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %mtu24, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %land.lhs.true21.if.end30_crit_edge, %if.end19.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #20
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !180
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #20
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !181
  %8 = tail call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipip6_tunnel_unlink(ptr nocapture noundef readonly %sitn, ptr noundef readonly %t) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %daddr.i.i = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 15, i32 6, i32 9
  %0 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %daddr.i.i, align 4
  %saddr.i.i = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 15, i32 6, i32 8
  %2 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saddr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  %shr.i.i = lshr i32 %1, 4
  %xor.i.i = xor i32 %shr.i.i, %1
  %and.i.i = and i32 %xor.i.i, 15
  %h.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 %and.i.i
  %prio.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not.i.i = icmp eq i32 %3, 0
  %shr6.i.i = lshr i32 %3, 4
  %xor7.i.i = xor i32 %shr6.i.i, %3
  %and8.i.i = and i32 %xor7.i.i, 15
  %xor9.i.i = select i1 %tobool3.not.i.i, i32 0, i32 %and8.i.i
  %h.1.i.i = xor i32 %xor9.i.i, %h.0.i.i
  %not.tobool3.not.i.i = xor i1 %tobool3.not.i.i, true
  %or5.i.i = zext i1 %not.tobool3.not.i.i to i32
  %prio.1.i.i = or i32 %prio.0.i.i, %or5.i.i
  %arrayidx.i.i = getelementptr %struct.sit_net, ptr %sitn, i32 0, i32 4, i32 %prio.1.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx11.i.i = getelementptr ptr, ptr %5, i32 %h.1.i.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tp.0 = phi ptr [ %arrayidx11.i.i, %entry ], [ %7, %for.body.for.cond_crit_edge ]
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call1, label %for.cond.do.end_crit_edge, label %land.lhs.true

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @ipip6_tunnel_unlink.__warned, align 1
  br i1 %.b50, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_unlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 166, ptr noundef nonnull @.str.8) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %6 = ptrtoint ptr %tp.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tp.0, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %do.end
  %cmp5 = icmp eq ptr %7, %t
  br i1 %cmp5, label %do.body7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond

do.body7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !185
  %10 = ptrtoint ptr %tp.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %tp.0, align 4
  br label %for.end

for.end:                                          ; preds = %do.body7, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipip6_tunnel_del_prl(ptr nocapture noundef %t, ptr noundef readonly %a) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b107 = load i1, ptr @ipip6_tunnel_del_prl.__already_done, align 1
  br i1 %.b107, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !176

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_del_prl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 430, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 430) #20
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %tobool37.not = icmp eq ptr %a, null
  br i1 %tobool37.not, label %if.end29.do.body67_crit_edge, label %land.lhs.true

if.end29.do.body67_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body67

land.lhs.true:                                    ; preds = %if.end29
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %land.lhs.true.do.body67_crit_edge, label %if.then38

land.lhs.true.do.body67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body67

if.then38:                                        ; preds = %land.lhs.true
  %prl = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 21
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then38
  %p.0 = phi ptr [ %prl, %if.then38 ], [ %3, %for.body.for.cond_crit_edge ]
  %call40 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call40, label %for.cond.do.end49_crit_edge, label %land.lhs.true41

for.cond.do.end49_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end49

land.lhs.true41:                                  ; preds = %for.cond
  %call42 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.do.end49_crit_edge, label %land.lhs.true44

land.lhs.true41.do.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end49

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %.b103106 = load i1, ptr @ipip6_tunnel_del_prl.__warned, align 1
  br i1 %.b103106, label %land.lhs.true44.do.end49_crit_edge, label %if.then46

land.lhs.true44.do.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end49

if.then46:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_del_prl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 434, ptr noundef nonnull @.str.8) #20
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %land.lhs.true44.do.end49_crit_edge, %land.lhs.true41.do.end49_crit_edge, %for.cond.do.end49_crit_edge
  %2 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.0, align 4
  %cmp51.not = icmp eq ptr %3, null
  br i1 %cmp51.not, label %do.end49.out_crit_edge, label %for.body

do.end49.out_crit_edge:                           ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

for.body:                                         ; preds = %do.end49
  %addr52 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr52 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr52, align 4
  %6 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a, align 4
  %cmp54 = icmp eq i32 %5, %7
  br i1 %cmp54, label %if.then55, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond

if.then55:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %10 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %p.0, align 4
  %callback_head = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %3, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 12 to ptr)) #20
  %prl_count = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 22
  %11 = ptrtoint ptr %prl_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prl_count, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %prl_count, align 4
  br label %out

do.body67:                                        ; preds = %land.lhs.true.do.body67_crit_edge, %if.end29.do.body67_crit_edge
  %call68 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call68, label %do.body67.do.end77_crit_edge, label %land.lhs.true69

do.body67.do.end77_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end77

land.lhs.true69:                                  ; preds = %do.body67
  %call70 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true69.do.end77_crit_edge, label %land.lhs.true72

land.lhs.true69.do.end77_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end77

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %.b104105 = load i1, ptr @ipip6_tunnel_del_prl.__warned.10, align 1
  br i1 %.b104105, label %land.lhs.true72.do.end77_crit_edge, label %if.then74

land.lhs.true72.do.end77_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end77

if.then74:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_del_prl.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 445, ptr noundef nonnull @.str.8) #20
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %land.lhs.true72.do.end77_crit_edge, %land.lhs.true69.do.end77_crit_edge, %do.body67.do.end77_crit_edge
  %prl79 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 21
  %13 = ptrtoint ptr %prl79 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prl79, align 4
  %tobool80.not = icmp eq ptr %14, null
  br i1 %tobool80.not, label %do.end77.out_crit_edge, label %if.then81

do.end77.out_crit_edge:                           ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then81:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #22
  %prl_count82 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 22
  %15 = ptrtoint ptr %prl_count82 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %prl_count82, align 4
  %callback_head83 = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %14, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %callback_head83, ptr noundef nonnull @prl_list_destroy_rcu) #20
  %16 = ptrtoint ptr %prl79 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %prl79, align 4
  br label %out

out:                                              ; preds = %if.then81, %do.end77.out_crit_edge, %if.then55, %do.end49.out_crit_edge
  %err.0 = phi i32 [ 0, %if.then55 ], [ 0, %if.then81 ], [ 0, %do.end77.out_crit_edge ], [ -6, %do.end49.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
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
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prl_list_destroy_rcu(ptr noundef %head) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -12
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p.0 = phi ptr [ %add.ptr, %entry ], [ %1, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p.0, align 4
  tail call void @kfree(ptr noundef %p.0) #20
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end4, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.end4:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipip6_tunnel_xmit(ptr noundef %skb, ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  %protocol = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tos4 = getelementptr i8, ptr %dev, i32 2397
  %4 = ptrtoint ptr %tos4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tos4, align 1
  %frag_off = getelementptr i8, ptr %dev, i32 2402
  %6 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %frag_off, align 2
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %8 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %daddr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #20
  %10 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %protocol) #20
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 41, ptr %protocol, align 1
  %hlen = getelementptr i8, ptr %dev, i32 2424
  %12 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hlen, align 4
  %add = add i32 %13, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %16 = lshr i16 %15, 4
  %conv1.i = trunc i16 %16 to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tos.0 = phi i8 [ %conv1.i, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %priv_flags, align 16
  %and = and i64 %18, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.if.end38_crit_edge, label %if.then7

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38

if.then7:                                         ; preds = %if.end
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.then7.skb_dst.exit_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.then7
  %call.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !173

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %19, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %if.then7.skb_dst.exit_crit_edge
  %23 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %21, %if.then7.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %tobool9.not = icmp ult i32 %23, 2
  br i1 %tobool9.not, label %skb_dst.exit.do.body_crit_edge, label %if.then10

skb_dst.exit.do.body_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

if.then10:                                        ; preds = %skb_dst.exit
  %and.i10 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %if.then10.skb_dst.exit20_crit_edge, label %land.lhs.true.i14

if.then10.skb_dst.exit20_crit_edge:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit20

land.lhs.true.i14:                                ; preds = %if.then10
  %call.i12 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool1.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool1.not.i13, label %land.rhs.i17, label %land.lhs.true.i14.skb_dst.exit20_crit_edge

land.lhs.true.i14.skb_dst.exit20_crit_edge:       ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit20

land.rhs.i17:                                     ; preds = %land.lhs.true.i14
  %call2.i15 = tail call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i15)
  %tobool3.not.i16 = icmp eq i32 %call2.i15, 0
  br i1 %tobool3.not.i16, label %do.end.i18, label %land.rhs.i17.skb_dst.exit20_crit_edge, !prof !173

land.rhs.i17.skb_dst.exit20_crit_edge:            ; preds = %land.rhs.i17
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit20

do.end.i18:                                       ; preds = %land.rhs.i17
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exit20

skb_dst.exit20:                                   ; preds = %do.end.i18, %land.rhs.i17.skb_dst.exit20_crit_edge, %land.lhs.true.i14.skb_dst.exit20_crit_edge, %if.then10.skb_dst.exit20_crit_edge
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 8
  %and25.i19 = and i32 %25, -2
  %26 = inttoptr i32 %and25.i19 to ptr
  %daddr12 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i21 = tail call ptr %30(ptr noundef %26, ptr noundef null, ptr noundef %daddr12) #20
  %cmp.i.i = icmp ugt ptr %call.i21, inttoptr (i32 -4096 to ptr)
  %tobool15.not = icmp eq ptr %call.i21, null
  %or.cond = or i1 %cmp.i.i, %tobool15.not
  br i1 %or.cond, label %skb_dst.exit20.do.body_crit_edge, label %if.end25

skb_dst.exit20.do.body_crit_edge:                 ; preds = %skb_dst.exit20
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.body:                                          ; preds = %skb_dst.exit20.do.body_crit_edge, %skb_dst.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipip6_tunnel_xmit.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipip6_tunnel_xmit, %land.lhs.true)) #20
          to label %tx_error [label %land.lhs.true], !srcloc !186

land.lhs.true:                                    ; preds = %do.body
  %call21 = tail call i32 @net_ratelimit() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.tx_error_crit_edge, label %if.then23

land.lhs.true.tx_error_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_error

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipip6_tunnel_xmit.descriptor, ptr noundef nonnull @.str.13) #20
  br label %tx_error

if.end25:                                         ; preds = %skb_dst.exit20
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %call.i21, i32 0, i32 27
  %call.i22 = tail call i32 @__ipv6_addr_type(ptr noundef %primary_key) #20
  %and27 = and i32 %call.i22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end33_crit_edge, label %land.lhs.true29

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

land.lhs.true29:                                  ; preds = %if.end25
  %arrayidx.i = getelementptr %struct.neighbour, ptr %call.i21, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %33 = and i32 %32, -33554433
  call void @__sanitizer_cov_trace_const_cmp4(i32 24318, i32 %33)
  %cmp.i = icmp eq i32 %33, 24318
  br i1 %cmp.i, label %if.then32, label %land.lhs.true29.if.end33_crit_edge

land.lhs.true29.if.end33_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx = getelementptr %struct.neighbour, ptr %call.i21, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %land.lhs.true29.if.end33_crit_edge, %if.end25.if.end33_crit_edge
  %dst.0 = phi i32 [ %35, %if.then32 ], [ %9, %land.lhs.true29.if.end33_crit_edge ], [ %9, %if.end25.if.end33_crit_edge ]
  %do_tx_error.0.off0 = phi i1 [ false, %if.then32 ], [ true, %land.lhs.true29.if.end33_crit_edge ], [ true, %if.end25.if.end33_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call.i21, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !187
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #20
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #20, !srcloc !188
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.neigh_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !176

if.end5.i.i.i.i.neigh_release.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %neigh_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #20
  br label %neigh_release.exit

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !189
  tail call void @neigh_destroy(ptr noundef nonnull %call.i21) #20
  br label %neigh_release.exit

neigh_release.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.neigh_release.exit_crit_edge
  br i1 %do_tx_error.0.off0, label %neigh_release.exit.tx_error_crit_edge, label %neigh_release.exit.if.end38_crit_edge

neigh_release.exit.if.end38_crit_edge:            ; preds = %neigh_release.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38

neigh_release.exit.tx_error_crit_edge:            ; preds = %neigh_release.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_error

if.end38:                                         ; preds = %neigh_release.exit.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %dst.2 = phi i32 [ %9, %if.end.if.end38_crit_edge ], [ %dst.0, %neigh_release.exit.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst.2)
  %tobool39.not = icmp eq i32 %dst.2, 0
  br i1 %tobool39.not, label %if.then40, label %if.end38.if.end101_crit_edge

if.end38.if.end101_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end101

if.then40:                                        ; preds = %if.end38
  %daddr41 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %ip6rd.i.i = getelementptr i8, ptr %dev, i32 2436
  %prefixlen.i.i = getelementptr i8, ptr %dev, i32 2456
  %37 = ptrtoint ptr %prefixlen.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %prefixlen.i.i, align 4
  %conv.i.i24 = zext i16 %38 to i32
  %shr.i.i.i = lshr i32 %conv.i.i24, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %38)
  %tobool.not.i.i.i = icmp ult i16 %38, 32
  br i1 %tobool.not.i.i.i, label %if.then40.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then40.if.end.i.i.i_crit_edge:                 ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then40
  %shl.i.i.i = shl nuw nsw i32 %shr.i.i.i, 2
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %daddr41, ptr %ip6rd.i.i, i32 %shl.i.i.i) #29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.then45_crit_edge

land.lhs.true.i.i.i.if.then45_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then45

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then40.if.end.i.i.i_crit_edge
  %and.i.i.i = and i32 %conv.i.i24, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.then.i.i_crit_edge, label %land.lhs.true5.i.i.i

if.end.i.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i

land.lhs.true5.i.i.i:                             ; preds = %if.end.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %daddr41, i32 %shr.i.i.i
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr i32, ptr %ip6rd.i.i, i32 %shr.i.i.i
  %41 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor.i.i.i = xor i32 %42, %40
  %sub.i.i.i = sub nuw nsw i32 32, %and.i.i.i
  %shl7.i.i.i = shl nsw i32 -1, %sub.i.i.i
  %and8.i.i.i = and i32 %xor.i.i.i, %shl7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %land.lhs.true5.i.i.i.if.then.i.i_crit_edge, label %land.lhs.true5.i.i.i.if.then45_crit_edge

land.lhs.true5.i.i.i.if.then45_crit_edge:         ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then45

land.lhs.true5.i.i.i.if.then.i.i_crit_edge:       ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i.i.if.then.i.i_crit_edge, %if.end.i.i.i.if.then.i.i_crit_edge
  %relay_prefixlen.i.i = getelementptr i8, ptr %dev, i32 2458
  %43 = ptrtoint ptr %relay_prefixlen.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %relay_prefixlen.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %44)
  %cmp.i.i25 = icmp ult i16 %44, 32
  %conv9.i.i = zext i16 %44 to i32
  br i1 %cmp.i.i25, label %cond.true.i.i, label %if.then.i.i.cond.end.i.i_crit_edge

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i.i = getelementptr [4 x i32], ptr %daddr41, i32 0, i32 %shr.i.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %shl.i.i = shl i32 %46, %and.i.i.i
  %shr14.i.i = lshr i32 %shl.i.i, %conv9.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %shr14.i.i, %cond.true.i.i ], [ 0, %if.then.i.i.cond.end.i.i_crit_edge ]
  %sub.i.i = sub nsw i32 %and.i.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp18.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp18.i.i, label %if.then20.i.i, label %cond.end.i.i.if.end43_crit_edge

cond.end.i.i.if.end43_crit_edge:                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43

if.then20.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.i.i = add nuw nsw i32 %shr.i.i.i, 1
  %arrayidx22.i.i = getelementptr [4 x i32], ptr %daddr41, i32 0, i32 %add.i.i
  %47 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx22.i.i, align 4
  %sub23.i.i = sub nuw nsw i32 32, %sub.i.i
  %shr24.i.i = lshr i32 %48, %sub23.i.i
  %or.i.i = or i32 %shr24.i.i, %cond.i.i
  br label %if.end43

if.end43:                                         ; preds = %if.then20.i.i, %cond.end.i.i.if.end43_crit_edge
  %d.0.i.i = phi i32 [ %or.i.i, %if.then20.i.i ], [ %cond.i.i, %cond.end.i.i.if.end43_crit_edge ]
  %relay_prefix.i.i = getelementptr i8, ptr %dev, i32 2452
  %49 = ptrtoint ptr %relay_prefix.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %relay_prefix.i.i, align 4
  %or26.i.i = or i32 %50, %d.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or26.i.i)
  %tobool44.not = icmp eq i32 %or26.i.i, 0
  br i1 %tobool44.not, label %if.end43.if.then45_crit_edge, label %if.end43.if.end101_crit_edge

if.end43.if.end101_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end101

if.end43.if.then45_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then45

if.then45:                                        ; preds = %if.end43.if.then45_crit_edge, %land.lhs.true5.i.i.i.if.then45_crit_edge, %land.lhs.true.i.i.i.if.then45_crit_edge
  %51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %and.i26 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %if.then45.skb_dst.exit36_crit_edge, label %land.lhs.true.i30

if.then45.skb_dst.exit36_crit_edge:               ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit36

land.lhs.true.i30:                                ; preds = %if.then45
  %call.i28 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool1.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool1.not.i29, label %land.rhs.i33, label %land.lhs.true.i30.skb_dst.exit36thread-pre-split_crit_edge

land.lhs.true.i30.skb_dst.exit36thread-pre-split_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit36thread-pre-split

land.rhs.i33:                                     ; preds = %land.lhs.true.i30
  %call2.i31 = tail call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i31)
  %tobool3.not.i32 = icmp eq i32 %call2.i31, 0
  br i1 %tobool3.not.i32, label %do.end.i34, label %land.rhs.i33.skb_dst.exit36thread-pre-split_crit_edge, !prof !173

land.rhs.i33.skb_dst.exit36thread-pre-split_crit_edge: ; preds = %land.rhs.i33
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit36thread-pre-split

do.end.i34:                                       ; preds = %land.rhs.i33
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exit36thread-pre-split

skb_dst.exit36thread-pre-split:                   ; preds = %do.end.i34, %land.rhs.i33.skb_dst.exit36thread-pre-split_crit_edge, %land.lhs.true.i30.skb_dst.exit36thread-pre-split_crit_edge
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr137 = load i32, ptr %51, align 8
  br label %skb_dst.exit36

skb_dst.exit36:                                   ; preds = %skb_dst.exit36thread-pre-split, %if.then45.skb_dst.exit36_crit_edge
  %55 = phi i32 [ %.pr137, %skb_dst.exit36thread-pre-split ], [ %53, %if.then45.skb_dst.exit36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %tobool49.not = icmp ult i32 %55, 2
  br i1 %tobool49.not, label %skb_dst.exit36.do.body57_crit_edge, label %if.then50

skb_dst.exit36.do.body57_crit_edge:               ; preds = %skb_dst.exit36
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body57

if.then50:                                        ; preds = %skb_dst.exit36
  %and.i37 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %if.then50.skb_dst.exit47_crit_edge, label %land.lhs.true.i41

if.then50.skb_dst.exit47_crit_edge:               ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit47

land.lhs.true.i41:                                ; preds = %if.then50
  %call.i39 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool1.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool1.not.i40, label %land.rhs.i44, label %land.lhs.true.i41.skb_dst.exit47_crit_edge

land.lhs.true.i41.skb_dst.exit47_crit_edge:       ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit47

land.rhs.i44:                                     ; preds = %land.lhs.true.i41
  %call2.i42 = tail call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i42)
  %tobool3.not.i43 = icmp eq i32 %call2.i42, 0
  br i1 %tobool3.not.i43, label %do.end.i45, label %land.rhs.i44.skb_dst.exit47_crit_edge, !prof !173

land.rhs.i44.skb_dst.exit47_crit_edge:            ; preds = %land.rhs.i44
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit47

do.end.i45:                                       ; preds = %land.rhs.i44
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exit47

skb_dst.exit47:                                   ; preds = %do.end.i45, %land.rhs.i44.skb_dst.exit47_crit_edge, %land.lhs.true.i41.skb_dst.exit47_crit_edge, %if.then50.skb_dst.exit47_crit_edge
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %51, align 8
  %and25.i46 = and i32 %57, -2
  %58 = inttoptr i32 %and25.i46 to ptr
  %ops.i48 = getelementptr inbounds %struct.dst_entry, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %ops.i48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i48, align 4
  %neigh_lookup.i49 = getelementptr inbounds %struct.dst_ops, ptr %60, i32 0, i32 14
  %61 = ptrtoint ptr %neigh_lookup.i49 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %neigh_lookup.i49, align 8
  %call.i50 = tail call ptr %62(ptr noundef %58, ptr noundef null, ptr noundef %daddr41) #20
  %cmp.i.i51 = icmp ugt ptr %call.i50, inttoptr (i32 -4096 to ptr)
  %tobool55.not = icmp eq ptr %call.i50, null
  %or.cond136 = or i1 %cmp.i.i51, %tobool55.not
  br i1 %or.cond136, label %skb_dst.exit47.do.body57_crit_edge, label %if.end76

skb_dst.exit47.do.body57_crit_edge:               ; preds = %skb_dst.exit47
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body57

do.body57:                                        ; preds = %skb_dst.exit47.do.body57_crit_edge, %skb_dst.exit36.do.body57_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipip6_tunnel_xmit.descriptor.14, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipip6_tunnel_xmit, %land.lhs.true69)) #20
          to label %tx_error [label %land.lhs.true69], !srcloc !186

land.lhs.true69:                                  ; preds = %do.body57
  %call70 = tail call i32 @net_ratelimit() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true69.tx_error_crit_edge, label %if.then72

land.lhs.true69.tx_error_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_error

if.then72:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipip6_tunnel_xmit.descriptor.14, ptr noundef nonnull @.str.13) #20
  br label %tx_error

if.end76:                                         ; preds = %skb_dst.exit47
  %primary_key77 = getelementptr inbounds %struct.neighbour, ptr %call.i50, i32 0, i32 27
  %call.i53 = tail call i32 @__ipv6_addr_type(ptr noundef %primary_key77) #20
  %and.i54 = and i32 %call.i53, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %cmp79 = icmp eq i32 %and.i54, 0
  br i1 %cmp79, label %if.then81, label %if.end76.if.end85_crit_edge

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end85

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #22
  %63 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %head.i.i, align 8
  %65 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i57 = zext i16 %66 to i32
  %add.ptr.i.i58 = getelementptr i8, ptr %64, i32 %conv.i.i57
  %daddr83 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i58, i32 0, i32 6
  %call.i59 = tail call i32 @__ipv6_addr_type(ptr noundef %daddr83) #20
  %and.i60 = and i32 %call.i59, 65535
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end76.if.end85_crit_edge
  %addr6.0 = phi ptr [ %daddr83, %if.then81 ], [ %primary_key77, %if.end76.if.end85_crit_edge ]
  %addr_type.0 = phi i32 [ %and.i60, %if.then81 ], [ %and.i54, %if.end76.if.end85_crit_edge ]
  %and86 = and i32 %addr_type.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %cmp87.not = icmp eq i32 %and86, 0
  br i1 %cmp87.not, label %if.end85.if.end93_crit_edge, label %if.then89

if.end85.if.end93_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end93

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx91 = getelementptr [4 x i32], ptr %addr6.0, i32 0, i32 3
  %67 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx91, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end85.if.end93_crit_edge
  %dst.4 = phi i32 [ %68, %if.then89 ], [ 0, %if.end85.if.end93_crit_edge ]
  %refcnt.i61 = getelementptr inbounds %struct.neighbour, ptr %call.i50, i32 0, i32 6
  %call.i.i.i.i.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i61, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !187
  tail call void @llvm.prefetch.p0(ptr %refcnt.i61, i32 1, i32 3, i32 1) #20
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i61, ptr %refcnt.i61, i32 1, ptr elementtype(i32) %refcnt.i61) #20, !srcloc !188
  %asmresult.i.i.i.i.i.i.i63 = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i63)
  %cmp.i.i.i.i64 = icmp eq i32 %asmresult.i.i.i.i.i.i.i63, 1
  br i1 %cmp.i.i.i.i64, label %if.then.i68, label %if.end5.i.i.i.i66

if.end5.i.i.i.i66:                                ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i63)
  %.not.i.i.i.i65 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i63, 0
  br i1 %.not.i.i.i.i65, label %if.end5.i.i.i.i66.neigh_release.exit69_crit_edge, label %if.then10.i.i.i.i67, !prof !176

if.end5.i.i.i.i66.neigh_release.exit69_crit_edge: ; preds = %if.end5.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #22
  br label %neigh_release.exit69

if.then10.i.i.i.i67:                              ; preds = %if.end5.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i61, i32 noundef 3) #20
  br label %neigh_release.exit69

if.then.i68:                                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !189
  tail call void @neigh_destroy(ptr noundef nonnull %call.i50) #20
  br label %neigh_release.exit69

neigh_release.exit69:                             ; preds = %if.then.i68, %if.then10.i.i.i.i67, %if.end5.i.i.i.i66.neigh_release.exit69_crit_edge
  br i1 %cmp87.not, label %neigh_release.exit69.tx_error_crit_edge, label %neigh_release.exit69.if.end101_crit_edge

neigh_release.exit69.if.end101_crit_edge:         ; preds = %neigh_release.exit69
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end101

neigh_release.exit69.tx_error_crit_edge:          ; preds = %neigh_release.exit69
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_error

if.end101:                                        ; preds = %neigh_release.exit69.if.end101_crit_edge, %if.end43.if.end101_crit_edge, %if.end38.if.end101_crit_edge
  %dst.6 = phi i32 [ %or26.i.i, %if.end43.if.end101_crit_edge ], [ %dst.2, %if.end38.if.end101_crit_edge ], [ %dst.4, %neigh_release.exit69.if.end101_crit_edge ]
  %link = getelementptr i8, ptr %dev, i32 2380
  %70 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %link, align 4
  %fwmark = getelementptr i8, ptr %dev, i32 2476
  %72 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fwmark, align 4
  %74 = and i8 %tos.0, 30
  %saddr = getelementptr i8, ptr %dev, i32 2408
  %75 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %saddr, align 4
  %net = getelementptr i8, ptr %dev, i32 2324
  %77 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %78, i32 0, i32 11
  %79 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %user_ns.i, align 4
  %call.i70 = tail call i32 @make_kuid(ptr noundef %80, i32 noundef 0) #20
  %81 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %71, ptr %fl4, align 8
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %82 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %flowic_iif.i, align 4
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %83 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %73, ptr %flowic_mark.i, align 8
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %84 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %74, ptr %flowic_tos.i, align 4
  %flowic_scope.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %85 = ptrtoint ptr %flowic_scope.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %flowic_scope.i, align 1
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %86 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 41, ptr %flowic_proto.i, align 2
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %87 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %flowic_flags.i, align 1
  %flowic_secid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %88 = ptrtoint ptr %flowic_secid.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %flowic_secid.i, align 8
  %flowic_tun_key.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %89 = ptrtoint ptr %flowic_tun_key.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 0, ptr %flowic_tun_key.i, align 8
  %flowic_uid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %90 = ptrtoint ptr %flowic_uid.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call.i70, ptr %flowic_uid.i, align 4
  %daddr10.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %91 = ptrtoint ptr %daddr10.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %dst.6, ptr %daddr10.i, align 4
  %saddr11.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %92 = ptrtoint ptr %saddr11.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %76, ptr %saddr11.i, align 8
  %uli.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %93 = ptrtoint ptr %uli.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %uli.i, align 8
  %sport14.i = getelementptr inbounds %struct.anon.83, ptr %uli.i, i32 0, i32 1
  %94 = ptrtoint ptr %sport14.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %sport14.i, align 2
  %flowic_multipath_hash.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %95 = ptrtoint ptr %flowic_multipath_hash.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %flowic_multipath_hash.i, align 8
  %dst_cache = getelementptr i8, ptr %dev, i32 2356
  %call109 = call ptr @dst_cache_get_ip4(ptr noundef %dst_cache, ptr noundef %saddr11.i) #20
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %if.then111, label %if.end101.if.end120_crit_edge

if.end101.if.end120_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end120

if.then111:                                       ; preds = %if.end101
  %96 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net, align 4
  %call113 = call ptr @ip_route_output_flow(ptr noundef %97, ptr noundef nonnull %fl4, ptr noundef null) #20
  %cmp.i71 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then111.tx_error_icmp_crit_edge, label %if.end116

if.then111.tx_error_icmp_crit_edge:               ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_error_icmp

if.end116:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #22
  %98 = ptrtoint ptr %saddr11.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %saddr11.i, align 8
  call void @dst_cache_set_ip4(ptr noundef %dst_cache, ptr noundef %call113, i32 noundef %99) #20
  br label %if.end120

if.end120:                                        ; preds = %if.end116, %if.end101.if.end120_crit_edge
  %rt.0 = phi ptr [ %call109, %if.end101.if.end120_crit_edge ], [ %call113, %if.end116 ]
  %rt_type = getelementptr inbounds %struct.rtable, ptr %rt.0, i32 0, i32 3
  %100 = ptrtoint ptr %rt_type to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %rt_type, align 4
  %.off = add i16 %101, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch6 = icmp ult i16 %.off, 2
  br i1 %switch6, label %if.end133, label %if.then129

if.then129:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #22
  call void @dst_release(ptr noundef %rt.0) #20
  br label %tx_error_icmp

if.end133:                                        ; preds = %if.end120
  %102 = ptrtoint ptr %rt.0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rt.0, align 4
  %cmp136 = icmp eq ptr %103, %dev
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #22
  call void @dst_release(ptr noundef %rt.0) #20
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %104 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %collisions, align 4
  %inc140 = add i32 %105, 1
  store i32 %inc140, ptr %collisions, align 4
  br label %tx_error

if.end141:                                        ; preds = %if.end133
  %call142 = call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef 256) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %if.then144

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #22
  call void @dst_release(ptr noundef %rt.0) #20
  br label %tx_error

if.end145:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool146.not = icmp eq i16 %7, 0
  br i1 %tobool146.not, label %if.end145.if.end173_crit_edge, label %if.then147

if.end145.if.end173_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end173

if.then147:                                       ; preds = %if.end145
  %ops.i72 = getelementptr inbounds %struct.dst_entry, ptr %rt.0, i32 0, i32 1
  %106 = ptrtoint ptr %ops.i72 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i72, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mtu.i, align 4
  %call.i73 = call i32 %109(ptr noundef %rt.0) #20
  %sub = sub i32 %call.i73, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %sub)
  %cmp150 = icmp slt i32 %sub, 68
  br i1 %cmp150, label %if.then152, label %if.end156

if.then152:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #22
  %collisions154 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %110 = ptrtoint ptr %collisions154 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %collisions154, align 4
  %inc155 = add i32 %111, 1
  store i32 %inc155, ptr %collisions154, align 4
  call void @dst_release(ptr noundef %rt.0) #20
  br label %tx_error

if.end156:                                        ; preds = %if.then147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %sub)
  %cmp157 = icmp ult i32 %sub, 1280
  %spec.select = select i1 %cmp157, i16 0, i16 %7
  %112 = call i32 @llvm.umax.i32(i32 %sub, i32 1280)
  %113 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool164.not = icmp eq i32 %114, 0
  br i1 %tobool164.not, label %if.end156.if.end166_crit_edge, label %if.then165

if.end156.if.end166_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end166

if.then165:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @skb_dst_update_pmtu_no_confirm(ptr noundef %skb, i32 noundef %112)
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end156.if.end166_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %115 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %112)
  %cmp167 = icmp ugt i32 %116, %112
  br i1 %cmp167, label %land.lhs.true169, label %if.end166.if.end173_crit_edge

if.end166.if.end173_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end173

land.lhs.true169:                                 ; preds = %if.end166
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %117 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool.i.not = icmp eq i16 %120, 0
  br i1 %tobool.i.not, label %if.then171, label %land.lhs.true169.if.end173_crit_edge

land.lhs.true169.if.end173_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end173

if.then171:                                       ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #22
  call void @icmpv6_ndo_send(ptr noundef %skb, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %112) #20
  call void @dst_release(ptr noundef %rt.0) #20
  br label %tx_error

if.end173:                                        ; preds = %land.lhs.true169.if.end173_crit_edge, %if.end166.if.end173_crit_edge, %if.end145.if.end173_crit_edge
  %df.1 = phi i16 [ %spec.select, %land.lhs.true169.if.end173_crit_edge ], [ %spec.select, %if.end166.if.end173_crit_edge ], [ 0, %if.end145.if.end173_crit_edge ]
  %err_count = getelementptr i8, ptr %dev, i32 2332
  %121 = ptrtoint ptr %err_count to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %err_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp174 = icmp sgt i32 %122, 0
  br i1 %cmp174, label %if.then176, label %if.end173.if.end186_crit_edge

if.end173.if.end186_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end186

if.then176:                                       ; preds = %if.end173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %err_time = getelementptr i8, ptr %dev, i32 2328
  %124 = ptrtoint ptr %err_time to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %err_time, align 4
  %add177.neg = add i32 %123, -3000
  %sub178 = sub i32 %add177.neg, %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub178)
  %cmp179 = icmp slt i32 %sub178, 0
  br i1 %cmp179, label %if.then181, label %if.else183

if.then181:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #22
  %dec = add nsw i32 %122, -1
  %126 = ptrtoint ptr %err_count to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %dec, ptr %err_count, align 4
  call fastcc void @dst_link_failure(ptr noundef %skb)
  br label %if.end186

if.else183:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #22
  %127 = ptrtoint ptr %err_count to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %err_count, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.else183, %if.then181, %if.end173.if.end186_crit_edge
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 19
  %128 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %hard_header_len, align 2
  %conv187 = zext i16 %129 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 21
  %130 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %needed_headroom, align 8
  %conv188 = zext i16 %131 to i32
  %add189 = add nuw nsw i32 %conv188, %conv187
  %and190 = and i32 %add189, 131056
  %add191 = add i32 %13, 36
  %add192 = add i32 %add191, %and190
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %132 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i, align 4
  %134 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %135 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add192)
  %cmp194 = icmp ult i32 %sub.ptr.sub.i, %add192
  br i1 %cmp194, label %if.end186.if.then204_crit_edge, label %lor.lhs.false

if.end186.if.then204_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then204

lor.lhs.false:                                    ; preds = %if.end186
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #20
  %136 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp.i74.not = icmp eq i32 %137, 1
  br i1 %cmp.i74.not, label %lor.lhs.false198, label %lor.lhs.false.if.then204_crit_edge

lor.lhs.false.if.then204_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then204

lor.lhs.false198:                                 ; preds = %lor.lhs.false
  %call199 = call fastcc i32 @skb_cloned(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %lor.lhs.false198.if.end218_crit_edge, label %land.lhs.true201

lor.lhs.false198.if.end218_crit_edge:             ; preds = %lor.lhs.false198
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end218

land.lhs.true201:                                 ; preds = %lor.lhs.false198
  %call202 = call fastcc i32 @skb_clone_writable(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %land.lhs.true201.if.then204_crit_edge, label %land.lhs.true201.if.end218_crit_edge

land.lhs.true201.if.end218_crit_edge:             ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end218

land.lhs.true201.if.then204_crit_edge:            ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then204

if.then204:                                       ; preds = %land.lhs.true201.if.then204_crit_edge, %lor.lhs.false.if.then204_crit_edge, %if.end186.if.then204_crit_edge
  %call205 = call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef %add192) #20
  %tobool206.not = icmp eq ptr %call205, null
  br i1 %tobool206.not, label %cleanup215.thread, label %if.end210

cleanup215.thread:                                ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #22
  call void @dst_release(ptr noundef %rt.0) #20
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %138 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tx_dropped, align 4
  %inc209 = add i32 %139, 1
  store i32 %inc209, ptr %tx_dropped, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #20
  br label %cleanup242

if.end210:                                        ; preds = %if.then204
  %140 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %tobool211.not = icmp eq ptr %142, null
  br i1 %tobool211.not, label %if.end210.cleanup215_crit_edge, label %if.then212

if.end210.cleanup215_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup215

if.then212:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #22
  call void @skb_set_owner_w(ptr noundef nonnull %call205, ptr noundef nonnull %142) #20
  br label %cleanup215

cleanup215:                                       ; preds = %if.then212, %if.end210.cleanup215_crit_edge
  call void @consume_skb(ptr noundef %skb) #20
  %head.i.i75 = getelementptr inbounds %struct.sk_buff, ptr %call205, i32 0, i32 18
  %143 = ptrtoint ptr %head.i.i75 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %head.i.i75, align 8
  %network_header.i.i76 = getelementptr inbounds %struct.sk_buff, ptr %call205, i32 0, i32 15, i32 0, i32 20
  %145 = ptrtoint ptr %network_header.i.i76 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %network_header.i.i76, align 4
  %conv.i.i77 = zext i16 %146 to i32
  %add.ptr.i.i78 = getelementptr i8, ptr %144, i32 %conv.i.i77
  br label %if.end218

if.end218:                                        ; preds = %cleanup215, %land.lhs.true201.if.end218_crit_edge, %lor.lhs.false198.if.end218_crit_edge
  %iph6.1 = phi ptr [ %add.ptr.i.i78, %cleanup215 ], [ %add.ptr.i.i, %land.lhs.true201.if.end218_crit_edge ], [ %add.ptr.i.i, %lor.lhs.false198.if.end218_crit_edge ]
  %skb.addr.1 = phi ptr [ %call205, %cleanup215 ], [ %skb, %land.lhs.true201.if.end218_crit_edge ], [ %skb, %lor.lhs.false198.if.end218_crit_edge ]
  %ttl219 = getelementptr i8, ptr %dev, i32 2404
  %147 = ptrtoint ptr %ttl219 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ttl219, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp221 = icmp eq i8 %148, 0
  br i1 %cmp221, label %if.then223, label %if.end218.if.end224_crit_edge

if.end218.if.end224_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end224

if.then223:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #22
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %iph6.1, i32 0, i32 4
  %149 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %hop_limit, align 1
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.end218.if.end224_crit_edge
  %ttl.0 = phi i8 [ %150, %if.then223 ], [ %148, %if.end218.if.end224_crit_edge ]
  %151 = ptrtoint ptr %iph6.1 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %iph6.1, align 2
  %153 = trunc i16 %152 to i8
  %154 = lshr i8 %153, 4
  %155 = and i8 %154, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %155)
  %cmp.i.not.i = icmp eq i8 %155, 3
  %spec.select.i80 = select i1 %cmp.i.not.i, i8 2, i8 %155
  %156 = and i8 %tos.0, -4
  %or.i = or i8 %spec.select.i80, %156
  %encap.i = getelementptr i8, ptr %dev, i32 2428
  %157 = ptrtoint ptr %encap.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %encap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %158)
  %cmp.i81 = icmp eq i16 %158, 0
  br i1 %cmp.i81, label %if.end224.if.end231_crit_edge, label %if.end.i

if.end224.if.end231_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end231

if.end.i:                                         ; preds = %if.end224
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %158)
  %cmp5.i = icmp ugt i16 %158, 7
  br i1 %cmp5.i, label %if.end.i.if.then230_crit_edge, label %if.end8.i

if.end.i.if.then230_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then230

if.end8.i:                                        ; preds = %if.end.i
  %159 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i.i = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %162, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !180
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i.i = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i.i, label %if.end8.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end8.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i82

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i

if.then.i.i82:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #20
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i82, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end8.i.rcu_read_lock.exit.i_crit_edge
  %163 = ptrtoint ptr %encap.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %encap.i, align 4
  %idxprom.i = zext i16 %164 to i32
  %arrayidx.i83 = getelementptr [8 x ptr], ptr @iptun_encaps, i32 0, i32 %idxprom.i
  %165 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile ptr, ptr %arrayidx.i83, align 4
  %call.i84 = call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %land.lhs.true.i86, label %rcu_read_lock.exit.i.do.end19.i_crit_edge

rcu_read_lock.exit.i.do.end19.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end19.i

land.lhs.true.i86:                                ; preds = %rcu_read_lock.exit.i
  %call12.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i86.do.end19.i_crit_edge, label %land.lhs.true14.i

land.lhs.true.i86.do.end19.i_crit_edge:           ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end19.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i86
  %.b36.i = load i1, ptr @ip_tunnel_encap.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true14.i.do.end19.i_crit_edge, label %if.then16.i

land.lhs.true14.i.do.end19.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end19.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ip_tunnel_encap.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 371, ptr noundef nonnull @.str.3) #20
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then16.i, %land.lhs.true14.i.do.end19.i_crit_edge, %land.lhs.true.i86.do.end19.i_crit_edge, %rcu_read_lock.exit.i.do.end19.i_crit_edge
  %tobool21.not.i = icmp eq ptr %166, null
  br i1 %tobool21.not.i, label %do.end19.i.if.end29.i_crit_edge, label %land.rhs.i87, !prof !173

do.end19.i.if.end29.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29.i

land.rhs.i87:                                     ; preds = %do.end19.i
  %build_header.i = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %build_header.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %build_header.i, align 4
  %tobool22.not.i = icmp eq ptr %168, null
  br i1 %tobool22.not.i, label %land.rhs.i87.if.end29.i_crit_edge, label %if.then25.i, !prof !173

land.rhs.i87.if.end29.i_crit_edge:                ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29.i

if.then25.i:                                      ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #22
  %call28.i = call i32 %168(ptr noundef %skb.addr.1, ptr noundef %encap.i, ptr noundef nonnull %protocol, ptr noundef nonnull %fl4) #20
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %land.rhs.i87.if.end29.i_crit_edge, %do.end19.i.if.end29.i_crit_edge
  %ret.0.i = phi i32 [ %call28.i, %if.then25.i ], [ -22, %land.rhs.i87.if.end29.i_crit_edge ], [ -22, %do.end19.i.if.end29.i_crit_edge ]
  %call.i37.i = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i37.i, label %if.end29.i.ip_tunnel_encap.exit_crit_edge, label %land.lhs.true.i40.i

if.end29.i.ip_tunnel_encap.exit_crit_edge:        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ip_tunnel_encap.exit

land.lhs.true.i40.i:                              ; preds = %if.end29.i
  %call1.i38.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call1.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i40.i.ip_tunnel_encap.exit_crit_edge, label %land.lhs.true2.i42.i

land.lhs.true.i40.i.ip_tunnel_encap.exit_crit_edge: ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ip_tunnel_encap.exit

land.lhs.true2.i42.i:                             ; preds = %land.lhs.true.i40.i
  %.b4.i41.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41.i, label %land.lhs.true2.i42.i.ip_tunnel_encap.exit_crit_edge, label %if.then.i43.i

land.lhs.true2.i42.i.ip_tunnel_encap.exit_crit_edge: ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ip_tunnel_encap.exit

if.then.i43.i:                                    ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #20
  br label %ip_tunnel_encap.exit

ip_tunnel_encap.exit:                             ; preds = %if.then.i43.i, %land.lhs.true2.i42.i.ip_tunnel_encap.exit_crit_edge, %land.lhs.true.i40.i.ip_tunnel_encap.exit_crit_edge, %if.end29.i.ip_tunnel_encap.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !181
  %169 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i44.i = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i.i.i.i44.i to ptr
  %preempt_count.i.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %preempt_count.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %preempt_count.i.i.i.i45.i, align 4
  %sub.i.i.i.i = add i32 %172, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i45.i, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp228 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp228, label %ip_tunnel_encap.exit.if.then230_crit_edge, label %ip_tunnel_encap.exit.if.end231_crit_edge

ip_tunnel_encap.exit.if.end231_crit_edge:         ; preds = %ip_tunnel_encap.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end231

ip_tunnel_encap.exit.if.then230_crit_edge:        ; preds = %ip_tunnel_encap.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then230

if.then230:                                       ; preds = %ip_tunnel_encap.exit.if.then230_crit_edge, %if.end.i.if.then230_crit_edge
  call void @dst_release(ptr noundef %rt.0) #20
  br label %tx_error

if.end231:                                        ; preds = %ip_tunnel_encap.exit.if.end231_crit_edge, %if.end224.if.end231_crit_edge
  %173 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 14
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 41, ptr %173, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 3
  %175 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %bf.load.i = load i32, ptr %inner_protocol_type.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4194304
  store i32 %bf.set.i, ptr %inner_protocol_type.i, align 2
  %176 = ptrtoint ptr %saddr11.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %saddr11.i, align 8
  %178 = ptrtoint ptr %daddr10.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %daddr10.i, align 4
  %180 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %protocol, align 1
  %182 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %net, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %184 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %nd_net.i, align 4
  %cmp.i89 = icmp ne ptr %183, %185
  call void @iptunnel_xmit(ptr noundef null, ptr noundef %rt.0, ptr noundef %skb.addr.1, i32 noundef %177, i32 noundef %179, i8 noundef zeroext %181, i8 noundef zeroext %or.i, i8 noundef zeroext %ttl.0, i16 noundef zeroext %df.1, i1 noundef zeroext %cmp.i89) #20
  br label %cleanup242

tx_error_icmp:                                    ; preds = %if.then129, %if.then111.tx_error_icmp_crit_edge
  %tx_carrier_errors131 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %186 = ptrtoint ptr %tx_carrier_errors131 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %tx_carrier_errors131, align 4
  %inc132 = add i32 %187, 1
  store i32 %inc132, ptr %tx_carrier_errors131, align 4
  %188 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 8
  %and.i.i = and i32 %190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i91 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i91, label %tx_error_icmp.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i93

tx_error_icmp.skb_dst.exit.i_crit_edge:           ; preds = %tx_error_icmp
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit.i

land.lhs.true.i.i93:                              ; preds = %tx_error_icmp
  %call.i.i92 = call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92)
  %tobool1.not.i.i = icmp eq i32 %call.i.i92, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i93.skb_dst.exit.i_crit_edge

land.lhs.true.i.i93.skb_dst.exit.i_crit_edge:     ; preds = %land.lhs.true.i.i93
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i93
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !173

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i93.skb_dst.exit.i_crit_edge, %tx_error_icmp.skb_dst.exit.i_crit_edge
  %191 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %188, align 8
  %and25.i.i = and i32 %192, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i94 = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i94, label %skb_dst.exit.i.tx_error_crit_edge, label %land.lhs.true.i97

skb_dst.exit.i.tx_error_crit_edge:                ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_error

land.lhs.true.i97:                                ; preds = %skb_dst.exit.i
  %193 = inttoptr i32 %and25.i.i to ptr
  %ops.i95 = getelementptr inbounds %struct.dst_entry, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %ops.i95 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ops.i95, align 4
  %tobool1.not.i96 = icmp eq ptr %195, null
  br i1 %tobool1.not.i96, label %land.lhs.true.i97.tx_error_crit_edge, label %land.lhs.true2.i

land.lhs.true.i97.tx_error_crit_edge:             ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_error

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i97
  %link_failure.i = getelementptr inbounds %struct.dst_ops, ptr %195, i32 0, i32 10
  %196 = ptrtoint ptr %link_failure.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %link_failure.i, align 8
  %tobool4.not.i = icmp eq ptr %197, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.tx_error_crit_edge, label %if.then.i98

land.lhs.true2.i.tx_error_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %tx_error

if.then.i98:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  call void %197(ptr noundef %skb) #20
  br label %tx_error

tx_error:                                         ; preds = %if.then.i98, %land.lhs.true2.i.tx_error_crit_edge, %land.lhs.true.i97.tx_error_crit_edge, %skb_dst.exit.i.tx_error_crit_edge, %if.then230, %if.then171, %if.then152, %if.then144, %if.then138, %neigh_release.exit69.tx_error_crit_edge, %if.then72, %land.lhs.true69.tx_error_crit_edge, %do.body57, %neigh_release.exit.tx_error_crit_edge, %if.then23, %land.lhs.true.tx_error_crit_edge, %do.body
  %skb.addr.2 = phi ptr [ %skb, %if.then138 ], [ %skb, %if.then144 ], [ %skb, %if.then152 ], [ %skb.addr.1, %if.then230 ], [ %skb, %if.then171 ], [ %skb, %do.body ], [ %skb, %do.body57 ], [ %skb, %skb_dst.exit.i.tx_error_crit_edge ], [ %skb, %land.lhs.true.i97.tx_error_crit_edge ], [ %skb, %land.lhs.true2.i.tx_error_crit_edge ], [ %skb, %if.then.i98 ], [ %skb, %if.then23 ], [ %skb, %land.lhs.true.tx_error_crit_edge ], [ %skb, %neigh_release.exit.tx_error_crit_edge ], [ %skb, %if.then72 ], [ %skb, %land.lhs.true69.tx_error_crit_edge ], [ %skb, %neigh_release.exit69.tx_error_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb.addr.2, i32 noundef 0) #20
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %198 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %tx_errors, align 4
  %inc241 = add i32 %199, 1
  store i32 %inc241, ptr %tx_errors, align 4
  br label %cleanup242

cleanup242:                                       ; preds = %tx_error, %if.end231, %cleanup215.thread
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %protocol) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_xmit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip4(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_dst_update_pmtu_no_confirm(ptr noundef %skb, i32 noundef %mtu) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !173

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not = icmp eq i32 %and25.i, 0
  br i1 %tobool.not, label %skb_dst.exit.if.end_crit_edge, label %land.lhs.true

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %skb_dst.exit
  %ops = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %update_pmtu = getelementptr inbounds %struct.dst_ops, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %update_pmtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_pmtu, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  tail call void %9(ptr noundef nonnull %5, ptr noundef null, ptr noundef %skb, i32 noundef %mtu, i1 noundef zeroext false) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %skb_dst.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_ndo_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dst_link_failure(ptr noundef %skb) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !173

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not = icmp eq i32 %and25.i, 0
  br i1 %tobool.not, label %skb_dst.exit.if.end_crit_edge, label %land.lhs.true

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %skb_dst.exit
  %5 = inttoptr i32 %and25.i to ptr
  %ops = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %link_failure = getelementptr inbounds %struct.dst_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %link_failure to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_failure, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #22
  tail call void %9(ptr noundef %skb) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %skb_dst.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_cloned(ptr nocapture noundef readonly %skb) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %cloned = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %cloned, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i, align 4
  %dataref = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref, i32 noundef 4) #20
  %3 = ptrtoint ptr %dataref to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref, align 4
  %and = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp ne i32 %and, 1
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %5 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_clone_writable(ptr nocapture noundef readonly %skb) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.land.rhs_crit_edge, label %skb_header_cloned.exit

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs

skb_header_cloned.exit:                           ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref1.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i, i32 noundef 4) #20
  %3 = ptrtoint ptr %dataref1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref1.i, align 4
  %and.i = and i32 %4, 65535
  %shr.i = ashr i32 %4, 16
  %sub.i = sub nsw i32 %and.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i.not = icmp eq i32 %sub.i, 1
  br i1 %cmp.i.not, label %skb_header_cloned.exit.land.rhs_crit_edge, label %skb_header_cloned.exit.land.end_crit_edge

skb_header_cloned.exit.land.end_crit_edge:        ; preds = %skb_header_cloned.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end

skb_header_cloned.exit.land.rhs_crit_edge:        ; preds = %skb_header_cloned.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs

land.rhs:                                         ; preds = %skb_header_cloned.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %hdr_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %9 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hdr_len, align 2
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %conv)
  %cmp = icmp ule i32 %sub.ptr.sub.i, %conv
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %skb_header_cloned.exit.land.end_crit_edge
  %11 = phi i32 [ 0, %skb_header_cloned.exit.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iptunnel_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_siocdevprivate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipip6_tunnel_locate(ptr noundef %net, ptr noundef %parms, i32 noundef %create) unnamed_addr #4 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %daddr = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 9
  %0 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saddr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #20
  %4 = call ptr @memset(ptr %name, i32 255, i32 16)
  %5 = load i32, ptr @sit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %5)
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr, align 4
  %8 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %shr.i = lshr i32 %7, 4
  %xor.i = xor i32 %shr.i, %7
  %and.i = and i32 %xor.i, 15
  %h.0.i = select i1 %tobool.not.i, i32 0, i32 %and.i
  %prio.0.i = select i1 %tobool.not.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  %shr6.i = lshr i32 %9, 4
  %xor7.i = xor i32 %shr6.i, %9
  %and8.i = and i32 %xor7.i, 15
  %xor9.i = select i1 %tobool3.not.i, i32 0, i32 %and8.i
  %h.1.i = xor i32 %xor9.i, %h.0.i
  %not.tobool3.not.i = xor i1 %tobool3.not.i, true
  %or5.i = zext i1 %not.tobool3.not.i to i32
  %prio.1.i = or i32 %prio.0.i, %or5.i
  %arrayidx.i = getelementptr %struct.sit_net, ptr %call, i32 0, i32 4, i32 %prio.1.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx11.i = getelementptr ptr, ptr %11, i32 %h.1.i
  %link = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %tp.0 = phi ptr [ %arrayidx11.i, %entry ], [ %13, %for.cond.backedge ]
  %call3 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call3, label %for.cond.do.end_crit_edge, label %land.lhs.true

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b91 = load i1, ptr @ipip6_tunnel_locate.__warned, align 1
  br i1 %.b91, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_locate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 240, ptr noundef nonnull @.str.8) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %12 = ptrtoint ptr %tp.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp.0, align 4
  %cmp.not = icmp eq ptr %13, null
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end
  %saddr9 = getelementptr inbounds %struct.ip_tunnel, ptr %13, i32 0, i32 15, i32 6, i32 8
  %14 = ptrtoint ptr %saddr9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saddr9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %15)
  %cmp10 = icmp eq i32 %3, %15
  br i1 %cmp10, label %land.lhs.true11, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.lhs.true16.for.cond.backedge_crit_edge, %land.lhs.true11.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  br label %for.cond

land.lhs.true11:                                  ; preds = %for.body
  %daddr14 = getelementptr inbounds %struct.ip_tunnel, ptr %13, i32 0, i32 15, i32 6, i32 9
  %16 = ptrtoint ptr %daddr14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %daddr14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %17)
  %cmp15 = icmp eq i32 %1, %17
  br i1 %cmp15, label %land.lhs.true16, label %land.lhs.true11.for.cond.backedge_crit_edge

land.lhs.true11.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.backedge

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %link, align 4
  %link18 = getelementptr inbounds %struct.ip_tunnel, ptr %13, i32 0, i32 15, i32 1
  %20 = ptrtoint ptr %link18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp19 = icmp eq i32 %19, %21
  br i1 %cmp19, label %if.then20, label %land.lhs.true16.for.cond.backedge_crit_edge

land.lhs.true16.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.backedge

if.then20:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool21.not = icmp eq i32 %create, 0
  %. = select i1 %tobool21.not, ptr %13, ptr null
  br label %cleanup

for.end:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool24.not = icmp eq i32 %create, 0
  br i1 %tobool24.not, label %for.end.cleanup_crit_edge, label %if.end26

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end26:                                         ; preds = %for.end
  %22 = ptrtoint ptr %parms to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %parms, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool28.not = icmp eq i8 %23, 0
  br i1 %tobool28.not, label %if.else38, label %if.then29

if.then29:                                        ; preds = %if.end26
  %call31 = tail call zeroext i1 @dev_valid_name(ptr noundef %parms) #20
  br i1 %call31, label %if.end33, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end33:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  %call37 = call i32 @strlcpy(ptr noundef nonnull %name, ptr noundef %parms, i32 noundef 16) #20
  br label %if.end41

if.else38:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  %24 = call ptr @memcpy(ptr %name, ptr @.str.22, i32 6)
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.end33
  %call43 = call ptr @alloc_netdev_mqs(i32 noundef 180, ptr noundef nonnull %name, i8 noundef zeroext 0, ptr noundef nonnull @ipip6_tunnel_setup, i32 noundef 1, i32 noundef 1) #20
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %net, ptr %nd_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call43, i32 2304
  %parms48 = getelementptr i8, ptr %call43, i32 2364
  %26 = call ptr @memcpy(ptr %parms48, ptr %parms, i32 52)
  %call49 = call fastcc i32 @ipip6_tunnel_create(ptr noundef nonnull %call43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %failed_free, label %if.end52

if.end52:                                         ; preds = %if.end46
  %27 = ptrtoint ptr %parms to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %parms, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool55.not = icmp eq i8 %28, 0
  br i1 %tobool55.not, label %if.then56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  %call61 = call ptr @strcpy(ptr noundef %parms, ptr noundef nonnull %call43) #24
  br label %cleanup

failed_free:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  call void @free_netdev(ptr noundef nonnull %call43) #20
  br label %cleanup

cleanup:                                          ; preds = %failed_free, %if.then56, %if.end52.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then20
  %retval.0 = phi ptr [ %., %if.then20 ], [ null, %if.end41.cleanup_crit_edge ], [ %add.ptr.i, %if.then56 ], [ %add.ptr.i, %if.end52.cleanup_crit_edge ], [ null, %if.then29.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ], [ null, %failed_free ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #20
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_valid_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipip6_tunnel_create(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = load i32, ptr @sit_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %saddr = getelementptr i8, ptr %dev, i32 2408
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %saddr, i32 noundef 4) #20
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %3 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %daddr, align 4
  %5 = ptrtoint ptr %broadcast to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %broadcast, align 4
  %i_flags = getelementptr i8, ptr %dev, i32 2384
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_flags, align 4
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags, align 16
  %or = or i64 %10, 8
  store i64 %or, ptr %priv_flags, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 136
  %11 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sit_link_ops, ptr %rtnl_link_ops, align 4
  %call6 = tail call i32 @register_netdevice(ptr noundef %dev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %fb_tunnel_dev.i = getelementptr inbounds %struct.sit_net, ptr %call2, i32 0, i32 5
  %12 = ptrtoint ptr %fb_tunnel_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb_tunnel_dev.i, align 4
  %cmp.i = icmp eq ptr %13, %dev
  %tobool.not.i = icmp eq ptr %13, null
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  %ip6rd.i = getelementptr i8, ptr %dev, i32 2436
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %ip6rd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 537001984, ptr %ip6rd.i, align 4
  %arrayidx1.i.i.i = getelementptr i8, ptr %dev, i32 2440
  %prefixlen.i = getelementptr i8, ptr %dev, i32 2456
  %15 = call ptr @memset(ptr %arrayidx1.i.i.i, i32 0, i32 16)
  %16 = ptrtoint ptr %prefixlen.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 16, ptr %prefixlen.i, align 4
  %relay_prefixlen.i = getelementptr i8, ptr %dev, i32 2458
  %17 = ptrtoint ptr %relay_prefixlen.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %relay_prefixlen.i, align 2
  br label %ipip6_tunnel_clone_6rd.exit

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  %ip6rd8.i = getelementptr i8, ptr %13, i32 2436
  %18 = call ptr @memcpy(ptr %ip6rd.i, ptr %ip6rd8.i, i32 24)
  br label %ipip6_tunnel_clone_6rd.exit

ipip6_tunnel_clone_6rd.exit:                      ; preds = %if.else.i, %if.then.i
  tail call fastcc void @ipip6_tunnel_link(ptr noundef %call2, ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %ipip6_tunnel_clone_6rd.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ipip6_tunnel_clone_6rd.exit ], [ %call6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipip6_tunnel_link(ptr nocapture noundef readonly %sitn, ptr noundef %t) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %daddr.i.i = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 15, i32 6, i32 9
  %0 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %daddr.i.i, align 4
  %saddr.i.i = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 15, i32 6, i32 8
  %2 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saddr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  %prio.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not.i.i = icmp eq i32 %3, 0
  %not.tobool3.not.i.i = xor i1 %tobool3.not.i.i, true
  %or5.i.i = zext i1 %not.tobool3.not.i.i to i32
  %prio.1.i.i = or i32 %prio.0.i.i, %or5.i.i
  %arrayidx.i.i = getelementptr %struct.sit_net, ptr %sitn, i32 0, i32 4, i32 %prio.1.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call2, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b69 = load i1, ptr @ipip6_tunnel_link.__warned, align 1
  br i1 %.b69, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_link.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 179, ptr noundef nonnull @.str.8) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %shr6.i.i = lshr i32 %3, 4
  %xor7.i.i = xor i32 %shr6.i.i, %3
  %and8.i.i = and i32 %xor7.i.i, 15
  %xor9.i.i = select i1 %tobool3.not.i.i, i32 0, i32 %and8.i.i
  %shr.i.i = lshr i32 %1, 4
  %xor.i.i = xor i32 %shr.i.i, %1
  %and.i.i = and i32 %xor.i.i, 15
  %h.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 %and.i.i
  %h.1.i.i = xor i32 %xor9.i.i, %h.0.i.i
  %arrayidx11.i.i = getelementptr ptr, ptr %5, i32 %h.1.i.i
  %6 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !190
  %8 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %t, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !191
  %9 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %t, ptr %arrayidx11.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipip6_tunnel_update_6rd(ptr nocapture noundef %t, ptr nocapture noundef readonly %ip6rd) unnamed_addr #4 align 64 {
entry:
  %prefix = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prefix) #20
  %0 = getelementptr inbounds [4 x i32], ptr %prefix, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %prefix, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %prefix, i32 0, i32 3
  %relay_prefixlen = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd, i32 0, i32 3
  %3 = call ptr @memset(ptr %prefix, i32 255, i32 16)
  %4 = ptrtoint ptr %relay_prefixlen to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %relay_prefixlen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %5)
  %cmp = icmp ugt i16 %5, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %5 to i32
  %prefixlen = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd, i32 0, i32 2
  %6 = ptrtoint ptr %prefixlen to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %prefixlen, align 4
  %conv2 = zext i16 %7 to i32
  %sub = sub nuw nsw i32 32, %conv
  %add = add nuw nsw i32 %sub, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp5 = icmp ugt i32 %add, 64
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i53 = lshr i32 %conv2, 3
  %and.i = and i32 %conv2, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %7)
  %8 = icmp ugt i16 %7, 127
  %9 = sub nsw i32 16, %shr.i53
  %10 = select i1 %8, i32 0, i32 %9
  %11 = getelementptr i8, ptr %prefix, i32 %shr.i53
  %12 = call ptr @memset(ptr %11, i32 0, i32 %10)
  %13 = call ptr @memcpy(ptr %prefix, ptr %ip6rd, i32 %shr.i53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.ipv6_addr_prefix.exit_crit_edge, label %if.then.i

if.end.ipv6_addr_prefix.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %ipv6_addr_prefix.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr [16 x i8], ptr %ip6rd, i32 0, i32 %shr.i53
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %shr4.i = lshr i32 65280, %and.i
  %16 = trunc i32 %shr4.i to i8
  %conv6.i = and i8 %15, %16
  %arrayidx8.i = getelementptr [16 x i8], ptr %prefix, i32 0, i32 %shr.i53
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6.i, ptr %arrayidx8.i, align 1
  br label %ipv6_addr_prefix.exit

ipv6_addr_prefix.exit:                            ; preds = %if.then.i, %if.end.ipv6_addr_prefix.exit_crit_edge
  %18 = ptrtoint ptr %prefix to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prefix, align 4
  %20 = ptrtoint ptr %ip6rd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ip6rd, align 4
  %xor.i = xor i32 %21, %19
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %ip6rd, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %25, %23
  %or.i = or i32 %xor7.i, %xor.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %ip6rd, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %29, %27
  %or13.i = or i32 %or.i, %xor12.i
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %ip6rd, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %33, %31
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %if.end12, label %ipv6_addr_prefix.exit.cleanup_crit_edge

ipv6_addr_prefix.exit.cleanup_crit_edge:          ; preds = %ipv6_addr_prefix.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end12:                                         ; preds = %ipv6_addr_prefix.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  %relay_prefix15 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd, i32 0, i32 1
  %34 = ptrtoint ptr %relay_prefix15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %relay_prefix15, align 4
  %shl = shl nsw i32 -1, %sub
  %and = and i32 %35, %shl
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end12.if.end19_crit_edge
  %relay_prefix.0 = phi i32 [ %and, %if.then14 ], [ 0, %if.end12.if.end19_crit_edge ]
  %relay_prefix20 = getelementptr inbounds %struct.ip_tunnel_6rd, ptr %ip6rd, i32 0, i32 1
  %36 = ptrtoint ptr %relay_prefix20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %relay_prefix20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %relay_prefix.0, i32 %37)
  %cmp21.not = icmp eq i32 %relay_prefix.0, %37
  br i1 %cmp21.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  %ip6rd25 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 20
  %38 = call ptr @memcpy(ptr %ip6rd25, ptr %prefix, i32 16)
  %relay_prefix28 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 20, i32 1
  %39 = ptrtoint ptr %relay_prefix28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %relay_prefix.0, ptr %relay_prefix28, align 4
  %40 = ptrtoint ptr %prefixlen to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %prefixlen, align 4
  %prefixlen31 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 20, i32 2
  %42 = ptrtoint ptr %prefixlen31 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %prefixlen31, align 4
  %43 = ptrtoint ptr %relay_prefixlen to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %relay_prefixlen, align 2
  %relay_prefixlen34 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 20, i32 3
  %45 = ptrtoint ptr %relay_prefixlen34 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %relay_prefixlen34, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 14, i32 1
  %47 = ptrtoint ptr %reset_ts.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %reset_ts.i, align 4
  %dev = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 2
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  tail call void @netdev_state_change(ptr noundef %49) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %ipv6_addr_prefix.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %ipv6_addr_prefix.exit.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prefix) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipip6_tunnel_update(ptr noundef %t, ptr noundef %p, i32 noundef %fwmark) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 4
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %2 = load i32, ptr @sit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  tail call fastcc void @ipip6_tunnel_unlink(ptr noundef %call, ptr noundef %t)
  tail call void @synchronize_net() #20
  %saddr = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 8
  %3 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %saddr, align 4
  %saddr3 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 15, i32 6, i32 8
  %5 = ptrtoint ptr %saddr3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %saddr3, align 4
  %daddr = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 9
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr, align 4
  %daddr7 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 15, i32 6, i32 9
  %8 = ptrtoint ptr %daddr7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %daddr7, align 4
  %dev = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void @dev_addr_mod(ptr noundef %10, i32 noundef 0, ptr noundef %saddr, i32 noundef 4) #20
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %broadcast = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daddr, align 4
  %15 = ptrtoint ptr %broadcast to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %broadcast, align 4
  tail call fastcc void @ipip6_tunnel_link(ptr noundef %call, ptr noundef %t)
  %ttl = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 5
  %16 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ttl, align 4
  %ttl16 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 15, i32 6, i32 5
  %18 = ptrtoint ptr %ttl16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ttl16, align 4
  %tos = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tos, align 1
  %tos20 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 15, i32 6, i32 1
  %21 = ptrtoint ptr %tos20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %tos20, align 1
  %frag_off = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %frag_off, align 2
  %frag_off24 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 15, i32 6, i32 4
  %24 = ptrtoint ptr %frag_off24 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %frag_off24, align 2
  %link = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 15, i32 1
  %25 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link, align 4
  %link26 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 1
  %27 = ptrtoint ptr %link26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not = icmp eq i32 %26, %28
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fwmark27 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 25
  %29 = ptrtoint ptr %fwmark27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fwmark27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %fwmark)
  %cmp28.not = icmp eq i32 %30, %fwmark
  br i1 %cmp28.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %31 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %link, align 4
  %fwmark32 = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 25
  %32 = ptrtoint ptr %fwmark32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %fwmark, ptr %fwmark32, align 4
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call fastcc void @ipip6_tunnel_bind_dev(ptr noundef %34)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i = getelementptr inbounds %struct.ip_tunnel, ptr %t, i32 0, i32 14, i32 1
  %36 = ptrtoint ptr %reset_ts.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %reset_ts.i, align 4
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void @netdev_state_change(ptr noundef %38) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_encap_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ipip6_netlink_parms(ptr noundef readonly %data, ptr nocapture noundef %parms, ptr nocapture noundef writeonly %fwmark) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %parms, i32 0, i32 52)
  %iph = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6
  %protocol = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 6
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 41, ptr %protocol, align 1
  %2 = ptrtoint ptr %iph to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 69, ptr %iph, align 4
  %ttl = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 5
  %3 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %ttl, align 4
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end74_crit_edge, label %if.end

entry.if.end74_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end74

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %link = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 1
  %8 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %link, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %arrayidx11 = getelementptr ptr, ptr %data, i32 2
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i115 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i115 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i115, align 4
  %saddr = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 8
  %13 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %saddr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  %arrayidx18 = getelementptr ptr, ptr %data, i32 3
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %if.end17.if.end24_crit_edge, label %if.then20

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i116 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i116 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i116, align 4
  %daddr = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 9
  %18 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %daddr, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end17.if.end24_crit_edge
  %arrayidx25 = getelementptr ptr, ptr %data, i32 4
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %20, null
  br i1 %tobool26.not, label %if.end24.if.end38_crit_edge, label %if.then27

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38

if.then27:                                        ; preds = %if.end24
  %add.ptr.i.i117 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i117 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i117, align 1
  %23 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool34.not = icmp eq i8 %22, 0
  br i1 %tobool34.not, label %if.then27.if.end38_crit_edge, label %if.then35

if.then27.if.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38

if.then35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #22
  %frag_off = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 4
  %24 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 16384, ptr %frag_off, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then27.if.end38_crit_edge, %if.end24.if.end38_crit_edge
  %arrayidx39 = getelementptr ptr, ptr %data, i32 5
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %26, null
  br i1 %tobool40.not, label %if.end38.if.end45_crit_edge, label %if.then41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i118 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i118 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i.i118, align 1
  %tos = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %tos, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end38.if.end45_crit_edge
  %arrayidx46 = getelementptr ptr, ptr %data, i32 10
  %30 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx46, align 4
  %tobool47.not = icmp eq ptr %31, null
  br i1 %tobool47.not, label %if.end45.if.then51_crit_edge, label %lor.lhs.false

if.end45.if.then51_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then51

lor.lhs.false:                                    ; preds = %if.end45
  %add.ptr.i.i119 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i119 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i.i119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool50.not = icmp eq i8 %33, 0
  br i1 %tobool50.not, label %lor.lhs.false.if.end54_crit_edge, label %lor.lhs.false.if.then51_crit_edge

lor.lhs.false.if.then51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then51

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end54

if.then51:                                        ; preds = %lor.lhs.false.if.then51_crit_edge, %if.end45.if.then51_crit_edge
  %frag_off53 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %frag_off53 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 16384, ptr %frag_off53, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %lor.lhs.false.if.end54_crit_edge
  %arrayidx55 = getelementptr ptr, ptr %data, i32 8
  %35 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %36, null
  br i1 %tobool56.not, label %if.end54.if.end60_crit_edge, label %if.then57

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i120 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i120 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i120, align 2
  %i_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 2
  %39 = ptrtoint ptr %i_flags to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %i_flags, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end54.if.end60_crit_edge
  %arrayidx61 = getelementptr ptr, ptr %data, i32 9
  %40 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq ptr %41, null
  br i1 %tobool62.not, label %if.end60.if.end68_crit_edge, label %if.then63

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i121 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i.i121, align 1
  %44 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %protocol, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.end60.if.end68_crit_edge
  %arrayidx69 = getelementptr ptr, ptr %data, i32 20
  %45 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx69, align 4
  %tobool70.not = icmp eq ptr %46, null
  br i1 %tobool70.not, label %if.end68.if.end74_crit_edge, label %if.then71

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end74

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i122 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i122, align 4
  %49 = ptrtoint ptr %fwmark to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fwmark, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end68.if.end74_crit_edge, %entry.if.end74_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip6_rcv(ptr noundef %skb) #4 align 64 {
entry:
  %vhdr.i.i.i.i13.i.i = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i.i.i = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %4 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %daddr, align 4
  %call3 = tail call fastcc ptr @ipip6_tunnel_lookup(ptr noundef %12, ptr noundef %6, i32 noundef %14, i32 noundef %16, i32 noundef %cond)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cond.end.cleanup72_crit_edge, label %if.then

cond.end.cleanup72_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup72

if.then:                                          ; preds = %cond.end
  %protocol = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 15, i32 6, i32 6
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %18, label %if.then.out_crit_edge [
    i8 41, label %if.then.if.end_crit_edge
    i8 0, label %if.then.if.end_crit_edge186
  ]

if.then.if.end_crit_edge186:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge186
  %20 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i, align 4
  %mac_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %mac_header, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  store i16 %conv.i, ptr %network_header.i.i, align 4
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags, align 4
  %dev = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 2
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %4, align 8
  %31 = load ptr, ptr %dev, align 4
  %priv_flags.i114 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %priv_flags.i114 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %priv_flags.i114, align 16
  %and.i115 = and i64 %33, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i115)
  %tobool.not.i = icmp eq i64 %and.i115, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %34 = tail call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %37, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !180
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i.i.i, label %if.then.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #20
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.i.rcu_read_lock.exit.i.i_crit_edge
  %38 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %saddr, align 4
  %prl1.i.i.i = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 21
  %40 = ptrtoint ptr %prl1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %prl1.i.i.i, align 4
  %call.i33.i.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i.i)
  %tobool.not.i34.i.i = icmp eq i32 %call.i33.i.i, 0
  br i1 %tobool.not.i34.i.i, label %land.lhs.true.i35.i.i, label %rcu_read_lock.exit.i.i.do.end8.i.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end8.i.i.i_crit_edge:   ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8.i.i.i

land.lhs.true.i35.i.i:                            ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i35.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i35.i.i.do.end8.i.i.i_crit_edge:    ; preds = %land.lhs.true.i35.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i35.i.i
  %.b36.i.i.i = load i1, ptr @__ipip6_tunnel_locate_prl.__warned, align 1
  br i1 %.b36.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i36.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8.i.i.i

if.then.i36.i.i:                                  ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @__ipip6_tunnel_locate_prl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 295, ptr noundef nonnull @.str.3) #20
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i36.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i35.i.i.do.end8.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end8.i.i.i_crit_edge
  %tobool10.not37.i.i.i = icmp eq ptr %41, null
  br i1 %tobool10.not37.i.i.i, label %do.end8.i.i.i.if.else7.i.i_crit_edge, label %do.end8.i.i.i.for.body.i.i.i_crit_edge

do.end8.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %do.end8.i.i.i
  br label %for.body.i.i.i

do.end8.i.i.i.if.else7.i.i_crit_edge:             ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else7.i.i

for.body.i.i.i:                                   ; preds = %do.end29.i.i.i.for.body.i.i.i_crit_edge, %do.end8.i.i.i.for.body.i.i.i_crit_edge
  %prl.038.i.i.i = phi ptr [ %45, %do.end29.i.i.i.for.body.i.i.i_crit_edge ], [ %41, %do.end8.i.i.i.for.body.i.i.i_crit_edge ]
  %addr11.i.i.i = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %prl.038.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %addr11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr11.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %39)
  %cmp.i.i.i = icmp eq i32 %43, %39
  br i1 %cmp.i.i.i, label %if.then.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %44 = ptrtoint ptr %prl.038.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %prl.038.i.i.i, align 4
  %call19.i.i.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %land.lhs.true21.i.i.i, label %for.inc.i.i.i.do.end29.i.i.i_crit_edge

for.inc.i.i.i.do.end29.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end29.i.i.i

land.lhs.true21.i.i.i:                            ; preds = %for.inc.i.i.i
  %call22.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %call22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %land.lhs.true21.i.i.i.do.end29.i.i.i_crit_edge, label %land.lhs.true24.i.i.i

land.lhs.true21.i.i.i.do.end29.i.i.i_crit_edge:   ; preds = %land.lhs.true21.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end29.i.i.i

land.lhs.true24.i.i.i:                            ; preds = %land.lhs.true21.i.i.i
  %.b3435.i.i.i = load i1, ptr @__ipip6_tunnel_locate_prl.__warned.36, align 1
  br i1 %.b3435.i.i.i, label %land.lhs.true24.i.i.i.do.end29.i.i.i_crit_edge, label %if.then26.i.i.i

land.lhs.true24.i.i.i.do.end29.i.i.i_crit_edge:   ; preds = %land.lhs.true24.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end29.i.i.i

if.then26.i.i.i:                                  ; preds = %land.lhs.true24.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @__ipip6_tunnel_locate_prl.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 295, ptr noundef nonnull @.str.3) #20
  br label %do.end29.i.i.i

do.end29.i.i.i:                                   ; preds = %if.then26.i.i.i, %land.lhs.true24.i.i.i.do.end29.i.i.i_crit_edge, %land.lhs.true21.i.i.i.do.end29.i.i.i_crit_edge, %for.inc.i.i.i.do.end29.i.i.i_crit_edge
  %tobool10.not.i.i.i = icmp eq ptr %45, null
  br i1 %tobool10.not.i.i.i, label %do.end29.i.i.i.if.else7.i.i_crit_edge, label %do.end29.i.i.i.for.body.i.i.i_crit_edge

do.end29.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %do.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i.i

do.end29.i.i.i.if.else7.i.i_crit_edge:            ; preds = %do.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else7.i.i

if.then.i.i:                                      ; preds = %for.body.i.i.i
  %flags.i.i = getelementptr inbounds %struct.ip_tunnel_prl_entry, ptr %prl.038.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags.i.i, align 4
  %48 = and i16 %47, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool1.not.i.i = icmp eq i16 %48, 0
  %ndisc_nodetype3.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %49 = ptrtoint ptr %ndisc_nodetype3.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %bf.load4.i.i = load i32, ptr %ndisc_nodetype3.i.i, align 2
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %bf.set.i.i = or i32 %bf.load4.i.i, 50331648
  %50 = ptrtoint ptr %ndisc_nodetype3.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %bf.set.i.i, ptr %ndisc_nodetype3.i.i, align 2
  br label %if.end24.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %bf.clear5.i.i = and i32 %bf.load4.i.i, -50331649
  %bf.set6.i.i = or i32 %bf.clear5.i.i, 33554432
  %51 = ptrtoint ptr %ndisc_nodetype3.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %bf.set6.i.i, ptr %ndisc_nodetype3.i.i, align 2
  br label %if.end24.i.i

if.else7.i.i:                                     ; preds = %do.end29.i.i.i.if.else7.i.i_crit_edge, %do.end8.i.i.i.if.else7.i.i_crit_edge
  %52 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i, align 8
  %54 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i.i = zext i16 %55 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %53, i32 %conv.i.i.i.i
  %saddr9.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr %saddr9.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i, align 4
  %58 = and i32 %57, -33554433
  call void @__sanitizer_cov_trace_const_cmp4(i32 24318, i32 %58)
  %cmp.i37.i.i = icmp eq i32 %58, 24318
  br i1 %cmp.i37.i.i, label %land.lhs.true.i.i, label %if.else7.i.i.if.end24.i.i_crit_edge

if.else7.i.i.if.end24.i.i_crit_edge:              ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24.i.i

land.lhs.true.i.i:                                ; preds = %if.else7.i.i
  %arrayidx.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 5, i32 0, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  %61 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.i.i = icmp eq i32 %60, %62
  br i1 %cmp.i.i, label %land.lhs.true14.i.i, label %land.lhs.true.i.i.if.end24.i.i_crit_edge

land.lhs.true.i.i.if.end24.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24.i.i

land.lhs.true14.i.i:                              ; preds = %land.lhs.true.i.i
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %call15.i.i = tail call i32 @ipv6_chk_prefix(ptr noundef %saddr9.i.i, ptr noundef %64) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %land.lhs.true14.i.i.if.end24.i.i_crit_edge, label %if.then17.i.i

land.lhs.true14.i.i.if.end24.i.i_crit_edge:       ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24.i.i

if.then17.i.i:                                    ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %ndisc_nodetype18.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %65 = ptrtoint ptr %ndisc_nodetype18.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %bf.load19.i.i = load i32, ptr %ndisc_nodetype18.i.i, align 2
  %bf.clear20.i.i = and i32 %bf.load19.i.i, -50331649
  %bf.set21.i.i = or i32 %bf.clear20.i.i, 16777216
  store i32 %bf.set21.i.i, ptr %ndisc_nodetype18.i.i, align 2
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then17.i.i, %land.lhs.true14.i.i.if.end24.i.i_crit_edge, %land.lhs.true.i.i.if.end24.i.i_crit_edge, %if.else7.i.i.if.end24.i.i_crit_edge, %if.else.i.i, %if.then2.i.i
  %tobool1.not.i = phi i1 [ false, %if.then17.i.i ], [ true, %land.lhs.true14.i.i.if.end24.i.i_crit_edge ], [ true, %land.lhs.true.i.i.if.end24.i.i_crit_edge ], [ true, %if.else7.i.i.if.end24.i.i_crit_edge ], [ false, %if.else.i.i ], [ false, %if.then2.i.i ]
  %call.i38.i.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i38.i.i, label %if.end24.i.i.packet_is_spoofed.exit_crit_edge, label %land.lhs.true.i41.i.i

if.end24.i.i.packet_is_spoofed.exit_crit_edge:    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %packet_is_spoofed.exit

land.lhs.true.i41.i.i:                            ; preds = %if.end24.i.i
  %call1.i39.i.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i.i)
  %tobool.not.i40.i.i = icmp eq i32 %call1.i39.i.i, 0
  br i1 %tobool.not.i40.i.i, label %land.lhs.true.i41.i.i.packet_is_spoofed.exit_crit_edge, label %land.lhs.true2.i43.i.i

land.lhs.true.i41.i.i.packet_is_spoofed.exit_crit_edge: ; preds = %land.lhs.true.i41.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %packet_is_spoofed.exit

land.lhs.true2.i43.i.i:                           ; preds = %land.lhs.true.i41.i.i
  %.b4.i42.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42.i.i, label %land.lhs.true2.i43.i.i.packet_is_spoofed.exit_crit_edge, label %if.then.i44.i.i

land.lhs.true2.i43.i.i.packet_is_spoofed.exit_crit_edge: ; preds = %land.lhs.true2.i43.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %packet_is_spoofed.exit

if.then.i44.i.i:                                  ; preds = %land.lhs.true2.i43.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #20
  br label %packet_is_spoofed.exit

if.end3.i:                                        ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 14
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i, align 8
  %and5.i = and i32 %67, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end3.i.if.end18_crit_edge

if.end3.i.if.end18_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.end8.i:                                        ; preds = %if.end3.i
  %conv.i.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %conv.i.i.i
  %68 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %saddr, align 4
  %saddr10.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %ip6rd.i.i.i = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 20
  %prefixlen.i.i.i = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 20, i32 2
  %70 = ptrtoint ptr %prefixlen.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %prefixlen.i.i.i, align 4
  %conv.i.i78.i = zext i16 %71 to i32
  %shr.i.i.i.i = lshr i32 %conv.i.i78.i, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %71)
  %tobool.not.i.i.i.i = icmp ult i16 %71, 32
  br i1 %tobool.not.i.i.i.i, label %if.end8.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.if.end.i.i.i.i_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i
  %shl.i.i.i.i = shl nuw nsw i32 %shr.i.i.i.i, 2
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %saddr10.i, ptr %ip6rd.i.i.i, i32 %shl.i.i.i.i) #29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, label %if.end26.thread.i

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i.i

if.end26.thread.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %72 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %daddr, align 4
  %daddr28132.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  br label %land.lhs.true.i.i.i91.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.end8.i.if.end.i.i.i.i_crit_edge
  %and.i.i.i.i = and i32 %conv.i.i78.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.then.i.i80.i_crit_edge, label %land.lhs.true5.i.i.i.i

if.end.i.i.i.i.if.then.i.i80.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i80.i

land.lhs.true5.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr i32, ptr %saddr10.i, i32 %shr.i.i.i.i
  %74 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %arrayidx6.i.i.i.i = getelementptr i32, ptr %ip6rd.i.i.i, i32 %shr.i.i.i.i
  %76 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx6.i.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %77, %75
  %sub.i.i.i.i = sub nuw nsw i32 32, %and.i.i.i.i
  %shl7.i.i.i.i = shl nsw i32 -1, %sub.i.i.i.i
  %and8.i.i.i.i = and i32 %xor.i.i.i.i, %shl7.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i.i)
  %tobool9.not.i.i.i.i = icmp eq i32 %and8.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i.i, label %land.lhs.true5.i.i.i.i.if.then.i.i80.i_crit_edge, label %land.lhs.true5.i.i.i.i.if.end26.i_crit_edge

land.lhs.true5.i.i.i.i.if.end26.i_crit_edge:      ; preds = %land.lhs.true5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26.i

land.lhs.true5.i.i.i.i.if.then.i.i80.i_crit_edge: ; preds = %land.lhs.true5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i80.i

if.then.i.i80.i:                                  ; preds = %land.lhs.true5.i.i.i.i.if.then.i.i80.i_crit_edge, %if.end.i.i.i.i.if.then.i.i80.i_crit_edge
  %relay_prefixlen.i.i.i = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 20, i32 3
  %78 = ptrtoint ptr %relay_prefixlen.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %relay_prefixlen.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %79)
  %cmp.i.i79.i = icmp ult i16 %79, 32
  %conv9.i.i.i = zext i16 %79 to i32
  br i1 %cmp.i.i79.i, label %cond.true.i.i.i, label %if.then.i.i80.i.cond.end.i.i.i_crit_edge

if.then.i.i80.i.cond.end.i.i.i_crit_edge:         ; preds = %if.then.i.i80.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %if.then.i.i80.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i.i81.i = getelementptr [4 x i32], ptr %saddr10.i, i32 0, i32 %shr.i.i.i.i
  %80 = ptrtoint ptr %arrayidx.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i81.i, align 4
  %shl.i.i.i = shl i32 %81, %and.i.i.i.i
  %shr14.i.i.i = lshr i32 %shl.i.i.i, %conv9.i.i.i
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i.i.i, %if.then.i.i80.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %shr14.i.i.i, %cond.true.i.i.i ], [ 0, %if.then.i.i80.i.cond.end.i.i.i_crit_edge ]
  %sub.i.i.i = sub nsw i32 %and.i.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp18.i.i.i = icmp sgt i32 %sub.i.i.i, 0
  br i1 %cmp18.i.i.i, label %if.then20.i.i.i, label %cond.end.i.i.i.land.lhs.true.i82.i_crit_edge

cond.end.i.i.i.land.lhs.true.i82.i_crit_edge:     ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.i82.i

if.then20.i.i.i:                                  ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.i.i.i = add nuw nsw i32 %shr.i.i.i.i, 1
  %arrayidx22.i.i.i = getelementptr [4 x i32], ptr %saddr10.i, i32 0, i32 %add.i.i.i
  %82 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx22.i.i.i, align 4
  %sub23.i.i.i = sub nuw nsw i32 32, %sub.i.i.i
  %shr24.i.i.i = lshr i32 %83, %sub23.i.i.i
  %or.i.i.i = or i32 %shr24.i.i.i, %cond.i.i.i
  br label %land.lhs.true.i82.i

land.lhs.true.i82.i:                              ; preds = %if.then20.i.i.i, %cond.end.i.i.i.land.lhs.true.i82.i_crit_edge
  %d.0.i.i.i = phi i32 [ %or.i.i.i, %if.then20.i.i.i ], [ %cond.i.i.i, %cond.end.i.i.i.land.lhs.true.i82.i_crit_edge ]
  %relay_prefix.i.i.i = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 20, i32 1
  %84 = ptrtoint ptr %relay_prefix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %relay_prefix.i.i.i, align 4
  %or26.i.i.i = or i32 %85, %d.0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or26.i.i.i, i32 %69)
  %cmp.not.i.i = icmp eq i32 %or26.i.i.i, %69
  br i1 %cmp.not.i.i, label %land.lhs.true.i82.i.if.end26.i_crit_edge, label %do.body.i

land.lhs.true.i82.i.if.end26.i_crit_edge:         ; preds = %land.lhs.true.i82.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26.i

do.body.i:                                        ; preds = %land.lhs.true.i82.i
  %call15.i = tail call i32 @net_ratelimit() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body.i.out.sink.split_crit_edge, label %do.end.i

do.body.i.out.sink.split_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.sink.split

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %daddr21.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %saddr, ptr noundef %saddr10.i, ptr noundef %daddr, ptr noundef %daddr21.i) #23
  br label %out.sink.split

if.end26.i:                                       ; preds = %land.lhs.true.i82.i.if.end26.i_crit_edge, %land.lhs.true5.i.i.i.i.if.end26.i_crit_edge
  %86 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %daddr, align 4
  %daddr28.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  br i1 %tobool.not.i.i.i.i, label %if.end26.i.if.end.i.i.i94.i_crit_edge, label %if.end26.land.lhs.true.i.i.i91_crit_edge.i

if.end26.i.if.end.i.i.i94.i_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i94.i

if.end26.land.lhs.true.i.i.i91_crit_edge.i:       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #22
  %.pre148.i = shl nuw nsw i32 %shr.i.i.i.i, 2
  br label %land.lhs.true.i.i.i91.i

land.lhs.true.i.i.i91.i:                          ; preds = %if.end26.land.lhs.true.i.i.i91_crit_edge.i, %if.end26.thread.i
  %shl.i.i.i88.pre-phi.i = phi i32 [ %.pre148.i, %if.end26.land.lhs.true.i.i.i91_crit_edge.i ], [ %shl.i.i.i.i, %if.end26.thread.i ]
  %daddr28139.i = phi ptr [ %daddr28.i, %if.end26.land.lhs.true.i.i.i91_crit_edge.i ], [ %daddr28132.i, %if.end26.thread.i ]
  %88 = phi i32 [ %87, %if.end26.land.lhs.true.i.i.i91_crit_edge.i ], [ %73, %if.end26.thread.i ]
  %bcmp.i.i.i89.i = tail call i32 @bcmp(ptr %daddr28139.i, ptr %ip6rd.i.i.i, i32 %shl.i.i.i88.pre-phi.i) #29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i89.i)
  %tobool3.not.i.i.i90.i = icmp eq i32 %bcmp.i.i.i89.i, 0
  br i1 %tobool3.not.i.i.i90.i, label %land.lhs.true.i.i.i91.if.end.i.i.i94_crit_edge.i, label %land.lhs.true.i.i.i91.i.if.end18_crit_edge

land.lhs.true.i.i.i91.i.if.end18_crit_edge:       ; preds = %land.lhs.true.i.i.i91.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

land.lhs.true.i.i.i91.if.end.i.i.i94_crit_edge.i: ; preds = %land.lhs.true.i.i.i91.i
  call void @__sanitizer_cov_trace_pc() #22
  %.pre.i = and i32 %conv.i.i78.i, 31
  br label %if.end.i.i.i94.i

if.end.i.i.i94.i:                                 ; preds = %land.lhs.true.i.i.i91.if.end.i.i.i94_crit_edge.i, %if.end26.i.if.end.i.i.i94.i_crit_edge
  %and.i.i.i92.pre-phi.i = phi i32 [ %.pre.i, %land.lhs.true.i.i.i91.if.end.i.i.i94_crit_edge.i ], [ %and.i.i.i.i, %if.end26.i.if.end.i.i.i94.i_crit_edge ]
  %daddr28140.i = phi ptr [ %daddr28139.i, %land.lhs.true.i.i.i91.if.end.i.i.i94_crit_edge.i ], [ %daddr28.i, %if.end26.i.if.end.i.i.i94.i_crit_edge ]
  %89 = phi i32 [ %88, %land.lhs.true.i.i.i91.if.end.i.i.i94_crit_edge.i ], [ %87, %if.end26.i.if.end.i.i.i94.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i92.pre-phi.i)
  %tobool4.not.i.i.i93.i = icmp eq i32 %and.i.i.i92.pre-phi.i, 0
  br i1 %tobool4.not.i.i.i93.i, label %if.end.i.i.i94.i.if.then.i.i106.i_crit_edge, label %land.lhs.true5.i.i.i102.i

if.end.i.i.i94.i.if.then.i.i106.i_crit_edge:      ; preds = %if.end.i.i.i94.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i106.i

land.lhs.true5.i.i.i102.i:                        ; preds = %if.end.i.i.i94.i
  %arrayidx.i.i.i95.i = getelementptr i32, ptr %daddr28140.i, i32 %shr.i.i.i.i
  %90 = ptrtoint ptr %arrayidx.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i.i95.i, align 4
  %arrayidx6.i.i.i96.i = getelementptr i32, ptr %ip6rd.i.i.i, i32 %shr.i.i.i.i
  %92 = ptrtoint ptr %arrayidx6.i.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx6.i.i.i96.i, align 4
  %xor.i.i.i97.i = xor i32 %93, %91
  %sub.i.i.i98.i = sub nuw nsw i32 32, %and.i.i.i92.pre-phi.i
  %shl7.i.i.i99.i = shl nsw i32 -1, %sub.i.i.i98.i
  %and8.i.i.i100.i = and i32 %xor.i.i.i97.i, %shl7.i.i.i99.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i100.i)
  %tobool9.not.i.i.i101.i = icmp eq i32 %and8.i.i.i100.i, 0
  br i1 %tobool9.not.i.i.i101.i, label %land.lhs.true5.i.i.i102.i.if.then.i.i106.i_crit_edge, label %land.lhs.true5.i.i.i102.i.if.end18_crit_edge

land.lhs.true5.i.i.i102.i.if.end18_crit_edge:     ; preds = %land.lhs.true5.i.i.i102.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

land.lhs.true5.i.i.i102.i.if.then.i.i106.i_crit_edge: ; preds = %land.lhs.true5.i.i.i102.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i106.i

if.then.i.i106.i:                                 ; preds = %land.lhs.true5.i.i.i102.i.if.then.i.i106.i_crit_edge, %if.end.i.i.i94.i.if.then.i.i106.i_crit_edge
  %relay_prefixlen.i.i103.i = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 20, i32 3
  %94 = ptrtoint ptr %relay_prefixlen.i.i103.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %relay_prefixlen.i.i103.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %95)
  %cmp.i.i104.i = icmp ult i16 %95, 32
  %conv9.i.i105.i = zext i16 %95 to i32
  br i1 %cmp.i.i104.i, label %cond.true.i.i110.i, label %if.then.i.i106.i.cond.end.i.i114.i_crit_edge

if.then.i.i106.i.cond.end.i.i114.i_crit_edge:     ; preds = %if.then.i.i106.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end.i.i114.i

cond.true.i.i110.i:                               ; preds = %if.then.i.i106.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i.i107.i = getelementptr [4 x i32], ptr %daddr28140.i, i32 0, i32 %shr.i.i.i.i
  %96 = ptrtoint ptr %arrayidx.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i.i107.i, align 4
  %shl.i.i108.i = shl i32 %97, %and.i.i.i92.pre-phi.i
  %shr14.i.i109.i = lshr i32 %shl.i.i108.i, %conv9.i.i105.i
  br label %cond.end.i.i114.i

cond.end.i.i114.i:                                ; preds = %cond.true.i.i110.i, %if.then.i.i106.i.cond.end.i.i114.i_crit_edge
  %cond.i.i111.i = phi i32 [ %shr14.i.i109.i, %cond.true.i.i110.i ], [ 0, %if.then.i.i106.i.cond.end.i.i114.i_crit_edge ]
  %sub.i.i112.i = sub nsw i32 %and.i.i.i92.pre-phi.i, %conv9.i.i105.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i112.i)
  %cmp18.i.i113.i = icmp sgt i32 %sub.i.i112.i, 0
  br i1 %cmp18.i.i113.i, label %if.then20.i.i120.i, label %cond.end.i.i114.i.land.lhs.true.i125.i_crit_edge

cond.end.i.i114.i.land.lhs.true.i125.i_crit_edge: ; preds = %cond.end.i.i114.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.i125.i

if.then20.i.i120.i:                               ; preds = %cond.end.i.i114.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.i.i115.i = add nuw nsw i32 %shr.i.i.i.i, 1
  %arrayidx22.i.i116.i = getelementptr [4 x i32], ptr %daddr28140.i, i32 0, i32 %add.i.i115.i
  %98 = ptrtoint ptr %arrayidx22.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx22.i.i116.i, align 4
  %sub23.i.i117.i = sub nuw nsw i32 32, %sub.i.i112.i
  %shr24.i.i118.i = lshr i32 %99, %sub23.i.i117.i
  %or.i.i119.i = or i32 %shr24.i.i118.i, %cond.i.i111.i
  br label %land.lhs.true.i125.i

land.lhs.true.i125.i:                             ; preds = %if.then20.i.i120.i, %cond.end.i.i114.i.land.lhs.true.i125.i_crit_edge
  %d.0.i.i121.i = phi i32 [ %or.i.i119.i, %if.then20.i.i120.i ], [ %cond.i.i111.i, %cond.end.i.i114.i.land.lhs.true.i125.i_crit_edge ]
  %relay_prefix.i.i122.i = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 20, i32 1
  %100 = ptrtoint ptr %relay_prefix.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %relay_prefix.i.i122.i, align 4
  %or26.i.i123.i = or i32 %101, %d.0.i.i121.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or26.i.i123.i, i32 %89)
  %cmp.not.i124.i = icmp eq i32 %or26.i.i123.i, %89
  br i1 %cmp.not.i124.i, label %land.lhs.true.i125.i.if.end18_crit_edge, label %if.end39.i

land.lhs.true.i125.i.if.end18_crit_edge:          ; preds = %land.lhs.true.i125.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.end39.i:                                       ; preds = %land.lhs.true.i125.i
  %add.i.i = add nuw nsw i32 %conv.i.i78.i, 32
  %sub.i.i = sub nsw i32 %add.i.i, %conv9.i.i105.i
  %call.i.i = tail call zeroext i1 @ipv6_chk_custom_prefix(ptr noundef %daddr28140.i, i32 noundef %sub.i.i, ptr noundef %31) #20
  br i1 %call.i.i, label %if.end39.i.if.end18_crit_edge, label %do.body44.i

if.end39.i.if.end18_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

do.body44.i:                                      ; preds = %if.end39.i
  %call45.i = tail call i32 @net_ratelimit() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %do.body44.i.out.sink.split_crit_edge, label %do.end50.i

do.body44.i.out.sink.split_crit_edge:             ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.sink.split

do.end50.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #22
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %saddr, ptr noundef %saddr10.i, ptr noundef %daddr, ptr noundef %daddr28140.i) #23
  br label %out.sink.split

packet_is_spoofed.exit:                           ; preds = %if.then.i44.i.i, %land.lhs.true2.i43.i.i.packet_is_spoofed.exit_crit_edge, %land.lhs.true.i41.i.i.packet_is_spoofed.exit_crit_edge, %if.end24.i.i.packet_is_spoofed.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !181
  %102 = tail call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i.i45.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i45.i.i to ptr
  %preempt_count.i.i.i.i46.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i46.i.i, align 4
  %sub.i.i.i.i.i = add i32 %105, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i46.i.i, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  br i1 %tobool1.not.i, label %packet_is_spoofed.exit.out.sink.split_crit_edge, label %packet_is_spoofed.exit.if.end18_crit_edge

packet_is_spoofed.exit.if.end18_crit_edge:        ; preds = %packet_is_spoofed.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

packet_is_spoofed.exit.out.sink.split_crit_edge:  ; preds = %packet_is_spoofed.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.sink.split

if.end18:                                         ; preds = %packet_is_spoofed.exit.if.end18_crit_edge, %if.end39.i.if.end18_crit_edge, %land.lhs.true.i125.i.if.end18_crit_edge, %land.lhs.true5.i.i.i102.i.if.end18_crit_edge, %land.lhs.true.i.i.i91.i.if.end18_crit_edge, %if.end3.i.if.end18_crit_edge
  %net = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 4
  %106 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %net, align 4
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  %nd_net.i116 = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 127
  %110 = ptrtoint ptr %nd_net.i116 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %nd_net.i116, align 4
  %cmp.i = icmp ne ptr %107, %111
  %call.i = tail call i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef 0, i16 noundef zeroext -31011, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end26:                                         ; preds = %if.end18
  %112 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %head.i.i, align 8
  %114 = ptrtoint ptr %mac_header to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %mac_header, align 2
  %conv.i119 = zext i16 %115 to i32
  %add.ptr.i = getelementptr i8, ptr %113, i32 %conv.i119
  %116 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i122 = ptrtoint ptr %117 to i32
  %sub.ptr.rhs.cast.i123 = ptrtoint ptr %113 to i32
  %sub.ptr.sub.i124 = sub i32 %sub.ptr.lhs.cast.i122, %sub.ptr.rhs.cast.i123
  %conv.i125 = trunc i32 %sub.ptr.sub.i124 to i16
  store i16 %conv.i125, ptr %mac_header, align 2
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %118 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %120 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i127 = zext i16 %121 to i32
  %122 = zext i16 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %119, label %if.end26.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %if.end26.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.end26.if.then.i.i.i.i_crit_edge187
  ]

if.end26.if.then.i.i.i.i_crit_edge187:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i.i

if.end26.if.then.i.i.i.i_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i.i

if.end26.skb_protocol.exit.i_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end26.if.then.i.i.i.i_crit_edge, %if.end26.if.then.i.i.i.i_crit_edge187
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool.not.i.i.i.i128 = icmp eq i16 %121, 0
  br i1 %tobool.not.i.i.i.i128, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %121)
  %cmp.i.i.i.i = icmp ult i16 %121, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !173

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 598, i32 noundef 9, ptr noundef null) #20
  br label %do.body59

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %sub.i.i.i.i129 = add nsw i32 %conv.i.i.i.i127, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i129, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %123 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #20
  %124 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !192
  %125 = ptrtoint ptr %123 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 -1, ptr %123, align 2, !annotation !192
  %126 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %128 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %130 = add i32 %vlan_depth.1.i.i.i.i, %129
  %sub.i1.i.i.i.i.i = sub i32 %127, %130
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !176

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %131 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %132, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !173
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %133 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !173
  br i1 %133, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !173

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #20
  br label %do.body59

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #20
  %136 = zext i16 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %135, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge188
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge188: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge188
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %if.end26.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %119, %if.end26.skb_protocol.exit.i_crit_edge ], [ %135, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %137 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.do.body59_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb2.i
  ]

skb_protocol.exit.i.do.body59_crit_edge:          ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

sw.bb.i:                                          ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %138 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %head.i.i, align 8
  %140 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i132 = zext i16 %141 to i32
  %add.ptr.i.i.i133 = getelementptr i8, ptr %139, i32 %conv.i.i.i132
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i133, i32 0, i32 1
  %142 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %tos.i, align 1
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %144 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %head.i.i, align 8
  %146 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i12.i = zext i16 %147 to i32
  %add.ptr.i.i13.i = getelementptr i8, ptr %145, i32 %conv.i.i12.i
  %148 = ptrtoint ptr %add.ptr.i.i13.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %add.ptr.i.i13.i, align 2
  %150 = lshr i16 %149, 4
  %conv1.i.i = trunc i16 %150 to i8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %inner.0.i = phi i8 [ %conv1.i.i, %sw.bb2.i ], [ %143, %sw.bb.i ]
  %tos5.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 1
  %151 = ptrtoint ptr %tos5.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %tos5.i, align 1
  %153 = and i8 %inner.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %cmp.i.not.i.i.i = icmp eq i8 %153, 0
  %154 = and i8 %152, 3
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i134, label %if.then.i.i135

if.then.i.i.i134:                                 ; preds = %sw.epilog.i
  %and.i.i.i = zext i8 %154 to i32
  %155 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %and.i.i.i, label %if.then.unreachabledefault.i.i.i [
    i32 0, label %if.else.i.i143
    i32 2, label %if.then.i.i.i134.if.then33_crit_edge
    i32 1, label %if.then.i.i.i134.if.then33_crit_edge189
    i32 3, label %sw.bb2.i.i.i
  ]

if.then.i.i.i134.if.then33_crit_edge189:          ; preds = %if.then.i.i.i134
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then33

if.then.i.i.i134.if.then33_crit_edge:             ; preds = %if.then.i.i.i134
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then33

sw.bb2.i.i.i:                                     ; preds = %if.then.i.i.i134
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then33

if.then.unreachabledefault.i.i.i:                 ; preds = %if.then.i.i.i134
  unreachable

if.then.i.i135:                                   ; preds = %sw.epilog.i
  %trunc.i.i = trunc i8 %152 to i2
  %156 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.64)
  switch i2 %trunc.i.i, label %if.then.i.i135.do.body59_crit_edge [
    i2 -1, label %if.then2.i.i136
    i2 1, label %if.then.i.i135.if.then5.i.i_crit_edge
  ]

if.then.i.i135.if.then5.i.i_crit_edge:            ; preds = %if.then.i.i135
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then5.i.i

if.then.i.i135.do.body59_crit_edge:               ; preds = %if.then.i.i135
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.then2.i.i136:                                  ; preds = %if.then.i.i135
  %157 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %protocol.i.i.i, align 8
  %159 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i.i.i = zext i16 %160 to i32
  %161 = zext i16 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %158, label %if.then2.i.i136.skb_protocol.exit.i.i.i_crit_edge [
    i16 -30552, label %if.then2.i.i136.if.then.i.i.i.i.i14.i_crit_edge
    i16 -32512, label %if.then2.i.i136.if.then.i.i.i.i.i14.i_crit_edge190
  ]

if.then2.i.i136.if.then.i.i.i.i.i14.i_crit_edge190: ; preds = %if.then2.i.i136
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i.i.i14.i

if.then2.i.i136.if.then.i.i.i.i.i14.i_crit_edge:  ; preds = %if.then2.i.i136
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i.i.i14.i

if.then2.i.i136.skb_protocol.exit.i.i.i_crit_edge: ; preds = %if.then2.i.i136
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_protocol.exit.i.i.i

if.then.i.i.i.i.i14.i:                            ; preds = %if.then2.i.i136.if.then.i.i.i.i.i14.i_crit_edge, %if.then2.i.i136.if.then.i.i.i.i.i14.i_crit_edge190
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool.not.i.i.i.i.i.i = icmp eq i16 %160, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i14.i.if.end26.i.i.i.i.i.i_crit_edge, label %if.then1.i.i.i.i.i.i

if.then.i.i.i.i.i14.i.if.end26.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i14.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26.i.i.i.i.i.i

if.then1.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i14.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %160)
  %cmp.i.i.i.i.i15.i = icmp ult i16 %160, 4
  br i1 %cmp.i.i.i.i.i15.i, label %do.end.i.i.i.i.i.i, label %if.end25.i.i.i.i.i.i, !prof !173

do.end.i.i.i.i.i.i:                               ; preds = %if.then1.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 598, i32 noundef 9, ptr noundef null) #20
  br label %do.body59

if.end25.i.i.i.i.i.i:                             ; preds = %if.then1.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %sub.i.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i.i, -4
  br label %if.end26.i.i.i.i.i.i

if.end26.i.i.i.i.i.i:                             ; preds = %if.end25.i.i.i.i.i.i, %if.then.i.i.i.i.i14.i.if.end26.i.i.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i, %if.end25.i.i.i.i.i.i ], [ 14, %if.then.i.i.i.i.i14.i.if.end26.i.i.i.i.i.i_crit_edge ]
  %162 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i.i.i

do.body27.i.i.i.i.i.i:                            ; preds = %do.body27.backedge.i.i.i.i.i.i, %if.end26.i.i.i.i.i.i
  %vlan_depth.1.i.i.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i.i.i, %if.end26.i.i.i.i.i.i ], [ %add.i.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i.i ]
  %parse_depth.0.i.i.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i.i.i ], [ %dec.i.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i.i) #20
  %163 = ptrtoint ptr %vhdr.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 -1, ptr %vhdr.i.i.i.i.i.i, align 2, !annotation !192
  %164 = ptrtoint ptr %162 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 -1, ptr %162, align 2, !annotation !192
  %165 = ptrtoint ptr %len.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len.i.i.i.i.i.i.i.i, align 4
  %167 = ptrtoint ptr %data_len.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %data_len.i.i.i.i.i.i.i.i, align 8
  %169 = add i32 %vlan_depth.1.i.i.i.i.i.i, %168
  %sub.i1.i.i.i.i.i.i.i = sub i32 %166, %169
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, !prof !176

if.then.i.i.i.i.i.i.i.i:                          ; preds = %do.body27.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %170 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i.i.i.i = getelementptr i8, ptr %171, i32 %vlan_depth.1.i.i.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %do.body27.i.i.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.thread.i.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.i.i.i:                    ; preds = %if.end.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i.i.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i.i.i, i32 noundef 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i.i.i, !prof !173
  br label %skb_header_pointer.exit.i.i.i.i.i.i

skb_header_pointer.exit.i.i.i.i.i.i:              ; preds = %lor.lhs.false.i.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i.i.i, null
  %dec.i.i.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i.i.i)
  %tobool30.not.i.i.i.i.i.i = icmp eq i32 %dec.i.i.i.i.i.i, 0
  %172 = select i1 %tobool29.not.i.i.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i.i.i, !prof !173
  br i1 %172, label %skb_header_pointer.exit.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i.i.i, !prof !173

skb_header_pointer.exit.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.thread.i.i.i.i.i.i

cleanup.thread.i.i.i.i.i.i:                       ; preds = %skb_header_pointer.exit.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i.i) #20
  br label %do.body59

do.cond42.i.i.i.i.i.i:                            ; preds = %skb_header_pointer.exit.i.i.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i.i.i, i32 0, i32 1
  %173 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i.i) #20
  %175 = zext i16 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %174, label %do.cond42.i.i.i.i.i.i.skb_protocol.exit.i.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge191
  ]

do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge191: ; preds = %do.cond42.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body27.backedge.i.i.i.i.i.i

do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body27.backedge.i.i.i.i.i.i

do.cond42.i.i.i.i.i.i.skb_protocol.exit.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_protocol.exit.i.i.i

do.body27.backedge.i.i.i.i.i.i:                   ; preds = %do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.i.i.do.body27.backedge.i.i.i.i.i.i_crit_edge191
  %add.i.i.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i.i.i, 4
  br label %do.body27.i.i.i.i.i.i

skb_protocol.exit.i.i.i:                          ; preds = %do.cond42.i.i.i.i.i.i.skb_protocol.exit.i.i.i_crit_edge, %if.then2.i.i136.skb_protocol.exit.i.i.i_crit_edge
  %retval.2.i.i.i.i.i.i = phi i16 [ %158, %if.then2.i.i136.skb_protocol.exit.i.i.i_crit_edge ], [ %174, %do.cond42.i.i.i.i.i.i.skb_protocol.exit.i.i.i_crit_edge ]
  %176 = zext i16 %retval.2.i.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %retval.2.i.i.i.i.i.i, label %skb_protocol.exit.i.i.i.do.body59_crit_edge [
    i16 2048, label %sw.bb.i.i.i
    i16 -31011, label %sw.bb6.i.i.i
  ]

skb_protocol.exit.i.i.i.do.body59_crit_edge:      ; preds = %skb_protocol.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

sw.bb.i.i.i:                                      ; preds = %skb_protocol.exit.i.i.i
  %177 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %head.i.i, align 8
  %179 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i16.i = zext i16 %180 to i32
  %add.ptr.i.i.i.i139 = getelementptr i8, ptr %178, i32 %conv.i.i.i16.i
  %add.ptr.i.i17.i = getelementptr i8, ptr %add.ptr.i.i.i.i139, i32 20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %181 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %tail.i.i.i.i, align 8
  %cmp.not.i.i.i = icmp ugt ptr %add.ptr.i.i17.i, %182
  br i1 %cmp.not.i.i.i, label %sw.bb.i.i.i.do.body59_crit_edge, label %if.then.i12.i.i

sw.bb.i.i.i.do.body59_crit_edge:                  ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.then.i12.i.i:                                  ; preds = %sw.bb.i.i.i
  %tos.i.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i139, i32 0, i32 1
  %183 = ptrtoint ptr %tos.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %tos.i.i.i.i, align 1
  %185 = add i8 %184, 1
  %186 = and i8 %185, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i.i.i18.i = icmp eq i8 %186, 0
  br i1 %tobool.not.i.i.i18.i, label %if.then.i12.i.i.do.body59_crit_edge, label %if.end.i.i.i.i141

if.then.i12.i.i.do.body59_crit_edge:              ; preds = %if.then.i12.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.end.i.i.i.i141:                                ; preds = %if.then.i12.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %187 = and i8 %185, 3
  %conv4.i.i.i.i = zext i8 %187 to i16
  %add5.i.i.i.i = add nuw nsw i16 %conv4.i.i.i.i, -5
  %check.i.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i139, i32 0, i32 7
  %188 = ptrtoint ptr %check.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %check.i.i.i.i, align 2
  %add.i.i.i.i.i140 = add i16 %189, %add5.i.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i.i.i140, i16 %add5.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i16 %add.i.i.i.i.i140, %add5.i.i.i.i
  %conv6.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i16
  %add7.i.i.i.i.i = add i16 %add.i.i.i.i.i140, %conv6.i.i.i.i.i
  %190 = ptrtoint ptr %check.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %add7.i.i.i.i.i, ptr %check.i.i.i.i, align 2
  %191 = or i8 %184, 3
  %192 = ptrtoint ptr %tos.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %tos.i.i.i.i, align 1
  br label %do.body59

sw.bb6.i.i.i:                                     ; preds = %skb_protocol.exit.i.i.i
  %193 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %head.i.i, align 8
  %195 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %network_header.i.i, align 4
  %conv.i3.i.i.i = zext i16 %196 to i32
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %194, i32 %conv.i3.i.i.i
  %add.ptr8.i.i.i = getelementptr i8, ptr %add.ptr.i4.i.i.i, i32 40
  %tail.i5.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %197 = ptrtoint ptr %tail.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %tail.i5.i.i.i, align 8
  %cmp10.not.i.i.i = icmp ugt ptr %add.ptr8.i.i.i, %198
  br i1 %cmp10.not.i.i.i, label %sw.bb6.i.i.i.do.body59_crit_edge, label %if.then12.i.i.i

sw.bb6.i.i.i.do.body59_crit_edge:                 ; preds = %sw.bb6.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.then12.i.i.i:                                  ; preds = %sw.bb6.i.i.i
  %199 = ptrtoint ptr %add.ptr.i4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %add.ptr.i4.i.i.i, align 2
  %201 = and i16 %200, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %201)
  %cmp.i14.not.i.i.i.i = icmp eq i16 %201, 0
  br i1 %cmp.i14.not.i.i.i.i, label %if.then12.i.i.i.do.body59_crit_edge, label %if.end.i10.i.i.i

if.then12.i.i.i.do.body59_crit_edge:              ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.end.i10.i.i.i:                                 ; preds = %if.then12.i.i.i
  %202 = ptrtoint ptr %add.ptr.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr.i4.i.i.i, align 4
  %or.i.i.i.i = or i32 %203, 3145728
  store i32 %or.i.i.i.i, ptr %add.ptr.i4.i.i.i, align 4
  %ip_summed.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %204 = ptrtoint ptr %ip_summed.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %bf.load.i.i.i.i = load i16, ptr %ip_summed.i.i.i.i, align 8
  %205 = and i16 %bf.load.i.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %205)
  %cmp.i.i.i19.i = icmp eq i16 %205, 1024
  br i1 %cmp.i.i.i19.i, label %if.then3.i.i.i.i, label %if.end.i10.i.i.i.do.body59_crit_edge

if.end.i10.i.i.i.do.body59_crit_edge:             ; preds = %if.end.i10.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.then3.i.i.i.i:                                 ; preds = %if.end.i10.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %206 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %206, align 8
  %neg.i.i.i.i.i = xor i32 %203, -1
  %add.i.i.i11.i.i.i = add i32 %208, %neg.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i11.i.i.i, i32 %neg.i.i.i.i.i)
  %cmp.i.i.i12.i.i.i = icmp ult i32 %add.i.i.i11.i.i.i, %neg.i.i.i.i.i
  %conv.i.i.i13.i.i.i = zext i1 %cmp.i.i.i12.i.i.i to i32
  %add1.i.i.i.i.i.i = add i32 %add.i.i.i11.i.i.i, %or.i.i.i.i
  %add.i.i14.i.i.i = add i32 %add1.i.i.i.i.i.i, %conv.i.i.i13.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i14.i.i.i, i32 %or.i.i.i.i)
  %cmp.i.i15.i.i.i = icmp ult i32 %add.i.i14.i.i.i, %or.i.i.i.i
  %conv.i.i16.i.i.i = zext i1 %cmp.i.i15.i.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i14.i.i.i, %conv.i.i16.i.i.i
  %209 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %add1.i.i.i.i.i, ptr %206, align 8
  br label %do.body59

if.else.i.i143:                                   ; preds = %if.then.i.i.i134
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %154)
  %cmp.i.i142 = icmp eq i8 %154, 1
  br i1 %cmp.i.i142, label %if.else.i.i143.if.then5.i.i_crit_edge, label %if.else.i.i143.do.body59_crit_edge

if.else.i.i143.do.body59_crit_edge:               ; preds = %if.else.i.i143
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.else.i.i143.if.then5.i.i_crit_edge:            ; preds = %if.else.i.i143
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i143.if.then5.i.i_crit_edge, %if.then.i.i135.if.then5.i.i_crit_edge
  %210 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %protocol.i.i.i, align 8
  %212 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i16.i.i = zext i16 %213 to i32
  %214 = zext i16 %211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %211, label %if.then5.i.i.skb_protocol.exit.i53.i.i_crit_edge [
    i16 -30552, label %if.then5.i.i.if.then.i.i.i.i18.i.i_crit_edge
    i16 -32512, label %if.then5.i.i.if.then.i.i.i.i18.i.i_crit_edge192
  ]

if.then5.i.i.if.then.i.i.i.i18.i.i_crit_edge192:  ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i.i18.i.i

if.then5.i.i.if.then.i.i.i.i18.i.i_crit_edge:     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i.i18.i.i

if.then5.i.i.skb_protocol.exit.i53.i.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_protocol.exit.i53.i.i

if.then.i.i.i.i18.i.i:                            ; preds = %if.then5.i.i.if.then.i.i.i.i18.i.i_crit_edge, %if.then5.i.i.if.then.i.i.i.i18.i.i_crit_edge192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %213)
  %tobool.not.i.i.i.i17.i.i = icmp eq i16 %213, 0
  br i1 %tobool.not.i.i.i.i17.i.i, label %if.then.i.i.i.i18.i.i.if.end26.i.i.i.i29.i.i_crit_edge, label %if.then1.i.i.i.i20.i.i

if.then.i.i.i.i18.i.i.if.end26.i.i.i.i29.i.i_crit_edge: ; preds = %if.then.i.i.i.i18.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26.i.i.i.i29.i.i

if.then1.i.i.i.i20.i.i:                           ; preds = %if.then.i.i.i.i18.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %213)
  %cmp.i.i.i.i19.i.i = icmp ult i16 %213, 4
  br i1 %cmp.i.i.i.i19.i.i, label %do.end.i.i.i.i21.i.i, label %if.end25.i.i.i.i23.i.i, !prof !173

do.end.i.i.i.i21.i.i:                             ; preds = %if.then1.i.i.i.i20.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 598, i32 noundef 9, ptr noundef null) #20
  br label %do.body59

if.end25.i.i.i.i23.i.i:                           ; preds = %if.then1.i.i.i.i20.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %sub.i.i.i.i22.i.i = add nsw i32 %conv.i.i.i.i16.i.i, -4
  br label %if.end26.i.i.i.i29.i.i

if.end26.i.i.i.i29.i.i:                           ; preds = %if.end25.i.i.i.i23.i.i, %if.then.i.i.i.i18.i.i.if.end26.i.i.i.i29.i.i_crit_edge
  %vlan_depth.0.i.i.i.i24.i.i = phi i32 [ %sub.i.i.i.i22.i.i, %if.end25.i.i.i.i23.i.i ], [ 14, %if.then.i.i.i.i18.i.i.if.end26.i.i.i.i29.i.i_crit_edge ]
  %215 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i13.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i25.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i26.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i27.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i34.i.i

do.body27.i.i.i.i34.i.i:                          ; preds = %do.body27.backedge.i.i.i.i51.i.i, %if.end26.i.i.i.i29.i.i
  %vlan_depth.1.i.i.i.i30.i.i = phi i32 [ %vlan_depth.0.i.i.i.i24.i.i, %if.end26.i.i.i.i29.i.i ], [ %add.i.i.i.i50.i.i, %do.body27.backedge.i.i.i.i51.i.i ]
  %parse_depth.0.i.i.i.i31.i.i = phi i32 [ 8, %if.end26.i.i.i.i29.i.i ], [ %dec.i.i.i.i44.i.i, %do.body27.backedge.i.i.i.i51.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i13.i.i) #20
  %216 = ptrtoint ptr %vhdr.i.i.i.i13.i.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 -1, ptr %vhdr.i.i.i.i13.i.i, align 2, !annotation !192
  %217 = ptrtoint ptr %215 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 -1, ptr %215, align 2, !annotation !192
  %218 = ptrtoint ptr %len.i.i.i.i.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %len.i.i.i.i.i.i25.i.i, align 4
  %220 = ptrtoint ptr %data_len.i.i.i.i.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %data_len.i.i.i.i.i.i26.i.i, align 8
  %222 = add i32 %vlan_depth.1.i.i.i.i30.i.i, %221
  %sub.i1.i.i.i.i.i32.i.i = sub i32 %219, %222
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i32.i.i)
  %cmp.i.i.i.i.i.i33.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i32.i.i, 3
  br i1 %cmp.i.i.i.i.i.i33.i.i, label %if.then.i.i.i.i.i.i36.i.i, label %if.end.i.i.i.i.i.i37.i.i, !prof !176

if.then.i.i.i.i.i.i36.i.i:                        ; preds = %do.body27.i.i.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %223 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i.i35.i.i = getelementptr i8, ptr %224, i32 %vlan_depth.1.i.i.i.i30.i.i
  br label %skb_header_pointer.exit.i.i.i.i46.i.i

if.end.i.i.i.i.i.i37.i.i:                         ; preds = %do.body27.i.i.i.i34.i.i
  br i1 %tobool2.not.i.i.i.i.i.i27.i.i, label %if.end.i.i.i.i.i.i37.i.i.cleanup.thread.i.i.i.i47.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i41.i.i

if.end.i.i.i.i.i.i37.i.i.cleanup.thread.i.i.i.i47.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i37.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.thread.i.i.i.i47.i.i

lor.lhs.false.i.i.i.i.i.i41.i.i:                  ; preds = %if.end.i.i.i.i.i.i37.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i.i.i.i.i.i38.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i30.i.i, ptr noundef nonnull %vhdr.i.i.i.i13.i.i, i32 noundef 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i38.i.i)
  %cmp3.i.i.i.i.i.i39.i.i = icmp slt i32 %call.i.i.i.i.i.i38.i.i, 0
  %spec.select.i.i.i.i.i.i40.i.i = select i1 %cmp3.i.i.i.i.i.i39.i.i, ptr null, ptr %vhdr.i.i.i.i13.i.i, !prof !173
  br label %skb_header_pointer.exit.i.i.i.i46.i.i

skb_header_pointer.exit.i.i.i.i46.i.i:            ; preds = %lor.lhs.false.i.i.i.i.i.i41.i.i, %if.then.i.i.i.i.i.i36.i.i
  %retval.0.i.i.i.i.i.i42.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i35.i.i, %if.then.i.i.i.i.i.i36.i.i ], [ %spec.select.i.i.i.i.i.i40.i.i, %lor.lhs.false.i.i.i.i.i.i41.i.i ]
  %tobool29.not.i.i.i.i43.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i42.i.i, null
  %dec.i.i.i.i44.i.i = add nsw i32 %parse_depth.0.i.i.i.i31.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i44.i.i)
  %tobool30.not.i.i.i.i45.i.i = icmp eq i32 %dec.i.i.i.i44.i.i, 0
  %225 = select i1 %tobool29.not.i.i.i.i43.i.i, i1 true, i1 %tobool30.not.i.i.i.i45.i.i, !prof !173
  br i1 %225, label %skb_header_pointer.exit.i.i.i.i46.i.i.cleanup.thread.i.i.i.i47.i.i_crit_edge, label %do.cond42.i.i.i.i49.i.i, !prof !173

skb_header_pointer.exit.i.i.i.i46.i.i.cleanup.thread.i.i.i.i47.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.thread.i.i.i.i47.i.i

cleanup.thread.i.i.i.i47.i.i:                     ; preds = %skb_header_pointer.exit.i.i.i.i46.i.i.cleanup.thread.i.i.i.i47.i.i_crit_edge, %if.end.i.i.i.i.i.i37.i.i.cleanup.thread.i.i.i.i47.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i13.i.i) #20
  br label %do.body59

do.cond42.i.i.i.i49.i.i:                          ; preds = %skb_header_pointer.exit.i.i.i.i46.i.i
  %h_vlan_encapsulated_proto.i.i.i.i48.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i42.i.i, i32 0, i32 1
  %226 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i48.i.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i48.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i13.i.i) #20
  %228 = zext i16 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %228, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %227, label %do.cond42.i.i.i.i49.i.i.skb_protocol.exit.i53.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i49.i.i.do.body27.backedge.i.i.i.i51.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i49.i.i.do.body27.backedge.i.i.i.i51.i.i_crit_edge193
  ]

do.cond42.i.i.i.i49.i.i.do.body27.backedge.i.i.i.i51.i.i_crit_edge193: ; preds = %do.cond42.i.i.i.i49.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body27.backedge.i.i.i.i51.i.i

do.cond42.i.i.i.i49.i.i.do.body27.backedge.i.i.i.i51.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i49.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body27.backedge.i.i.i.i51.i.i

do.cond42.i.i.i.i49.i.i.skb_protocol.exit.i53.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i49.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_protocol.exit.i53.i.i

do.body27.backedge.i.i.i.i51.i.i:                 ; preds = %do.cond42.i.i.i.i49.i.i.do.body27.backedge.i.i.i.i51.i.i_crit_edge, %do.cond42.i.i.i.i49.i.i.do.body27.backedge.i.i.i.i51.i.i_crit_edge193
  %add.i.i.i.i50.i.i = add nsw i32 %vlan_depth.1.i.i.i.i30.i.i, 4
  br label %do.body27.i.i.i.i34.i.i

skb_protocol.exit.i53.i.i:                        ; preds = %do.cond42.i.i.i.i49.i.i.skb_protocol.exit.i53.i.i_crit_edge, %if.then5.i.i.skb_protocol.exit.i53.i.i_crit_edge
  %retval.2.i.i.i.i52.i.i = phi i16 [ %211, %if.then5.i.i.skb_protocol.exit.i53.i.i_crit_edge ], [ %227, %do.cond42.i.i.i.i49.i.i.skb_protocol.exit.i53.i.i_crit_edge ]
  %229 = zext i16 %retval.2.i.i.i.i52.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %retval.2.i.i.i.i52.i.i, label %skb_protocol.exit.i53.i.i.do.body59_crit_edge [
    i16 2048, label %sw.bb.i61.i.i
    i16 -31011, label %sw.bb6.i77.i.i
  ]

skb_protocol.exit.i53.i.i.do.body59_crit_edge:    ; preds = %skb_protocol.exit.i53.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

sw.bb.i61.i.i:                                    ; preds = %skb_protocol.exit.i53.i.i
  %230 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %head.i.i, align 8
  %232 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i56.i.i = zext i16 %233 to i32
  %add.ptr.i.i57.i.i = getelementptr i8, ptr %231, i32 %conv.i.i56.i.i
  %add.ptr.i58.i.i = getelementptr i8, ptr %add.ptr.i.i57.i.i, i32 20
  %tail.i.i59.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %234 = ptrtoint ptr %tail.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %tail.i.i59.i.i, align 8
  %cmp.not.i60.i.i = icmp ugt ptr %add.ptr.i58.i.i, %235
  br i1 %cmp.not.i60.i.i, label %sw.bb.i61.i.i.do.body59_crit_edge, label %if.then.i63.i.i

sw.bb.i61.i.i.do.body59_crit_edge:                ; preds = %sw.bb.i61.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.then.i63.i.i:                                  ; preds = %sw.bb.i61.i.i
  %tos.i.i62.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i57.i.i, i32 0, i32 1
  %236 = ptrtoint ptr %tos.i.i62.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %tos.i.i62.i.i, align 1
  %238 = and i8 %237, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %238)
  %cmp.not.i.i.i.i = icmp eq i8 %238, 2
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i69.i.i, label %if.then.i63.i.i.do.body59_crit_edge

if.then.i63.i.i.do.body59_crit_edge:              ; preds = %if.then.i63.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.end.i.i69.i.i:                                 ; preds = %if.then.i63.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %check.i.i64.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i57.i.i, i32 0, i32 7
  %239 = ptrtoint ptr %check.i.i64.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %check.i.i64.i.i, align 2
  %add.i.i.i65.i.i = add i16 %240, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i.i65.i.i)
  %cmp.i.i.i66.i.i = icmp eq i16 %add.i.i.i65.i.i, 0
  %conv6.i.i.i67.i.i = zext i1 %cmp.i.i.i66.i.i to i16
  %add7.i.i.i68.i.i = add i16 %add.i.i.i65.i.i, %conv6.i.i.i67.i.i
  %241 = ptrtoint ptr %check.i.i64.i.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %add7.i.i.i68.i.i, ptr %check.i.i64.i.i, align 2
  %242 = xor i8 %237, 3
  %243 = ptrtoint ptr %tos.i.i62.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %tos.i.i62.i.i, align 1
  br label %do.body59

sw.bb6.i77.i.i:                                   ; preds = %skb_protocol.exit.i53.i.i
  %244 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %head.i.i, align 8
  %246 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %network_header.i.i, align 4
  %conv.i3.i72.i.i = zext i16 %247 to i32
  %add.ptr.i4.i73.i.i = getelementptr i8, ptr %245, i32 %conv.i3.i72.i.i
  %add.ptr8.i74.i.i = getelementptr i8, ptr %add.ptr.i4.i73.i.i, i32 40
  %tail.i5.i75.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %248 = ptrtoint ptr %tail.i5.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %tail.i5.i75.i.i, align 8
  %cmp10.not.i76.i.i = icmp ugt ptr %add.ptr8.i74.i.i, %249
  br i1 %cmp10.not.i76.i.i, label %sw.bb6.i77.i.i.do.body59_crit_edge, label %if.then12.i78.i.i

sw.bb6.i77.i.i.do.body59_crit_edge:               ; preds = %sw.bb6.i77.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.then12.i78.i.i:                                ; preds = %sw.bb6.i77.i.i
  %250 = ptrtoint ptr %add.ptr.i4.i73.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %add.ptr.i4.i73.i.i, align 2
  %252 = and i16 %251, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %252)
  %cmp.not.i10.i.i.i = icmp eq i16 %252, 32
  br i1 %cmp.not.i10.i.i.i, label %if.end.i11.i.i.i, label %if.then12.i78.i.i.do.body59_crit_edge

if.then12.i78.i.i.do.body59_crit_edge:            ; preds = %if.then12.i78.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.end.i11.i.i.i:                                 ; preds = %if.then12.i78.i.i
  %253 = ptrtoint ptr %add.ptr.i4.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %add.ptr.i4.i73.i.i, align 4
  %xor.i.i.i.i144 = xor i32 %254, 3145728
  store i32 %xor.i.i.i.i144, ptr %add.ptr.i4.i73.i.i, align 4
  %ip_summed.i.i79.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %255 = ptrtoint ptr %ip_summed.i.i79.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %bf.load.i.i80.i.i = load i16, ptr %ip_summed.i.i79.i.i, align 8
  %256 = and i16 %bf.load.i.i80.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %256)
  %cmp3.i.i.i.i = icmp eq i16 %256, 1024
  br i1 %cmp3.i.i.i.i, label %if.then5.i.i.i.i, label %if.end.i11.i.i.i.do.body59_crit_edge

if.end.i11.i.i.i.do.body59_crit_edge:             ; preds = %if.end.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.then5.i.i.i.i:                                 ; preds = %if.end.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %257 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %257, align 8
  %neg.i.i.i81.i.i = xor i32 %254, -1
  %add.i.i.i12.i.i.i = add i32 %259, %neg.i.i.i81.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i12.i.i.i, i32 %neg.i.i.i81.i.i)
  %cmp.i.i.i13.i.i.i = icmp ult i32 %add.i.i.i12.i.i.i, %neg.i.i.i81.i.i
  %conv.i.i.i14.i.i.i = zext i1 %cmp.i.i.i13.i.i.i to i32
  %add1.i.i.i.i82.i.i = add i32 %add.i.i.i12.i.i.i, %xor.i.i.i.i144
  %add.i.i15.i.i.i = add i32 %add1.i.i.i.i82.i.i, %conv.i.i.i14.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i15.i.i.i, i32 %xor.i.i.i.i144)
  %cmp.i.i16.i.i.i = icmp ult i32 %add.i.i15.i.i.i, %xor.i.i.i.i144
  %conv.i.i17.i.i.i = zext i1 %cmp.i.i16.i.i.i to i32
  %add1.i.i.i83.i.i = add i32 %add.i.i15.i.i.i, %conv.i.i17.i.i.i
  %260 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %add1.i.i.i83.i.i, ptr %257, align 8
  br label %do.body59

if.then33:                                        ; preds = %sw.bb2.i.i.i, %if.then.i.i.i134.if.then33_crit_edge, %if.then.i.i.i134.if.then33_crit_edge189
  %cmp47 = phi i1 [ true, %sw.bb2.i.i.i ], [ false, %if.then.i.i.i134.if.then33_crit_edge ], [ false, %if.then.i.i.i134.if.then33_crit_edge189 ]
  %261 = load i8, ptr @log_ecn_error, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool34.not = icmp eq i8 %261, 0
  br i1 %tobool34.not, label %if.then33.if.end46_crit_edge, label %do.body

if.then33.if.end46_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

do.body:                                          ; preds = %if.then33
  %call36 = call i32 @net_ratelimit() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.body.if.end46_crit_edge, label %do.end

do.body.if.end46_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %saddr40 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 8
  %262 = ptrtoint ptr %tos5.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %tos5.i, align 1
  %conv41 = zext i8 %263 to i32
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %saddr40, i32 noundef %conv41) #23
  br label %if.end46

if.end46:                                         ; preds = %do.end, %do.body.if.end46_crit_edge, %if.then33.if.end46_crit_edge
  br i1 %cmp47, label %if.then49, label %if.end46.do.body59_crit_edge

if.end46.do.body59_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body59

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  %264 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %265, i32 0, i32 36, i32 13
  %266 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %rx_frame_errors, align 4
  %inc52 = add i32 %267, 1
  store i32 %inc52, ptr %rx_frame_errors, align 4
  br label %out.sink.split

do.body59:                                        ; preds = %if.end46.do.body59_crit_edge, %if.then5.i.i.i.i, %if.end.i11.i.i.i.do.body59_crit_edge, %if.then12.i78.i.i.do.body59_crit_edge, %sw.bb6.i77.i.i.do.body59_crit_edge, %if.end.i.i69.i.i, %if.then.i63.i.i.do.body59_crit_edge, %sw.bb.i61.i.i.do.body59_crit_edge, %skb_protocol.exit.i53.i.i.do.body59_crit_edge, %cleanup.thread.i.i.i.i47.i.i, %do.end.i.i.i.i21.i.i, %if.else.i.i143.do.body59_crit_edge, %if.then3.i.i.i.i, %if.end.i10.i.i.i.do.body59_crit_edge, %if.then12.i.i.i.do.body59_crit_edge, %sw.bb6.i.i.i.do.body59_crit_edge, %if.end.i.i.i.i141, %if.then.i12.i.i.do.body59_crit_edge, %sw.bb.i.i.i.do.body59_crit_edge, %skb_protocol.exit.i.i.i.do.body59_crit_edge, %cleanup.thread.i.i.i.i.i.i, %do.end.i.i.i.i.i.i, %if.then.i.i135.do.body59_crit_edge, %skb_protocol.exit.i.do.body59_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i
  %268 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev, align 4
  %270 = getelementptr inbounds %struct.net_device, ptr %269, i32 0, i32 130
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %270, align 64
  %273 = ptrtoint ptr %272 to i32
  %274 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i146 = and i32 %274, -16384
  %275 = inttoptr i32 %and.i146 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %275, i32 0, i32 3
  %276 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %277
  %278 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx, align 4
  %add = add i32 %279, %273
  %280 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %280, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %281 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool.not.i.i = icmp eq i32 %281, 0
  br i1 %tobool.not.i.i, label %do.body59.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i152

do.body59.u64_stats_update_begin.exit_crit_edge:  ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i152:                             ; preds = %do.body59
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %275, i32 0, i32 1
  %282 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i147 = add i32 %283, 1
  store volatile i32 %add.i.i.i147, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !194
  %284 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i148 = and i32 %284, -16384
  %285 = inttoptr i32 %and.i.i.i148 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 3
  %286 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i149 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %287
  %288 = ptrtoint ptr %arrayidx.i.i149 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx.i.i149, align 4
  %add.i.i150 = add i32 %289, ptrtoint (ptr @lockdep_recursion to i32)
  %290 = inttoptr i32 %add.i.i150 to ptr
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile i32, ptr %290, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !195
  %293 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i7.i.i = and i32 %293, -16384
  %294 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %294, i32 0, i32 1
  %295 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i151 = add i32 %296, -1
  store volatile i32 %sub.i.i.i151, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool20.not.i.i = icmp eq i32 %292, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i152.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i152.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i152
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i152
  %297 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i.i153 = and i32 %297, -16384
  %298 = inttoptr i32 %and.i.i.i.i153 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %cmp.i.i154 = icmp eq i32 %300, 0
  br i1 %cmp.i.i154, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %301 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i9.i.i = and i32 %301, -16384
  %302 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %304, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !196
  %305 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %306
  %307 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %308, ptrtoint (ptr @hardirqs_enabled to i32)
  %309 = inttoptr i32 %add47.i.i to ptr
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load volatile i32, ptr %309, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !197
  %312 = call i32 @llvm.read_register.i32(metadata !161) #20
  %and.i.i.i12.i.i = and i32 %312, -16384
  %313 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %315, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool54.not.i.i = icmp eq i32 %311, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i155, !prof !176

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin.exit

if.then.i.i155:                                   ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 271, i32 noundef 9, ptr noundef null) #20
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i155, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i152.u64_stats_update_begin.exit_crit_edge, %do.body59.u64_stats_update_begin.exit_crit_edge
  %316 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %317, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !198
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %280, i32 0, i32 4, i32 0, i32 1
  %318 = call ptr @llvm.returnaddress(i32 0) #20
  %319 = ptrtoint ptr %318 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %319) #20
  %320 = ptrtoint ptr %280 to i32
  call void @__asan_load8_noabort(i32 %320)
  %321 = load i64, ptr %280, align 32
  %inc66 = add i64 %321, 1
  store i64 %inc66, ptr %280, align 32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %322 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %len, align 4
  %conv67 = zext i32 %323 to i64
  %rx_bytes = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %280, i32 0, i32 1
  %324 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %324)
  %325 = load i64, ptr %rx_bytes, align 8
  %add68 = add i64 %325, %conv67
  store i64 %add68, ptr %rx_bytes, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %319) #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !199
  %326 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %327, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %call70 = call i32 @netif_rx(ptr noundef %skb) #20
  br label %cleanup72

out.sink.split:                                   ; preds = %if.then49, %packet_is_spoofed.exit.out.sink.split_crit_edge, %do.end50.i, %do.body44.i.out.sink.split_crit_edge, %do.end.i, %do.body.i.out.sink.split_crit_edge
  %328 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev, align 4
  %rx_errors55 = getelementptr inbounds %struct.net_device, ptr %329, i32 0, i32 36, i32 4
  %330 = ptrtoint ptr %rx_errors55 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %rx_errors55, align 8
  %inc = add i32 %331, 1
  store i32 %inc, ptr %rx_errors55, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end18.out_crit_edge, %if.then.out_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #20
  br label %cleanup72

cleanup72:                                        ; preds = %out, %u64_stats_update_begin.exit, %cond.end.cleanup72_crit_edge
  %retval.1 = phi i32 [ 0, %out ], [ 0, %u64_stats_update_begin.exit ], [ 1, %cond.end.cleanup72_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip6_err(ptr noundef %skb, i32 noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i, align 4
  %conv = zext i8 %7 to i32
  %code3 = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %code3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %code3, align 1
  %10 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %7, label %entry.cleanup_crit_edge [
    i8 5, label %entry.sw.epilog12_crit_edge
    i8 3, label %sw.bb5
    i8 11, label %sw.bb8
  ]

entry.sw.epilog12_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cond72 = icmp eq i8 %9, 5
  br i1 %cond72, label %sw.bb5.cleanup_crit_edge, label %sw.bb5.sw.epilog12_crit_edge

sw.bb5.sw.epilog12_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog12

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %if.end, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #22
  %un = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %arrayidx = getelementptr [4 x i8], ptr %un, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv11, 2
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %if.end, %sw.bb5.sw.epilog12_crit_edge, %entry.sw.epilog12_crit_edge
  %data_len.0 = phi i32 [ %mul, %if.end ], [ 0, %sw.bb5.sw.epilog12_crit_edge ], [ 0, %entry.sw.epilog12_crit_edge ]
  %13 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %sw.epilog12.cond.end_crit_edge, label %cond.true

sw.epilog12.cond.end_crit_edge:                   ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.true:                                        ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #22
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %18 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cb, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.epilog12.cond.end_crit_edge
  %cond = phi i32 [ %19, %cond.true ], [ 0, %sw.epilog12.cond.end_crit_edge ]
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 127
  %20 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nd_net.i, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saddr, align 4
  %call16 = tail call fastcc ptr @ipip6_tunnel_lookup(ptr noundef %21, ptr noundef %15, i32 noundef %23, i32 noundef %25, i32 noundef %cond)
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %cond.end.cleanup_crit_edge, label %if.end18

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end18:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp19 = icmp eq i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp21 = icmp eq i8 %9, 4
  %or.cond = select i1 %cmp19, i1 %cmp21, i1 false
  br i1 %or.cond, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %13, align 8
  %nd_net.i113 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 127
  %28 = ptrtoint ptr %nd_net.i113 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nd_net.i113, align 4
  %link = getelementptr inbounds %struct.ip_tunnel, ptr %call16, i32 0, i32 15, i32 1
  %30 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %link, align 4
  %protocol = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %protocol, align 1
  tail call void @ipv4_update_pmtu(ptr noundef %skb, ptr noundef %29, i32 noundef %info, i32 noundef %31, i8 noundef zeroext %33) #20
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp26 = icmp eq i8 %7, 5
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %13, align 8
  br i1 %cmp26, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  %nd_net.i114 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 127
  %36 = ptrtoint ptr %nd_net.i114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nd_net.i114, align 4
  %link31 = getelementptr inbounds %struct.ip_tunnel, ptr %call16, i32 0, i32 15, i32 1
  %38 = ptrtoint ptr %link31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %link31, align 4
  %protocol32 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %protocol32 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %protocol32, align 1
  tail call void @ipv4_redirect(ptr noundef %skb, ptr noundef %37, i32 noundef %39, i8 noundef zeroext %41) #20
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 80
  %42 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call.i, label %if.end33.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end33.__in6_dev_get.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end33
  %call2.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 313, ptr noundef nonnull @.str.3) #20
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.end33.__in6_dev_get.exit_crit_edge
  %tobool35.not = icmp eq ptr %43, null
  br i1 %tobool35.not, label %__in6_dev_get.exit.if.end42_crit_edge, label %land.lhs.true36

__in6_dev_get.exit.if.end42_crit_edge:            ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

land.lhs.true36:                                  ; preds = %__in6_dev_get.exit
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %1, align 4
  %bf.clear = shl i8 %bf.load, 2
  %45 = and i8 %bf.clear, 60
  %mul38 = zext i8 %45 to i32
  %call39 = tail call i32 @ip6_err_gen_icmpv6_unreach(ptr noundef %skb, i32 noundef %mul38, i32 noundef %conv, i32 noundef %data_len.0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true36.cleanup_crit_edge, label %land.lhs.true36.if.end42_crit_edge

land.lhs.true36.if.end42_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true36.if.end42_crit_edge, %__in6_dev_get.exit.if.end42_crit_edge
  %daddr45 = getelementptr inbounds %struct.ip_tunnel, ptr %call16, i32 0, i32 15, i32 6, i32 9
  %46 = ptrtoint ptr %daddr45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %daddr45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp46 = icmp eq i32 %47, 0
  br i1 %cmp46, label %if.end42.cleanup_crit_edge, label %if.end49

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  %ttl = getelementptr inbounds %struct.ip_tunnel, ptr %call16, i32 0, i32 15, i32 6, i32 5
  %48 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp53 = icmp eq i8 %49, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %7)
  %cmp56 = icmp eq i8 %7, 11
  %or.cond104 = select i1 %cmp53, i1 %cmp56, i1 false
  br i1 %or.cond104, label %if.end49.cleanup_crit_edge, label %if.end59

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %err_time = getelementptr inbounds %struct.ip_tunnel, ptr %call16, i32 0, i32 5
  %51 = ptrtoint ptr %err_time to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %err_time, align 4
  %add.neg = add i32 %50, -3000
  %sub = sub i32 %add.neg, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp60 = icmp slt i32 %sub, 0
  %err_count = getelementptr inbounds %struct.ip_tunnel, ptr %call16, i32 0, i32 6
  br i1 %cmp60, label %if.then62, label %if.end59.if.end64_crit_edge

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #22
  %53 = ptrtoint ptr %err_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %err_count, align 4
  %inc = add i32 %54, 1
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59.if.end64_crit_edge
  %.sink = phi i32 [ %inc, %if.then62 ], [ 1, %if.end59.if.end64_crit_edge ]
  %55 = ptrtoint ptr %err_count to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink, ptr %err_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %57 = ptrtoint ptr %err_time to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %err_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end49.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %land.lhs.true36.cleanup_crit_edge, %if.then28, %if.then23, %cond.end.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb5.cleanup_crit_edge ], [ 0, %sw.bb8.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.then28 ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %if.end64 ], [ 0, %land.lhs.true36.cleanup_crit_edge ], [ -2, %cond.end.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipip6_tunnel_lookup(ptr noundef %net, ptr noundef readonly %dev, i32 noundef %remote, i32 noundef %local, i32 noundef %sifindex) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %remote, 4
  %xor = xor i32 %shr, %remote
  %and = and i32 %xor, 15
  %shr1 = lshr i32 %local, 4
  %xor2 = xor i32 %shr1, %local
  %and3 = and i32 %xor2, 15
  %0 = load i32, ptr @sit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %ifindex4 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %ifindex4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ifindex4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %xor5 = xor i32 %and3, %and
  %arrayidx = getelementptr [16 x ptr], ptr %call, i32 0, i32 %xor5
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %cond.end.do.end14_crit_edge

cond.end.do.end14_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end14

land.lhs.true:                                    ; preds = %cond.end
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true11

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end14

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b279 = load i1, ptr @ipip6_tunnel_lookup.__warned, align 1
  br i1 %.b279, label %land.lhs.true11.do.end14_crit_edge, label %if.then

land.lhs.true11.do.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end14

if.then:                                          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 107, ptr noundef nonnull @.str.3) #20
  br label %do.end14

do.end14:                                         ; preds = %if.then, %land.lhs.true11.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %cond.end.do.end14_crit_edge
  %tobool16.not290 = icmp eq ptr %4, null
  br i1 %tobool16.not290, label %do.end14.for.end_crit_edge, label %do.end14.for.body_crit_edge

do.end14.for.body_crit_edge:                      ; preds = %do.end14
  br label %for.body

do.end14.for.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %do.end54.for.body_crit_edge, %do.end14.for.body_crit_edge
  %t.0291 = phi ptr [ %16, %do.end54.for.body_crit_edge ], [ %4, %do.end14.for.body_crit_edge ]
  %saddr = getelementptr inbounds %struct.ip_tunnel, ptr %t.0291, i32 0, i32 15, i32 6, i32 8
  %5 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %local)
  %cmp = icmp eq i32 %6, %local
  br i1 %cmp, label %land.lhs.true17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true17:                                  ; preds = %for.body
  %daddr = getelementptr inbounds %struct.ip_tunnel, ptr %t.0291, i32 0, i32 15, i32 6, i32 9
  %7 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %remote)
  %cmp20 = icmp eq i32 %8, %remote
  br i1 %cmp20, label %land.lhs.true21, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true21:                                  ; preds = %land.lhs.true17
  br i1 %tobool.not, label %land.lhs.true21.land.lhs.true33_crit_edge, label %lor.lhs.false

land.lhs.true21.land.lhs.true33_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true33

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %link = getelementptr inbounds %struct.ip_tunnel, ptr %t.0291, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool24.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %10)
  %cmp28 = icmp eq i32 %cond, %10
  %or.cond = select i1 %tobool24.not, i1 true, i1 %cmp28
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sifindex)
  %cmp32 = icmp eq i32 %10, %sifindex
  %or.cond280 = or i1 %cmp32, %or.cond
  br i1 %or.cond280, label %lor.lhs.false.land.lhs.true33_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

lor.lhs.false.land.lhs.true33_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true33

land.lhs.true33:                                  ; preds = %lor.lhs.false.land.lhs.true33_crit_edge, %land.lhs.true21.land.lhs.true33_crit_edge
  %dev34 = getelementptr inbounds %struct.ip_tunnel, ptr %t.0291, i32 0, i32 2
  %11 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev34, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and35 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true33.for.inc_crit_edge, label %land.lhs.true33.cleanup_crit_edge

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true33.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %t.0291 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %t.0291, align 4
  %call44 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %for.inc.do.end54_crit_edge

for.inc.do.end54_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end54

land.lhs.true46:                                  ; preds = %for.inc
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true46.do.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %.b267278 = load i1, ptr @ipip6_tunnel_lookup.__warned.25, align 1
  br i1 %.b267278, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_lookup.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 107, ptr noundef nonnull @.str.3) #20
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true46.do.end54_crit_edge, %for.inc.do.end54_crit_edge
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %do.end54.for.end_crit_edge, label %do.end54.for.body_crit_edge

do.end54.for.body_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

do.end54.for.end_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %do.end54.for.end_crit_edge, %do.end14.for.end_crit_edge
  %arrayidx60 = getelementptr %struct.sit_net, ptr %call, i32 0, i32 1, i32 %and
  %17 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx60, align 4
  %call62 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true64, label %for.end.do.end72_crit_edge

for.end.do.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end72

land.lhs.true64:                                  ; preds = %for.end
  %call65 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true64.do.end72_crit_edge, label %land.lhs.true67

land.lhs.true64.do.end72_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end72

land.lhs.true67:                                  ; preds = %land.lhs.true64
  %.b268277 = load i1, ptr @ipip6_tunnel_lookup.__warned.26, align 1
  br i1 %.b268277, label %land.lhs.true67.do.end72_crit_edge, label %if.then69

land.lhs.true67.do.end72_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end72

if.then69:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_lookup.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 115, ptr noundef nonnull @.str.3) #20
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %land.lhs.true67.do.end72_crit_edge, %land.lhs.true64.do.end72_crit_edge, %for.end.do.end72_crit_edge
  %tobool75.not293 = icmp eq ptr %18, null
  br i1 %tobool75.not293, label %do.end72.for.end121_crit_edge, label %do.end72.for.body76_crit_edge

do.end72.for.body76_crit_edge:                    ; preds = %do.end72
  br label %for.body76

do.end72.for.end121_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end121

for.body76:                                       ; preds = %do.end119.for.body76_crit_edge, %do.end72.for.body76_crit_edge
  %t.1294 = phi ptr [ %28, %do.end119.for.body76_crit_edge ], [ %18, %do.end72.for.body76_crit_edge ]
  %daddr79 = getelementptr inbounds %struct.ip_tunnel, ptr %t.1294, i32 0, i32 15, i32 6, i32 9
  %19 = ptrtoint ptr %daddr79 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %daddr79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %remote)
  %cmp80 = icmp eq i32 %20, %remote
  br i1 %cmp80, label %land.lhs.true81, label %for.body76.for.inc102_crit_edge

for.body76.for.inc102_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc102

land.lhs.true81:                                  ; preds = %for.body76
  br i1 %tobool.not, label %land.lhs.true81.land.lhs.true95_crit_edge, label %lor.lhs.false83

land.lhs.true81.land.lhs.true95_crit_edge:        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true95

lor.lhs.false83:                                  ; preds = %land.lhs.true81
  %link85 = getelementptr inbounds %struct.ip_tunnel, ptr %t.1294, i32 0, i32 15, i32 1
  %21 = ptrtoint ptr %link85 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool86.not = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %22)
  %cmp90 = icmp eq i32 %cond, %22
  %or.cond281 = select i1 %tobool86.not, i1 true, i1 %cmp90
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %sifindex)
  %cmp94 = icmp eq i32 %22, %sifindex
  %or.cond282 = or i1 %cmp94, %or.cond281
  br i1 %or.cond282, label %lor.lhs.false83.land.lhs.true95_crit_edge, label %lor.lhs.false83.for.inc102_crit_edge

lor.lhs.false83.for.inc102_crit_edge:             ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc102

lor.lhs.false83.land.lhs.true95_crit_edge:        ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true95

land.lhs.true95:                                  ; preds = %lor.lhs.false83.land.lhs.true95_crit_edge, %land.lhs.true81.land.lhs.true95_crit_edge
  %dev96 = getelementptr inbounds %struct.ip_tunnel, ptr %t.1294, i32 0, i32 2
  %23 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev96, align 4
  %flags97 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags97, align 8
  %and98 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %land.lhs.true95.for.inc102_crit_edge, label %land.lhs.true95.cleanup_crit_edge

land.lhs.true95.cleanup_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true95.for.inc102_crit_edge:             ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc102

for.inc102:                                       ; preds = %land.lhs.true95.for.inc102_crit_edge, %lor.lhs.false83.for.inc102_crit_edge, %for.body76.for.inc102_crit_edge
  %27 = ptrtoint ptr %t.1294 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %t.1294, align 4
  %call109 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %land.lhs.true111, label %for.inc102.do.end119_crit_edge

for.inc102.do.end119_crit_edge:                   ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end119

land.lhs.true111:                                 ; preds = %for.inc102
  %call112 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %land.lhs.true111.do.end119_crit_edge, label %land.lhs.true114

land.lhs.true111.do.end119_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end119

land.lhs.true114:                                 ; preds = %land.lhs.true111
  %.b269276 = load i1, ptr @ipip6_tunnel_lookup.__warned.27, align 1
  br i1 %.b269276, label %land.lhs.true114.do.end119_crit_edge, label %if.then116

land.lhs.true114.do.end119_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end119

if.then116:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_lookup.__warned.27, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 115, ptr noundef nonnull @.str.3) #20
  br label %do.end119

do.end119:                                        ; preds = %if.then116, %land.lhs.true114.do.end119_crit_edge, %land.lhs.true111.do.end119_crit_edge, %for.inc102.do.end119_crit_edge
  %tobool75.not = icmp eq ptr %28, null
  br i1 %tobool75.not, label %do.end119.for.end121_crit_edge, label %do.end119.for.body76_crit_edge

do.end119.for.body76_crit_edge:                   ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body76

do.end119.for.end121_crit_edge:                   ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end121

for.end121:                                       ; preds = %do.end119.for.end121_crit_edge, %do.end72.for.end121_crit_edge
  %arrayidx126 = getelementptr %struct.sit_net, ptr %call, i32 0, i32 2, i32 %and3
  %29 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx126, align 4
  %call128 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %land.lhs.true130, label %for.end121.do.end138_crit_edge

for.end121.do.end138_crit_edge:                   ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end138

land.lhs.true130:                                 ; preds = %for.end121
  %call131 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %land.lhs.true130.do.end138_crit_edge, label %land.lhs.true133

land.lhs.true130.do.end138_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end138

land.lhs.true133:                                 ; preds = %land.lhs.true130
  %.b270275 = load i1, ptr @ipip6_tunnel_lookup.__warned.28, align 1
  br i1 %.b270275, label %land.lhs.true133.do.end138_crit_edge, label %if.then135

land.lhs.true133.do.end138_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end138

if.then135:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_lookup.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 122, ptr noundef nonnull @.str.3) #20
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %land.lhs.true133.do.end138_crit_edge, %land.lhs.true130.do.end138_crit_edge, %for.end121.do.end138_crit_edge
  %tobool141.not296 = icmp eq ptr %30, null
  br i1 %tobool141.not296, label %do.end138.for.end187_crit_edge, label %do.end138.for.body142_crit_edge

do.end138.for.body142_crit_edge:                  ; preds = %do.end138
  br label %for.body142

do.end138.for.end187_crit_edge:                   ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end187

for.body142:                                      ; preds = %do.end185.for.body142_crit_edge, %do.end138.for.body142_crit_edge
  %t.2297 = phi ptr [ %40, %do.end185.for.body142_crit_edge ], [ %30, %do.end138.for.body142_crit_edge ]
  %saddr145 = getelementptr inbounds %struct.ip_tunnel, ptr %t.2297, i32 0, i32 15, i32 6, i32 8
  %31 = ptrtoint ptr %saddr145 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saddr145, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %local)
  %cmp146 = icmp eq i32 %32, %local
  br i1 %cmp146, label %land.lhs.true147, label %for.body142.for.inc168_crit_edge

for.body142.for.inc168_crit_edge:                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc168

land.lhs.true147:                                 ; preds = %for.body142
  br i1 %tobool.not, label %land.lhs.true147.land.lhs.true161_crit_edge, label %lor.lhs.false149

land.lhs.true147.land.lhs.true161_crit_edge:      ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true161

lor.lhs.false149:                                 ; preds = %land.lhs.true147
  %link151 = getelementptr inbounds %struct.ip_tunnel, ptr %t.2297, i32 0, i32 15, i32 1
  %33 = ptrtoint ptr %link151 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %link151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool152.not = icmp eq i32 %34, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %34)
  %cmp156 = icmp eq i32 %cond, %34
  %or.cond283 = select i1 %tobool152.not, i1 true, i1 %cmp156
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %sifindex)
  %cmp160 = icmp eq i32 %34, %sifindex
  %or.cond284 = or i1 %cmp160, %or.cond283
  br i1 %or.cond284, label %lor.lhs.false149.land.lhs.true161_crit_edge, label %lor.lhs.false149.for.inc168_crit_edge

lor.lhs.false149.for.inc168_crit_edge:            ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc168

lor.lhs.false149.land.lhs.true161_crit_edge:      ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true161

land.lhs.true161:                                 ; preds = %lor.lhs.false149.land.lhs.true161_crit_edge, %land.lhs.true147.land.lhs.true161_crit_edge
  %dev162 = getelementptr inbounds %struct.ip_tunnel, ptr %t.2297, i32 0, i32 2
  %35 = ptrtoint ptr %dev162 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev162, align 4
  %flags163 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %flags163 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags163, align 8
  %and164 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %land.lhs.true161.for.inc168_crit_edge, label %land.lhs.true161.cleanup_crit_edge

land.lhs.true161.cleanup_crit_edge:               ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true161.for.inc168_crit_edge:            ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc168

for.inc168:                                       ; preds = %land.lhs.true161.for.inc168_crit_edge, %lor.lhs.false149.for.inc168_crit_edge, %for.body142.for.inc168_crit_edge
  %39 = ptrtoint ptr %t.2297 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %t.2297, align 4
  %call175 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %land.lhs.true177, label %for.inc168.do.end185_crit_edge

for.inc168.do.end185_crit_edge:                   ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end185

land.lhs.true177:                                 ; preds = %for.inc168
  %call178 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %land.lhs.true177.do.end185_crit_edge, label %land.lhs.true180

land.lhs.true177.do.end185_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end185

land.lhs.true180:                                 ; preds = %land.lhs.true177
  %.b271274 = load i1, ptr @ipip6_tunnel_lookup.__warned.29, align 1
  br i1 %.b271274, label %land.lhs.true180.do.end185_crit_edge, label %if.then182

land.lhs.true180.do.end185_crit_edge:             ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end185

if.then182:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_lookup.__warned.29, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 122, ptr noundef nonnull @.str.3) #20
  br label %do.end185

do.end185:                                        ; preds = %if.then182, %land.lhs.true180.do.end185_crit_edge, %land.lhs.true177.do.end185_crit_edge, %for.inc168.do.end185_crit_edge
  %tobool141.not = icmp eq ptr %40, null
  br i1 %tobool141.not, label %do.end185.for.end187_crit_edge, label %do.end185.for.body142_crit_edge

do.end185.for.body142_crit_edge:                  ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body142

do.end185.for.end187_crit_edge:                   ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end187

for.end187:                                       ; preds = %do.end185.for.end187_crit_edge, %do.end138.for.end187_crit_edge
  %tunnels_wc = getelementptr inbounds %struct.sit_net, ptr %call, i32 0, i32 3
  %41 = ptrtoint ptr %tunnels_wc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %tunnels_wc, align 4
  %call194 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %land.lhs.true196, label %for.end187.do.end204_crit_edge

for.end187.do.end204_crit_edge:                   ; preds = %for.end187
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end204

land.lhs.true196:                                 ; preds = %for.end187
  %call197 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %land.lhs.true196.do.end204_crit_edge, label %land.lhs.true199

land.lhs.true196.do.end204_crit_edge:             ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end204

land.lhs.true199:                                 ; preds = %land.lhs.true196
  %.b272273 = load i1, ptr @ipip6_tunnel_lookup.__warned.30, align 1
  br i1 %.b272273, label %land.lhs.true199.do.end204_crit_edge, label %if.then201

land.lhs.true199.do.end204_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end204

if.then201:                                       ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ipip6_tunnel_lookup.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 129, ptr noundef nonnull @.str.3) #20
  br label %do.end204

do.end204:                                        ; preds = %if.then201, %land.lhs.true199.do.end204_crit_edge, %land.lhs.true196.do.end204_crit_edge, %for.end187.do.end204_crit_edge
  %tobool206.not = icmp eq ptr %42, null
  br i1 %tobool206.not, label %do.end204.if.end213_crit_edge, label %land.lhs.true207

do.end204.if.end213_crit_edge:                    ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end213

land.lhs.true207:                                 ; preds = %do.end204
  %dev208 = getelementptr inbounds %struct.ip_tunnel, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev208 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev208, align 4
  %flags209 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %flags209 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags209, align 8
  %and210 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %land.lhs.true207.if.end213_crit_edge, label %land.lhs.true207.cleanup_crit_edge

land.lhs.true207.cleanup_crit_edge:               ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true207.if.end213_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end213

if.end213:                                        ; preds = %land.lhs.true207.if.end213_crit_edge, %do.end204.if.end213_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %land.lhs.true207.cleanup_crit_edge, %land.lhs.true161.cleanup_crit_edge, %land.lhs.true95.cleanup_crit_edge, %land.lhs.true33.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end213 ], [ %42, %land.lhs.true207.cleanup_crit_edge ], [ %t.2297, %land.lhs.true161.cleanup_crit_edge ], [ %t.1294, %land.lhs.true95.cleanup_crit_edge ], [ %t.0291, %land.lhs.true33.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_prefix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_custom_prefix(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iptunnel_pull_header(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_redirect(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_err_gen_icmpv6_unreach(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_rcv(ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sit_tunnel_rcv(ptr noundef %skb, i8 noundef zeroext 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sit_tunnel_rcv(ptr noundef %skb, i8 noundef zeroext %ipproto) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %daddr, align 4
  %call3 = tail call fastcc ptr @ipip6_tunnel_lookup(ptr noundef %12, ptr noundef %2, i32 noundef %14, i32 noundef %16, i32 noundef %cond)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cond.end.cleanup30_crit_edge, label %if.then

cond.end.cleanup30_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup30

if.then:                                          ; preds = %cond.end
  %protocol = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 15, i32 6, i32 6
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %ipproto)
  %cmp.not = icmp eq i8 %18, %ipproto
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp11.not = icmp eq i8 %18, 0
  %or.cond = or i1 %cmp.not, %cmp11.not
  br i1 %or.cond, label %if.end, label %if.then.drop_crit_edge

if.then.drop_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %drop

if.end:                                           ; preds = %if.then
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 8
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 127
  %21 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %policy_default.i.i.i.i = getelementptr inbounds %struct.net, ptr %22, i32 0, i32 46, i32 23
  %23 = ptrtoint ptr %policy_default.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %policy_default.i.i.i.i, align 16
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool1.i.i.i.i = icmp eq i8 %25, 0
  br i1 %tobool1.i.i.i.i, label %if.then5.i.i.i, label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end
  %policy_count.i.i.i = getelementptr inbounds %struct.net, ptr %22, i32 0, i32 46, i32 13
  %26 = ptrtoint ptr %policy_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %policy_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true8.i.i.i, label %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge

if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %if.then5.i.i.i
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %28 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool10.not.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true8.i.i.i.if.end17_crit_edge, label %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge

land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i.if.end17_crit_edge:          ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %and.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exitthread-pre-split.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, !prof !173

land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exitthread-pre-split.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exitthread-pre-split.i.i.i

skb_dst.exitthread-pre-split.i.i.i:               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr.i.i.i = load i32, ptr %31, align 8
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %skb_dst.exitthread-pre-split.i.i.i, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge
  %35 = phi i32 [ %.pr.i.i.i, %skb_dst.exitthread-pre-split.i.i.i ], [ %33, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %tobool12.not.i.i.i = icmp ult i32 %35, 2
  br i1 %tobool12.not.i.i.i, label %skb_dst.exit.i.i.i.xfrm4_policy_check.exit_crit_edge, label %land.lhs.true13.i.i.i

skb_dst.exit.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %xfrm4_policy_check.exit

land.lhs.true13.i.i.i:                            ; preds = %skb_dst.exit.i.i.i
  %and.i2.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i)
  %tobool.not.i3.i.i.i = icmp eq i32 %and.i2.i.i.i, 0
  br i1 %tobool.not.i3.i.i.i, label %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge, label %land.lhs.true.i6.i.i.i

land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit12.i.i.i

land.lhs.true.i6.i.i.i:                           ; preds = %land.lhs.true13.i.i.i
  %call.i4.i.i.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i.i)
  %tobool1.not.i5.i.i.i = icmp eq i32 %call.i4.i.i.i, 0
  br i1 %tobool1.not.i5.i.i.i, label %land.rhs.i9.i.i.i, label %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge

land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit12.i.i.i

land.rhs.i9.i.i.i:                                ; preds = %land.lhs.true.i6.i.i.i
  %call2.i7.i.i.i = tail call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i.i)
  %tobool3.not.i8.i.i.i = icmp eq i32 %call2.i7.i.i.i, 0
  br i1 %tobool3.not.i8.i.i.i, label %do.end.i10.i.i.i, label %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, !prof !173

land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit12.i.i.i

do.end.i10.i.i.i:                                 ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exit12.i.i.i

skb_dst.exit12.i.i.i:                             ; preds = %do.end.i10.i.i.i, %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %31, align 8
  %and25.i11.i.i.i = and i32 %37, -2
  %38 = inttoptr i32 %and25.i11.i.i.i to ptr
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags.i.i.i, align 4
  %41 = and i16 %40, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool16.not.i.i.i = icmp eq i16 %41, 0
  br i1 %tobool16.not.i.i.i, label %skb_dst.exit12.i.i.i.xfrm4_policy_check.exit_crit_edge, label %skb_dst.exit12.i.i.i.if.end17_crit_edge

skb_dst.exit12.i.i.i.if.end17_crit_edge:          ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

skb_dst.exit12.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %xfrm4_policy_check.exit

if.else.i.i.i:                                    ; preds = %if.end
  %42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %and.i13.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp eq i32 %and.i13.i.i.i, 0
  br i1 %tobool.not.i14.i.i.i, label %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge, label %land.lhs.true.i17.i.i.i

if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge:     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit23.i.i.i

land.lhs.true.i17.i.i.i:                          ; preds = %if.else.i.i.i
  %call.i15.i.i.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i.i)
  %tobool1.not.i16.i.i.i = icmp eq i32 %call.i15.i.i.i, 0
  br i1 %tobool1.not.i16.i.i.i, label %land.rhs.i20.i.i.i, label %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge

land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit23thread-pre-split.i.i.i

land.rhs.i20.i.i.i:                               ; preds = %land.lhs.true.i17.i.i.i
  %call2.i18.i.i.i = tail call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i.i)
  %tobool3.not.i19.i.i.i = icmp eq i32 %call2.i18.i.i.i, 0
  br i1 %tobool3.not.i19.i.i.i, label %do.end.i21.i.i.i, label %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, !prof !173

land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit23thread-pre-split.i.i.i

do.end.i21.i.i.i:                                 ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exit23thread-pre-split.i.i.i

skb_dst.exit23thread-pre-split.i.i.i:             ; preds = %do.end.i21.i.i.i, %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr35.i.i.i = load i32, ptr %42, align 8
  br label %skb_dst.exit23.i.i.i

skb_dst.exit23.i.i.i:                             ; preds = %skb_dst.exit23thread-pre-split.i.i.i, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge
  %46 = phi i32 [ %.pr35.i.i.i, %skb_dst.exit23thread-pre-split.i.i.i ], [ %44, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %tobool21.not.i.i.i = icmp ult i32 %46, 2
  br i1 %tobool21.not.i.i.i, label %skb_dst.exit23.i.i.i.xfrm4_policy_check.exit_crit_edge, label %land.lhs.true22.i.i.i

skb_dst.exit23.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit23.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %xfrm4_policy_check.exit

land.lhs.true22.i.i.i:                            ; preds = %skb_dst.exit23.i.i.i
  %and.i24.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i.i)
  %tobool.not.i25.i.i.i = icmp eq i32 %and.i24.i.i.i, 0
  br i1 %tobool.not.i25.i.i.i, label %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge, label %land.lhs.true.i28.i.i.i

land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit34.i.i.i

land.lhs.true.i28.i.i.i:                          ; preds = %land.lhs.true22.i.i.i
  %call.i26.i.i.i = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i)
  %tobool1.not.i27.i.i.i = icmp eq i32 %call.i26.i.i.i, 0
  br i1 %tobool1.not.i27.i.i.i, label %land.rhs.i31.i.i.i, label %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge

land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit34.i.i.i

land.rhs.i31.i.i.i:                               ; preds = %land.lhs.true.i28.i.i.i
  %call2.i29.i.i.i = tail call i32 @rcu_read_lock_bh_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i.i)
  %tobool3.not.i30.i.i.i = icmp eq i32 %call2.i29.i.i.i, 0
  br i1 %tobool3.not.i30.i.i.i, label %do.end.i32.i.i.i, label %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, !prof !173

land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_dst.exit34.i.i.i

do.end.i32.i.i.i:                                 ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #20
  br label %skb_dst.exit34.i.i.i

skb_dst.exit34.i.i.i:                             ; preds = %do.end.i32.i.i.i, %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %42, align 8
  %and25.i33.i.i.i = and i32 %48, -2
  %49 = inttoptr i32 %and25.i33.i.i.i to ptr
  %flags24.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %flags24.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags24.i.i.i, align 4
  %52 = and i16 %51, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool27.not.i.i.i = icmp eq i16 %52, 0
  br i1 %tobool27.not.i.i.i, label %skb_dst.exit34.i.i.i.xfrm4_policy_check.exit_crit_edge, label %skb_dst.exit34.i.i.i.if.end17_crit_edge

skb_dst.exit34.i.i.i.if.end17_crit_edge:          ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

skb_dst.exit34.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %xfrm4_policy_check.exit

xfrm4_policy_check.exit:                          ; preds = %skb_dst.exit34.i.i.i.xfrm4_policy_check.exit_crit_edge, %skb_dst.exit23.i.i.i.xfrm4_policy_check.exit_crit_edge, %skb_dst.exit12.i.i.i.xfrm4_policy_check.exit_crit_edge, %skb_dst.exit.i.i.i.xfrm4_policy_check.exit_crit_edge
  %call30.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 2) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.i.i.i.not = icmp eq i32 %call30.i.i.i, 0
  br i1 %tobool31.i.i.i.not, label %xfrm4_policy_check.exit.drop_crit_edge, label %xfrm4_policy_check.exit.if.end17_crit_edge

xfrm4_policy_check.exit.if.end17_crit_edge:       ; preds = %xfrm4_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

xfrm4_policy_check.exit.drop_crit_edge:           ; preds = %xfrm4_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %drop

if.end17:                                         ; preds = %xfrm4_policy_check.exit.if.end17_crit_edge, %skb_dst.exit34.i.i.i.if.end17_crit_edge, %skb_dst.exit12.i.i.i.if.end17_crit_edge, %land.lhs.true8.i.i.i.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %ipproto)
  %cmp19 = icmp eq i8 %ipproto, -119
  %53 = select i1 %cmp19, i16 -30649, i16 2048
  %call.i = tail call i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef 0, i16 noundef zeroext %53, i1 noundef zeroext false, i1 noundef zeroext false) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %cleanup, label %if.end17.drop_crit_edge

if.end17.drop_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %drop

cleanup:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %mplsip_tpi.ipip_tpi = select i1 %cmp19, ptr @mplsip_tpi, ptr @ipip_tpi
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %56 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %58 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %59 = load i8, ptr @log_ecn_error, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool27 = icmp ne i8 %59, 0
  %call28 = tail call i32 @ip_tunnel_rcv(ptr noundef nonnull %call3, ptr noundef %skb, ptr noundef nonnull %mplsip_tpi.ipip_tpi, ptr noundef null, i1 noundef zeroext %tobool27) #20
  br label %cleanup30

drop:                                             ; preds = %if.end17.drop_crit_edge, %xfrm4_policy_check.exit.drop_crit_edge, %if.then.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #20
  br label %cleanup30

cleanup30:                                        ; preds = %drop, %cleanup, %cond.end.cleanup30_crit_edge
  %retval.1 = phi i32 [ 0, %drop ], [ %call28, %cleanup ], [ 1, %cond.end.cleanup30_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mplsip_rcv(ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sit_tunnel_rcv(ptr noundef %skb, i8 noundef zeroext -119)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sit_init_net(ptr noundef %net) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %tunnels_wc = getelementptr inbounds %struct.sit_net, ptr %call, i32 0, i32 3
  %tunnels = getelementptr inbounds %struct.sit_net, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %tunnels to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tunnels_wc, ptr %tunnels, align 4
  %tunnels_l = getelementptr inbounds %struct.sit_net, ptr %call, i32 0, i32 2
  %arrayidx3 = getelementptr %struct.sit_net, ptr %call, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tunnels_l, ptr %arrayidx3, align 4
  %tunnels_r = getelementptr inbounds %struct.sit_net, ptr %call, i32 0, i32 1
  %arrayidx6 = getelementptr %struct.sit_net, ptr %call, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tunnels_r, ptr %arrayidx6, align 4
  %arrayidx9 = getelementptr %struct.sit_net, ptr %call, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %arrayidx9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_fb_tunnels_only_for_init_net to i32))
  %5 = load i32, ptr @sysctl_fb_tunnels_only_for_init_net, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %net_has_fallback_tunnels.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

net_has_fallback_tunnels.exit:                    ; preds = %entry
  %cmp.i = icmp eq ptr %net, @init_net
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.i = icmp eq i32 %5, 1
  %spec.select.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %spec.select.i, label %net_has_fallback_tunnels.exit.if.end_crit_edge, label %net_has_fallback_tunnels.exit.cleanup_crit_edge

net_has_fallback_tunnels.exit.cleanup_crit_edge:  ; preds = %net_has_fallback_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

net_has_fallback_tunnels.exit.if.end_crit_edge:   ; preds = %net_has_fallback_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end:                                           ; preds = %net_has_fallback_tunnels.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call11 = tail call ptr @alloc_netdev_mqs(i32 noundef 180, ptr noundef nonnull @.str.40, i8 noundef zeroext 0, ptr noundef nonnull @ipip6_tunnel_setup, i32 noundef 1, i32 noundef 1) #20
  %fb_tunnel_dev = getelementptr inbounds %struct.sit_net, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %fb_tunnel_dev, align 4
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %net, ptr %nd_net.i, align 4
  %8 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb_tunnel_dev, align 4
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 136
  %10 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sit_link_ops, ptr %rtnl_link_ops, align 4
  %11 = load ptr, ptr %fb_tunnel_dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features, align 16
  %or = or i64 %13, 8192
  store i64 %or, ptr %features, align 16
  %14 = load ptr, ptr %fb_tunnel_dev, align 4
  %call19 = tail call i32 @register_netdev(ptr noundef %14) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %15 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fb_tunnel_dev, align 4
  br i1 %tobool20.not, label %ipip6_tunnel_clone_6rd.exit, label %err_reg_dev

ipip6_tunnel_clone_6rd.exit:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  %ip6rd.i = getelementptr i8, ptr %16, i32 2436
  %17 = ptrtoint ptr %ip6rd.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 537001984, ptr %ip6rd.i, align 4
  %arrayidx1.i.i.i = getelementptr i8, ptr %16, i32 2440
  %prefixlen.i = getelementptr i8, ptr %16, i32 2456
  %18 = call ptr @memset(ptr %arrayidx1.i.i.i, i32 0, i32 16)
  %19 = ptrtoint ptr %prefixlen.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 16, ptr %prefixlen.i, align 4
  %relay_prefixlen.i = getelementptr i8, ptr %16, i32 2458
  %20 = ptrtoint ptr %relay_prefixlen.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %relay_prefixlen.i, align 2
  %21 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fb_tunnel_dev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 2304
  %iph1.i = getelementptr i8, ptr %22, i32 2396
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 127
  %23 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nd_net.i.i, align 4
  %25 = load i32, ptr @sit_net_id, align 4
  %call3.i = tail call fastcc ptr @net_generic(ptr noundef %24, i32 noundef %25) #20
  %protocol.i = getelementptr i8, ptr %22, i32 2405
  %26 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 41, ptr %protocol.i, align 1
  %27 = ptrtoint ptr %iph1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 69, ptr %iph1.i, align 4
  %ttl.i = getelementptr i8, ptr %22, i32 2404
  %28 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 64, ptr %ttl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !200
  %tunnels_wc27.i = getelementptr inbounds %struct.sit_net, ptr %call3.i, i32 0, i32 3
  %29 = ptrtoint ptr %tunnels_wc27.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %add.ptr.i.i, ptr %tunnels_wc27.i, align 4
  %30 = ptrtoint ptr %fb_tunnel_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fb_tunnel_dev, align 4
  %parms = getelementptr i8, ptr %31, i32 2364
  %call31 = tail call ptr @strcpy(ptr noundef %parms, ptr noundef %31) #24
  br label %cleanup

err_reg_dev:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @free_netdev(ptr noundef %16) #20
  br label %cleanup

cleanup:                                          ; preds = %err_reg_dev, %ipip6_tunnel_clone_6rd.exit, %if.end.cleanup_crit_edge, %net_has_fallback_tunnels.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ipip6_tunnel_clone_6rd.exit ], [ 0, %net_has_fallback_tunnels.exit.cleanup_crit_edge ], [ %call19, %err_reg_dev ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sit_exit_batch_net(ptr noundef readonly %net_list) #4 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #20
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  call void @rtnl_lock() #20
  %3 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn10 = load ptr, ptr %net_list, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %net_list
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.cond.loopexit:                                ; preds = %for.end50.i
  %4 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %net_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.cond.loopexit.for.end_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %net.0 = getelementptr i8, ptr %.pn12, i32 -116
  %5 = load i32, ptr @sit_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %net.0, i32 noundef %5) #20
  %dev_base_head.i = getelementptr i8, ptr %.pn12, i32 168
  %6 = ptrtoint ptr %dev_base_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_base_head.i, align 4
  %cmp.not76.i = icmp eq ptr %7, %dev_base_head.i
  br i1 %cmp.not76.i, label %for.body.for.cond16.preheader.i.preheader_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.cond16.preheader.i.preheader_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond16.preheader.i.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn.in77.i = phi ptr [ %.pn79.i, %for.inc.i.for.body.i_crit_edge ], [ %7, %for.body.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in77.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn79.i = load ptr, ptr %.pn.in77.i, align 8
  %rtnl_link_ops.i = getelementptr i8, ptr %.pn.in77.i, i32 2012
  %9 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtnl_link_ops.i, align 4
  %cmp7.i = icmp eq ptr %10, @sit_link_ops
  br i1 %cmp7.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %dev.078.i = getelementptr i8, ptr %.pn.in77.i, i32 -40
  call void @unregister_netdevice_queue(ptr noundef %dev.078.i, ptr noundef nonnull %list) #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn79.i, %dev_base_head.i
  br i1 %cmp.not.i, label %for.inc.i.for.cond16.preheader.i.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.for.cond16.preheader.i.preheader_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond16.preheader.i.preheader

for.cond16.preheader.i.preheader:                 ; preds = %for.inc.i.for.cond16.preheader.i.preheader_crit_edge, %for.body.for.cond16.preheader.i.preheader_crit_edge
  br label %for.cond16.preheader.i

for.cond16.preheader.i:                           ; preds = %for.end50.i.for.cond16.preheader.i_crit_edge, %for.cond16.preheader.i.preheader
  %prio.084.i = phi i32 [ %inc52.i, %for.end50.i.for.cond16.preheader.i_crit_edge ], [ 0, %for.cond16.preheader.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prio.084.i)
  %tobool.not.i = icmp eq i32 %prio.084.i, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 16
  %arrayidx.i = getelementptr %struct.sit_net, ptr %call.i, i32 0, i32 4, i32 %prio.084.i
  br label %for.body18.i

for.body18.i:                                     ; preds = %while.end.i.for.body18.i_crit_edge, %for.cond16.preheader.i
  %h.083.i = phi i32 [ 0, %for.cond16.preheader.i ], [ %inc.i, %while.end.i.for.body18.i_crit_edge ]
  %call19.i = call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call19.i, label %for.body18.i.do.end.i_crit_edge, label %land.lhs.true.i

for.body18.i.do.end.i_crit_edge:                  ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body18.i
  %call20.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true22.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %.b72.i = load i1, ptr @sit_destroy_tunnels.__warned, align 1
  br i1 %.b72.i, label %land.lhs.true22.i.do.end.i_crit_edge, label %if.then24.i

land.lhs.true22.i.do.end.i_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

if.then24.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @sit_destroy_tunnels.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1881, ptr noundef nonnull @.str.8) #20
  br label %do.end.i

do.end.i:                                         ; preds = %if.then24.i, %land.lhs.true22.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.body18.i.do.end.i_crit_edge
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx27.i = getelementptr ptr, ptr %12, i32 %h.083.i
  %13 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %t.080.i = load ptr, ptr %arrayidx27.i, align 4
  %tobool28.not81.i = icmp eq ptr %t.080.i, null
  br i1 %tobool28.not81.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i

while.body.i:                                     ; preds = %do.end46.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %t.082.i = phi ptr [ %t.0.i, %do.end46.i.while.body.i_crit_edge ], [ %t.080.i, %do.end.i.while.body.i_crit_edge ]
  %dev29.i = getelementptr inbounds %struct.ip_tunnel, ptr %t.082.i, i32 0, i32 2
  %14 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev29.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 127
  %16 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nd_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %net.0
  br i1 %cmp.i.not.i, label %while.body.i.do.body36.i_crit_edge, label %if.then33.i

while.body.i.do.body36.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body36.i

if.then33.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @unregister_netdevice_queue(ptr noundef %15, ptr noundef nonnull %list) #20
  br label %do.body36.i

do.body36.i:                                      ; preds = %if.then33.i, %while.body.i.do.body36.i_crit_edge
  %call37.i = call zeroext i1 @lockdep_rtnl_is_held() #20
  br i1 %call37.i, label %do.body36.i.do.end46.i_crit_edge, label %land.lhs.true38.i

do.body36.i.do.end46.i_crit_edge:                 ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end46.i

land.lhs.true38.i:                                ; preds = %do.body36.i
  %call39.i = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true38.i.do.end46.i_crit_edge, label %land.lhs.true41.i

land.lhs.true38.i.do.end46.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end46.i

land.lhs.true41.i:                                ; preds = %land.lhs.true38.i
  %.b7071.i = load i1, ptr @sit_destroy_tunnels.__warned.41, align 1
  br i1 %.b7071.i, label %land.lhs.true41.i.do.end46.i_crit_edge, label %if.then43.i

land.lhs.true41.i.do.end46.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end46.i

if.then43.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @sit_destroy_tunnels.__warned.41, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1889, ptr noundef nonnull @.str.8) #20
  br label %do.end46.i

do.end46.i:                                       ; preds = %if.then43.i, %land.lhs.true41.i.do.end46.i_crit_edge, %land.lhs.true38.i.do.end46.i_crit_edge, %do.body36.i.do.end46.i_crit_edge
  %18 = ptrtoint ptr %t.082.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %t.0.i = load ptr, ptr %t.082.i, align 4
  %tobool28.not.i = icmp eq ptr %t.0.i, null
  br i1 %tobool28.not.i, label %do.end46.i.while.end.i_crit_edge, label %do.end46.i.while.body.i_crit_edge

do.end46.i.while.body.i_crit_edge:                ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

do.end46.i.while.end.i_crit_edge:                 ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end.i

while.end.i:                                      ; preds = %do.end46.i.while.end.i_crit_edge, %do.end.i.while.end.i_crit_edge
  %inc.i = add nuw nsw i32 %h.083.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i
  br i1 %exitcond.not.i, label %for.end50.i, label %while.end.i.for.body18.i_crit_edge

while.end.i.for.body18.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body18.i

for.end50.i:                                      ; preds = %while.end.i
  %inc52.i = add nuw nsw i32 %prio.084.i, 1
  %exitcond85.not.i = icmp eq i32 %inc52.i, 4
  br i1 %exitcond85.not.i, label %for.cond.loopexit, label %for.end50.i.for.cond16.preheader.i_crit_edge

for.end50.i.for.cond16.preheader.i_crit_edge:     ; preds = %for.end50.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond16.preheader.i

for.end:                                          ; preds = %for.cond.loopexit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #20
  call void @rtnl_unlock() #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_tunnel_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nobuiltin }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { nounwind readnone }
attributes #28 = { nounwind allocsize(2) }
attributes #29 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !47, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !65, !66, !68, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !102, !103, !105, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !124, !125, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160}
!llvm.named.register.sp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__param_log_ecn_error, !1, !"__param_log_ecn_error", i1 false, i1 false}
!1 = !{!"../net/ipv6/sit.c", i32 65, i32 1}
!2 = !{ptr @__UNIQUE_ID_log_ecn_errortype592, !1, !"__UNIQUE_ID_log_ecn_errortype592", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_log_ecn_error593, !4, !"__UNIQUE_ID_log_ecn_error593", i1 false, i1 false}
!4 = !{!"../net/ipv6/sit.c", i32 66, i32 1}
!5 = !{ptr @__initcall__kmod_sit__635_2020_sit_init6, !6, !"__initcall__kmod_sit__635_2020_sit_init6", i1 false, i1 false}
!6 = !{!"../net/ipv6/sit.c", i32 2020, i32 1}
!7 = !{ptr @__exitcall_sit_cleanup, !8, !"__exitcall_sit_cleanup", i1 false, i1 false}
!8 = !{!"../net/ipv6/sit.c", i32 2021, i32 1}
!9 = !{ptr @__UNIQUE_ID_file636, !10, !"__UNIQUE_ID_file636", i1 false, i1 false}
!10 = !{!"../net/ipv6/sit.c", i32 2022, i32 1}
!11 = !{ptr @__UNIQUE_ID_license637, !10, !"__UNIQUE_ID_license637", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias638, !13, !"__UNIQUE_ID_alias638", i1 false, i1 false}
!13 = !{!"../net/ipv6/sit.c", i32 2023, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias639, !15, !"__UNIQUE_ID_alias639", i1 false, i1 false}
!15 = !{!"../net/ipv6/sit.c", i32 2024, i32 1}
!16 = !{ptr @__param_str_log_ecn_error, !1, !"__param_str_log_ecn_error", i1 false, i1 false}
!17 = !{ptr @log_ecn_error, !18, !"log_ecn_error", i1 false, i1 false}
!18 = !{!"../net/ipv6/sit.c", i32 64, i32 13}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv6/sit.c", i32 1831, i32 11}
!21 = !{ptr @sit_link_ops, !22, !"sit_link_ops", i1 false, i1 false}
!22 = !{!"../net/ipv6/sit.c", i32 1830, i32 29}
!23 = !{ptr @ipip6_netdev_ops, !24, !"ipip6_netdev_ops", i1 false, i1 false}
!24 = !{!"../net/ipv6/sit.c", i32 1400, i32 36}
!25 = !{ptr @ipip6_tunnel_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../net/ipv6/sit.c", i32 1456, i32 16}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!38 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sit_net_id, !40, !"sit_net_id", i1 false, i1 false}
!40 = !{!"../net/ipv6/sit.c", i32 75, i32 21}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/ipv6/sit.c", i32 166, i32 15}
!43 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../net/ipv6/sit.c", i32 430, i32 2}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/ipv6/sit.c", i32 434, i32 13}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/ipv6/sit.c", i32 445, i32 7}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/ipv6/sit.c", i32 417, i32 7}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv6/sit.c", i32 893, i32 4}
!56 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ipip6_tunnel_xmit.descriptor, !55, !"descriptor", i1 false, i1 false}
!58 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ipip6_tunnel_xmit.descriptor.14, !60, !"descriptor", i1 false, i1 false}
!60 = !{!"../net/ipv6/sit.c", i32 922, i32 4}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/net/ip_tunnels.h", i32 371, i32 8}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/ipv6/sit.c", i32 345, i32 2}
!68 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!71 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../net/ipv6/sit.c", i32 378, i32 2}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/ipv6/sit.c", i32 380, i32 11}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../net/ipv6/sit.c", i32 380, i32 44}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../net/ipv6/sit.c", i32 240, i32 11}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/ipv6/sit.c", i32 259, i32 16}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../net/ipv6/sit.c", i32 179, i32 2}
!88 = !{ptr @ipip6_policy, !89, !"ipip6_policy", i1 false, i1 false}
!89 = !{!"../net/ipv6/sit.c", i32 1799, i32 32}
!90 = !{ptr @sit_handler, !91, !"sit_handler", i1 false, i1 false}
!91 = !{!"../net/ipv6/sit.c", i32 1845, i32 27}
!92 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/ipv6/sit.c", i32 718, i32 5}
!94 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ipip6_rcv._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ipip6_rcv._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../net/ipv6/sit.c", i32 107, i32 2}
!99 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../net/ipv6/sit.c", i32 115, i32 2}
!102 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../net/ipv6/sit.c", i32 122, i32 2}
!105 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/ipv6/sit.c", i32 129, i32 6}
!108 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/ipv6/sit.c", i32 660, i32 3}
!110 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @packet_is_spoofed._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @packet_is_spoofed._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/ipv6/sit.c", i32 672, i32 2}
!115 = !{ptr @packet_is_spoofed._entry.33, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @packet_is_spoofed._entry_ptr.35, !114, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../net/ipv6/sit.c", i32 295, i32 2}
!119 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!124 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!127 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ipip_handler, !129, !"ipip_handler", i1 false, i1 false}
!129 = !{!"../net/ipv6/sit.c", i32 1851, i32 27}
!130 = !{ptr @mplsip_tpi, !131, !"mplsip_tpi", i1 false, i1 false}
!131 = !{!"../net/ipv6/sit.c", i32 751, i32 34}
!132 = !{ptr @ipip_tpi, !133, !"ipip_tpi", i1 false, i1 false}
!133 = !{!"../net/ipv6/sit.c", i32 745, i32 34}
!134 = !{ptr @mplsip_handler, !135, !"mplsip_handler", i1 false, i1 false}
!135 = !{!"../net/ipv6/sit.c", i32 1858, i32 27}
!136 = !{ptr @sit_net_ops, !137, !"sit_net_ops", i1 false, i1 false}
!137 = !{!"../net/ipv6/sit.c", i32 1954, i32 33}
!138 = !{ptr @.str.40, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/ipv6/sit.c", i32 1909, i32 24}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../net/ipv6/sit.c", i32 1881, i32 8}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../net/ipv6/sit.c", i32 1889, i32 9}
!144 = !{ptr @.str.42, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/ipv6/sit.c", i32 1978, i32 2}
!146 = !{ptr @.str.43, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @sit_init._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @sit_init._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.45, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/ipv6/sit.c", i32 1985, i32 3}
!151 = !{ptr @sit_init._entry.44, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @sit_init._entry_ptr.46, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.48, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/ipv6/sit.c", i32 1990, i32 3}
!155 = !{ptr @sit_init._entry.47, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @sit_init._entry_ptr.49, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.51, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/ipv6/sit.c", i32 1996, i32 3}
!159 = !{ptr @sit_init._entry.50, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @sit_init._entry_ptr.52, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{!"sp"}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i64 790052, i64 790113}
!172 = !{i64 792784}
!173 = !{!"branch_weights", i32 1, i32 2000}
!174 = !{i64 793069}
!175 = !{i64 2152540663, i64 2152540688}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i64 5036218}
!178 = !{i64 5036415}
!179 = !{i64 2152521648}
!180 = !{i64 2149402511}
!181 = !{i64 2149402777}
!182 = !{i64 2152541344, i64 2152541369}
!183 = !{i64 2158391676, i64 2158391956, i64 2158392290, i64 2158392624}
!184 = !{i64 2158402543}
!185 = !{i64 2158348915}
!186 = !{i64 2148999729, i64 2148999734, i64 2148999747, i64 2148999791, i64 2148999825, i64 2148999846}
!187 = !{i64 2148475907}
!188 = !{i64 2148390347, i64 2148390379, i64 2148390408, i64 2148390442, i64 2148390473, i64 2148390496}
!189 = !{i64 2149352021}
!190 = !{i64 2158357441}
!191 = !{i64 2158364248}
!192 = !{!"auto-init"}
!193 = !{i8 0, i8 2}
!194 = !{i64 2149910510}
!195 = !{i64 2149915442}
!196 = !{i64 2149937154}
!197 = !{i64 2149942046}
!198 = !{i64 2150018503}
!199 = !{i64 2150018828}
!200 = !{i64 2158448429}
