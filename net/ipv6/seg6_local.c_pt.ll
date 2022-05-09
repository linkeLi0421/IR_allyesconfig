; ModuleID = '/llk/IR_all_yes/net/ipv6/seg6_local.c_pt.bc'
source_filename = "../net/ipv6/seg6_local.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seg6_bpf_srh_state = type { ptr, i16, i8 }
%struct.lwtunnel_encap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.seg6_action_param = type { ptr, ptr, ptr, ptr }
%struct.seg6_action_desc = type { i32, i32, i32, ptr, i32, %struct.seg6_local_lwtunnel_ops }
%struct.seg6_local_lwtunnel_ops = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.175, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.175 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.176, %union.anon.177, [48 x i8], %union.anon.178, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.180, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.176 = type { ptr }
%union.anon.177 = type { i64 }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, ptr }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.182, i32, i32, i32, i16, i16, %union.anon.184, i32, %union.anon.185, %union.anon.186, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.182 = type { i32 }
%union.anon.184 = type { i32 }
%union.anon.185 = type { i32 }
%union.anon.186 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6_sr_hdr = type { i8, i8, i8, i8, i8, i8, i16, [0 x %struct.in6_addr] }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.seg6_local_lwt = type { i32, ptr, i32, %struct.in_addr, %struct.in6_addr, i32, i32, %struct.bpf_lwt_prog, %struct.seg6_end_dt_info, ptr, i32, ptr, i32 }
%struct.in_addr = type { i32 }
%struct.bpf_lwt_prog = type { ptr, ptr }
%struct.seg6_end_dt_info = type { i32, ptr, i32, i32, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.fib6_config = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i32, ptr, i32, i32, ptr, %struct.nl_info, ptr, i16, i8 }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.l3mdev_ops = type { ptr, ptr, ptr, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.139 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { %struct.anon.141, [0 x %struct.sock_filter] }
%struct.anon.141 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.138 }
%struct.atomic64_t = type { i64 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%union.anon.138 = type { %struct.work_struct }
%struct.pcpu_seg6_local_counters = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }

@seg6_bpf_srh_states = weak dso_local global %struct.seg6_bpf_srh_state zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@seg6_local_ops = internal constant { %struct.lwtunnel_encap_ops, [60 x i8] } { %struct.lwtunnel_encap_ops { ptr @seg6_local_build_state, ptr @seg6_local_destroy_state, ptr null, ptr @seg6_local_input, ptr @seg6_local_fill_encap, ptr @seg6_local_get_encap_size, ptr @seg6_local_cmp_encap, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__pcpu_scope_seg6_bpf_srh_states = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_seg6_bpf_srh_states = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@seg6_local_policy = internal constant { [11 x %struct.nla_policy], [40 x i8] } { [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 4, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@parse_nla_action.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/ipv6/seg6_local.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"An attribute cannot be both required AND optional\00", [46 x i8] zeroinitializer }, align 32
@seg6_action_params = internal constant { [11 x %struct.seg6_action_param], [48 x i8] } { [11 x %struct.seg6_action_param] [%struct.seg6_action_param zeroinitializer, %struct.seg6_action_param zeroinitializer, %struct.seg6_action_param { ptr @parse_nla_srh, ptr @put_nla_srh, ptr @cmp_nla_srh, ptr @destroy_attr_srh }, %struct.seg6_action_param { ptr @parse_nla_table, ptr @put_nla_table, ptr @cmp_nla_table, ptr null }, %struct.seg6_action_param { ptr @parse_nla_nh4, ptr @put_nla_nh4, ptr @cmp_nla_nh4, ptr null }, %struct.seg6_action_param { ptr @parse_nla_nh6, ptr @put_nla_nh6, ptr @cmp_nla_nh6, ptr null }, %struct.seg6_action_param { ptr @parse_nla_iif, ptr @put_nla_iif, ptr @cmp_nla_iif, ptr null }, %struct.seg6_action_param { ptr @parse_nla_oif, ptr @put_nla_oif, ptr @cmp_nla_oif, ptr null }, %struct.seg6_action_param { ptr @parse_nla_bpf, ptr @put_nla_bpf, ptr @cmp_nla_bpf, ptr @destroy_attr_bpf }, %struct.seg6_action_param { ptr @parse_nla_vrftable, ptr @put_nla_vrftable, ptr @cmp_nla_vrftable, ptr null }, %struct.seg6_action_param { ptr @parse_nla_counters, ptr @put_nla_counters, ptr @cmp_nla_counters, ptr @destroy_attr_counters }], [48 x i8] zeroinitializer }, align 32
@seg6_action_table = internal global { [12 x %struct.seg6_action_desc], [80 x i8] } { [12 x %struct.seg6_action_desc] [%struct.seg6_action_desc { i32 1, i32 0, i32 1024, ptr @input_action_end, i32 0, %struct.seg6_local_lwtunnel_ops zeroinitializer }, %struct.seg6_action_desc { i32 2, i32 32, i32 1024, ptr @input_action_end_x, i32 0, %struct.seg6_local_lwtunnel_ops zeroinitializer }, %struct.seg6_action_desc { i32 3, i32 8, i32 1024, ptr @input_action_end_t, i32 0, %struct.seg6_local_lwtunnel_ops zeroinitializer }, %struct.seg6_action_desc { i32 4, i32 128, i32 1024, ptr @input_action_end_dx2, i32 0, %struct.seg6_local_lwtunnel_ops zeroinitializer }, %struct.seg6_action_desc { i32 5, i32 32, i32 1024, ptr @input_action_end_dx6, i32 0, %struct.seg6_local_lwtunnel_ops zeroinitializer }, %struct.seg6_action_desc { i32 6, i32 16, i32 1024, ptr @input_action_end_dx4, i32 0, %struct.seg6_local_lwtunnel_ops zeroinitializer }, %struct.seg6_action_desc { i32 8, i32 512, i32 1024, ptr @input_action_end_dt4, i32 0, %struct.seg6_local_lwtunnel_ops { ptr @seg6_end_dt4_build, ptr null } }, %struct.seg6_action_desc { i32 7, i32 0, i32 1544, ptr @input_action_end_dt6, i32 0, %struct.seg6_local_lwtunnel_ops { ptr @seg6_end_dt6_build, ptr null } }, %struct.seg6_action_desc { i32 16, i32 512, i32 1024, ptr @input_action_end_dt46, i32 0, %struct.seg6_local_lwtunnel_ops { ptr @seg6_end_dt46_build, ptr null } }, %struct.seg6_action_desc { i32 9, i32 4, i32 1024, ptr @input_action_end_b6, i32 0, %struct.seg6_local_lwtunnel_ops zeroinitializer }, %struct.seg6_action_desc { i32 10, i32 4, i32 1024, ptr @input_action_end_b6_encap, i32 40, %struct.seg6_local_lwtunnel_ops zeroinitializer }, %struct.seg6_action_desc { i32 15, i32 256, i32 1024, ptr @input_action_end_bpf, i32 0, %struct.seg6_local_lwtunnel_ops zeroinitializer }], [80 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@nf_hooks_lwtunnel_enabled = external dso_local global %struct.static_key_false, align 4
@nf_hook.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_hook.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@end_dt_vrf_core.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@end_dt_vrf_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.1, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014seg6local: SRv6 End.DT* family mismatch\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"end_dt_vrf_core\00", [16 x i8] zeroinitializer }, align 32
@end_dt_vrf_core._entry_ptr = internal global ptr @end_dt_vrf_core._entry, section ".printk_index", align 4
@__seg6_end_dt_vrf_build.__msg = internal constant [32 x i8] c"Strict mode for VRF is disabled\00", align 1
@__seg6_end_dt_vrf_build.__msg.16 = internal constant [35 x i8] c"Table has no associated VRF device\00", align 1
@__seg6_end_dt_vrf_build.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.1, ptr @.str.19, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__seg6_end_dt_vrf_build\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"seg6local: SRv6 End.DT* creation error=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@seg6_end_dt6_build.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"table or vrftable must be specified\00", [60 x i8] zeroinitializer }, align 32
@input_action_end_bpf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@input_action_end_bpf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.1, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014bpf-seg6local: Illegal return value %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"input_action_end_bpf\00", [43 x i8] zeroinitializer }, align 32
@input_action_end_bpf._entry_ptr = internal global ptr @input_action_end_bpf._entry, section ".printk_index", align 4
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@bpf_prog_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 256, %union.anon.28 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@seg6_local_counters_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.28 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@parse_nla_counters.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 41]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 7]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 7, i64 10]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"seg6_local_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1942, i32 40 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 231, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"seg6_local_policy\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1123, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1740, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"seg6_action_params\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1558, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"seg6_action_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 951, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1011, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 229, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 695, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 723, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 643, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 518, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 736, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 932, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 613, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 271, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"bpf_prog_policy\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1364, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"seg6_local_counters_policy\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1441, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private constant [25 x i8] c"../net/ipv6/seg6_local.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1468, i32 14 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 991, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @end_dt_vrf_core._entry, ptr @end_dt_vrf_core._entry_ptr, ptr @input_action_end_bpf._entry, ptr @input_action_end_bpf._entry_ptr, ptr @seg6_local_ops, ptr @.str, ptr @seg6_local_policy, ptr @.str.1, ptr @.str.2, ptr @seg6_action_params, ptr @seg6_action_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @seg6_end_dt6_build.__msg, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @bpf_prog_policy, ptr @seg6_local_counters_policy, ptr @parse_nla_counters.__key, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_local_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_local_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_action_params to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_action_table to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @end_dt_vrf_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_end_dt6_build.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_action_end_bpf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_prog_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_local_counters_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_nla_counters.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seg6_lookup_nexthop(ptr noundef %skb, ptr noundef %nhaddr, i32 noundef %tbl_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @seg6_lookup_any_nexthop(ptr noundef %skb, ptr noundef %nhaddr, i32 noundef %tbl_id, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @seg6_lookup_any_nexthop(ptr noundef %skb, ptr noundef readonly %nhaddr, i32 noundef %tbl_id, i1 noundef zeroext %local_delivery) unnamed_addr #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #18
  %9 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %ifindex = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %10 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex, align 4
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 1
  %12 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flowic_iif, align 4
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %tobool.not = icmp eq ptr %nhaddr, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %13 = call ptr @memcpy(ptr %daddr, ptr %nhaddr, i32 16)
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %daddr2 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %14 = call ptr @memcpy(ptr %daddr, ptr %daddr2, i32 16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %saddr3 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %15 = call ptr @memcpy(ptr %saddr, ptr %saddr3, i32 16)
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  %and.i = and i32 %17, 268435455
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %18 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i, ptr %flowlabel, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %22 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %flowic_mark, align 8
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nexthdr, align 2
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %25 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %flowic_proto, align 2
  br i1 %tobool.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %flowic_flags = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 6
  %26 = ptrtoint ptr %flowic_flags to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %flowic_flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tbl_id)
  %tobool9.not = icmp eq i32 %tbl_id, 0
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = call ptr @ip6_route_input_lookup(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %fl6, ptr noundef %skb, i32 noundef 4) #18
  br label %if.end18

if.else:                                          ; preds = %if.end
  %call12 = tail call ptr @fib6_get_table(ptr noundef %4, i32 noundef %tbl_id) #18
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else.if.then30_crit_edge, label %cleanup.thread

if.else.if.then30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then30

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call16 = call ptr @ip6_pol_route(ptr noundef %4, ptr noundef nonnull %call12, i32 noundef 0, ptr noundef nonnull %fl6, ptr noundef %skb, i32 noundef 4) #18
  br label %if.end18

if.end18:                                         ; preds = %cleanup.thread, %if.then10
  %dst.1 = phi ptr [ %call11, %if.then10 ], [ %call16, %cleanup.thread ]
  %tobool22.not = icmp eq ptr %dst.1, null
  br i1 %tobool22.not, label %if.end18.if.then30_crit_edge, label %land.lhs.true

if.end18.if.then30_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then30

land.lhs.true:                                    ; preds = %if.end18
  %spec.select = select i1 %local_delivery, i32 0, i32 8
  %27 = ptrtoint ptr %dst.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dst.1, align 4
  %flags23 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags23, align 8
  %and = and i32 %30, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end32_crit_edge, label %land.lhs.true25

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

land.lhs.true25:                                  ; preds = %land.lhs.true
  %error = getelementptr inbounds %struct.dst_entry, ptr %dst.1, i32 0, i32 15
  %31 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool26.not = icmp eq i16 %32, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true25.if.end32_crit_edge

land.lhs.true25.if.end32_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #20
  call void @dst_release(ptr noundef nonnull %dst.1) #18
  br label %if.then30

if.then30:                                        ; preds = %if.then27, %if.end18.if.then30_crit_edge, %if.else.if.then30_crit_edge
  %ip6_blk_hole_entry = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 22
  %33 = ptrtoint ptr %ip6_blk_hole_entry to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ip6_blk_hole_entry, align 4
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %34, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !90
  call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #18
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #18, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end10.i, label %atomic_inc_not_zero.exit.thread.i

atomic_inc_not_zero.exit.thread.i:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !92
  br label %if.end32

do.end10.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #18
  br label %if.end32

if.end32:                                         ; preds = %do.end10.i, %atomic_inc_not_zero.exit.thread.i, %land.lhs.true25.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge
  %dst.3 = phi ptr [ %dst.1, %land.lhs.true25.if.end32_crit_edge ], [ %dst.1, %land.lhs.true.if.end32_crit_edge ], [ %34, %atomic_inc_not_zero.exit.thread.i ], [ %34, %do.end10.i ]
  %36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp ne i32 %38, 0
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond = and i1 %tobool.not.i, %tobool.not.i.i
  br i1 %or.cond, label %if.then.i.i, label %if.end32.skb_dst_drop.exit_crit_edge

if.end32.skb_dst_drop.exit_crit_edge:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst_drop.exit

if.then.i.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %and1.i.i = and i32 %38, -2
  %39 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %39) #18
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %if.then.i.i, %if.end32.skb_dst_drop.exit_crit_edge
  %tobool.not.i70 = icmp eq ptr %dst.3, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %40 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i70, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %41 = ptrtoint ptr %dst.3 to i32
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %36, align 8
  %error33 = getelementptr inbounds %struct.dst_entry, ptr %dst.3, i32 0, i32 15
  %43 = ptrtoint ptr %error33 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %error33, align 4
  %conv = sext i16 %44 to i32
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #18
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @seg6_bpf_has_valid_srh(ptr nocapture readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @seg6_bpf_srh_states to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !93

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %valid = getelementptr inbounds %struct.seg6_bpf_srh_state, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.then13, label %if.end.cleanup_crit_edge, !prof !93

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then13:                                        ; preds = %if.end
  %hdrlen = getelementptr inbounds %struct.seg6_bpf_srh_state, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdrlen, align 4
  %13 = and i16 %12, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp14.not = icmp eq i16 %13, 0
  br i1 %cmp14.not, label %if.end17, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  %14 = lshr i16 %12, 3
  %conv20 = trunc i16 %14 to i8
  %hdrlen21 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %hdrlen21 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv20, ptr %hdrlen21, align 1
  %narrow = and i16 %12, 2040
  %16 = add nuw nsw i16 %narrow, 8
  %shl = zext i16 %16 to i32
  %call25 = tail call zeroext i1 @seg6_validate_srh(ptr noundef nonnull %8, i32 noundef %shl, i1 noundef zeroext true) #18
  br i1 %call25, label %if.end27, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %valid, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end17.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.then13.cleanup_crit_edge ], [ false, %if.end17.cleanup_crit_edge ], [ true, %if.end27 ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @seg6_validate_srh(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seg6_local_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_add_ops(ptr noundef nonnull @seg6_local_ops, i32 noundef 7) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @seg6_local_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_del_ops(ptr noundef nonnull @seg6_local_ops, i32 noundef 7) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_del_ops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_input_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib6_get_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_pol_route(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_local_build_state(ptr nocapture noundef readnone %net, ptr noundef %nla, i32 noundef %family, ptr noundef %cfg, ptr nocapture noundef writeonly %ts, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [11 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tb) #18
  %0 = call ptr @memset(ptr %tb, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %family)
  %cmp.not = icmp eq i32 %family, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %1 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %2 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 10, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @seg6_local_policy, i32 noundef 0, ptr noundef %extack) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp1 = icmp slt i32 %call2.i, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %call6 = call ptr @lwtunnel_state_alloc(i32 noundef 84) #18
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call6, i32 0, i32 7
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i41, align 4
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %data.i, align 4
  %10 = load i32, ptr @seg6_action_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp2.i.i = icmp eq i32 %10, %8
  br i1 %cmp2.i.i, label %if.end9.if.end.i_crit_edge, label %for.cond.i.i

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.i.i:                                     ; preds = %if.end9
  %11 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %8)
  %cmp2.1.i.i = icmp eq i32 %11, %8
  br i1 %cmp2.1.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %12 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp2.2.i.i = icmp eq i32 %12, %8
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.if.end.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.end.i_crit_edge:                ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %13 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %8)
  %cmp2.3.i.i = icmp eq i32 %13, %8
  br i1 %cmp2.3.i.i, label %for.cond.2.i.i.if.end.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.if.end.i_crit_edge:                ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %14 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %8)
  %cmp2.4.i.i = icmp eq i32 %14, %8
  br i1 %cmp2.4.i.i, label %for.cond.3.i.i.if.end.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.if.end.i_crit_edge:                ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %15 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %8)
  %cmp2.5.i.i = icmp eq i32 %15, %8
  br i1 %cmp2.5.i.i, label %for.cond.4.i.i.if.end.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.if.end.i_crit_edge:                ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %16 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %8)
  %cmp2.6.i.i = icmp eq i32 %16, %8
  br i1 %cmp2.6.i.i, label %for.cond.5.i.i.if.end.i_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.if.end.i_crit_edge:                ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %17 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %8)
  %cmp2.7.i.i = icmp eq i32 %17, %8
  br i1 %cmp2.7.i.i, label %for.cond.6.i.i.if.end.i_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.if.end.i_crit_edge:                ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %18 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %8)
  %cmp2.8.i.i = icmp eq i32 %18, %8
  br i1 %cmp2.8.i.i, label %for.cond.7.i.i.if.end.i_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.if.end.i_crit_edge:                ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %19 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %8)
  %cmp2.9.i.i = icmp eq i32 %19, %8
  br i1 %cmp2.9.i.i, label %for.cond.8.i.i.if.end.i_crit_edge, label %for.cond.9.i.i

