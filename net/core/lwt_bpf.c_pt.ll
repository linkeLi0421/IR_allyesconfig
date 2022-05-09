; ModuleID = '/llk/IR_all_yes/net/core/lwt_bpf.c_pt.bc'
source_filename = "../net/core/lwt_bpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lwtunnel_encap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.92 }
%struct.atomic_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.175, %union.anon.176, [48 x i8], %union.anon.177, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.179, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.175 = type { ptr }
%union.anon.176 = type { i64 }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type { i32, ptr }
%union.anon.179 = type { %struct.anon.180 }
%struct.anon.180 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.181, i32, i32, i32, i16, i16, %union.anon.183, i32, %union.anon.184, %union.anon.185, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.181 = type { i32 }
%union.anon.183 = type { i32 }
%union.anon.184 = type { i32 }
%union.anon.185 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.174, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.174 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.sock_common = type { %union.anon.144, %union.anon.146, %union.anon.147, i16, i8, i8, i32, %union.anon.149, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.152, [0 x i32], %union.anon.153, i16, i16, %union.anon.154, %struct.refcount_struct, [0 x i32], %union.anon.155 }
%union.anon.144 = type { i64 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i32 }
%union.anon.149 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.152 = type { i32 }
%union.anon.153 = type { %struct.hlist_node }
%union.anon.154 = type { i32 }
%union.anon.155 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.156, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.157, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.158, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.156 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.157 = type { ptr }
%union.anon.158 = type { ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.104, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.104 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.bpf_lwt_prog = type { ptr, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.138 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { %struct.anon.140, [0 x %struct.sock_filter] }
%struct.anon.140 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }

@__initcall__kmod_lwt_bpf__609_659_bpf_lwt_init4 = internal global ptr @bpf_lwt_init, section ".initcall4.init", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@skb_decrease_gso_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_encap_ops = internal constant { %struct.lwtunnel_encap_ops, [60 x i8] } { %struct.lwtunnel_encap_ops { ptr @bpf_build_state, ptr @bpf_destroy_state, ptr @bpf_output, ptr @bpf_input, ptr @bpf_fill_encap_info, ptr @bpf_encap_nlsize, ptr @bpf_encap_cmp, ptr @bpf_xmit, ptr null }, [60 x i8] zeroinitializer }, align 32
@bpf_nl_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@bpf_prog_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 256, %union.anon.27 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@bpf_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014orig_output not set on dst for prog %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bpf_output\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/core/lwt_bpf.c\00", [45 x i8] zeroinitializer }, align 32
@bpf_output._entry_ptr = internal global ptr @bpf_output._entry, section ".printk_index", align 4
@run_lwt_bpf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@run_lwt_bpf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Illegal redirect return code in prog %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"run_lwt_bpf\00", [20 x i8] zeroinitializer }, align 32
@run_lwt_bpf._entry_ptr = internal global ptr @run_lwt_bpf._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@run_lwt_bpf.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@run_lwt_bpf._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.3, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014bpf-lwt: Illegal return value %u, expect packet loss\0A\00", [40 x i8] zeroinitializer }, align 32
@run_lwt_bpf._entry_ptr.10 = internal global ptr @run_lwt_bpf._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 17, i64 41, i64 47]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 7, i64 128]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 7, i64 128]
@___asan_gen_.19 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 1011, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"bpf_encap_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 513, i32 40 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"bpf_nl_policy\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 364, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"bpf_prog_policy\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 328, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 153, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 58, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private constant [22 x i8] c"../net/core/lwt_bpf.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 75, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 613, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 271, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__initcall__kmod_lwt_bpf__609_659_bpf_lwt_init4, ptr @bpf_output._entry, ptr @bpf_output._entry_ptr, ptr @run_lwt_bpf._entry, ptr @run_lwt_bpf._entry.8, ptr @run_lwt_bpf._entry_ptr, ptr @run_lwt_bpf._entry_ptr.10, ptr @.str, ptr @bpf_encap_ops, ptr @bpf_nl_policy, ptr @bpf_prog_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_encap_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_nl_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_prog_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_lwt_bpf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_lwt_bpf._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_lwt_push_ip_encap(ptr noundef %skb, ptr noundef %hdr, i32 noundef %len, i1 noundef zeroext %ingress) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %len, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -237, i32 %0)
  %1 = icmp ult i32 %0, -237
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end, !prof !46

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %hdr, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.lshr)
  %cmp3 = icmp eq i8 %bf.lshr, 4
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %bf.clear = shl i8 %bf.load, 2
  %3 = and i8 %bf.clear, 60
  %mul = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %len)
  %cmp8 = icmp ugt i32 %mul, %len
  br i1 %cmp8, label %if.then5.cleanup_crit_edge, label %if.then5.if.end36_crit_edge, !prof !46

if.then5.if.end36_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.lshr)
  %cmp21 = icmp ne i8 %bf.lshr, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %len)
  %cmp24 = icmp ult i32 %len, 40
  %or.cond = or i1 %cmp24, %cmp21
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.else.if.end36_crit_edge, !prof !47

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %if.else.if.end36_crit_edge, %if.then5.if.end36_crit_edge
  br i1 %ingress, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.end36
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %4 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_len, align 4
  %conv39 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv39, %len
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %6 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then38.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.then38.skb_header_cloned.exit.i_crit_edge:     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %7 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %10, 65535
  %shr.i.i = ashr i32 %10, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.then38.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.then38.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end59_crit_edge, label %if.then3.i.i

skb_header_cloned.exit.i.if.end59_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then3.i.i:                                     ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = tail call i32 @llvm.usub.sat.i32(i32 %add, i32 %sub.ptr.sub.i.i.i) #12
  br label %if.end50

if.else40:                                        ; preds = %if.end36
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else40.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.else40.skb_dst.exit_crit_edge:                 ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.else40
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !46

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.else40.skb_dst.exit_crit_edge
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 8
  %and25.i = and i32 %20, -2
  %21 = inttoptr i32 %and25.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hard_header_len, align 2
  %conv42 = zext i16 %25 to i32
  %and.i129 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.not.i130 = icmp eq i32 %and.i129, 0
  br i1 %tobool.not.i130, label %skb_dst.exit.skb_dst.exit139_crit_edge, label %land.lhs.true.i133

skb_dst.exit.skb_dst.exit139_crit_edge:           ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit139

land.lhs.true.i133:                               ; preds = %skb_dst.exit
  %call.i131 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool1.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool1.not.i132, label %land.rhs.i136, label %land.lhs.true.i133.skb_dst.exit139_crit_edge

land.lhs.true.i133.skb_dst.exit139_crit_edge:     ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit139

land.rhs.i136:                                    ; preds = %land.lhs.true.i133
  %call2.i134 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i134)
  %tobool3.not.i135 = icmp eq i32 %call2.i134, 0
  br i1 %tobool3.not.i135, label %do.end.i137, label %land.rhs.i136.skb_dst.exit139_crit_edge, !prof !46

land.rhs.i136.skb_dst.exit139_crit_edge:          ; preds = %land.rhs.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit139

do.end.i137:                                      ; preds = %land.rhs.i136
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit139

skb_dst.exit139:                                  ; preds = %do.end.i137, %land.rhs.i136.skb_dst.exit139_crit_edge, %land.lhs.true.i133.skb_dst.exit139_crit_edge, %skb_dst.exit.skb_dst.exit139_crit_edge
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %16, align 8
  %and25.i138 = and i32 %27, -2
  %28 = inttoptr i32 %and25.i138 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %needed_headroom, align 8
  %conv45 = zext i16 %32 to i32
  %add46 = add nuw nsw i32 %conv45, %conv42
  %and = and i32 %add46, 131056
  %add47 = add nuw nsw i32 %len, 16
  %add48 = add nuw nsw i32 %add47, %and
  %cloned.i.i140 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %33 = ptrtoint ptr %cloned.i.i140 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i141 = load i8, ptr %cloned.i.i140, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i141)
  %tobool.not.i.i142 = icmp sgt i8 %bf.load.i.i141, -1
  br i1 %tobool.not.i.i142, label %skb_dst.exit139.skb_header_cloned.exit.i159_crit_edge, label %if.end.i.i150

skb_dst.exit139.skb_header_cloned.exit.i159_crit_edge: ; preds = %skb_dst.exit139
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_header_cloned.exit.i159

if.end.i.i150:                                    ; preds = %skb_dst.exit139
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i.i143 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %34 = ptrtoint ptr %end.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i.i143, align 4
  %dataref1.i.i144 = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 10
  %call.i.i.i.i145 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i144, i32 noundef 4) #12
  %36 = ptrtoint ptr %dataref1.i.i144 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dataref1.i.i144, align 4
  %and.i.i146 = and i32 %37, 65535
  %shr.i.i147 = ashr i32 %37, 16
  %sub.i.i148 = sub nsw i32 %and.i.i146, %shr.i.i147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i148)
  %cmp.i.not.i149 = icmp eq i32 %sub.i.i148, 1
  br label %skb_header_cloned.exit.i159

skb_header_cloned.exit.i159:                      ; preds = %if.end.i.i150, %skb_dst.exit139.skb_header_cloned.exit.i159_crit_edge
  %retval.0.i.i151 = phi i1 [ %cmp.i.not.i149, %if.end.i.i150 ], [ true, %skb_dst.exit139.skb_header_cloned.exit.i159_crit_edge ]
  %data.i.i.i152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i152, align 4
  %head.i.i.i153 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i.i153, align 8
  %sub.ptr.lhs.cast.i.i.i154 = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i.i155 = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i156 = sub i32 %sub.ptr.lhs.cast.i.i.i154, %sub.ptr.rhs.cast.i.i.i155
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i156, i32 %add48)
  %tobool.not.i3.i157 = icmp uge i32 %sub.ptr.sub.i.i.i156, %add48
  %or.cond.i.i158 = and i1 %retval.0.i.i151, %tobool.not.i3.i157
  br i1 %or.cond.i.i158, label %skb_header_cloned.exit.i159.if.end59_crit_edge, label %if.then3.i.i163

skb_header_cloned.exit.i159.if.end59_crit_edge:   ; preds = %skb_header_cloned.exit.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then3.i.i163:                                  ; preds = %skb_header_cloned.exit.i159
  call void @__sanitizer_cov_trace_pc() #14
  %42 = tail call i32 @llvm.usub.sat.i32(i32 %add48, i32 %sub.ptr.sub.i.i.i156) #12
  br label %if.end50

if.end50:                                         ; preds = %if.then3.i.i163, %if.then3.i.i
  %.sink = phi i32 [ %42, %if.then3.i.i163 ], [ %15, %if.then3.i.i ]
  %add.i.i160 = add nuw nsw i32 %.sink, 127
  %and.i4.i161 = and i32 %add.i.i160, -128
  %call4.i.i162 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i161, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i162)
  %tobool51.not = icmp eq i32 %call4.i.i162, 0
  br i1 %tobool51.not, label %if.end50.if.end59_crit_edge, label %if.end50.cleanup_crit_edge, !prof !48

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.end59:                                         ; preds = %if.end50.if.end59_crit_edge, %skb_header_cloned.exit.i159.if.end59_crit_edge, %skb_header_cloned.exit.i.if.end59_crit_edge
  %inner_mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %43 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i, align 4
  %inner_network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %45 = ptrtoint ptr %inner_network_header.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %inner_network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %46 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %transport_header.i, align 2
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %48 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %inner_transport_header.i, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %51 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %53 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i, ptr %inner_mac_header.i, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %54 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %protocol, align 8
  %56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %55, ptr %56, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %58 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %bf.load.i = load i32, ptr %inner_protocol_type.i, align 2
  %bf.clear.i = and i32 %bf.load.i, -4194305
  store i32 %bf.clear.i, ptr %inner_protocol_type.i, align 2
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %59 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load60 = load i16, ptr %encapsulation, align 8
  %bf.set = or i16 %bf.load60, 4
  store i16 %bf.set, ptr %encapsulation, align 8
  %call62 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %len) #12
  br i1 %ingress, label %if.then64, label %if.end59.if.end65_crit_edge

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then64:                                        ; preds = %if.end59
  %60 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load.i.i167 = load i16, ptr %encapsulation, align 8
  %61 = and i16 %bf.load.i.i167, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %61)
  %cmp.i.i = icmp eq i16 %61, 1024
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then64.if.end65_crit_edge