for.cond.8.i.i.if.end.i_crit_edge:                ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  %20 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %8)
  %cmp2.10.i.i = icmp eq i32 %20, %8
  br i1 %cmp2.10.i.i, label %for.cond.9.i.i.if.end.i_crit_edge, label %for.cond.10.i.i

for.cond.9.i.i.if.end.i_crit_edge:                ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.cond.10.i.i:                                  ; preds = %for.cond.9.i.i
  %21 = load i32, ptr getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %8)
  %cmp2.11.i.i = icmp eq i32 %21, %8
  br i1 %cmp2.11.i.i, label %for.cond.10.i.i.if.end.i_crit_edge, label %for.cond.10.i.i.out_free_crit_edge

for.cond.10.i.i.out_free_crit_edge:               ; preds = %for.cond.10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free

for.cond.10.i.i.if.end.i_crit_edge:               ; preds = %for.cond.10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.end.i:                                         ; preds = %for.cond.10.i.i.if.end.i_crit_edge, %for.cond.9.i.i.if.end.i_crit_edge, %for.cond.8.i.i.if.end.i_crit_edge, %for.cond.7.i.i.if.end.i_crit_edge, %for.cond.6.i.i.if.end.i_crit_edge, %for.cond.5.i.i.if.end.i_crit_edge, %for.cond.4.i.i.if.end.i_crit_edge, %for.cond.3.i.i.if.end.i_crit_edge, %for.cond.2.i.i.if.end.i_crit_edge, %for.cond.1.i.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge, %if.end9.if.end.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 10), %for.cond.9.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 9), %for.cond.8.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 8), %for.cond.7.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 7), %for.cond.6.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 6), %for.cond.5.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 5), %for.cond.4.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 4), %for.cond.3.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 3), %for.cond.2.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 2), %for.cond.1.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 1), %for.cond.i.i.if.end.i_crit_edge ], [ @seg6_action_table, %if.end9.if.end.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.seg6_action_desc], ptr @seg6_action_table, i32 0, i32 11), %for.cond.10.i.i.if.end.i_crit_edge ]
  %input.i = getelementptr inbounds %struct.seg6_action_desc, ptr %retval.0.i.ph.i, i32 0, i32 3
  %22 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input.i, align 4
  %tobool1.not.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i, label %if.end.i.out_free_crit_edge, label %if.end3.i

if.end.i.out_free_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free

if.end3.i:                                        ; preds = %if.end.i
  %desc4.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call6, i32 3, i32 6
  %24 = ptrtoint ptr %desc4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i.ph.i, ptr %desc4.i, align 4
  %static_headroom.i = getelementptr inbounds %struct.seg6_action_desc, ptr %retval.0.i.ph.i, i32 0, i32 4
  %25 = ptrtoint ptr %static_headroom.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %static_headroom.i, align 4
  %headroom.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call6, i32 3, i32 5
  %27 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %headroom.i, align 4
  %add.i = add i32 %28, %26
  store i32 %add.i, ptr %headroom.i, align 4
  %attrs5.i = getelementptr inbounds %struct.seg6_action_desc, ptr %retval.0.i.ph.i, i32 0, i32 1
  %29 = ptrtoint ptr %attrs5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %attrs5.i, align 4
  %optattrs.i = getelementptr inbounds %struct.seg6_action_desc, ptr %retval.0.i.ph.i, i32 0, i32 2
  %31 = ptrtoint ptr %optattrs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %optattrs.i, align 4
  %and.i = and i32 %32, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.for.body.i_crit_edge, label %land.end.i

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

land.end.i:                                       ; preds = %if.end3.i
  %.b89.i = load i1, ptr @parse_nla_action.__already_done, align 1
  br i1 %.b89.i, label %land.end.i.out_free_crit_edge, label %if.then13.i, !prof !95

land.end.i.out_free_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free

if.then13.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @parse_nla_action.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1741, i32 noundef 9, ptr noundef nonnull @.str.2) #18
  br label %out_free

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %i.0114.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end3.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %attrs5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %attrs5.i, align 4
  %shl.i = shl nuw nsw i32 1, %i.0114.i
  %and45.i = and i32 %34, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then47.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then47.i:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 %i.0114.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %tobool48.not.i = icmp eq ptr %36, null
  br i1 %tobool48.not.i, label %if.then47.i.out_free_crit_edge, label %if.end50.i

if.then47.i.out_free_crit_edge:                   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free

if.end50.i:                                       ; preds = %if.then47.i
  %arrayidx51.i = getelementptr [11 x %struct.seg6_action_param], ptr @seg6_action_params, i32 0, i32 %i.0114.i
  %37 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx51.i, align 4
  %call52.i = call i32 %38(ptr noundef nonnull %tb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %parse_attrs_err.i, label %if.end50.i.for.inc.i_crit_edge

if.end50.i.for.inc.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end50.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0114.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %39 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc4.i, align 4
  %optattrs.i.i = getelementptr inbounds %struct.seg6_action_desc, ptr %40, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.end.i
  %i.029.i.i = phi i32 [ 0, %for.end.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %parsed_optattrs.028.i.i = phi i32 [ 0, %for.end.i ], [ %parsed_optattrs.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %41 = ptrtoint ptr %optattrs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %optattrs.i.i, align 4
  %shl.i.i = shl nuw nsw i32 1, %i.029.i.i
  %and.i.i = and i32 %42, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr ptr, ptr %tb, i32 %i.029.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %44, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %arrayidx3.i.i = getelementptr [11 x %struct.seg6_action_param], ptr @seg6_action_params, i32 0, i32 %i.029.i.i
  %45 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i = call i32 %46(ptr noundef nonnull %tb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i.i, label %parse_optattrs_err.i.i, label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %or.i.i = or i32 %shl.i.i, %parsed_optattrs.028.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end6.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %parsed_optattrs.1.i.i = phi i32 [ %or.i.i, %if.end6.i.i ], [ %parsed_optattrs.028.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ], [ %parsed_optattrs.028.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 11
  br i1 %exitcond.not.i.i, label %parse_nla_action.exit.thread58, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

parse_nla_action.exit.thread58:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %parsed_optattrs8.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call6, i32 3, i32 6, i32 1
  %47 = ptrtoint ptr %parsed_optattrs8.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %parsed_optattrs.1.i.i, ptr %parsed_optattrs8.i.i, align 4
  br label %if.end17

parse_optattrs_err.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.029.i.i)
  %cmp9.i.not.i.i = icmp eq i32 %i.029.i.i, 0
  br i1 %cmp9.i.not.i.i, label %parse_optattrs_err.i.i.for.body.i94.preheader.i_crit_edge, label %parse_optattrs_err.i.i.for.body.i.i.i_crit_edge

parse_optattrs_err.i.i.for.body.i.i.i_crit_edge:  ; preds = %parse_optattrs_err.i.i
  br label %for.body.i.i.i

parse_optattrs_err.i.i.for.body.i94.preheader.i_crit_edge: ; preds = %parse_optattrs_err.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i94.preheader.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %parse_optattrs_err.i.i.for.body.i.i.i_crit_edge
  %i.010.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %parse_optattrs_err.i.i.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %i.010.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %parsed_optattrs.028.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %48 = lshr i32 763, %i.010.i.i.i
  %49 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool1.not.not.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool1.not.not.i.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.for.inc.i.i.i_crit_edge

if.end.i.i.i.for.inc.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %destroy.i.i.i = getelementptr [11 x %struct.seg6_action_param], ptr @seg6_action_params, i32 0, i32 %i.010.i.i.i, i32 3
  %50 = ptrtoint ptr %destroy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %destroy.i.i.i, align 4
  call void %51(ptr noundef %data.i) #18
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.end.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %i.029.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.body.i94.preheader.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i.i

for.inc.i.i.i.for.body.i94.preheader.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i94.preheader.i

parse_attrs_err.i:                                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0114.i)
  %cmp9.i.not.i = icmp eq i32 %i.0114.i, 0
  br i1 %cmp9.i.not.i, label %parse_attrs_err.i.out_free_crit_edge, label %parse_attrs_err.i.for.body.i94.preheader.i_crit_edge

parse_attrs_err.i.for.body.i94.preheader.i_crit_edge: ; preds = %parse_attrs_err.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i94.preheader.i

parse_attrs_err.i.out_free_crit_edge:             ; preds = %parse_attrs_err.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free

for.body.i94.preheader.i:                         ; preds = %parse_attrs_err.i.for.body.i94.preheader.i_crit_edge, %for.inc.i.i.i.for.body.i94.preheader.i_crit_edge, %parse_optattrs_err.i.i.for.body.i94.preheader.i_crit_edge
  %err.0125.i = phi i32 [ %call52.i, %parse_attrs_err.i.for.body.i94.preheader.i_crit_edge ], [ %call.i.i, %parse_optattrs_err.i.i.for.body.i94.preheader.i_crit_edge ], [ %call.i.i, %for.inc.i.i.i.for.body.i94.preheader.i_crit_edge ]
  %i.0113124.i = phi i32 [ %i.0114.i, %parse_attrs_err.i.for.body.i94.preheader.i_crit_edge ], [ 11, %parse_optattrs_err.i.i.for.body.i94.preheader.i_crit_edge ], [ 11, %for.inc.i.i.i.for.body.i94.preheader.i_crit_edge ]
  %52 = ptrtoint ptr %attrs5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %attrs5.i, align 4
  br label %for.body.i94.i

for.body.i94.i:                                   ; preds = %for.inc.i98.i.for.body.i94.i_crit_edge, %for.body.i94.preheader.i
  %i.010.i.i = phi i32 [ %inc.i96.i, %for.inc.i98.i.for.body.i94.i_crit_edge ], [ 0, %for.body.i94.preheader.i ]
  %shl.i91.i = shl nuw i32 1, %i.010.i.i
  %and.i92.i = and i32 %shl.i91.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92.i)
  %tobool.not.i93.i = icmp eq i32 %and.i92.i, 0
  br i1 %tobool.not.i93.i, label %for.body.i94.i.for.inc.i98.i_crit_edge, label %if.end.i95.i

for.body.i94.i.for.inc.i98.i_crit_edge:           ; preds = %for.body.i94.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i98.i

if.end.i95.i:                                     ; preds = %for.body.i94.i
  %54 = lshr i32 763, %i.010.i.i
  %55 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool1.not.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool1.not.not.i.i, label %if.then2.i.i, label %if.end.i95.i.for.inc.i98.i_crit_edge

if.end.i95.i.for.inc.i98.i_crit_edge:             ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i98.i

if.then2.i.i:                                     ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #20
  %destroy.i.i = getelementptr [11 x %struct.seg6_action_param], ptr @seg6_action_params, i32 0, i32 %i.010.i.i, i32 3
  %56 = ptrtoint ptr %destroy.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %destroy.i.i, align 4
  call void %57(ptr noundef %data.i) #18
  br label %for.inc.i98.i

for.inc.i98.i:                                    ; preds = %if.then2.i.i, %if.end.i95.i.for.inc.i98.i_crit_edge, %for.body.i94.i.for.inc.i98.i_crit_edge
  %inc.i96.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i97.i = icmp eq i32 %inc.i96.i, %i.0113124.i
  br i1 %exitcond.not.i97.i, label %parse_nla_action.exit, label %for.inc.i98.i.for.body.i94.i_crit_edge

for.inc.i98.i.for.body.i94.i_crit_edge:           ; preds = %for.inc.i98.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i94.i

parse_nla_action.exit:                            ; preds = %for.inc.i98.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0125.i)
  %cmp15 = icmp slt i32 %err.0125.i, 0
  br i1 %cmp15, label %parse_nla_action.exit.out_free_crit_edge, label %parse_nla_action.exit.if.end17_crit_edge

parse_nla_action.exit.if.end17_crit_edge:         ; preds = %parse_nla_action.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

parse_nla_action.exit.out_free_crit_edge:         ; preds = %parse_nla_action.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free

if.end17:                                         ; preds = %parse_nla_action.exit.if.end17_crit_edge, %parse_nla_action.exit.thread58
  %58 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc4.i, align 4
  %slwt_ops.i = getelementptr inbounds %struct.seg6_action_desc, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %slwt_ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %slwt_ops.i, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %if.end17.if.end21_crit_edge, label %seg6_local_lwtunnel_build_state.exit

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

seg6_local_lwtunnel_build_state.exit:             ; preds = %if.end17
  %call.i = call i32 %61(ptr noundef %data.i, ptr noundef %cfg, ptr noundef %extack) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 0
  br i1 %cmp19, label %out_destroy_attrs, label %seg6_local_lwtunnel_build_state.exit.if.end21_crit_edge

seg6_local_lwtunnel_build_state.exit.if.end21_crit_edge: ; preds = %seg6_local_lwtunnel_build_state.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.end21:                                         ; preds = %seg6_local_lwtunnel_build_state.exit.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %62 = ptrtoint ptr %call6 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 7, ptr %call6, align 4
  %flags = getelementptr inbounds %struct.lwtunnel_state, ptr %call6, i32 0, i32 1
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 2, ptr %flags, align 2
  %64 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %headroom.i, align 4
  %conv = trunc i32 %65 to i16
  %headroom22 = getelementptr inbounds %struct.lwtunnel_state, ptr %call6, i32 0, i32 2
  %66 = ptrtoint ptr %headroom22 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv, ptr %headroom22, align 4
  %67 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call6, ptr %ts, align 4
  br label %cleanup

out_destroy_attrs:                                ; preds = %seg6_local_lwtunnel_build_state.exit
  %68 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %desc4.i, align 4
  %attrs1.i = getelementptr inbounds %struct.seg6_action_desc, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %attrs1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %attrs1.i, align 4
  %parsed_optattrs.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call6, i32 3, i32 6, i32 1
  %72 = ptrtoint ptr %parsed_optattrs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %parsed_optattrs.i, align 4
  %or.i = or i32 %73, %71
  br label %for.body.i.i48

for.body.i.i48:                                   ; preds = %for.inc.i.i55.for.body.i.i48_crit_edge, %out_destroy_attrs
  %i.010.i.i44 = phi i32 [ %inc.i.i53, %for.inc.i.i55.for.body.i.i48_crit_edge ], [ 0, %out_destroy_attrs ]
  %shl.i.i45 = shl nuw i32 1, %i.010.i.i44
  %and.i.i46 = and i32 %shl.i.i45, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i46)
  %tobool.not.i.i47 = icmp eq i32 %and.i.i46, 0
  br i1 %tobool.not.i.i47, label %for.body.i.i48.for.inc.i.i55_crit_edge, label %if.end.i.i50

for.body.i.i48.for.inc.i.i55_crit_edge:           ; preds = %for.body.i.i48
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i55

if.end.i.i50:                                     ; preds = %for.body.i.i48
  %74 = lshr i32 763, %i.010.i.i44
  %75 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool1.not.not.i.i49 = icmp eq i32 %75, 0
  br i1 %tobool1.not.not.i.i49, label %if.then2.i.i52, label %if.end.i.i50.for.inc.i.i55_crit_edge

if.end.i.i50.for.inc.i.i55_crit_edge:             ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i55

if.then2.i.i52:                                   ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #20
  %destroy.i.i51 = getelementptr [11 x %struct.seg6_action_param], ptr @seg6_action_params, i32 0, i32 %i.010.i.i44, i32 3
  %76 = ptrtoint ptr %destroy.i.i51 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %destroy.i.i51, align 4
  call void %77(ptr noundef %data.i) #18
  br label %for.inc.i.i55

for.inc.i.i55:                                    ; preds = %if.then2.i.i52, %if.end.i.i50.for.inc.i.i55_crit_edge, %for.body.i.i48.for.inc.i.i55_crit_edge
  %inc.i.i53 = add nuw nsw i32 %i.010.i.i44, 1
  %exitcond.not.i.i54 = icmp eq i32 %inc.i.i53, 11
  br i1 %exitcond.not.i.i54, label %for.inc.i.i55.out_free_crit_edge, label %for.inc.i.i55.for.body.i.i48_crit_edge

for.inc.i.i55.for.body.i.i48_crit_edge:           ; preds = %for.inc.i.i55
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i48

for.inc.i.i55.out_free_crit_edge:                 ; preds = %for.inc.i.i55
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free

out_free:                                         ; preds = %for.inc.i.i55.out_free_crit_edge, %parse_nla_action.exit.out_free_crit_edge, %parse_attrs_err.i.out_free_crit_edge, %if.then47.i.out_free_crit_edge, %if.then13.i, %land.end.i.out_free_crit_edge, %if.end.i.out_free_crit_edge, %for.cond.10.i.i.out_free_crit_edge
  %err.0 = phi i32 [ %err.0125.i, %parse_nla_action.exit.out_free_crit_edge ], [ %call52.i, %parse_attrs_err.i.out_free_crit_edge ], [ -22, %for.cond.10.i.i.out_free_crit_edge ], [ -22, %land.end.i.out_free_crit_edge ], [ -22, %if.then13.i ], [ -95, %if.end.i.out_free_crit_edge ], [ %call.i, %for.inc.i.i55.out_free_crit_edge ], [ -22, %if.then47.i.out_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call6) #18
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end21, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ 0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tb) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seg6_local_destroy_state(ptr noundef %lwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 0, i32 7
  %desc1.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 3, i32 6
  %0 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1.i, align 4
  %destroy_state.i = getelementptr inbounds %struct.seg6_action_desc, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %destroy_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy_state.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.seg6_local_lwtunnel_destroy_state.exit_crit_edge, label %if.end.i

entry.seg6_local_lwtunnel_destroy_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %seg6_local_lwtunnel_destroy_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %3(ptr noundef %data.i) #18
  br label %seg6_local_lwtunnel_destroy_state.exit

seg6_local_lwtunnel_destroy_state.exit:           ; preds = %if.end.i, %entry.seg6_local_lwtunnel_destroy_state.exit_crit_edge
  %4 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc1.i, align 4
  %attrs1.i = getelementptr inbounds %struct.seg6_action_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %attrs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attrs1.i, align 4
  %parsed_optattrs.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 3, i32 6, i32 1
  %8 = ptrtoint ptr %parsed_optattrs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parsed_optattrs.i, align 4
  %or.i = or i32 %9, %7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %seg6_local_lwtunnel_destroy_state.exit
  %i.010.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %seg6_local_lwtunnel_destroy_state.exit ]
  %shl.i.i = shl nuw i32 1, %i.010.i.i
  %and.i.i = and i32 %shl.i.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %10 = lshr i32 763, %i.010.i.i
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.not.i.i, label %if.then2.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %destroy.i.i = getelementptr [11 x %struct.seg6_action_param], ptr @seg6_action_params, i32 0, i32 %i.010.i.i, i32 3
  %12 = ptrtoint ptr %destroy.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %destroy.i.i, align 4
  tail call void %13(ptr noundef %data.i) #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 11
  br i1 %exitcond.not.i.i, label %destroy_attrs.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