if.then64.if.end65_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then.i.i:                                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %62 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %call.i.i = tail call i32 @csum_partial(ptr noundef %hdr, i32 noundef %len, i32 noundef 0) #12
  %add.i.i.i.i = add i32 %call.i.i, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %call.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add1.i.i.i.i, ptr %62, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then.i.i, %if.then64.if.end65_crit_edge, %if.end59.if.end65_crit_edge
  %66 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i, align 4
  %68 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i170 = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i171 = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i172 = sub i32 %sub.ptr.lhs.cast.i170, %sub.ptr.rhs.cast.i171
  %conv.i173 = trunc i32 %sub.ptr.sub.i172 to i16
  %70 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i173, ptr %network_header.i, align 4
  %conv.i177 = and i32 %sub.ptr.sub.i172, 65535
  %add.ptr.i = getelementptr i8, ptr %69, i32 %conv.i177
  %71 = call ptr @memcpy(ptr %add.ptr.i, ptr %hdr, i32 %len)
  %72 = load ptr, ptr %data.i, align 4
  %end.i.i.i179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %73 = ptrtoint ptr %end.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i.i.i179, align 4
  %meta_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %meta_len.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %meta_len.i.i, align 1
  %conv.i180 = zext i8 %76 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i180
  %add.ptr.i181 = getelementptr i8, ptr %72, i32 %idx.neg.i
  %data_meta.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %77 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i181, ptr %data_meta.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %78 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %80 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i182 = sub i32 %79, %81
  %add.ptr4.i = getelementptr i8, ptr %72, i32 %sub.i.i182
  %data_end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %82 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr4.i, ptr %data_end.i, align 4
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %83 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %hash.i, align 4
  %84 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load.i183 = load i16, ptr %encapsulation, align 8
  %bf.clear2.i = and i16 %bf.load.i183, -193
  store i16 %bf.clear2.i, ptr %encapsulation, align 8
  br i1 %cmp3, label %if.then68, label %if.else79

if.then68:                                        ; preds = %if.end65
  %85 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 2048, ptr %protocol, align 8
  %86 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %head.i, align 8
  %88 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %89 to i32
  %add.ptr.i.i = getelementptr i8, ptr %87, i32 %conv.i.i
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %90 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool71.not = icmp eq i16 %91, 0
  br i1 %tobool71.not, label %if.then72, label %if.then68.if.end81_crit_edge

if.then68.if.end81_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load73 = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear74 = and i8 %bf.load73, 15
  %conv75 = zext i8 %bf.clear74 to i32
  %93 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i, i32 %conv75) #12, !srcloc !49
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %93, 0
  %94 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #15, !srcloc !50
  %neg.i.i = xor i32 %94, -1
  %shr.i.i184 = lshr i32 %neg.i.i, 16
  %conv.i.i185 = trunc i32 %shr.i.i184 to i16
  %95 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i.i185, ptr %check, align 2
  br label %if.end81

if.else79:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -31011, ptr %protocol, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then72, %if.then68.if.end81_crit_edge
  %97 = ptrtoint ptr %end.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i.i.i179, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool.i.not = icmp eq i16 %100, 0
  br i1 %tobool.i.not, label %if.end81.cleanup_crit_edge, label %if.then83

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then83:                                        ; preds = %if.end81
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 8
  %101 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %gso_type.i, align 8
  %and.i187 = and i32 %102, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool.not.i188 = icmp eq i32 %and.i187, 0
  br i1 %tobool.not.i188, label %if.then83.cleanup_crit_edge, label %if.end.i

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then83
  %103 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %head.i, align 8
  %105 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i = zext i16 %106 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %104, i32 %conv.i.i.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %protocol4.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %.sink.i = select i1 %cmp3, i32 20, i32 40
  %protocol.0.in.i = select i1 %cmp3, ptr %protocol4.i, ptr %nexthdr.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %.sink.i
  %107 = ptrtoint ptr %protocol.0.in.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %protocol.0.i = load i8, ptr %protocol.0.in.i, align 1
  %108 = zext i8 %protocol.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values)
  switch i8 %protocol.0.i, label %if.end.i.cleanup_crit_edge [
    i8 47, label %sw.bb.i
    i8 17, label %sw.bb20.i
    i8 0, label %if.end.i.sw.bb31.i_crit_edge
    i8 41, label %if.end.i.sw.bb31.i_crit_edge192
  ]

if.end.i.sw.bb31.i_crit_edge192:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb31.i

if.end.i.sw.bb31.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb31.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %add.i = add nuw nsw i32 %.sink.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %len)
  %cmp.i = icmp ugt i32 %add.i, %len
  br i1 %cmp.i, label %sw.bb.i.cleanup_crit_edge, label %if.end12.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12.i:                                       ; preds = %sw.bb.i
  %109 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %add.ptr8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %110)
  %tobool15.not.i = icmp sgt i16 %110, -1
  br i1 %tobool15.not.i, label %if.end18.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end12.i
  %or2.i.i = or i32 %102, 130
  %111 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or2.i.i, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %100)
  %cmp.i.i.i = icmp eq i16 %100, -1
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end39.critedge.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then16.i
  %.b47.i.i.i = load i1, ptr @skb_decrease_gso_size.__already_done, align 1
  br i1 %.b47.i.i.i, label %land.rhs.i.i.i.cleanup.sink.split.i_crit_edge, label %if.then.i.i.i, !prof !48

land.rhs.i.i.i.cleanup.sink.split.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @skb_decrease_gso_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4662, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.sink.split.i

if.end39.critedge.i.i.i:                          ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i71.i = trunc i32 %len to i16
  %sub.i.i.i = sub i16 %100, %conv.i71.i
  %112 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %sub.i.i.i, ptr %gso_size.i, align 4
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %if.end12.i
  %or2.i75.i = or i32 %102, 66
  %113 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or2.i75.i, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %100)
  %cmp.i.i77.i = icmp eq i16 %100, -1
  br i1 %cmp.i.i77.i, label %land.rhs.i.i79.i, label %if.end39.critedge.i.i83.i

land.rhs.i.i79.i:                                 ; preds = %if.end18.i
  %.b47.i.i78.i = load i1, ptr @skb_decrease_gso_size.__already_done, align 1
  br i1 %.b47.i.i78.i, label %land.rhs.i.i79.i.cleanup.sink.split.i_crit_edge, label %if.then.i.i80.i, !prof !48

land.rhs.i.i79.i.cleanup.sink.split.i_crit_edge:  ; preds = %land.rhs.i.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then.i.i80.i:                                  ; preds = %land.rhs.i.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @skb_decrease_gso_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4662, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.sink.split.i

if.end39.critedge.i.i83.i:                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i81.i = trunc i32 %len to i16
  %sub.i.i82.i = sub i16 %100, %conv.i81.i
  %114 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %sub.i.i82.i, ptr %gso_size.i, align 4
  br label %cleanup.sink.split.i

sw.bb20.i:                                        ; preds = %if.end.i
  %add21.i = add nuw nsw i32 %.sink.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %len)
  %cmp22.i = icmp ugt i32 %add21.i, %len
  br i1 %cmp22.i, label %sw.bb20.i.cleanup_crit_edge, label %if.end25.i

sw.bb20.i.cleanup_crit_edge:                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.i:                                       ; preds = %sw.bb20.i
  %check.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr8.i, i32 0, i32 3
  %115 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %check.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool26.not.i = icmp eq i16 %116, 0
  br i1 %tobool26.not.i, label %if.end29.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end25.i
  %or2.i89.i = or i32 %102, 2050
  %117 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or2.i89.i, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %100)
  %cmp.i.i91.i = icmp eq i16 %100, -1
  br i1 %cmp.i.i91.i, label %land.rhs.i.i93.i, label %if.end39.critedge.i.i97.i

land.rhs.i.i93.i:                                 ; preds = %if.then27.i
  %.b47.i.i92.i = load i1, ptr @skb_decrease_gso_size.__already_done, align 1
  br i1 %.b47.i.i92.i, label %land.rhs.i.i93.i.cleanup.sink.split.i_crit_edge, label %if.then.i.i94.i, !prof !48

land.rhs.i.i93.i.cleanup.sink.split.i_crit_edge:  ; preds = %land.rhs.i.i93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then.i.i94.i:                                  ; preds = %land.rhs.i.i93.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @skb_decrease_gso_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4662, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.sink.split.i

if.end39.critedge.i.i97.i:                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i95.i = trunc i32 %len to i16
  %sub.i.i96.i = sub i16 %100, %conv.i95.i
  %118 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %sub.i.i96.i, ptr %gso_size.i, align 4
  br label %cleanup.sink.split.i

if.end29.i:                                       ; preds = %if.end25.i
  %or2.i103.i = or i32 %102, 1026
  %119 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or2.i103.i, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %100)
  %cmp.i.i105.i = icmp eq i16 %100, -1
  br i1 %cmp.i.i105.i, label %land.rhs.i.i107.i, label %if.end39.critedge.i.i111.i

land.rhs.i.i107.i:                                ; preds = %if.end29.i
  %.b47.i.i106.i = load i1, ptr @skb_decrease_gso_size.__already_done, align 1
  br i1 %.b47.i.i106.i, label %land.rhs.i.i107.i.cleanup.sink.split.i_crit_edge, label %if.then.i.i108.i, !prof !48

land.rhs.i.i107.i.cleanup.sink.split.i_crit_edge: ; preds = %land.rhs.i.i107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then.i.i108.i:                                 ; preds = %land.rhs.i.i107.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @skb_decrease_gso_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4662, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.sink.split.i

if.end39.critedge.i.i111.i:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i109.i = trunc i32 %len to i16
  %sub.i.i110.i = sub i16 %100, %conv.i109.i
  %120 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %sub.i.i110.i, ptr %gso_size.i, align 4
  br label %cleanup.sink.split.i

sw.bb31.i:                                        ; preds = %if.end.i.sw.bb31.i_crit_edge, %if.end.i.sw.bb31.i_crit_edge192
  br i1 %cmp3, label %if.then33.i, label %if.else35.i

if.then33.i:                                      ; preds = %sw.bb31.i
  %or2.i117.i = or i32 %102, 258
  %121 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or2.i117.i, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %100)
  %cmp.i.i119.i = icmp eq i16 %100, -1
  br i1 %cmp.i.i119.i, label %land.rhs.i.i121.i, label %if.end39.critedge.i.i125.i

land.rhs.i.i121.i:                                ; preds = %if.then33.i
  %.b47.i.i120.i = load i1, ptr @skb_decrease_gso_size.__already_done, align 1
  br i1 %.b47.i.i120.i, label %land.rhs.i.i121.i.cleanup.sink.split.i_crit_edge, label %if.then.i.i122.i, !prof !48

land.rhs.i.i121.i.cleanup.sink.split.i_crit_edge: ; preds = %land.rhs.i.i121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then.i.i122.i:                                 ; preds = %land.rhs.i.i121.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @skb_decrease_gso_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4662, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.sink.split.i

if.end39.critedge.i.i125.i:                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i123.i = trunc i32 %len to i16
  %sub.i.i124.i = sub i16 %100, %conv.i123.i
  %122 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %sub.i.i124.i, ptr %gso_size.i, align 4
  br label %cleanup.sink.split.i

if.else35.i:                                      ; preds = %sw.bb31.i
  %or2.i131.i = or i32 %102, 514
  %123 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or2.i131.i, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %100)
  %cmp.i.i133.i = icmp eq i16 %100, -1
  br i1 %cmp.i.i133.i, label %land.rhs.i.i135.i, label %if.end39.critedge.i.i139.i

land.rhs.i.i135.i:                                ; preds = %if.else35.i
  %.b47.i.i134.i = load i1, ptr @skb_decrease_gso_size.__already_done, align 1
  br i1 %.b47.i.i134.i, label %land.rhs.i.i135.i.cleanup.sink.split.i_crit_edge, label %if.then.i.i136.i, !prof !48

land.rhs.i.i135.i.cleanup.sink.split.i_crit_edge: ; preds = %land.rhs.i.i135.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then.i.i136.i:                                 ; preds = %land.rhs.i.i135.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @skb_decrease_gso_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4662, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.sink.split.i

if.end39.critedge.i.i139.i:                       ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i137.i = trunc i32 %len to i16
  %sub.i.i138.i = sub i16 %100, %conv.i137.i
  %124 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %sub.i.i138.i, ptr %gso_size.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end39.critedge.i.i139.i, %if.then.i.i136.i, %land.rhs.i.i135.i.cleanup.sink.split.i_crit_edge, %if.end39.critedge.i.i125.i, %if.then.i.i122.i, %land.rhs.i.i121.i.cleanup.sink.split.i_crit_edge, %if.end39.critedge.i.i111.i, %if.then.i.i108.i, %land.rhs.i.i107.i.cleanup.sink.split.i_crit_edge, %if.end39.critedge.i.i97.i, %if.then.i.i94.i, %land.rhs.i.i93.i.cleanup.sink.split.i_crit_edge, %if.end39.critedge.i.i83.i, %if.then.i.i80.i, %land.rhs.i.i79.i.cleanup.sink.split.i_crit_edge, %if.end39.critedge.i.i.i, %if.then.i.i.i, %land.rhs.i.i.i.cleanup.sink.split.i_crit_edge
  %gso_segs.i140.i = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 5
  %125 = ptrtoint ptr %gso_segs.i140.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %gso_segs.i140.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %sw.bb20.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then83.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call4.i.i162, %if.end50.cleanup_crit_edge ], [ 0, %if.end81.cleanup_crit_edge ], [ -524, %if.then83.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb20.i.cleanup_crit_edge ], [ -93, %if.end.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_lwt_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_add_ops(ptr noundef nonnull @bpf_encap_ops, i32 noundef 6) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_build_state(ptr nocapture noundef readnone %net, ptr noundef %nla, i32 noundef %family, ptr nocapture noundef readnone %cfg, ptr nocapture noundef writeonly %ts, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb) #12
  %0 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 4
  %4 = call ptr @memset(ptr %tb, i32 255, i32 20)
  %5 = zext i32 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %family, label %entry.cleanup70_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 10, label %entry.if.end_crit_edge99
  ]

entry.if.end_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge99
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %6 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @bpf_nl_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp2 = icmp slt i32 %call2.i, 0
  br i1 %cmp2, label %if.end.cleanup70_crit_edge, label %if.end4

if.end.cleanup70_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true5, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true5:                                   ; preds = %if.end4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true5.if.end12_crit_edge

land.lhs.true5.if.end12_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %land.lhs.true8.cleanup70_crit_edge, label %land.lhs.true8.if.end12_crit_edge

land.lhs.true8.if.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true8.cleanup70_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end12:                                         ; preds = %land.lhs.true8.if.end12_crit_edge, %land.lhs.true5.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %call13 = call ptr @lwtunnel_state_alloc(i32 noundef 28) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.cleanup70_crit_edge, label %if.end16

if.end12.cleanup70_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end16:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %call13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 6, ptr %call13, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.end16.if.end28_crit_edge, label %if.then20

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then20:                                        ; preds = %if.end16
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call13, i32 0, i32 7
  %flags = getelementptr inbounds %struct.lwtunnel_state, ptr %call13, i32 0, i32 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags, align 2
  %19 = or i16 %18, 2
  store i16 %19, ptr %flags, align 2
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %call23 = call fastcc i32 @bpf_parse_prog(ptr noundef %21, ptr noundef %data.i, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then20.errout_crit_edge, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then20.errout_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end28:                                         ; preds = %if.then20.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %tobool30.not = icmp eq ptr %23, null
  br i1 %tobool30.not, label %if.end28.if.end42_crit_edge, label %if.then31

if.end28.if.end42_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then31:                                        ; preds = %if.end28
  %flags32 = getelementptr inbounds %struct.lwtunnel_state, ptr %call13, i32 0, i32 1
  %24 = ptrtoint ptr %flags32 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags32, align 2
  %26 = or i16 %25, 1
  store i16 %26, ptr %flags32, align 2
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %out = getelementptr inbounds %struct.lwtunnel_state, ptr %call13, i32 1, i32 3
  %call37 = call fastcc i32 @bpf_parse_prog(ptr noundef %28, ptr noundef %out, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then31.errout_crit_edge, label %if.then31.if.end42_crit_edge

if.then31.if.end42_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then31.errout_crit_edge:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end42:                                         ; preds = %if.then31.if.end42_crit_edge, %if.end28.if.end42_crit_edge
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %tobool44.not = icmp eq ptr %30, null
  br i1 %tobool44.not, label %if.end42.if.end56_crit_edge, label %if.then45

if.end42.if.end56_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then45:                                        ; preds = %if.end42
  %flags46 = getelementptr inbounds %struct.lwtunnel_state, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %flags46 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags46, align 2
  %33 = or i16 %32, 4
  store i16 %33, ptr %flags46, align 2
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  %xmit = getelementptr inbounds %struct.lwtunnel_state, ptr %call13, i32 1, i32 5
  %call51 = call fastcc i32 @bpf_parse_prog(ptr noundef %35, ptr noundef %xmit, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then45.errout_crit_edge, label %if.then45.if.end56_crit_edge

if.then45.if.end56_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then45.errout_crit_edge:                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end56:                                         ; preds = %if.then45.if.end56_crit_edge, %if.end42.if.end56_crit_edge
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %tobool58.not = icmp eq ptr %37, null
  br i1 %tobool58.not, label %if.end56.if.end68_crit_edge, label %if.then59

if.end56.if.end68_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then59:                                        ; preds = %if.end56
  %add.ptr.i.i95 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %39)
  %cmp62 = icmp ugt i32 %39, 256
  br i1 %cmp62, label %if.then59.errout_crit_edge, label %cleanup.thread

if.then59.errout_crit_edge:                       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

cleanup.thread:                                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %conv66 = trunc i32 %39 to i16
  %headroom67 = getelementptr inbounds %struct.lwtunnel_state, ptr %call13, i32 0, i32 2
  %40 = ptrtoint ptr %headroom67 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv66, ptr %headroom67, align 4
  br label %if.end68

if.end68:                                         ; preds = %cleanup.thread, %if.end56.if.end68_crit_edge
  %family69 = getelementptr inbounds %struct.lwtunnel_state, ptr %call13, i32 1, i32 6, i32 1
  %41 = ptrtoint ptr %family69 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %family, ptr %family69, align 4
  %42 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call13, ptr %ts, align 4
  br label %cleanup70

errout:                                           ; preds = %if.then59.errout_crit_edge, %if.then45.errout_crit_edge, %if.then31.errout_crit_edge, %if.then20.errout_crit_edge
  %ret.4 = phi i32 [ %call23, %if.then20.errout_crit_edge ], [ %call37, %if.then31.errout_crit_edge ], [ %call51, %if.then45.errout_crit_edge ], [ -34, %if.then59.errout_crit_edge ]
  call void @bpf_destroy_state(ptr noundef nonnull %call13)
  call void @kfree(ptr noundef nonnull %call13) #12
  br label %cleanup70

cleanup70:                                        ; preds = %errout, %if.end68, %if.end12.cleanup70_crit_edge, %land.lhs.true8.cleanup70_crit_edge, %if.end.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.0 = phi i32 [ %ret.4, %errout ], [ 0, %if.end68 ], [ -97, %entry.cleanup70_crit_edge ], [ %call2.i, %if.end.cleanup70_crit_edge ], [ -22, %land.lhs.true8.cleanup70_crit_edge ], [ -12, %if.end12.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_destroy_state(ptr nocapture noundef readonly %lwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 0, i32 7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.bpf_lwt_prog_destroy.exit_crit_edge, label %if.then.i

entry.bpf_lwt_prog_destroy.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_lwt_prog_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bpf_prog_put(ptr noundef nonnull %1) #12
  br label %bpf_lwt_prog_destroy.exit

bpf_lwt_prog_destroy.exit:                        ; preds = %if.then.i, %entry.bpf_lwt_prog_destroy.exit_crit_edge
  %name.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 2
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %3) #12
  %out = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 3
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out, align 4
  %tobool.not.i3 = icmp eq ptr %5, null
  br i1 %tobool.not.i3, label %bpf_lwt_prog_destroy.exit.bpf_lwt_prog_destroy.exit6_crit_edge, label %if.then.i4

bpf_lwt_prog_destroy.exit.bpf_lwt_prog_destroy.exit6_crit_edge: ; preds = %bpf_lwt_prog_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_lwt_prog_destroy.exit6

if.then.i4:                                       ; preds = %bpf_lwt_prog_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bpf_prog_put(ptr noundef nonnull %5) #12
  br label %bpf_lwt_prog_destroy.exit6

bpf_lwt_prog_destroy.exit6:                       ; preds = %if.then.i4, %bpf_lwt_prog_destroy.exit.bpf_lwt_prog_destroy.exit6_crit_edge
  %name.i5 = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 4
  %6 = ptrtoint ptr %name.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i5, align 4
  tail call void @kfree(ptr noundef %7) #12
  %xmit = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 5
  %8 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xmit, align 4
  %tobool.not.i7 = icmp eq ptr %9, null
  br i1 %tobool.not.i7, label %bpf_lwt_prog_destroy.exit6.bpf_lwt_prog_destroy.exit10_crit_edge, label %if.then.i8

bpf_lwt_prog_destroy.exit6.bpf_lwt_prog_destroy.exit10_crit_edge: ; preds = %bpf_lwt_prog_destroy.exit6
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_lwt_prog_destroy.exit10

if.then.i8:                                       ; preds = %bpf_lwt_prog_destroy.exit6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bpf_prog_put(ptr noundef nonnull %9) #12
  br label %bpf_lwt_prog_destroy.exit10

bpf_lwt_prog_destroy.exit10:                      ; preds = %if.then.i8, %bpf_lwt_prog_destroy.exit6.bpf_lwt_prog_destroy.exit10_crit_edge
  %name.i9 = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 6
  %10 = ptrtoint ptr %name.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i9, align 4
  tail call void @kfree(ptr noundef %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !46

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lwtstate, align 4
  %out = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 1, i32 3
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %skb_dst.exit.if.end5_crit_edge, label %if.then

skb_dst.exit.if.end5_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %skb_dst.exit
  %call3 = tail call fastcc i32 @run_lwt_bpf(ptr noundef %skb, ptr noundef %out, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %skb_dst.exit.if.end5_crit_edge
  %10 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lwtstate, align 4
  %orig_output = getelementptr inbounds %struct.lwtunnel_state, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %orig_output to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %orig_output, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.end, label %if.end33, !prof !46

land.end:                                         ; preds = %if.end5
  %.b49 = load i1, ptr @bpf_output.__already_done, align 1
  br i1 %.b49, label %land.end.if.end25_crit_edge, label %if.then22, !prof !48

land.end.if.end25_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then22:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bpf_output.__already_done, align 1
  %name = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 1, i32 4
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %15) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.end.if.end25_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call36 = tail call i32 %13(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end25, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end25 ], [ %call36, %if.end33 ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_input(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !46

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lwtstate, align 4
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %skb_dst.exit.if.end9_crit_edge, label %if.then

skb_dst.exit.if.end9_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %skb_dst.exit
  %call3 = tail call fastcc i32 @run_lwt_bpf(ptr noundef %skb, ptr noundef %data.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call3)
  %cmp5 = icmp eq i32 %call3, 128
  br i1 %cmp5, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol.i, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %11, label %if.then6.err16.i_crit_edge [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then9.i
  ]

if.then6.err16.i_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %err16.i

if.then.i:                                        ; preds = %if.then6
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 8
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.skb_dst.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !46

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.then.i.skb_dst.exit.i_crit_edge
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %16, -2
  %17 = inttoptr i32 %and25.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %tobool.not.i31.i = icmp eq ptr %19, null
  br i1 %tobool.not.i31.i, label %skb_dst.exit.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

skb_dst.exit.i.dev_hold.exit.i_crit_edge:         ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %skb_dst.exit.i
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !51
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 118
  %25 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !36) #12
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add13.i.i = add i32 %36, 1
  store i32 %add13.i.i, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !52
  %and.i.i.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !46

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #12, !srcloc !53
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %skb_dst.exit.i.dev_hold.exit.i_crit_edge
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i32.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i32.i, label %dev_hold.exit.i.skb_dst_drop.exit.i_crit_edge, label %if.then.i.i

dev_hold.exit.i.skb_dst_drop.exit.i_crit_edge:    ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_drop.exit.i

if.then.i.i:                                      ; preds = %dev_hold.exit.i
  %and.i.i33.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i33.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.refdst_drop.exit.i.i_crit_edge

if.then.i.i.refdst_drop.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refdst_drop.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and1.i.i.i = and i32 %39, -2
  %40 = inttoptr i32 %and1.i.i.i to ptr
  tail call void @dst_release(ptr noundef %40) #12
  br label %refdst_drop.exit.i.i

refdst_drop.exit.i.i:                             ; preds = %if.then.i.i.i, %if.then.i.i.refdst_drop.exit.i.i_crit_edge
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %0, align 8
  br label %skb_dst_drop.exit.i

skb_dst_drop.exit.i:                              ; preds = %refdst_drop.exit.i.i, %dev_hold.exit.i.skb_dst_drop.exit.i_crit_edge
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %daddr.i, align 4
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %saddr.i, align 4
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tos.i, align 1
  %call4.i = tail call i32 @ip_route_input_noref(ptr noundef %skb, i32 noundef %43, i32 noundef %45, i8 noundef zeroext %47, ptr noundef %19) #12
  br i1 %tobool.not.i31.i, label %skb_dst_drop.exit.i.if.end12.i_crit_edge, label %do.body1.i43.i

skb_dst_drop.exit.i.if.end12.i_crit_edge:         ; preds = %skb_dst_drop.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

do.body1.i43.i:                                   ; preds = %skb_dst_drop.exit.i
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !51
  %pcpu_refcnt.i35.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 118
  %49 = ptrtoint ptr %pcpu_refcnt.i35.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcpu_refcnt.i35.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !36) #12
  %and.i.i36.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i36.i to ptr
  %cpu.i37.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i37.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i37.i, align 4
  %arrayidx.i38.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i38.i, align 4
  %add.i39.i = add i32 %57, %51
  %58 = inttoptr i32 %add.i39.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add13.i40.i = add i32 %60, -1
  store i32 %add13.i40.i, ptr %58, align 4
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !52
  %and.i.i.i41.i = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i41.i)
  %tobool24.not.i42.i = icmp eq i32 %and.i.i.i41.i, 0
  br i1 %tobool24.not.i42.i, label %if.then28.i44.i, label %do.body1.i43.i.do.end30.i45.i_crit_edge, !prof !46

do.body1.i43.i.do.end30.i45.i_crit_edge:          ; preds = %do.body1.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i45.i

if.then28.i44.i:                                  ; preds = %do.body1.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i45.i

do.end30.i45.i:                                   ; preds = %if.then28.i44.i, %do.body1.i43.i.do.end30.i45.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #12, !srcloc !53
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.then6
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i46.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i46.i, label %if.then9.i.skb_dst_drop.exit53.i_crit_edge, label %if.then.i49.i

if.then9.i.skb_dst_drop.exit53.i_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_drop.exit53.i

if.then.i49.i:                                    ; preds = %if.then9.i
  %and.i.i47.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47.i)
  %tobool.not.i.i48.i = icmp eq i32 %and.i.i47.i, 0
  br i1 %tobool.not.i.i48.i, label %if.then.i.i51.i, label %if.then.i49.i.refdst_drop.exit.i52.i_crit_edge

if.then.i49.i.refdst_drop.exit.i52.i_crit_edge:   ; preds = %if.then.i49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refdst_drop.exit.i52.i

if.then.i.i51.i:                                  ; preds = %if.then.i49.i
  call void @__sanitizer_cov_trace_pc() #14
  %and1.i.i50.i = and i32 %63, -2
  %64 = inttoptr i32 %and1.i.i50.i to ptr
  tail call void @dst_release(ptr noundef %64) #12
  br label %refdst_drop.exit.i52.i

refdst_drop.exit.i52.i:                           ; preds = %if.then.i.i51.i, %if.then.i49.i.refdst_drop.exit.i52.i_crit_edge
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %0, align 8
  br label %skb_dst_drop.exit53.i

skb_dst_drop.exit53.i:                            ; preds = %refdst_drop.exit.i52.i, %if.then9.i.skb_dst_drop.exit53.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %66 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_route_input.i = getelementptr inbounds %struct.ipv6_stub, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %ipv6_route_input.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ipv6_route_input.i, align 4
  %call10.i = tail call i32 %68(ptr noundef %skb) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %skb_dst_drop.exit53.i, %do.end30.i45.i, %skb_dst_drop.exit.i.if.end12.i_crit_edge
  %err.0.i = phi i32 [ %call10.i, %skb_dst_drop.exit53.i ], [ %call4.i, %skb_dst_drop.exit.i.if.end12.i_crit_edge ], [ %call4.i, %do.end30.i45.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool.not.i32 = icmp eq i32 %err.0.i, 0
  br i1 %tobool.not.i32, label %if.end14.i, label %if.end12.i.err16.i_crit_edge

if.end12.i.err16.i_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err16.i

if.end14.i:                                       ; preds = %if.end12.i
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %0, align 8
  %and.i.i54.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54.i)
  %tobool.not.i.i55.i = icmp eq i32 %and.i.i54.i, 0
  br i1 %tobool.not.i.i55.i, label %if.end14.i.dst_input.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end14.i.dst_input.exit.i_crit_edge:            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_input.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end14.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dst_input.exit.i_crit_edge

land.lhs.true.i.i.i.dst_input.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_input.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.dst_input.exit.i_crit_edge, !prof !46

land.rhs.i.i.i.dst_input.exit.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_input.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %dst_input.exit.i

dst_input.exit.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.dst_input.exit.i_crit_edge, %land.lhs.true.i.i.i.dst_input.exit.i_crit_edge, %if.end14.i.dst_input.exit.i_crit_edge
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %72, -2
  %73 = inttoptr i32 %and25.i.i.i to ptr
  %input.i.i = getelementptr inbounds %struct.dst_entry, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %input.i.i, align 4
  %call1.i.i = tail call i32 %75(ptr noundef %skb) #12
  br label %cleanup

err16.i:                                          ; preds = %if.end12.i.err16.i_crit_edge, %if.then6.err16.i_crit_edge
  %err.058.i = phi i32 [ %err.0.i, %if.end12.i.err16.i_crit_edge ], [ -97, %if.then6.err16.i_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %skb_dst.exit.if.end9_crit_edge
  %76 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lwtstate, align 4
  %orig_input = getelementptr inbounds %struct.lwtunnel_state, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %orig_input to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %orig_input, align 4
  %tobool11.not = icmp eq ptr %79, null
  br i1 %tobool11.not, label %if.then15, label %if.end16, !prof !46

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 %79(ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %err16.i, %dst_input.exit.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then15 ], [ %call19, %if.end16 ], [ %call3, %if.then.cleanup_crit_edge ], [ %err.058.i, %err16.i ], [ %call1.i.i, %dst_input.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_fill_encap_info(ptr noundef %skb, ptr nocapture noundef readonly %lwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 0, i32 7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.lor.lhs.false_crit_edge, label %if.end.i

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end.i:                                         ; preds = %entry
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool2.not19.i = icmp eq ptr %3, null
  %tobool2.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool2.not19.i
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %name.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 2
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 4
  %tobool5.not.i = icmp eq ptr %5, null
  br i1 %tobool5.not.i, label %if.end4.i.bpf_fill_lwt_prog.exit_crit_edge, label %land.lhs.true.i

if.end4.i.bpf_fill_lwt_prog.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fill_lwt_prog.exit

land.lhs.true.i:                                  ; preds = %if.end4.i
  %call.i.i = tail call i32 @strlen(ptr noundef nonnull %5) #17
  %add.i.i = add i32 %call.i.i, 1
  %call1.i17.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i.i, ptr noundef nonnull %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool8.not.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.bpf_fill_lwt_prog.exit_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i.bpf_fill_lwt_prog.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fill_lwt_prog.exit

bpf_fill_lwt_prog.exit:                           ; preds = %land.lhs.true.i.bpf_fill_lwt_prog.exit_crit_edge, %if.end4.i.bpf_fill_lwt_prog.exit_crit_edge
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i.i, ptr %3, align 2
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %bpf_fill_lwt_prog.exit.cleanup_crit_edge, label %bpf_fill_lwt_prog.exit.lor.lhs.false_crit_edge

bpf_fill_lwt_prog.exit.lor.lhs.false_crit_edge:   ; preds = %bpf_fill_lwt_prog.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

bpf_fill_lwt_prog.exit.cleanup_crit_edge:         ; preds = %bpf_fill_lwt_prog.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %bpf_fill_lwt_prog.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %out = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 3
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %out, align 4
  %tobool.not.i11 = icmp eq ptr %12, null
  br i1 %tobool.not.i11, label %lor.lhs.false.lor.lhs.false4_crit_edge, label %if.end.i17

lor.lhs.false.lor.lhs.false4_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false4

if.end.i17:                                       ; preds = %lor.lhs.false
  %tail.i.i.i12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i12, align 8
  %call1.i.i13 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i13)
  %cmp.i.i14 = icmp slt i32 %call1.i.i13, 0
  %tobool2.not19.i15 = icmp eq ptr %14, null
  %tobool2.not.i16 = select i1 %cmp.i.i14, i1 true, i1 %tobool2.not19.i15
  br i1 %tobool2.not.i16, label %if.end.i17.cleanup_crit_edge, label %if.end4.i20

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i20:                                      ; preds = %if.end.i17
  %name.i18 = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 4
  %15 = ptrtoint ptr %name.i18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i18, align 4
  %tobool5.not.i19 = icmp eq ptr %16, null
  br i1 %tobool5.not.i19, label %if.end4.i20.bpf_fill_lwt_prog.exit33_crit_edge, label %land.lhs.true.i25

if.end4.i20.bpf_fill_lwt_prog.exit33_crit_edge:   ; preds = %if.end4.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fill_lwt_prog.exit33

land.lhs.true.i25:                                ; preds = %if.end4.i20
  %call.i.i21 = tail call i32 @strlen(ptr noundef nonnull %16) #17
  %add.i.i22 = add i32 %call.i.i21, 1
  %call1.i17.i23 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i.i22, ptr noundef nonnull %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i23)
  %tobool8.not.i24 = icmp eq i32 %call1.i17.i23, 0
  br i1 %tobool8.not.i24, label %land.lhs.true.i25.bpf_fill_lwt_prog.exit33_crit_edge, label %land.lhs.true.i25.cleanup_crit_edge

land.lhs.true.i25.cleanup_crit_edge:              ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i25.bpf_fill_lwt_prog.exit33_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fill_lwt_prog.exit33

bpf_fill_lwt_prog.exit33:                         ; preds = %land.lhs.true.i25.bpf_fill_lwt_prog.exit33_crit_edge, %if.end4.i20.bpf_fill_lwt_prog.exit33_crit_edge
  %17 = ptrtoint ptr %tail.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i12, align 8
  %sub.ptr.lhs.cast.i.i26 = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i27 = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i28 = sub i32 %sub.ptr.lhs.cast.i.i26, %sub.ptr.rhs.cast.i.i27
  %conv.i.i29 = trunc i32 %sub.ptr.sub.i.i28 to i16
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i.i29, ptr %14, align 2
  %len.i.i30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len.i.i30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp3 = icmp slt i32 %21, 0
  br i1 %cmp3, label %bpf_fill_lwt_prog.exit33.cleanup_crit_edge, label %bpf_fill_lwt_prog.exit33.lor.lhs.false4_crit_edge

bpf_fill_lwt_prog.exit33.lor.lhs.false4_crit_edge: ; preds = %bpf_fill_lwt_prog.exit33
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false4

bpf_fill_lwt_prog.exit33.cleanup_crit_edge:       ; preds = %bpf_fill_lwt_prog.exit33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %bpf_fill_lwt_prog.exit33.lor.lhs.false4_crit_edge, %lor.lhs.false.lor.lhs.false4_crit_edge
  %xmit = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 5
  %22 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xmit, align 4
  %tobool.not.i34 = icmp eq ptr %23, null
  br i1 %tobool.not.i34, label %lor.lhs.false4.cleanup_crit_edge, label %if.end.i40

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i40:                                       ; preds = %lor.lhs.false4
  %tail.i.i.i35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i35, align 8
  %call1.i.i36 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i36)
  %cmp.i.i37 = icmp slt i32 %call1.i.i36, 0
  %tobool2.not19.i38 = icmp eq ptr %25, null
  %tobool2.not.i39 = select i1 %cmp.i.i37, i1 true, i1 %tobool2.not19.i38
  br i1 %tobool2.not.i39, label %if.end.i40.bpf_fill_lwt_prog.exit56.thread_crit_edge, label %if.end4.i43

if.end.i40.bpf_fill_lwt_prog.exit56.thread_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fill_lwt_prog.exit56.thread

if.end4.i43:                                      ; preds = %if.end.i40
  %name.i41 = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 6
  %26 = ptrtoint ptr %name.i41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i41, align 4
  %tobool5.not.i42 = icmp eq ptr %27, null
  br i1 %tobool5.not.i42, label %if.end4.i43.bpf_fill_lwt_prog.exit56_crit_edge, label %land.lhs.true.i48

if.end4.i43.bpf_fill_lwt_prog.exit56_crit_edge:   ; preds = %if.end4.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fill_lwt_prog.exit56

land.lhs.true.i48:                                ; preds = %if.end4.i43
  %call.i.i44 = tail call i32 @strlen(ptr noundef nonnull %27) #17
  %add.i.i45 = add i32 %call.i.i44, 1
  %call1.i17.i46 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i.i45, ptr noundef nonnull %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i46)
  %tobool8.not.i47 = icmp eq i32 %call1.i17.i46, 0
  br i1 %tobool8.not.i47, label %land.lhs.true.i48.bpf_fill_lwt_prog.exit56_crit_edge, label %land.lhs.true.i48.bpf_fill_lwt_prog.exit56.thread_crit_edge

land.lhs.true.i48.bpf_fill_lwt_prog.exit56.thread_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fill_lwt_prog.exit56.thread

land.lhs.true.i48.bpf_fill_lwt_prog.exit56_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fill_lwt_prog.exit56

bpf_fill_lwt_prog.exit56:                         ; preds = %land.lhs.true.i48.bpf_fill_lwt_prog.exit56_crit_edge, %if.end4.i43.bpf_fill_lwt_prog.exit56_crit_edge
  %28 = ptrtoint ptr %tail.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i.i35, align 8
  %sub.ptr.lhs.cast.i.i49 = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i.i50 = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i51 = sub i32 %sub.ptr.lhs.cast.i.i49, %sub.ptr.rhs.cast.i.i50
  %conv.i.i52 = trunc i32 %sub.ptr.sub.i.i51 to i16
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i52, ptr %25, align 2
  %len.i.i53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %31 = ptrtoint ptr %len.i.i53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp6 = icmp slt i32 %32, 0
  br i1 %cmp6, label %bpf_fill_lwt_prog.exit56.bpf_fill_lwt_prog.exit56.thread_crit_edge, label %bpf_fill_lwt_prog.exit56.cleanup_crit_edge

bpf_fill_lwt_prog.exit56.cleanup_crit_edge:       ; preds = %bpf_fill_lwt_prog.exit56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

bpf_fill_lwt_prog.exit56.bpf_fill_lwt_prog.exit56.thread_crit_edge: ; preds = %bpf_fill_lwt_prog.exit56
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fill_lwt_prog.exit56.thread

bpf_fill_lwt_prog.exit56.thread:                  ; preds = %bpf_fill_lwt_prog.exit56.bpf_fill_lwt_prog.exit56.thread_crit_edge, %land.lhs.true.i48.bpf_fill_lwt_prog.exit56.thread_crit_edge, %if.end.i40.bpf_fill_lwt_prog.exit56.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %bpf_fill_lwt_prog.exit56.thread, %bpf_fill_lwt_prog.exit56.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %bpf_fill_lwt_prog.exit33.cleanup_crit_edge, %land.lhs.true.i25.cleanup_crit_edge, %if.end.i17.cleanup_crit_edge, %bpf_fill_lwt_prog.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %bpf_fill_lwt_prog.exit33.cleanup_crit_edge ], [ -90, %bpf_fill_lwt_prog.exit.cleanup_crit_edge ], [ -90, %bpf_fill_lwt_prog.exit56.thread ], [ 0, %bpf_fill_lwt_prog.exit56.cleanup_crit_edge ], [ -90, %if.end.i.cleanup_crit_edge ], [ -90, %land.lhs.true.i.cleanup_crit_edge ], [ -90, %if.end.i17.cleanup_crit_edge ], [ -90, %land.lhs.true.i25.cleanup_crit_edge ], [ 0, %lor.lhs.false4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bpf_encap_nlsize(ptr nocapture noundef readnone %lwtstate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 804
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bpf_encap_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %name.i = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 1, i32 2
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %name1.i = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 1, i32 2
  %2 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1.i, align 4
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tobool2.not.i = icmp ne ptr %3, null
  %spec.select.i = zext i1 %tobool2.not.i to i32
  br label %bpf_lwt_prog_cmp.exit

lor.lhs.false.i:                                  ; preds = %entry
  %tobool6.not.i = icmp eq ptr %3, null
  br i1 %tobool6.not.i, label %lor.lhs.false.i.lor.end_crit_edge, label %if.end8.i

lor.lhs.false.i.lor.end_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

if.end8.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull %3) #17
  br label %bpf_lwt_prog_cmp.exit

bpf_lwt_prog_cmp.exit:                            ; preds = %if.end8.i, %land.lhs.true.i
  %retval.0.i = phi i32 [ %call.i, %if.end8.i ], [ %spec.select.i, %land.lhs.true.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %bpf_lwt_prog_cmp.exit.lor.end_crit_edge

bpf_lwt_prog_cmp.exit.lor.end_crit_edge:          ; preds = %bpf_lwt_prog_cmp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.lhs.false:                                    ; preds = %bpf_lwt_prog_cmp.exit
  %name.i15 = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 1, i32 4
  %4 = ptrtoint ptr %name.i15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i15, align 4
  %tobool.not.i16 = icmp eq ptr %5, null
  %name1.i17 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 1, i32 4
  %6 = ptrtoint ptr %name1.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name1.i17, align 4
  br i1 %tobool.not.i16, label %land.lhs.true.i20, label %lor.lhs.false.i22

land.lhs.true.i20:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %tobool2.not.i18 = icmp ne ptr %7, null
  %spec.select.i19 = zext i1 %tobool2.not.i18 to i32
  br label %bpf_lwt_prog_cmp.exit26

lor.lhs.false.i22:                                ; preds = %lor.lhs.false
  %tobool6.not.i21 = icmp eq ptr %7, null
  br i1 %tobool6.not.i21, label %lor.lhs.false.i22.lor.end_crit_edge, label %if.end8.i24

lor.lhs.false.i22.lor.end_crit_edge:              ; preds = %lor.lhs.false.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

if.end8.i24:                                      ; preds = %lor.lhs.false.i22
  call void @__sanitizer_cov_trace_pc() #14
  %call.i23 = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef nonnull %7) #17
  br label %bpf_lwt_prog_cmp.exit26

bpf_lwt_prog_cmp.exit26:                          ; preds = %if.end8.i24, %land.lhs.true.i20
  %retval.0.i25 = phi i32 [ %call.i23, %if.end8.i24 ], [ %spec.select.i19, %land.lhs.true.i20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i25)
  %tobool6.not = icmp eq i32 %retval.0.i25, 0
  br i1 %tobool6.not, label %lor.rhs, label %bpf_lwt_prog_cmp.exit26.lor.end_crit_edge

bpf_lwt_prog_cmp.exit26.lor.end_crit_edge:        ; preds = %bpf_lwt_prog_cmp.exit26
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %bpf_lwt_prog_cmp.exit26
  %name.i27 = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 1, i32 6
  %8 = ptrtoint ptr %name.i27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i27, align 4
  %tobool.not.i28 = icmp eq ptr %9, null
  %name1.i29 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 1, i32 6
  %10 = ptrtoint ptr %name1.i29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name1.i29, align 4
  br i1 %tobool.not.i28, label %land.lhs.true.i32, label %lor.lhs.false.i34

land.lhs.true.i32:                                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %tobool2.not.i30 = icmp ne ptr %11, null
  %spec.select.i31 = zext i1 %tobool2.not.i30 to i32
  br label %bpf_lwt_prog_cmp.exit38

lor.lhs.false.i34:                                ; preds = %lor.rhs
  %tobool6.not.i33 = icmp eq ptr %11, null
  br i1 %tobool6.not.i33, label %lor.lhs.false.i34.bpf_lwt_prog_cmp.exit38_crit_edge, label %if.end8.i36

lor.lhs.false.i34.bpf_lwt_prog_cmp.exit38_crit_edge: ; preds = %lor.lhs.false.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_lwt_prog_cmp.exit38

if.end8.i36:                                      ; preds = %lor.lhs.false.i34
  call void @__sanitizer_cov_trace_pc() #14
  %call.i35 = tail call i32 @strcmp(ptr noundef nonnull %9, ptr noundef nonnull %11) #17
  br label %bpf_lwt_prog_cmp.exit38

bpf_lwt_prog_cmp.exit38:                          ; preds = %if.end8.i36, %lor.lhs.false.i34.bpf_lwt_prog_cmp.exit38_crit_edge, %land.lhs.true.i32
  %retval.0.i37 = phi i32 [ %call.i35, %if.end8.i36 ], [ 1, %lor.lhs.false.i34.bpf_lwt_prog_cmp.exit38_crit_edge ], [ %spec.select.i31, %land.lhs.true.i32 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i37)
  %tobool9 = icmp ne i32 %retval.0.i37, 0
  %phi.cast = zext i1 %tobool9 to i32
  br label %lor.end

lor.end:                                          ; preds = %bpf_lwt_prog_cmp.exit38, %bpf_lwt_prog_cmp.exit26.lor.end_crit_edge, %lor.lhs.false.i22.lor.end_crit_edge, %bpf_lwt_prog_cmp.exit.lor.end_crit_edge, %lor.lhs.false.i.lor.end_crit_edge
  %12 = phi i32 [ 1, %bpf_lwt_prog_cmp.exit26.lor.end_crit_edge ], [ 1, %bpf_lwt_prog_cmp.exit.lor.end_crit_edge ], [ %phi.cast, %bpf_lwt_prog_cmp.exit38 ], [ 1, %lor.lhs.false.i.lor.end_crit_edge ], [ 1, %lor.lhs.false.i22.lor.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_xmit(ptr noundef %skb) #0 align 64 {
entry:
  %fl4.i = alloca %struct.flowi4, align 8
  %fl6.i = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !46

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lwtstate, align 4
  %xmit = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 1, i32 5
  %8 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xmit, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %skb_dst.exit.cleanup19_crit_edge, label %if.then

skb_dst.exit.cleanup19_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup19

if.then:                                          ; preds = %skb_dst.exit
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol, align 8
  %call3 = tail call fastcc i32 @run_lwt_bpf(ptr noundef %skb, ptr noundef %xmit, i1 noundef zeroext true)
  %12 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call3, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %if.then.cleanup19_crit_edge
    i32 128, label %sw.bb15
  ]

if.then.cleanup19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup19

sw.bb:                                            ; preds = %if.then
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %11)
  %cmp.not = icmp eq i16 %14, %11
  br i1 %cmp.not, label %if.end, label %if.then7

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup19