destroy_attrs.exit:                               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_local_input(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %1)
  %cmp.not = icmp eq i16 %1, -31011
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %return

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nf_hooks_lwtunnel_enabled, ptr blockaddress(@seg6_local_input, %if.then4)) #18
          to label %if.end7 [label %if.then4], !srcloc !96

if.then4:                                         ; preds = %if.end
  %2 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %call.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 1, ptr noundef %6, ptr noundef %skb, ptr noundef %4, ptr noundef null, ptr noundef nonnull @seg6_local_input_core) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.then4.return_crit_edge

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  %call1.i = tail call i32 @seg6_local_input_core(ptr noundef %6, ptr noundef null, ptr noundef %skb) #18, !callees !97
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %7 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %nd_net.i16 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 127
  %10 = ptrtoint ptr %nd_net.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i16, align 4
  %call9 = tail call i32 @seg6_local_input_core(ptr noundef %11, ptr noundef null, ptr noundef %skb)
  br label %return

return:                                           ; preds = %if.end7, %if.then.i, %if.then4.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call9, %if.end7 ], [ %call1.i, %if.then.i ], [ %call.i, %if.then4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_local_fill_encap(ptr noundef %skb, ptr noundef %lwt) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 0, i32 7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 3, i32 6
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %attrs2 = getelementptr inbounds %struct.seg6_action_desc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %attrs2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attrs2, align 4
  %parsed_optattrs = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 3, i32 6, i32 1
  %7 = ptrtoint ptr %parsed_optattrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %parsed_optattrs, align 4
  %or = or i32 %8, %6
  %and = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.then4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = call i32 null(ptr noundef %skb, ptr noundef %data.i) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.end.for.inc_crit_edge
  %and.1 = and i32 %or, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool3.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  %call5.1 = call i32 null(ptr noundef %skb, ptr noundef %data.i) #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then4.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %or, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool3.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  %call5.2 = call i32 @put_nla_srh(ptr noundef %skb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %cmp6.2 = icmp slt i32 %call5.2, 0
  br i1 %cmp6.2, label %if.then4.2.cleanup_crit_edge, label %if.then4.2.for.inc.2_crit_edge

if.then4.2.for.inc.2_crit_edge:                   ; preds = %if.then4.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.then4.2.cleanup_crit_edge:                     ; preds = %if.then4.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.2:                                        ; preds = %if.then4.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %or, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool3.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then4.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

if.then4.3:                                       ; preds = %for.inc.2
  %call5.3 = call i32 @put_nla_table(ptr noundef %skb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %cmp6.3 = icmp slt i32 %call5.3, 0
  br i1 %cmp6.3, label %if.then4.3.cleanup_crit_edge, label %if.then4.3.for.inc.3_crit_edge

if.then4.3.for.inc.3_crit_edge:                   ; preds = %if.then4.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

if.then4.3.cleanup_crit_edge:                     ; preds = %if.then4.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.3:                                        ; preds = %if.then4.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %or, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool3.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then4.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4

if.then4.4:                                       ; preds = %for.inc.3
  %call5.4 = call i32 @put_nla_nh4(ptr noundef %skb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %cmp6.4 = icmp slt i32 %call5.4, 0
  br i1 %cmp6.4, label %if.then4.4.cleanup_crit_edge, label %if.then4.4.for.inc.4_crit_edge

if.then4.4.for.inc.4_crit_edge:                   ; preds = %if.then4.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4

if.then4.4.cleanup_crit_edge:                     ; preds = %if.then4.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.4:                                        ; preds = %if.then4.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %or, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool3.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then4.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.5

if.then4.5:                                       ; preds = %for.inc.4
  %call5.5 = call i32 @put_nla_nh6(ptr noundef %skb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %cmp6.5 = icmp slt i32 %call5.5, 0
  br i1 %cmp6.5, label %if.then4.5.cleanup_crit_edge, label %if.then4.5.for.inc.5_crit_edge

if.then4.5.for.inc.5_crit_edge:                   ; preds = %if.then4.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.5

if.then4.5.cleanup_crit_edge:                     ; preds = %if.then4.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.5:                                        ; preds = %if.then4.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %or, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool3.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool3.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then4.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.6

if.then4.6:                                       ; preds = %for.inc.5
  %call5.6 = call i32 @put_nla_iif(ptr noundef %skb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %cmp6.6 = icmp slt i32 %call5.6, 0
  br i1 %cmp6.6, label %if.then4.6.cleanup_crit_edge, label %if.then4.6.for.inc.6_crit_edge

if.then4.6.for.inc.6_crit_edge:                   ; preds = %if.then4.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.6

if.then4.6.cleanup_crit_edge:                     ; preds = %if.then4.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.6:                                        ; preds = %if.then4.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %and.7 = and i32 %or, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool3.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool3.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then4.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.7

if.then4.7:                                       ; preds = %for.inc.6
  %call5.7 = call i32 @put_nla_oif(ptr noundef %skb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7)
  %cmp6.7 = icmp slt i32 %call5.7, 0
  br i1 %cmp6.7, label %if.then4.7.cleanup_crit_edge, label %if.then4.7.for.inc.7_crit_edge

if.then4.7.for.inc.7_crit_edge:                   ; preds = %if.then4.7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.7

if.then4.7.cleanup_crit_edge:                     ; preds = %if.then4.7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.7:                                        ; preds = %if.then4.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %and.8 = and i32 %or, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool3.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool3.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then4.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.8

if.then4.8:                                       ; preds = %for.inc.7
  %call5.8 = call i32 @put_nla_bpf(ptr noundef %skb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.8)
  %cmp6.8 = icmp slt i32 %call5.8, 0
  br i1 %cmp6.8, label %if.then4.8.cleanup_crit_edge, label %if.then4.8.for.inc.8_crit_edge

if.then4.8.for.inc.8_crit_edge:                   ; preds = %if.then4.8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.8

if.then4.8.cleanup_crit_edge:                     ; preds = %if.then4.8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.8:                                        ; preds = %if.then4.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %and.9 = and i32 %or, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool3.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool3.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then4.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.9

if.then4.9:                                       ; preds = %for.inc.8
  %call5.9 = call i32 @put_nla_vrftable(ptr noundef %skb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.9)
  %cmp6.9 = icmp slt i32 %call5.9, 0
  br i1 %cmp6.9, label %if.then4.9.cleanup_crit_edge, label %if.then4.9.for.inc.9_crit_edge

if.then4.9.for.inc.9_crit_edge:                   ; preds = %if.then4.9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.9

if.then4.9.cleanup_crit_edge:                     ; preds = %if.then4.9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.9:                                        ; preds = %if.then4.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %and.10 = and i32 %or, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool3.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool3.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then4.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.10

if.then4.10:                                      ; preds = %for.inc.9
  %call5.10 = call i32 @put_nla_counters(ptr noundef %skb, ptr noundef %data.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.10)
  %cmp6.10 = icmp slt i32 %call5.10, 0
  br i1 %cmp6.10, label %if.then4.10.cleanup_crit_edge, label %if.then4.10.for.inc.10_crit_edge

if.then4.10.for.inc.10_crit_edge:                 ; preds = %if.then4.10
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.10

if.then4.10.cleanup_crit_edge:                    ; preds = %if.then4.10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.10:                                       ; preds = %if.then4.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.10, %if.then4.10.cleanup_crit_edge, %if.then4.9.cleanup_crit_edge, %if.then4.8.cleanup_crit_edge, %if.then4.7.cleanup_crit_edge, %if.then4.6.cleanup_crit_edge, %if.then4.5.cleanup_crit_edge, %if.then4.4.cleanup_crit_edge, %if.then4.3.cleanup_crit_edge, %if.then4.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ %call5.2, %if.then4.2.cleanup_crit_edge ], [ %call5.3, %if.then4.3.cleanup_crit_edge ], [ %call5.4, %if.then4.4.cleanup_crit_edge ], [ %call5.5, %if.then4.5.cleanup_crit_edge ], [ %call5.6, %if.then4.6.cleanup_crit_edge ], [ %call5.7, %if.then4.7.cleanup_crit_edge ], [ %call5.8, %if.then4.8.cleanup_crit_edge ], [ %call5.9, %if.then4.9.cleanup_crit_edge ], [ %call5.10, %if.then4.10.cleanup_crit_edge ], [ 0, %for.inc.10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @seg6_local_get_encap_size(ptr nocapture noundef readonly %lwt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 3, i32 6
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %attrs2 = getelementptr inbounds %struct.seg6_action_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %attrs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attrs2, align 4
  %parsed_optattrs = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 3, i32 6, i32 1
  %4 = ptrtoint ptr %parsed_optattrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parsed_optattrs, align 4
  %or = or i32 %5, %3
  %and = and i32 %or, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %srh = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 2
  %6 = ptrtoint ptr %srh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srh, align 4
  %hdrlen = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %9 to i32
  %add = shl nuw nsw i32 %conv, 3
  %sub.i = add nuw nsw i32 %add, 15
  %and.i = and i32 %sub.i, 4092
  %add4 = add nuw nsw i32 %and.i, 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nlsize.0 = phi i32 [ %add4, %if.then ], [ 8, %entry.if.end_crit_edge ]
  %and5 = and i32 %or, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %add9 = add nuw nsw i32 %nlsize.0, 8
  %spec.select = select i1 %tobool6.not, i32 %nlsize.0, i32 %add9
  %and11 = and i32 %or, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %add15 = add nuw nsw i32 %spec.select, 8
  %nlsize.2 = select i1 %tobool12.not, i32 %spec.select, i32 %add15
  %and17 = and i32 %or, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %add21 = add nuw nsw i32 %nlsize.2, 20
  %nlsize.3 = select i1 %tobool18.not, i32 %nlsize.2, i32 %add21
  %and23 = and i32 %or, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %add27 = add nuw nsw i32 %nlsize.3, 8
  %nlsize.4 = select i1 %tobool24.not, i32 %nlsize.3, i32 %add27
  %and29 = and i32 %or, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %add33 = add nuw nsw i32 %nlsize.4, 8
  %nlsize.5 = select i1 %tobool30.not, i32 %nlsize.4, i32 %add33
  %and35 = and i32 %or, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %add43 = add nuw nsw i32 %nlsize.5, 276
  %nlsize.6 = select i1 %tobool36.not, i32 %nlsize.5, i32 %add43
  %and45 = and i32 %or, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %add49 = add nuw nsw i32 %nlsize.6, 8
  %nlsize.7 = select i1 %tobool46.not, i32 %nlsize.6, i32 %add49
  %and51 = and i32 %or, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %add61 = add nuw nsw i32 %nlsize.7, 40
  %nlsize.8 = select i1 %tobool52.not, i32 %nlsize.7, i32 %add61
  ret i32 %nlsize.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_local_cmp_encap(ptr noundef %a, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 0, i32 7
  %data.i33 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 0, i32 7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  %2 = ptrtoint ptr %data.i33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data.i33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 3, i32 6
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %attrs = getelementptr inbounds %struct.seg6_action_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attrs, align 4
  %parsed_optattrs = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 3, i32 6, i32 1
  %8 = ptrtoint ptr %parsed_optattrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parsed_optattrs, align 4
  %or = or i32 %9, %7
  %desc3 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 3, i32 6
  %10 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc3, align 4
  %attrs4 = getelementptr inbounds %struct.seg6_action_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %attrs4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attrs4, align 4
  %parsed_optattrs5 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 3, i32 6, i32 1
  %14 = ptrtoint ptr %parsed_optattrs5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parsed_optattrs5, align 4
  %or6 = or i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %or6)
  %cmp7.not = icmp eq i32 %or, %or6
  br i1 %cmp7.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %and = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then11

if.then11:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  %call13 = tail call i32 null(ptr noundef %data.i, ptr noundef %data.i33) #18
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %and.1 = and i32 %or, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then11.1

if.then11.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  %call13.1 = tail call i32 null(ptr noundef %data.i, ptr noundef %data.i33) #18
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %or, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then11.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.then11.2:                                      ; preds = %for.inc.1
  %call13.2 = tail call i32 @cmp_nla_srh(ptr noundef %data.i, ptr noundef %data.i33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.2)
  %tobool14.not.2 = icmp eq i32 %call13.2, 0
  br i1 %tobool14.not.2, label %if.then11.2.for.inc.2_crit_edge, label %if.then11.2.cleanup_crit_edge

if.then11.2.cleanup_crit_edge:                    ; preds = %if.then11.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then11.2.for.inc.2_crit_edge:                  ; preds = %if.then11.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then11.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %or, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then11.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

if.then11.3:                                      ; preds = %for.inc.2
  %call13.3 = tail call i32 @cmp_nla_table(ptr noundef %data.i, ptr noundef %data.i33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.3)
  %tobool14.not.3 = icmp eq i32 %call13.3, 0
  br i1 %tobool14.not.3, label %if.then11.3.for.inc.3_crit_edge, label %if.then11.3.cleanup_crit_edge

if.then11.3.cleanup_crit_edge:                    ; preds = %if.then11.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then11.3.for.inc.3_crit_edge:                  ; preds = %if.then11.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then11.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %or, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then11.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4

if.then11.4:                                      ; preds = %for.inc.3
  %call13.4 = tail call i32 @cmp_nla_nh4(ptr noundef %data.i, ptr noundef %data.i33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.4)
  %tobool14.not.4 = icmp eq i32 %call13.4, 0
  br i1 %tobool14.not.4, label %if.then11.4.for.inc.4_crit_edge, label %if.then11.4.cleanup_crit_edge

if.then11.4.cleanup_crit_edge:                    ; preds = %if.then11.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then11.4.for.inc.4_crit_edge:                  ; preds = %if.then11.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then11.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %or, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then11.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.5

if.then11.5:                                      ; preds = %for.inc.4
  %call13.5 = tail call i32 @cmp_nla_nh6(ptr noundef %data.i, ptr noundef %data.i33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.5)
  %tobool14.not.5 = icmp eq i32 %call13.5, 0
  br i1 %tobool14.not.5, label %if.then11.5.for.inc.5_crit_edge, label %if.then11.5.cleanup_crit_edge

if.then11.5.cleanup_crit_edge:                    ; preds = %if.then11.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then11.5.for.inc.5_crit_edge:                  ; preds = %if.then11.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then11.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %or, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then11.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.6

if.then11.6:                                      ; preds = %for.inc.5
  %call13.6 = tail call i32 @cmp_nla_iif(ptr noundef %data.i, ptr noundef %data.i33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.6)
  %tobool14.not.6 = icmp eq i32 %call13.6, 0
  br i1 %tobool14.not.6, label %if.then11.6.for.inc.6_crit_edge, label %if.then11.6.cleanup_crit_edge

if.then11.6.cleanup_crit_edge:                    ; preds = %if.then11.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then11.6.for.inc.6_crit_edge:                  ; preds = %if.then11.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then11.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %and.7 = and i32 %or, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then11.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.7

if.then11.7:                                      ; preds = %for.inc.6
  %call13.7 = tail call i32 @cmp_nla_oif(ptr noundef %data.i, ptr noundef %data.i33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.7)
  %tobool14.not.7 = icmp eq i32 %call13.7, 0
  br i1 %tobool14.not.7, label %if.then11.7.for.inc.7_crit_edge, label %if.then11.7.cleanup_crit_edge

if.then11.7.cleanup_crit_edge:                    ; preds = %if.then11.7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then11.7.for.inc.7_crit_edge:                  ; preds = %if.then11.7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then11.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %and.8 = and i32 %or, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then11.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.8

if.then11.8:                                      ; preds = %for.inc.7
  %call13.8 = tail call i32 @cmp_nla_bpf(ptr noundef %data.i, ptr noundef %data.i33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.8)
  %tobool14.not.8 = icmp eq i32 %call13.8, 0
  br i1 %tobool14.not.8, label %if.then11.8.for.inc.8_crit_edge, label %if.then11.8.cleanup_crit_edge

if.then11.8.cleanup_crit_edge:                    ; preds = %if.then11.8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then11.8.for.inc.8_crit_edge:                  ; preds = %if.then11.8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then11.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %and.9 = and i32 %or, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then11.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.9

if.then11.9:                                      ; preds = %for.inc.8
  %call13.9 = tail call i32 @cmp_nla_vrftable(ptr noundef %data.i, ptr noundef %data.i33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.9)
  %tobool14.not.9 = icmp eq i32 %call13.9, 0
  br i1 %tobool14.not.9, label %if.then11.9.for.inc.9_crit_edge, label %if.then11.9.cleanup_crit_edge

if.then11.9.cleanup_crit_edge:                    ; preds = %if.then11.9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then11.9.for.inc.9_crit_edge:                  ; preds = %if.then11.9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then11.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %and.10 = and i32 %or, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then11.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.10

if.then11.10:                                     ; preds = %for.inc.9
  %call13.10 = tail call i32 @cmp_nla_counters(ptr noundef %data.i, ptr noundef %data.i33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.10)
  %tobool14.not.10 = icmp eq i32 %call13.10, 0
  br i1 %tobool14.not.10, label %if.then11.10.for.inc.10_crit_edge, label %if.then11.10.cleanup_crit_edge

if.then11.10.cleanup_crit_edge:                   ; preds = %if.then11.10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then11.10.for.inc.10_crit_edge:                ; preds = %if.then11.10
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then11.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.10, %if.then11.10.cleanup_crit_edge, %if.then11.9.cleanup_crit_edge, %if.then11.8.cleanup_crit_edge, %if.then11.7.cleanup_crit_edge, %if.then11.6.cleanup_crit_edge, %if.then11.5.cleanup_crit_edge, %if.then11.4.cleanup_crit_edge, %if.then11.3.cleanup_crit_edge, %if.then11.2.cleanup_crit_edge, %if.then11.1, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then11 ], [ 1, %if.then11.1 ], [ 1, %if.then11.2.cleanup_crit_edge ], [ 1, %if.then11.3.cleanup_crit_edge ], [ 1, %if.then11.4.cleanup_crit_edge ], [ 1, %if.then11.5.cleanup_crit_edge ], [ 1, %if.then11.6.cleanup_crit_edge ], [ 1, %if.then11.7.cleanup_crit_edge ], [ 1, %if.then11.8.cleanup_crit_edge ], [ 1, %if.then11.9.cleanup_crit_edge ], [ 1, %if.then11.10.cleanup_crit_edge ], [ 0, %for.inc.10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lwtunnel_state_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end(ptr noundef %skb, ptr nocapture noundef readnone %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @seg6_get_srh(ptr noundef %skb, i32 noundef 4) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.drop_crit_edge, label %if.end.i

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @seg6_hmac_validate_skb(ptr noundef %skb) #18
  br i1 %call1.i, label %if.end, label %if.end.i.drop_crit_edge

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %if.end.i
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
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %segments_left.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %segments_left.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %segments_left.i, align 1
  %dec.i = add i8 %5, -1
  store i8 %dec.i, ptr %segments_left.i, align 1
  %segments.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i, i32 0, i32 7
  %conv.i = zext i8 %dec.i to i32
  %add.ptr.i = getelementptr %struct.in6_addr, ptr %segments.i, i32 %conv.i
  %6 = call ptr @memcpy(ptr %daddr, ptr %add.ptr.i, i32 16)
  %call.i9 = tail call fastcc i32 @seg6_lookup_any_nexthop(ptr noundef %skb, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #18
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.end.dst_input.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !93

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.end.dst_input.exit_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %and25.i.i = and i32 %11, -2
  %12 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input.i, align 4
  %call1.i10 = tail call i32 %14(ptr noundef %skb) #18
  br label %cleanup

drop:                                             ; preds = %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %drop, %dst_input.exit
  %retval.0 = phi i32 [ %call1.i10, %dst_input.exit ], [ -22, %drop ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_x(ptr noundef %skb, ptr noundef %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @seg6_get_srh(ptr noundef %skb, i32 noundef 4) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.drop_crit_edge, label %if.end.i

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @seg6_hmac_validate_skb(ptr noundef %skb) #18
  br i1 %call1.i, label %if.end, label %if.end.i.drop_crit_edge

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %if.end.i
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
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %segments_left.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %segments_left.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %segments_left.i, align 1
  %dec.i = add i8 %5, -1
  store i8 %dec.i, ptr %segments_left.i, align 1
  %segments.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i, i32 0, i32 7
  %conv.i = zext i8 %dec.i to i32
  %add.ptr.i = getelementptr %struct.in6_addr, ptr %segments.i, i32 %conv.i
  %6 = call ptr @memcpy(ptr %daddr, ptr %add.ptr.i, i32 16)
  %nh6 = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 4
  %call.i9 = tail call fastcc i32 @seg6_lookup_any_nexthop(ptr noundef %skb, ptr noundef %nh6, i32 noundef 0, i1 noundef zeroext false) #18
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.end.dst_input.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !93

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.end.dst_input.exit_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %and25.i.i = and i32 %11, -2
  %12 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input.i, align 4
  %call1.i10 = tail call i32 %14(ptr noundef %skb) #18
  br label %cleanup

drop:                                             ; preds = %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %drop, %dst_input.exit
  %retval.0 = phi i32 [ %call1.i10, %dst_input.exit ], [ -22, %drop ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_t(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @seg6_get_srh(ptr noundef %skb, i32 noundef 4) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.drop_crit_edge, label %if.end.i

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @seg6_hmac_validate_skb(ptr noundef %skb) #18
  br i1 %call1.i, label %if.end, label %if.end.i.drop_crit_edge

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %if.end.i
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
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %segments_left.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %segments_left.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %segments_left.i, align 1
  %dec.i = add i8 %5, -1
  store i8 %dec.i, ptr %segments_left.i, align 1
  %segments.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i, i32 0, i32 7
  %conv.i = zext i8 %dec.i to i32
  %add.ptr.i = getelementptr %struct.in6_addr, ptr %segments.i, i32 %conv.i
  %6 = call ptr @memcpy(ptr %daddr, ptr %add.ptr.i, i32 16)
  %table = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 2
  %7 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %table, align 4
  %call.i9 = tail call fastcc i32 @seg6_lookup_any_nexthop(ptr noundef %skb, ptr noundef null, i32 noundef %8, i1 noundef zeroext false) #18
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.end.dst_input.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !93

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.end.dst_input.exit_crit_edge
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 8
  %and25.i.i = and i32 %13, -2
  %14 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input.i, align 4
  %call1.i10 = tail call i32 %16(ptr noundef %skb) #18
  br label %cleanup

drop:                                             ; preds = %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %drop, %dst_input.exit
  %retval.0 = phi i32 [ %call1.i10, %dst_input.exit ], [ -22, %drop ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_dx2(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call fastcc zeroext i1 @decap_and_validate(ptr noundef %skb, i32 noundef 143)
  br i1 %call1, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 14
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end4_crit_edge, !prof !93

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp3.i = icmp ult i32 %6, 14
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !93

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 14, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #18
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end4_crit_edge

pskb_may_pull.exit.if.end4_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end4:                                          ; preds = %pskb_may_pull.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %15)
  %cmp.i = icmp ugt i16 %15, 1535
  br i1 %cmp.i, label %if.end7, label %if.end4.drop_crit_edge

if.end4.drop_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end7:                                          ; preds = %if.end4
  %oif = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 6
  %16 = ptrtoint ptr %oif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oif, align 4
  %call8 = tail call ptr @dev_get_by_index_rcu(ptr noundef %4, i32 noundef %17) #18
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end7.drop_crit_edge, label %if.end10

if.end7.drop_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end10:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 32
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp.not = icmp eq i16 %19, 1
  br i1 %cmp.not, label %if.end13, label %if.end10.drop_crit_edge

if.end10.drop_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end13:                                         ; preds = %if.end10
  %flags = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 14
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.drop_crit_edge, label %lor.lhs.false

if.end13.drop_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

lor.lhs.false:                                    ; preds = %if.end13
  %state.i = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 6
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end17, label %lor.lhs.false.drop_crit_edge

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end17:                                         ; preds = %lor.lhs.false
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %25 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i47 = icmp eq ptr %26, null
  br i1 %tobool.not.i47, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %26(ptr noundef %skb) #18
  %27 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %destructor.i, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %28, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end17
  %30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool3.not.i = icmp eq ptr %32, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !95

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #18, !srcloc !98
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %call18 = tail call fastcc zeroext i1 @skb_warn_if_lro(ptr noundef %skb)
  br i1 %call18, label %skb_orphan.exit.drop_crit_edge, label %if.end20

skb_orphan.exit.drop_crit_edge:                   ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end20:                                         ; preds = %skb_orphan.exit
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %33 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %34 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %34)
  %cmp.i49 = icmp eq i16 %34, 1024
  br i1 %cmp.i49, label %if.then.i50, label %if.end20.skb_forward_csum.exit_crit_edge

if.end20.skb_forward_csum.exit_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_forward_csum.exit

if.then.i50:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear4.i = and i16 %bf.load.i, -1537
  %35 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %bf.clear4.i, ptr %ip_summed.i, align 8
  br label %skb_forward_csum.exit

skb_forward_csum.exit:                            ; preds = %if.then.i50, %if.end20.skb_forward_csum.exit_crit_edge
  %36 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i, align 4
  %sub = add i32 %37, -14
  %mtu = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 20
  %38 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %39)
  %cmp21 = icmp ugt i32 %sub, %39
  br i1 %cmp21, label %skb_forward_csum.exit.drop_crit_edge, label %if.end24

skb_forward_csum.exit.drop_crit_edge:             ; preds = %skb_forward_csum.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end24:                                         ; preds = %skb_forward_csum.exit
  call void @__sanitizer_cov_trace_pc() #20
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call8, ptr %0, align 8
  %41 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %h_proto, align 1
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %43 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %protocol, align 8
  %call26 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #18
  br label %cleanup

drop:                                             ; preds = %skb_forward_csum.exit.drop_crit_edge, %skb_orphan.exit.drop_crit_edge, %lor.lhs.false.drop_crit_edge, %if.end13.drop_crit_edge, %if.end10.drop_crit_edge, %if.end7.drop_crit_edge, %if.end4.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end24
  %retval.0 = phi i32 [ -22, %drop ], [ %call26, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_dx6(ptr noundef %skb, ptr nocapture noundef readnone %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @decap_and_validate(ptr noundef %skb, i32 noundef 41)
  br i1 %call, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 40
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge, !prof !93

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %1)
  %cmp3.i = icmp ult i32 %1, 40
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !93

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 40, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #18
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end3_crit_edge

pskb_may_pull.exit.if.end3_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end3:                                          ; preds = %pskb_may_pull.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %conv1.i = add i16 %conv.i.i, 40
  %8 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv1.i, ptr %transport_header.i.i, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %9 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %10, -8
  %11 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

if.end3.nf_reset_ct.exit_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %if.end3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #18
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #18, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !95

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #18
  br label %nf_reset_ct.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !101
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %11) #18
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %if.end3.nf_reset_ct.exit_crit_edge
  %13 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %_nfct.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nf_hooks_lwtunnel_enabled, ptr blockaddress(@input_action_end_dx6, %if.then7)) #18
          to label %if.end11 [label %if.then7], !srcloc !96

if.then7:                                         ; preds = %nf_reset_ct.exit
  %14 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 127
  %17 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nd_net.i, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.then7.skb_dst.exit_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.then7
  %call.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !93

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.then7.skb_dst.exit_crit_edge
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 8
  %and25.i = and i32 %23, -2
  %24 = inttoptr i32 %and25.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call.i25 = tail call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 0, ptr noundef %18, ptr noundef %skb, ptr noundef null, ptr noundef %26, ptr noundef nonnull @input_action_end_dx6_finish) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i25)
  %cmp.i = icmp eq i32 %call.i25, 1
  br i1 %cmp.i, label %if.then.i, label %skb_dst.exit.return_crit_edge

skb_dst.exit.return_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then.i:                                        ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call1.i = tail call i32 @input_action_end_dx6_finish(ptr noundef %18, ptr noundef null, ptr noundef %skb) #18, !callees !97
  br label %return

if.end11:                                         ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #20
  %27 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %nd_net.i27 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 127
  %30 = ptrtoint ptr %nd_net.i27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nd_net.i27, align 4
  %call13 = tail call i32 @input_action_end_dx6_finish(ptr noundef %31, ptr noundef null, ptr noundef %skb)
  br label %return

drop:                                             ; preds = %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %return

return:                                           ; preds = %drop, %if.end11, %if.then.i, %skb_dst.exit.return_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ -22, %drop ], [ %call1.i, %if.then.i ], [ %call.i25, %skb_dst.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_dx4(ptr noundef %skb, ptr nocapture noundef readnone %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @decap_and_validate(ptr noundef %skb, i32 noundef 4)
  br i1 %call, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge, !prof !93

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp3.i = icmp ult i32 %1, 20
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !93

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #18
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end3_crit_edge

pskb_may_pull.exit.if.end3_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end3:                                          ; preds = %pskb_may_pull.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2048, ptr %protocol, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %conv1.i = add i16 %conv.i.i, 20
  %9 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv1.i, ptr %transport_header.i.i, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %10 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %11, -8
  %12 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

if.end3.nf_reset_ct.exit_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %if.end3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %12, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 1, i32 3, i32 1) #18
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #18, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !95

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef 3) #18
  br label %nf_reset_ct.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !101
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %12) #18
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %if.end3.nf_reset_ct.exit_crit_edge
  %14 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %_nfct.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nf_hooks_lwtunnel_enabled, ptr blockaddress(@input_action_end_dx4, %if.then7)) #18
          to label %if.end11 [label %if.then7], !srcloc !96

if.then7:                                         ; preds = %nf_reset_ct.exit
  %15 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 127
  %18 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nd_net.i, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.then7.skb_dst.exit_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.then7
  %call.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !93

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.then7.skb_dst.exit_crit_edge
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 8
  %and25.i = and i32 %24, -2
  %25 = inttoptr i32 %and25.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call.i26 = tail call fastcc i32 @nf_hook(i8 noundef zeroext 2, i32 noundef 0, ptr noundef %19, ptr noundef %skb, ptr noundef null, ptr noundef %27, ptr noundef nonnull @input_action_end_dx4_finish) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i26)
  %cmp.i = icmp eq i32 %call.i26, 1
  br i1 %cmp.i, label %if.then.i, label %skb_dst.exit.return_crit_edge

skb_dst.exit.return_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then.i:                                        ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call1.i = tail call i32 @input_action_end_dx4_finish(ptr noundef %19, ptr noundef null, ptr noundef %skb) #18, !callees !97
  br label %return

if.end11:                                         ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #20
  %28 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %nd_net.i28 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 127
  %31 = ptrtoint ptr %nd_net.i28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nd_net.i28, align 4
  %call13 = tail call i32 @input_action_end_dx4_finish(ptr noundef %32, ptr noundef null, ptr noundef %skb)
  br label %return

drop:                                             ; preds = %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %return

return:                                           ; preds = %drop, %if.end11, %if.then.i, %skb_dst.exit.return_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ -22, %drop ], [ %call1.i, %if.then.i ], [ %call.i26, %skb_dst.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_dt4(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @decap_and_validate(ptr noundef %skb, i32 noundef 4)
  br i1 %call, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge, !prof !93

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp3.i = icmp ult i32 %1, 20
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !93

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #18
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end3_crit_edge

pskb_may_pull.exit.if.end3_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end3:                                          ; preds = %pskb_may_pull.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = tail call fastcc ptr @end_dt_vrf_core(ptr noundef %skb, ptr noundef %slwt, i16 noundef zeroext 2)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %saddr, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %call4, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %call12 = tail call fastcc i32 @ip_route_input(ptr noundef nonnull %call4, i32 noundef %10, i32 noundef %12, ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end17, label %if.end10.drop_crit_edge, !prof !95

if.end10.drop_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end17:                                         ; preds = %if.end10
  %16 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end17.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.end17.dst_input.exit_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.end17
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !93

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.end17.dst_input.exit_crit_edge
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 8
  %and25.i.i = and i32 %20, -2
  %21 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input.i, align 4
  %call1.i = tail call i32 %23(ptr noundef nonnull %call4) #18
  br label %cleanup

drop:                                             ; preds = %if.end10.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  %skb.addr.0 = phi ptr [ %call4, %if.end10.drop_crit_edge ], [ %skb, %pskb_may_pull.exit.drop_crit_edge ], [ %skb, %entry.drop_crit_edge ], [ %skb, %if.end.i.drop_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %drop, %dst_input.exit, %if.then8, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then8 ], [ -22, %drop ], [ %call1.i, %dst_input.exit ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_end_dt4_build(ptr nocapture noundef %slwt, ptr nocapture noundef readonly %cfg, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %nl_net.i.i = getelementptr inbounds %struct.fib6_config, ptr %cfg, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %nl_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nl_net.i.i, align 4
  %vrf_table.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %vrf_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vrf_table.i, align 4
  %call1.i = tail call i32 @l3mdev_ifindex_lookup_by_table_id(i32 noundef 1, ptr noundef %1, i32 noundef %3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end27.i

if.then.i:                                        ; preds = %entry
  %4 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %do.body16.i [
    i32 -1, label %do.body.i
    i32 -19, label %do.body7.i
  ]

do.body.i:                                        ; preds = %if.then.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__seg6_end_dt_vrf_build.__msg) #18
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.__seg6_end_dt_vrf_build.exit_crit_edge, label %if.then4.i

do.body.i.__seg6_end_dt_vrf_build.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seg6_end_dt_vrf_build.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @__seg6_end_dt_vrf_build.__msg, ptr %extack, align 4
  br label %__seg6_end_dt_vrf_build.exit

do.body7.i:                                       ; preds = %if.then.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__seg6_end_dt_vrf_build.__msg.16) #18
  %tobool9.not.i = icmp eq ptr %extack, null
  br i1 %tobool9.not.i, label %do.body7.i.__seg6_end_dt_vrf_build.exit_crit_edge, label %if.then10.i

do.body7.i.__seg6_end_dt_vrf_build.exit_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seg6_end_dt_vrf_build.exit

if.then10.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @__seg6_end_dt_vrf_build.__msg.16, ptr %extack, align 4
  br label %__seg6_end_dt_vrf_build.exit

do.body16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__seg6_end_dt_vrf_build.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@seg6_end_dt4_build, %if.then21.i)) #18
          to label %__seg6_end_dt_vrf_build.exit [label %if.then21.i], !srcloc !96

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__seg6_end_dt_vrf_build.__UNIQUE_ID_ddebug633, ptr noundef nonnull @.str.19, i32 noundef %call1.i) #18
  br label %__seg6_end_dt_vrf_build.exit

if.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dt_info.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8
  %net28.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %net28.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %net28.i, align 4
  %vrf_ifindex29.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %vrf_ifindex29.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call1.i, ptr %vrf_ifindex29.i, align 4
  %family30.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 4
  %9 = ptrtoint ptr %family30.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %family30.i, align 4
  %10 = ptrtoint ptr %dt_info.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %dt_info.i, align 4
  br label %__seg6_end_dt_vrf_build.exit

__seg6_end_dt_vrf_build.exit:                     ; preds = %if.end27.i, %if.then21.i, %do.body16.i, %if.then10.i, %do.body7.i.__seg6_end_dt_vrf_build.exit_crit_edge, %if.then4.i, %do.body.i.__seg6_end_dt_vrf_build.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end27.i ], [ -19, %do.body7.i.__seg6_end_dt_vrf_build.exit_crit_edge ], [ -19, %if.then10.i ], [ -1, %do.body.i.__seg6_end_dt_vrf_build.exit_crit_edge ], [ -1, %if.then4.i ], [ %call1.i, %if.then21.i ], [ %call1.i, %do.body16.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_dt6(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @decap_and_validate(ptr noundef %skb, i32 noundef 41)
  br i1 %call, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 40
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge, !prof !93

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %1)
  %cmp3.i = icmp ult i32 %1, 40
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !93

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 40, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #18
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end3_crit_edge

pskb_may_pull.exit.if.end3_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end3:                                          ; preds = %pskb_may_pull.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %dt_info.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8
  %4 = ptrtoint ptr %dt_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dt_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %legacy_mode, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call7 = tail call fastcc ptr @end_dt_vrf_core(ptr noundef %skb, ptr noundef %slwt, i16 noundef zeroext 10)
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end6.return_crit_edge, label %if.end9

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end9:                                          ; preds = %if.end6
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %call7 to i32
  br label %return

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @seg6_lookup_any_nexthop(ptr noundef nonnull %call7, ptr noundef null, i32 noundef 0, i1 noundef zeroext true)
  %7 = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end13.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.end13.dst_input.exit_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.end13
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !93

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.end13.dst_input.exit_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %and25.i.i = and i32 %11, -2
  %12 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input.i, align 4
  %call1.i = tail call i32 %14(ptr noundef nonnull %call7) #18
  br label %return

legacy_mode:                                      ; preds = %if.end3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %conv1.i = add i16 %conv.i.i, 40
  %19 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv1.i, ptr %transport_header.i.i, align 2
  %table = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 2
  %20 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %table, align 4
  %call16 = tail call fastcc i32 @seg6_lookup_any_nexthop(ptr noundef %skb, ptr noundef null, i32 noundef %21, i1 noundef zeroext true)
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %and.i.i31 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %and.i.i31, 0
  br i1 %tobool.not.i.i32, label %legacy_mode.dst_input.exit43_crit_edge, label %land.lhs.true.i.i35

legacy_mode.dst_input.exit43_crit_edge:           ; preds = %legacy_mode
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit43

land.lhs.true.i.i35:                              ; preds = %legacy_mode
  %call.i.i33 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %tobool1.not.i.i34 = icmp eq i32 %call.i.i33, 0
  br i1 %tobool1.not.i.i34, label %land.rhs.i.i38, label %land.lhs.true.i.i35.dst_input.exit43_crit_edge

land.lhs.true.i.i35.dst_input.exit43_crit_edge:   ; preds = %land.lhs.true.i.i35
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit43

land.rhs.i.i38:                                   ; preds = %land.lhs.true.i.i35
  %call2.i.i36 = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i36)
  %tobool3.not.i.i37 = icmp eq i32 %call2.i.i36, 0
  br i1 %tobool3.not.i.i37, label %do.end.i.i39, label %land.rhs.i.i38.dst_input.exit43_crit_edge, !prof !93

land.rhs.i.i38.dst_input.exit43_crit_edge:        ; preds = %land.rhs.i.i38
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit43

do.end.i.i39:                                     ; preds = %land.rhs.i.i38
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit43

dst_input.exit43:                                 ; preds = %do.end.i.i39, %land.rhs.i.i38.dst_input.exit43_crit_edge, %land.lhs.true.i.i35.dst_input.exit43_crit_edge, %legacy_mode.dst_input.exit43_crit_edge
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 8
  %and25.i.i40 = and i32 %26, -2
  %27 = inttoptr i32 %and25.i.i40 to ptr
  %input.i41 = getelementptr inbounds %struct.dst_entry, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %input.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input.i41, align 4
  %call1.i42 = tail call i32 %29(ptr noundef %skb) #18
  br label %return

drop:                                             ; preds = %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %return

return:                                           ; preds = %drop, %dst_input.exit43, %dst_input.exit, %if.then11, %if.end6.return_crit_edge
  %retval.0 = phi i32 [ %call1.i42, %dst_input.exit43 ], [ %6, %if.then11 ], [ %call1.i, %dst_input.exit ], [ -22, %drop ], [ 0, %if.end6.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_end_dt6_build(ptr nocapture noundef %slwt, ptr nocapture noundef readonly %cfg, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %parsed_optattrs1.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 12
  %0 = ptrtoint ptr %parsed_optattrs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parsed_optattrs1.i, align 4
  %and.i = lshr i32 %1, 3
  %and.lobit.i = and i32 %and.i, 1
  %and3.i = lshr i32 %1, 9
  %and3.lobit.i = and i32 %and3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit.i, i32 %and3.lobit.i)
  %tobool11.not.i = icmp eq i32 %and.lobit.i, %and3.lobit.i
  %2 = xor i32 %and.lobit.i, 1
  %retval.0.i = select i1 %tobool11.not.i, i32 -22, i32 %2
  %3 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %retval.0.i, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dt_info = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8
  %4 = ptrtoint ptr %dt_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dt_info, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %nl_net.i.i = getelementptr inbounds %struct.fib6_config, ptr %cfg, i32 0, i32 19, i32 1
  %5 = ptrtoint ptr %nl_net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nl_net.i.i, align 4
  %vrf_table.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %vrf_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vrf_table.i, align 4
  %call1.i = tail call i32 @l3mdev_ifindex_lookup_by_table_id(i32 noundef 1, ptr noundef %6, i32 noundef %8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end27.i

if.then.i:                                        ; preds = %sw.bb2
  %9 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call1.i, label %do.body16.i [
    i32 -1, label %do.body.i
    i32 -19, label %do.body7.i
  ]

do.body.i:                                        ; preds = %if.then.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__seg6_end_dt_vrf_build.__msg) #18
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__seg6_end_dt_vrf_build.__msg, ptr %extack, align 4
  br label %cleanup

do.body7.i:                                       ; preds = %if.then.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__seg6_end_dt_vrf_build.__msg.16) #18
  %tobool9.not.i = icmp eq ptr %extack, null
  br i1 %tobool9.not.i, label %do.body7.i.cleanup_crit_edge, label %if.then10.i

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then10.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__seg6_end_dt_vrf_build.__msg.16, ptr %extack, align 4
  br label %cleanup

do.body16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__seg6_end_dt_vrf_build.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@seg6_end_dt6_build, %if.then21.i)) #18
          to label %cleanup [label %if.then21.i], !srcloc !96

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__seg6_end_dt_vrf_build.__UNIQUE_ID_ddebug633, ptr noundef nonnull @.str.19, i32 noundef %call1.i) #18
  br label %cleanup