if.end:                                           ; preds = %sw.bb
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 8
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.skb_dst.exit.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !46

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.end.skb_dst.exit.i_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %18, -2
  %19 = inttoptr i32 %and25.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %23 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %skb_dst.exit.i._crit_edge

skb_dst.exit.i._crit_edge:                        ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %28

if.then.i:                                        ; preds = %skb_dst.exit.i
  %sub.i = add nuw nsw i32 %conv.i, 15
  %add.i = sub i32 %sub.i, %sub.ptr.sub.i.i
  %and.i32 = and i32 %add.i, -16
  %call4.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i32, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i33 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i33, label %if.then.i._crit_edge, label %if.then.i.cleanup19_crit_edge

if.then.i.cleanup19_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup19

if.then.i._crit_edge:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %28

28:                                               ; preds = %if.then.i._crit_edge, %skb_dst.exit.i._crit_edge
  br label %cleanup19

sw.bb15:                                          ; preds = %if.then
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %0, align 8
  %and.i.i34 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i34)
  %tobool.not.i.i35 = icmp eq i32 %and.i.i34, 0
  br i1 %tobool.not.i.i35, label %sw.bb15.skb_dst.exit.i44_crit_edge, label %land.lhs.true.i.i38

sw.bb15.skb_dst.exit.i44_crit_edge:               ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i44

land.lhs.true.i.i38:                              ; preds = %sw.bb15
  %call.i.i36 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %tobool1.not.i.i37 = icmp eq i32 %call.i.i36, 0
  br i1 %tobool1.not.i.i37, label %land.rhs.i.i41, label %land.lhs.true.i.i38.skb_dst.exit.i44_crit_edge

land.lhs.true.i.i38.skb_dst.exit.i44_crit_edge:   ; preds = %land.lhs.true.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i44

land.rhs.i.i41:                                   ; preds = %land.lhs.true.i.i38
  %call2.i.i39 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i39)
  %tobool3.not.i.i40 = icmp eq i32 %call2.i.i39, 0
  br i1 %tobool3.not.i.i40, label %do.end.i.i42, label %land.rhs.i.i41.skb_dst.exit.i44_crit_edge, !prof !46

land.rhs.i.i41.skb_dst.exit.i44_crit_edge:        ; preds = %land.rhs.i.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i44

do.end.i.i42:                                     ; preds = %land.rhs.i.i41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit.i44

skb_dst.exit.i44:                                 ; preds = %do.end.i.i42, %land.rhs.i.i41.skb_dst.exit.i44_crit_edge, %land.lhs.true.i.i38.skb_dst.exit.i44_crit_edge, %sw.bb15.skb_dst.exit.i44_crit_edge
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %0, align 8
  %and25.i.i43 = and i32 %32, -2
  %33 = inttoptr i32 %and25.i.i43 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i167.i = icmp eq ptr %35, null
  br i1 %tobool.not.i167.i, label %skb_dst.exit.i44.cond.end.i_crit_edge, label %if.end.i.i

skb_dst.exit.i44.cond.end.i_crit_edge:            ; preds = %skb_dst.exit.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

if.end.i.i:                                       ; preds = %skb_dst.exit.i44
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %37, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.end.i.i.cond.true.i_crit_edge

if.end.i.i.cond.true.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %and.i14.i.i = and i64 %37, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i14.i.i)
  %tobool.i15.not.i.i = icmp eq i64 %and.i14.i.i, 0
  br i1 %tobool.i15.not.i.i, label %if.else.i.i.cond.end.i_crit_edge, label %l3mdev_master_dev_rcu.exit.i

if.else.i.i.cond.end.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

l3mdev_master_dev_rcu.exit.i:                     ; preds = %if.else.i.i
  %call4.i.i = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef nonnull %35) #12
  %tobool.not.i45 = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i45, label %l3mdev_master_dev_rcu.exit.i.cond.end.i_crit_edge, label %l3mdev_master_dev_rcu.exit.i.cond.true.i_crit_edge

l3mdev_master_dev_rcu.exit.i.cond.true.i_crit_edge: ; preds = %l3mdev_master_dev_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true.i

l3mdev_master_dev_rcu.exit.i.cond.end.i_crit_edge: ; preds = %l3mdev_master_dev_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %l3mdev_master_dev_rcu.exit.i.cond.true.i_crit_edge, %if.end.i.i.cond.true.i_crit_edge
  %retval.0.i229.i = phi ptr [ %call4.i.i, %l3mdev_master_dev_rcu.exit.i.cond.true.i_crit_edge ], [ %35, %if.end.i.i.cond.true.i_crit_edge ]
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %retval.0.i229.i, i32 0, i32 17
  %38 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ifindex.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %l3mdev_master_dev_rcu.exit.i.cond.end.i_crit_edge, %if.else.i.i.cond.end.i_crit_edge, %skb_dst.exit.i44.cond.end.i_crit_edge
  %cond.i = phi i32 [ %39, %cond.true.i ], [ 0, %l3mdev_master_dev_rcu.exit.i.cond.end.i_crit_edge ], [ 0, %skb_dst.exit.i44.cond.end.i_crit_edge ], [ 0, %if.else.i.i.cond.end.i_crit_edge ]
  %40 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %41)
  %cmp.i46 = icmp eq i16 %41, 2048
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %41, label %cond.end.i.err110.i_crit_edge [
    i16 -31011, label %cond.end.i.if.end9.i_crit_edge
    i16 2048, label %cond.end.i.if.end9.i_crit_edge51
  ]