if.end27.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #20
  %dt_info.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8
  %net28.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %net28.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %net28.i, align 4
  %vrf_ifindex29.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %vrf_ifindex29.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call1.i, ptr %vrf_ifindex29.i, align 4
  %family30.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %family30.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 10, ptr %family30.i, align 4
  %15 = ptrtoint ptr %dt_info.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dt_info.i, align 4
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @seg6_end_dt6_build.__msg) #18
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @seg6_end_dt6_build.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body.cleanup_crit_edge, %if.end27.i, %if.then21.i, %do.body16.i, %if.then10.i, %do.body7.i.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %if.then ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end27.i ], [ -19, %do.body7.i.cleanup_crit_edge ], [ -19, %if.then10.i ], [ -1, %do.body.i.cleanup_crit_edge ], [ -1, %if.then4.i ], [ %call1.i, %if.then21.i ], [ %call1.i, %do.body16.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_dt46(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #18
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %off, align 4
  %call = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %off, i32 noundef -1, ptr noundef null, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.drop_crit_edge, label %if.end, !prof !93

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %entry
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call, label %if.end.drop_crit_edge [
    i32 4, label %sw.bb
    i32 41, label %sw.bb3
  ]

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = call i32 @input_action_end_dt4(ptr noundef %skb, ptr noundef %slwt)
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = call i32 @input_action_end_dt6(ptr noundef %skb, ptr noundef %slwt)
  br label %cleanup

drop:                                             ; preds = %if.end.drop_crit_edge, %entry.drop_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %drop, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ -22, %drop ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_end_dt46_build(ptr nocapture noundef %slwt, ptr nocapture noundef readonly %cfg, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %nl_net.i.i = getelementptr inbounds %struct.fib6_config, ptr %cfg, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %nl_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nl_net.i.i, align 4
  %vrf_table.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %vrf_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vrf_table.i, align 4
  %call1.i = tail call i32 @l3mdev_ifindex_lookup_by_table_id(i32 noundef 1, ptr noundef %1, i32 noundef %3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end27.i

if.then.i:                                        ; preds = %entry
  %4 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call1.i, label %do.body16.i [
    i32 -1, label %do.body.i
    i32 -19, label %do.body7.i
  ]

do.body.i:                                        ; preds = %if.then.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__seg6_end_dt_vrf_build.__msg) #18
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.__seg6_end_dt_vrf_build.exit_crit_edge, label %if.then4.i

do.body.i.__seg6_end_dt_vrf_build.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seg6_end_dt_vrf_build.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @__seg6_end_dt_vrf_build.__msg, ptr %extack, align 4
  br label %__seg6_end_dt_vrf_build.exit

do.body7.i:                                       ; preds = %if.then.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__seg6_end_dt_vrf_build.__msg.16) #18
  %tobool9.not.i = icmp eq ptr %extack, null
  br i1 %tobool9.not.i, label %do.body7.i.__seg6_end_dt_vrf_build.exit_crit_edge, label %if.then10.i

do.body7.i.__seg6_end_dt_vrf_build.exit_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seg6_end_dt_vrf_build.exit

if.then10.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @__seg6_end_dt_vrf_build.__msg.16, ptr %extack, align 4
  br label %__seg6_end_dt_vrf_build.exit

do.body16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__seg6_end_dt_vrf_build.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@seg6_end_dt46_build, %if.then21.i)) #18
          to label %__seg6_end_dt_vrf_build.exit [label %if.then21.i], !srcloc !96