cond.end.i.if.end9.i_crit_edge51:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

cond.end.i.if.end9.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

cond.end.i.err110.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err110.i

if.end9.i:                                        ; preds = %cond.end.i.if.end9.i_crit_edge, %cond.end.i.if.end9.i_crit_edge51
  %43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool.not.i168.i = icmp eq ptr %45, null
  br i1 %tobool.not.i168.i, label %if.end9.i.if.else19.i_crit_edge, label %land.lhs.true.i169.i

if.end9.i.if.else19.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else19.i

land.lhs.true.i169.i:                             ; preds = %if.end9.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %47)
  %cmp.i.i = icmp eq i8 %47, 12
  br i1 %cmp.i.i, label %sk_to_full_sk.exit.i, label %land.lhs.true.i169.i.if.then12.i_crit_edge

land.lhs.true.i169.i.if.then12.i_crit_edge:       ; preds = %land.lhs.true.i169.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

sk_to_full_sk.exit.i:                             ; preds = %land.lhs.true.i169.i
  %48 = getelementptr inbounds %struct.sock_common, ptr %45, i32 0, i32 13
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %tobool11.not.i = icmp eq ptr %50, null
  br i1 %tobool11.not.i, label %sk_to_full_sk.exit.i.if.else19.i_crit_edge, label %sk_to_full_sk.exit.i.if.then12.i_crit_edge

sk_to_full_sk.exit.i.if.then12.i_crit_edge:       ; preds = %sk_to_full_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

sk_to_full_sk.exit.i.if.else19.i_crit_edge:       ; preds = %sk_to_full_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else19.i

if.then12.i:                                      ; preds = %sk_to_full_sk.exit.i.if.then12.i_crit_edge, %land.lhs.true.i169.i.if.then12.i_crit_edge
  %sk.addr.0.i239.i = phi ptr [ %50, %sk_to_full_sk.exit.i.if.then12.i_crit_edge ], [ %45, %land.lhs.true.i169.i.if.then12.i_crit_edge ]
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i239.i, i32 0, i32 6
  %51 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool13.not.i = icmp eq i32 %52, 0
  %spec.select.i = select i1 %tobool13.not.i, i32 %cond.i, i32 %52
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i239.i, i32 0, i32 9
  br label %if.end23.i

if.else19.i:                                      ; preds = %sk_to_full_sk.exit.i.if.else19.i_crit_edge, %if.end9.i.if.else19.i_crit_edge
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %0, align 8
  %and.i171.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i171.i)
  %tobool.not.i172.i = icmp eq i32 %and.i171.i, 0
  br i1 %tobool.not.i172.i, label %if.else19.i.skb_dst.exit182.i_crit_edge, label %land.lhs.true.i175.i

if.else19.i.skb_dst.exit182.i_crit_edge:          ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit182.i

land.lhs.true.i175.i:                             ; preds = %if.else19.i
  %call.i173.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173.i)
  %tobool1.not.i174.i = icmp eq i32 %call.i173.i, 0
  br i1 %tobool1.not.i174.i, label %land.rhs.i178.i, label %land.lhs.true.i175.i.skb_dst.exit182.i_crit_edge

land.lhs.true.i175.i.skb_dst.exit182.i_crit_edge: ; preds = %land.lhs.true.i175.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit182.i

land.rhs.i178.i:                                  ; preds = %land.lhs.true.i175.i
  %call2.i176.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i176.i)
  %tobool3.not.i177.i = icmp eq i32 %call2.i176.i, 0
  br i1 %tobool3.not.i177.i, label %do.end.i179.i, label %land.rhs.i178.i.skb_dst.exit182.i_crit_edge, !prof !46

land.rhs.i178.i.skb_dst.exit182.i_crit_edge:      ; preds = %land.rhs.i178.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit182.i

do.end.i179.i:                                    ; preds = %land.rhs.i178.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit182.i

skb_dst.exit182.i:                                ; preds = %do.end.i179.i, %land.rhs.i178.i.skb_dst.exit182.i_crit_edge, %land.lhs.true.i175.i.skb_dst.exit182.i_crit_edge, %if.else19.i.skb_dst.exit182.i_crit_edge
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %0, align 8
  %and25.i180.i = and i32 %56, -2
  %57 = inttoptr i32 %and25.i180.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 127
  br label %if.end23.i

if.end23.i:                                       ; preds = %skb_dst.exit182.i, %if.then12.i
  %tobool11.not234.i = phi i1 [ false, %if.then12.i ], [ true, %skb_dst.exit182.i ]
  %sk.addr.0.i232.i = phi ptr [ %sk.addr.0.i239.i, %if.then12.i ], [ null, %skb_dst.exit182.i ]
  %net.0.in.i = phi ptr [ %skc_net.i.i, %if.then12.i ], [ %nd_net.i.i, %skb_dst.exit182.i ]
  %oif.1.i = phi i32 [ %spec.select.i, %if.then12.i ], [ %cond.i, %skb_dst.exit182.i ]
  %60 = ptrtoint ptr %net.0.in.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %net.0.i = load ptr, ptr %net.0.in.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %61 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %63 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %64 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 %conv.i.i.i
  br i1 %cmp.i46, label %if.then25.i, label %if.else46.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #12
  %65 = call ptr @memset(ptr %fl4.i, i32 0, i32 56)
  %66 = ptrtoint ptr %fl4.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %oif.1.i, ptr %fl4.i, align 8
  %67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 2
  %70 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %flowic_mark.i, align 8
  %flowic_uid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 8
  br i1 %tobool11.not234.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  %sk_uid.i.i = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i232.i, i32 0, i32 55
  %71 = ptrtoint ptr %sk_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %sk_uid.i.i, align 4
  br label %sock_net_uid.exit.i

cond.false.i.i:                                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  %user_ns.i.i = getelementptr inbounds %struct.net, ptr %net.0.i, i32 0, i32 11
  %72 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %user_ns.i.i, align 4
  %call.i184.i = tail call i32 @make_kuid(ptr noundef %73, i32 noundef 0) #12
  br label %sock_net_uid.exit.i

sock_net_uid.exit.i:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %retval.sroa.0.0.i.i = phi i32 [ %retval.sroa.0.0.copyload.i.i, %cond.true.i.i ], [ %call.i184.i, %cond.false.i.i ]
  %74 = ptrtoint ptr %flowic_uid.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.sroa.0.0.i.i, ptr %flowic_uid.i, align 4
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %tos.i, align 1
  %77 = and i8 %76, 30
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 3
  %78 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %flowic_tos.i, align 4
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 6
  %79 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %flowic_flags.i, align 1
  %protocol34.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %80 = ptrtoint ptr %protocol34.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %protocol34.i, align 1
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 5
  %82 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %flowic_proto.i, align 2
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %83 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %daddr.i, align 4
  %daddr36.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %85 = ptrtoint ptr %daddr36.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %daddr36.i, align 4
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %86 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %saddr.i, align 4
  %saddr37.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 1
  %88 = ptrtoint ptr %saddr37.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %saddr37.i, align 8
  %call.i185.i = call ptr @ip_route_output_flow(ptr noundef %net.0.i, ptr noundef nonnull %fl4.i, ptr noundef null) #12
  %cmp.i186.i = icmp ugt ptr %call.i185.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %sock_net_uid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #12
  br label %if.end73.i

cleanup.i:                                        ; preds = %sock_net_uid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %call.i185.i to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #12
  br label %err110.i

if.else46.i:                                      ; preds = %if.end23.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i) #12
  %90 = call ptr @memset(ptr %fl6.i, i32 0, i32 88)
  %91 = ptrtoint ptr %fl6.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %oif.1.i, ptr %fl6.i, align 8
  %92 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %flowic_mark51.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 2
  %95 = ptrtoint ptr %flowic_mark51.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %flowic_mark51.i, align 8
  %flowic_uid53.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 8
  br i1 %tobool11.not234.i, label %cond.false.i197.i, label %cond.true.i194.i

cond.true.i194.i:                                 ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #14
  %sk_uid.i192.i = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i232.i, i32 0, i32 55
  %96 = ptrtoint ptr %sk_uid.i192.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %retval.sroa.0.0.copyload.i193.i = load i32, ptr %sk_uid.i192.i, align 4
  br label %sock_net_uid.exit199.i

cond.false.i197.i:                                ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #14
  %user_ns.i195.i = getelementptr inbounds %struct.net, ptr %net.0.i, i32 0, i32 11
  %97 = ptrtoint ptr %user_ns.i195.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %user_ns.i195.i, align 4
  %call.i196.i = tail call i32 @make_kuid(ptr noundef %98, i32 noundef 0) #12
  br label %sock_net_uid.exit199.i

sock_net_uid.exit199.i:                           ; preds = %cond.false.i197.i, %cond.true.i194.i
  %retval.sroa.0.0.i198.i = phi i32 [ %retval.sroa.0.0.copyload.i193.i, %cond.true.i194.i ], [ %call.i196.i, %cond.false.i197.i ]
  %99 = ptrtoint ptr %flowic_uid53.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %retval.sroa.0.0.i198.i, ptr %flowic_uid53.i, align 4
  %100 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i200.i = and i32 %101, 268435455
  %flowlabel.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 3
  %102 = ptrtoint ptr %flowlabel.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and.i200.i, ptr %flowlabel.i, align 8
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %nexthdr.i, align 2
  %flowic_proto59.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 5
  %105 = ptrtoint ptr %flowic_proto59.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %flowic_proto59.i, align 2
  %daddr60.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1
  %daddr61.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %106 = call ptr @memcpy(ptr %daddr60.i, ptr %daddr61.i, i32 16)
  %saddr62.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2
  %saddr63.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %107 = call ptr @memcpy(ptr %saddr62.i, ptr %saddr63.i, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %108 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_dst_lookup_flow.i = getelementptr inbounds %struct.ipv6_stub, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %ipv6_dst_lookup_flow.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ipv6_dst_lookup_flow.i, align 4
  %111 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %43, align 4
  %call64.i = call ptr %110(ptr noundef %net.0.i, ptr noundef %112, ptr noundef nonnull %fl6.i, ptr noundef null) #12
  %cmp.i201.i = icmp ugt ptr %call64.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201.i, label %cleanup69.i, label %cleanup69.thread.i

cleanup69.thread.i:                               ; preds = %sock_net_uid.exit199.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #12
  br label %if.end73.i

cleanup69.i:                                      ; preds = %sock_net_uid.exit199.i
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %call64.i to i32
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #12
  br label %err110.i

if.end73.i:                                       ; preds = %cleanup69.thread.i, %cleanup.thread.i
  %dst.1.i = phi ptr [ %call.i185.i, %cleanup.thread.i ], [ %call64.i, %cleanup69.thread.i ]
  %error.i = getelementptr inbounds %struct.dst_entry, ptr %dst.1.i, i32 0, i32 15
  %114 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool74.not.i = icmp eq i16 %115, 0
  br i1 %tobool74.not.i, label %if.end80.i, label %if.then77.i, !prof !48

if.then77.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv79.i = sext i16 %115 to i32
  call void @dst_release(ptr noundef %dst.1.i) #12
  br label %err110.i

if.end80.i:                                       ; preds = %if.end73.i
  %116 = ptrtoint ptr %dst.1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dst.1.i, align 4
  %hard_header_len.i47 = getelementptr inbounds %struct.net_device, ptr %117, i32 0, i32 19
  %118 = ptrtoint ptr %hard_header_len.i47 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %hard_header_len.i47, align 2
  %conv82.i = zext i16 %119 to i32
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %117, i32 0, i32 21
  %120 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %needed_headroom.i, align 8
  %conv84.i = zext i16 %121 to i32
  %add.i48 = add nuw nsw i32 %conv84.i, %conv82.i
  %and85.i = and i32 %add.i48, 131056
  %add86.i = add nuw nsw i32 %and85.i, 16
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %122 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end80.i.skb_header_cloned.exit.i.i_crit_edge, label %if.end.i.i.i

if.end80.i.skb_header_cloned.exit.i.i_crit_edge:  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_header_cloned.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %123 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %124, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #12
  %125 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i202.i = and i32 %126, 65535
  %shr.i.i.i = ashr i32 %126, 16
  %sub.i.i.i = sub nsw i32 %and.i.i202.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i.i.i, %if.end80.i.skb_header_cloned.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i1 [ %cmp.i.not.i.i, %if.end.i.i.i ], [ true, %if.end80.i.skb_header_cloned.exit.i.i_crit_edge ]
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %127 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i.i.i.i, align 4
  %129 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %128 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %130 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %add86.i)
  %tobool.not.i3.i.i = icmp uge i32 %sub.ptr.sub.i.i.i.i, %add86.i
  %or.cond.i.i.i = and i1 %retval.0.i.i.i, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_header_cloned.exit.i.i.if.end96.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end96.i_crit_edge:  ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %131 = call i32 @llvm.usub.sat.i32(i32 %add86.i, i32 %sub.ptr.sub.i.i.i.i) #12
  %add.i.i.i = add nuw nsw i32 %131, 127
  %and.i4.i.i = and i32 %add.i.i.i, 524160
  %call4.i.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool88.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool88.not.i, label %skb_cow_head.exit.i.if.end96.i_crit_edge, label %skb_cow_head.exit.i.err110.i_crit_edge, !prof !48