if.then21.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__seg6_end_dt_vrf_build.__UNIQUE_ID_ddebug633, ptr noundef nonnull @.str.19, i32 noundef %call1.i) #18
  br label %__seg6_end_dt_vrf_build.exit

if.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dt_info.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8
  %net28.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %net28.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %net28.i, align 4
  %vrf_ifindex29.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %vrf_ifindex29.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call1.i, ptr %vrf_ifindex29.i, align 4
  %family30.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 4
  %9 = ptrtoint ptr %family30.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %family30.i, align 4
  %10 = ptrtoint ptr %dt_info.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %dt_info.i, align 4
  br label %__seg6_end_dt_vrf_build.exit

__seg6_end_dt_vrf_build.exit:                     ; preds = %if.end27.i, %if.then21.i, %do.body16.i, %if.then10.i, %do.body7.i.__seg6_end_dt_vrf_build.exit_crit_edge, %if.then4.i, %do.body.i.__seg6_end_dt_vrf_build.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end27.i ], [ -19, %do.body7.i.__seg6_end_dt_vrf_build.exit_crit_edge ], [ -19, %if.then10.i ], [ -1, %do.body.i.__seg6_end_dt_vrf_build.exit_crit_edge ], [ -1, %if.then4.i ], [ %call1.i, %if.then21.i ], [ %call1.i, %do.body16.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_b6(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @seg6_get_srh(ptr noundef %skb, i32 noundef 4) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.drop_crit_edge, label %if.end.i

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @seg6_hmac_validate_skb(ptr noundef %skb) #18
  br i1 %call1.i, label %if.end, label %if.end.i.drop_crit_edge

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %if.end.i
  %srh1 = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 1
  %0 = ptrtoint ptr %srh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srh1, align 4
  %call2 = tail call i32 @seg6_do_srh_inline(ptr noundef %skb, ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.drop_crit_edge

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end5:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, -40
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %payload_len, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i19 = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %conv1.i = add i16 %conv.i.i19, 40
  %13 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv1.i, ptr %transport_header.i.i, align 2
  %call.i20 = tail call fastcc i32 @seg6_lookup_any_nexthop(ptr noundef %skb, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #18
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.end5.dst_input.exit_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.end5
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !93

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.end5.dst_input.exit_crit_edge
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 8
  %and25.i.i = and i32 %18, -2
  %19 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input.i, align 4
  %call1.i21 = tail call i32 %21(ptr noundef %skb) #18
  br label %cleanup

drop:                                             ; preds = %if.end.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.drop_crit_edge ], [ -22, %entry.drop_crit_edge ], [ -22, %if.end.i.drop_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %drop, %dst_input.exit
  %retval.0 = phi i32 [ %err.0, %drop ], [ %call1.i21, %dst_input.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_b6_encap(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @seg6_get_srh(ptr noundef %skb, i32 noundef 4) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.drop_crit_edge, label %if.end.i

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @seg6_hmac_validate_skb(ptr noundef %skb) #18
  br i1 %call1.i, label %if.end, label %if.end.i.drop_crit_edge

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %if.end.i
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
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %segments_left.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %segments_left.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %segments_left.i, align 1
  %dec.i = add i8 %5, -1
  store i8 %dec.i, ptr %segments_left.i, align 1
  %segments.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i, i32 0, i32 7
  %conv.i = zext i8 %dec.i to i32
  %add.ptr.i = getelementptr %struct.in6_addr, ptr %segments.i, i32 %conv.i
  %6 = call ptr @memcpy(ptr %daddr, ptr %add.ptr.i, i32 16)
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_header.i, align 2
  %inner_mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %9 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %inner_mac_header.i, align 2
  %10 = load i16, ptr %network_header.i.i, align 4
  %inner_network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %11 = ptrtoint ptr %inner_network_header.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %inner_network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %12 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i, align 2
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %14 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %inner_transport_header.i, align 2
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %encapsulation, align 8
  %bf.set = or i16 %bf.load, 4
  store i16 %bf.set, ptr %encapsulation, align 8
  %srh2 = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 1
  %16 = ptrtoint ptr %srh2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %srh2, align 4
  %call3 = tail call i32 @seg6_do_srh_encap(ptr noundef %skb, ptr noundef %17, i32 noundef 41) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.drop_crit_edge

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end6:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %20 = trunc i32 %19 to i16
  %conv = add i16 %20, -40
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %23 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i25 = zext i16 %24 to i32
  %add.ptr.i.i26 = getelementptr i8, ptr %22, i32 %conv.i.i25
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i26, i32 0, i32 2
  %25 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %payload_len, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %28 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i28 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv1.i = add i16 %conv.i.i28, 40
  %29 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv1.i, ptr %transport_header.i, align 2
  %call.i29 = tail call fastcc i32 @seg6_lookup_any_nexthop(ptr noundef %skb, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #18
  %30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end6.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.end6.dst_input.exit_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.end6
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !93

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.end6.dst_input.exit_crit_edge
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 8
  %and25.i.i = and i32 %34, -2
  %35 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input.i, align 4
  %call1.i30 = tail call i32 %37(ptr noundef %skb) #18
  br label %cleanup

drop:                                             ; preds = %if.end.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.drop_crit_edge ], [ -22, %entry.drop_crit_edge ], [ -22, %if.end.i.drop_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %drop, %dst_input.exit
  %retval.0 = phi i32 [ %err.0, %drop ], [ %call1.i30, %dst_input.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_bpf(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @seg6_bpf_srh_states to i32)
  %6 = inttoptr i32 %add to ptr
  %call.i73 = tail call ptr @seg6_get_srh(ptr noundef %skb, i32 noundef 4) #18
  %tobool.not.i74 = icmp eq ptr %call.i73, null
  br i1 %tobool.not.i74, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call1.i75 = tail call zeroext i1 @seg6_hmac_validate_skb(ptr noundef %skb) #18
  br i1 %call1.i75, label %if.end, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

if.end:                                           ; preds = %if.end.i
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
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %segments_left.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i73, i32 0, i32 3
  %11 = ptrtoint ptr %segments_left.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %segments_left.i, align 1
  %dec.i = add i8 %12, -1
  store i8 %dec.i, ptr %segments_left.i, align 1
  %segments.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i73, i32 0, i32 7
  %conv.i = zext i8 %dec.i to i32
  %add.ptr.i = getelementptr %struct.in6_addr, ptr %segments.i, i32 %conv.i
  %13 = call ptr @memcpy(ptr %daddr, ptr %add.ptr.i, i32 16)
  %14 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %17, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !102
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i73, ptr %6, align 4
  %hdrlen = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call.i73, i32 0, i32 1
  %19 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %20 to i16
  %shl = shl nuw nsw i16 %conv, 3
  %hdrlen9 = getelementptr inbounds %struct.seg6_bpf_srh_state, ptr %6, i32 0, i32 1
  %21 = ptrtoint ptr %hdrlen9 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %shl, ptr %hdrlen9, align 4
  %valid = getelementptr inbounds %struct.seg6_bpf_srh_state, ptr %6, i32 0, i32 2
  %22 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %valid, align 2
  %23 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i.i, align 4
  %meta_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %meta_len.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %meta_len.i.i, align 1
  %conv.i76 = zext i8 %32 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i76
  %add.ptr.i77 = getelementptr i8, ptr %28, i32 %idx.neg.i
  %data_meta.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %33 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i77, ptr %data_meta.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %36 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %35, %37
  %add.ptr4.i = getelementptr i8, ptr %28, i32 %sub.i.i
  %data_end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %38 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr4.i, ptr %data_end.i, align 4
  %bpf = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 7
  %39 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bpf, align 4
  tail call void @migrate_disable() #18
  %call.i78 = tail call fastcc i32 @__bpf_prog_run_save_cb(ptr noundef %40, ptr noundef %skb) #18
  tail call void @migrate_enable() #18
  %call.i79 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i79, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i82

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i82:                                ; preds = %rcu_read_lock.exit
  %call1.i80 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i82.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i84

land.lhs.true.i82.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i84:                               ; preds = %land.lhs.true.i82
  %.b4.i83 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i83, label %land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge, label %if.then.i85

land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i85:                                      ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i85, %land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i82.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !104
  %41 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i.i.i86 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i86 to ptr
  %preempt_count.i.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i87, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i87, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %45 = zext i32 %call.i78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call.i78, label %land.end [
    i32 0, label %rcu_read_unlock.exit.sw.epilog_crit_edge
    i32 7, label %rcu_read_unlock.exit.sw.epilog_crit_edge97
    i32 2, label %rcu_read_unlock.exit.do.body45_crit_edge
  ]

rcu_read_unlock.exit.do.body45_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body45

rcu_read_unlock.exit.sw.epilog_crit_edge97:       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

rcu_read_unlock.exit.sw.epilog_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.end:                                         ; preds = %rcu_read_unlock.exit
  %.b67 = load i1, ptr @input_action_end_bpf.__already_done, align 1
  br i1 %.b67, label %land.end.do.body45_crit_edge, label %if.then18, !prof !95

land.end.do.body45_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body45

if.then18:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @input_action_end_bpf.__already_done, align 1
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call.i78) #21
  br label %do.body45

sw.epilog:                                        ; preds = %rcu_read_unlock.exit.sw.epilog_crit_edge, %rcu_read_unlock.exit.sw.epilog_crit_edge97
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %6, align 4
  %tobool33.not = icmp eq ptr %47, null
  br i1 %tobool33.not, label %sw.epilog.do.body37_crit_edge, label %land.lhs.true

sw.epilog.do.body37_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body37

land.lhs.true:                                    ; preds = %sw.epilog
  %48 = tail call i32 @llvm.read_register.i32(metadata !80) #18
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
  %add.i88 = add i32 %53, ptrtoint (ptr @seg6_bpf_srh_states to i32)
  %54 = inttoptr i32 %add.i88 to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %cmp.i = icmp eq ptr %56, null
  br i1 %cmp.i, label %land.lhs.true.do.body45_crit_edge, label %if.end.i89, !prof !93

land.lhs.true.do.body45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body45

if.end.i89:                                       ; preds = %land.lhs.true
  %valid.i = getelementptr inbounds %struct.seg6_bpf_srh_state, ptr %54, i32 0, i32 2
  %57 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %valid.i, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool4.not.i = icmp eq i8 %58, 0
  br i1 %tobool4.not.i, label %if.then13.i, label %if.end.i89.do.body37_crit_edge, !prof !93

if.end.i89.do.body37_crit_edge:                   ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body37

if.then13.i:                                      ; preds = %if.end.i89
  %hdrlen.i = getelementptr inbounds %struct.seg6_bpf_srh_state, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %hdrlen.i, align 4
  %61 = and i16 %60, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp14.not.i = icmp eq i16 %61, 0
  br i1 %cmp14.not.i, label %if.end17.i, label %if.then13.i.do.body45_crit_edge

if.then13.i.do.body45_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body45

if.end17.i:                                       ; preds = %if.then13.i
  %62 = lshr i16 %60, 3
  %conv20.i = trunc i16 %62 to i8
  %hdrlen21.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %56, i32 0, i32 1
  %63 = ptrtoint ptr %hdrlen21.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv20.i, ptr %hdrlen21.i, align 1
  %narrow.i = and i16 %60, 2040
  %64 = add nuw nsw i16 %narrow.i, 8
  %shl.i = zext i16 %64 to i32
  %call25.i = tail call zeroext i1 @seg6_validate_srh(ptr noundef nonnull %56, i32 noundef %shl.i, i1 noundef zeroext true) #18
  br i1 %call25.i, label %if.end27.i, label %if.end17.i.do.body45_crit_edge

if.end17.i.do.body45_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body45

if.end27.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  %65 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %valid.i, align 2
  br label %do.body37

do.body37:                                        ; preds = %if.end27.i, %if.end.i89.do.body37_crit_edge, %sw.epilog.do.body37_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !105
  %66 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i68 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i68 to ptr
  %preempt_count.i.i69 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i69 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i69, align 4
  %sub.i = add i32 %69, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i78)
  %cmp.not = icmp eq i32 %call.i78, 7
  br i1 %cmp.not, label %do.body37.if.end43_crit_edge, label %if.then41

do.body37.if.end43_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #20
  %call.i91 = tail call fastcc i32 @seg6_lookup_any_nexthop(ptr noundef %skb, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #18
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.body37.if.end43_crit_edge
  %70 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 8
  %and.i.i92 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i92)
  %tobool.not.i.i = icmp eq i32 %and.i.i92, 0
  br i1 %tobool.not.i.i, label %if.end43.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.end43.dst_input.exit_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.end43
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !93

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.end43.dst_input.exit_crit_edge
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %70, align 8
  %and25.i.i = and i32 %74, -2
  %75 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %input.i, align 4
  %call1.i93 = tail call i32 %77(ptr noundef %skb) #18
  br label %cleanup

do.body45:                                        ; preds = %if.end17.i.do.body45_crit_edge, %if.then13.i.do.body45_crit_edge, %land.lhs.true.do.body45_crit_edge, %if.then18, %land.end.do.body45_crit_edge, %rcu_read_unlock.exit.do.body45_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !106
  %78 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i70 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i70 to ptr
  %preempt_count.i.i71 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i71 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i71, align 4
  %sub.i72 = add i32 %81, -1
  store volatile i32 %sub.i72, ptr %preempt_count.i.i71, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %do.body45, %dst_input.exit, %if.then
  %retval.0 = phi i32 [ -22, %do.body45 ], [ %call1.i93, %dst_input.exit ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seg6_get_srh(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @seg6_hmac_validate_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @decap_and_validate(ptr noundef %skb, i32 noundef %proto) unnamed_addr #0 align 64 {
entry:
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #18
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %off, align 4
  %call = tail call ptr @seg6_get_srh(ptr noundef %skb, i32 noundef 0) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %segments_left = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %segments_left to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %segments_left, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %land.lhs.true3.critedge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true3.critedge:                          ; preds = %land.lhs.true
  %call4 = tail call zeroext i1 @seg6_hmac_validate_skb(ptr noundef %skb) #18
  br i1 %call4, label %land.lhs.true3.critedge.if.end6_crit_edge, label %land.lhs.true3.critedge.cleanup_crit_edge

land.lhs.true3.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true3.critedge.if.end6_crit_edge:        ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true3.critedge.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %off, i32 noundef %proto, ptr noundef null, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %3 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %off, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.i = icmp ult i32 %6, %4
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %cond.false.i, !prof !93

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cond.false.i:                                     ; preds = %if.end11
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %4, %sub.i.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.false.i.pskb_pull.exit_crit_edge

cond.false.i.pskb_pull.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pskb_pull.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i = sub i32 %4, %sub.i.i.i
  %call2.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #18
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pskb_pull.exit

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

pskb_pull.exit:                                   ; preds = %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %cond.false.i.pskb_pull.exit_crit_edge
  %9 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len1.i, align 4
  %sub4.i.i = sub i32 %10, %4
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %4
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tobool13.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool13.not, label %pskb_pull.exit.cleanup_crit_edge, label %if.end15

pskb_pull.exit.cleanup_crit_edge:                 ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end15:                                         ; preds = %pskb_pull.exit
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %16 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.31)
  switch i2 %trunc.i, label %if.end15.skb_postpull_rcsum.exit_crit_edge [
    i2 -2, label %if.then.i
    i2 -1, label %land.lhs.true.i
  ]

if.end15.skb_postpull_rcsum.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_postpull_rcsum.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %off, align 4
  %19 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %20 to i32
  %add.ptr.i = getelementptr i8, ptr %14, i32 %conv.i
  %21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %sub.i.i32 = sub i32 0, %23
  %call2.i = call i32 @csum_partial(ptr noundef %add.ptr.i, i32 noundef %18, i32 noundef %sub.i.i32) #18
  %sub.i25.i = sub i32 0, %call2.i
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i25.i, ptr %21, align 8
  br label %skb_postpull_rcsum.exit

land.lhs.true.i:                                  ; preds = %if.end15
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 8
  %conv.i.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.neg.i.i = add i32 %conv.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.i26.i = sub i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.lhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i)
  %cmp13.i = icmp slt i32 %sub.i26.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge

land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_postpull_rcsum.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear18.i = and i16 %bf.load.i, -1537
  %30 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %bf.clear18.i, ptr %ip_summed.i, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %if.then15.i, %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge, %if.then.i, %if.end15.skb_postpull_rcsum.exit_crit_edge
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i34 = trunc i32 %sub.ptr.sub.i to i16
  %35 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i34, ptr %network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %36 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i34, ptr %transport_header.i, align 2
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %37 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.i.not.i = icmp eq i16 %40, 0
  br i1 %tobool.i.not.i, label %skb_postpull_rcsum.exit.if.end7.i_crit_edge, label %if.then.i42

skb_postpull_rcsum.exit.if.end7.i_crit_edge:      ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

if.then.i42:                                      ; preds = %skb_postpull_rcsum.exit
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %41 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then.i42.cleanup.thread.i_crit_edge, label %skb_cloned.exit.i.i

if.then.i42.cleanup.thread.i_crit_edge:           ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

skb_cloned.exit.i.i:                              ; preds = %if.then.i42
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #18
  %42 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %43, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_cloned.exit.i.i.cleanup.thread.i_crit_edge, label %skb_unclone.exit.i

skb_cloned.exit.i.i.cleanup.thread.i_crit_edge:   ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

skb_unclone.exit.i:                               ; preds = %skb_cloned.exit.i.i
  %call7.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i, label %skb_unclone.exit.i.cleanup.thread.i_crit_edge, label %skb_unclone.exit.i.iptunnel_pull_offloads.exit_crit_edge, !prof !95

skb_unclone.exit.i.iptunnel_pull_offloads.exit_crit_edge: ; preds = %skb_unclone.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %iptunnel_pull_offloads.exit

skb_unclone.exit.i.cleanup.thread.i_crit_edge:    ; preds = %skb_unclone.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %skb_unclone.exit.i.cleanup.thread.i_crit_edge, %skb_cloned.exit.i.i.cleanup.thread.i_crit_edge, %if.then.i42.cleanup.thread.i_crit_edge
  %44 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gso_type.i, align 8
  %48 = and i32 %47, -4033
  store i32 %48, ptr %gso_type.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %cleanup.thread.i, %skb_postpull_rcsum.exit.if.end7.i_crit_edge
  %49 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i43 = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i43, -5
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  br label %iptunnel_pull_offloads.exit

iptunnel_pull_offloads.exit:                      ; preds = %if.end7.i, %skb_unclone.exit.i.iptunnel_pull_offloads.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.end7.i ], [ %call7.i.i, %skb_unclone.exit.i.iptunnel_pull_offloads.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool18.not = icmp eq i32 %retval.1.i, 0
  br label %cleanup

cleanup:                                          ; preds = %iptunnel_pull_offloads.exit, %pskb_pull.exit.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true3.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %land.lhs.true3.critedge.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ], [ false, %pskb_pull.exit.cleanup_crit_edge ], [ %tobool18.not, %iptunnel_pull_offloads.exit ], [ false, %if.end11.cleanup_crit_edge ], [ false, %land.lhs.true.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #18
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @skb_warn_if_lro(ptr noundef %skb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true3:                                   ; preds = %land.lhs.true
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gso_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then, label %land.lhs.true3.cleanup_crit_edge, !prof !93

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__skb_warn_lro_forwarding(ptr noundef %skb) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true3.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_warn_lro_forwarding(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_dx6_finish(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !93

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
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
  %nh6 = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 1, i32 5
  %8 = ptrtoint ptr %nh6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nh6, align 4
  %arrayidx2.i = getelementptr %struct.lwtunnel_state, ptr %7, i32 1, i32 6
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %11, %9
  %arrayidx4.i = getelementptr %struct.lwtunnel_state, ptr %7, i32 1, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %13
  %arrayidx7.i = getelementptr %struct.lwtunnel_state, ptr %7, i32 2
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  %spec.select = select i1 %cmp.i, ptr null, ptr %nh6
  %call.i9 = tail call fastcc i32 @seg6_lookup_any_nexthop(ptr noundef %skb, ptr noundef %spec.select, i32 noundef 0, i1 noundef zeroext false) #18
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 8
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %skb_dst.exit.dst_input.exit_crit_edge, label %land.lhs.true.i.i

skb_dst.exit.dst_input.exit_crit_edge:            ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %skb_dst.exit
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !93

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %skb_dst.exit.dst_input.exit_crit_edge
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %19, -2
  %20 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input.i, align 4
  %call1.i = tail call i32 %22(ptr noundef %skb) #18
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i8 noundef zeroext %pf, i32 noundef %hook, ptr noundef %net, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev, ptr noundef %okfn) unnamed_addr #7 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %4 = zext i8 %pf to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %pf, label %land.end149 [
    i8 2, label %sw.bb
    i8 10, label %sw.bb16
    i8 3, label %if.end82
    i8 7, label %sw.bb102
  ]

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %arrayidx3 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 %hook
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %sw.bb
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b4 = load i1, ptr @nf_hook.__warned, align 1
  br i1 %.b4, label %land.lhs.true9.sw.epilog_crit_edge, label %land.lhs.true9.sw.epilog.sink.split_crit_edge

land.lhs.true9.sw.epilog.sink.split_crit_edge:    ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb16:                                          ; preds = %rcu_read_lock.exit
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 %hook
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %sw.bb16
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b2173 = load i1, ptr @nf_hook.__warned.6, align 1
  br i1 %.b2173, label %land.lhs.true29.sw.epilog_crit_edge, label %land.lhs.true29.sw.epilog.sink.split_crit_edge

land.lhs.true29.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end82:                                         ; preds = %rcu_read_lock.exit
  %arrayidx88 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 5, i32 %hook
  %9 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx88, align 4
  %call90 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.lhs.true92, label %if.end82.sw.epilog_crit_edge

if.end82.sw.epilog_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.lhs.true92:                                  ; preds = %if.end82
  %call93 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true92.sw.epilog_crit_edge, label %land.lhs.true95

land.lhs.true92.sw.epilog_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.lhs.true95:                                  ; preds = %land.lhs.true92
  %.b2182 = load i1, ptr @nf_hook.__warned.7, align 1
  br i1 %.b2182, label %land.lhs.true95.sw.epilog_crit_edge, label %land.lhs.true95.sw.epilog.sink.split_crit_edge

land.lhs.true95.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

land.lhs.true95.sw.epilog_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb102:                                         ; preds = %rcu_read_lock.exit
  %arrayidx108 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 %hook
  %11 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx108, align 4
  %call110 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %sw.bb102.sw.epilog_crit_edge

sw.bb102.sw.epilog_crit_edge:                     ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.lhs.true112:                                 ; preds = %sw.bb102
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.sw.epilog_crit_edge, label %land.lhs.true115

land.lhs.true112.sw.epilog_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.lhs.true115:                                 ; preds = %land.lhs.true112
  %.b2191 = load i1, ptr @nf_hook.__warned.8, align 1
  br i1 %.b2191, label %land.lhs.true115.sw.epilog_crit_edge, label %land.lhs.true115.sw.epilog.sink.split_crit_edge

land.lhs.true115.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

land.lhs.true115.sw.epilog_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.end149:                                      ; preds = %rcu_read_lock.exit
  %.b2205 = load i1, ptr @nf_hook.__already_done.10, align 1
  br i1 %.b2205, label %land.end149.if.end194_crit_edge, label %if.then156, !prof !95

land.end149.if.end194_crit_edge:                  ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end194

if.then156:                                       ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @nf_hook.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 252, i32 noundef 9, ptr noundef null) #18
  br label %if.end194

sw.epilog.sink.split:                             ; preds = %land.lhs.true115.sw.epilog.sink.split_crit_edge, %land.lhs.true95.sw.epilog.sink.split_crit_edge, %land.lhs.true29.sw.epilog.sink.split_crit_edge, %land.lhs.true9.sw.epilog.sink.split_crit_edge
  %nf_hook.__warned.8.sink = phi ptr [ @nf_hook.__warned, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.6, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.7, %land.lhs.true95.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.8, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 229, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ 232, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ 238, %land.lhs.true95.sw.epilog.sink.split_crit_edge ], [ 243, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %hook_head.0.ph = phi ptr [ %6, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ %8, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ %10, %land.lhs.true95.sw.epilog.sink.split_crit_edge ], [ %12, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %13 = ptrtoint ptr %nf_hook.__warned.8.sink to i32
  call void @__asan_store1_noabort(i32 %13)
  store i1 true, ptr %nf_hook.__warned.8.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef %.sink, ptr noundef nonnull @.str.5) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true115.sw.epilog_crit_edge, %land.lhs.true112.sw.epilog_crit_edge, %sw.bb102.sw.epilog_crit_edge, %land.lhs.true95.sw.epilog_crit_edge, %land.lhs.true92.sw.epilog_crit_edge, %if.end82.sw.epilog_crit_edge, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %hook_head.0 = phi ptr [ %6, %land.lhs.true9.sw.epilog_crit_edge ], [ %6, %land.lhs.true6.sw.epilog_crit_edge ], [ %6, %sw.bb.sw.epilog_crit_edge ], [ %8, %land.lhs.true29.sw.epilog_crit_edge ], [ %8, %land.lhs.true26.sw.epilog_crit_edge ], [ %8, %sw.bb16.sw.epilog_crit_edge ], [ %10, %land.lhs.true95.sw.epilog_crit_edge ], [ %10, %land.lhs.true92.sw.epilog_crit_edge ], [ %10, %if.end82.sw.epilog_crit_edge ], [ %12, %land.lhs.true115.sw.epilog_crit_edge ], [ %12, %land.lhs.true112.sw.epilog_crit_edge ], [ %12, %sw.bb102.sw.epilog_crit_edge ], [ %hook_head.0.ph, %sw.epilog.sink.split ]
  %tobool191.not = icmp eq ptr %hook_head.0, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #18
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %state, align 4
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %15 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %pf, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %17 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %18 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %19 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %20 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %okfn, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %hook_head.0, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #18
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge, %if.then156, %land.end149.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ], [ 1, %if.then156 ], [ 1, %land.end149.if.end194_crit_edge ]
  %call.i6 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i6, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %if.end194
  %call1.i7 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !104
  %21 = call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i.i.i13 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
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
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_action_end_dx4_finish(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !93

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %0, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %entry.skb_dst.exit_crit_edge
  %4 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %2, %entry.skb_dst.exit_crit_edge ]
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lwtstate, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %nh4 = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 1, i32 4
  %12 = ptrtoint ptr %nh4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nh4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %cond.false, label %skb_dst.exit.cond.end_crit_edge

skb_dst.exit.cond.end_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #20
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %daddr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %skb_dst.exit.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.false ], [ %13, %skb_dst.exit.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i17 = icmp eq i32 %4, 0
  br i1 %tobool.not.i17, label %cond.end.skb_dst_drop.exit_crit_edge, label %if.then.i

cond.end.skb_dst_drop.exit_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %cond.end
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dst_release(ptr noundef %5) #18
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %0, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %cond.end.skb_dst_drop.exit_crit_edge
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %saddr, align 4
  %19 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %call3 = tail call fastcc i32 @ip_route_input(ptr noundef %skb, i32 noundef %cond, i32 noundef %18, ptr noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

if.end:                                           ; preds = %skb_dst_drop.exit
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 8
  %and.i.i18 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %tobool.not.i.i19 = icmp eq i32 %and.i.i18, 0
  br i1 %tobool.not.i.i19, label %if.end.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.end.dst_input.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !93

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.end.dst_input.exit_crit_edge
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %25, -2
  %26 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input.i, align 4
  %call1.i = tail call i32 %28(ptr noundef %skb) #18
  br label %cleanup

cleanup:                                          ; preds = %dst_input.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call1.i, %dst_input.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_route_input(ptr noundef %skb, i32 noundef %dst, i32 noundef %src, ptr noundef %devin) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @ip_route_input_noref(ptr noundef %skb, i32 noundef %dst, i32 noundef %src, i8 noundef zeroext 0, ptr noundef %devin) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %rcu_read_lock.exit.if.end5_crit_edge

rcu_read_lock.exit.if.end5_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then:                                          ; preds = %rcu_read_lock.exit
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.skb_dst_force.exit_crit_edge, label %land.lhs.true.i.i.i

if.then.skb_dst_force.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst_force.exit

land.lhs.true.i.i.i:                              ; preds = %if.then
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge

land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst_is_noref.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge, !prof !93

land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst_is_noref.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_dst_is_noref.exit.i

skb_dst_is_noref.exit.i:                          ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %tobool1.i.i = icmp ugt i32 %8, 1
  br i1 %tobool1.i.i, label %if.then.i1, label %skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge

skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge: ; preds = %skb_dst_is_noref.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst_force.exit

if.then.i1:                                       ; preds = %skb_dst_is_noref.exit.i
  %and.i2.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i1.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i1.skb_dst.exit.i_crit_edge:              ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i1
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !93

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.then.i1.skb_dst.exit.i_crit_edge
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 8
  %and25.i.i = and i32 %10, -2
  %11 = inttoptr i32 %and25.i.i to ptr
  %call2.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i2 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i2, label %do.end.i, label %skb_dst.exit.i.if.end.i_crit_edge, !prof !93

skb_dst.exit.i.if.end.i_crit_edge:                ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

do.end.i:                                         ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 316, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %skb_dst.exit.i.if.end.i_crit_edge
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %11, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #18
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #18, !srcloc !91
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.end.i.dst_hold_safe.exit.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.end.i.dst_hold_safe.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_hold_safe.exit.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !92
  br label %dst_hold_safe.exit.i

dst_hold_safe.exit.i:                             ; preds = %do.end11.i.i.i.i.i.i, %if.end.i.dst_hold_safe.exit.i_crit_edge
  %spec.select.i = phi ptr [ null, %if.end.i.dst_hold_safe.exit.i_crit_edge ], [ %11, %do.end11.i.i.i.i.i.i ]
  %13 = ptrtoint ptr %spec.select.i to i32
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %4, align 8
  %tobool27.not.i = icmp eq ptr %spec.select.i, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %15 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool27.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear34.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear34.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  br label %skb_dst_force.exit

skb_dst_force.exit:                               ; preds = %dst_hold_safe.exit.i, %skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge, %if.then.skb_dst_force.exit_crit_edge
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 8
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i3 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i3, label %skb_dst_force.exit.skb_dst.exit_crit_edge, label %land.lhs.true.i5

skb_dst_force.exit.skb_dst.exit_crit_edge:        ; preds = %skb_dst_force.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.lhs.true.i5:                                 ; preds = %skb_dst_force.exit
  %call.i4 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool1.not.i = icmp eq i32 %call.i4, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i5.skb_dst.exit_crit_edge

land.lhs.true.i5.skb_dst.exit_crit_edge:          ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i5
  %call2.i6 = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i6)
  %tobool3.not.i = icmp eq i32 %call2.i6, 0
  br i1 %tobool3.not.i, label %do.end.i7, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !93

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

do.end.i7:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i7, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i5.skb_dst.exit_crit_edge, %skb_dst_force.exit.skb_dst.exit_crit_edge
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool3.not = icmp ult i32 %19, 2
  %spec.select = select i1 %tobool3.not, i32 -22, i32 0
  br label %if.end5

if.end5:                                          ; preds = %skb_dst.exit, %rcu_read_lock.exit.if.end5_crit_edge
  %err.0 = phi i32 [ %call, %rcu_read_lock.exit.if.end5_crit_edge ], [ %spec.select, %skb_dst.exit ]
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i9, label %if.end5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.end5.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.end5
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.end5.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !104
  %20 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i.i.i16 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @end_dt_vrf_core(ptr noundef %skb, ptr nocapture noundef readonly %slwt, i16 noundef zeroext %family) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vrf_ifindex1.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %vrf_ifindex1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vrf_ifindex1.i, align 4
  %net2.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %net2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %if.end.i, !prof !93

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %entry
  %4 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %3
  br i1 %cmp.i.not.i, label %end_dt_get_vrf_rcu.exit, label %if.end.i.cleanup.sink.split_crit_edge, !prof !95

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

end_dt_get_vrf_rcu.exit:                          ; preds = %if.end.i
  %call16.i = tail call ptr @dev_get_by_index_rcu(ptr noundef %3, i32 noundef %1) #18
  %tobool.not = icmp eq ptr %call16.i, null
  br i1 %tobool.not, label %end_dt_get_vrf_rcu.exit.cleanup.sink.split_crit_edge, label %if.end, !prof !93

end_dt_get_vrf_rcu.exit.cleanup.sink.split_crit_edge: ; preds = %end_dt_get_vrf_rcu.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end:                                           ; preds = %end_dt_get_vrf_rcu.exit
  %9 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %family, label %if.end.cleanup.sink.split_crit_edge [
    i16 2, label %if.end.sw.epilog_crit_edge
    i16 10, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end.sw.epilog_crit_edge
  %protocol.0 = phi i16 [ -31011, %sw.bb4 ], [ 2048, %if.end.sw.epilog_crit_edge ]
  %hdrlen.0 = phi i16 [ 40, %sw.bb4 ], [ 20, %if.end.sw.epilog_crit_edge ]
  %family6 = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %family6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %family6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.not = icmp ne i16 %11, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %family)
  %cmp12 = icmp ne i16 %11, %family
  %spec.select = and i1 %cmp.not, %cmp12
  br i1 %spec.select, label %land.end27, label %if.end44, !prof !93

land.end27:                                       ; preds = %sw.epilog
  %.b63 = load i1, ptr @end_dt_vrf_core.__already_done, align 1
  br i1 %.b63, label %land.end27.cleanup.sink.split_crit_edge, label %if.then34, !prof !95

land.end27.cleanup.sink.split_crit_edge:          ; preds = %land.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.then34:                                        ; preds = %land.end27
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @end_dt_vrf_core.__already_done, align 1
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #21
  br label %cleanup.sink.split

if.end44:                                         ; preds = %sw.epilog
  %protocol45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol45 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %protocol.0, ptr %protocol45, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end44.skb_dst_drop.exit_crit_edge, label %if.then.i

if.end44.skb_dst_drop.exit_crit_edge:             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %if.end44
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %and1.i.i = and i32 %15, -2
  %16 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %16) #18
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %13, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end44.skb_dst_drop.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %conv1.i = add i16 %hdrlen.0, %conv.i.i
  %22 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv1.i, ptr %transport_header.i.i, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %23 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i65 = and i32 %24, -8
  %25 = inttoptr i32 %and.i.i65 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %and.i.i65, 0
  br i1 %tobool.not.i.i66, label %skb_dst_drop.exit.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

skb_dst_drop.exit.nf_reset_ct.exit_crit_edge:     ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %skb_dst_drop.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %25, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr nonnull %25, i32 1, i32 3, i32 1) #18
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #18, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i67, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !95

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef nonnull %25, i32 noundef 3) #18
  br label %nf_reset_ct.exit

if.then.i.i67:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !101
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %25) #18
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i67, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %skb_dst_drop.exit.nf_reset_ct.exit_crit_edge
  %27 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %_nfct.i.i, align 8
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call16.i, i32 0, i32 15
  %28 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %priv_flags.i.i, align 16
  %30 = and i64 %29, 537133056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %nf_reset_ct.exit.cleanup.sink.split_crit_edge, label %if.end.i68, !prof !107

nf_reset_ct.exit.cleanup.sink.split_crit_edge:    ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end.i68:                                       ; preds = %nf_reset_ct.exit
  %l3mdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call16.i, i32 0, i32 45
  %32 = ptrtoint ptr %l3mdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %l3mdev_ops.i, align 4
  %l3mdev_l3_rcv.i = getelementptr inbounds %struct.l3mdev_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %l3mdev_l3_rcv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %l3mdev_l3_rcv.i, align 4
  %tobool4.not.i = icmp eq ptr %35, null
  br i1 %tobool4.not.i, label %if.end.i68.cleanup.sink.split_crit_edge, label %if.end14.i, !prof !93

if.end.i68.cleanup.sink.split_crit_edge:          ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end14.i:                                       ; preds = %if.end.i68
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %36 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %mac_header.i.i, align 2
  %37 = ptrtoint ptr %l3mdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %l3mdev_ops.i, align 4
  %l3mdev_l3_rcv16.i = getelementptr inbounds %struct.l3mdev_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %l3mdev_l3_rcv16.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %l3mdev_l3_rcv16.i, align 4
  %call17.i = tail call ptr %40(ptr noundef nonnull %call16.i, ptr noundef %skb, i16 noundef zeroext %family) #18
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.end14.i.cleanup_crit_edge, label %if.end20.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end20.i:                                       ; preds = %if.end14.i
  %41 = getelementptr inbounds %struct.anon, ptr %call17.i, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %cmp.not.i = icmp eq ptr %43, %call16.i
  br i1 %cmp.not.i, label %lor.rhs.i, label %if.end20.i.cleanup.sink.split_crit_edge, !prof !95

if.end20.i.cleanup.sink.split_crit_edge:          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

lor.rhs.i:                                        ; preds = %if.end20.i
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %call17.i, i32 0, i32 15, i32 0, i32 7
  %44 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %skb_iif.i, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %call16.i, i32 0, i32 17
  %46 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp21.not.i = icmp eq i32 %45, %47
  br i1 %cmp21.not.i, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.cleanup.sink.split_crit_edge, !prof !95

lor.rhs.i.cleanup.sink.split_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.sink.split:                               ; preds = %lor.rhs.i.cleanup.sink.split_crit_edge, %if.end20.i.cleanup.sink.split_crit_edge, %if.end.i68.cleanup.sink.split_crit_edge, %nf_reset_ct.exit.cleanup.sink.split_crit_edge, %if.then34, %land.end27.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %end_dt_get_vrf_rcu.exit.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %skb.addr.0.i.sink = phi ptr [ %skb, %if.end.i68.cleanup.sink.split_crit_edge ], [ %call17.i, %lor.rhs.i.cleanup.sink.split_crit_edge ], [ %call17.i, %if.end20.i.cleanup.sink.split_crit_edge ], [ %skb, %nf_reset_ct.exit.cleanup.sink.split_crit_edge ], [ %skb, %entry.cleanup.sink.split_crit_edge ], [ %skb, %if.end.i.cleanup.sink.split_crit_edge ], [ %skb, %land.end27.cleanup.sink.split_crit_edge ], [ %skb, %if.then34 ], [ %skb, %if.end.cleanup.sink.split_crit_edge ], [ %skb, %end_dt_get_vrf_rcu.exit.cleanup.sink.split_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i.sink, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.rhs.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end14.i.cleanup_crit_edge ], [ %call17.i, %lor.rhs.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_ifindex_lookup_by_table_id(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_do_srh_inline(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_do_srh_encap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_prog_run_save_cb(ptr noundef %prog, ptr noundef %ctx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 8
  %cb_access = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 1
  %0 = ptrtoint ptr %cb_access to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %cb_access, align 2
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !95

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  tail call void @__cant_migrate(ptr noundef nonnull @.str.22, i32 noundef 613) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__bpf_prog_run_save_cb, %if.then.i.i)) #18
          to label %if.else.i.i [label %if.then.i.i], !srcloc !96

if.then.i.i:                                      ; preds = %if.end
  %call3.i.i = tail call i64 @sched_clock() #18
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %23 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %24(ptr noundef %ctx, ptr noundef %insnsi.i.i) #18
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %25 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stats9.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !80) #18
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
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !108
  %and.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !109
  %41 = tail call i32 @llvm.read_register.i32(metadata !80) #18
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
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !110
  %50 = tail call i32 @llvm.read_register.i32(metadata !80) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %54 = tail call i32 @llvm.read_register.i32(metadata !80) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %58 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i9.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %61, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !111
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
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !112
  %69 = tail call i32 @llvm.read_register.i32(metadata !80) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !95

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 271, i32 noundef 9, ptr noundef null) #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %73 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !113
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 3, i32 0, i32 1
  %75 = tail call ptr @llvm.returnaddress(i32 0) #18
  %76 = ptrtoint ptr %75 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %76) #18
  %77 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %34, align 8
  %inc.i.i.i = add i64 %78, 1
  store i64 %inc.i.i.i, ptr %34, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #18
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %79 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %80
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %76) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !114
  %81 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %82, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_on() #18
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !115
  %and.i.i.i4.i.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !93

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #18, !srcloc !116
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %84 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %85(ptr noundef %ctx, ptr noundef %insnsi15.i.i) #18
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %86 = ptrtoint ptr %cb_access to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load5 = load i16, ptr %cb_access, align 2
  %87 = and i16 %bf.load5, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool8.not = icmp eq i16 %87, 0
  br i1 %tobool8.not, label %bpf_prog_run.exit.if.end17_crit_edge, label %if.then15, !prof !95

bpf_prog_run.exit.if.end17_crit_edge:             ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then15:                                        ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #20
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
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_nla_srh(ptr nocapture noundef readonly %attrs, ptr nocapture noundef %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %attrs, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %conv.i = zext i16 %3 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @seg6_validate_srh(ptr noundef %add.ptr.i, i32 noundef %sub.i, i1 noundef zeroext false) #18
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @kmemdup(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 3264) #18
  %srh7 = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 1
  %4 = ptrtoint ptr %srh7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %srh7, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %headroom = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 10
  %5 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %headroom, align 4
  %add = add i32 %6, %sub.i
  store i32 %add, ptr %headroom, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_nla_srh(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %srh1 = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 1
  %0 = ptrtoint ptr %srh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srh1, align 4
  %hdrlen = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %3 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %call = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 2, i32 noundef %shl) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %call, i32 4
  %4 = call ptr @memcpy(ptr %add.ptr.i, ptr %1, i32 %shl)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_nla_srh(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %srh = getelementptr inbounds %struct.seg6_local_lwt, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %srh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srh, align 4
  %hdrlen = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %3 to i32
  %add = shl nuw nsw i32 %conv, 3
  %srh1 = getelementptr inbounds %struct.seg6_local_lwt, ptr %b, i32 0, i32 1
  %4 = ptrtoint ptr %srh1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %srh1, align 4
  %hdrlen2 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hdrlen2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdrlen2, align 1
  %conv3 = zext i8 %7 to i32
  %add4 = shl nuw nsw i32 %conv3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add4)
  %cmp.not = icmp eq i32 %add, %add4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shl = add nuw nsw i32 %add, 8
  %call = tail call i32 @memcmp(ptr noundef %1, ptr noundef %5, i32 noundef %shl) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy_attr_srh(ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %srh = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 1
  %0 = ptrtoint ptr %srh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srh, align 4
  tail call void @kfree(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_nla_table(ptr nocapture noundef readonly %attrs, ptr nocapture noundef writeonly %slwt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %attrs, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %table = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 2
  %4 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %table, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_nla_table(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %table, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -90
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_nla_table(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.seg6_local_lwt, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %table, align 4
  %table1 = getelementptr inbounds %struct.seg6_local_lwt, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %table1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ne i32 %1, %3
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_nla_nh4(ptr nocapture noundef readonly %attrs, ptr nocapture noundef writeonly %slwt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %nh4 = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 3
  %arrayidx = getelementptr ptr, ptr %attrs, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr.i, align 1
  %4 = ptrtoint ptr %nh4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nh4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_nla_nh4(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 4, i32 noundef 4) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %call, i32 4
  %nh4 = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 3
  %0 = ptrtoint ptr %nh4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nh4, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %add.ptr.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_nla_nh4(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %nh4 = getelementptr inbounds %struct.seg6_local_lwt, ptr %a, i32 0, i32 3
  %nh41 = getelementptr inbounds %struct.seg6_local_lwt, ptr %b, i32 0, i32 3
  %call = tail call i32 @memcmp(ptr noundef dereferenceable(4) %nh4, ptr noundef dereferenceable(4) %nh41, i32 noundef 4) #22
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_nla_nh6(ptr nocapture noundef readonly %attrs, ptr nocapture noundef writeonly %slwt) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %nh6 = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 4
  %arrayidx = getelementptr ptr, ptr %attrs, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = call ptr @memcpy(ptr %nh6, ptr %add.ptr.i, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_nla_nh6(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 5, i32 noundef 16) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %call, i32 4
  %nh6 = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %add.ptr.i, ptr %nh6, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_nla_nh6(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %nh6 = getelementptr inbounds %struct.seg6_local_lwt, ptr %a, i32 0, i32 4
  %nh61 = getelementptr inbounds %struct.seg6_local_lwt, ptr %b, i32 0, i32 4
  %call = tail call i32 @memcmp(ptr noundef dereferenceable(16) %nh6, ptr noundef dereferenceable(16) %nh61, i32 noundef 16) #22
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_nla_iif(ptr nocapture noundef readonly %attrs, ptr nocapture noundef writeonly %slwt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %attrs, i32 6
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %iif = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 5
  %4 = ptrtoint ptr %iif to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %iif, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_nla_iif(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %iif = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 5
  %0 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iif, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -90
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_nla_iif(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %iif = getelementptr inbounds %struct.seg6_local_lwt, ptr %a, i32 0, i32 5
  %0 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iif, align 4
  %iif1 = getelementptr inbounds %struct.seg6_local_lwt, ptr %b, i32 0, i32 5
  %2 = ptrtoint ptr %iif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iif1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ne i32 %1, %3
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_nla_oif(ptr nocapture noundef readonly %attrs, ptr nocapture noundef writeonly %slwt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %attrs, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %oif = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 6
  %4 = ptrtoint ptr %oif to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %oif, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_nla_oif(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %oif = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 6
  %0 = ptrtoint ptr %oif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oif, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -90
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_nla_oif(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %oif = getelementptr inbounds %struct.seg6_local_lwt, ptr %a, i32 0, i32 6
  %0 = ptrtoint ptr %oif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oif, align 4
  %oif1 = getelementptr inbounds %struct.seg6_local_lwt, ptr %b, i32 0, i32 6
  %2 = ptrtoint ptr %oif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oif1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ne i32 %1, %3
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_nla_bpf(ptr nocapture noundef readonly %attrs, ptr nocapture noundef %slwt) #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #18
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !117
  %1 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !117
  %3 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !117
  %arrayidx = getelementptr ptr, ptr %attrs, i32 8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @bpf_prog_policy, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %add.ptr.i.i32 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %conv.i.i33 = zext i16 %14 to i32
  %sub.i.i34 = add nsw i32 %conv.i.i33, -4
  %call2.i35 = call ptr @kmemdup(ptr noundef %add.ptr.i.i32, i32 noundef %sub.i.i34, i32 noundef 3264) #18
  %bpf = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 7
  %name = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2.i35, ptr %name, align 4
  %tobool10.not = icmp eq ptr %call2.i35, null
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i36, align 4
  %call.i = call ptr @bpf_prog_get_type_dev(i32 noundef %19, i32 noundef 19, i1 noundef zeroext false) #18
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %21) #18
  %22 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %bpf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %bpf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then17, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then17 ], [ 0, %if.end21 ], [ %call2.i, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_nla_bpf(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 7
  %0 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool1.not29 = icmp eq ptr %3, null
  %tobool1.not = select i1 %cmp.i, i1 true, i1 %tobool1.not29
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpf, align 4
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_prog_aux, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %name = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.end9.if.end17_crit_edge, label %land.lhs.true

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end9
  %call.i26 = call i32 @strlen(ptr noundef nonnull %12) #23
  %add.i = add i32 %call.i26, 1
  %call1.i27 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i, ptr noundef nonnull %12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool15.not = icmp eq i32 %call1.i27, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %3, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end17 ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end3.cleanup_crit_edge ], [ -90, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_nla_bpf(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.seg6_local_lwt, ptr %a, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  %name2 = getelementptr inbounds %struct.seg6_local_lwt, ptr %b, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2, align 4
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %tobool3.not = icmp ne ptr %3, null
  %spec.select = zext i1 %tobool3.not to i32
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %lor.lhs.false.return_crit_edge, label %if.end11

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull %3) #22
  br label %return

return:                                           ; preds = %if.end11, %lor.lhs.false.return_crit_edge, %land.lhs.true
  %retval.0 = phi i32 [ %call, %if.end11 ], [ 1, %lor.lhs.false.return_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy_attr_bpf(ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 7
  %name = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %1) #18
  %2 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @bpf_prog_put(ptr noundef nonnull %3) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_nla_vrftable(ptr nocapture noundef readonly %attrs, ptr noundef %slwt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dt_info.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8
  %cmp.i = icmp ugt ptr %dt_info.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %dt_info.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr ptr, ptr %attrs, i32 9
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %vrf_table = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %vrf_table to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %vrf_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_nla_vrftable(ptr noundef %skb, ptr noundef %slwt) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dt_info.i = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8
  %cmp.i = icmp ugt ptr %dt_info.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %dt_info.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %vrf_table = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 8, i32 3
  %1 = ptrtoint ptr %vrf_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vrf_table, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_nla_vrftable(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vrf_table = getelementptr inbounds %struct.seg6_local_lwt, ptr %a, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %vrf_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vrf_table, align 4
  %vrf_table2 = getelementptr inbounds %struct.seg6_local_lwt, ptr %b, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %vrf_table2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vrf_table2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ne i32 %1, %3
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_nla_counters(ptr nocapture noundef readonly %attrs, ptr nocapture noundef writeonly %slwt) #0 align 64 {
entry:
  %tb = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb) #18
  %0 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 3
  %1 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 4
  %arrayidx = getelementptr ptr, ptr %attrs, i32 10
  %2 = call ptr @memset(ptr %tb, i32 255, i32 20)
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @seg6_local_counters_policy, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end8

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false4
  %call9 = call noalias ptr @__alloc_percpu_gfp(i32 noundef 56, i32 noundef 8, i32 noundef 3520) #24
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %for.cond.preheader

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8
  %call1232 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1232, i32 %14)
  %cmp1333 = icmp ult i32 %call1232, %14
  br i1 %cmp1333, label %for.body.lr.ph, label %for.cond.preheader.if.end23_crit_edge

for.cond.preheader.if.end23_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %15 = ptrtoint ptr %call9 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call1234 = phi i32 [ %call1232, %for.body.lr.ph ], [ %call12, %for.body.for.body_crit_edge ]
  %arrayidx15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1234
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  %add = add i32 %17, %15
  %18 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_seg6_local_counters, ptr %18, i32 0, i32 3
  %dep_map.i = getelementptr inbounds %struct.pcpu_seg6_local_counters, ptr %18, i32 0, i32 3, i32 0, i32 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @parse_nla_counters.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %19 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %syncp, align 4
  %call12 = call i32 @cpumask_next(i32 noundef %call1234, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp13 = icmp ult i32 %call12, %20
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end23:                                         ; preds = %for.body.if.end23_crit_edge, %for.cond.preheader.if.end23_crit_edge
  %pcpu_counters = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 9
  %21 = ptrtoint ptr %pcpu_counters to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9, ptr %pcpu_counters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end8.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %call2.i, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_nla_counters(ptr noundef %skb, ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  %tmp.i15.i = alloca i64, align 8
  %tmp.i13.i = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32778, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not63 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not63
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call155 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call155, i32 %2)
  %cmp56 = icmp ult i32 %call155, %2
  br i1 %cmp56, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pcpu_counters = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %do.end14.for.body_crit_edge, %for.body.lr.ph
  %call160 = phi i32 [ %call155, %for.body.lr.ph ], [ %call1, %do.end14.for.body_crit_edge ]
  %counters.sroa.9.059 = phi i64 [ 0, %for.body.lr.ph ], [ %add20, %do.end14.for.body_crit_edge ]
  %counters.sroa.6.058 = phi i64 [ 0, %for.body.lr.ph ], [ %add18, %do.end14.for.body_crit_edge ]
  %counters.sroa.0.057 = phi i64 [ 0, %for.body.lr.ph ], [ %add16, %do.end14.for.body_crit_edge ]
  %3 = ptrtoint ptr %pcpu_counters to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_counters, align 4
  %5 = ptrtoint ptr %4 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call160
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %5
  %8 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_seg6_local_counters, ptr %8, i32 0, i32 3
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.pcpu_seg6_local_counters, ptr %8, i32 0, i32 3, i32 0, i32 1
  %bytes7 = getelementptr inbounds %struct.pcpu_seg6_local_counters, ptr %8, i32 0, i32 1
  %errors9 = getelementptr inbounds %struct.pcpu_seg6_local_counters, ptr %8, i32 0, i32 2
  br label %do.body3

do.body3:                                         ; preds = %u64_stats_fetch_begin_irq.exit.do.body3_crit_edge, %for.body
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !108
  %and.i.i.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  %10 = tail call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #18
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %11) #18
  tail call void @trace_hardirqs_on() #18
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #20
  %12 = tail call ptr @llvm.returnaddress(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %13) #18
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %13) #18
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !115
  %and.i.i.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !93

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #18, !srcloc !116
  %15 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !118
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !119
  %17 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %18, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %16, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %18, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !120
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %8, align 8
  %21 = ptrtoint ptr %bytes7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes7, align 8
  %23 = ptrtoint ptr %errors9 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %errors9, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !121
  %25 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %26, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end14, label %u64_stats_fetch_begin_irq.exit.do.body3_crit_edge

u64_stats_fetch_begin_irq.exit.do.body3_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body3

do.end14:                                         ; preds = %u64_stats_fetch_begin_irq.exit
  %add16 = add i64 %20, %counters.sroa.0.057
  %add18 = add i64 %22, %counters.sroa.6.058
  %add20 = add i64 %24, %counters.sroa.9.059
  %call1 = tail call i32 @cpumask_next(i32 noundef %call160, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %27
  br i1 %cmp, label %do.end14.for.body_crit_edge, label %do.end14.for.end_crit_edge

do.end14.for.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

do.end14.for.body_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %do.end14.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %counters.sroa.0.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add16, %do.end14.for.end_crit_edge ]
  %counters.sroa.6.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add18, %do.end14.for.end_crit_edge ]
  %counters.sroa.9.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add20, %do.end14.for.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #18
  %28 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %counters.sroa.0.0.lcssa, ptr %tmp.i.i, align 8
  %call.i.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.if.then.i.i_crit_edge

for.end.if.then.i.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end.i:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i13.i) #18
  %29 = ptrtoint ptr %tmp.i13.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %counters.sroa.6.0.lcssa, ptr %tmp.i13.i, align 8
  %call.i14.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i13.i, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i13.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool2.not.i = icmp eq i32 %call.i14.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i15.i) #18
  %30 = ptrtoint ptr %tmp.i15.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %counters.sroa.9.0.lcssa, ptr %tmp.i15.i, align 8
  %call.i16.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i15.i, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i15.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool6.not.i = icmp eq i32 %call.i16.i, 0
  br i1 %tobool6.not.i, label %if.end24, label %if.end4.i.if.then.i.i_crit_edge

if.end4.i.if.then.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end4.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge, %for.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i42 = icmp ugt ptr %32, %1
  br i1 %cmp.i.i42, label %do.end.i.i43, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !93

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_nest_cancel.exit

do.end.i.i43:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 991, i32 noundef 9, ptr noundef null) #18
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i43, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #18
  br label %cleanup

if.end24:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %nla_nest_cancel.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ %39, %if.end24 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_nla_counters(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pcpu_counters = getelementptr inbounds %struct.seg6_local_lwt, ptr %a, i32 0, i32 9
  %0 = ptrtoint ptr %pcpu_counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_counters, align 4
  %tobool = icmp ne ptr %1, null
  %pcpu_counters2 = getelementptr inbounds %struct.seg6_local_lwt, ptr %b, i32 0, i32 9
  %2 = ptrtoint ptr %pcpu_counters2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcpu_counters2, align 4
  %tobool3 = icmp ne ptr %3, null
  %xor8 = xor i1 %tobool, %tobool3
  %xor = zext i1 %xor8 to i32
  ret i32 %xor
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy_attr_counters(ptr nocapture noundef readonly %slwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pcpu_counters = getelementptr inbounds %struct.seg6_local_lwt, ptr %slwt, i32 0, i32 9
  %0 = ptrtoint ptr %pcpu_counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_counters, align 4
  tail call void @free_percpu(ptr noundef %1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_local_input_core(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !93

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1, align 4
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lwtstate, align 4
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 0, i32 7
  %desc3 = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 3, i32 6
  %10 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc3, align 4
  %input = getelementptr inbounds %struct.seg6_action_desc, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input, align 4
  %call4 = tail call i32 %13(ptr noundef %skb, ptr noundef %data.i) #18
  %parsed_optattrs.i = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 3, i32 6, i32 1
  %14 = ptrtoint ptr %parsed_optattrs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parsed_optattrs.i, align 4
  %and.i17 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.i.not = icmp eq i32 %and.i17, 0
  br i1 %tobool.i.not, label %skb_dst.exit.cleanup_crit_edge, label %if.end

skb_dst.exit.cleanup_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %skb_dst.exit
  %pcpu_counters.i = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 3, i32 4
  %16 = ptrtoint ptr %pcpu_counters.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_counters.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_seg6_local_counters, ptr %25, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i, label %if.end.u64_stats_update_begin.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.u64_stats_update_begin.exit.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !109
  %29 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %34, ptrtoint (ptr @lockdep_recursion to i32)
  %35 = inttoptr i32 %add.i.i.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !110
  %38 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i7.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool20.not.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.u64_stats_update_begin.exit.i_crit_edge

land.lhs.true.i.i.i.u64_stats_update_begin.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i.i = icmp eq i32 %45, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.u64_stats_update_begin.exit.i_crit_edge

land.rhs.i.i.i.u64_stats_update_begin.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin.exit.i

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %46 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i9.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %49, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !111
  %50 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %53, ptrtoint (ptr @hardirqs_enabled to i32)
  %54 = inttoptr i32 %add47.i.i.i to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !112
  %57 = tail call i32 @llvm.read_register.i32(metadata !80) #18
  %and.i.i.i12.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool54.not.i.i.i = icmp eq i32 %56, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.u64_stats_update_begin.exit.i_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.u64_stats_update_begin.exit.i_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin.exit.i

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.u64_stats_update_begin.exit.i_crit_edge, label %if.then.i.i.i, !prof !95

land.rhs58.i.i.i.u64_stats_update_begin.exit.i_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 271, i32 noundef 9, ptr noundef null) #18
  br label %u64_stats_update_begin.exit.i

u64_stats_update_begin.exit.i:                    ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.u64_stats_update_begin.exit.i_crit_edge, %land.rhs22.i.i.i.u64_stats_update_begin.exit.i_crit_edge, %land.rhs.i.i.i.u64_stats_update_begin.exit.i_crit_edge, %land.lhs.true.i.i.i.u64_stats_update_begin.exit.i_crit_edge, %if.end.u64_stats_update_begin.exit.i_crit_edge
  %61 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %62, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !113
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_seg6_local_counters, ptr %25, i32 0, i32 3, i32 0, i32 1
  %63 = tail call ptr @llvm.returnaddress(i32 0) #18
  %64 = ptrtoint ptr %63 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %64) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not.i18 = icmp eq i32 %call4, 0
  br i1 %tobool.not.i18, label %if.then.i, label %if.else.i, !prof !95

if.then.i:                                        ; preds = %u64_stats_update_begin.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %65 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %25, align 8
  %inc.i.i = add i64 %66, 1
  store i64 %inc.i.i, ptr %25, align 8
  %bytes.i = getelementptr inbounds %struct.pcpu_seg6_local_counters, ptr %25, i32 0, i32 1
  %conv.i.i = zext i32 %7 to i64
  br label %seg6_local_update_counters.exit

if.else.i:                                        ; preds = %u64_stats_update_begin.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %errors.i = getelementptr inbounds %struct.pcpu_seg6_local_counters, ptr %25, i32 0, i32 2
  br label %seg6_local_update_counters.exit

seg6_local_update_counters.exit:                  ; preds = %if.else.i, %if.then.i
  %errors.sink12.i = phi ptr [ %errors.i, %if.else.i ], [ %bytes.i, %if.then.i ]
  %.sink11.i = phi i64 [ 1, %if.else.i ], [ %conv.i.i, %if.then.i ]
  %67 = ptrtoint ptr %errors.sink12.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %errors.sink12.i, align 8
  %inc.i10.i = add i64 %68, %.sink11.i
  store i64 %inc.i10.i, ptr %errors.sink12.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %64) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !114
  %69 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %70, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %seg6_local_update_counters.exit, %skb_dst.exit.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !64, !66, !68, !69, !71, !73, !75, !76, !78}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__pcpu_scope_seg6_bpf_srh_states, !1, !"__pcpu_scope_seg6_bpf_srh_states", i1 false, i1 false}
!1 = !{!"../net/ipv6/seg6_local.c", i32 872, i32 1}
!2 = !{ptr @__pcpu_unique_seg6_bpf_srh_states, !1, !"__pcpu_unique_seg6_bpf_srh_states", i1 false, i1 false}
!3 = !{ptr @seg6_bpf_srh_states, !1, !"seg6_bpf_srh_states", i1 false, i1 false}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/net/dst.h", i32 231, i32 2}
!6 = !{ptr @seg6_local_ops, !7, !"seg6_local_ops", i1 false, i1 false}
!7 = !{!"../net/ipv6/seg6_local.c", i32 1942, i32 40}
!8 = !{ptr @seg6_local_policy, !9, !"seg6_local_policy", i1 false, i1 false}
!9 = !{!"../net/ipv6/seg6_local.c", i32 1123, i32 32}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../net/ipv6/seg6_local.c", i32 1740, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @seg6_action_table, !15, !"seg6_action_table", i1 false, i1 false}
!15 = !{!"../net/ipv6/seg6_local.c", i32 951, i32 32}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../net/ipv6/seg6_local.c", i32 643, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @end_dt_vrf_core._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @end_dt_vrf_core._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @__seg6_end_dt_vrf_build.__msg, !48, !"__msg", i1 false, i1 false}
!48 = !{!"../net/ipv6/seg6_local.c", i32 512, i32 4}
!49 = !{ptr @__seg6_end_dt_vrf_build.__msg.16, !50, !"__msg", i1 false, i1 false}
!50 = !{!"../net/ipv6/seg6_local.c", i32 515, i32 4}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ipv6/seg6_local.c", i32 518, i32 4}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @__seg6_end_dt_vrf_build.__UNIQUE_ID_ddebug633, !52, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!56 = !{ptr @seg6_end_dt6_build.__msg, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../net/ipv6/seg6_local.c", i32 736, i32 3}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../net/ipv6/seg6_local.c", i32 932, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @input_action_end_bpf._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @input_action_end_bpf._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/filter.h", i32 613, i32 2}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @seg6_action_params, !70, !"seg6_action_params", i1 false, i1 false}
!70 = !{!"../net/ipv6/seg6_local.c", i32 1558, i32 33}
!71 = !{ptr @bpf_prog_policy, !72, !"bpf_prog_policy", i1 false, i1 false}
!72 = !{!"../net/ipv6/seg6_local.c", i32 1364, i32 32}
!73 = !{ptr @parse_nla_counters.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../net/ipv6/seg6_local.c", i32 1468, i32 14}
!75 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @seg6_local_counters_policy, !77, !"seg6_local_counters_policy", i1 false, i1 false}
!77 = !{!"../net/ipv6/seg6_local.c", i32 1441, i32 12}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/net/netlink.h", i32 991, i32 3}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148206605}
!91 = !{i64 582526, i64 582551, i64 582573, i64 582589, i64 582601, i64 582621, i64 582645, i64 582661, i64 582673}
!92 = !{i64 2148206793}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i8 0, i8 2}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2149334313, i64 2149334318, i64 2149334331, i64 2149334375, i64 2149334409, i64 2149334430}
!97 = !{ptr @input_action_end_dx4_finish, ptr @input_action_end_dx6_finish, ptr @seg6_local_input_core}
!98 = !{i64 2155276687, i64 2155277175, i64 2155276724, i64 2155276780, i64 2155276814, i64 2155276838, i64 2155276879, i64 2155276900, i64 2155276928, i64 2155276962}
!99 = !{i64 2148296717}
!100 = !{i64 2148211181, i64 2148211213, i64 2148211242, i64 2148211276, i64 2148211307, i64 2148211330}
!101 = !{i64 2150325858}
!102 = !{i64 2158625345}
!103 = !{i64 2149764308}
!104 = !{i64 2149764574}
!105 = !{i64 2158627813}
!106 = !{i64 2158627970}
!107 = !{!"branch_weights", i32 1, i32 4001}
!108 = !{i64 660513, i64 660574}
!109 = !{i64 2150132485}
!110 = !{i64 2150137417}
!111 = !{i64 2150159129}
!112 = !{i64 2150164021}
!113 = !{i64 2150244539}
!114 = !{i64 2150244864}
!115 = !{i64 663245}
!116 = !{i64 663530}
!117 = !{!"auto-init"}
!118 = !{i64 2155606811}
!119 = !{i64 2155606653}
!120 = !{i64 2155606981}
!121 = !{i64 2150244214}