skb_cow_head.exit.i.err110.i_crit_edge:           ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err110.i

skb_cow_head.exit.i.if.end96.i_crit_edge:         ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.i

if.end96.i:                                       ; preds = %skb_cow_head.exit.i.if.end96.i_crit_edge, %skb_header_cloned.exit.i.i.if.end96.i_crit_edge
  %132 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i203.i = icmp ne i32 %133, 0
  %and.i.i204.i = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i204.i)
  %tobool.not.i.i205.i = icmp eq i32 %and.i.i204.i, 0
  %or.cond.i = and i1 %tobool.not.i203.i, %tobool.not.i.i205.i
  br i1 %or.cond.i, label %if.then.i.i.i, label %if.end96.i.skb_dst_drop.exit.i_crit_edge

if.end96.i.skb_dst_drop.exit.i_crit_edge:         ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_drop.exit.i

if.then.i.i.i:                                    ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  %and1.i.i.i = and i32 %133, -2
  %134 = inttoptr i32 %and1.i.i.i to ptr
  call void @dst_release(ptr noundef %134) #12
  br label %skb_dst_drop.exit.i

skb_dst_drop.exit.i:                              ; preds = %if.then.i.i.i, %if.end96.i.skb_dst_drop.exit.i_crit_edge
  %tobool.not.i208.i = icmp eq ptr %dst.1.i, null
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %135 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool.not.i208.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %136 = ptrtoint ptr %dst.1.i to i32
  %137 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %0, align 8
  %and.i209.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209.i)
  %tobool.not.i210.i = icmp eq i32 %and.i209.i, 0
  br i1 %tobool.not.i210.i, label %skb_dst_drop.exit.i.skb_dst.exit220.i_crit_edge, label %land.lhs.true.i213.i

skb_dst_drop.exit.i.skb_dst.exit220.i_crit_edge:  ; preds = %skb_dst_drop.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit220.i

land.lhs.true.i213.i:                             ; preds = %skb_dst_drop.exit.i
  %call.i211.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211.i)
  %tobool1.not.i212.i = icmp eq i32 %call.i211.i, 0
  br i1 %tobool1.not.i212.i, label %land.rhs.i216.i, label %land.lhs.true.i213.i.skb_dst.exit220.i_crit_edge

land.lhs.true.i213.i.skb_dst.exit220.i_crit_edge: ; preds = %land.lhs.true.i213.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit220.i

land.rhs.i216.i:                                  ; preds = %land.lhs.true.i213.i
  %call2.i214.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i214.i)
  %tobool3.not.i215.i = icmp eq i32 %call2.i214.i, 0
  br i1 %tobool3.not.i215.i, label %do.end.i217.i, label %land.rhs.i216.i.skb_dst.exit220.i_crit_edge, !prof !46

land.rhs.i216.i.skb_dst.exit220.i_crit_edge:      ; preds = %land.rhs.i216.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit220.i

do.end.i217.i:                                    ; preds = %land.rhs.i216.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit220.i

skb_dst.exit220.i:                                ; preds = %do.end.i217.i, %land.rhs.i216.i.skb_dst.exit220.i_crit_edge, %land.lhs.true.i213.i.skb_dst.exit220.i_crit_edge, %skb_dst_drop.exit.i.skb_dst.exit220.i_crit_edge
  %138 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %0, align 8
  %and25.i218.i = and i32 %139, -2
  %140 = inttoptr i32 %and25.i218.i to ptr
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %nd_net.i221.i = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 127
  %143 = ptrtoint ptr %nd_net.i221.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %nd_net.i221.i, align 4
  %145 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %43, align 4
  %and.i.i222.i = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i222.i)
  %tobool.not.i.i223.i = icmp eq i32 %and.i.i222.i, 0
  br i1 %tobool.not.i.i223.i, label %skb_dst.exit220.i.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i.i

skb_dst.exit220.i.dst_output.exit.i_crit_edge:    ; preds = %skb_dst.exit220.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

land.lhs.true.i.i.i:                              ; preds = %skb_dst.exit220.i
  %call.i.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge

land.lhs.true.i.i.i.dst_output.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.dst_output.exit.i_crit_edge, !prof !46

land.rhs.i.i.i.dst_output.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.dst_output.exit.i_crit_edge, %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge, %skb_dst.exit220.i.dst_output.exit.i_crit_edge
  %147 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %148, -2
  %149 = inttoptr i32 %and25.i.i.i to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %149, i32 0, i32 6
  %150 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %output.i.i, align 4
  %call1.i.i = call i32 %151(ptr noundef %144, ptr noundef %146, ptr noundef %skb) #12
  br label %cleanup19

err110.i:                                         ; preds = %skb_cow_head.exit.i.err110.i_crit_edge, %if.then77.i, %cleanup69.i, %cleanup.i, %cond.end.i.err110.i_crit_edge
  %err.2.i = phi i32 [ %89, %cleanup.i ], [ %conv79.i, %if.then77.i ], [ %call4.i.i.i, %skb_cow_head.exit.i.err110.i_crit_edge ], [ %113, %cleanup69.i ], [ -97, %cond.end.i.err110.i_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup19

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup19

cleanup19:                                        ; preds = %sw.default, %err110.i, %dst_output.exit.i, %28, %if.then.i.cleanup19_crit_edge, %if.then7, %if.then.cleanup19_crit_edge, %skb_dst.exit.cleanup19_crit_edge
  %retval.1 = phi i32 [ %call3, %sw.default ], [ -22, %if.then7 ], [ 0, %if.then.cleanup19_crit_edge ], [ 1, %skb_dst.exit.cleanup19_crit_edge ], [ 1, %28 ], [ -12, %if.then.i.cleanup19_crit_edge ], [ %err.2.i, %err110.i ], [ %call1.i.i, %dst_output.exit.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lwtunnel_state_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_parse_prog(ptr noundef %attr, ptr nocapture noundef writeonly %prog, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #12
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !54
  %1 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !54
  %3 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !54
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @bpf_prog_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %add.ptr.i.i27 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 2
  %conv.i.i28 = zext i16 %12 to i32
  %sub.i.i29 = add nsw i32 %conv.i.i28, -4
  %call2.i30 = call ptr @kmemdup(ptr noundef %add.ptr.i.i27, i32 noundef %sub.i.i29, i32 noundef 2592) #12
  %name = getelementptr inbounds %struct.bpf_lwt_prog, ptr %prog, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2.i30, ptr %name, align 4
  %tobool8.not = icmp eq ptr %call2.i30, null
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i31, align 4
  %call.i = call ptr @bpf_prog_get_type_dev(i32 noundef %17, i32 noundef %type, i1 noundef zeroext false) #12
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %prog to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %prog, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then15 ], [ 0, %if.end17 ], [ %call2.i, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_lwt_bpf(ptr noundef %skb, ptr nocapture noundef readonly %lwt, i1 noundef zeroext %can_redirect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @migrate_disable() #12
  tail call fastcc void @local_bh_disable()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i.i, align 4
  %meta_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %meta_len.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %meta_len.i.i, align 1
  %conv.i = zext i8 %5 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  %data_meta.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %6 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %data_meta.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %8, %10
  %add.ptr4.i = getelementptr i8, ptr %1, i32 %sub.i.i
  %data_end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %11 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr4.i, ptr %data_end.i, align 4
  %12 = ptrtoint ptr %lwt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lwt, align 4
  tail call void @migrate_disable() #12
  %call.i = tail call fastcc i32 @__bpf_prog_run_save_cb(ptr noundef %13, ptr noundef %skb) #12
  tail call void @migrate_enable() #12
  %14 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call.i, label %land.end36 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 128, label %entry.sw.epilog_crit_edge5
    i32 7, label %sw.bb1
    i32 2, label %sw.bb29
  ]

entry.sw.epilog_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br i1 %can_redirect, label %if.else, label %land.end, !prof !48

land.end:                                         ; preds = %sw.bb1
  %.b1 = load i1, ptr @run_lwt_bpf.__already_done, align 1
  br i1 %.b1, label %land.end.sw.epilog_crit_edge, label %if.then15, !prof !48

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then15:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @run_lwt_bpf.__already_done, align 1
  %name = getelementptr inbounds %struct.bpf_lwt_prog, ptr %lwt, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %tobool16.not = icmp eq ptr %16, null
  %cond = select i1 %tobool16.not, ptr @.str.6, ptr %16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %cond) #16
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i4 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %21 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i4, ptr %mac_header.i, align 2
  %call25 = tail call i32 @skb_do_redirect(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp eq i32 %call25, 0
  %spec.store.select = select i1 %cmp, i32 7, i32 %call25
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %sw.epilog

land.end36:                                       ; preds = %entry
  %.b682 = load i1, ptr @run_lwt_bpf.__already_done.7, align 1
  br i1 %.b682, label %land.end36.if.end49_crit_edge, label %if.then43, !prof !48

land.end36.if.end49_crit_edge:                    ; preds = %land.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then43:                                        ; preds = %land.end36
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @run_lwt_bpf.__already_done.7, align 1
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call.i) #16
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %land.end36.if.end49_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end49, %sw.bb29, %if.else, %if.then15, %land.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge5
  %ret.0 = phi i32 [ -22, %if.end49 ], [ -1, %sw.bb29 ], [ %spec.store.select, %if.else ], [ %call.i, %entry.sw.epilog_crit_edge ], [ %call.i, %entry.sw.epilog_crit_edge5 ], [ 0, %if.then15 ], [ 0, %land.end.sw.epilog_crit_edge ]
  tail call fastcc void @local_bh_enable()
  tail call void @migrate_enable() #12
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_do_redirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_prog_run_save_cb(ptr noundef %prog, ptr noundef %ctx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 8
  %cb_access = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 1
  %0 = ptrtoint ptr %cb_access to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %cb_access, align 2
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !48

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %cb_saved.sroa.0.0.copyload = load i8, ptr %data.i, align 1
  %cb_saved.sroa.5.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 9
  %3 = ptrtoint ptr %cb_saved.sroa.5.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %cb_saved.sroa.5.0.copyload = load i8, ptr %cb_saved.sroa.5.0..sroa_idx, align 1
  %cb_saved.sroa.6.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 10
  %4 = ptrtoint ptr %cb_saved.sroa.6.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %cb_saved.sroa.6.0.copyload = load i8, ptr %cb_saved.sroa.6.0..sroa_idx, align 1
  %cb_saved.sroa.7.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 11
  %5 = ptrtoint ptr %cb_saved.sroa.7.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %cb_saved.sroa.7.0.copyload = load i8, ptr %cb_saved.sroa.7.0..sroa_idx, align 1
  %cb_saved.sroa.8.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %cb_saved.sroa.8.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %cb_saved.sroa.8.0.copyload = load i8, ptr %cb_saved.sroa.8.0..sroa_idx, align 1
  %cb_saved.sroa.9.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 13
  %7 = ptrtoint ptr %cb_saved.sroa.9.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %cb_saved.sroa.9.0.copyload = load i8, ptr %cb_saved.sroa.9.0..sroa_idx, align 1
  %cb_saved.sroa.10.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 14
  %8 = ptrtoint ptr %cb_saved.sroa.10.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %cb_saved.sroa.10.0.copyload = load i8, ptr %cb_saved.sroa.10.0..sroa_idx, align 1
  %cb_saved.sroa.11.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 15
  %9 = ptrtoint ptr %cb_saved.sroa.11.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %cb_saved.sroa.11.0.copyload = load i8, ptr %cb_saved.sroa.11.0..sroa_idx, align 1
  %cb_saved.sroa.12.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 16
  %10 = ptrtoint ptr %cb_saved.sroa.12.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %cb_saved.sroa.12.0.copyload = load i8, ptr %cb_saved.sroa.12.0..sroa_idx, align 1
  %cb_saved.sroa.13.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 17
  %11 = ptrtoint ptr %cb_saved.sroa.13.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %cb_saved.sroa.13.0.copyload = load i8, ptr %cb_saved.sroa.13.0..sroa_idx, align 1
  %cb_saved.sroa.14.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %cb_saved.sroa.14.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %cb_saved.sroa.14.0.copyload = load i8, ptr %cb_saved.sroa.14.0..sroa_idx, align 1
  %cb_saved.sroa.15.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 19
  %13 = ptrtoint ptr %cb_saved.sroa.15.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %cb_saved.sroa.15.0.copyload = load i8, ptr %cb_saved.sroa.15.0..sroa_idx, align 1
  %cb_saved.sroa.16.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 20
  %14 = ptrtoint ptr %cb_saved.sroa.16.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %cb_saved.sroa.16.0.copyload = load i8, ptr %cb_saved.sroa.16.0..sroa_idx, align 1
  %cb_saved.sroa.17.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 21
  %15 = ptrtoint ptr %cb_saved.sroa.17.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %cb_saved.sroa.17.0.copyload = load i8, ptr %cb_saved.sroa.17.0..sroa_idx, align 1
  %cb_saved.sroa.18.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 22
  %16 = ptrtoint ptr %cb_saved.sroa.18.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %cb_saved.sroa.18.0.copyload = load i8, ptr %cb_saved.sroa.18.0..sroa_idx, align 1
  %cb_saved.sroa.19.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 23
  %17 = ptrtoint ptr %cb_saved.sroa.19.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %cb_saved.sroa.19.0.copyload = load i8, ptr %cb_saved.sroa.19.0..sroa_idx, align 1
  %cb_saved.sroa.20.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 24
  %18 = ptrtoint ptr %cb_saved.sroa.20.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %cb_saved.sroa.20.0.copyload = load i8, ptr %cb_saved.sroa.20.0..sroa_idx, align 1
  %cb_saved.sroa.21.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 25
  %19 = ptrtoint ptr %cb_saved.sroa.21.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %cb_saved.sroa.21.0.copyload = load i8, ptr %cb_saved.sroa.21.0..sroa_idx, align 1
  %cb_saved.sroa.22.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 26
  %20 = ptrtoint ptr %cb_saved.sroa.22.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %cb_saved.sroa.22.0.copyload = load i8, ptr %cb_saved.sroa.22.0..sroa_idx, align 1
  %cb_saved.sroa.23.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 27
  %21 = ptrtoint ptr %cb_saved.sroa.23.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %cb_saved.sroa.23.0.copyload = load i8, ptr %cb_saved.sroa.23.0..sroa_idx, align 1
  %22 = call ptr @memset(ptr %data.i, i32 0, i32 20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cb_saved.sroa.23.0 = phi i8 [ %cb_saved.sroa.23.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.22.0 = phi i8 [ %cb_saved.sroa.22.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.21.0 = phi i8 [ %cb_saved.sroa.21.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.20.0 = phi i8 [ %cb_saved.sroa.20.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.19.0 = phi i8 [ %cb_saved.sroa.19.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.18.0 = phi i8 [ %cb_saved.sroa.18.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.17.0 = phi i8 [ %cb_saved.sroa.17.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.16.0 = phi i8 [ %cb_saved.sroa.16.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.15.0 = phi i8 [ %cb_saved.sroa.15.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.14.0 = phi i8 [ %cb_saved.sroa.14.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.13.0 = phi i8 [ %cb_saved.sroa.13.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.12.0 = phi i8 [ %cb_saved.sroa.12.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.11.0 = phi i8 [ %cb_saved.sroa.11.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.10.0 = phi i8 [ %cb_saved.sroa.10.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.9.0 = phi i8 [ %cb_saved.sroa.9.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.8.0 = phi i8 [ %cb_saved.sroa.8.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.7.0 = phi i8 [ %cb_saved.sroa.7.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.6.0 = phi i8 [ %cb_saved.sroa.6.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.5.0 = phi i8 [ %cb_saved.sroa.5.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.0.0 = phi i8 [ %cb_saved.sroa.0.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @__cant_migrate(ptr noundef nonnull @.str.11, i32 noundef 613) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__bpf_prog_run_save_cb, %if.then.i.i)) #12
          to label %if.else.i.i [label %if.then.i.i], !srcloc !55

if.then.i.i:                                      ; preds = %if.end
  %call3.i.i = tail call i64 @sched_clock() #12
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %23 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %24(ptr noundef %ctx, ptr noundef %insnsi.i.i) #12
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %25 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stats9.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !36) #12
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 3
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !51
  %and.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !36) #12
  %and.i.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !56
  %41 = tail call i32 @llvm.read_register.i32(metadata !36) #12
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %46, ptrtoint (ptr @lockdep_recursion to i32)
  %47 = inttoptr i32 %add.i.i.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !57
  %50 = tail call i32 @llvm.read_register.i32(metadata !36) #12
  %and.i.i.i7.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool20.not.i.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %54 = tail call i32 @llvm.read_register.i32(metadata !36) #12
  %and.i.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %58 = tail call i32 @llvm.read_register.i32(metadata !36) #12
  %and.i.i.i9.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %61, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !58
  %62 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %65, ptrtoint (ptr @hardirqs_enabled to i32)
  %66 = inttoptr i32 %add47.i.i.i.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !59
  %69 = tail call i32 @llvm.read_register.i32(metadata !36) #12
  %and.i.i.i12.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool54.not.i.i.i.i = icmp eq i32 %68, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !48

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %73 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !60
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 3, i32 0, i32 1
  %75 = tail call ptr @llvm.returnaddress(i32 0) #12
  %76 = ptrtoint ptr %75 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %76) #12
  %77 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %34, align 8
  %inc.i.i.i = add i64 %78, 1
  store i64 %inc.i.i.i, ptr %34, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #12
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %79 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %80
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %76) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !61
  %81 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %82, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !52
  %and.i.i.i4.i.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !46

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #12, !srcloc !53
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %84 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %85(ptr noundef %ctx, ptr noundef %insnsi15.i.i) #12
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %86 = ptrtoint ptr %cb_access to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load5 = load i16, ptr %cb_access, align 2
  %87 = and i16 %bf.load5, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool8.not = icmp eq i16 %87, 0
  br i1 %tobool8.not, label %bpf_prog_run.exit.if.end17_crit_edge, label %if.then15, !prof !48

bpf_prog_run.exit.if.end17_crit_edge:             ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %cb_saved.sroa.0.0, ptr %data.i, align 1
  %cb_saved.sroa.5.0..sroa_idx19 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 9
  %89 = ptrtoint ptr %cb_saved.sroa.5.0..sroa_idx19 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %cb_saved.sroa.5.0, ptr %cb_saved.sroa.5.0..sroa_idx19, align 1
  %cb_saved.sroa.6.0..sroa_idx21 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 10
  %90 = ptrtoint ptr %cb_saved.sroa.6.0..sroa_idx21 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %cb_saved.sroa.6.0, ptr %cb_saved.sroa.6.0..sroa_idx21, align 1
  %cb_saved.sroa.7.0..sroa_idx23 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 11
  %91 = ptrtoint ptr %cb_saved.sroa.7.0..sroa_idx23 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %cb_saved.sroa.7.0, ptr %cb_saved.sroa.7.0..sroa_idx23, align 1
  %cb_saved.sroa.8.0..sroa_idx25 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 12
  %92 = ptrtoint ptr %cb_saved.sroa.8.0..sroa_idx25 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %cb_saved.sroa.8.0, ptr %cb_saved.sroa.8.0..sroa_idx25, align 1
  %cb_saved.sroa.9.0..sroa_idx27 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 13
  %93 = ptrtoint ptr %cb_saved.sroa.9.0..sroa_idx27 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %cb_saved.sroa.9.0, ptr %cb_saved.sroa.9.0..sroa_idx27, align 1
  %cb_saved.sroa.10.0..sroa_idx29 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 14
  %94 = ptrtoint ptr %cb_saved.sroa.10.0..sroa_idx29 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %cb_saved.sroa.10.0, ptr %cb_saved.sroa.10.0..sroa_idx29, align 1
  %cb_saved.sroa.11.0..sroa_idx31 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 15
  %95 = ptrtoint ptr %cb_saved.sroa.11.0..sroa_idx31 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %cb_saved.sroa.11.0, ptr %cb_saved.sroa.11.0..sroa_idx31, align 1
  %cb_saved.sroa.12.0..sroa_idx33 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 16
  %96 = ptrtoint ptr %cb_saved.sroa.12.0..sroa_idx33 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %cb_saved.sroa.12.0, ptr %cb_saved.sroa.12.0..sroa_idx33, align 1
  %cb_saved.sroa.13.0..sroa_idx35 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 17
  %97 = ptrtoint ptr %cb_saved.sroa.13.0..sroa_idx35 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %cb_saved.sroa.13.0, ptr %cb_saved.sroa.13.0..sroa_idx35, align 1
  %cb_saved.sroa.14.0..sroa_idx37 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 18
  %98 = ptrtoint ptr %cb_saved.sroa.14.0..sroa_idx37 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %cb_saved.sroa.14.0, ptr %cb_saved.sroa.14.0..sroa_idx37, align 1
  %cb_saved.sroa.15.0..sroa_idx39 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 19
  %99 = ptrtoint ptr %cb_saved.sroa.15.0..sroa_idx39 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %cb_saved.sroa.15.0, ptr %cb_saved.sroa.15.0..sroa_idx39, align 1
  %cb_saved.sroa.16.0..sroa_idx41 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 20
  %100 = ptrtoint ptr %cb_saved.sroa.16.0..sroa_idx41 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %cb_saved.sroa.16.0, ptr %cb_saved.sroa.16.0..sroa_idx41, align 1
  %cb_saved.sroa.17.0..sroa_idx43 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 21
  %101 = ptrtoint ptr %cb_saved.sroa.17.0..sroa_idx43 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %cb_saved.sroa.17.0, ptr %cb_saved.sroa.17.0..sroa_idx43, align 1
  %cb_saved.sroa.18.0..sroa_idx45 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 22
  %102 = ptrtoint ptr %cb_saved.sroa.18.0..sroa_idx45 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %cb_saved.sroa.18.0, ptr %cb_saved.sroa.18.0..sroa_idx45, align 1
  %cb_saved.sroa.19.0..sroa_idx47 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 23
  %103 = ptrtoint ptr %cb_saved.sroa.19.0..sroa_idx47 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %cb_saved.sroa.19.0, ptr %cb_saved.sroa.19.0..sroa_idx47, align 1
  %cb_saved.sroa.20.0..sroa_idx49 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 24
  %104 = ptrtoint ptr %cb_saved.sroa.20.0..sroa_idx49 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %cb_saved.sroa.20.0, ptr %cb_saved.sroa.20.0..sroa_idx49, align 1
  %cb_saved.sroa.21.0..sroa_idx51 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 25
  %105 = ptrtoint ptr %cb_saved.sroa.21.0..sroa_idx51 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %cb_saved.sroa.21.0, ptr %cb_saved.sroa.21.0..sroa_idx51, align 1
  %cb_saved.sroa.22.0..sroa_idx53 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 26
  %106 = ptrtoint ptr %cb_saved.sroa.22.0..sroa_idx53 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %cb_saved.sroa.22.0, ptr %cb_saved.sroa.22.0..sroa_idx53, align 1
  %cb_saved.sroa.23.0..sroa_idx55 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 27
  %107 = ptrtoint ptr %cb_saved.sroa.23.0..sroa_idx55 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %cb_saved.sroa.23.0, ptr %cb_saved.sroa.23.0..sroa_idx55, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %bpf_prog_run.exit.if.end17_crit_edge
  ret i32 %ret.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_lwt_bpf__609_659_bpf_lwt_init4, !1, !"__initcall__kmod_lwt_bpf__609_659_bpf_lwt_init4", i1 false, i1 false}
!1 = !{!"../net/core/lwt_bpf.c", i32 659, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/skbuff.h", i32 4662, i32 6}
!6 = !{ptr @bpf_encap_ops, !7, !"bpf_encap_ops", i1 false, i1 false}
!7 = !{!"../net/core/lwt_bpf.c", i32 513, i32 40}
!8 = !{ptr @bpf_nl_policy, !9, !"bpf_nl_policy", i1 false, i1 false}
!9 = !{!"../net/core/lwt_bpf.c", i32 364, i32 32}
!10 = !{ptr @bpf_prog_policy, !11, !"bpf_prog_policy", i1 false, i1 false}
!11 = !{!"../net/core/lwt_bpf.c", i32 328, i32 32}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../net/core/lwt_bpf.c", i32 153, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bpf_output._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @bpf_output._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../net/core/lwt_bpf.c", i32 58, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @run_lwt_bpf._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @run_lwt_bpf._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../net/core/lwt_bpf.c", i32 75, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @run_lwt_bpf._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @run_lwt_bpf._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/filter.h", i32 613, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2002, i32 2000}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 7245401, i64 7245440, i64 7245466, i64 7245490, i64 7245515, i64 7245541, i64 7245566, i64 7245592, i64 7245619, i64 7245645, i64 7245684, i64 7245728, i64 7245759, i64 7245784}
!50 = !{i64 7245018}
!51 = !{i64 628339, i64 628400}
!52 = !{i64 631071}
!53 = !{i64 631356}
!54 = !{!"auto-init"}
!55 = !{i64 2149302139, i64 2149302144, i64 2149302157, i64 2149302201, i64 2149302235, i64 2149302256}
!56 = !{i64 2150100311}
!57 = !{i64 2150105243}
!58 = !{i64 2150126955}
!59 = !{i64 2150131847}
!60 = !{i64 2150212365}
!61 = !{i64 2150212690}
