; ModuleID = '/llk/IR_all_yes/net/decnet/dn_route.c_pt.bc'
source_filename = "../net/decnet/dn_route.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.dn_fib_res = type { ptr, ptr, i8, i8, i8, i8 }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dn_rt_hash_bucket = type { ptr, %struct.spinlock }
%struct.dn_route = type { %struct.dst_entry, ptr, ptr, %struct.flowidn, i16, i16, i16, i16, i16, i16, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.flowidn = type { %struct.flowi_common, i16, i16, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff = type { %union.anon.2, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.5, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.5 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.123 = type { ptr }
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
%struct.dn_dev = type { ptr, ptr, %struct.dn_dev_parms, i8, %struct.timer_list, i32, ptr, [6 x i8], ptr, ptr, i32 }
%struct.dn_dev_parms = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.dn_neigh = type { %struct.neighbour, i16, i32, i32, i8 }
%struct.dn_fib_info = type { ptr, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i32, i32, i16, i32, [17 x i32], i32, i32, [0 x %struct.dn_fib_nh] }
%struct.dn_fib_nh = type { ptr, i32, i8, i32, i32, i32, i16 }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dn_ifaddr = type { ptr, ptr, i16, i16, i32, i8, [16 x i8], %struct.callback_head }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@decnet_dst_gc_interval = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dn_rt_flush_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dn_rt_flush_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @dn_run_flush, i32 0, %struct.lockdep_map { ptr @.str.14, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@dn_rt_deadline = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dn_route_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/decnet/dn_route.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@decnet_debug_level = external dso_local local_unnamed_addr global i32, align 4
@dn_route_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017dn_route_rcv: got 0x%02x from %s [%d %d %d]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dn_route_rcv\00", [19 x i8] zeroinitializer }, align 32
@dn_route_rcv._entry_ptr = internal global ptr @dn_route_rcv._entry, section ".printk_index", align 4
@rtm_dn_policy = dso_local constant { <{ [17 x %struct.nla_policy], [14 x %struct.nla_policy] }>, [40 x i8] } { <{ [17 x %struct.nla_policy], [14 x %struct.nla_policy] }> <{ [17 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }], [14 x %struct.nla_policy] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@dn_rt_hash_mask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dn_rt_hash_table = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dn_cache_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_cache_dump.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dn_dst_cache\00", [19 x i8] zeroinitializer }, align 32
@dn_dst_ops = internal global %struct.dst_ops { i16 12, i32 128, ptr @dn_dst_gc, ptr @dn_dst_check, ptr @dn_dst_default_advmss, ptr @dn_dst_mtu, ptr @dst_cow_metrics_generic, ptr @dn_dst_destroy, ptr @dn_dst_ifdown, ptr @dn_dst_negative_advice, ptr @dn_dst_link_failure, ptr @dn_dst_update_pmtu, ptr @dn_dst_redirect, ptr null, ptr @dn_dst_neigh_lookup, ptr null, ptr null, [60 x i8] undef, %struct.percpu_counter zeroinitializer, [56 x i8] undef }, align 128
@dn_route_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dn_route_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&dn_route_timer)\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to allocate DECnet route cache hash table\0A\00", [46 x i8] zeroinitializer }, align 32
@dn_route_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 1892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016DECnet: Routing cache hash table of %u buckets, %ldKbytes\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dn_route_init\00", [18 x i8] zeroinitializer }, align 32
@dn_route_init._entry_ptr = internal global ptr @dn_route_init._entry, section ".printk_index", align 4
@dn_route_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&dn_rt_hash_table[i].lock\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"decnet_cache\00", [19 x i8] zeroinitializer }, align 32
@dn_rt_cache_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dn_rt_cache_seq_start, ptr @dn_rt_cache_seq_stop, ptr @dn_rt_cache_seq_next, ptr @dn_rt_cache_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dn_rt_flush_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/decnet/dn_route.c:126\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dn_hiord_addr = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\00\04\00\00\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@dn_route_rx_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\017DECnet: dn_route_rx_packet: rt_flags=0x%02x dev=%s len=%d src=0x%04hx dst=0x%04hx err=%d type=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dn_route_rx_packet\00", [45 x i8] zeroinitializer }, align 32
@dn_route_rx_packet._entry_ptr = internal global ptr @dn_route_rx_packet._entry, section ".printk_index", align 4
@dn_route_input.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_route_input.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__const.dn_route_input_slow.res = private unnamed_addr constant %struct.dn_fib_res { ptr null, ptr null, i8 0, i8 0, i8 7, i8 0 }, align 4
@dn_route_input_slow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_route_input_slow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\012Bug in dn_route_input_slow() No output device\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dn_route_input_slow\00", [44 x i8] zeroinitializer }, align 32
@dn_route_input_slow._entry_ptr = internal global ptr @dn_route_input_slow._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dn_dev_islocal.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/net/dn_dev.h\00", [43 x i8] zeroinitializer }, align 32
@dn_dev_islocal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.32, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017dn_dev_islocal: Called for non DECnet device\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dn_dev_islocal\00", [17 x i8] zeroinitializer }, align 32
@dn_dev_islocal._entry_ptr = internal global ptr @dn_dev_islocal._entry, section ".printk_index", align 4
@dn_dev_islocal.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_dev_islocal.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dnet_select_source.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dnet_select_source.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dnet_select_source.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_rt_bug_out.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str, ptr @.str.41, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"decnet\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dn_rt_bug_out\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dn_rt_bug: skb from:%04x to:%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@dn_forward.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_output.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.42, ptr @.str, ptr @.str.43, i8 0, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dn_output\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dn_output: This should not happen\0A\00", [61 x i8] zeroinitializer }, align 32
@dn_neigh_table = external dso_local global %struct.neigh_table, align 4
@dst_metric.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dn_insert_route.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__dn_route_output_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__dn_route_output_key.__warned.45 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__const.dn_route_output_slow.res = private unnamed_addr constant %struct.dn_fib_res { ptr null, ptr null, i8 0, i8 0, i8 1, i8 0 }, align 4
@dn_route_output_slow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017dn_route_output_slow: dst=%04x src=%04x mark=%d iif=%d oif=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dn_route_output_slow\00", [43 x i8] zeroinitializer }, align 32
@dn_route_output_slow._entry_ptr = internal global ptr @dn_route_output_slow._entry, section ".printk_index", align 4
@dn_route_output_slow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@dn_route_output_slow._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.47, ptr @.str, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\017dn_route_output_slow: initial checks complete. dst=%04x src=%04x oif=%d try_hard=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@dn_route_output_slow._entry_ptr.51 = internal global ptr @dn_route_output_slow._entry.49, section ".printk_index", align 4
@dn_rt_bug.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.52, ptr @.str, ptr @.str.41, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dn_rt_bug\00", [22 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@dn_dst_gc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dst_entries_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dn_dst_check_expire.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@dn_rt_cache_get_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_rt_cache_get_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_rt_cache_get_next.__warned.56 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%-8s %-7s %-7s %04d %04d %04d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 7, i64 9, i64 11, i64 13]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 772]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 6, i64 7]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.68 = private unnamed_addr constant [23 x i8] c"decnet_dst_gc_interval\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 127, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"dn_rt_flush_lock\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"dn_rt_flush_timer\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"dn_rt_deadline\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 101, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 626, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 677, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"rtm_dn_policy\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1617, i32 25 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"dn_rt_hash_mask\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 123, i32 21 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"dn_rt_hash_table\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 122, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1857, i32 21 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"dn_route_timer\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 125, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1860, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1887, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1889, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1896, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1902, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"dn_rt_cache_seq_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1844, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 377, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 126, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1810, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 229, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 695, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 723, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"dn_hiord_addr\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 95, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 516, i32 47 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 518, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 231, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1362, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 181, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant [24 x i8] c"../include/net/dn_dev.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 183, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 829, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 770, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 325, i32 16 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 974, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1004, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1049, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 841, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 749, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 991, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 760, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [25 x i8] c"../include/net/dst_ops.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 65, i32 9 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1835, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [25 x i8] c"../net/decnet/dn_route.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1836, i32 40 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @dn_dev_islocal._entry, ptr @dn_dev_islocal._entry_ptr, ptr @dn_route_cleanup, ptr @dn_route_init._entry, ptr @dn_route_init._entry_ptr, ptr @dn_route_input_slow._entry, ptr @dn_route_input_slow._entry_ptr, ptr @dn_route_output_slow._entry, ptr @dn_route_output_slow._entry.49, ptr @dn_route_output_slow._entry_ptr, ptr @dn_route_output_slow._entry_ptr.51, ptr @dn_route_rcv._entry, ptr @dn_route_rcv._entry_ptr, ptr @dn_route_rx_packet._entry, ptr @dn_route_rx_packet._entry_ptr, ptr @decnet_dst_gc_interval, ptr @dn_rt_flush_lock, ptr @dn_rt_flush_timer, ptr @dn_rt_deadline, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtm_dn_policy, ptr @dn_rt_hash_mask, ptr @dn_rt_hash_table, ptr @.str.5, ptr @dn_route_init.__key, ptr @dn_route_timer, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dn_route_init.__key.10, ptr @.str.11, ptr @.str.12, ptr @dn_rt_cache_seq_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @dn_hiord_addr, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @dst_entries_init.__key, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_dst_gc_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_rt_flush_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_rt_flush_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_rt_deadline to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_route_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_dn_policy to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_rt_hash_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_rt_hash_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_route_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_route_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_route_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_route_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_rt_cache_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_hiord_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_route_rx_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_route_input_slow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_dev_islocal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_route_output_slow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_route_output_slow._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dst_entries_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_rt_cache_flush(i32 noundef %delay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %4, 15728640
  %5 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i38 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i38 to ptr
  %preempt_count.i39 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i39, align 4
  %and2 = and i32 %8, 983040
  %or = or i32 %and2, %and
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i40 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i40 to ptr
  %preempt_count.i41 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i41, align 4
  %and4 = and i32 %12, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay)
  %cmp = icmp slt i32 %delay, 0
  %spec.store.select = select i1 %cmp, i32 200, i32 %delay
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @dn_rt_flush_lock) #13
  %call6 = tail call i32 @del_timer(ptr noundef nonnull @dn_rt_flush_timer) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp ne i32 %call6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp8 = icmp ne i32 %spec.store.select, 0
  %or.cond = and i1 %cmp8, %tobool7.not
  br i1 %or.cond, label %land.lhs.true9, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true9:                                   ; preds = %entry
  %13 = load i32, ptr @dn_rt_deadline, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %land.lhs.true9.if.then25_crit_edge, label %if.then11

land.lhs.true9.if.then25_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.then11:                                        ; preds = %land.lhs.true9
  %sub = sub i32 %13, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 800
  %14 = select i1 %tobool.not, i1 %cmp14, i1 false
  %tmo.0 = select i1 %14, i32 0, i32 %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %tmo.0)
  %cmp17 = icmp sgt i32 %spec.store.select, %tmo.0
  br i1 %cmp17, label %if.then11.if.end20_crit_edge, label %if.then11.if.end23_crit_edge

if.then11.if.end23_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end20:                                         ; preds = %if.then11.if.end20_crit_edge, %entry.if.end20_crit_edge
  %delay.addr.1 = phi i32 [ %spec.store.select, %entry.if.end20_crit_edge ], [ %tmo.0, %if.then11.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %delay.addr.1)
  %cmp21 = icmp slt i32 %delay.addr.1, 1
  br i1 %cmp21, label %if.then22, label %if.end20.if.end23_crit_edge

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @dn_rt_flush_lock) #13
  tail call void @dn_run_flush(ptr noundef null)
  br label %cleanup

if.end23:                                         ; preds = %if.end20.if.end23_crit_edge, %if.then11.if.end23_crit_edge
  %delay.addr.144.ph = phi i32 [ %spec.store.select, %if.then11.if.end23_crit_edge ], [ %delay.addr.1, %if.end20.if.end23_crit_edge ]
  %.pr = load i32, ptr @dn_rt_deadline, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp24 = icmp eq i32 %.pr, 0
  br i1 %cmp24, label %if.end23.if.then25_crit_edge, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %land.lhs.true9.if.then25_crit_edge
  %delay.addr.14448 = phi i32 [ %delay.addr.144.ph, %if.end23.if.then25_crit_edge ], [ %spec.store.select, %land.lhs.true9.if.then25_crit_edge ]
  %add = add i32 %0, 1000
  store i32 %add, ptr @dn_rt_deadline, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %delay.addr.14447 = phi i32 [ %delay.addr.14448, %if.then25 ], [ %delay.addr.144.ph, %if.end23.if.end26_crit_edge ]
  %add27 = add i32 %delay.addr.14447, %0
  store i32 %add27, ptr getelementptr inbounds (%struct.timer_list, ptr @dn_rt_flush_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @dn_rt_flush_timer) #13
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @dn_rt_flush_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then22
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_run_flush(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dn_rt_hash_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp54.not = icmp eq i32 %0, 0
  br i1 %cmp54.not, label %entry.for.end41_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end41

for.body:                                         ; preds = %nothing_to_declare.for.body_crit_edge, %entry.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %nothing_to_declare.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @dn_rt_hash_table, align 4
  %lock = getelementptr %struct.dn_rt_hash_bucket, ptr %1, i32 %i.055, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %2 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx1 = getelementptr %struct.dn_rt_hash_bucket, ptr %2, i32 %i.055
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !187
  tail call void @llvm.prefetch.p0(ptr %arrayidx1, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx1) #13, !srcloc !188
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %for.body.nothing_to_declare_crit_edge, label %for.body18.preheader

for.body.nothing_to_declare_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %nothing_to_declare

for.body18.preheader:                             ; preds = %for.body
  %4 = inttoptr i32 %asmresult.i to ptr
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body18.preheader
  %rt.053 = phi ptr [ %6, %for.body18.for.body18_crit_edge ], [ %4, %for.body18.preheader ]
  %dn_next = getelementptr inbounds %struct.dn_route, ptr %rt.053, i32 0, i32 1
  %5 = ptrtoint ptr %dn_next to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %dn_next, align 8
  store volatile ptr null, ptr %dn_next, align 8
  tail call void @dst_dev_put(ptr noundef nonnull %rt.053) #13
  tail call void @dst_release(ptr noundef nonnull %rt.053) #13
  %tobool17.not = icmp eq ptr %6, null
  br i1 %tobool17.not, label %for.body18.nothing_to_declare_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body18

for.body18.nothing_to_declare_crit_edge:          ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %nothing_to_declare

nothing_to_declare:                               ; preds = %for.body18.nothing_to_declare_crit_edge, %for.body.nothing_to_declare_crit_edge
  %7 = load ptr, ptr @dn_rt_hash_table, align 4
  %lock39 = getelementptr %struct.dn_rt_hash_bucket, ptr %7, i32 %i.055, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock39) #13
  %inc = add nuw i32 %i.055, 1
  %8 = load i32, ptr @dn_rt_hash_mask, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %nothing_to_declare.for.body_crit_edge, label %nothing_to_declare.for.end41_crit_edge

nothing_to_declare.for.end41_crit_edge:           ; preds = %nothing_to_declare
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end41

nothing_to_declare.for.body_crit_edge:            ; preds = %nothing_to_declare
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end41:                                        ; preds = %nothing_to_declare.for.end41_crit_edge, %entry.for.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_route_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %5 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %dn_ptr, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b159 = load i1, ptr @dn_route_rcv.__warned, align 1
  br i1 %.b159, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_route_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 626, ptr noundef nonnull @.str.1) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %cmp.i = icmp ne ptr %8, @init_net
  %cmp = icmp eq ptr %6, null
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end7.dump_it_crit_edge, label %if.end15

do.end7.dump_it_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

if.end15:                                         ; preds = %do.end7
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #13
  %9 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end15
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #13
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread200, !prof !190

skb_share_check.exit.thread200:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %if.end19

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

skb_share_check.exit:                             ; preds = %if.end15
  %tobool17.not = icmp eq ptr %skb, null
  br i1 %tobool17.not, label %skb_share_check.exit.cleanup_crit_edge, label %skb_share_check.exit.if.end19_crit_edge

skb_share_check.exit.if.end19_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

skb_share_check.exit.cleanup_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %skb_share_check.exit.if.end19_crit_edge, %skb_share_check.exit.thread200
  %skb.addr.0.i203 = phi ptr [ %call7.i, %skb_share_check.exit.thread200 ], [ %skb, %skb_share_check.exit.if.end19_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 6
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.end19.if.end22_crit_edge, !prof !190

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp3.i = icmp ult i32 %12, 3
  br i1 %cmp3.i, label %if.end.i.dump_it_crit_edge, label %pskb_may_pull.exit, !prof !190

if.end.i.dump_it_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 3, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i203, i32 noundef %sub.i) #13
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.dump_it_crit_edge, label %pskb_may_pull.exit.if.end22_crit_edge

pskb_may_pull.exit.if.end22_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

pskb_may_pull.exit.dump_it_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

if.end22:                                         ; preds = %pskb_may_pull.exit.if.end22_crit_edge, %if.end19.if.end22_crit_edge
  %call23 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i203, i32 noundef 2) #13
  %conv = zext i16 %4 to i32
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv)
  %cmp25 = icmp ult i32 %16, %conv
  br i1 %cmp25, label %if.end22.dump_it_crit_edge, label %if.end28

if.end22.dump_it_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

if.end28:                                         ; preds = %if.end22
  tail call void @skb_trim(ptr noundef nonnull %skb.addr.0.i203, i32 noundef %conv) #13
  %data30 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 19
  %17 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data30, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %stamp = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 3, i32 20
  %22 = ptrtoint ptr %stamp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %stamp, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %23 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex, align 4
  %iif = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 3, i32 24
  %25 = ptrtoint ptr %iif to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %iif, align 4
  %conv32 = zext i8 %20 to i32
  %and = and i32 %conv32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end28.if.end45_crit_edge, label %if.then34

if.end28.if.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then34:                                        ; preds = %if.end28
  %and36 = and i32 %conv32, 127
  %add = add nuw nsw i32 %and36, 1
  %26 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i.i, align 4
  %28 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i162 = sub i32 %27, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %and36, i32 %sub.i.i162)
  %cmp.not.i163.not = icmp ult i32 %and36, %sub.i.i162
  br i1 %cmp.not.i163.not, label %if.then34.if.end41_crit_edge, label %if.end.i165, !prof !191

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end.i165:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %and36)
  %cmp3.i164.not = icmp ugt i32 %27, %and36
  br i1 %cmp3.i164.not, label %pskb_may_pull.exit171, label %if.end.i165.dump_it_crit_edge, !prof !191

if.end.i165.dump_it_crit_edge:                    ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

pskb_may_pull.exit171:                            ; preds = %if.end.i165
  %sub.i166 = sub i32 %add, %sub.i.i162
  %call13.i167 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i203, i32 noundef %sub.i166) #13
  %cmp14.i168.not = icmp eq ptr %call13.i167, null
  br i1 %cmp14.i168.not, label %pskb_may_pull.exit171.dump_it_crit_edge, label %pskb_may_pull.exit171.if.end41_crit_edge

pskb_may_pull.exit171.if.end41_crit_edge:         ; preds = %pskb_may_pull.exit171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

pskb_may_pull.exit171.dump_it_crit_edge:          ; preds = %pskb_may_pull.exit171
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

if.end41:                                         ; preds = %pskb_may_pull.exit171.if.end41_crit_edge, %if.then34.if.end41_crit_edge
  %call43 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i203, i32 noundef %and36) #13
  %30 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data30, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %.pre = zext i8 %33 to i32
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %if.end28.if.end45_crit_edge
  %conv46.pre-phi = phi i32 [ %.pre, %if.end41 ], [ %conv32, %if.end28.if.end45_crit_edge ]
  %flags.0 = phi i8 [ %33, %if.end41 ], [ %20, %if.end28.if.end45_crit_edge ]
  %padlen.0 = phi i32 [ %and36, %if.end41 ], [ 0, %if.end28.if.end45_crit_edge ]
  %34 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data30, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 18
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i172 = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i172, ptr %network_header.i, align 4
  %and47 = and i32 %conv46.pre-phi, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.dump_it_crit_edge

if.end45.dump_it_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

if.end50:                                         ; preds = %if.end45
  %rt_flags = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 3, i32 12
  %39 = ptrtoint ptr %rt_flags to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %flags.0, ptr %rt_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_debug_level to i32))
  %40 = load i32, ptr @decnet_debug_level, align 4
  %and51 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end64_crit_edge, label %do.end56

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i, align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv46.pre-phi, ptr noundef %dev, i32 noundef %conv, i32 noundef %42, i32 noundef %padlen.0) #16
  br label %if.end64

if.end64:                                         ; preds = %do.end56, %if.end50.if.end64_crit_edge
  %and66 = and i32 %conv46.pre-phi, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %if.end64
  %43 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i, label %if.then68.if.end74_crit_edge, label %cond.true.i

if.then68.if.end74_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

cond.true.i:                                      ; preds = %if.then68
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i203, i32 noundef %44) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.dump_it_crit_edge, label %cond.true.i.if.end74_crit_edge

cond.true.i.if.end74_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

cond.true.i.dump_it_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

if.end74:                                         ; preds = %cond.true.i.if.end74_crit_edge, %if.then68.if.end74_crit_edge
  %and76 = and i32 %conv46.pre-phi, 15
  %45 = zext i32 %and76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and76, label %if.end74.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb77
  ]

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dn_dev_init_pkt(ptr noundef nonnull %skb.addr.0.i203) #13
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dn_dev_veri_pkt(ptr noundef nonnull %skb.addr.0.i203) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb77, %sw.bb, %if.end74.sw.epilog_crit_edge
  %state = getelementptr inbounds %struct.dn_dev, ptr %6, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp78.not = icmp eq i32 %47, 0
  br i1 %cmp78.not, label %if.end81, label %sw.epilog.dump_it_crit_edge

sw.epilog.dump_it_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

if.end81:                                         ; preds = %sw.epilog
  %48 = zext i32 %and76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %and76, label %if.end81.dump_it_crit_edge [
    i32 5, label %sw.bb84
    i32 7, label %if.end81.sw.bb86_crit_edge
    i32 9, label %if.end81.sw.bb86_crit_edge212
    i32 11, label %sw.bb88
    i32 13, label %sw.bb90
  ]

if.end81.sw.bb86_crit_edge212:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb86

if.end81.sw.bb86_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb86

if.end81.dump_it_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

sw.bb84:                                          ; preds = %if.end81
  %49 = getelementptr inbounds %struct.anon.3, ptr %skb.addr.0.i203, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 5, ptr noundef null, ptr noundef nonnull %skb.addr.0.i203, ptr noundef %51, ptr noundef null, ptr noundef nonnull @dn_route_ptp_hello) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i174 = icmp eq i32 %call.i, 1
  br i1 %cmp.i174, label %if.then.i, label %sw.bb84.cleanup_crit_edge

sw.bb84.cleanup_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dn_dev_hello(ptr noundef nonnull %skb.addr.0.i203) #13
  tail call void @dn_neigh_pointopoint_hello(ptr noundef nonnull %skb.addr.0.i203) #13
  br label %cleanup

sw.bb86:                                          ; preds = %if.end81.sw.bb86_crit_edge, %if.end81.sw.bb86_crit_edge212
  %52 = getelementptr inbounds %struct.anon.3, ptr %skb.addr.0.i203, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %call.i176 = tail call fastcc i32 @nf_hook(i32 noundef 6, ptr noundef null, ptr noundef nonnull %skb.addr.0.i203, ptr noundef %54, ptr noundef null, ptr noundef nonnull @dn_route_discard) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i176)
  %cmp.i177 = icmp eq i32 %call.i176, 1
  br i1 %cmp.i177, label %if.then.i179, label %sw.bb86.cleanup_crit_edge

sw.bb86.cleanup_crit_edge:                        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i179:                                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i203, i32 noundef 0) #13
  br label %cleanup

sw.bb88:                                          ; preds = %if.end81
  %55 = getelementptr inbounds %struct.anon.3, ptr %skb.addr.0.i203, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %call.i183 = tail call fastcc i32 @nf_hook(i32 noundef 5, ptr noundef null, ptr noundef nonnull %skb.addr.0.i203, ptr noundef %57, ptr noundef null, ptr noundef nonnull @dn_neigh_router_hello) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i183)
  %cmp.i184 = icmp eq i32 %call.i183, 1
  br i1 %cmp.i184, label %if.then.i186, label %sw.bb88.cleanup_crit_edge

sw.bb88.cleanup_crit_edge:                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i186:                                     ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i185 = tail call i32 @dn_neigh_router_hello(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef nonnull %skb.addr.0.i203) #13
  br label %cleanup

sw.bb90:                                          ; preds = %if.end81
  %58 = getelementptr inbounds %struct.anon.3, ptr %skb.addr.0.i203, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %call.i190 = tail call fastcc i32 @nf_hook(i32 noundef 5, ptr noundef null, ptr noundef nonnull %skb.addr.0.i203, ptr noundef %60, ptr noundef null, ptr noundef nonnull @dn_neigh_endnode_hello) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i190)
  %cmp.i191 = icmp eq i32 %call.i190, 1
  br i1 %cmp.i191, label %if.then.i193, label %sw.bb90.cleanup_crit_edge

sw.bb90.cleanup_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i193:                                     ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i192 = tail call i32 @dn_neigh_endnode_hello(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef nonnull %skb.addr.0.i203) #13
  br label %cleanup

if.else:                                          ; preds = %if.end64
  %state94 = getelementptr inbounds %struct.dn_dev, ptr %6, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %state94 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp95.not = icmp eq i32 %62, 0
  br i1 %cmp95.not, label %if.end98, label %if.else.dump_it_crit_edge

if.else.dump_it_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

if.end98:                                         ; preds = %if.else
  %call99 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i203, i32 noundef 1) #13
  %and101 = and i32 %conv46.pre-phi, 6
  %63 = zext i32 %and101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %and101, label %if.end98.dump_it_crit_edge [
    i32 6, label %sw.bb102
    i32 2, label %sw.bb104
  ]

if.end98.dump_it_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_it

sw.bb102:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  %call103 = tail call fastcc i32 @dn_route_rx_long(ptr noundef nonnull %skb.addr.0.i203)
  br label %cleanup

sw.bb104:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  %call105 = tail call fastcc i32 @dn_route_rx_short(ptr noundef nonnull %skb.addr.0.i203)
  br label %cleanup

dump_it:                                          ; preds = %if.end98.dump_it_crit_edge, %if.else.dump_it_crit_edge, %if.end81.dump_it_crit_edge, %sw.epilog.dump_it_crit_edge, %cond.true.i.dump_it_crit_edge, %if.end45.dump_it_crit_edge, %pskb_may_pull.exit171.dump_it_crit_edge, %if.end.i165.dump_it_crit_edge, %if.end22.dump_it_crit_edge, %pskb_may_pull.exit.dump_it_crit_edge, %if.end.i.dump_it_crit_edge, %do.end7.dump_it_crit_edge
  %skb.addr.0 = phi ptr [ %skb.addr.0.i203, %if.end22.dump_it_crit_edge ], [ %skb.addr.0.i203, %if.end45.dump_it_crit_edge ], [ %skb.addr.0.i203, %sw.epilog.dump_it_crit_edge ], [ %skb.addr.0.i203, %if.end81.dump_it_crit_edge ], [ %skb.addr.0.i203, %if.else.dump_it_crit_edge ], [ %skb.addr.0.i203, %if.end98.dump_it_crit_edge ], [ %skb.addr.0.i203, %pskb_may_pull.exit171.dump_it_crit_edge ], [ %skb.addr.0.i203, %pskb_may_pull.exit.dump_it_crit_edge ], [ %skb, %do.end7.dump_it_crit_edge ], [ %skb.addr.0.i203, %cond.true.i.dump_it_crit_edge ], [ %skb.addr.0.i203, %if.end.i.dump_it_crit_edge ], [ %skb.addr.0.i203, %if.end.i165.dump_it_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %dump_it, %sw.bb104, %sw.bb102, %if.then.i193, %sw.bb90.cleanup_crit_edge, %if.then.i186, %sw.bb88.cleanup_crit_edge, %if.then.i179, %sw.bb86.cleanup_crit_edge, %if.then.i, %sw.bb84.cleanup_crit_edge, %skb_share_check.exit.cleanup_crit_edge, %skb_share_check.exit.thread
  %retval.0 = phi i32 [ %call105, %sw.bb104 ], [ %call103, %sw.bb102 ], [ 1, %skb_share_check.exit.cleanup_crit_edge ], [ 1, %dump_it ], [ 1, %skb_share_check.exit.thread ], [ 0, %if.then.i ], [ %call.i, %sw.bb84.cleanup_crit_edge ], [ 0, %if.then.i179 ], [ %call.i176, %sw.bb86.cleanup_crit_edge ], [ %call1.i185, %if.then.i186 ], [ %call.i183, %sw.bb88.cleanup_crit_edge ], [ %call1.i192, %if.then.i193 ], [ %call.i190, %sw.bb90.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_dev_init_pkt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_dev_veri_pkt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_route_ptp_hello(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dn_dev_hello(ptr noundef %skb) #13
  tail call void @dn_neigh_pointopoint_hello(ptr noundef %skb) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_route_discard(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_neigh_router_hello(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_neigh_endnode_hello(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_route_rx_long(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 21
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !190

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %3)
  %cmp3.i = icmp ult i32 %3, 21
  br i1 %cmp3.i, label %if.end.i.drop_it_crit_edge, label %pskb_may_pull.exit, !prof !190

if.end.i.drop_it_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_it

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 21, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #13
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_it_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pskb_may_pull.exit.drop_it_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_it

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %cb1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 20) #13
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 6
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %add.ptr.i, align 1
  %13 = ptrtoint ptr %cb1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %cb1, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @dn_hiord_addr, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end6, label %if.end.drop_it_crit_edge

if.end.drop_it_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_it

if.end6:                                          ; preds = %if.end
  %add.ptr8 = getelementptr i8, ptr %1, i32 10
  %add.ptr.i37 = getelementptr i8, ptr %1, i32 14
  %14 = ptrtoint ptr %add.ptr.i37 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %add.ptr.i37, align 1
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %src, align 2
  %bcmp36 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr8, ptr noundef nonnull dereferenceable(4) @dn_hiord_addr, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp36)
  %cmp11.not = icmp eq i32 %bcmp36, 0
  br i1 %cmp11.not, label %if.end13, label %if.end6.drop_it_crit_edge

if.end6.drop_it_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_it

if.end13:                                         ; preds = %if.end6
  %incdec.ptr = getelementptr i8, ptr %1, i32 17
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr, align 1
  %conv = zext i8 %18 to i16
  %hops = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %hops to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %hops, align 4
  %20 = getelementptr inbounds %struct.anon.3, ptr %skb, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 0, ptr noundef null, ptr noundef %skb, ptr noundef %22, ptr noundef null, ptr noundef nonnull @dn_route_rx_packet) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @dn_route_rx_packet(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %skb) #13
  br label %cleanup

drop_it:                                          ; preds = %if.end6.drop_it_crit_edge, %if.end.drop_it_crit_edge, %pskb_may_pull.exit.drop_it_crit_edge, %if.end.i.drop_it_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %drop_it, %if.then.i, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %drop_it ], [ %call1.i, %if.then.i ], [ %call.i, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_route_rx_short(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 6
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !190

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp3.i = icmp ult i32 %3, 6
  br i1 %cmp3.i, label %if.end.i.drop_it_crit_edge, label %pskb_may_pull.exit, !prof !190

if.end.i.drop_it_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_it

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 6, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #13
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_it_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pskb_may_pull.exit.drop_it_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_it

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %cb1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 5) #13
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 2
  %13 = ptrtoint ptr %cb1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %cb1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr, align 2
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %src, align 2
  %add.ptr3 = getelementptr i8, ptr %1, i32 4
  %17 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr3, align 1
  %19 = and i8 %18, 63
  %conv4 = zext i8 %19 to i16
  %hops = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %hops to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv4, ptr %hops, align 4
  %21 = getelementptr inbounds %struct.anon.3, ptr %skb, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 0, ptr noundef null, ptr noundef %skb, ptr noundef %23, ptr noundef null, ptr noundef nonnull @dn_route_rx_packet) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @dn_route_rx_packet(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %skb) #13
  br label %cleanup

drop_it:                                          ; preds = %pskb_may_pull.exit.drop_it_crit_edge, %if.end.i.drop_it_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %drop_it, %if.then.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %drop_it ], [ %call1.i, %if.then.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_route_output_sock(ptr nocapture noundef %pprt, ptr noundef %fl, ptr noundef %sk, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 4
  %call = tail call fastcc i32 @__dn_route_output_key(ptr noundef %pprt, ptr noundef %fl, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 5
  %0 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flowic_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %2 = ptrtoint ptr %pprt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprt, align 4
  %call2 = tail call ptr @xfrm_lookup(ptr noundef nonnull @init_net, ptr noundef %3, ptr noundef %fl, ptr noundef %sk, i32 noundef 0) #13
  %4 = ptrtoint ptr %pprt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %pprt, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call2 to i32
  %6 = ptrtoint ptr %pprt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pprt, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %err.0 = phi i32 [ %5, %if.then4 ], [ 0, %if.then.if.end6_crit_edge ], [ 0, %land.lhs.true.if.end6_crit_edge ], [ %call, %entry.if.end6_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dn_route_output_key(ptr nocapture noundef writeonly %pprt, ptr nocapture noundef readonly %flp, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %fld.i = alloca %struct.flowidn, align 8
  %res.i = alloca %struct.dn_fib_res, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr = getelementptr inbounds %struct.flowidn, ptr %flp, i32 0, i32 2
  %0 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %saddr, align 2
  %daddr = getelementptr inbounds %struct.flowidn, ptr %flp, i32 0, i32 1
  %2 = ptrtoint ptr %daddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %daddr, align 8
  %xor24.i = xor i16 %3, %1
  %4 = lshr i16 %xor24.i, 3
  %xor5.i = xor i16 %4, %xor24.i
  %5 = lshr i16 %xor5.i, 5
  %xor10.i = xor i16 %5, %xor5.i
  %6 = lshr i16 %xor10.i, 10
  %xor15.i = xor i16 %6, %xor10.i
  %7 = load i32, ptr @dn_rt_hash_mask, align 4
  %conv17.i = zext i16 %xor15.i to i32
  %and.i = and i32 %7, %conv17.i
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end61_crit_edge

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then:                                          ; preds = %entry
  tail call fastcc void @local_bh_disable() #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.then.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock_bh.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 750, ptr noundef nonnull @.str.53) #13
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.then.rcu_read_lock_bh.exit_crit_edge
  %8 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx = getelementptr %struct.dn_rt_hash_bucket, ptr %8, i32 %and.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end10_crit_edge

rcu_read_lock_bh.exit.do.end10_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b82 = load i1, ptr @__dn_route_output_key.__warned, align 1
  br i1 %.b82, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__dn_route_output_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1250, ptr noundef nonnull @.str.1) #13
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %tobool12.not107 = icmp eq ptr %10, null
  br i1 %tobool12.not107, label %do.end10.for.end_crit_edge, label %for.body.lr.ph

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end10
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %flp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end59.for.body_crit_edge, %for.body.lr.ph
  %rt.0108 = phi ptr [ %10, %for.body.lr.ph ], [ %38, %do.end59.for.body_crit_edge ]
  %11 = ptrtoint ptr %daddr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %daddr, align 8
  %fld = getelementptr inbounds %struct.dn_route, ptr %rt.0108, i32 0, i32 3
  %daddr14 = getelementptr inbounds %struct.dn_route, ptr %rt.0108, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %daddr14 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %daddr14, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp = icmp eq i16 %12, %14
  br i1 %cmp, label %land.lhs.true17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true17:                                  ; preds = %for.body
  %15 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %saddr, align 2
  %saddr21 = getelementptr inbounds %struct.dn_route, ptr %rt.0108, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %saddr21 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %saddr21, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp23 = icmp eq i16 %16, %18
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true25:                                  ; preds = %land.lhs.true17
  %19 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flowic_mark, align 8
  %flowic_mark28 = getelementptr inbounds %struct.dn_route, ptr %rt.0108, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %flowic_mark28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flowic_mark28, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp29 = icmp eq i32 %20, %22
  br i1 %cmp29, label %land.lhs.true31, label %land.lhs.true25.for.inc_crit_edge

land.lhs.true25.for.inc_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true31:                                  ; preds = %land.lhs.true25
  %flowic_iif.i = getelementptr inbounds %struct.dn_route, ptr %rt.0108, i32 0, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flowic_iif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp eq i32 %24, 0
  br i1 %cmp.i, label %land.lhs.true34, label %land.lhs.true31.for.inc_crit_edge

land.lhs.true31.for.inc_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %25 = ptrtoint ptr %fld to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fld, align 8
  %27 = ptrtoint ptr %flp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flp, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp39 = icmp eq i32 %26, %28
  br i1 %cmp39, label %if.then41, label %land.lhs.true34.for.inc_crit_edge

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then41:                                        ; preds = %land.lhs.true34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt.0108, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #13, !srcloc !193
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  br label %dst_hold.exit.i

do.end10.i.i:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 231, i32 noundef 9, ptr noundef null) #13
  br label %dst_hold.exit.i

dst_hold.exit.i:                                  ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i
  %lastuse.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt.0108, i32 0, i32 12
  %31 = ptrtoint ptr %lastuse.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lastuse.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %29)
  %cmp.not.i.i = icmp eq i32 %32, %29
  br i1 %cmp.not.i.i, label %dst_hold.exit.i.dst_hold_and_use.exit_crit_edge, label %if.then.i.i, !prof !191

dst_hold.exit.i.dst_hold_and_use.exit_crit_edge:  ; preds = %dst_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_hold_and_use.exit

if.then.i.i:                                      ; preds = %dst_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %__use.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt.0108, i32 0, i32 11
  %33 = ptrtoint ptr %__use.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %__use.i.i, align 4
  %inc.i.i = add i32 %34, 1
  store i32 %inc.i.i, ptr %__use.i.i, align 4
  %35 = ptrtoint ptr %lastuse.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %29, ptr %lastuse.i.i, align 4
  br label %dst_hold_and_use.exit

dst_hold_and_use.exit:                            ; preds = %if.then.i.i, %dst_hold.exit.i.dst_hold_and_use.exit_crit_edge
  %call.i83 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i83, label %dst_hold_and_use.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i86

dst_hold_and_use.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %dst_hold_and_use.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i86:                                ; preds = %dst_hold_and_use.exit
  %call1.i84 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84)
  %tobool.not.i85 = icmp eq i32 %call1.i84, 0
  br i1 %tobool.not.i85, label %land.lhs.true.i86.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i88

land.lhs.true.i86.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i88:                               ; preds = %land.lhs.true.i86
  %.b4.i87 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i87, label %land.lhs.true2.i88.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i89

land.lhs.true2.i88.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

if.then.i89:                                      ; preds = %land.lhs.true2.i88
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 761, ptr noundef nonnull @.str.55) #13
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i89, %land.lhs.true2.i88.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i86.rcu_read_unlock_bh.exit_crit_edge, %dst_hold_and_use.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  tail call fastcc void @local_bh_enable() #13
  %36 = ptrtoint ptr %pprt to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rt.0108, ptr %pprt, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true34.for.inc_crit_edge, %land.lhs.true31.for.inc_crit_edge, %land.lhs.true25.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dn_next = getelementptr inbounds %struct.dn_route, ptr %rt.0108, i32 0, i32 1
  %37 = ptrtoint ptr %dn_next to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %dn_next, align 8
  %call49 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %for.inc.do.end59_crit_edge

for.inc.do.end59_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

land.lhs.true51:                                  ; preds = %for.inc
  %call52 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true51.do.end59_crit_edge, label %land.lhs.true54

land.lhs.true51.do.end59_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %.b8081 = load i1, ptr @__dn_route_output_key.__warned.45, align 1
  br i1 %.b8081, label %land.lhs.true54.do.end59_crit_edge, label %if.then56

land.lhs.true54.do.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

if.then56:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__dn_route_output_key.__warned.45, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1251, ptr noundef nonnull @.str.1) #13
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %land.lhs.true54.do.end59_crit_edge, %land.lhs.true51.do.end59_crit_edge, %for.inc.do.end59_crit_edge
  %tobool12.not = icmp eq ptr %38, null
  br i1 %tobool12.not, label %do.end59.for.end_crit_edge, label %do.end59.for.body_crit_edge

do.end59.for.body_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end59.for.end_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.end59.for.end_crit_edge, %do.end10.for.end_crit_edge
  %call.i90 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i90, label %for.end.rcu_read_unlock_bh.exit97_crit_edge, label %land.lhs.true.i93

for.end.rcu_read_unlock_bh.exit97_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit97

land.lhs.true.i93:                                ; preds = %for.end
  %call1.i91 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.rcu_read_unlock_bh.exit97_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.rcu_read_unlock_bh.exit97_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit97

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.rcu_read_unlock_bh.exit97_crit_edge, label %if.then.i96

land.lhs.true2.i95.rcu_read_unlock_bh.exit97_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit97

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 761, ptr noundef nonnull @.str.55) #13
  br label %rcu_read_unlock_bh.exit97

rcu_read_unlock_bh.exit97:                        ; preds = %if.then.i96, %land.lhs.true2.i95.rcu_read_unlock_bh.exit97_crit_edge, %land.lhs.true.i93.rcu_read_unlock_bh.exit97_crit_edge, %for.end.rcu_read_unlock_bh.exit97_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  tail call fastcc void @local_bh_enable() #13
  br label %if.end61

if.end61:                                         ; preds = %rcu_read_unlock_bh.exit97, %entry.if.end61_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fld.i) #13
  %39 = getelementptr inbounds i8, ptr %fld.i, i32 32
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -1, ptr %39, align 8, !annotation !195
  %41 = ptrtoint ptr %flp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flp, align 8
  %43 = ptrtoint ptr %fld.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fld.i, align 8
  %flowic_iif.i98 = getelementptr inbounds %struct.flowi_common, ptr %fld.i, i32 0, i32 1
  %44 = ptrtoint ptr %flowic_iif.i98 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %flowic_iif.i98, align 4
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fld.i, i32 0, i32 2
  %flowic_mark4.i = getelementptr inbounds %struct.flowi_common, ptr %flp, i32 0, i32 2
  %45 = ptrtoint ptr %flowic_mark4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flowic_mark4.i, align 8
  %47 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %flowic_mark.i, align 8
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fld.i, i32 0, i32 3
  %daddr.i = getelementptr inbounds %struct.flowidn, ptr %fld.i, i32 0, i32 1
  %48 = call ptr @memset(ptr %flowic_tos.i, i32 0, i32 24)
  %49 = ptrtoint ptr %daddr to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %daddr, align 8
  %51 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %daddr.i, align 8
  %saddr.i = getelementptr inbounds %struct.flowidn, ptr %fld.i, i32 0, i32 2
  %52 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %saddr, align 2
  %54 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %saddr.i, align 2
  %uli.i = getelementptr inbounds %struct.flowidn, ptr %fld.i, i32 0, i32 3
  %55 = ptrtoint ptr %uli.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %uli.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res.i) #13
  %56 = call ptr @memcpy(ptr %res.i, ptr @__const.dn_route_output_slow.res, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_debug_level to i32))
  %57 = load i32, ptr @decnet_debug_level, align 4
  %and.i99 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i100 = icmp eq i32 %and.i99, 0
  br i1 %tobool.not.i100, label %if.end61.if.end.i_crit_edge, label %do.end.i

if.end61.if.end.i_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %58 = tail call i16 @llvm.bswap.i16(i16 %50) #13
  %conv.i = zext i16 %58 to i32
  %59 = tail call i16 @llvm.bswap.i16(i16 %53) #13
  %conv9.i = zext i16 %59 to i32
  %call.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef %46, i32 noundef 1, i32 noundef %42) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end61.if.end.i_crit_edge
  %60 = ptrtoint ptr %flp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool16.not.i = icmp eq i32 %61, 0
  br i1 %tobool16.not.i, label %if.end29.thread.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i
  %call20.i = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %61) #13
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.then17.i.dn_route_output_slow.exit_crit_edge, label %land.lhs.true.i103

if.then17.i.dn_route_output_slow.exit_crit_edge:  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_output_slow.exit

land.lhs.true.i103:                               ; preds = %if.then17.i
  %dn_ptr.i = getelementptr inbounds %struct.net_device, ptr %call20.i, i32 0, i32 79
  %62 = ptrtoint ptr %dn_ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dn_ptr.i, align 4
  %cmp.i102 = icmp eq ptr %63, null
  br i1 %cmp.i102, label %do.body1.i.i, label %if.end29.i

do.body1.i.i:                                     ; preds = %land.lhs.true.i103
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call20.i, i32 0, i32 118
  %65 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %73, %67
  %74 = inttoptr i32 %add.i.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %add13.i.i = add i32 %76, -1
  store i32 %add13.i.i, ptr %74, align 4
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i.i = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !190

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #13, !srcloc !198
  br label %dn_route_output_slow.exit

if.end29.i:                                       ; preds = %land.lhs.true.i103
  %78 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %saddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool31.not.i = icmp eq i16 %79, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end94.i_crit_edge, label %if.then34.i

if.end29.i.if.end94.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94.i

if.end29.thread.i:                                ; preds = %if.end.i
  %80 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %saddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool31.not623.i = icmp eq i16 %81, 0
  br i1 %tobool31.not623.i, label %if.end94.thread.i, label %if.end40.i

if.then34.i:                                      ; preds = %if.end29.i
  %call36.i = tail call fastcc i32 @dn_dev_islocal(ptr noundef nonnull %call20.i, i16 noundef zeroext %79) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.body1.i522.i, label %if.then34.i.if.end94.i_crit_edge

if.then34.i.if.end94.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94.i

do.body1.i522.i:                                  ; preds = %if.then34.i
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i514.i = getelementptr inbounds %struct.net_device, ptr %call20.i, i32 0, i32 118
  %83 = ptrtoint ptr %pcpu_refcnt.i514.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcpu_refcnt.i514.i, align 4
  %85 = ptrtoint ptr %84 to i32
  %86 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i515.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i515.i to ptr
  %cpu.i516.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %cpu.i516.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cpu.i516.i, align 4
  %arrayidx.i517.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx.i517.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i517.i, align 4
  %add.i518.i = add i32 %91, %85
  %92 = inttoptr i32 %add.i518.i to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %add13.i519.i = add i32 %94, -1
  store i32 %add13.i519.i, ptr %92, align 4
  %95 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i520.i = and i32 %95, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i520.i)
  %tobool24.not.i521.i = icmp eq i32 %and.i.i.i520.i, 0
  br i1 %tobool24.not.i521.i, label %if.then28.i523.i, label %do.body1.i522.i.dev_put.exit525.i_crit_edge, !prof !190

do.body1.i522.i.dev_put.exit525.i_crit_edge:      ; preds = %do.body1.i522.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit525.i

if.then28.i523.i:                                 ; preds = %do.body1.i522.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit525.i

dev_put.exit525.i:                                ; preds = %if.then28.i523.i, %do.body1.i522.i.dev_put.exit525.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #13, !srcloc !198
  br label %dn_route_output_slow.exit

if.end40.i:                                       ; preds = %if.end29.thread.i
  %96 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i.i.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %99, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !199
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end40.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end40.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end40.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i104

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i104:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i104, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end40.i.rcu_read_lock.exit.i_crit_edge
  %call42.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true44.i, label %rcu_read_lock.exit.i.do.end52.i_crit_edge

rcu_read_lock.exit.i.do.end52.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52.i

land.lhs.true44.i:                                ; preds = %rcu_read_lock.exit.i
  %call45.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true44.i.do.end52.i_crit_edge, label %land.lhs.true47.i

land.lhs.true44.i.do.end52.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52.i

land.lhs.true47.i:                                ; preds = %land.lhs.true44.i
  %.b511.i = load i1, ptr @dn_route_output_slow.__warned, align 1
  br i1 %.b511.i, label %land.lhs.true47.i.do.end52.i_crit_edge, label %if.then49.i

land.lhs.true47.i.do.end52.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52.i

if.then49.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_route_output_slow.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1004, ptr noundef nonnull @.str.48) #13
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then49.i, %land.lhs.true47.i.do.end52.i_crit_edge, %land.lhs.true44.i.do.end52.i_crit_edge, %rcu_read_lock.exit.i.do.end52.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn704.i = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp58.not706.i = icmp eq ptr %.pn704.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp58.not706.i, label %do.end52.i.for.end.i_crit_edge, label %do.end52.i.for.body.i_crit_edge

do.end52.i.for.body.i_crit_edge:                  ; preds = %do.end52.i
  br label %for.body.i

do.end52.i.for.end.i_crit_edge:                   ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end52.i.for.body.i_crit_edge
  %.pn707.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn704.i, %do.end52.i.for.body.i_crit_edge ]
  %dev.0708.i = getelementptr i8, ptr %.pn707.i, i32 -40
  %dn_ptr60.i = getelementptr i8, ptr %.pn707.i, i32 508
  %100 = ptrtoint ptr %dn_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dn_ptr60.i, align 4
  %tobool61.not.i = icmp eq ptr %101, null
  br i1 %tobool61.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end63.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end63.i:                                       ; preds = %for.body.i
  %102 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %saddr, align 2
  %call65.i = tail call fastcc i32 @dn_dev_islocal(ptr noundef %dev.0708.i, i16 noundef zeroext %103) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end63.i.for.inc.i_crit_edge, label %if.end68.i

if.end63.i.for.inc.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end68.i:                                       ; preds = %if.end63.i
  %flags69.i = getelementptr i8, ptr %.pn707.i, i32 64
  %104 = ptrtoint ptr %flags69.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags69.i, align 8
  %and70.i = and i32 %105, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.end68.i.for.end.i_crit_edge, label %land.lhs.true72.i

if.end68.i.for.end.i_crit_edge:                   ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

land.lhs.true72.i:                                ; preds = %if.end68.i
  %106 = ptrtoint ptr %daddr to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %daddr, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool75.not.i = icmp eq i16 %107, 0
  br i1 %tobool75.not.i, label %land.lhs.true72.i.for.end.i_crit_edge, label %land.lhs.true76.i

land.lhs.true72.i.for.end.i_crit_edge:            ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

land.lhs.true76.i:                                ; preds = %land.lhs.true72.i
  %call78.i = tail call fastcc i32 @dn_dev_islocal(ptr noundef %dev.0708.i, i16 noundef zeroext %107) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %land.lhs.true76.i.for.inc.i_crit_edge, label %land.lhs.true76.i.for.end.i_crit_edge

land.lhs.true76.i.for.end.i_crit_edge:            ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

land.lhs.true76.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true76.i.for.inc.i_crit_edge, %if.end63.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %108 = ptrtoint ptr %.pn707.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn.i = load volatile ptr, ptr %.pn707.i, align 4
  %cmp58.not.i = icmp eq ptr %.pn.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp58.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true76.i.for.end.i_crit_edge, %land.lhs.true72.i.for.end.i_crit_edge, %if.end68.i.for.end.i_crit_edge, %do.end52.i.for.end.i_crit_edge
  %dev_out.2.i = phi ptr [ null, %do.end52.i.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ], [ %dev.0708.i, %land.lhs.true76.i.for.end.i_crit_edge ], [ %dev.0708.i, %land.lhs.true72.i.for.end.i_crit_edge ], [ %dev.0708.i, %if.end68.i.for.end.i_crit_edge ]
  %call.i526.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i526.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i529.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i529.i:                             ; preds = %for.end.i
  %call1.i527.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i527.i)
  %tobool.not.i528.i = icmp eq i32 %call1.i527.i, 0
  br i1 %tobool.not.i528.i, label %land.lhs.true.i529.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i531.i

land.lhs.true.i529.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i529.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i531.i:                            ; preds = %land.lhs.true.i529.i
  %.b4.i530.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i530.i, label %land.lhs.true2.i531.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i532.i

land.lhs.true2.i531.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i531.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i532.i:                                   ; preds = %land.lhs.true2.i531.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i532.i, %land.lhs.true2.i531.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i529.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  %109 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i.i533.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i533.i to ptr
  %preempt_count.i.i.i.i534.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i.i.i534.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i.i.i534.i, align 4
  %sub.i.i.i.i = add i32 %112, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i534.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %cmp90.i = icmp eq ptr %dev_out.2.i, null
  br i1 %cmp90.i, label %rcu_read_unlock.exit.i.dn_route_output_slow.exit_crit_edge, label %do.body1.i544.i

rcu_read_unlock.exit.i.dn_route_output_slow.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_output_slow.exit

do.body1.i544.i:                                  ; preds = %rcu_read_unlock.exit.i
  %113 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i536.i = getelementptr inbounds %struct.net_device, ptr %dev_out.2.i, i32 0, i32 118
  %114 = ptrtoint ptr %pcpu_refcnt.i536.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pcpu_refcnt.i536.i, align 4
  %116 = ptrtoint ptr %115 to i32
  %117 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i537.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i537.i to ptr
  %cpu.i538.i = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %cpu.i538.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cpu.i538.i, align 4
  %arrayidx.i539.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %120
  %121 = ptrtoint ptr %arrayidx.i539.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i539.i, align 4
  %add.i540.i = add i32 %122, %116
  %123 = inttoptr i32 %add.i540.i to ptr
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %add13.i541.i = add i32 %125, 1
  store i32 %add13.i541.i, ptr %123, align 4
  %126 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i542.i = and i32 %126, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i542.i)
  %tobool24.not.i543.i = icmp eq i32 %and.i.i.i542.i, 0
  br i1 %tobool24.not.i543.i, label %if.then28.i545.i, label %do.body1.i544.i.dev_hold.exit.i_crit_edge, !prof !190

do.body1.i544.i.dev_hold.exit.i_crit_edge:        ; preds = %do.body1.i544.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_hold.exit.i

if.then28.i545.i:                                 ; preds = %do.body1.i544.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i545.i, %do.body1.i544.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %113) #13, !srcloc !198
  br label %if.end94.i

if.end94.i:                                       ; preds = %dev_hold.exit.i, %if.then34.i.if.end94.i_crit_edge, %if.end29.i.if.end94.i_crit_edge
  %dev_out.3.i = phi ptr [ %call20.i, %if.then34.i.if.end94.i_crit_edge ], [ %dev_out.2.i, %dev_hold.exit.i ], [ %call20.i, %if.end29.i.if.end94.i_crit_edge ]
  %127 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %daddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool96.not.i = icmp eq i16 %128, 0
  br i1 %tobool96.not.i, label %if.then97.i, label %if.end94.i.if.end117.i_crit_edge

if.end94.i.if.end117.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117.i

if.end94.thread.i:                                ; preds = %if.end29.thread.i
  %129 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %daddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool96.not628.i = icmp eq i16 %130, 0
  br i1 %tobool96.not628.i, label %if.then97.thread.i, label %if.end94.thread.i.if.end117.i_crit_edge

if.end94.thread.i.if.end117.i_crit_edge:          ; preds = %if.end94.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117.i

if.then97.thread.i:                               ; preds = %if.end94.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %131 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %saddr.i, align 2
  %133 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %daddr.i, align 8
  br label %dev_put.exit559.i

if.then97.i:                                      ; preds = %if.end94.i
  %134 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %saddr.i, align 2
  %136 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %daddr.i, align 8
  %137 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i548.i = getelementptr inbounds %struct.net_device, ptr %dev_out.3.i, i32 0, i32 118
  %138 = ptrtoint ptr %pcpu_refcnt.i548.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pcpu_refcnt.i548.i, align 4
  %140 = ptrtoint ptr %139 to i32
  %141 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i549.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i.i549.i to ptr
  %cpu.i550.i = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %cpu.i550.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cpu.i550.i, align 4
  %arrayidx.i551.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %144
  %145 = ptrtoint ptr %arrayidx.i551.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i551.i, align 4
  %add.i552.i = add i32 %146, %140
  %147 = inttoptr i32 %add.i552.i to ptr
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %add13.i553.i = add i32 %149, -1
  store i32 %add13.i553.i, ptr %147, align 4
  %150 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i554.i = and i32 %150, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i554.i)
  %tobool24.not.i555.i = icmp eq i32 %and.i.i.i554.i, 0
  br i1 %tobool24.not.i555.i, label %if.then28.i557.i, label %if.then97.i.do.end30.i558.i_crit_edge, !prof !190

if.then97.i.do.end30.i558.i_crit_edge:            ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i558.i

if.then28.i557.i:                                 ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i558.i

do.end30.i558.i:                                  ; preds = %if.then28.i557.i, %if.then97.i.do.end30.i558.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %137) #13, !srcloc !198
  br label %dev_put.exit559.i

dev_put.exit559.i:                                ; preds = %do.end30.i558.i, %if.then97.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 4
  %dn_ptr100.i = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 79
  %152 = ptrtoint ptr %dn_ptr100.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dn_ptr100.i, align 4
  %tobool101.not.i = icmp eq ptr %153, null
  br i1 %tobool101.not.i, label %dev_put.exit559.i.dn_route_output_slow.exit_crit_edge, label %if.end103.i

dev_put.exit559.i.dn_route_output_slow.exit_crit_edge: ; preds = %dev_put.exit559.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_output_slow.exit

if.end103.i:                                      ; preds = %dev_put.exit559.i
  %tobool.not.i560.i = icmp eq ptr %151, null
  br i1 %tobool.not.i560.i, label %if.end103.i.dev_hold.exit572.i_crit_edge, label %do.body1.i569.i

if.end103.i.dev_hold.exit572.i_crit_edge:         ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_hold.exit572.i

do.body1.i569.i:                                  ; preds = %if.end103.i
  %154 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i561.i = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 118
  %155 = ptrtoint ptr %pcpu_refcnt.i561.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pcpu_refcnt.i561.i, align 4
  %157 = ptrtoint ptr %156 to i32
  %158 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i562.i = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i562.i to ptr
  %cpu.i563.i = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %cpu.i563.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cpu.i563.i, align 4
  %arrayidx.i564.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %161
  %162 = ptrtoint ptr %arrayidx.i564.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i564.i, align 4
  %add.i565.i = add i32 %163, %157
  %164 = inttoptr i32 %add.i565.i to ptr
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %add13.i566.i = add i32 %166, 1
  store i32 %add13.i566.i, ptr %164, align 4
  %167 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i567.i = and i32 %167, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i567.i)
  %tobool24.not.i568.i = icmp eq i32 %and.i.i.i567.i, 0
  br i1 %tobool24.not.i568.i, label %if.then28.i570.i, label %do.body1.i569.i.do.end30.i571.i_crit_edge, !prof !190

do.body1.i569.i.do.end30.i571.i_crit_edge:        ; preds = %do.body1.i569.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i571.i

if.then28.i570.i:                                 ; preds = %do.body1.i569.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i571.i

do.end30.i571.i:                                  ; preds = %if.then28.i570.i, %do.body1.i569.i.do.end30.i571.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %154) #13, !srcloc !198
  br label %dev_hold.exit572.i

dev_hold.exit572.i:                               ; preds = %do.end30.i571.i, %if.end103.i.dev_hold.exit572.i_crit_edge
  %168 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %daddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %tobool105.not.i = icmp eq i16 %169, 0
  br i1 %tobool105.not.i, label %if.then106.i, label %dev_hold.exit572.i.if.end114.i_crit_edge

dev_hold.exit572.i.if.end114.i_crit_edge:         ; preds = %dev_hold.exit572.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114.i

if.then106.i:                                     ; preds = %dev_hold.exit572.i
  %call107.i = tail call fastcc zeroext i16 @dnet_select_source(ptr noundef %151, i16 noundef zeroext 0, i32 noundef 254) #13
  %170 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %call107.i, ptr %saddr.i, align 2
  %171 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %call107.i, ptr %daddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call107.i)
  %tobool111.not.i = icmp eq i16 %call107.i, 0
  br i1 %tobool111.not.i, label %if.then106.i.if.end386.i_crit_edge, label %if.then106.i.if.end114.i_crit_edge

if.then106.i.if.end114.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114.i

if.then106.i.if.end386.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end386.i

if.end114.i:                                      ; preds = %if.then106.i.if.end114.i_crit_edge, %dev_hold.exit572.i.if.end114.i_crit_edge
  %172 = ptrtoint ptr %fld.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %fld.i, align 8
  %type.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 4
  %173 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 2, ptr %type.i, align 2
  br label %make_route.i

if.end117.i:                                      ; preds = %if.end94.thread.i.if.end117.i_crit_edge, %if.end94.i.if.end117.i_crit_edge
  %174 = phi i16 [ %130, %if.end94.thread.i.if.end117.i_crit_edge ], [ %128, %if.end94.i.if.end117.i_crit_edge ]
  %dev_out.3629.i = phi ptr [ null, %if.end94.thread.i.if.end117.i_crit_edge ], [ %dev_out.3.i, %if.end94.i.if.end117.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_debug_level to i32))
  %175 = load i32, ptr @decnet_debug_level, align 4
  %and118.i = and i32 %175, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %if.end117.i.if.end132.i_crit_edge, label %do.end123.i

if.end117.i.if.end132.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132.i

do.end123.i:                                      ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #15
  %176 = tail call i16 @llvm.bswap.i16(i16 %174) #13
  %conv126.i = zext i16 %176 to i32
  %177 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %saddr.i, align 2
  %179 = tail call i16 @llvm.bswap.i16(i16 %178) #13
  %conv128.i = zext i16 %179 to i32
  %180 = ptrtoint ptr %fld.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %fld.i, align 8
  %call131.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv126.i, i32 noundef %conv128.i, i32 noundef %181, i32 noundef %flags) #16
  br label %if.end132.i

if.end132.i:                                      ; preds = %do.end123.i, %if.end117.i.if.end132.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool133.not.i = icmp eq i32 %flags, 0
  br i1 %tobool133.not.i, label %lor.lhs.false.i, label %if.end132.i.if.end178.i_crit_edge

if.end132.i.if.end178.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178.i

lor.lhs.false.i:                                  ; preds = %if.end132.i
  %call134.i = call i32 @dn_fib_lookup(ptr noundef nonnull %fld.i, ptr noundef nonnull %res.i) #13
  %182 = zext i32 %call134.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call134.i, label %lor.lhs.false.i.dn_route_output_slow.exit_crit_edge [
    i32 0, label %if.end256.i
    i32 -3, label %if.then143.i
  ]

lor.lhs.false.i.dn_route_output_slow.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_output_slow.exit

if.then143.i:                                     ; preds = %lor.lhs.false.i
  %call145.i = call ptr @neigh_lookup_nodev(ptr noundef nonnull @dn_neigh_table, ptr noundef nonnull @init_net, ptr noundef %daddr.i) #13
  %tobool146.not.i = icmp eq ptr %call145.i, null
  br i1 %tobool146.not.i, label %if.then143.i.if.end178.i_crit_edge, label %if.then147.i

if.then143.i.if.end178.i_crit_edge:               ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178.i

if.then147.i:                                     ; preds = %if.then143.i
  %183 = ptrtoint ptr %flp to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %flp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool150.not.i = icmp eq i32 %184, 0
  br i1 %tobool150.not.i, label %if.then147.i.lor.lhs.false157.i_crit_edge, label %land.lhs.true151.i

if.then147.i.lor.lhs.false157.i_crit_edge:        ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false157.i

land.lhs.true151.i:                               ; preds = %if.then147.i
  %dev152.i = getelementptr inbounds %struct.neighbour, ptr %call145.i, i32 0, i32 25
  %185 = ptrtoint ptr %dev152.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev152.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %186, i32 0, i32 17
  %187 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %184)
  %cmp155.not.i = icmp eq i32 %188, %184
  br i1 %cmp155.not.i, label %land.lhs.true151.i.lor.lhs.false157.i_crit_edge, label %land.lhs.true151.i.if.then166.i_crit_edge

land.lhs.true151.i.if.then166.i_crit_edge:        ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then166.i

land.lhs.true151.i.lor.lhs.false157.i_crit_edge:  ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false157.i

lor.lhs.false157.i:                               ; preds = %land.lhs.true151.i.lor.lhs.false157.i_crit_edge, %if.then147.i.lor.lhs.false157.i_crit_edge
  %189 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %saddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %190)
  %tobool160.not.i = icmp eq i16 %190, 0
  br i1 %tobool160.not.i, label %lor.lhs.false157.i.if.else.i_crit_edge, label %land.lhs.true161.i

lor.lhs.false157.i.if.else.i_crit_edge:           ; preds = %lor.lhs.false157.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true161.i:                               ; preds = %lor.lhs.false157.i
  %dev162.i = getelementptr inbounds %struct.neighbour, ptr %call145.i, i32 0, i32 25
  %191 = ptrtoint ptr %dev162.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev162.i, align 4
  %call164.i = call fastcc i32 @dn_dev_islocal(ptr noundef %192, i16 noundef zeroext %190) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %tobool165.not.i = icmp eq i32 %call164.i, 0
  br i1 %tobool165.not.i, label %land.lhs.true161.i.if.then166.i_crit_edge, label %land.lhs.true161.i.if.else.i_crit_edge

land.lhs.true161.i.if.else.i_crit_edge:           ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true161.i.if.then166.i_crit_edge:        ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then166.i

if.then166.i:                                     ; preds = %land.lhs.true161.i.if.then166.i_crit_edge, %land.lhs.true151.i.if.then166.i_crit_edge
  call fastcc void @neigh_release(ptr noundef nonnull %call145.i) #13
  br label %if.end178.i

if.else.i:                                        ; preds = %land.lhs.true161.i.if.else.i_crit_edge, %lor.lhs.false157.i.if.else.i_crit_edge
  call fastcc void @dev_put(ptr noundef %dev_out.3629.i) #13
  %dev167.i = getelementptr inbounds %struct.neighbour, ptr %call145.i, i32 0, i32 25
  %193 = ptrtoint ptr %dev167.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev167.i, align 4
  %195 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %daddr.i, align 8
  %call169.i = call fastcc i32 @dn_dev_islocal(ptr noundef %194, i16 noundef zeroext %196) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %tobool170.not.i = icmp eq i32 %call169.i, 0
  br i1 %tobool170.not.i, label %if.else173.i, label %if.then171.i

if.then171.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 4
  %type172.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 4
  %198 = ptrtoint ptr %type172.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 2, ptr %type172.i, align 2
  br label %if.end175.i

if.else173.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %199 = ptrtoint ptr %dev167.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev167.i, align 4
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.else173.i, %if.then171.i
  %dev_out.4.i = phi ptr [ %197, %if.then171.i ], [ %200, %if.else173.i ]
  call fastcc void @dev_hold(ptr noundef %dev_out.4.i) #13
  br label %if.end223.i

if.end178.i:                                      ; preds = %if.then166.i, %if.then143.i.if.end178.i_crit_edge, %if.end132.i.if.end178.i_crit_edge
  %cmp179.i = icmp eq ptr %dev_out.3629.i, null
  br i1 %cmp179.i, label %if.end183.i, label %if.end178.i.if.end187.i_crit_edge

if.end178.i.if.end187.i_crit_edge:                ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187.i

if.end183.i:                                      ; preds = %if.end178.i
  %call182.i = call ptr @dn_dev_get_default() #13
  %cmp184.i = icmp eq ptr %call182.i, null
  br i1 %cmp184.i, label %if.end183.i.dn_route_output_slow.exit_crit_edge, label %if.end183.i.if.end187.i_crit_edge

if.end183.i.if.end187.i_crit_edge:                ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187.i

if.end183.i.dn_route_output_slow.exit_crit_edge:  ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_output_slow.exit

if.end187.i:                                      ; preds = %if.end183.i.if.end187.i_crit_edge, %if.end178.i.if.end187.i_crit_edge
  %dev_out.5638.i = phi ptr [ %call182.i, %if.end183.i.if.end187.i_crit_edge ], [ %dev_out.3629.i, %if.end178.i.if.end187.i_crit_edge ]
  %dn_ptr192.i = getelementptr inbounds %struct.net_device, ptr %dev_out.5638.i, i32 0, i32 79
  %201 = ptrtoint ptr %dn_ptr192.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile ptr, ptr %dn_ptr192.i, align 4
  %tobool194.not.i = icmp eq ptr %202, null
  br i1 %tobool194.not.i, label %if.end187.i.do.body1.i616.i_crit_edge, label %if.end196.i

if.end187.i.do.body1.i616.i_crit_edge:            ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i616.i

if.end196.i:                                      ; preds = %if.end187.i
  %203 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %daddr.i, align 8
  %call198.i = call fastcc i32 @dn_dev_islocal(ptr noundef nonnull %dev_out.5638.i, i16 noundef zeroext %204) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198.i)
  %tobool199.not.i = icmp eq i32 %call198.i, 0
  br i1 %tobool199.not.i, label %if.end202.i, label %do.body1.i582.i

do.body1.i582.i:                                  ; preds = %if.end196.i
  %205 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i574.i = getelementptr inbounds %struct.net_device, ptr %dev_out.5638.i, i32 0, i32 118
  %206 = ptrtoint ptr %pcpu_refcnt.i574.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %pcpu_refcnt.i574.i, align 4
  %208 = ptrtoint ptr %207 to i32
  %209 = call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i575.i = and i32 %209, -16384
  %210 = inttoptr i32 %and.i.i575.i to ptr
  %cpu.i576.i = getelementptr inbounds %struct.thread_info, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %cpu.i576.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %cpu.i576.i, align 4
  %arrayidx.i577.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %212
  %213 = ptrtoint ptr %arrayidx.i577.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i577.i, align 4
  %add.i578.i = add i32 %214, %208
  %215 = inttoptr i32 %add.i578.i to ptr
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 4
  %add13.i579.i = add i32 %217, -1
  store i32 %add13.i579.i, ptr %215, align 4
  %218 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i580.i = and i32 %218, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i580.i)
  %tobool24.not.i581.i = icmp eq i32 %and.i.i.i580.i, 0
  br i1 %tobool24.not.i581.i, label %if.then28.i583.i, label %do.body1.i582.i.dev_put.exit585.i_crit_edge, !prof !190

do.body1.i582.i.dev_put.exit585.i_crit_edge:      ; preds = %do.body1.i582.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit585.i

if.then28.i583.i:                                 ; preds = %do.body1.i582.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit585.i

dev_put.exit585.i:                                ; preds = %if.then28.i583.i, %do.body1.i582.i.dev_put.exit585.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %205) #13, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27) to i32))
  %219 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 4
  %tobool.not.i586.i = icmp eq ptr %219, null
  br i1 %tobool.not.i586.i, label %dev_put.exit585.i.dev_hold.exit598.i_crit_edge, label %do.body1.i595.i

dev_put.exit585.i.dev_hold.exit598.i_crit_edge:   ; preds = %dev_put.exit585.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_hold.exit598.i

do.body1.i595.i:                                  ; preds = %dev_put.exit585.i
  %220 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i587.i = getelementptr inbounds %struct.net_device, ptr %219, i32 0, i32 118
  %221 = ptrtoint ptr %pcpu_refcnt.i587.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pcpu_refcnt.i587.i, align 4
  %223 = ptrtoint ptr %222 to i32
  %224 = call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i588.i = and i32 %224, -16384
  %225 = inttoptr i32 %and.i.i588.i to ptr
  %cpu.i589.i = getelementptr inbounds %struct.thread_info, ptr %225, i32 0, i32 3
  %226 = ptrtoint ptr %cpu.i589.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %cpu.i589.i, align 4
  %arrayidx.i590.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %227
  %228 = ptrtoint ptr %arrayidx.i590.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx.i590.i, align 4
  %add.i591.i = add i32 %229, %223
  %230 = inttoptr i32 %add.i591.i to ptr
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %230, align 4
  %add13.i592.i = add i32 %232, 1
  store i32 %add13.i592.i, ptr %230, align 4
  %233 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i593.i = and i32 %233, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i593.i)
  %tobool24.not.i594.i = icmp eq i32 %and.i.i.i593.i, 0
  br i1 %tobool24.not.i594.i, label %if.then28.i596.i, label %do.body1.i595.i.do.end30.i597.i_crit_edge, !prof !190

do.body1.i595.i.do.end30.i597.i_crit_edge:        ; preds = %do.body1.i595.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i597.i

if.then28.i596.i:                                 ; preds = %do.body1.i595.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end30.i597.i

do.end30.i597.i:                                  ; preds = %if.then28.i596.i, %do.body1.i595.i.do.end30.i597.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %220) #13, !srcloc !198
  br label %dev_hold.exit598.i

dev_hold.exit598.i:                               ; preds = %do.end30.i597.i, %dev_put.exit585.i.dev_hold.exit598.i_crit_edge
  %type201.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 4
  %234 = ptrtoint ptr %type201.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 2, ptr %type201.i, align 2
  br label %if.then227.i

if.end202.i:                                      ; preds = %if.end196.i
  %router.i = getelementptr inbounds %struct.dn_dev, ptr %202, i32 0, i32 8
  %235 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %router.i, align 4
  %tobool.not.i599.i = icmp eq ptr %236, null
  br i1 %tobool.not.i599.i, label %if.end202.i.if.then227.i_crit_edge, label %if.then.i600.i

if.end202.i.if.then227.i_crit_edge:               ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then227.i

if.then.i600.i:                                   ; preds = %if.end202.i
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %236, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #13
  %237 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #13, !srcloc !201
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %237, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i600.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !190

if.then.i600.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i600.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i600.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %238 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %238)
  %.not.i.i.i.i.i = icmp sgt i32 %238, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.land.rhs.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !191

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.land.rhs.i_crit_edge:           ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i600.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i600.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.land.rhs.i_crit_edge
  %dev206.i = getelementptr inbounds %struct.neighbour, ptr %236, i32 0, i32 25
  %239 = ptrtoint ptr %dev206.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev206.i, align 4
  %cmp207.not.i = icmp eq ptr %240, %dev_out.5638.i
  br i1 %cmp207.not.i, label %land.rhs.i.if.end223.i_crit_edge, label %do.body212.i, !prof !191

land.rhs.i.if.end223.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end223.i

do.body212.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/decnet/dn_route.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1118, 0\0A.popsection", ""() #13, !srcloc !202
  unreachable

if.end223.i:                                      ; preds = %land.rhs.i.if.end223.i_crit_edge, %if.end175.i
  %neigh.1.i = phi ptr [ %236, %land.rhs.i.if.end223.i_crit_edge ], [ %call145.i, %if.end175.i ]
  %dev_out.6.i = phi ptr [ %dev_out.5638.i, %land.rhs.i.if.end223.i_crit_edge ], [ %dev_out.4.i, %if.end175.i ]
  %addr.i = getelementptr inbounds %struct.dn_neigh, ptr %neigh.1.i, i32 0, i32 1
  %241 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %cmp225.i = icmp eq i16 %242, 0
  br i1 %cmp225.i, label %if.end223.i.if.then227.i_crit_edge, label %if.end223.i.if.end229.i_crit_edge

if.end223.i.if.end229.i_crit_edge:                ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229.i

if.end223.i.if.then227.i_crit_edge:               ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then227.i

if.then227.i:                                     ; preds = %if.end223.i.if.then227.i_crit_edge, %if.end202.i.if.then227.i_crit_edge, %dev_hold.exit598.i
  %neigh.1644655.i = phi ptr [ %neigh.1.i, %if.end223.i.if.then227.i_crit_edge ], [ null, %if.end202.i.if.then227.i_crit_edge ], [ null, %dev_hold.exit598.i ]
  %dev_out.6645653.i = phi ptr [ %dev_out.6.i, %if.end223.i.if.then227.i_crit_edge ], [ %dev_out.5638.i, %if.end202.i.if.then227.i_crit_edge ], [ %219, %dev_hold.exit598.i ]
  %243 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %daddr.i, align 8
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.then227.i, %if.end223.i.if.end229.i_crit_edge
  %neigh.1644654.i = phi ptr [ %neigh.1644655.i, %if.then227.i ], [ %neigh.1.i, %if.end223.i.if.end229.i_crit_edge ]
  %dev_out.6645652.i = phi ptr [ %dev_out.6645653.i, %if.then227.i ], [ %dev_out.6.i, %if.end223.i.if.end229.i_crit_edge ]
  %gateway.1.i = phi i16 [ %244, %if.then227.i ], [ %242, %if.end223.i.if.end229.i_crit_edge ]
  %245 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %saddr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %246)
  %cmp232.i = icmp eq i16 %246, 0
  br i1 %cmp232.i, label %if.then234.i, label %if.end229.i.cleanup.thread663.i_crit_edge

if.end229.i.cleanup.thread663.i_crit_edge:        ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread663.i

if.then234.i:                                     ; preds = %if.end229.i
  %type235.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 4
  %247 = ptrtoint ptr %type235.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %type235.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %248)
  %cmp237.i = icmp eq i8 %248, 2
  %cond.i = select i1 %cmp237.i, i32 254, i32 253
  %call239.i = call fastcc zeroext i16 @dnet_select_source(ptr noundef %dev_out.6645652.i, i16 noundef zeroext %gateway.1.i, i32 noundef %cond.i) #13
  %249 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %call239.i, ptr %saddr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call239.i)
  %cmp243.i = icmp eq i16 %call239.i, 0
  br i1 %cmp243.i, label %land.lhs.true245.i, label %if.then234.i.cleanup.thread663.i_crit_edge

if.then234.i.cleanup.thread663.i_crit_edge:       ; preds = %if.then234.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread663.i

land.lhs.true245.i:                               ; preds = %if.then234.i
  %250 = ptrtoint ptr %type235.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %type235.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %251)
  %cmp248.not.i = icmp eq i8 %251, 2
  br i1 %cmp248.not.i, label %land.lhs.true245.i.cleanup.thread663.i_crit_edge, label %land.lhs.true245.i.done.i_crit_edge

land.lhs.true245.i.done.i_crit_edge:              ; preds = %land.lhs.true245.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i

land.lhs.true245.i.cleanup.thread663.i_crit_edge: ; preds = %land.lhs.true245.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread663.i

cleanup.thread663.i:                              ; preds = %land.lhs.true245.i.cleanup.thread663.i_crit_edge, %if.then234.i.cleanup.thread663.i_crit_edge, %if.end229.i.cleanup.thread663.i_crit_edge
  %ifindex253.i = getelementptr inbounds %struct.net_device, ptr %dev_out.6645652.i, i32 0, i32 17
  %252 = ptrtoint ptr %ifindex253.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %ifindex253.i, align 4
  %254 = ptrtoint ptr %fld.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %fld.i, align 8
  br label %make_route.i

if.end256.i:                                      ; preds = %lor.lhs.false.i
  %type257.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 4
  %255 = ptrtoint ptr %type257.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %type257.i, align 2
  %257 = zext i8 %256 to i64
  call void @__sanitizer_cov_trace_switch(i64 %257, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %256, label %if.end286.i [
    i8 10, label %if.end256.i.if.then385.i_crit_edge
    i8 2, label %if.then267.i
  ]

if.end256.i.if.then385.i_crit_edge:               ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then385.i

if.then267.i:                                     ; preds = %if.end256.i
  %258 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %saddr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %259)
  %tobool269.not.i = icmp eq i16 %259, 0
  br i1 %tobool269.not.i, label %if.then270.i, label %if.then267.i.if.end273.i_crit_edge

if.then267.i.if.end273.i_crit_edge:               ; preds = %if.then267.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273.i

if.then270.i:                                     ; preds = %if.then267.i
  call void @__sanitizer_cov_trace_pc() #15
  %260 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %daddr.i, align 8
  %262 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %261, ptr %saddr.i, align 2
  br label %if.end273.i

if.end273.i:                                      ; preds = %if.then270.i, %if.then267.i.if.end273.i_crit_edge
  call fastcc void @dev_put(ptr noundef %dev_out.3629.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27) to i32))
  %263 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 4
  call fastcc void @dev_hold(ptr noundef %263) #13
  %dn_ptr274.i = getelementptr inbounds %struct.net_device, ptr %263, i32 0, i32 79
  %264 = ptrtoint ptr %dn_ptr274.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dn_ptr274.i, align 4
  %tobool275.not.i = icmp eq ptr %265, null
  br i1 %tobool275.not.i, label %if.end273.i.if.then385.i_crit_edge, label %if.end277.i

if.end273.i.if.then385.i_crit_edge:               ; preds = %if.end273.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then385.i

if.end277.i:                                      ; preds = %if.end273.i
  %ifindex278.i = getelementptr inbounds %struct.net_device, ptr %263, i32 0, i32 17
  %266 = ptrtoint ptr %ifindex278.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %ifindex278.i, align 4
  %268 = ptrtoint ptr %fld.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %fld.i, align 8
  %fi.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 1
  %269 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %fi.i, align 4
  %tobool281.not.i = icmp eq ptr %270, null
  br i1 %tobool281.not.i, label %if.end277.i.if.end284.i_crit_edge, label %if.then282.i

if.end277.i.if.end284.i_crit_edge:                ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end284.i

if.then282.i:                                     ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @dn_fib_info_put(ptr noundef nonnull %270) #13
  br label %if.end284.i

if.end284.i:                                      ; preds = %if.then282.i, %if.end277.i.if.end284.i_crit_edge
  %271 = ptrtoint ptr %fi.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr null, ptr %fi.i, align 4
  br label %make_route.i

if.end286.i:                                      ; preds = %if.end256.i
  %fi287.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 1
  %272 = ptrtoint ptr %fi287.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %fi287.i, align 4
  %fib_nhs.i = getelementptr inbounds %struct.dn_fib_info, ptr %273, i32 0, i32 10
  %274 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %fib_nhs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %275)
  %cmp288.i = icmp sgt i32 %275, 1
  br i1 %cmp288.i, label %land.lhs.true290.i, label %if.end286.i.if.end296.i_crit_edge

if.end286.i.if.end296.i_crit_edge:                ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end296.i

land.lhs.true290.i:                               ; preds = %if.end286.i
  %276 = ptrtoint ptr %fld.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %fld.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %cmp293.i = icmp eq i32 %277, 0
  br i1 %cmp293.i, label %if.then295.i, label %land.lhs.true290.i.if.end296.i_crit_edge

land.lhs.true290.i.if.end296.i_crit_edge:         ; preds = %land.lhs.true290.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end296.i

if.then295.i:                                     ; preds = %land.lhs.true290.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dn_fib_select_multipath(ptr noundef nonnull %fld.i, ptr noundef nonnull %res.i) #13
  br label %if.end296.i

if.end296.i:                                      ; preds = %if.then295.i, %land.lhs.true290.i.if.end296.i_crit_edge, %if.end286.i.if.end296.i_crit_edge
  %278 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %saddr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %279)
  %tobool298.not.i = icmp eq i16 %279, 0
  br i1 %tobool298.not.i, label %if.then299.i, label %if.end296.i.if.end308.i_crit_edge

if.end296.i.if.end308.i_crit_edge:                ; preds = %if.end296.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end308.i

if.then299.i:                                     ; preds = %if.end296.i
  %280 = ptrtoint ptr %fi287.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %fi287.i, align 4
  %fib_prefsrc.i = getelementptr inbounds %struct.dn_fib_info, ptr %281, i32 0, i32 7
  %282 = ptrtoint ptr %fib_prefsrc.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %fib_prefsrc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %283)
  %tobool302.not.i = icmp eq i16 %283, 0
  br i1 %tobool302.not.i, label %cond.false.i, label %if.then299.i.cond.end.i_crit_edge

if.then299.i.cond.end.i_crit_edge:                ; preds = %if.then299.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then299.i
  call void @__sanitizer_cov_trace_pc() #15
  %nh_sel.i.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 3
  %284 = ptrtoint ptr %nh_sel.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %nh_sel.i.i, align 1
  %idxprom.i.i = zext i8 %285 to i32
  %arrayidx.i601.i = getelementptr %struct.dn_fib_info, ptr %281, i32 0, i32 12, i32 %idxprom.i.i
  %286 = ptrtoint ptr %arrayidx.i601.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx.i601.i, align 4
  %nh_gw.i.i = getelementptr %struct.dn_fib_info, ptr %281, i32 0, i32 12, i32 %idxprom.i.i, i32 6
  %288 = ptrtoint ptr %nh_gw.i.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %nh_gw.i.i, align 4
  %scope.i.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 5
  %290 = ptrtoint ptr %scope.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %scope.i.i, align 1
  %conv.i.i = zext i8 %291 to i32
  %call.i602.i = call fastcc zeroext i16 @dnet_select_source(ptr noundef %287, i16 noundef zeroext %289, i32 noundef %conv.i.i) #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then299.i.cond.end.i_crit_edge
  %cond305.in.i = phi i16 [ %call.i602.i, %cond.false.i ], [ %283, %if.then299.i.cond.end.i_crit_edge ]
  %292 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %cond305.in.i, ptr %saddr.i, align 2
  br label %if.end308.i

if.end308.i:                                      ; preds = %cond.end.i, %if.end296.i.if.end308.i_crit_edge
  call fastcc void @dev_put(ptr noundef %dev_out.3629.i) #13
  %293 = ptrtoint ptr %fi287.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %fi287.i, align 4
  %nh_sel.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 3
  %295 = ptrtoint ptr %nh_sel.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %nh_sel.i, align 1
  %idxprom.i = zext i8 %296 to i32
  %arrayidx.i = getelementptr %struct.dn_fib_info, ptr %294, i32 0, i32 12, i32 %idxprom.i
  %297 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx.i, align 4
  call fastcc void @dev_hold(ptr noundef %298) #13
  %ifindex310.i = getelementptr inbounds %struct.net_device, ptr %298, i32 0, i32 17
  %299 = ptrtoint ptr %ifindex310.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %ifindex310.i, align 4
  %301 = ptrtoint ptr %fld.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %300, ptr %fld.i, align 8
  %302 = ptrtoint ptr %fi287.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %fi287.i, align 4
  %304 = ptrtoint ptr %nh_sel.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %nh_sel.i, align 1
  %idxprom316.i = zext i8 %305 to i32
  %nh_gw.i = getelementptr %struct.dn_fib_info, ptr %303, i32 0, i32 12, i32 %idxprom316.i, i32 6
  %306 = ptrtoint ptr %nh_gw.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %nh_gw.i, align 4
  br label %make_route.i

make_route.i:                                     ; preds = %if.end308.i, %if.end284.i, %cleanup.thread663.i, %if.end114.i
  %gateway.3.i = phi i16 [ 0, %if.end284.i ], [ %307, %if.end308.i ], [ 0, %if.end114.i ], [ %gateway.1.i, %cleanup.thread663.i ]
  %free_res.0.i = phi i32 [ 1, %if.end284.i ], [ 1, %if.end308.i ], [ 0, %if.end114.i ], [ 0, %cleanup.thread663.i ]
  %neigh.3.i = phi ptr [ null, %if.end284.i ], [ null, %if.end308.i ], [ null, %if.end114.i ], [ %neigh.1644654.i, %cleanup.thread663.i ]
  %dev_out.8.i = phi ptr [ %263, %if.end284.i ], [ %298, %if.end308.i ], [ %151, %if.end114.i ], [ %dev_out.6645652.i, %cleanup.thread663.i ]
  %flags318.i = getelementptr inbounds %struct.net_device, ptr %dev_out.8.i, i32 0, i32 14
  %308 = ptrtoint ptr %flags318.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %flags318.i, align 8
  %call323.i = call ptr @dst_alloc(ptr noundef nonnull @dn_dst_ops, ptr noundef %dev_out.8.i, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #13
  %cmp324.i = icmp eq ptr %call323.i, null
  br i1 %cmp324.i, label %make_route.i.done.i_crit_edge, label %if.end327.i

make_route.i.done.i_crit_edge:                    ; preds = %make_route.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i

if.end327.i:                                      ; preds = %make_route.i
  %and319.i = and i32 %309, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319.i)
  %tobool320.not.i = icmp eq i32 %and319.i, 0
  %310 = shl nuw i32 %and319.i, 28
  %dn_next.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 1
  %311 = ptrtoint ptr %dn_next.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr null, ptr %dn_next.i, align 8
  %fld328.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 3
  %312 = call ptr @memset(ptr %fld328.i, i32 0, i32 48)
  %313 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %saddr, align 2
  %saddr331.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 3, i32 2
  %315 = ptrtoint ptr %saddr331.i to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 %314, ptr %saddr331.i, align 2
  %316 = ptrtoint ptr %daddr to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %daddr, align 8
  %daddr334.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 3, i32 1
  %318 = ptrtoint ptr %daddr334.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %317, ptr %daddr334.i, align 8
  %319 = ptrtoint ptr %flp to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %flp, align 8
  %321 = ptrtoint ptr %fld328.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %320, ptr %fld328.i, align 8
  %flowic_iif342.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 3, i32 0, i32 1
  %322 = ptrtoint ptr %flowic_iif342.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 0, ptr %flowic_iif342.i, align 4
  %323 = ptrtoint ptr %flowic_mark4.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %flowic_mark4.i, align 8
  %flowic_mark347.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 3, i32 0, i32 2
  %325 = ptrtoint ptr %flowic_mark347.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %flowic_mark347.i, align 8
  %326 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %saddr.i, align 2
  %rt_saddr.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 4
  %328 = ptrtoint ptr %rt_saddr.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %327, ptr %rt_saddr.i, align 8
  %329 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %daddr.i, align 8
  %rt_daddr.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 5
  %331 = ptrtoint ptr %rt_daddr.i to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %330, ptr %rt_daddr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %gateway.3.i)
  %tobool351.not.i = icmp eq i16 %gateway.3.i, 0
  %spec.select703.i = select i1 %tobool351.not.i, i16 %330, i16 %gateway.3.i
  %rt_gateway.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 6
  %332 = ptrtoint ptr %rt_gateway.i to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 %spec.select703.i, ptr %rt_gateway.i, align 4
  %rt_local_src.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 7
  %333 = ptrtoint ptr %rt_local_src.i to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 %327, ptr %rt_local_src.i, align 2
  %rt_dst_map.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 9
  %334 = ptrtoint ptr %rt_dst_map.i to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 %330, ptr %rt_dst_map.i, align 2
  %rt_src_map.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 8
  %335 = ptrtoint ptr %rt_src_map.i to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 %327, ptr %rt_src_map.i, align 8
  %n.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 2
  %336 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %neigh.3.i, ptr %n.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %337 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.dst_entry, ptr %call323.i, i32 0, i32 12
  %338 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %lastuse.i, align 8
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %call323.i, i32 0, i32 6
  %339 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr @dn_output, ptr %output.i, align 8
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %call323.i, i32 0, i32 5
  %340 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr @dn_rt_bug, ptr %input.i, align 4
  %rt_flags.i = getelementptr inbounds %struct.dn_route, ptr %call323.i, i32 0, i32 10
  %341 = ptrtoint ptr %rt_flags.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %310, ptr %rt_flags.i, align 4
  br i1 %tobool320.not.i, label %if.end327.i.if.end370.i_crit_edge, label %if.then367.i

if.end327.i.if.end370.i_crit_edge:                ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.i

if.then367.i:                                     ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #15
  %342 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr @dn_nsp_rx, ptr %input.i, align 4
  br label %if.end370.i

if.end370.i:                                      ; preds = %if.then367.i, %if.end327.i.if.end370.i_crit_edge
  %call371.i = call fastcc i32 @dn_rt_set_next_hop(ptr noundef nonnull %call323.i, ptr noundef nonnull %res.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371.i)
  %tobool372.not.i = icmp eq i32 %call371.i, 0
  br i1 %tobool372.not.i, label %if.end374.i, label %e_neighbour.i

if.end374.i:                                      ; preds = %if.end370.i
  call void @__sanitizer_cov_trace_pc() #15
  %343 = ptrtoint ptr %saddr331.i to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %saddr331.i, align 2
  %345 = ptrtoint ptr %daddr334.i to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %daddr334.i, align 8
  %xor24.i.i = xor i16 %346, %344
  %347 = lshr i16 %xor24.i.i, 3
  %xor5.i.i = xor i16 %347, %xor24.i.i
  %348 = lshr i16 %xor5.i.i, 5
  %xor10.i.i = xor i16 %348, %xor5.i.i
  %349 = lshr i16 %xor10.i.i, 10
  %xor15.i.i = xor i16 %349, %xor10.i.i
  %350 = load i32, ptr @dn_rt_hash_mask, align 4
  %conv17.i.i = zext i16 %xor15.i.i to i32
  %and.i.i = and i32 %350, %conv17.i.i
  call fastcc void @dn_insert_route(ptr noundef nonnull %call323.i, i32 noundef %and.i.i, ptr noundef %pprt) #13
  br label %if.end383.i

done.i:                                           ; preds = %make_route.i.done.i_crit_edge, %land.lhs.true245.i.done.i_crit_edge
  %free_res.1.i = phi i32 [ %free_res.0.i, %make_route.i.done.i_crit_edge ], [ 0, %land.lhs.true245.i.done.i_crit_edge ]
  %err.3.i = phi i32 [ -105, %make_route.i.done.i_crit_edge ], [ -99, %land.lhs.true245.i.done.i_crit_edge ]
  %neigh.4.i = phi ptr [ %neigh.3.i, %make_route.i.done.i_crit_edge ], [ %neigh.1644654.i, %land.lhs.true245.i.done.i_crit_edge ]
  %dev_out.9.i = phi ptr [ %dev_out.8.i, %make_route.i.done.i_crit_edge ], [ %dev_out.6645652.i, %land.lhs.true245.i.done.i_crit_edge ]
  %tobool381.not.i = icmp eq ptr %neigh.4.i, null
  br i1 %tobool381.not.i, label %done.i.if.end383.i_crit_edge, label %if.then382.i

done.i.if.end383.i_crit_edge:                     ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end383.i

if.then382.i:                                     ; preds = %done.i
  %refcnt.i603.i = getelementptr inbounds %struct.neighbour, ptr %neigh.4.i, i32 0, i32 6
  %call.i.i.i.i.i.i604.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i603.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !203
  call void @llvm.prefetch.p0(ptr %refcnt.i603.i, i32 1, i32 3, i32 1) #13
  %351 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i603.i, ptr %refcnt.i603.i, i32 1, ptr elementtype(i32) %refcnt.i603.i) #13, !srcloc !204
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %351, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i606.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then382.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i605.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i605.i, label %if.end5.i.i.i.i.i.if.end383.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !191

if.end5.i.i.i.i.i.if.end383.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end383.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i603.i, i32 noundef 3) #13
  br label %if.end383.i

if.then.i606.i:                                   ; preds = %if.then382.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !205
  call void @neigh_destroy(ptr noundef nonnull %neigh.4.i) #13
  br label %if.end383.i

if.end383.i:                                      ; preds = %e_neighbour.i, %if.then.i606.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end383.i_crit_edge, %done.i.if.end383.i_crit_edge, %if.end374.i
  %dev_out.9682.i = phi ptr [ %dev_out.9.i, %done.i.if.end383.i_crit_edge ], [ %dev_out.9.i, %if.end5.i.i.i.i.i.if.end383.i_crit_edge ], [ %dev_out.9.i, %if.then10.i.i.i.i.i ], [ %dev_out.9.i, %if.then.i606.i ], [ %dev_out.8.i, %e_neighbour.i ], [ %dev_out.8.i, %if.end374.i ]
  %err.3681.i = phi i32 [ %err.3.i, %done.i.if.end383.i_crit_edge ], [ %err.3.i, %if.end5.i.i.i.i.i.if.end383.i_crit_edge ], [ %err.3.i, %if.then10.i.i.i.i.i ], [ %err.3.i, %if.then.i606.i ], [ -105, %e_neighbour.i ], [ 0, %if.end374.i ]
  %free_res.1680.i = phi i32 [ %free_res.1.i, %done.i.if.end383.i_crit_edge ], [ %free_res.1.i, %if.end5.i.i.i.i.i.if.end383.i_crit_edge ], [ %free_res.1.i, %if.then10.i.i.i.i.i ], [ %free_res.1.i, %if.then.i606.i ], [ %free_res.0.i, %e_neighbour.i ], [ %free_res.0.i, %if.end374.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_res.1680.i)
  %tobool384.not.i = icmp eq i32 %free_res.1680.i, 0
  br i1 %tobool384.not.i, label %if.end383.i.if.end386.i_crit_edge, label %if.end383.i.if.then385.i_crit_edge

if.end383.i.if.then385.i_crit_edge:               ; preds = %if.end383.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then385.i

if.end383.i.if.end386.i_crit_edge:                ; preds = %if.end383.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end386.i

if.then385.i:                                     ; preds = %if.end383.i.if.then385.i_crit_edge, %if.end273.i.if.then385.i_crit_edge, %if.end256.i.if.then385.i_crit_edge
  %err.3681697.i = phi i32 [ %err.3681.i, %if.end383.i.if.then385.i_crit_edge ], [ -22, %if.end256.i.if.then385.i_crit_edge ], [ -22, %if.end273.i.if.then385.i_crit_edge ]
  %dev_out.9682696.i = phi ptr [ %dev_out.9682.i, %if.end383.i.if.then385.i_crit_edge ], [ %dev_out.3629.i, %if.end256.i.if.then385.i_crit_edge ], [ %263, %if.end273.i.if.then385.i_crit_edge ]
  call fastcc void @dn_fib_res_put(ptr noundef nonnull %res.i) #13
  br label %if.end386.i

if.end386.i:                                      ; preds = %if.then385.i, %if.end383.i.if.end386.i_crit_edge, %if.then106.i.if.end386.i_crit_edge
  %err.3681688.i = phi i32 [ %err.3681697.i, %if.then385.i ], [ %err.3681.i, %if.end383.i.if.end386.i_crit_edge ], [ -99, %if.then106.i.if.end386.i_crit_edge ]
  %dev_out.9682687.i = phi ptr [ %dev_out.9682696.i, %if.then385.i ], [ %dev_out.9682.i, %if.end383.i.if.end386.i_crit_edge ], [ %151, %if.then106.i.if.end386.i_crit_edge ]
  %tobool.not.i607.i = icmp eq ptr %dev_out.9682687.i, null
  br i1 %tobool.not.i607.i, label %if.end386.i.dn_route_output_slow.exit_crit_edge, label %if.end386.i.do.body1.i616.i_crit_edge

if.end386.i.do.body1.i616.i_crit_edge:            ; preds = %if.end386.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i616.i

if.end386.i.dn_route_output_slow.exit_crit_edge:  ; preds = %if.end386.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_output_slow.exit

do.body1.i616.i:                                  ; preds = %if.end386.i.do.body1.i616.i_crit_edge, %if.end187.i.do.body1.i616.i_crit_edge
  %dev_out.9682687702.i = phi ptr [ %dev_out.9682687.i, %if.end386.i.do.body1.i616.i_crit_edge ], [ %dev_out.5638.i, %if.end187.i.do.body1.i616.i_crit_edge ]
  %err.3681688701.i = phi i32 [ %err.3681688.i, %if.end386.i.do.body1.i616.i_crit_edge ], [ -22, %if.end187.i.do.body1.i616.i_crit_edge ]
  %352 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i608.i = getelementptr inbounds %struct.net_device, ptr %dev_out.9682687702.i, i32 0, i32 118
  %353 = ptrtoint ptr %pcpu_refcnt.i608.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %pcpu_refcnt.i608.i, align 4
  %355 = ptrtoint ptr %354 to i32
  %356 = call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i609.i = and i32 %356, -16384
  %357 = inttoptr i32 %and.i.i609.i to ptr
  %cpu.i610.i = getelementptr inbounds %struct.thread_info, ptr %357, i32 0, i32 3
  %358 = ptrtoint ptr %cpu.i610.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %cpu.i610.i, align 4
  %arrayidx.i611.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %359
  %360 = ptrtoint ptr %arrayidx.i611.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx.i611.i, align 4
  %add.i612.i = add i32 %361, %355
  %362 = inttoptr i32 %add.i612.i to ptr
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %362, align 4
  %add13.i613.i = add i32 %364, -1
  store i32 %add13.i613.i, ptr %362, align 4
  %365 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i614.i = and i32 %365, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i614.i)
  %tobool24.not.i615.i = icmp eq i32 %and.i.i.i614.i, 0
  br i1 %tobool24.not.i615.i, label %if.then28.i617.i, label %do.body1.i616.i.do.end30.i618.i_crit_edge, !prof !190

do.body1.i616.i.do.end30.i618.i_crit_edge:        ; preds = %do.body1.i616.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i618.i

if.then28.i617.i:                                 ; preds = %do.body1.i616.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end30.i618.i

do.end30.i618.i:                                  ; preds = %if.then28.i617.i, %do.body1.i616.i.do.end30.i618.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %352) #13, !srcloc !198
  br label %dn_route_output_slow.exit

e_neighbour.i:                                    ; preds = %if.end370.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dst_release_immediate(ptr noundef nonnull %call323.i) #13
  br label %if.end383.i

dn_route_output_slow.exit:                        ; preds = %do.end30.i618.i, %if.end386.i.dn_route_output_slow.exit_crit_edge, %if.end183.i.dn_route_output_slow.exit_crit_edge, %lor.lhs.false.i.dn_route_output_slow.exit_crit_edge, %dev_put.exit559.i.dn_route_output_slow.exit_crit_edge, %rcu_read_unlock.exit.i.dn_route_output_slow.exit_crit_edge, %dev_put.exit525.i, %dev_put.exit.i, %if.then17.i.dn_route_output_slow.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %dev_put.exit559.i.dn_route_output_slow.exit_crit_edge ], [ -99, %dev_put.exit525.i ], [ -99, %rcu_read_unlock.exit.i.dn_route_output_slow.exit_crit_edge ], [ %err.3681688.i, %if.end386.i.dn_route_output_slow.exit_crit_edge ], [ %err.3681688701.i, %do.end30.i618.i ], [ -19, %dev_put.exit.i ], [ -19, %if.then17.i.dn_route_output_slow.exit_crit_edge ], [ -19, %if.end183.i.dn_route_output_slow.exit_crit_edge ], [ %call134.i, %lor.lhs.false.i.dn_route_output_slow.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res.i) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fld.i) #13
  br label %cleanup

cleanup:                                          ; preds = %dn_route_output_slow.exit, %rcu_read_unlock_bh.exit
  %retval.0 = phi i32 [ %retval.0.i, %dn_route_output_slow.exit ], [ 0, %rcu_read_unlock_bh.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_cache_dump(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %4, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nlh, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %sub.i = add i32 %8, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 12
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rtm_flags = getelementptr i8, ptr %6, i32 24
  %9 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rtm_flags, align 4
  %and = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %arrayidx10 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc62.for.body_crit_edge, %if.end9
  %h.0137 = phi i32 [ 0, %if.end9 ], [ %inc63, %for.inc62.for.body_crit_edge ]
  %s_idx.0136 = phi i32 [ %15, %if.end9 ], [ %s_idx.2, %for.inc62.for.body_crit_edge ]
  %idx.0135 = phi i32 [ %15, %if.end9 ], [ %idx.2, %for.inc62.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %h.0137, i32 %13)
  %cmp12 = icmp slt i32 %h.0137, %13
  br i1 %cmp12, label %for.body.for.inc62_crit_edge, label %if.end14

for.body.for.inc62_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc62

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %h.0137, i32 %13)
  %cmp15 = icmp sgt i32 %h.0137, %13
  %spec.select = select i1 %cmp15, i32 0, i32 %s_idx.0136
  tail call fastcc void @local_bh_disable() #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end14.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.end14.rcu_read_lock_bh.exit_crit_edge:         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.end14
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 750, ptr noundef nonnull @.str.53) #13
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.end14.rcu_read_lock_bh.exit_crit_edge
  %17 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx18 = getelementptr %struct.dn_rt_hash_bucket, ptr %17, i32 %h.0137
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx18, align 4
  %call20 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end29_crit_edge

rcu_read_lock_bh.exit.do.end29_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true.do.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b97 = load i1, ptr @dn_cache_dump.__warned, align 1
  br i1 %.b97, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_cache_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1747, ptr noundef nonnull @.str.1) #13
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true.do.end29_crit_edge, %rcu_read_lock_bh.exit.do.end29_crit_edge
  %tobool32.not130 = icmp eq ptr %19, null
  br i1 %tobool32.not130, label %do.end29.for.end_crit_edge, label %do.end29.for.body33_crit_edge

do.end29.for.body33_crit_edge:                    ; preds = %do.end29
  br label %for.body33

do.end29.for.end_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body33:                                       ; preds = %do.end60.for.body33_crit_edge, %do.end29.for.body33_crit_edge
  %rt.0133 = phi ptr [ %39, %do.end60.for.body33_crit_edge ], [ %19, %do.end29.for.body33_crit_edge ]
  %idx.1131 = phi i32 [ %inc, %do.end60.for.body33_crit_edge ], [ 0, %do.end29.for.body33_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1131, i32 %spec.select)
  %cmp34 = icmp slt i32 %idx.1131, %spec.select
  br i1 %cmp34, label %for.body33.for.inc_crit_edge, label %if.then.i99

for.body33.for.inc_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i99:                                      ; preds = %for.body33
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt.0133, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #13, !srcloc !193
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 231, i32 noundef 9, ptr noundef null) #13
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i
  %21 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %22 = ptrtoint ptr %rt.0133 to i32
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %16, align 8
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3, i32 12
  %26 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %portid, align 4
  %28 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nlmsg_seq, align 4
  %call41 = tail call fastcc i32 @dn_rt_fill_info(ptr noundef %skb, i32 noundef %27, i32 noundef %31, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  %32 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i101 = icmp eq i32 %33, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %dst_clone.exit
  br i1 %tobool.not.i101, label %if.then43.skb_dst_drop.exit_crit_edge, label %if.then.i102

if.then43.skb_dst_drop.exit_crit_edge:            ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_drop.exit

if.then.i102:                                     ; preds = %if.then43
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i102.refdst_drop.exit.i_crit_edge

if.then.i102.refdst_drop.exit.i_crit_edge:        ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #15
  %and1.i.i = and i32 %33, -2
  %34 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %34) #13
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i102.refdst_drop.exit.i_crit_edge
  %35 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %16, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.then43.skb_dst_drop.exit_crit_edge
  %call.i103 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i103, label %skb_dst_drop.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i106

skb_dst_drop.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i106:                               ; preds = %skb_dst_drop.exit
  %call1.i104 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %tobool.not.i105 = icmp eq i32 %call1.i104, 0
  br i1 %tobool.not.i105, label %land.lhs.true.i106.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i108

land.lhs.true.i106.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i108:                              ; preds = %land.lhs.true.i106
  %.b4.i107 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i107, label %land.lhs.true2.i108.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i109

land.lhs.true2.i108.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

if.then.i109:                                     ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 761, ptr noundef nonnull @.str.55) #13
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i109, %land.lhs.true2.i108.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i106.rcu_read_unlock_bh.exit_crit_edge, %skb_dst_drop.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  tail call fastcc void @local_bh_enable() #13
  br label %done

if.end44:                                         ; preds = %dst_clone.exit
  br i1 %tobool.not.i101, label %if.end44.for.inc_crit_edge, label %if.then.i113

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i113:                                     ; preds = %if.end44
  %and.i.i111 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i111)
  %tobool.not.i.i112 = icmp eq i32 %and.i.i111, 0
  br i1 %tobool.not.i.i112, label %if.then.i.i115, label %if.then.i113.refdst_drop.exit.i116_crit_edge

if.then.i113.refdst_drop.exit.i116_crit_edge:     ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %refdst_drop.exit.i116

if.then.i.i115:                                   ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #15
  %and1.i.i114 = and i32 %33, -2
  %36 = inttoptr i32 %and1.i.i114 to ptr
  tail call void @dst_release(ptr noundef %36) #13
  br label %refdst_drop.exit.i116

refdst_drop.exit.i116:                            ; preds = %if.then.i.i115, %if.then.i113.refdst_drop.exit.i116_crit_edge
  %37 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %16, align 8
  br label %for.inc

for.inc:                                          ; preds = %refdst_drop.exit.i116, %if.end44.for.inc_crit_edge, %for.body33.for.inc_crit_edge
  %dn_next = getelementptr inbounds %struct.dn_route, ptr %rt.0133, i32 0, i32 1
  %38 = ptrtoint ptr %dn_next to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %dn_next, align 8
  %call50 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %for.inc.do.end60_crit_edge

for.inc.do.end60_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60

land.lhs.true52:                                  ; preds = %for.inc
  %call53 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.do.end60_crit_edge, label %land.lhs.true55

land.lhs.true52.do.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %.b9596 = load i1, ptr @dn_cache_dump.__warned.4, align 1
  br i1 %.b9596, label %land.lhs.true55.do.end60_crit_edge, label %if.then57

land.lhs.true55.do.end60_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_cache_dump.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1749, ptr noundef nonnull @.str.1) #13
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %land.lhs.true55.do.end60_crit_edge, %land.lhs.true52.do.end60_crit_edge, %for.inc.do.end60_crit_edge
  %inc = add i32 %idx.1131, 1
  %tobool32.not = icmp eq ptr %39, null
  br i1 %tobool32.not, label %do.end60.for.end_crit_edge, label %do.end60.for.body33_crit_edge

do.end60.for.body33_crit_edge:                    ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body33

do.end60.for.end_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.end60.for.end_crit_edge, %do.end29.for.end_crit_edge
  %idx.1.lcssa = phi i32 [ 0, %do.end29.for.end_crit_edge ], [ %inc, %do.end60.for.end_crit_edge ]
  %call.i118 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i118, label %for.end.rcu_read_unlock_bh.exit125_crit_edge, label %land.lhs.true.i121

for.end.rcu_read_unlock_bh.exit125_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit125

land.lhs.true.i121:                               ; preds = %for.end
  %call1.i119 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119)
  %tobool.not.i120 = icmp eq i32 %call1.i119, 0
  br i1 %tobool.not.i120, label %land.lhs.true.i121.rcu_read_unlock_bh.exit125_crit_edge, label %land.lhs.true2.i123

land.lhs.true.i121.rcu_read_unlock_bh.exit125_crit_edge: ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit125

land.lhs.true2.i123:                              ; preds = %land.lhs.true.i121
  %.b4.i122 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i122, label %land.lhs.true2.i123.rcu_read_unlock_bh.exit125_crit_edge, label %if.then.i124

land.lhs.true2.i123.rcu_read_unlock_bh.exit125_crit_edge: ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit125

if.then.i124:                                     ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 761, ptr noundef nonnull @.str.55) #13
  br label %rcu_read_unlock_bh.exit125

rcu_read_unlock_bh.exit125:                       ; preds = %if.then.i124, %land.lhs.true2.i123.rcu_read_unlock_bh.exit125_crit_edge, %land.lhs.true.i121.rcu_read_unlock_bh.exit125_crit_edge, %for.end.rcu_read_unlock_bh.exit125_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  tail call fastcc void @local_bh_enable() #13
  br label %for.inc62

for.inc62:                                        ; preds = %rcu_read_unlock_bh.exit125, %for.body.for.inc62_crit_edge
  %idx.2 = phi i32 [ %idx.0135, %for.body.for.inc62_crit_edge ], [ %idx.1.lcssa, %rcu_read_unlock_bh.exit125 ]
  %s_idx.2 = phi i32 [ %s_idx.0136, %for.body.for.inc62_crit_edge ], [ %spec.select, %rcu_read_unlock_bh.exit125 ]
  %inc63 = add i32 %h.0137, 1
  %40 = load i32, ptr @dn_rt_hash_mask, align 4
  %cmp11.not = icmp ugt i32 %inc63, %40
  br i1 %cmp11.not, label %for.inc62.done_crit_edge, label %for.inc62.for.body_crit_edge

for.inc62.for.body_crit_edge:                     ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc62.done_crit_edge:                         ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

done:                                             ; preds = %for.inc62.done_crit_edge, %rcu_read_unlock_bh.exit
  %h.0128 = phi i32 [ %h.0137, %rcu_read_unlock_bh.exit ], [ %inc63, %for.inc62.done_crit_edge ]
  %idx.3 = phi i32 [ %idx.1131, %rcu_read_unlock_bh.exit ], [ %idx.2, %for.inc62.done_crit_edge ]
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %h.0128, ptr %11, align 4
  %42 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %idx.3, ptr %arrayidx10, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %44, %done ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_rt_fill_info(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %tmp.i14 = alloca i32, align 4
  %tmp.i10 = alloca i16, align 2
  %tmp.i8 = alloca i16, align 2
  %tmp.i6 = alloca i32, align 4
  %tmp.i4 = alloca i16, align 2
  %tmp.i2 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !190

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %skb_dst.exit.cleanup_crit_edge

skb_dst.exit.cleanup_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %skb_dst.exit
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !190

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef 24, i32 noundef 12, i32 noundef %flags) #13
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 12, ptr %add.ptr.i, align 4
  %rtm_dst_len = getelementptr i8, ptr %call3.i, i32 17
  %13 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %rtm_dst_len, align 1
  %rtm_src_len = getelementptr i8, ptr %call3.i, i32 18
  %14 = ptrtoint ptr %rtm_src_len to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %rtm_src_len, align 2
  %rtm_tos = getelementptr i8, ptr %call3.i, i32 19
  %15 = ptrtoint ptr %rtm_tos to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rtm_tos, align 1
  %rtm_table = getelementptr i8, ptr %call3.i, i32 20
  %16 = ptrtoint ptr %rtm_table to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -2, ptr %rtm_table, align 4
  %rt_type = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 11
  %17 = ptrtoint ptr %rt_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rt_type, align 8
  %conv = trunc i32 %18 to i8
  %rtm_type = getelementptr i8, ptr %call3.i, i32 23
  %19 = ptrtoint ptr %rtm_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %rtm_type, align 1
  %rt_flags = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 10
  %20 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rt_flags, align 4
  %and = and i32 %21, -65536
  %or = or i32 %and, 512
  %rtm_flags = getelementptr i8, ptr %call3.i, i32 24
  %22 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %rtm_flags, align 4
  %rtm_scope = getelementptr i8, ptr %call3.i, i32 22
  %23 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %rtm_scope, align 2
  %rtm_protocol = getelementptr i8, ptr %call3.i, i32 21
  %24 = ptrtoint ptr %rtm_protocol to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %rtm_protocol, align 1
  %25 = load i32, ptr %rt_flags, align 4
  %and4 = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %or8 = or i32 %and, 768
  %26 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or8, ptr %rtm_flags, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %27 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 254, ptr %tmp.i, align 4
  %call.i1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp = icmp slt i32 %call.i1, 0
  br i1 %cmp, label %if.end9.if.then.i.i_crit_edge, label %lor.lhs.false

if.end9.if.then.i.i_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end9
  %rt_daddr = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 5
  %28 = ptrtoint ptr %rt_daddr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rt_daddr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i2) #13
  %30 = ptrtoint ptr %tmp.i2 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %tmp.i2, align 2
  %call.i3 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i2) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp13 = icmp slt i32 %call.i3, 0
  br i1 %cmp13, label %lor.lhs.false.if.then.i.i_crit_edge, label %if.end16

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end16:                                         ; preds = %lor.lhs.false
  %saddr = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %saddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool17.not = icmp eq i16 %32, 0
  br i1 %tobool17.not, label %if.end16.if.end27_crit_edge, label %if.then18

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then18:                                        ; preds = %if.end16
  %33 = ptrtoint ptr %rtm_src_len to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 16, ptr %rtm_src_len, align 2
  %34 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %saddr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i4) #13
  %36 = ptrtoint ptr %tmp.i4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %tmp.i4, align 2
  %call.i5 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i4) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp23 = icmp slt i32 %call.i5, 0
  br i1 %cmp23, label %if.then18.if.then.i.i_crit_edge, label %if.then18.if.end27_crit_edge

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then18.if.then.i.i_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end27:                                         ; preds = %if.then18.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 8
  %tobool28.not = icmp eq ptr %38, null
  br i1 %tobool28.not, label %if.end27.if.end35_crit_edge, label %land.lhs.true

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end27
  %ifindex = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 17
  %39 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i6) #13
  %41 = ptrtoint ptr %tmp.i6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tmp.i6, align 4
  %call.i7 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp32 = icmp slt i32 %call.i7, 0
  br i1 %cmp32, label %land.lhs.true.if.then.i.i_crit_edge, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  %rt_local_src = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 7
  %42 = ptrtoint ptr %rt_local_src to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rt_local_src, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i8) #13
  %44 = ptrtoint ptr %tmp.i8 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %tmp.i8, align 2
  %call.i9 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 2, ptr noundef nonnull %tmp.i8) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp37 = icmp slt i32 %call.i9, 0
  br i1 %cmp37, label %if.end35.if.then.i.i_crit_edge, label %if.end40

if.end35.if.then.i.i_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end40:                                         ; preds = %if.end35
  %45 = ptrtoint ptr %rt_daddr to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rt_daddr, align 2
  %rt_gateway = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 6
  %47 = ptrtoint ptr %rt_gateway to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rt_gateway, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %48)
  %cmp44.not = icmp eq i16 %46, %48
  br i1 %cmp44.not, label %if.end40.if.end52_crit_edge, label %land.lhs.true46

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

land.lhs.true46:                                  ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i10) #13
  %49 = ptrtoint ptr %tmp.i10 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %tmp.i10, align 2
  %call.i11 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i10) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp49 = icmp slt i32 %call.i11, 0
  br i1 %cmp49, label %land.lhs.true46.if.then.i.i_crit_edge, label %land.lhs.true46.if.end52_crit_edge

land.lhs.true46.if.end52_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

land.lhs.true46.if.then.i.i_crit_edge:            ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end52:                                         ; preds = %land.lhs.true46.if.end52_crit_edge, %if.end40.if.end52_crit_edge
  %_metrics.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 2
  %50 = ptrtoint ptr %_metrics.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %_metrics.i, align 4
  %and.i12 = and i32 %51, -4
  %52 = inttoptr i32 %and.i12 to ptr
  %call55 = call i32 @rtnetlink_put_metrics(ptr noundef %skb, ptr noundef %52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end52.if.then.i.i_crit_edge, label %if.end59

if.end52.if.then.i.i_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end59:                                         ; preds = %if.end52
  %expires61 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 3
  %53 = ptrtoint ptr %expires61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %expires61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool62.not = icmp eq i32 %54, 0
  br i1 %tobool62.not, label %if.end59.cond.end_crit_edge, label %cond.true

if.end59.cond.end_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %54, %55
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end59.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %if.end59.cond.end_crit_edge ]
  %error = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 15
  %56 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %error, align 8
  %conv67 = sext i16 %57 to i32
  %call68 = call i32 @rtnl_put_cacheinfo(ptr noundef %skb, ptr noundef %5, i32 noundef 0, i32 noundef %cond, i32 noundef %conv67) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %cond.end.if.then.i.i_crit_edge, label %if.end72

cond.end.if.then.i.i_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end72:                                         ; preds = %cond.end
  %flowic_iif.i = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 3, i32 0, i32 1
  %58 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flowic_iif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i13.not = icmp eq i32 %59, 0
  br i1 %cmp.i13.not, label %if.end72.if.end81_crit_edge, label %land.lhs.true75

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

land.lhs.true75:                                  ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i14) #13
  %60 = ptrtoint ptr %tmp.i14 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tmp.i14, align 4
  %call.i15 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %cmp78 = icmp slt i32 %call.i15, 0
  br i1 %cmp78, label %land.lhs.true75.if.then.i.i_crit_edge, label %land.lhs.true75.if.end81_crit_edge

land.lhs.true75.if.end81_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

land.lhs.true75.if.then.i.i_crit_edge:            ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end81:                                         ; preds = %land.lhs.true75.if.end81_crit_edge, %if.end72.if.end81_crit_edge
  %61 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %63 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true75.if.then.i.i_crit_edge, %cond.end.if.then.i.i_crit_edge, %if.end52.if.then.i.i_crit_edge, %land.lhs.true46.if.then.i.i_crit_edge, %if.end35.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.then18.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end9.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %64 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %65, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !190

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %66 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i17 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i18 = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i19 = sub i32 %sub.ptr.lhs.cast.i.i17, %sub.ptr.rhs.cast.i.i18
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i19) #13
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end81, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %skb_dst.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end81 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %skb_dst.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_route_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 152, i32 noundef 0, i32 noundef 270336, ptr noundef null) #13
  store ptr %call, ptr getelementptr inbounds (%struct.dst_ops, ptr @dn_dst_ops, i32 0, i32 16), align 64
  %call.i = tail call i32 @__percpu_counter_init(ptr noundef getelementptr inbounds (%struct.dst_ops, ptr @dn_dst_ops, i32 0, i32 18), i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @dst_entries_init.__key) #13
  tail call void @init_timer_key(ptr noundef nonnull @dn_route_timer, ptr noundef nonnull @dn_dst_check_expire, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @dn_route_init.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @decnet_dst_gc_interval, align 4
  %mul = mul i32 %1, 100
  %add = add i32 %mul, %0
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @dn_route_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @dn_route_timer) #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %2 = load volatile i32, ptr @_totalram_pages, align 4
  %shr = lshr i32 %2, 14
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %order.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.cond_crit_edge ]
  %shl = shl nuw i32 1, %order.0
  %cmp = icmp ult i32 %shl, %shr
  %inc = add i32 %order.0, 1
  br i1 %cmp, label %for.cond.for.cond_crit_edge, label %for.cond.while.cond_crit_edge

for.cond.while.cond_crit_edge:                    ; preds = %for.cond
  br label %while.cond

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.cond.while.cond_crit_edge
  %order.1 = phi i32 [ %dec, %while.cond.while.cond_crit_edge ], [ %order.0, %for.cond.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %order.1)
  %tobool.not = icmp ne i32 %order.1, 0
  %mul4 = shl i32 4096, %order.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 98303, i32 %mul4)
  %cmp5 = icmp ugt i32 %mul4, 98303
  %or.cond = select i1 %tobool.not, i1 %cmp5, i1 false
  %dec = add i32 %order.1, -1
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.cond.do.body6_crit_edge

while.cond.do.body6_crit_edge:                    ; preds = %while.cond
  br label %do.body6

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

do.body6:                                         ; preds = %while.end14.do.body6_crit_edge, %while.cond.do.body6_crit_edge
  %order.2 = phi i32 [ %dec19, %while.end14.do.body6_crit_edge ], [ %order.1, %while.cond.do.body6_crit_edge ]
  %mul8 = shl i32 4096, %order.2
  %div9 = udiv i32 %mul8, 48
  br label %while.cond10

while.cond10:                                     ; preds = %while.cond10.while.cond10_crit_edge, %do.body6
  %storemerge = phi i32 [ %div9, %do.body6 ], [ %dec13, %while.cond10.while.cond10_crit_edge ]
  %3 = tail call i32 @llvm.ctpop.i32(i32 %storemerge), !range !206
  %tobool11.not = icmp ult i32 %3, 2
  %dec13 = add i32 %storemerge, -1
  br i1 %tobool11.not, label %while.end14, label %while.cond10.while.cond10_crit_edge

while.cond10.while.cond10_crit_edge:              ; preds = %while.cond10
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond10

while.end14:                                      ; preds = %while.cond10
  store i32 %storemerge, ptr @dn_rt_hash_mask, align 4
  %call15 = tail call i32 @__get_free_pages(i32 noundef 2592, i32 noundef %order.2) #13
  %4 = inttoptr i32 %call15 to ptr
  store ptr %4, ptr @dn_rt_hash_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp eq i32 %call15, 0
  %dec19 = add i32 %order.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec19)
  %cmp20 = icmp sgt i32 %dec19, 0
  %or.cond55 = select i1 %cmp17, i1 %cmp20, i1 false
  br i1 %or.cond55, label %while.end14.do.body6_crit_edge, label %do.end22

while.end14.do.body6_crit_edge:                   ; preds = %while.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

do.end22:                                         ; preds = %while.end14
  br i1 %cmp17, label %if.then, label %do.end26

if.then:                                          ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.7) #18
  unreachable

do.end26:                                         ; preds = %do.end22
  %5 = load i32, ptr @dn_rt_hash_mask, align 4
  %mul27 = mul i32 %5, 48
  %div28 = sdiv i32 %mul27, 1024
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %5, i32 noundef %div28) #16
  %6 = load i32, ptr @dn_rt_hash_mask, align 4
  %dec30 = add i32 %6, -1
  store i32 %dec30, ptr @dn_rt_hash_mask, align 4
  br label %do.body34

do.body34:                                        ; preds = %do.body34.do.body34_crit_edge, %do.end26
  %i.056 = phi i32 [ 0, %do.end26 ], [ %inc40, %do.body34.do.body34_crit_edge ]
  %7 = load ptr, ptr @dn_rt_hash_table, align 4
  %lock = getelementptr %struct.dn_rt_hash_bucket, ptr %7, i32 %i.056, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @dn_route_init.__key.10, i16 noundef signext 3) #13
  %8 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx38 = getelementptr %struct.dn_rt_hash_bucket, ptr %8, i32 %i.056
  %9 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx38, align 4
  %inc40 = add i32 %i.056, 1
  %10 = load i32, ptr @dn_rt_hash_mask, align 4
  %cmp32.not = icmp ugt i32 %inc40, %10
  br i1 %cmp32.not, label %for.end41, label %do.body34.do.body34_crit_edge

do.body34.do.body34_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body34

for.end41:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  %add42 = add nuw i32 %10, 1
  store i32 %add42, ptr getelementptr inbounds (%struct.dst_ops, ptr @dn_dst_ops, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call43 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %11, ptr noundef nonnull @dn_rt_cache_seq_ops, i32 noundef 4, ptr noundef null) #13
  %call44 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 12, i32 noundef 26, ptr noundef nonnull @dn_cache_getroute, ptr noundef nonnull @dn_fib_dump, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_dst_check_expire(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  br label %for.body

for.cond:                                         ; preds = %while.end
  %inc = add i32 %i.042, 1
  %1 = load i32, ptr @dn_rt_hash_mask, align 4
  %cmp.not = icmp ugt i32 %inc, %1
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %2 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx = getelementptr %struct.dn_rt_hash_bucket, ptr %2, i32 %i.042
  %lock = getelementptr %struct.dn_rt_hash_bucket, ptr %2, i32 %i.042, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then13, %for.body
  %rtp.0.ph = phi ptr [ %dn_next, %if.then13 ], [ %arrayidx, %for.body ]
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %while.cond.outer
  %3 = load ptr, ptr @dn_rt_hash_table, align 4
  %dep_map = getelementptr %struct.dn_rt_hash_bucket, ptr %3, i32 %i.042, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %while.cond.do.end_crit_edge

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %while.cond
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @dn_dst_check_expire.__warned, align 1
  br i1 %.b40, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_dst_check_expire.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @.str.44) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %while.cond.do.end_crit_edge
  %4 = ptrtoint ptr %rtp.0.ph to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtp.0.ph, align 4
  %cmp8.not = icmp eq ptr %5, null
  br i1 %cmp8.not, label %while.end, label %while.body

while.body:                                       ; preds = %do.end
  %__refcnt = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__refcnt, i32 noundef 4) #13
  %6 = ptrtoint ptr %__refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %__refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp10 = icmp sgt i32 %7, 1
  br i1 %cmp10, label %while.body.if.then13_crit_edge, label %lor.lhs.false

while.body.if.then13_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false:                                    ; preds = %while.body
  %lastuse = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %lastuse to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lastuse, align 8
  %sub = sub i32 %0, %9
  %cmp12 = icmp ult i32 %sub, 12000
  br i1 %cmp12, label %lor.lhs.false.if.then13_crit_edge, label %if.end14

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %while.body.if.then13_crit_edge
  %dn_next = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 1
  br label %while.cond.outer

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %dn_next15 = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dn_next15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dn_next15, align 8
  %12 = ptrtoint ptr %rtp.0.ph to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %rtp.0.ph, align 4
  store ptr null, ptr %dn_next15, align 8
  tail call void @dst_dev_put(ptr noundef nonnull %5) #13
  tail call void @dst_release(ptr noundef nonnull %5) #13
  br label %while.cond

while.end:                                        ; preds = %do.end
  %13 = load ptr, ptr @dn_rt_hash_table, align 4
  %lock20 = getelementptr %struct.dn_rt_hash_bucket, ptr %13, i32 %i.042, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock20) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %0)
  %cmp22.not = icmp eq i32 %14, %0
  br i1 %cmp22.not, label %for.cond, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %while.end.for.end_crit_edge, %for.cond.for.end_crit_edge
  %15 = load i32, ptr @decnet_dst_gc_interval, align 4
  %mul = mul i32 %15, 100
  %add = add i32 %mul, %0
  %call25 = tail call i32 @mod_timer(ptr noundef nonnull @dn_route_timer, i32 noundef %add) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_cache_getroute(ptr nocapture noundef readonly %in_skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %rt = alloca ptr, align 4
  %fld = alloca %struct.flowidn, align 8
  %tb = alloca [31 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt) #13
  %5 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rt, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fld) #13
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %tb) #13
  %6 = call ptr @memset(ptr %tb, i32 255, i32 124)
  %cmp.i.not = icmp eq ptr %4, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup78_crit_edge

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup78

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %8)
  %cmp.i.i = icmp ult i32 %8, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #13
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup78_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup78_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup78

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup78

nlmsg_parse_deprecated.exit:                      ; preds = %if.end
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %8, -28
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 30, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @rtm_dn_policy, i32 noundef 0, ptr noundef %extack) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup78_crit_edge, label %if.end5

nlmsg_parse_deprecated.exit.cleanup78_crit_edge:  ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup78

if.end5:                                          ; preds = %nlmsg_parse_deprecated.exit
  %10 = call ptr @memset(ptr %fld, i32 0, i32 48)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fld, i32 0, i32 5
  %11 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %flowic_proto, align 2
  %call.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %cmp7 = icmp eq ptr %call.i.i, null
  br i1 %cmp7, label %if.end5.cleanup78_crit_edge, label %if.end9

if.end5.cleanup78_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup78

if.end9:                                          ; preds = %if.end5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i115 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %16 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i115, ptr %mac_header.i, align 2
  %cb10 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %arrayidx = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %saddr = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 2
  %21 = ptrtoint ptr %saddr to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %saddr, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %arrayidx17 = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %if.end16.if.end22_crit_edge, label %if.then19

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i116 = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i116 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i116, align 2
  %daddr = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 1
  %26 = ptrtoint ptr %daddr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %daddr, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %arrayidx23 = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %28, null
  br i1 %tobool24.not, label %if.end22.if.end29_crit_edge, label %if.then25

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i117 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i117 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i117, align 4
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fld, i32 0, i32 1
  %31 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %flowic_iif, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end22.if.end29_crit_edge
  %flowic_iif31 = getelementptr inbounds %struct.flowi_common, ptr %fld, i32 0, i32 1
  %32 = ptrtoint ptr %flowic_iif31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flowic_iif31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool32.not = icmp eq i32 %33, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end29
  %call36 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %33) #13
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then33.cleanup_crit_edge, label %lor.lhs.false

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then33
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %call36, i32 0, i32 79
  %34 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dn_ptr, align 4
  %tobool38.not = icmp eq ptr %35, null
  br i1 %tobool38.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end40

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %36 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 24579, ptr %protocol, align 8
  %37 = getelementptr inbounds %struct.anon.3, ptr %call.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call36, ptr %37, align 8
  %saddr41 = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 2
  %39 = ptrtoint ptr %saddr41 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %saddr41, align 2
  %src = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %src, align 2
  %daddr42 = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 1
  %42 = ptrtoint ptr %daddr42 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %daddr42, align 8
  %44 = ptrtoint ptr %cb10 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %cb10, align 4
  call fastcc void @local_bh_disable()
  %call43 = call fastcc i32 @dn_route_input(ptr noundef nonnull %call.i.i)
  call fastcc void @local_bh_enable()
  %45 = call ptr @memset(ptr %cb10, i32 0, i32 28)
  %46 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %and.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end40.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end40.skb_dst.exit_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end40
  %call.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !190

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end40.skb_dst.exit_crit_edge
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %46, align 8
  %and25.i = and i32 %50, -2
  %51 = inttoptr i32 %and25.i to ptr
  %52 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %rt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool45.not = icmp eq i32 %call43, 0
  br i1 %tobool45.not, label %land.lhs.true, label %skb_dst.exit.out_free.sink.split_crit_edge

skb_dst.exit.out_free.sink.split_crit_edge:       ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free.sink.split

land.lhs.true:                                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  %error = getelementptr inbounds %struct.dst_entry, ptr %51, i32 0, i32 15
  %53 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %error, align 8
  %conv = sext i16 %54 to i32
  br label %if.end61

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %if.then33.cleanup_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #13
  br label %cleanup78

if.else:                                          ; preds = %if.end29
  %arrayidx53 = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %56, null
  br i1 %tobool54.not, label %if.else.if.end59_crit_edge, label %if.then55

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i118 = getelementptr i8, ptr %56, i32 4
  %57 = ptrtoint ptr %add.ptr.i.i118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i.i118, align 4
  %59 = ptrtoint ptr %fld to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %fld, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.else.if.end59_crit_edge
  %call.i119 = call fastcc i32 @__dn_route_output_key(ptr noundef nonnull %rt, ptr noundef nonnull %fld, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp.i120 = icmp eq i32 %call.i119, 0
  br i1 %cmp.i120, label %land.lhs.true.i122, label %if.end61.thread132

if.end61.thread132:                               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  %60 = getelementptr inbounds %struct.anon.3, ptr %call.i.i, i32 0, i32 2
  br label %out_free.sink.split

land.lhs.true.i122:                               ; preds = %if.end59
  %61 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flowic_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i121 = icmp eq i8 %62, 0
  br i1 %tobool.not.i121, label %land.lhs.true.i122.if.end61.thread_crit_edge, label %if.then.i

land.lhs.true.i122.if.end61.thread_crit_edge:     ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.thread

if.then.i:                                        ; preds = %land.lhs.true.i122
  %63 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rt, align 4
  %call2.i123 = call ptr @xfrm_lookup(ptr noundef nonnull @init_net, ptr noundef %64, ptr noundef nonnull %fld, ptr noundef null, i32 noundef 0) #13
  %65 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call2.i123, ptr %rt, align 4
  %cmp.i.i124 = icmp ugt ptr %call2.i123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i124, label %if.then4.i, label %if.then.i.if.end61.thread_crit_edge

if.then.i.if.end61.thread_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.thread

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %call2.i123 to i32
  %67 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %rt, align 4
  br label %if.end61

if.end61.thread:                                  ; preds = %if.then.i.if.end61.thread_crit_edge, %land.lhs.true.i122.if.end61.thread_crit_edge
  %68 = getelementptr inbounds %struct.anon.3, ptr %call.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %68, align 8
  br label %if.end64

if.end61:                                         ; preds = %if.then4.i, %land.lhs.true
  %err.2 = phi i32 [ %66, %if.then4.i ], [ %conv, %land.lhs.true ]
  %70 = getelementptr inbounds %struct.anon.3, ptr %call.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool62.not = icmp eq i32 %err.2, 0
  br i1 %tobool62.not, label %if.end61.if.end64_crit_edge, label %if.end61.out_free_crit_edge

if.end61.out_free_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end61.if.end64_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.end64:                                         ; preds = %if.end61.if.end64_crit_edge, %if.end61.thread
  %72 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rt, align 4
  %tobool.not.i125 = icmp eq ptr %73, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 3
  %74 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i125, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %75 = ptrtoint ptr %73 to i32
  %76 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %75, ptr %76, align 8
  %rtm_flags = getelementptr i8, ptr %nlh, i32 24
  %78 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rtm_flags, align 4
  %and = and i32 %79, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  br i1 %tobool66.not, label %if.end64.if.end68_crit_edge, label %if.then67

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %rt_flags = getelementptr inbounds %struct.dn_route, ptr %73, i32 0, i32 10
  %80 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rt_flags, align 4
  %or = or i32 %81, 65536
  store i32 %or, ptr %rt_flags, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end64.if.end68_crit_edge
  %portid = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 12
  %82 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %portid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %84 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nlmsg_seq, align 4
  %call70 = call fastcc i32 @dn_rt_fill_info(ptr noundef nonnull %call.i.i, i32 noundef %83, i32 noundef %85, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end68.out_free_crit_edge, label %if.end74

if.end68.out_free_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %portid, align 4
  %call77 = call i32 @rtnl_unicast(ptr noundef nonnull %call.i.i, ptr noundef nonnull @init_net, i32 noundef %87) #13
  br label %cleanup78

out_free.sink.split:                              ; preds = %if.end61.thread132, %skb_dst.exit.out_free.sink.split_crit_edge
  %.sink = phi ptr [ %60, %if.end61.thread132 ], [ %37, %skb_dst.exit.out_free.sink.split_crit_edge ]
  %err.3.ph = phi i32 [ %call.i119, %if.end61.thread132 ], [ %call43, %skb_dst.exit.out_free.sink.split_crit_edge ]
  %88 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %.sink, align 8
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %if.end68.out_free_crit_edge, %if.end61.out_free_crit_edge
  %err.3 = phi i32 [ %err.2, %if.end61.out_free_crit_edge ], [ -90, %if.end68.out_free_crit_edge ], [ %err.3.ph, %out_free.sink.split ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #13
  br label %cleanup78

cleanup78:                                        ; preds = %out_free, %if.end74, %cleanup, %if.end5.cleanup78_crit_edge, %nlmsg_parse_deprecated.exit.cleanup78_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup78_crit_edge, %entry.cleanup78_crit_edge
  %retval.1 = phi i32 [ %err.3, %out_free ], [ %call77, %if.end74 ], [ -19, %cleanup ], [ -22, %entry.cleanup78_crit_edge ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup78_crit_edge ], [ -105, %if.end5.cleanup78_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %tb) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fld) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_fib_dump(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_route_cleanup() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @del_timer(ptr noundef nonnull @dn_route_timer) #13
  tail call void @dn_run_flush(ptr noundef null)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.12, ptr noundef %0) #13
  tail call void @percpu_counter_destroy(ptr noundef getelementptr inbounds (%struct.dst_ops, ptr @dn_dst_ops, i32 0, i32 18)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i32 noundef %hook, ptr noundef %sk, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev, ptr noundef %okfn) unnamed_addr #9 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !199
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx128 = getelementptr %struct.net, ptr @init_net, i32 0, i32 39, i32 7, i32 %hook
  %4 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx128, align 4
  %call130 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %land.lhs.true132, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true132:                                 ; preds = %rcu_read_lock.exit
  %call133 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true132.sw.epilog_crit_edge, label %land.lhs.true135

land.lhs.true132.sw.epilog_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %.b1 = load i1, ptr @nf_hook.__warned.20, align 1
  br i1 %.b1, label %land.lhs.true135.sw.epilog_crit_edge, label %if.then137

land.lhs.true135.sw.epilog_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then137:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nf_hook.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 248, ptr noundef nonnull @.str.1) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then137, %land.lhs.true135.sw.epilog_crit_edge, %land.lhs.true132.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #13
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @init_net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %okfn, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #13
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  %13 = call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_dev_hello(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_neigh_pointopoint_hello(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_route_rx_packet(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dn_route_input(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.then.dst_input.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !190

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.then.dst_input.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input.i, align 4
  %call1.i = tail call i32 %7(ptr noundef %skb) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_debug_level to i32))
  %8 = load i32, ptr @decnet_debug_level, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cb2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %9 = getelementptr inbounds %struct.anon.3, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool4.not = icmp eq ptr %11, null
  %spec.select = select i1 %tobool4.not, ptr @.str.25, ptr %11
  %rt_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rt_flags, align 4
  %conv = zext i8 %13 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %src, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv6 = zext i16 %18 to i32
  %19 = ptrtoint ptr %cb2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cb2, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv7 = zext i16 %21 to i32
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr = lshr i16 %bf.load, 13
  %bf.cast = zext i16 %bf.lshr to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv, ptr noundef nonnull %spec.select, i32 noundef %15, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %call, i32 noundef %bf.cast) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end.if.end10_crit_edge
  %pkt_type11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %23 = ptrtoint ptr %pkt_type11 to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load12 = load i16, ptr %pkt_type11, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load12)
  %cmp16 = icmp ult i16 %bf.load12, 8192
  br i1 %cmp16, label %land.lhs.true, label %if.end10.if.end29_crit_edge

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end10
  %rt_flags18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %24 = ptrtoint ptr %rt_flags18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rt_flags18, align 4
  %conv19 = zext i8 %25 to i32
  %and20 = and i32 %conv19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end29_crit_edge, label %if.then22

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then22:                                        ; preds = %land.lhs.true
  %and25 = and i32 %conv19, 6
  %26 = zext i32 %and25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %and25, label %if.then22.if.end29_crit_edge [
    i32 2, label %sw.bb
    i32 6, label %sw.bb27
  ]

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

sw.bb:                                            ; preds = %if.then22
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %32 to i32
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %conv.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call1.i46 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #13
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %33 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %sw.bb.skb_unshare.exit.i_crit_edge, label %skb_cloned.exit.i.i

sw.bb.skb_unshare.exit.i_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_unshare.exit.i

skb_cloned.exit.i.i:                              ; preds = %sw.bb
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %34 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #13
  %36 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %37, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_cloned.exit.i.i.skb_unshare.exit.i_crit_edge, label %if.then6.i.i

skb_cloned.exit.i.i.skb_unshare.exit.i_crit_edge: ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_unshare.exit.i

if.then6.i.i:                                     ; preds = %skb_cloned.exit.i.i
  %call7.i.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #13
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %skb_unshare.exit.thread.i, label %skb_unshare.exit.thread31.i, !prof !190

skb_unshare.exit.thread31.i:                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %if.end.i

skb_unshare.exit.thread.i:                        ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

skb_unshare.exit.i:                               ; preds = %skb_cloned.exit.i.i.skb_unshare.exit.i_crit_edge, %sw.bb.skb_unshare.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %skb, null
  br i1 %tobool.not.i, label %skb_unshare.exit.i.cleanup_crit_edge, label %skb_unshare.exit.i.if.end.i_crit_edge

skb_unshare.exit.i.if.end.i_crit_edge:            ; preds = %skb_unshare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

skb_unshare.exit.i.cleanup_crit_edge:             ; preds = %skb_unshare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %skb_unshare.exit.i.if.end.i_crit_edge, %skb_unshare.exit.thread31.i
  %skb.addr.0.i34.i = phi ptr [ %call7.i.i, %skb_unshare.exit.thread31.i ], [ %skb, %skb_unshare.exit.i.if.end.i_crit_edge ]
  %data4.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i34.i, i32 0, i32 19
  %38 = ptrtoint ptr %data4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data4.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 2
  %rt_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i34.i, i32 0, i32 3, i32 12
  %40 = ptrtoint ptr %rt_flags.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rt_flags.i, align 4
  %42 = and i8 %41, -25
  %43 = or i8 %42, 16
  %incdec.ptr.i = getelementptr i8, ptr %39, i32 3
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %add.ptr.i, align 1
  %add.ptr6.i = getelementptr i8, ptr %39, i32 5
  %add.ptr7.i = getelementptr i8, ptr %39, i32 7
  %45 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %add.ptr7.i, align 1
  %46 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr6.i, align 2
  %48 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %incdec.ptr.i, align 2
  store i16 %49, ptr %add.ptr6.i, align 2
  store i16 %47, ptr %incdec.ptr.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i34.i, i32 0, i32 15
  %50 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -32768
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %51 = getelementptr inbounds %struct.anon.3, ptr %skb.addr.0.i34.i, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i34.i, i32 0, i32 6
  %54 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i.i, align 4
  %header_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 49
  %56 = ptrtoint ptr %header_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %header_ops.i.i.i, align 4
  %tobool.not.i.i26.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i26.i, label %if.end.i.if.then8.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.if.then8.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tobool2.not.i.i.i = icmp eq ptr %59, null
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.if.then8.i.i_crit_edge, label %dev_hard_header.exit.i.i

lor.lhs.false.i.i.i.if.then8.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i

dev_hard_header.exit.i.i:                         ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i = tail call i32 %59(ptr noundef nonnull %skb.addr.0.i34.i, ptr noundef %53, i16 noundef zeroext 24579, ptr noundef null, ptr noundef null, i32 noundef %55) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp6.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp6.i.i, label %dev_hard_header.exit.i.i.if.then8.i.i_crit_edge, label %if.else.i27.i

dev_hard_header.exit.i.i.if.then8.i.i_crit_edge:  ; preds = %dev_hard_header.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %dev_hard_header.exit.i.i.if.then8.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then8.i.i_crit_edge, %if.end.i.if.then8.i.i_crit_edge
  %call.i16.i.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %skb.addr.0.i34.i) #13
  br label %cleanup

if.else.i27.i:                                    ; preds = %dev_hard_header.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i34.i, i32 noundef 0) #13
  br label %cleanup

sw.bb27:                                          ; preds = %if.then22
  %data.i47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data.i47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i47, align 4
  %head.i.i48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %62 = ptrtoint ptr %head.i.i48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i48, align 8
  %network_header.i.i49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %64 = ptrtoint ptr %network_header.i.i49 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %network_header.i.i49, align 4
  %conv.i.i50 = zext i16 %65 to i32
  %add.ptr.i.i51 = getelementptr i8, ptr %63, i32 %conv.i.i50
  %sub.ptr.lhs.cast.i52 = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i53 = ptrtoint ptr %add.ptr.i.i51 to i32
  %sub.ptr.sub.i54 = sub i32 %sub.ptr.lhs.cast.i52, %sub.ptr.rhs.cast.i53
  %call1.i55 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i54) #13
  %cloned.i.i.i56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %66 = ptrtoint ptr %cloned.i.i.i56 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i.i.i57 = load i8, ptr %cloned.i.i.i56, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i57)
  %tobool.not.i.i.i58 = icmp sgt i8 %bf.load.i.i.i57, -1
  br i1 %tobool.not.i.i.i58, label %sw.bb27.skb_unshare.exit.i70_crit_edge, label %skb_cloned.exit.i.i64

sw.bb27.skb_unshare.exit.i70_crit_edge:           ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_unshare.exit.i70

skb_cloned.exit.i.i64:                            ; preds = %sw.bb27
  %end.i.i.i.i59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %67 = ptrtoint ptr %end.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i.i.i.i59, align 4
  %dataref.i.i.i60 = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 10
  %call.i.i.i.i.i61 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i60, i32 noundef 4) #13
  %69 = ptrtoint ptr %dataref.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %dataref.i.i.i60, align 4
  %and.i.i.i62 = and i32 %70, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i62)
  %cmp.i.not.i.i63 = icmp eq i32 %and.i.i.i62, 1
  br i1 %cmp.i.not.i.i63, label %skb_cloned.exit.i.i64.skb_unshare.exit.i70_crit_edge, label %if.then6.i.i67

skb_cloned.exit.i.i64.skb_unshare.exit.i70_crit_edge: ; preds = %skb_cloned.exit.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_unshare.exit.i70

if.then6.i.i67:                                   ; preds = %skb_cloned.exit.i.i64
  %call7.i.i65 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #13
  %tobool8.not.i.i66 = icmp eq ptr %call7.i.i65, null
  br i1 %tobool8.not.i.i66, label %skb_unshare.exit.thread.i68, label %skb_unshare.exit.thread62.i, !prof !190

skb_unshare.exit.thread62.i:                      ; preds = %if.then6.i.i67
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %if.end.i78

skb_unshare.exit.thread.i68:                      ; preds = %if.then6.i.i67
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

skb_unshare.exit.i70:                             ; preds = %skb_cloned.exit.i.i64.skb_unshare.exit.i70_crit_edge, %sw.bb27.skb_unshare.exit.i70_crit_edge
  %tobool.not.i69 = icmp eq ptr %skb, null
  br i1 %tobool.not.i69, label %skb_unshare.exit.i70.cleanup_crit_edge, label %skb_unshare.exit.i70.if.end.i78_crit_edge

skb_unshare.exit.i70.if.end.i78_crit_edge:        ; preds = %skb_unshare.exit.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i78

skb_unshare.exit.i70.cleanup_crit_edge:           ; preds = %skb_unshare.exit.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i78:                                       ; preds = %skb_unshare.exit.i70.if.end.i78_crit_edge, %skb_unshare.exit.thread62.i
  %skb.addr.0.i65.i = phi ptr [ %call7.i.i65, %skb_unshare.exit.thread62.i ], [ %skb, %skb_unshare.exit.i70.if.end.i78_crit_edge ]
  %data4.i71 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i65.i, i32 0, i32 19
  %71 = ptrtoint ptr %data4.i71 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data4.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %72, i32 2
  %73 = ptrtoint ptr %add.ptr.i72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %add.ptr.i72, align 1
  %and8.i = and i8 %74, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool5.not66.i = icmp slt i8 %74, 0
  %narrow.i = select i1 %tobool5.not66.i, i8 %and8.i, i8 0
  %ptr.0.idx.i = zext i8 %narrow.i to i32
  %ptr.0.i = getelementptr i8, ptr %add.ptr.i72, i32 %ptr.0.idx.i
  %rt_flags.i73 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i65.i, i32 0, i32 3, i32 12
  %75 = ptrtoint ptr %rt_flags.i73 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %rt_flags.i73, align 4
  %77 = and i8 %76, -25
  %78 = or i8 %77, 16
  %79 = ptrtoint ptr %ptr.0.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %ptr.0.i, align 1
  %add.ptr16.i = getelementptr i8, ptr %ptr.0.i, i32 3
  %add.ptr17.i = getelementptr i8, ptr %ptr.0.i, i32 11
  %add.ptr18.i = getelementptr i8, ptr %ptr.0.i, i32 17
  %80 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %add.ptr18.i, align 1
  %81 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %tmp.sroa.0.0.copyload.i = load i8, ptr %add.ptr17.i, align 1
  %tmp.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %ptr.0.i, i32 12
  %82 = ptrtoint ptr %tmp.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %tmp.sroa.5.0.copyload.i = load i8, ptr %tmp.sroa.5.0..sroa_idx.i, align 1
  %tmp.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %ptr.0.i, i32 13
  %83 = ptrtoint ptr %tmp.sroa.6.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %tmp.sroa.6.0.copyload.i = load i8, ptr %tmp.sroa.6.0..sroa_idx.i, align 1
  %tmp.sroa.7.0..sroa_idx.i = getelementptr i8, ptr %ptr.0.i, i32 14
  %84 = ptrtoint ptr %tmp.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %tmp.sroa.7.0.copyload.i = load i8, ptr %tmp.sroa.7.0..sroa_idx.i, align 1
  %tmp.sroa.8.0..sroa_idx.i = getelementptr i8, ptr %ptr.0.i, i32 15
  %85 = ptrtoint ptr %tmp.sroa.8.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %tmp.sroa.8.0.copyload.i = load i8, ptr %tmp.sroa.8.0..sroa_idx.i, align 1
  %tmp.sroa.9.0..sroa_idx.i = getelementptr i8, ptr %ptr.0.i, i32 16
  %86 = ptrtoint ptr %tmp.sroa.9.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %tmp.sroa.9.0.copyload.i = load i8, ptr %tmp.sroa.9.0..sroa_idx.i, align 1
  %87 = call ptr @memcpy(ptr %add.ptr17.i, ptr %add.ptr16.i, i32 6)
  %88 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %tmp.sroa.0.0.copyload.i, ptr %add.ptr16.i, align 1
  %tmp.sroa.5.0..sroa_idx26.i = getelementptr i8, ptr %ptr.0.i, i32 4
  %89 = ptrtoint ptr %tmp.sroa.5.0..sroa_idx26.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %tmp.sroa.5.0.copyload.i, ptr %tmp.sroa.5.0..sroa_idx26.i, align 1
  %tmp.sroa.6.0..sroa_idx28.i = getelementptr i8, ptr %ptr.0.i, i32 5
  %90 = ptrtoint ptr %tmp.sroa.6.0..sroa_idx28.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %tmp.sroa.6.0.copyload.i, ptr %tmp.sroa.6.0..sroa_idx28.i, align 1
  %tmp.sroa.7.0..sroa_idx30.i = getelementptr i8, ptr %ptr.0.i, i32 6
  %91 = ptrtoint ptr %tmp.sroa.7.0..sroa_idx30.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %tmp.sroa.7.0.copyload.i, ptr %tmp.sroa.7.0..sroa_idx30.i, align 1
  %tmp.sroa.8.0..sroa_idx32.i = getelementptr i8, ptr %ptr.0.i, i32 7
  %92 = ptrtoint ptr %tmp.sroa.8.0..sroa_idx32.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %tmp.sroa.8.0.copyload.i, ptr %tmp.sroa.8.0..sroa_idx32.i, align 1
  %tmp.sroa.9.0..sroa_idx34.i = getelementptr i8, ptr %ptr.0.i, i32 8
  %93 = ptrtoint ptr %tmp.sroa.9.0..sroa_idx34.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %tmp.sroa.9.0.copyload.i, ptr %tmp.sroa.9.0..sroa_idx34.i, align 1
  %pkt_type.i74 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i65.i, i32 0, i32 15
  %94 = ptrtoint ptr %pkt_type.i74 to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i75 = load i16, ptr %pkt_type.i74, align 8
  %bf.clear.i76 = and i16 %bf.load.i75, 8191
  %bf.set.i77 = or i16 %bf.clear.i76, -32768
  store i16 %bf.set.i77, ptr %pkt_type.i74, align 8
  %95 = getelementptr inbounds %struct.anon.3, ptr %skb.addr.0.i65.i, i32 0, i32 2
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %type.i.i = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 32
  %98 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %type.i.i, align 16
  %100 = zext i16 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %99, label %if.then.i.i [
    i16 1, label %if.end.i78.if.end.i.i_crit_edge
    i16 772, label %if.end.i78.if.end.i.i_crit_edge89
  ]

if.end.i78.if.end.i.i_crit_edge89:                ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i78.if.end.i.i_crit_edge:                  ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i78.if.end.i.i_crit_edge, %if.end.i78.if.end.i.i_crit_edge89
  %dst.addr.0.i.i = phi ptr [ null, %if.then.i.i ], [ %add.ptr16.i, %if.end.i78.if.end.i.i_crit_edge ], [ %add.ptr16.i, %if.end.i78.if.end.i.i_crit_edge89 ]
  %len.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i65.i, i32 0, i32 6
  %101 = ptrtoint ptr %len.i.i79 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len.i.i79, align 4
  %header_ops.i.i.i80 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 49
  %103 = ptrtoint ptr %header_ops.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %header_ops.i.i.i80, align 4
  %tobool.not.i.i57.i = icmp eq ptr %104, null
  br i1 %tobool.not.i.i57.i, label %if.end.i.i.if.then8.i.i87_crit_edge, label %lor.lhs.false.i.i.i82

if.end.i.i.if.then8.i.i87_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i87

lor.lhs.false.i.i.i82:                            ; preds = %if.end.i.i
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %tobool2.not.i.i.i81 = icmp eq ptr %106, null
  br i1 %tobool2.not.i.i.i81, label %lor.lhs.false.i.i.i82.if.then8.i.i87_crit_edge, label %dev_hard_header.exit.i.i85

lor.lhs.false.i.i.i82.if.then8.i.i87_crit_edge:   ; preds = %lor.lhs.false.i.i.i82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i87

dev_hard_header.exit.i.i85:                       ; preds = %lor.lhs.false.i.i.i82
  %call.i.i.i83 = tail call i32 %106(ptr noundef nonnull %skb.addr.0.i65.i, ptr noundef %97, i16 noundef zeroext 24579, ptr noundef %dst.addr.0.i.i, ptr noundef %add.ptr17.i, i32 noundef %102) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i83)
  %cmp6.i.i84 = icmp sgt i32 %call.i.i.i83, -1
  br i1 %cmp6.i.i84, label %dev_hard_header.exit.i.i85.if.then8.i.i87_crit_edge, label %if.else.i58.i

dev_hard_header.exit.i.i85.if.then8.i.i87_crit_edge: ; preds = %dev_hard_header.exit.i.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i87

if.then8.i.i87:                                   ; preds = %dev_hard_header.exit.i.i85.if.then8.i.i87_crit_edge, %lor.lhs.false.i.i.i82.if.then8.i.i87_crit_edge, %if.end.i.i.if.then8.i.i87_crit_edge
  %call.i16.i.i86 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %skb.addr.0.i65.i) #13
  br label %cleanup

if.else.i58.i:                                    ; preds = %dev_hard_header.exit.i.i85
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i65.i, i32 noundef 0) #13
  br label %cleanup

if.end29:                                         ; preds = %if.then22.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.end10.if.end29_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.else.i58.i, %if.then8.i.i87, %skb_unshare.exit.i70.cleanup_crit_edge, %skb_unshare.exit.thread.i68, %if.else.i27.i, %if.then8.i.i, %skb_unshare.exit.i.cleanup_crit_edge, %skb_unshare.exit.thread.i, %dst_input.exit
  %retval.0 = phi i32 [ %call1.i, %dst_input.exit ], [ 1, %if.end29 ], [ 1, %skb_unshare.exit.i.cleanup_crit_edge ], [ 1, %skb_unshare.exit.thread.i ], [ 0, %if.then8.i.i ], [ 0, %if.else.i27.i ], [ 1, %skb_unshare.exit.i70.cleanup_crit_edge ], [ 1, %skb_unshare.exit.thread.i68 ], [ 0, %if.then8.i.i87 ], [ 0, %if.else.i58.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_route_input(ptr nocapture noundef %skb) unnamed_addr #0 align 64 {
entry:
  %rt.i = alloca ptr, align 4
  %fld.i = alloca %struct.flowidn, align 8
  %res.i = alloca %struct.dn_fib_res, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cb1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %src, align 2
  %2 = ptrtoint ptr %cb1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cb1, align 4
  %xor24.i = xor i16 %3, %1
  %4 = lshr i16 %xor24.i, 3
  %xor5.i = xor i16 %4, %xor24.i
  %5 = lshr i16 %xor5.i, 5
  %xor10.i = xor i16 %5, %xor5.i
  %6 = lshr i16 %xor10.i, 10
  %xor15.i = xor i16 %6, %xor10.i
  %7 = load i32, ptr @dn_rt_hash_mask, align 4
  %conv17.i = zext i16 %xor15.i to i32
  %and.i = and i32 %7, %conv17.i
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %and.i82 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.not.i83 = icmp eq i32 %and.i82, 0
  br i1 %tobool.not.i83, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i85

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i85:                                ; preds = %entry
  %call.i84 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool1.not.i = icmp eq i32 %call.i84, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i85.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i85.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i85
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !190

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i85.skb_dst.exitthread-pre-split_crit_edge
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %8, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %entry.skb_dst.exit_crit_edge
  %12 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %10, %entry.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %tobool.not = icmp ult i32 %12, 2
  br i1 %tobool.not, label %if.end, label %skb_dst.exit.cleanup_crit_edge

skb_dst.exit.cleanup_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %skb_dst.exit
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !199
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %17 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx = getelementptr %struct.dn_rt_hash_bucket, ptr %17, i32 %and.i
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b81 = load i1, ptr @dn_route_input.__warned, align 1
  br i1 %.b81, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_route_input.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1528, ptr noundef nonnull @.str.1) #13
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %cmp.not104 = icmp eq ptr %19, null
  br i1 %cmp.not104, label %do.end13.for.end_crit_edge, label %for.body.lr.ph

do.end13.for.end_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end13
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  br label %for.body

for.body:                                         ; preds = %do.end58.for.body_crit_edge, %for.body.lr.ph
  %rt.0105 = phi ptr [ %19, %for.body.lr.ph ], [ %44, %do.end58.for.body_crit_edge ]
  %fld = getelementptr inbounds %struct.dn_route, ptr %rt.0105, i32 0, i32 3
  %saddr = getelementptr inbounds %struct.dn_route, ptr %rt.0105, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %saddr, align 2
  %23 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %src, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp17 = icmp eq i16 %22, %24
  br i1 %cmp17, label %land.lhs.true19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true19:                                  ; preds = %for.body
  %daddr = getelementptr inbounds %struct.dn_route, ptr %rt.0105, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %daddr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %daddr, align 8
  %27 = ptrtoint ptr %cb1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cb1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp24 = icmp eq i16 %26, %28
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true19
  %29 = ptrtoint ptr %fld to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fld, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp28 = icmp eq i32 %30, 0
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true26.for.inc_crit_edge

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %flowic_mark = getelementptr inbounds %struct.dn_route, ptr %rt.0105, i32 0, i32 3, i32 0, i32 2
  %31 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flowic_mark, align 8
  %33 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp33 = icmp eq i32 %32, %34
  br i1 %cmp33, label %land.lhs.true35, label %land.lhs.true30.for.inc_crit_edge

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %flowic_iif = getelementptr inbounds %struct.dn_route, ptr %rt.0105, i32 0, i32 3, i32 0, i32 1
  %35 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flowic_iif, align 4
  %37 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp38 = icmp eq i32 %36, %38
  br i1 %cmp38, label %if.then40, label %land.lhs.true35.for.inc_crit_edge

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then40:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  tail call fastcc void @dst_hold_and_use(ptr noundef nonnull %rt.0105, i32 noundef %39)
  tail call fastcc void @rcu_read_unlock()
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %40 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %41 = ptrtoint ptr %rt.0105 to i32
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %8, align 8
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true35.for.inc_crit_edge, %land.lhs.true30.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %land.lhs.true19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dn_next = getelementptr inbounds %struct.dn_route, ptr %rt.0105, i32 0, i32 1
  %43 = ptrtoint ptr %dn_next to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %dn_next, align 8
  %call48 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %for.inc.do.end58_crit_edge

for.inc.do.end58_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

land.lhs.true50:                                  ; preds = %for.inc
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true50.do.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %.b7980 = load i1, ptr @dn_route_input.__warned.28, align 1
  br i1 %.b7980, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_route_input.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1529, ptr noundef nonnull @.str.1) #13
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true50.do.end58_crit_edge, %for.inc.do.end58_crit_edge
  %cmp.not = icmp eq ptr %44, null
  br i1 %cmp.not, label %do.end58.for.end_crit_edge, label %do.end58.for.body_crit_edge

do.end58.for.body_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end58.for.end_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.end58.for.end_crit_edge, %do.end13.for.end_crit_edge
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i87, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i90

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i90:                                ; preds = %for.end
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  %45 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i.i94 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i94 to ptr
  %preempt_count.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i95, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i95, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt.i) #13
  %49 = ptrtoint ptr %rt.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rt.i, align 4
  %50 = getelementptr inbounds %struct.anon.3, ptr %skb, i32 0, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fld.i) #13
  %53 = call ptr @memset(ptr %fld.i, i32 0, i32 40)
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fld.i, i32 0, i32 1
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 17
  %54 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ifindex.i, align 4
  %56 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %flowic_iif.i, align 4
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fld.i, i32 0, i32 2
  %57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %60 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %flowic_mark.i, align 8
  %daddr.i = getelementptr inbounds %struct.flowidn, ptr %fld.i, i32 0, i32 1
  %61 = ptrtoint ptr %cb1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %cb1, align 4
  %63 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %daddr.i, align 8
  %saddr.i = getelementptr inbounds %struct.flowidn, ptr %fld.i, i32 0, i32 2
  %64 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %src, align 2
  %66 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %saddr.i, align 2
  %uli.i = getelementptr inbounds %struct.flowidn, ptr %fld.i, i32 0, i32 3
  %67 = ptrtoint ptr %uli.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %uli.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res.i) #13
  %68 = call ptr @memcpy(ptr %res.i, ptr @__const.dn_route_input_slow.res, i32 12)
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %rcu_read_unlock.exit.dev_hold.exit.i_crit_edge, label %do.body1.i.i

rcu_read_unlock.exit.dev_hold.exit.i_crit_edge:   ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %rcu_read_unlock.exit
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 118
  %70 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = tail call i32 @llvm.read_register.i32(metadata !177) #13
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
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add13.i.i = add i32 %81, 1
  store i32 %add13.i.i, ptr %79, align 4
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i.i = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !190

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %69) #13, !srcloc !198
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %rcu_read_unlock.exit.dev_hold.exit.i_crit_edge
  %dn_ptr.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 79
  %83 = ptrtoint ptr %dn_ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %dn_ptr.i, align 4
  %call.i97 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %land.lhs.true.i99, label %dev_hold.exit.i.do.end8.i_crit_edge

dev_hold.exit.i.do.end8.i_crit_edge:              ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

land.lhs.true.i99:                                ; preds = %dev_hold.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i99.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i99.do.end8.i_crit_edge:            ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i99
  %.b268.i = load i1, ptr @dn_route_input_slow.__warned, align 1
  br i1 %.b268.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i100

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

if.then.i100:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_route_input_slow.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1326, ptr noundef nonnull @.str.1) #13
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i100, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i99.do.end8.i_crit_edge, %dev_hold.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %84, null
  br i1 %tobool10.not.i, label %do.end8.i.dn_route_input_slow.exit_crit_edge, label %if.end12.i

do.end8.i.dn_route_input_slow.exit_crit_edge:     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_input_slow.exit

if.end12.i:                                       ; preds = %do.end8.i
  %85 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %saddr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp.i = icmp eq i16 %86, 0
  br i1 %cmp.i, label %if.end12.i.dn_route_input_slow.exit_crit_edge, label %if.end16.i

if.end12.i.dn_route_input_slow.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_input_slow.exit

if.end16.i:                                       ; preds = %if.end12.i
  %87 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %src, align 2
  %call18.i = tail call fastcc i32 @dn_dev_islocal(ptr noundef %52, i16 noundef zeroext %88) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.dn_route_input_slow.exit_crit_edge

if.end16.i.dn_route_input_slow.exit_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_input_slow.exit

if.end21.i:                                       ; preds = %if.end16.i
  %call22.i = call i32 @dn_fib_lookup(ptr noundef nonnull %fld.i, ptr noundef nonnull %res.i) #13
  %89 = zext i32 %call22.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call22.i, label %if.end21.i.dn_route_input_slow.exit_crit_edge [
    i32 0, label %if.else.i
    i32 -3, label %if.end28.i
  ]

if.end21.i.dn_route_input_slow.exit_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_input_slow.exit

if.end28.i:                                       ; preds = %if.end21.i
  %90 = ptrtoint ptr %cb1 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %cb1, align 4
  %call30.i = call fastcc i32 @dn_dev_islocal(ptr noundef %52, i16 noundef zeroext %91) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end28.i.if.end209.i_crit_edge, label %if.end33.i

if.end28.i.if.end209.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209.i

if.end33.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 4
  %92 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %type.i, align 2
  br label %if.end81.i

if.else.i:                                        ; preds = %if.end21.i
  %fi.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 1
  %93 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fi.i, align 4
  %nh_sel.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 3
  %95 = ptrtoint ptr %nh_sel.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %nh_sel.i, align 1
  %idxprom.i = zext i8 %96 to i32
  %arrayidx.i = getelementptr %struct.dn_fib_info, ptr %94, i32 0, i32 12, i32 %idxprom.i
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i, align 4
  %cmp35.i = icmp eq ptr %98, null
  br i1 %cmp35.i, label %do.body38.i, label %do.body1.i278.i

do.body38.i:                                      ; preds = %if.else.i
  %call39.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %do.body38.i.if.then208.i_crit_edge, label %do.end44.i

do.body38.i.if.then208.i_crit_edge:               ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then208.i

do.end44.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #15
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #16
  br label %if.then208.i

do.body1.i278.i:                                  ; preds = %if.else.i
  %99 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %saddr.i, align 2
  %101 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i270.i = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 118
  %102 = ptrtoint ptr %pcpu_refcnt.i270.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pcpu_refcnt.i270.i, align 4
  %104 = ptrtoint ptr %103 to i32
  %105 = call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i271.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i271.i to ptr
  %cpu.i272.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %cpu.i272.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cpu.i272.i, align 4
  %arrayidx.i273.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx.i273.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i273.i, align 4
  %add.i274.i = add i32 %110, %104
  %111 = inttoptr i32 %add.i274.i to ptr
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %add13.i275.i = add i32 %113, 1
  store i32 %add13.i275.i, ptr %111, align 4
  %114 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i276.i = and i32 %114, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i276.i)
  %tobool24.not.i277.i = icmp eq i32 %and.i.i.i276.i, 0
  br i1 %tobool24.not.i277.i, label %if.then28.i279.i, label %do.body1.i278.i.dev_hold.exit281.i_crit_edge, !prof !190

do.body1.i278.i.dev_hold.exit281.i_crit_edge:     ; preds = %do.body1.i278.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_hold.exit281.i

if.then28.i279.i:                                 ; preds = %do.body1.i278.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %dev_hold.exit281.i

dev_hold.exit281.i:                               ; preds = %if.then28.i279.i, %do.body1.i278.i.dev_hold.exit281.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %101) #13, !srcloc !198
  %115 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %res.i, align 4
  %tobool51.not.i = icmp eq ptr %116, null
  br i1 %tobool51.not.i, label %dev_hold.exit281.i.if.end54.i_crit_edge, label %if.then52.i

dev_hold.exit281.i.if.end54.i_crit_edge:          ; preds = %dev_hold.exit281.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i

if.then52.i:                                      ; preds = %dev_hold.exit281.i
  call void @__sanitizer_cov_trace_pc() #15
  %117 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %saddr.i, align 2
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then52.i, %dev_hold.exit281.i.if.end54.i_crit_edge
  %src_map.0.i = phi i16 [ %118, %if.then52.i ], [ %100, %dev_hold.exit281.i.if.end54.i_crit_edge ]
  %119 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fi.i, align 4
  %121 = ptrtoint ptr %nh_sel.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %nh_sel.i, align 1
  %idxprom58.i = zext i8 %122 to i32
  %nh_gw.i = getelementptr %struct.dn_fib_info, ptr %120, i32 0, i32 12, i32 %idxprom58.i, i32 6
  %123 = ptrtoint ptr %nh_gw.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %nh_gw.i, align 4
  %type60.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 4
  %125 = ptrtoint ptr %type60.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %type60.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %126)
  %cmp62.i = icmp eq i8 %126, 10
  br i1 %cmp62.i, label %if.then64.i, label %if.end54.i.cleanup.i_crit_edge

if.end54.i.cleanup.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then64.i:                                      ; preds = %if.end54.i
  %127 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %daddr.i, align 8
  %prefixlen.i.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 2
  %129 = ptrtoint ptr %prefixlen.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %prefixlen.i.i, align 4
  %conv.i.i = zext i8 %130 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i.i.i = icmp eq i8 %130, 0
  %sub.i.i.i101 = sub nsw i32 16, %conv.i.i
  %notmask.i.i.i = shl nsw i32 -1, %sub.i.i.i101
  %conv.i.i.i = trunc i32 %notmask.i.i.i to i16
  %131 = xor i16 %conv.i.i.i, -1
  %132 = call i16 @llvm.bswap.i16(i16 %131) #13
  %neg.i.i = select i1 %tobool.not.i.i.i, i16 -1, i16 %132
  %and.i.i = and i16 %neg.i.i, %128
  %nh_gw.i.i = getelementptr inbounds %struct.dn_fib_info, ptr %120, i32 1, i32 6
  %133 = ptrtoint ptr %nh_gw.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %nh_gw.i.i, align 4
  %or.i.i = or i16 %and.i.i, %134
  %135 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %or.i.i, ptr %daddr.i, align 8
  call fastcc void @dn_fib_res_put(ptr noundef nonnull %res.i) #13
  %call68.i = call i32 @dn_fib_lookup(ptr noundef nonnull %fld.i, ptr noundef nonnull %res.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %if.then64.i.if.end209.i_crit_edge

if.then64.i.if.end209.i_crit_edge:                ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209.i

if.end71.i:                                       ; preds = %if.then64.i
  %136 = ptrtoint ptr %type60.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %type60.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %137)
  %cmp74.not.i = icmp eq i8 %137, 1
  br i1 %cmp74.not.i, label %if.end77.i, label %if.end71.i.if.then208.i_crit_edge

if.end71.i.if.then208.i_crit_edge:                ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then208.i

if.end77.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %daddr.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end77.i, %if.end54.i.cleanup.i_crit_edge
  %flags.0.i = phi i32 [ 134217728, %if.end77.i ], [ 0, %if.end54.i.cleanup.i_crit_edge ]
  %gateway.0.i = phi i16 [ %139, %if.end77.i ], [ %124, %if.end54.i.cleanup.i_crit_edge ]
  %140 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %src_map.0.i, ptr %saddr.i, align 2
  br label %if.end81.i

if.end81.i:                                       ; preds = %cleanup.i, %if.end33.i
  %out_dev.0.i = phi ptr [ null, %if.end33.i ], [ %98, %cleanup.i ]
  %flags.2.i = phi i32 [ 0, %if.end33.i ], [ %flags.0.i, %cleanup.i ]
  %gateway.2.i = phi i16 [ 0, %if.end33.i ], [ %gateway.0.i, %cleanup.i ]
  %tobool207.not.i = phi i1 [ true, %if.end33.i ], [ false, %cleanup.i ]
  %type82.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 4
  %141 = ptrtoint ptr %type82.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %type82.i, align 2
  %143 = zext i8 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %142, label %if.end81.i.if.end206.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 6, label %if.end81.i.make_route.i_crit_edge
    i8 7, label %if.end81.i.make_route.i_crit_edge112
    i8 2, label %sw.bb111.i
  ]

if.end81.i.make_route.i_crit_edge112:             ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %make_route.i

if.end81.i.make_route.i_crit_edge:                ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %make_route.i

if.end81.i.if.end206.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206.i

sw.bb.i:                                          ; preds = %if.end81.i
  %forwarding.i = getelementptr inbounds %struct.dn_dev, ptr %84, i32 0, i32 2, i32 3
  %144 = ptrtoint ptr %forwarding.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %forwarding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp84.i = icmp eq i32 %145, 0
  br i1 %cmp84.i, label %sw.bb.i.if.end206.i_crit_edge, label %if.end87.i

sw.bb.i.if.end206.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206.i

if.end87.i:                                       ; preds = %sw.bb.i
  %fi88.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 1
  %146 = ptrtoint ptr %fi88.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %fi88.i, align 4
  %fib_nhs.i = getelementptr inbounds %struct.dn_fib_info, ptr %147, i32 0, i32 10
  %148 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fib_nhs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %149)
  %cmp89.i = icmp sgt i32 %149, 1
  br i1 %cmp89.i, label %land.lhs.true91.i, label %if.end87.i.if.end96.i_crit_edge

if.end87.i.if.end96.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96.i

land.lhs.true91.i:                                ; preds = %if.end87.i
  %150 = ptrtoint ptr %fld.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %fld.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp93.i = icmp eq i32 %151, 0
  br i1 %cmp93.i, label %if.then95.i, label %land.lhs.true91.i.if.end96.i_crit_edge

land.lhs.true91.i.if.end96.i_crit_edge:           ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96.i

if.then95.i:                                      ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dn_fib_select_multipath(ptr noundef nonnull %fld.i, ptr noundef nonnull %res.i) #13
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then95.i, %land.lhs.true91.i.if.end96.i_crit_edge, %if.end87.i.if.end96.i_crit_edge
  %cmp97.i = icmp eq ptr %out_dev.0.i, %52
  %and.i102 = and i32 %flags.2.i, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool100.not.i = icmp eq i32 %and.i102, 0
  %or.cond.i = and i1 %cmp97.i, %tobool100.not.i
  %or102.i = or i32 %flags.2.i, 16777216
  %flags.3.i = select i1 %or.cond.i, i32 %or102.i, i32 %flags.2.i
  %152 = ptrtoint ptr %fi88.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %fi88.i, align 4
  %fib_prefsrc.i = getelementptr inbounds %struct.dn_fib_info, ptr %153, i32 0, i32 7
  %154 = ptrtoint ptr %fib_prefsrc.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %fib_prefsrc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool106.not.i = icmp eq i16 %155, 0
  br i1 %tobool106.not.i, label %cond.false.i, label %if.end96.i.cond.end.i_crit_edge

if.end96.i.cond.end.i_crit_edge:                  ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #15
  %nh_sel.i.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 3
  %156 = ptrtoint ptr %nh_sel.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %nh_sel.i.i, align 1
  %idxprom.i.i = zext i8 %157 to i32
  %arrayidx.i283.i = getelementptr %struct.dn_fib_info, ptr %153, i32 0, i32 12, i32 %idxprom.i.i
  %158 = ptrtoint ptr %arrayidx.i283.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i283.i, align 4
  %nh_gw.i284.i = getelementptr %struct.dn_fib_info, ptr %153, i32 0, i32 12, i32 %idxprom.i.i, i32 6
  %160 = ptrtoint ptr %nh_gw.i284.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %nh_gw.i284.i, align 4
  %scope.i.i = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 5
  %162 = ptrtoint ptr %scope.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %scope.i.i, align 1
  %conv.i285.i = zext i8 %163 to i32
  %call.i.i = call fastcc zeroext i16 @dnet_select_source(ptr noundef %159, i16 noundef zeroext %161, i32 noundef %conv.i285.i) #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end96.i.cond.end.i_crit_edge
  %cond.in.i = phi i16 [ %call.i.i, %cond.false.i ], [ %155, %if.end96.i.cond.end.i_crit_edge ]
  %cond.i = zext i16 %cond.in.i to i32
  br label %make_route.i

sw.bb111.i:                                       ; preds = %if.end81.i
  %or112.i = or i32 %flags.2.i, -2147483648
  %164 = ptrtoint ptr %cb1 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %cb1, align 4
  %166 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %saddr.i, align 2
  %167 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %src, align 2
  %169 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %daddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %gateway.2.i)
  %tobool117.not.i = icmp eq i16 %gateway.2.i, 0
  br i1 %tobool117.not.i, label %if.end119.i, label %sw.bb111.i.make_route.i_crit_edge

sw.bb111.i.make_route.i_crit_edge:                ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %make_route.i

if.end119.i:                                      ; preds = %sw.bb111.i
  %rt_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %170 = ptrtoint ptr %rt_flags.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %rt_flags.i, align 4
  %172 = and i8 %171, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool122.not.i = icmp eq i8 %172, 0
  br i1 %tobool122.not.i, label %if.end125.i, label %if.end119.i.make_route.i_crit_edge

if.end119.i.make_route.i_crit_edge:               ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %make_route.i

if.end125.i:                                      ; preds = %if.end119.i
  %router.i = getelementptr inbounds %struct.dn_dev, ptr %84, i32 0, i32 8
  %173 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %router.i, align 4
  %call126.i = call fastcc ptr @neigh_clone(ptr noundef %174) #13
  %tobool127.not.i = icmp eq ptr %174, null
  br i1 %tobool127.not.i, label %if.end129.i, label %if.then128.i

if.then128.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #15
  %addr.i = getelementptr inbounds %struct.dn_neigh, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %addr.i, align 8
  br label %make_route.i

if.end129.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #15
  %177 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %src, align 2
  br label %make_route.i

make_route.i:                                     ; preds = %if.end129.i, %if.then128.i, %if.end119.i.make_route.i_crit_edge, %sw.bb111.i.make_route.i_crit_edge, %cond.end.i, %if.end81.i.make_route.i_crit_edge, %if.end81.i.make_route.i_crit_edge112
  %neigh.0.i = phi ptr [ null, %sw.bb111.i.make_route.i_crit_edge ], [ %174, %if.then128.i ], [ null, %if.end129.i ], [ null, %if.end81.i.make_route.i_crit_edge ], [ null, %if.end81.i.make_route.i_crit_edge112 ], [ null, %cond.end.i ], [ null, %if.end119.i.make_route.i_crit_edge ]
  %flags.4.i = phi i32 [ %or112.i, %sw.bb111.i.make_route.i_crit_edge ], [ %or112.i, %if.then128.i ], [ %or112.i, %if.end129.i ], [ %flags.2.i, %if.end81.i.make_route.i_crit_edge ], [ %flags.2.i, %if.end81.i.make_route.i_crit_edge112 ], [ %flags.3.i, %cond.end.i ], [ %or112.i, %if.end119.i.make_route.i_crit_edge ]
  %gateway.3.i = phi i16 [ %gateway.2.i, %sw.bb111.i.make_route.i_crit_edge ], [ %176, %if.then128.i ], [ %178, %if.end129.i ], [ %gateway.2.i, %if.end81.i.make_route.i_crit_edge ], [ %gateway.2.i, %if.end81.i.make_route.i_crit_edge112 ], [ %gateway.2.i, %cond.end.i ], [ %168, %if.end119.i.make_route.i_crit_edge ]
  %local_src.0.i = phi i32 [ 0, %sw.bb111.i.make_route.i_crit_edge ], [ 0, %if.then128.i ], [ 0, %if.end129.i ], [ 0, %if.end81.i.make_route.i_crit_edge ], [ 0, %if.end81.i.make_route.i_crit_edge112 ], [ %cond.i, %cond.end.i ], [ 0, %if.end119.i.make_route.i_crit_edge ]
  %call131.i = call ptr @dst_alloc(ptr noundef nonnull @dn_dst_ops, ptr noundef %out_dev.0.i, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0) #13
  %179 = ptrtoint ptr %rt.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call131.i, ptr %rt.i, align 4
  %cmp132.i = icmp eq ptr %call131.i, null
  br i1 %cmp132.i, label %make_route.i.done.i_crit_edge, label %if.end135.i

make_route.i.done.i_crit_edge:                    ; preds = %make_route.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.i

if.end135.i:                                      ; preds = %make_route.i
  %dn_next.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 1
  %180 = ptrtoint ptr %dn_next.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %dn_next.i, align 8
  %fld136.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 3
  %181 = call ptr @memset(ptr %fld136.i, i32 0, i32 48)
  %182 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %saddr.i, align 2
  %rt_saddr.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 4
  %184 = ptrtoint ptr %rt_saddr.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %rt_saddr.i, align 8
  %185 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %daddr.i, align 8
  %rt_daddr.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 5
  %187 = ptrtoint ptr %rt_daddr.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %186, ptr %rt_daddr.i, align 2
  %rt_gateway.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %gateway.3.i)
  %tobool140.not.i = icmp eq i16 %gateway.3.i, 0
  %spec.store.select.i = select i1 %tobool140.not.i, i16 %186, i16 %gateway.3.i
  %188 = ptrtoint ptr %rt_gateway.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %spec.store.select.i, ptr %rt_gateway.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local_src.0.i)
  %tobool145.not.i = icmp eq i32 %local_src.0.i, 0
  %conv150.i = zext i16 %183 to i32
  %spec.select = select i1 %tobool145.not.i, i32 %conv150.i, i32 %local_src.0.i
  %conv153.i = trunc i32 %spec.select to i16
  %rt_local_src.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 7
  %189 = ptrtoint ptr %rt_local_src.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv153.i, ptr %rt_local_src.i, align 2
  %rt_dst_map.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 9
  %190 = ptrtoint ptr %rt_dst_map.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %186, ptr %rt_dst_map.i, align 2
  %rt_src_map.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 8
  %191 = ptrtoint ptr %rt_src_map.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %183, ptr %rt_src_map.i, align 8
  %192 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %src, align 2
  %saddr158.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 3, i32 2
  %194 = ptrtoint ptr %saddr158.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %saddr158.i, align 2
  %195 = ptrtoint ptr %cb1 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %cb1, align 4
  %daddr161.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 3, i32 1
  %197 = ptrtoint ptr %daddr161.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %196, ptr %daddr161.i, align 8
  %198 = ptrtoint ptr %fld136.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %fld136.i, align 8
  %199 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ifindex.i, align 4
  %flowic_iif168.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 3, i32 0, i32 1
  %201 = ptrtoint ptr %flowic_iif168.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %flowic_iif168.i, align 4
  %202 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %flowic_mark.i, align 8
  %flowic_mark173.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 3, i32 0, i32 2
  %204 = ptrtoint ptr %flowic_mark173.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %flowic_mark173.i, align 8
  %n.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 2
  %205 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %neigh.0.i, ptr %n.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %206 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.dst_entry, ptr %call131.i, i32 0, i32 12
  %207 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %lastuse.i, align 8
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %call131.i, i32 0, i32 6
  %208 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @dn_rt_bug_out, ptr %output.i, align 8
  %209 = ptrtoint ptr %type82.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %type82.i, align 2
  %211 = zext i8 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %210, label %sw.bb188.i [
    i8 1, label %sw.bb178.i
    i8 2, label %sw.bb180.i
  ]

sw.bb178.i:                                       ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #15
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %call131.i, i32 0, i32 5
  %212 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @dn_forward, ptr %input.i, align 4
  br label %sw.epilog191.i

sw.bb180.i:                                       ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #15
  %213 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @dn_output, ptr %output.i, align 8
  %input184.i = getelementptr inbounds %struct.dst_entry, ptr %call131.i, i32 0, i32 5
  %214 = ptrtoint ptr %input184.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @dn_nsp_rx, ptr %input184.i, align 4
  %215 = ptrtoint ptr %call131.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %52, ptr %call131.i, align 8
  %or186.i = or i32 %flags.4.i, -2147483648
  br label %sw.epilog191.i

sw.bb188.i:                                       ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #15
  %input190.i = getelementptr inbounds %struct.dst_entry, ptr %call131.i, i32 0, i32 5
  %216 = ptrtoint ptr %input190.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr @dst_discard, ptr %input190.i, align 4
  br label %sw.epilog191.i

sw.epilog191.i:                                   ; preds = %sw.bb188.i, %sw.bb180.i, %sw.bb178.i
  %flags.5.i = phi i32 [ %flags.4.i, %sw.bb188.i ], [ %or186.i, %sw.bb180.i ], [ %flags.4.i, %sw.bb178.i ]
  %rt_flags192.i = getelementptr inbounds %struct.dn_route, ptr %call131.i, i32 0, i32 10
  %217 = ptrtoint ptr %rt_flags192.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %flags.5.i, ptr %rt_flags192.i, align 4
  %call193.i = call fastcc i32 @dn_rt_set_next_hop(ptr noundef nonnull %call131.i, ptr noundef nonnull %res.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193.i)
  %tobool194.not.i = icmp eq i32 %call193.i, 0
  br i1 %tobool194.not.i, label %if.end196.i, label %e_neighbour.i

if.end196.i:                                      ; preds = %sw.epilog191.i
  call void @__sanitizer_cov_trace_pc() #15
  %218 = ptrtoint ptr %saddr158.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %saddr158.i, align 2
  %220 = ptrtoint ptr %daddr161.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %daddr161.i, align 8
  %xor24.i.i = xor i16 %221, %219
  %222 = lshr i16 %xor24.i.i, 3
  %xor5.i.i = xor i16 %222, %xor24.i.i
  %223 = lshr i16 %xor5.i.i, 5
  %xor10.i.i = xor i16 %223, %xor5.i.i
  %224 = lshr i16 %xor10.i.i, 10
  %xor15.i.i = xor i16 %224, %xor10.i.i
  %225 = load i32, ptr @dn_rt_hash_mask, align 4
  %conv17.i.i = zext i16 %xor15.i.i to i32
  %and.i286.i = and i32 %225, %conv17.i.i
  call fastcc void @dn_insert_route(ptr noundef nonnull %call131.i, i32 noundef %and.i286.i, ptr noundef nonnull %rt.i) #13
  %226 = ptrtoint ptr %rt.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rt.i, align 4
  %tobool.not.i287.i = icmp eq ptr %227, null
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %228 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool.not.i287.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %229 = ptrtoint ptr %227 to i32
  %230 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %8, align 8
  br label %done.i

done.i:                                           ; preds = %e_neighbour.i, %if.end196.i, %make_route.i.done.i_crit_edge
  %err.0.i = phi i32 [ %call193.i, %e_neighbour.i ], [ 0, %if.end196.i ], [ -105, %make_route.i.done.i_crit_edge ]
  %tobool204.not.i = icmp eq ptr %neigh.0.i, null
  br i1 %tobool204.not.i, label %done.i.if.end206.i_crit_edge, label %if.then205.i

done.i.if.end206.i_crit_edge:                     ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206.i

if.then205.i:                                     ; preds = %done.i
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !203
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #13
  %231 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #13, !srcloc !204
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %231, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end206.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !191

if.end5.i.i.i.i.i.if.end206.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #13
  br label %if.end206.i

if.then.i.i:                                      ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !205
  call void @neigh_destroy(ptr noundef nonnull %neigh.0.i) #13
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end206.i_crit_edge, %done.i.if.end206.i_crit_edge, %sw.bb.i.if.end206.i_crit_edge, %if.end81.i.if.end206.i_crit_edge
  %err.0323.i = phi i32 [ %err.0.i, %done.i.if.end206.i_crit_edge ], [ %err.0.i, %if.end5.i.i.i.i.i.if.end206.i_crit_edge ], [ %err.0.i, %if.then10.i.i.i.i.i ], [ %err.0.i, %if.then.i.i ], [ -22, %if.end81.i.if.end206.i_crit_edge ], [ -22, %sw.bb.i.if.end206.i_crit_edge ]
  br i1 %tobool207.not.i, label %if.end206.i.if.end209.i_crit_edge, label %if.end206.i.if.then208.i_crit_edge

if.end206.i.if.then208.i_crit_edge:               ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then208.i

if.end206.i.if.end209.i_crit_edge:                ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209.i

if.then208.i:                                     ; preds = %if.end206.i.if.then208.i_crit_edge, %if.end71.i.if.then208.i_crit_edge, %do.end44.i, %do.body38.i.if.then208.i_crit_edge
  %out_dev.1322331.i = phi ptr [ %out_dev.0.i, %if.end206.i.if.then208.i_crit_edge ], [ %98, %if.end71.i.if.then208.i_crit_edge ], [ null, %do.body38.i.if.then208.i_crit_edge ], [ null, %do.end44.i ]
  %err.0323329.i = phi i32 [ %err.0323.i, %if.end206.i.if.then208.i_crit_edge ], [ -22, %if.end71.i.if.then208.i_crit_edge ], [ -22, %do.body38.i.if.then208.i_crit_edge ], [ -22, %do.end44.i ]
  call fastcc void @dn_fib_res_put(ptr noundef nonnull %res.i) #13
  br label %if.end209.i

if.end209.i:                                      ; preds = %if.then208.i, %if.end206.i.if.end209.i_crit_edge, %if.then64.i.if.end209.i_crit_edge, %if.end28.i.if.end209.i_crit_edge
  %out_dev.1322332.i = phi ptr [ %out_dev.1322331.i, %if.then208.i ], [ %out_dev.0.i, %if.end206.i.if.end209.i_crit_edge ], [ %98, %if.then64.i.if.end209.i_crit_edge ], [ null, %if.end28.i.if.end209.i_crit_edge ]
  %err.0323330.i = phi i32 [ %err.0323329.i, %if.then208.i ], [ %err.0323.i, %if.end206.i.if.end209.i_crit_edge ], [ -22, %if.then64.i.if.end209.i_crit_edge ], [ -22, %if.end28.i.if.end209.i_crit_edge ]
  br i1 %tobool.not.i.i, label %if.end209.i.dev_put.exit.i_crit_edge, label %do.body1.i297.i

if.end209.i.dev_put.exit.i_crit_edge:             ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit.i

do.body1.i297.i:                                  ; preds = %if.end209.i
  %232 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i289.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 118
  %233 = ptrtoint ptr %pcpu_refcnt.i289.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %pcpu_refcnt.i289.i, align 4
  %235 = ptrtoint ptr %234 to i32
  %236 = call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i290.i = and i32 %236, -16384
  %237 = inttoptr i32 %and.i.i290.i to ptr
  %cpu.i291.i = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 3
  %238 = ptrtoint ptr %cpu.i291.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %cpu.i291.i, align 4
  %arrayidx.i292.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %239
  %240 = ptrtoint ptr %arrayidx.i292.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx.i292.i, align 4
  %add.i293.i = add i32 %241, %235
  %242 = inttoptr i32 %add.i293.i to ptr
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %242, align 4
  %add13.i294.i = add i32 %244, -1
  store i32 %add13.i294.i, ptr %242, align 4
  %245 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i295.i = and i32 %245, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i295.i)
  %tobool24.not.i296.i = icmp eq i32 %and.i.i.i295.i, 0
  br i1 %tobool24.not.i296.i, label %if.then28.i298.i, label %do.body1.i297.i.do.end30.i299.i_crit_edge, !prof !190

do.body1.i297.i.do.end30.i299.i_crit_edge:        ; preds = %do.body1.i297.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i299.i

if.then28.i298.i:                                 ; preds = %do.body1.i297.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end30.i299.i

do.end30.i299.i:                                  ; preds = %if.then28.i298.i, %do.body1.i297.i.do.end30.i299.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %232) #13, !srcloc !198
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i299.i, %if.end209.i.dev_put.exit.i_crit_edge
  %tobool.not.i300.i = icmp eq ptr %out_dev.1322332.i, null
  br i1 %tobool.not.i300.i, label %dev_put.exit.i.dn_route_input_slow.exit_crit_edge, label %do.body1.i309.i

dev_put.exit.i.dn_route_input_slow.exit_crit_edge: ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dn_route_input_slow.exit

do.body1.i309.i:                                  ; preds = %dev_put.exit.i
  %246 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i301.i = getelementptr inbounds %struct.net_device, ptr %out_dev.1322332.i, i32 0, i32 118
  %247 = ptrtoint ptr %pcpu_refcnt.i301.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pcpu_refcnt.i301.i, align 4
  %249 = ptrtoint ptr %248 to i32
  %250 = call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i302.i = and i32 %250, -16384
  %251 = inttoptr i32 %and.i.i302.i to ptr
  %cpu.i303.i = getelementptr inbounds %struct.thread_info, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %cpu.i303.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %cpu.i303.i, align 4
  %arrayidx.i304.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %253
  %254 = ptrtoint ptr %arrayidx.i304.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx.i304.i, align 4
  %add.i305.i = add i32 %255, %249
  %256 = inttoptr i32 %add.i305.i to ptr
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %256, align 4
  %add13.i306.i = add i32 %258, -1
  store i32 %add13.i306.i, ptr %256, align 4
  %259 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i307.i = and i32 %259, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i307.i)
  %tobool24.not.i308.i = icmp eq i32 %and.i.i.i307.i, 0
  br i1 %tobool24.not.i308.i, label %if.then28.i310.i, label %do.body1.i309.i.do.end30.i311.i_crit_edge, !prof !190

do.body1.i309.i.do.end30.i311.i_crit_edge:        ; preds = %do.body1.i309.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i311.i

if.then28.i310.i:                                 ; preds = %do.body1.i309.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end30.i311.i

do.end30.i311.i:                                  ; preds = %if.then28.i310.i, %do.body1.i309.i.do.end30.i311.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %246) #13, !srcloc !198
  br label %dn_route_input_slow.exit

e_neighbour.i:                                    ; preds = %sw.epilog191.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dst_release_immediate(ptr noundef nonnull %call131.i) #13
  br label %done.i

dn_route_input_slow.exit:                         ; preds = %do.end30.i311.i, %dev_put.exit.i.dn_route_input_slow.exit_crit_edge, %if.end21.i.dn_route_input_slow.exit_crit_edge, %if.end16.i.dn_route_input_slow.exit_crit_edge, %if.end12.i.dn_route_input_slow.exit_crit_edge, %do.end8.i.dn_route_input_slow.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end12.i.dn_route_input_slow.exit_crit_edge ], [ -76, %if.end16.i.dn_route_input_slow.exit_crit_edge ], [ -22, %do.end8.i.dn_route_input_slow.exit_crit_edge ], [ %call22.i, %if.end21.i.dn_route_input_slow.exit_crit_edge ], [ %err.0323330.i, %dev_put.exit.i.dn_route_input_slow.exit_crit_edge ], [ %err.0323330.i, %do.end30.i311.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res.i) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fld.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt.i) #13
  br label %cleanup

cleanup:                                          ; preds = %dn_route_input_slow.exit, %if.then40, %skb_dst.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then40 ], [ %retval.0.i, %dn_route_input_slow.exit ], [ 0, %skb_dst.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dst_hold_and_use(ptr noundef %dst, i32 noundef %time) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #13, !srcloc !193
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end10.i, label %atomic_inc_not_zero.exit.thread.i

atomic_inc_not_zero.exit.thread.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  br label %dst_hold.exit

do.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 231, i32 noundef 9, ptr noundef null) #13
  br label %dst_hold.exit

dst_hold.exit:                                    ; preds = %do.end10.i, %atomic_inc_not_zero.exit.thread.i
  %lastuse.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 12
  %1 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lastuse.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %time)
  %cmp.not.i = icmp eq i32 %2, %time
  br i1 %cmp.not.i, label %dst_hold.exit.dst_use_noref.exit_crit_edge, label %if.then.i, !prof !191

dst_hold.exit.dst_use_noref.exit_crit_edge:       ; preds = %dst_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_use_noref.exit

if.then.i:                                        ; preds = %dst_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  %__use.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 11
  %3 = ptrtoint ptr %__use.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__use.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %__use.i, align 4
  %5 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %time, ptr %lastuse.i, align 4
  br label %dst_use_noref.exit

dst_use_noref.exit:                               ; preds = %if.then.i, %dst_hold.exit.dst_use_noref.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_hold(ptr noundef readonly %dev) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !190

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !198
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_dev_islocal(ptr noundef %dev, i16 noundef zeroext %addr) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !199
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %4 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %dn_ptr, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @dn_dev_islocal.__warned, align 1
  br i1 %.b64, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_dev_islocal.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 181, ptr noundef nonnull @.str.1) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end12, label %if.end15

do.end12:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #16
  br label %out

if.end15:                                         ; preds = %do.end7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %call21 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %if.end15.do.end31_crit_edge

if.end15.do.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

land.lhs.true23:                                  ; preds = %if.end15
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true23.do.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %.b5963 = load i1, ptr @dn_dev_islocal.__warned.35, align 1
  br i1 %.b5963, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_dev_islocal.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 187, ptr noundef nonnull @.str.1) #13
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true23.do.end31_crit_edge, %if.end15.do.end31_crit_edge
  %cmp33.not74 = icmp eq ptr %7, null
  br i1 %cmp33.not74, label %do.end31.out_crit_edge, label %do.end31.for.body_crit_edge

do.end31.for.body_crit_edge:                      ; preds = %do.end31
  br label %for.body

do.end31.out_crit_edge:                           ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body:                                         ; preds = %do.end54.for.body_crit_edge, %do.end31.for.body_crit_edge
  %ifa.075 = phi ptr [ %11, %do.end54.for.body_crit_edge ], [ %7, %do.end31.for.body_crit_edge ]
  %ifa_local = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa.075, i32 0, i32 2
  %8 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ifa_local, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %addr)
  %cmp35 = icmp eq i16 %9, %addr
  br i1 %cmp35, label %for.body.out_crit_edge, label %for.inc

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc:                                          ; preds = %for.body
  %10 = ptrtoint ptr %ifa.075 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %ifa.075, align 4
  %call44 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %for.inc.do.end54_crit_edge

for.inc.do.end54_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

land.lhs.true46:                                  ; preds = %for.inc
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true46.do.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %.b6062 = load i1, ptr @dn_dev_islocal.__warned.36, align 1
  br i1 %.b6062, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_dev_islocal.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 189, ptr noundef nonnull @.str.1) #13
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true46.do.end54_crit_edge, %for.inc.do.end54_crit_edge
  %cmp33.not = icmp eq ptr %11, null
  br i1 %cmp33.not, label %do.end54.out_crit_edge, label %do.end54.for.body_crit_edge

do.end54.for.body_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end54.out_crit_edge:                           ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %do.end54.out_crit_edge, %for.body.out_crit_edge, %do.end31.out_crit_edge, %do.end12
  %res.0 = phi i32 [ 0, %do.end12 ], [ 0, %do.end31.out_crit_edge ], [ 0, %do.end54.out_crit_edge ], [ 1, %for.body.out_crit_edge ]
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i65, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %out
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  %12 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i.i72 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_fib_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_fib_res_put(ptr nocapture noundef readonly %res) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %fi = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %fib_clntref.i = getelementptr inbounds %struct.dn_fib_info, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %fib_clntref.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i, ptr %fib_clntref.i, i32 1, ptr elementtype(i32) %fib_clntref.i) #13, !srcloc !204
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !191

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref.i, i32 noundef 3) #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !205
  tail call void @dn_fib_free_info(ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %refcnt.i = getelementptr inbounds %struct.fib_rule, ptr %4, i32 0, i32 15
  %call.i.i.i.i.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !204
  %asmresult.i.i.i.i.i.i.i11 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i11)
  %cmp.i.i.i.i12 = icmp eq i32 %asmresult.i.i.i.i.i.i.i11, 1
  br i1 %cmp.i.i.i.i12, label %do.end.i, label %if.end5.i.i.i.i14

if.end5.i.i.i.i14:                                ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i11)
  %.not.i.i.i.i13 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i11, 0
  br i1 %.not.i.i.i.i13, label %if.end5.i.i.i.i14.if.end5_crit_edge, label %if.then10.i.i.i.i15, !prof !191

if.end5.i.i.i.i14.if.end5_crit_edge:              ; preds = %if.end5.i.i.i.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then10.i.i.i.i15:                              ; preds = %if.end5.i.i.i.i14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %if.end5

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !205
  %rcu.i = getelementptr inbounds %struct.fib_rule, ptr %4, i32 0, i32 24
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 120 to ptr)) #13
  br label %if.end5

if.end5:                                          ; preds = %do.end.i, %if.then10.i.i.i.i15, %if.end5.i.i.i.i14.if.end5_crit_edge, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_fib_select_multipath(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @neigh_clone(ptr noundef returned %neigh) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %neigh, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !201
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !190

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !191

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #13
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %neigh
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_rt_bug_out(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cb1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dn_rt_bug_out.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dn_rt_bug_out, %land.lhs.true)) #13
          to label %do.end [label %land.lhs.true], !srcloc !207

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %src, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %cb1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cb1, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv6 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dn_rt_bug_out.descriptor, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %conv6) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_forward(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !190

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 79
  %8 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %dn_ptr, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %skb_dst.exit.do.end9_crit_edge

skb_dst.exit.do.end9_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %skb_dst.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b68 = load i1, ptr @dn_forward.__warned, align 1
  br i1 %.b68, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_forward.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 781, ptr noundef nonnull @.str.1) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %skb_dst.exit.do.end9_crit_edge
  %10 = getelementptr inbounds %struct.anon.3, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %13 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end14, label %do.end9.drop_crit_edge

do.end9.drop_crit_edge:                           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop

if.end14:                                         ; preds = %do.end9
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 8
  %and.i69 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i70, label %if.end14.skb_dst.exit79_crit_edge, label %land.lhs.true.i73

if.end14.skb_dst.exit79_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit79

land.lhs.true.i73:                                ; preds = %if.end14
  %call.i71 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool1.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool1.not.i72, label %land.rhs.i76, label %land.lhs.true.i73.skb_dst.exit79_crit_edge

land.lhs.true.i73.skb_dst.exit79_crit_edge:       ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit79

land.rhs.i76:                                     ; preds = %land.lhs.true.i73
  %call2.i74 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i74)
  %tobool3.not.i75 = icmp eq i32 %call2.i74, 0
  br i1 %tobool3.not.i75, label %do.end.i77, label %land.rhs.i76.skb_dst.exit79_crit_edge, !prof !190

land.rhs.i76.skb_dst.exit79_crit_edge:            ; preds = %land.rhs.i76
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit79

do.end.i77:                                       ; preds = %land.rhs.i76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit79

skb_dst.exit79:                                   ; preds = %do.end.i77, %land.rhs.i76.skb_dst.exit79_crit_edge, %land.lhs.true.i73.skb_dst.exit79_crit_edge, %if.end14.skb_dst.exit79_crit_edge
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 8
  %and25.i78 = and i32 %17, -2
  %18 = inttoptr i32 %and25.i78 to ptr
  %use_long = getelementptr inbounds %struct.dn_dev, ptr %9, i32 0, i32 3
  %19 = ptrtoint ptr %use_long to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_long, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hard_header_len, align 2
  %conv20 = zext i16 %24 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 21
  %25 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %needed_headroom, align 8
  %conv23 = zext i16 %26 to i32
  %add = add nuw nsw i32 %conv23, %conv20
  %and = and i32 %add, 131056
  %add24 = select i1 %tobool17.not, i32 22, i32 37
  %add25 = add nuw nsw i32 %add24, %and
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %27 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_dst.exit79.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

skb_dst.exit79.skb_cloned.exit.i_crit_edge:       ; preds = %skb_dst.exit79
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %skb_dst.exit79
  call void @__sanitizer_cov_trace_pc() #15
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #13
  %30 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %31, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %skb_dst.exit79.skb_cloned.exit.i_crit_edge
  %32 = phi i1 [ true, %skb_dst.exit79.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add25)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add25
  %or.cond.i.i = and i1 %32, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end29_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end29_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %37 = tail call i32 @llvm.usub.sat.i32(i32 %add25, i32 %sub.ptr.sub.i.i.i) #13
  %add.i.i = add nuw nsw i32 %37, 127
  %and.i4.i = and i32 %add.i.i, 524160
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool27.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool27.not, label %skb_cow.exit.if.end29_crit_edge, label %skb_cow.exit.drop_crit_edge

skb_cow.exit.drop_crit_edge:                      ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop

skb_cow.exit.if.end29_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end29:                                         ; preds = %skb_cow.exit.if.end29_crit_edge, %skb_cloned.exit.i.if.end29_crit_edge
  %hops = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %hops to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hops, align 4
  %inc = add i16 %39, 1
  store i16 %inc, ptr %hops, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %inc)
  %cmp31 = icmp ugt i16 %inc, 30
  br i1 %cmp31, label %if.end29.drop_crit_edge, label %if.end34

if.end29.drop_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop

if.end34:                                         ; preds = %if.end29
  %40 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %18, align 8
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %10, align 8
  %rt_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %43 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rt_flags, align 4
  %45 = and i8 %44, -33
  store i8 %45, ptr %rt_flags, align 4
  %rt_flags40 = getelementptr inbounds %struct.dn_route, ptr %18, i32 0, i32 10
  %46 = ptrtoint ptr %rt_flags40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rt_flags40, align 4
  %and41 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end34.if.end47_crit_edge, label %if.then43

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then43:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %48 = or i8 %44, 32
  %49 = ptrtoint ptr %rt_flags to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %rt_flags, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end34.if.end47_crit_edge
  %call.i80 = tail call fastcc i32 @nf_hook(i32 noundef 2, ptr noundef null, ptr noundef %skb, ptr noundef %12, ptr noundef %41, ptr noundef nonnull @dn_to_neigh_output) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i80)
  %cmp.i = icmp eq i32 %call.i80, 1
  br i1 %cmp.i, label %if.then.i, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @dn_to_neigh_output(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %skb) #13
  br label %cleanup

drop:                                             ; preds = %if.end29.drop_crit_edge, %skb_cow.exit.drop_crit_edge, %do.end9.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.then.i, %if.end47.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %drop ], [ %call1.i, %if.then.i ], [ %call.i80, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_output(ptr nocapture noundef readnone %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !190

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %n = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %n, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %do.body, label %if.end

if.end:                                           ; preds = %skb_dst.exit
  %cb2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.anon.3, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 8
  %rt_saddr = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %rt_saddr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rt_saddr, align 8
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %src, align 2
  %rt_daddr = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %rt_daddr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rt_daddr, align 2
  %17 = ptrtoint ptr %cb2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %cb2, align 4
  %rt_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rt_flags, align 4
  %20 = and i8 %19, -41
  %21 = or i8 %20, 32
  store i8 %21, ptr %rt_flags, align 4
  %hops = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %hops to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %hops, align 4
  %call.i32 = tail call fastcc i32 @nf_hook(i32 noundef 3, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %9, ptr noundef nonnull @dn_to_neigh_output) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i32)
  %cmp.i = icmp eq i32 %call.i32, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @dn_to_neigh_output(ptr noundef nonnull @init_net, ptr noundef %sk, ptr noundef %skb) #13
  br label %cleanup

do.body:                                          ; preds = %skb_dst.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dn_output.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dn_output, %land.lhs.true)) #13
          to label %do.end [label %land.lhs.true], !srcloc !207

land.lhs.true:                                    ; preds = %do.body
  %call12 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end_crit_edge, label %if.then14

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dn_output.descriptor, ptr noundef nonnull @.str.43) #13
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true.do.end_crit_edge, %do.body
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1.i, %if.then.i ], [ %call.i32, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_nsp_rx(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dst_discard(ptr noundef %skb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 @dst_discard_out(ptr noundef nonnull @init_net, ptr noundef %2, ptr noundef %skb) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_rt_set_next_hop(ptr noundef %rt, ptr nocapture noundef readonly %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fi1 = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %fi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi1, align 4
  %2 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rt, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then:                                          ; preds = %entry
  %nh_sel = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 3
  %4 = ptrtoint ptr %nh_sel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nh_sel, align 1
  %idxprom = zext i8 %5 to i32
  %nh_gw = getelementptr %struct.dn_fib_info, ptr %1, i32 0, i32 12, i32 %idxprom, i32 6
  %6 = ptrtoint ptr %nh_gw to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nh_gw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %nh_scope = getelementptr %struct.dn_fib_info, ptr %1, i32 0, i32 12, i32 %idxprom, i32 2
  %8 = ptrtoint ptr %nh_scope to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nh_scope, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %9)
  %cmp = icmp eq i8 %9, -3
  br i1 %cmp, label %if.then12, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %rt_gateway = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 6
  %10 = ptrtoint ptr %rt_gateway to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %7, ptr %rt_gateway, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %fib_metrics = getelementptr inbounds %struct.dn_fib_info, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %fib_metrics to i32
  %or.i = or i32 %11, 1
  %_metrics.i = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 2
  %12 = ptrtoint ptr %_metrics.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %_metrics.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end, %entry.if.end20_crit_edge
  %type = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 4
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type, align 2
  %conv21 = zext i8 %14 to i32
  %rt_type = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 11
  %15 = ptrtoint ptr %rt_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv21, ptr %rt_type, align 8
  %cmp22.not = icmp eq ptr %3, null
  br i1 %cmp22.not, label %if.end20.if.end35_crit_edge, label %land.lhs.true24

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true24:                                  ; preds = %if.end20
  %n25 = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 2
  %16 = ptrtoint ptr %n25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %n25, align 4
  %cmp26 = icmp eq ptr %17, null
  br i1 %cmp26, label %if.then28, label %land.lhs.true24.if.end35_crit_edge

land.lhs.true24.if.end35_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then28:                                        ; preds = %land.lhs.true24
  %rt_gateway29 = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 6
  %call.i = tail call ptr @neigh_lookup(ptr noundef nonnull @dn_neigh_table, ptr noundef %rt_gateway29, ptr noundef nonnull %3) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then28.__neigh_lookup_errno.exit_crit_edge

if.then28.__neigh_lookup_errno.exit_crit_edge:    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %__neigh_lookup_errno.exit

if.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call ptr @__neigh_create(ptr noundef nonnull @dn_neigh_table, ptr noundef %rt_gateway29, ptr noundef nonnull %3, i1 noundef zeroext true) #13
  br label %__neigh_lookup_errno.exit

__neigh_lookup_errno.exit:                        ; preds = %if.end.i, %if.then28.__neigh_lookup_errno.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.end.i ], [ %call.i, %if.then28.__neigh_lookup_errno.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end33

if.then31:                                        ; preds = %__neigh_lookup_errno.exit
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end33:                                         ; preds = %__neigh_lookup_errno.exit
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %n25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i, ptr %n25, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %land.lhs.true24.if.end35_crit_edge, %if.end20.if.end35_crit_edge
  %.b42.i = load i1, ptr @dst_metric.__already_done, align 1
  br i1 %.b42.i, label %if.end35.dst_metric.exit_crit_edge, label %if.then.i, !prof !191

if.end35.dst_metric.exit_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_metric.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dst_metric.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 163, i32 noundef 9, ptr noundef null) #13
  br label %dst_metric.exit

dst_metric.exit:                                  ; preds = %if.then.i, %if.end35.dst_metric.exit_crit_edge
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 2
  %20 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %21, -4
  %22 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %25 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rt, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %28)
  %cmp40 = icmp ugt i32 %24, %28
  br i1 %cmp40, label %if.then42, label %dst_metric.exit.if.end47_crit_edge

dst_metric.exit.if.end47_crit_edge:               ; preds = %dst_metric.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then42:                                        ; preds = %dst_metric.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !190

do.body4.i.i:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/dst.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #13, !srcloc !208
  unreachable

do.end9.i.i:                                      ; preds = %if.then42
  %and.i.i94 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i94)
  %tobool10.not.i.i = icmp eq i32 %and.i.i94, 0
  br i1 %tobool10.not.i.i, label %do.end9.i.i.dst_metrics_write_ptr.exit.i_crit_edge, label %if.then11.i.i

do.end9.i.i.dst_metrics_write_ptr.exit.i_crit_edge: ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_metrics_write_ptr.exit.i

if.then11.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 1
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i, align 4
  %cow_metrics.i.i = getelementptr inbounds %struct.dst_ops, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %cow_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cow_metrics.i.i, align 8
  %call.i.i95 = tail call ptr %32(ptr noundef %rt, i32 noundef %21) #13
  br label %dst_metrics_write_ptr.exit.i

dst_metrics_write_ptr.exit.i:                     ; preds = %if.then11.i.i, %do.end9.i.i.dst_metrics_write_ptr.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i95, %if.then11.i.i ], [ %22, %do.end9.i.i.dst_metrics_write_ptr.exit.i_crit_edge ]
  %tobool.not.i96 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i96, label %dst_metrics_write_ptr.exit.i.if.end47_crit_edge, label %if.then.i97

dst_metrics_write_ptr.exit.i.if.end47_crit_edge:  ; preds = %dst_metrics_write_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then.i97:                                      ; preds = %dst_metrics_write_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i32, ptr %retval.0.i.i, i32 1
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %arrayidx.i, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then.i97, %dst_metrics_write_ptr.exit.i.if.end47_crit_edge, %dst_metric.exit.if.end47_crit_edge
  %34 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %_metrics.i.i, align 4
  %and.i = and i32 %35, -4
  %36 = inttoptr i32 %and.i to ptr
  %arrayidx.i100 = getelementptr i32, ptr %36, i32 7
  %37 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool50.not = icmp eq i32 %38, 0
  br i1 %tobool50.not, label %if.end47.cleanup_crit_edge, label %if.then51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then51:                                        ; preds = %if.end47
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 1
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mtu.i, align 4
  %call.i101 = tail call i32 %42(ptr noundef %rt) #13
  %call54 = tail call i32 @dn_mss_from_pmtu(ptr noundef %3, i32 noundef %call.i101) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call54)
  %cmp55 = icmp ugt i32 %38, %call54
  br i1 %cmp55, label %if.then57, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then57:                                        ; preds = %if.then51
  %43 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %_metrics.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i103 = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i103, label %do.body4.i.i104, label %do.end9.i.i107, !prof !190

do.body4.i.i104:                                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/dst.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #13, !srcloc !208
  unreachable

do.end9.i.i107:                                   ; preds = %if.then57
  %and.i.i105 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i105)
  %tobool10.not.i.i106 = icmp eq i32 %and.i.i105, 0
  br i1 %tobool10.not.i.i106, label %if.end12.i.i113, label %if.then11.i.i111

if.then11.i.i111:                                 ; preds = %do.end9.i.i107
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %cow_metrics.i.i109 = getelementptr inbounds %struct.dst_ops, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %cow_metrics.i.i109 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cow_metrics.i.i109, align 8
  %call.i.i110 = tail call ptr %48(ptr noundef %rt, i32 noundef %44) #13
  br label %dst_metrics_write_ptr.exit.i116

if.end12.i.i113:                                  ; preds = %do.end9.i.i107
  call void @__sanitizer_cov_trace_pc() #15
  %and13.i.i112 = and i32 %44, -4
  %49 = inttoptr i32 %and13.i.i112 to ptr
  br label %dst_metrics_write_ptr.exit.i116

dst_metrics_write_ptr.exit.i116:                  ; preds = %if.end12.i.i113, %if.then11.i.i111
  %retval.0.i.i114 = phi ptr [ %call.i.i110, %if.then11.i.i111 ], [ %49, %if.end12.i.i113 ]
  %tobool.not.i115 = icmp eq ptr %retval.0.i.i114, null
  br i1 %tobool.not.i115, label %dst_metrics_write_ptr.exit.i116.cleanup_crit_edge, label %if.then.i118

dst_metrics_write_ptr.exit.i116.cleanup_crit_edge: ; preds = %dst_metrics_write_ptr.exit.i116
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i118:                                     ; preds = %dst_metrics_write_ptr.exit.i116
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i117 = getelementptr i32, ptr %retval.0.i.i114, i32 7
  %50 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call54, ptr %arrayidx.i117, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i118, %dst_metrics_write_ptr.exit.i116.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then31
  %retval.0 = phi i32 [ %18, %if.then31 ], [ 0, %if.then51.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ 0, %dst_metrics_write_ptr.exit.i116.cleanup_crit_edge ], [ 0, %if.then.i118 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_insert_route(ptr noundef %rt, i32 noundef %hash, ptr nocapture noundef writeonly %rp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx = getelementptr %struct.dn_rt_hash_bucket, ptr %1, i32 %hash
  %lock = getelementptr %struct.dn_rt_hash_bucket, ptr %1, i32 %hash, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %fld8 = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 3
  %daddr1.i = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 3, i32 1
  %saddr4.i = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 3, i32 2
  %flowic_mark8.i = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 3, i32 0, i32 2
  %flowic_scope14.i = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 3, i32 0, i32 4
  %flowic_iif25.i = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 3, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %rthp.0 = phi ptr [ %arrayidx, %entry ], [ %dn_next, %while.body.while.cond_crit_edge ]
  %2 = load ptr, ptr @dn_rt_hash_table, align 4
  %dep_map = getelementptr %struct.dn_rt_hash_bucket, ptr %2, i32 %hash, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %while.cond.do.end_crit_edge

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %while.cond
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @dn_insert_route.__warned, align 1
  br i1 %.b1, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_insert_route.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @.str.44) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %while.cond.do.end_crit_edge
  %3 = ptrtoint ptr %rthp.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rthp.0, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.body101, label %while.body

while.body:                                       ; preds = %do.end
  %fld = getelementptr inbounds %struct.dn_route, ptr %4, i32 0, i32 3
  %daddr.i = getelementptr inbounds %struct.dn_route, ptr %4, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %daddr.i, align 8
  %7 = ptrtoint ptr %daddr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %daddr1.i, align 8
  %xor39.i = xor i16 %8, %6
  %saddr.i = getelementptr inbounds %struct.dn_route, ptr %4, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %saddr.i, align 2
  %11 = ptrtoint ptr %saddr4.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %saddr4.i, align 2
  %xor640.i = xor i16 %12, %10
  %or41.i = or i16 %xor640.i, %xor39.i
  %or.i = zext i16 %or41.i to i32
  %flowic_mark.i = getelementptr inbounds %struct.dn_route, ptr %4, i32 0, i32 3, i32 0, i32 2
  %13 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flowic_mark.i, align 8
  %15 = ptrtoint ptr %flowic_mark8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flowic_mark8.i, align 8
  %xor9.i = xor i32 %16, %14
  %or10.i = or i32 %xor9.i, %or.i
  %flowic_scope.i = getelementptr inbounds %struct.dn_route, ptr %4, i32 0, i32 3, i32 0, i32 4
  %17 = ptrtoint ptr %flowic_scope.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flowic_scope.i, align 1
  %19 = ptrtoint ptr %flowic_scope14.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flowic_scope14.i, align 1
  %xor1642.i = xor i8 %20, %18
  %xor16.i = zext i8 %xor1642.i to i32
  %or17.i = or i32 %or10.i, %xor16.i
  %21 = ptrtoint ptr %fld to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fld, align 8
  %23 = ptrtoint ptr %fld8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fld8, align 8
  %xor21.i = xor i32 %24, %22
  %or22.i = or i32 %or17.i, %xor21.i
  %flowic_iif.i = getelementptr inbounds %struct.dn_route, ptr %4, i32 0, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flowic_iif.i, align 4
  %27 = ptrtoint ptr %flowic_iif25.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flowic_iif25.i, align 4
  %xor26.i = xor i32 %28, %26
  %or27.i = or i32 %or22.i, %xor26.i
  %cmp.i.not = icmp eq i32 %or27.i, 0
  %dn_next = getelementptr inbounds %struct.dn_route, ptr %4, i32 0, i32 1
  br i1 %cmp.i.not, label %if.then11, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.then11:                                        ; preds = %while.body
  %29 = ptrtoint ptr %dn_next to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dn_next, align 8
  %31 = ptrtoint ptr %rthp.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %rthp.0, align 4
  %32 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx13 = getelementptr %struct.dn_rt_hash_bucket, ptr %32, i32 %hash
  %33 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !209
  %35 = ptrtoint ptr %dn_next to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %dn_next, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !210
  %36 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx83 = getelementptr %struct.dn_rt_hash_bucket, ptr %36, i32 %hash
  %37 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %4, ptr %arrayidx83, align 4
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #13
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #13, !srcloc !193
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  br label %dst_hold.exit.i

do.end10.i.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 231, i32 noundef 9, ptr noundef null) #13
  br label %dst_hold.exit.i

dst_hold.exit.i:                                  ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i
  %lastuse.i.i = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 12
  %39 = ptrtoint ptr %lastuse.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lastuse.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %0)
  %cmp.not.i.i = icmp eq i32 %40, %0
  br i1 %cmp.not.i.i, label %dst_hold.exit.i.dst_hold_and_use.exit_crit_edge, label %if.then.i.i, !prof !191

dst_hold.exit.i.dst_hold_and_use.exit_crit_edge:  ; preds = %dst_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_hold_and_use.exit

if.then.i.i:                                      ; preds = %dst_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %__use.i.i = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 11
  %41 = ptrtoint ptr %__use.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %__use.i.i, align 4
  %inc.i.i = add i32 %42, 1
  store i32 %inc.i.i, ptr %__use.i.i, align 4
  %43 = ptrtoint ptr %lastuse.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %0, ptr %lastuse.i.i, align 4
  br label %dst_hold_and_use.exit

dst_hold_and_use.exit:                            ; preds = %if.then.i.i, %dst_hold.exit.i.dst_hold_and_use.exit_crit_edge
  %44 = load ptr, ptr @dn_rt_hash_table, align 4
  %lock97 = getelementptr %struct.dn_rt_hash_bucket, ptr %44, i32 %hash, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock97) #13
  tail call void @dst_release_immediate(ptr noundef %rt) #13
  br label %cleanup

do.body101:                                       ; preds = %do.end
  %45 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx103 = getelementptr %struct.dn_rt_hash_bucket, ptr %45, i32 %hash
  %46 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx103, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !211
  %dn_next132 = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 1
  %48 = ptrtoint ptr %dn_next132 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %47, ptr %dn_next132, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !212
  %49 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx174 = getelementptr %struct.dn_rt_hash_bucket, ptr %49, i32 %hash
  %50 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %rt, ptr %arrayidx174, align 4
  %__refcnt.i.i2 = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 18
  %call.i.i.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i2, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i2, i32 1, i32 3, i32 1) #13
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i2, ptr %__refcnt.i.i2, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i2) #13, !srcloc !193
  %asmresult.i.i.i.i.i.i4 = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i4)
  %cmp.not.i.i.i.i.i.i5 = icmp eq i32 %asmresult.i.i.i.i.i.i4, 0
  br i1 %cmp.not.i.i.i.i.i.i5, label %do.end10.i.i7, label %atomic_inc_not_zero.exit.thread.i.i6

atomic_inc_not_zero.exit.thread.i.i6:             ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  br label %dst_hold.exit.i10

do.end10.i.i7:                                    ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 231, i32 noundef 9, ptr noundef null) #13
  br label %dst_hold.exit.i10

dst_hold.exit.i10:                                ; preds = %do.end10.i.i7, %atomic_inc_not_zero.exit.thread.i.i6
  %lastuse.i.i8 = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 12
  %52 = ptrtoint ptr %lastuse.i.i8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lastuse.i.i8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %0)
  %cmp.not.i.i9 = icmp eq i32 %53, %0
  br i1 %cmp.not.i.i9, label %dst_hold.exit.i10.dst_hold_and_use.exit14_crit_edge, label %if.then.i.i13, !prof !191

dst_hold.exit.i10.dst_hold_and_use.exit14_crit_edge: ; preds = %dst_hold.exit.i10
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_hold_and_use.exit14

if.then.i.i13:                                    ; preds = %dst_hold.exit.i10
  call void @__sanitizer_cov_trace_pc() #15
  %__use.i.i11 = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 11
  %54 = ptrtoint ptr %__use.i.i11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %__use.i.i11, align 4
  %inc.i.i12 = add i32 %55, 1
  store i32 %inc.i.i12, ptr %__use.i.i11, align 4
  %56 = ptrtoint ptr %lastuse.i.i8 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %0, ptr %lastuse.i.i8, align 4
  br label %dst_hold_and_use.exit14

dst_hold_and_use.exit14:                          ; preds = %if.then.i.i13, %dst_hold.exit.i10.dst_hold_and_use.exit14_crit_edge
  %57 = load ptr, ptr @dn_rt_hash_table, align 4
  %lock189 = getelementptr %struct.dn_rt_hash_bucket, ptr %57, i32 %hash, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock189) #13
  br label %cleanup

cleanup:                                          ; preds = %dst_hold_and_use.exit14, %dst_hold_and_use.exit
  %storemerge = phi ptr [ %rt, %dst_hold_and_use.exit14 ], [ %4, %dst_hold_and_use.exit ]
  %58 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %storemerge, ptr %rp, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neigh_release(ptr noundef %neigh) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !204
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !191

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !205
  tail call void @neigh_destroy(ptr noundef %neigh) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !190

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !198
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release_immediate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_fib_info_put(ptr noundef %fi) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %fib_clntref = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %fib_clntref, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref, ptr %fib_clntref, i32 1, ptr elementtype(i32) %fib_clntref) #13, !srcloc !204
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !191

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !205
  tail call void @dn_fib_free_info(ptr noundef %fi) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_fib_free_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dnet_select_source(ptr noundef %dev, i16 noundef zeroext %daddr, i32 noundef %scope) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !199
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %4 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %dn_ptr, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b74 = load i1, ptr @dnet_select_source.__warned, align 1
  br i1 %.b74, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dnet_select_source.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 921, ptr noundef nonnull @.str.1) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %call14 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.end7.do.end24_crit_edge

do.end7.do.end24_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

land.lhs.true16:                                  ; preds = %do.end7
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b7073 = load i1, ptr @dnet_select_source.__warned.37, align 1
  br i1 %.b7073, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dnet_select_source.__warned.37, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 922, ptr noundef nonnull @.str.1) #13
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %do.end7.do.end24_crit_edge
  %cmp.not87 = icmp eq ptr %7, null
  br i1 %cmp.not87, label %do.end24.for.end_crit_edge, label %for.body.lr.ph

do.end24.for.end_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %daddr)
  %tobool30.not = icmp eq i16 %daddr, 0
  br label %for.body

for.body:                                         ; preds = %do.end60.for.body_crit_edge, %for.body.lr.ph
  %saddr.090 = phi i16 [ 0, %for.body.lr.ph ], [ %saddr.2, %do.end60.for.body_crit_edge ]
  %ifa.088 = phi ptr [ %7, %for.body.lr.ph ], [ %13, %do.end60.for.body_crit_edge ]
  %ifa_scope = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa.088, i32 0, i32 5
  %8 = ptrtoint ptr %ifa_scope to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ifa_scope, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %scope)
  %cmp26 = icmp sgt i32 %conv, %scope
  br i1 %cmp26, label %for.body.for.inc_crit_edge, label %if.end29

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end29:                                         ; preds = %for.body
  %ifa_local = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa.088, i32 0, i32 2
  %10 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ifa_local, align 4
  br i1 %tobool30.not, label %if.end29.for.end_crit_edge, label %if.end29.for.inc_crit_edge

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %if.end29.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %saddr.2 = phi i16 [ %saddr.090, %for.body.for.inc_crit_edge ], [ %11, %if.end29.for.inc_crit_edge ]
  %12 = ptrtoint ptr %ifa.088 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ifa.088, align 4
  %call50 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %for.inc.do.end60_crit_edge

for.inc.do.end60_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60

land.lhs.true52:                                  ; preds = %for.inc
  %call53 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.do.end60_crit_edge, label %land.lhs.true55

land.lhs.true52.do.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %.b7172 = load i1, ptr @dnet_select_source.__warned.38, align 1
  br i1 %.b7172, label %land.lhs.true55.do.end60_crit_edge, label %if.then57

land.lhs.true55.do.end60_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dnet_select_source.__warned.38, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 924, ptr noundef nonnull @.str.1) #13
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %land.lhs.true55.do.end60_crit_edge, %land.lhs.true52.do.end60_crit_edge, %for.inc.do.end60_crit_edge
  %cmp.not = icmp eq ptr %13, null
  br i1 %cmp.not, label %do.end60.for.end_crit_edge, label %do.end60.for.body_crit_edge

do.end60.for.body_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end60.for.end_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.end60.for.end_crit_edge, %if.end29.for.end_crit_edge, %do.end24.for.end_crit_edge
  %saddr.3 = phi i16 [ 0, %do.end24.for.end_crit_edge ], [ %saddr.2, %do.end60.for.end_crit_edge ], [ %11, %if.end29.for.end_crit_edge ]
  %call.i76 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i76, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i79

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i79:                                ; preds = %for.end
  %call1.i77 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, label %if.then.i82

land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i82, %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  %14 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i.i.i.i83 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i84, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret i16 %saddr.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_to_neigh_output(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_discard_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_mss_from_pmtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup_nodev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_dev_get_default() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_rt_bug(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cb1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dn_rt_bug.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dn_rt_bug, %land.lhs.true)) #13
          to label %do.end [label %land.lhs.true], !srcloc !207

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %src, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %cb1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cb1, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv6 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dn_rt_bug.descriptor, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %conv6) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnetlink_put_metrics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_put_cacheinfo(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_dst_gc(ptr nocapture noundef readnone %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry
  %i.036 = phi i32 [ 0, %entry ], [ %inc, %while.end.for.body_crit_edge ]
  %1 = load ptr, ptr @dn_rt_hash_table, align 4
  %lock = getelementptr %struct.dn_rt_hash_bucket, ptr %1, i32 %i.036, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %2 = load ptr, ptr @dn_rt_hash_table, align 4
  %arrayidx1 = getelementptr %struct.dn_rt_hash_bucket, ptr %2, i32 %i.036
  br label %while.cond

while.cond:                                       ; preds = %if.then13, %for.body
  %rtp.0 = phi ptr [ %arrayidx1, %for.body ], [ %dn_next, %if.then13 ]
  %3 = load ptr, ptr @dn_rt_hash_table, align 4
  %dep_map = getelementptr %struct.dn_rt_hash_bucket, ptr %3, i32 %i.036, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %while.cond.do.end_crit_edge

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %while.cond
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @dn_dst_gc.__warned, align 1
  br i1 %.b33, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_dst_gc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 225, ptr noundef nonnull @.str.44) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %while.cond.do.end_crit_edge
  %4 = ptrtoint ptr %rtp.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtp.0, align 4
  %cmp8.not = icmp eq ptr %5, null
  br i1 %cmp8.not, label %do.end.while.end_crit_edge, label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %do.end
  %__refcnt = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__refcnt, i32 noundef 4) #13
  %6 = ptrtoint ptr %__refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %__refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp10 = icmp sgt i32 %7, 1
  br i1 %cmp10, label %while.body.if.then13_crit_edge, label %lor.lhs.false

while.body.if.then13_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

lor.lhs.false:                                    ; preds = %while.body
  %lastuse = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %lastuse to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lastuse, align 8
  %sub = sub i32 %0, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %sub)
  %cmp12 = icmp ult i32 %sub, 1000
  br i1 %cmp12, label %lor.lhs.false.if.then13_crit_edge, label %if.end14

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %while.body.if.then13_crit_edge
  %dn_next = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 1
  br label %while.cond

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %dn_next15 = getelementptr inbounds %struct.dn_route, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dn_next15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dn_next15, align 8
  %12 = ptrtoint ptr %rtp.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %rtp.0, align 4
  store ptr null, ptr %dn_next15, align 8
  tail call void @dst_dev_put(ptr noundef nonnull %5) #13
  tail call void @dst_release(ptr noundef nonnull %5) #13
  br label %while.end

while.end:                                        ; preds = %if.end14, %do.end.while.end_crit_edge
  %13 = load ptr, ptr @dn_rt_hash_table, align 4
  %lock20 = getelementptr %struct.dn_rt_hash_bucket, ptr %13, i32 %i.036, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock20) #13
  %inc = add i32 %i.036, 1
  %14 = load i32, ptr @dn_rt_hash_mask, align 4
  %cmp.not = icmp ugt i32 %inc, %14
  br i1 %cmp.not, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @dn_dst_check(ptr nocapture noundef readnone %dst, i32 noundef %cookie) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_dst_default_advmss(ptr noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtu.i, align 4
  %call.i = tail call i32 %5(ptr noundef %dst) #13
  %call1 = tail call i32 @dn_mss_from_pmtu(ptr noundef %1, i32 noundef %call.i) #13
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dn_dst_mtu(ptr nocapture noundef readonly %dst) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %_metrics.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %0 = ptrtoint ptr %_metrics.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_metrics.i, align 4
  %and.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i to ptr
  %arrayidx.i = getelementptr i32, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dst, align 4
  %mtu1 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.false ], [ %4, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cow_metrics_generic(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_dst_destroy(ptr noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.dn_route, ptr %dst, i32 0, i32 2
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %n, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !204
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !191

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !205
  tail call void @neigh_destroy(ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %_metrics.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %3 = ptrtoint ptr %_metrics.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_metrics.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i4, label %if.end.dst_destroy_metrics_generic.exit_crit_edge

if.end.dst_destroy_metrics_generic.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_destroy_metrics_generic.exit

if.then.i4:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dst_destroy_metrics_generic(ptr noundef %dst, i32 noundef %4) #13
  br label %dst_destroy_metrics_generic.exit

dst_destroy_metrics_generic.exit:                 ; preds = %if.then.i4, %if.end.dst_destroy_metrics_generic.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_dst_ifdown(ptr nocapture noundef readonly %dst, ptr noundef readonly %dev, i32 noundef %how) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %how)
  %tobool.not = icmp eq i32 %how, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  %n1 = getelementptr inbounds %struct.dn_route, ptr %dst, i32 0, i32 2
  %0 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %n1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.then.if.end7_crit_edge, label %land.lhs.true

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then
  %dev3 = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %cmp = icmp eq ptr %3, %dev
  br i1 %cmp, label %if.then4, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %loopback_dev = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %loopback_dev, align 4
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dev3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then4.dev_hold.exit_crit_edge, label %do.body1.i

if.then4.dev_hold.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.then4
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i = add i32 %21, 1
  store i32 %add13.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !190

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #13, !srcloc !198
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.then4.dev_hold.exit_crit_edge
  %tobool.not.i13 = icmp eq ptr %dev, null
  br i1 %tobool.not.i13, label %dev_hold.exit.if.end7_crit_edge, label %do.body1.i22

dev_hold.exit.if.end7_crit_edge:                  ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

do.body1.i22:                                     ; preds = %dev_hold.exit
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i14 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %24 = ptrtoint ptr %pcpu_refcnt.i14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcpu_refcnt.i14, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !177) #13
  %and.i.i15 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i15 to ptr
  %cpu.i16 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i16, align 4
  %arrayidx.i17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i17, align 4
  %add.i18 = add i32 %32, %26
  %33 = inttoptr i32 %add.i18 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add13.i19 = add i32 %35, -1
  store i32 %add13.i19, ptr %33, align 4
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i20 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i20)
  %tobool24.not.i21 = icmp eq i32 %and.i.i.i20, 0
  br i1 %tobool24.not.i21, label %if.then28.i23, label %do.body1.i22.do.end30.i24_crit_edge, !prof !190

do.body1.i22.do.end30.i24_crit_edge:              ; preds = %do.body1.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i24

if.then28.i23:                                    ; preds = %do.body1.i22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i24

do.end30.i24:                                     ; preds = %if.then28.i23, %do.body1.i22.do.end30.i24_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #13, !srcloc !198
  br label %if.end7

if.end7:                                          ; preds = %do.end30.i24, %dev_hold.exit.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @dn_dst_negative_advice(ptr noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dst_release(ptr noundef %dst) #13
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dn_dst_link_failure(ptr nocapture noundef %skb) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_dst_update_pmtu(ptr noundef %dst, ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %skb, i32 noundef %mtu, i1 noundef zeroext %confirm_neigh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %n1 = getelementptr inbounds %struct.dn_route, ptr %dst, i32 0, i32 2
  %0 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %n1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %cond.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

cond.end:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 79
  %4 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %dn_ptr, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %cond.end.if.else_crit_edge, label %land.lhs.true

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %use_long = getelementptr inbounds %struct.dn_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %use_long to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_long, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %cond.end.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %min_mtu.0 = phi i32 [ 209, %if.else ], [ 224, %land.lhs.true.if.end_crit_edge ]
  %.b42.i = load i1, ptr @dst_metric.__already_done, align 1
  br i1 %.b42.i, label %if.end.dst_metric.exit_crit_edge, label %if.then.i, !prof !191

if.end.dst_metric.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_metric.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dst_metric.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 163, i32 noundef 9, ptr noundef null) #13
  br label %dst_metric.exit

dst_metric.exit:                                  ; preds = %if.then.i, %if.end.dst_metric.exit_crit_edge
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %8 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mtu)
  %cmp6 = icmp ule i32 %12, %mtu
  call void @__sanitizer_cov_trace_cmp4(i32 %min_mtu.0, i32 %mtu)
  %cmp9.not = icmp ugt i32 %min_mtu.0, %mtu
  %or.cond = or i1 %cmp9.not, %cmp6
  br i1 %or.cond, label %dst_metric.exit.if.end27_crit_edge, label %if.then11

dst_metric.exit.if.end27_crit_edge:               ; preds = %dst_metric.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then11:                                        ; preds = %dst_metric.exit
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %and.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not = icmp eq i32 %and.i, 0
  br i1 %tobool13.not, label %if.then14, label %if.then11.if.end15_crit_edge

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !190

do.body4.i.i:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/dst.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #13, !srcloc !208
  unreachable

do.end9.i.i:                                      ; preds = %if.then14
  %and.i.i46 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i46)
  %tobool10.not.i.i = icmp eq i32 %and.i.i46, 0
  br i1 %tobool10.not.i.i, label %do.end9.i.i.dst_metrics_write_ptr.exit.i_crit_edge, label %if.then11.i.i

do.end9.i.i.dst_metrics_write_ptr.exit.i_crit_edge: ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_metrics_write_ptr.exit.i

if.then11.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %cow_metrics.i.i = getelementptr inbounds %struct.dst_ops, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %cow_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cow_metrics.i.i, align 8
  %call.i.i = tail call ptr %18(ptr noundef %dst, i32 noundef %9) #13
  br label %dst_metrics_write_ptr.exit.i

dst_metrics_write_ptr.exit.i:                     ; preds = %if.then11.i.i, %do.end9.i.i.dst_metrics_write_ptr.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then11.i.i ], [ %10, %do.end9.i.i.dst_metrics_write_ptr.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %dst_metrics_write_ptr.exit.i.dst_metric_set.exit_crit_edge, label %if.then.i47

dst_metrics_write_ptr.exit.i.dst_metric_set.exit_crit_edge: ; preds = %dst_metrics_write_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_metric_set.exit

if.then.i47:                                      ; preds = %dst_metrics_write_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i32, ptr %retval.0.i.i, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mtu, ptr %arrayidx.i, align 4
  br label %dst_metric_set.exit

dst_metric_set.exit:                              ; preds = %if.then.i47, %dst_metrics_write_ptr.exit.i.dst_metric_set.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %20, 60000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i = icmp eq i32 %add.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 %add.i
  %expires1.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 3
  %21 = ptrtoint ptr %expires1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %expires1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2.i = icmp eq i32 %22, 0
  %sub.i = sub i32 %spec.store.select.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp4.i = icmp slt i32 %sub.i, 0
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %if.then5.i, label %dst_metric_set.exit.if.end15_crit_edge

dst_metric_set.exit.if.end15_crit_edge:           ; preds = %dst_metric_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then5.i:                                       ; preds = %dst_metric_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %expires1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.store.select.i, ptr %expires1.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then5.i, %dst_metric_set.exit.if.end15_crit_edge, %if.then11.if.end15_crit_edge
  %24 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i.i49 = and i32 %25, -4
  %26 = inttoptr i32 %and.i.i.i49 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and.i50 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool17.not = icmp eq i32 %and.i50, 0
  br i1 %tobool17.not, label %if.then18, label %if.end15.if.end27_crit_edge

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then18:                                        ; preds = %if.end15
  %sub19 = add i32 %mtu, -11
  %arrayidx.i52 = getelementptr i32, ptr %26, i32 7
  %29 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i52, align 4
  %31 = add i32 %30, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %sub19)
  %.not = icmp ult i32 %31, %sub19
  br i1 %.not, label %if.then18.if.end27_crit_edge, label %if.then24

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i54 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i54, label %do.body4.i.i55, label %do.end9.i.i58, !prof !190

do.body4.i.i55:                                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/dst.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #13, !srcloc !208
  unreachable

do.end9.i.i58:                                    ; preds = %if.then24
  %and.i.i56 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i56)
  %tobool10.not.i.i57 = icmp eq i32 %and.i.i56, 0
  br i1 %tobool10.not.i.i57, label %do.end9.i.i58.dst_metrics_write_ptr.exit.i67_crit_edge, label %if.then11.i.i62

do.end9.i.i58.dst_metrics_write_ptr.exit.i67_crit_edge: ; preds = %do.end9.i.i58
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_metrics_write_ptr.exit.i67

if.then11.i.i62:                                  ; preds = %do.end9.i.i58
  call void @__sanitizer_cov_trace_pc() #15
  %ops.i.i59 = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 1
  %32 = ptrtoint ptr %ops.i.i59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i59, align 4
  %cow_metrics.i.i60 = getelementptr inbounds %struct.dst_ops, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %cow_metrics.i.i60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cow_metrics.i.i60, align 8
  %call.i.i61 = tail call ptr %35(ptr noundef %dst, i32 noundef %25) #13
  br label %dst_metrics_write_ptr.exit.i67

dst_metrics_write_ptr.exit.i67:                   ; preds = %if.then11.i.i62, %do.end9.i.i58.dst_metrics_write_ptr.exit.i67_crit_edge
  %retval.0.i.i65 = phi ptr [ %call.i.i61, %if.then11.i.i62 ], [ %26, %do.end9.i.i58.dst_metrics_write_ptr.exit.i67_crit_edge ]
  %tobool.not.i66 = icmp eq ptr %retval.0.i.i65, null
  br i1 %tobool.not.i66, label %dst_metrics_write_ptr.exit.i67.if.end27_crit_edge, label %if.then.i69

dst_metrics_write_ptr.exit.i67.if.end27_crit_edge: ; preds = %dst_metrics_write_ptr.exit.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then.i69:                                      ; preds = %dst_metrics_write_ptr.exit.i67
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i68 = getelementptr i32, ptr %retval.0.i.i65, i32 7
  %36 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub19, ptr %arrayidx.i68, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then.i69, %dst_metrics_write_ptr.exit.i67.if.end27_crit_edge, %if.then18.if.end27_crit_edge, %if.end15.if.end27_crit_edge, %dst_metric.exit.if.end27_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dn_dst_redirect(ptr nocapture noundef %dst, ptr nocapture noundef %sk, ptr nocapture noundef %skb) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dn_dst_neigh_lookup(ptr nocapture noundef readonly %dst, ptr nocapture noundef readnone %skb, ptr noundef %daddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %call.i = tail call ptr @neigh_lookup(ptr noundef nonnull @dn_neigh_table, ptr noundef %daddr, ptr noundef %1) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.__neigh_lookup_errno.exit_crit_edge

entry.__neigh_lookup_errno.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__neigh_lookup_errno.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call ptr @__neigh_create(ptr noundef nonnull @dn_neigh_table, ptr noundef %daddr, ptr noundef %1, i1 noundef zeroext true) #13
  br label %__neigh_lookup_errno.exit

__neigh_lookup_errno.exit:                        ; preds = %if.end.i, %entry.__neigh_lookup_errno.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.end.i ], [ %call.i, %entry.__neigh_lookup_errno.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dst_destroy_metrics_generic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dn_rt_cache_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = load i32, ptr @dn_rt_hash_mask, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp27.i = icmp sgt i32 %2, -1
  br i1 %cmp27.i, label %entry.for.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %rcu_read_unlock_bh.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  tail call fastcc void @local_bh_disable() #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %for.body.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.rcu_read_lock_bh.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 750, ptr noundef nonnull @.str.53) #13
  br label %rcu_read_lock_bh.exit.i

rcu_read_lock_bh.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, %for.body.i.rcu_read_lock_bh.exit.i_crit_edge
  %4 = load ptr, ptr @dn_rt_hash_table, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.dn_rt_hash_bucket, ptr %4, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock_bh.exit.i.do.end9.i_crit_edge

rcu_read_lock_bh.exit.i.do.end9.i_crit_edge:      ; preds = %rcu_read_lock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock_bh.exit.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b19.i = load i1, ptr @dn_rt_cache_get_first.__warned, align 1
  br i1 %.b19.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_rt_cache_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1783, ptr noundef nonnull @.str.1) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %rcu_read_lock_bh.exit.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %8, null
  br i1 %tobool11.not.i, label %if.end13.i, label %dn_rt_cache_get_first.exit

if.end13.i:                                       ; preds = %do.end9.i
  %call.i20.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i20.i, label %if.end13.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true.i23.i

if.end13.i.rcu_read_unlock_bh.exit.i_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end13.i
  %call1.i21.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call1.i21.i, 0
  br i1 %tobool.not.i22.i, label %land.lhs.true.i23.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true2.i25.i

land.lhs.true.i23.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true2.i25.i:                             ; preds = %land.lhs.true.i23.i
  %.b4.i24.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i24.i, label %land.lhs.true2.i25.i.rcu_read_unlock_bh.exit.i_crit_edge, label %if.then.i26.i

land.lhs.true2.i25.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit.i

if.then.i26.i:                                    ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 761, ptr noundef nonnull @.str.55) #13
  br label %rcu_read_unlock_bh.exit.i

rcu_read_unlock_bh.exit.i:                        ; preds = %if.then.i26.i, %land.lhs.true2.i25.i.rcu_read_unlock_bh.exit.i_crit_edge, %land.lhs.true.i23.i.rcu_read_unlock_bh.exit.i_crit_edge, %if.end13.i.rcu_read_unlock_bh.exit.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  tail call fastcc void @local_bh_enable() #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %dec.i = add i32 %10, -1
  store i32 %dec.i, ptr %1, align 4
  %cmp.i = icmp sgt i32 %dec.i, -1
  br i1 %cmp.i, label %rcu_read_unlock_bh.exit.i.for.body.i_crit_edge, label %rcu_read_unlock_bh.exit.i.if.end_crit_edge

rcu_read_unlock_bh.exit.i.if.end_crit_edge:       ; preds = %rcu_read_unlock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

rcu_read_unlock_bh.exit.i.for.body.i_crit_edge:   ; preds = %rcu_read_unlock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

dn_rt_cache_get_first.exit:                       ; preds = %do.end9.i
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %.pr = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %tobool1.not14 = icmp eq i64 %.pr, 0
  br i1 %tobool1.not14, label %dn_rt_cache_get_first.exit.if.end_crit_edge, label %dn_rt_cache_get_first.exit.land.rhs_crit_edge

dn_rt_cache_get_first.exit.land.rhs_crit_edge:    ; preds = %dn_rt_cache_get_first.exit
  br label %land.rhs

dn_rt_cache_get_first.exit.if.end_crit_edge:      ; preds = %dn_rt_cache_get_first.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %dn_rt_cache_get_first.exit.land.rhs_crit_edge
  %rt.015 = phi ptr [ %call2, %while.body.land.rhs_crit_edge ], [ %8, %dn_rt_cache_get_first.exit.land.rhs_crit_edge ]
  %call2 = tail call fastcc ptr @dn_rt_cache_get_next(ptr noundef %seq, ptr noundef nonnull %rt.015)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body:                                       ; preds = %land.rhs
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %dec = add i64 %13, -1
  store i64 %dec, ptr %pos, align 8
  %tobool1.not = icmp eq i64 %dec, 0
  br i1 %tobool1.not, label %while.body.if.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %land.rhs.if.end_crit_edge, %dn_rt_cache_get_first.exit.if.end_crit_edge, %rcu_read_unlock_bh.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rt.1 = phi ptr [ null, %entry.if.end_crit_edge ], [ %8, %dn_rt_cache_get_first.exit.if.end_crit_edge ], [ %call2, %while.body.if.end_crit_edge ], [ null, %land.rhs.if.end_crit_edge ], [ null, %rcu_read_unlock_bh.exit.i.if.end_crit_edge ]
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool4.not = icmp eq i64 %15, 0
  %spec.select = select i1 %tobool4.not, ptr %rt.1, ptr null
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_rt_cache_seq_stop(ptr nocapture noundef readnone %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.then.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_unlock_bh.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 761, ptr noundef nonnull @.str.55) #13
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge, %if.then.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  tail call fastcc void @local_bh_enable() #13
  br label %if.end

if.end:                                           ; preds = %rcu_read_unlock_bh.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dn_rt_cache_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dn_rt_cache_get_next(ptr noundef %seq, ptr noundef %v)
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_rt_cache_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %buf1 = alloca [9 x i8], align 1
  %buf2 = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf1) #13
  %0 = call ptr @memset(ptr %buf1, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf2) #13
  %1 = call ptr @memset(ptr %buf2, i32 255, i32 9)
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v, align 8
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr @.str.58, ptr %3
  %rt_daddr = getelementptr inbounds %struct.dn_route, ptr %v, i32 0, i32 5
  %4 = ptrtoint ptr %rt_daddr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rt_daddr, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %call = call ptr @dn_addr2asc(i16 noundef zeroext %6, ptr noundef nonnull %buf1) #13
  %rt_saddr = getelementptr inbounds %struct.dn_route, ptr %v, i32 0, i32 4
  %7 = ptrtoint ptr %rt_saddr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rt_saddr, align 8
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %call5 = call ptr @dn_addr2asc(i16 noundef zeroext %9, ptr noundef nonnull %buf2) #13
  %__refcnt = getelementptr inbounds %struct.dst_entry, ptr %v, i32 0, i32 18
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %__refcnt, i32 noundef 4) #13
  %10 = ptrtoint ptr %__refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %__refcnt, align 4
  %__use = getelementptr inbounds %struct.dst_entry, ptr %v, i32 0, i32 11
  %12 = ptrtoint ptr %__use to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__use, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.57, ptr noundef nonnull %spec.select, ptr noundef %call, ptr noundef %call5, i32 noundef %11, i32 noundef %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf2) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dn_rt_cache_get_next(ptr nocapture noundef readonly %seq, ptr noundef %rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dn_next = getelementptr inbounds %struct.dn_route, ptr %rt, i32 0, i32 1
  %2 = ptrtoint ptr %dn_next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dn_next, align 8
  %call = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @dn_rt_cache_get_next.__warned, align 1
  br i1 %.b35, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_rt_cache_get_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1795, ptr noundef nonnull @.str.1) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not43 = icmp eq ptr %3, null
  br i1 %tobool9.not43, label %do.end7.while.body_crit_edge, label %do.end7.while.end_crit_edge

do.end7.while.end_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end7.while.body_crit_edge:                     ; preds = %do.end7
  br label %while.body

while.body:                                       ; preds = %do.end28.while.body_crit_edge, %do.end7.while.body_crit_edge
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %while.body.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i

while.body.rcu_read_unlock_bh.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i:                                  ; preds = %while.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 761, ptr noundef nonnull @.str.55) #13
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge, %while.body.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  tail call fastcc void @local_bh_enable() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %rcu_read_unlock_bh.exit.while.end_crit_edge, label %if.end11

rcu_read_unlock_bh.exit.while.end_crit_edge:      ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end11:                                         ; preds = %rcu_read_unlock_bh.exit
  tail call fastcc void @local_bh_disable() #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #13
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i36, label %if.end11.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i39

if.end11.rcu_read_lock_bh.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

land.lhs.true.i39:                                ; preds = %if.end11
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_lock_bh.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 750, ptr noundef nonnull @.str.53) #13
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i39.rcu_read_lock_bh.exit_crit_edge, %if.end11.rcu_read_lock_bh.exit_crit_edge
  %6 = load ptr, ptr @dn_rt_hash_table, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %arrayidx = getelementptr %struct.dn_rt_hash_bucket, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx, align 4
  %call18 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %rcu_read_lock_bh.exit.do.end28_crit_edge

rcu_read_lock_bh.exit.do.end28_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

land.lhs.true20:                                  ; preds = %rcu_read_lock_bh.exit
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b3334 = load i1, ptr @dn_rt_cache_get_next.__warned.56, align 1
  br i1 %.b3334, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dn_rt_cache_get_next.__warned.56, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1801, ptr noundef nonnull @.str.1) #13
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %rcu_read_lock_bh.exit.do.end28_crit_edge
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %do.end28.while.body_crit_edge, label %do.end28.while.end_crit_edge

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end28.while.body_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %rcu_read_unlock_bh.exit.while.end_crit_edge, %do.end7.while.end_crit_edge
  %rt.addr.0.lcssa = phi ptr [ %3, %do.end7.while.end_crit_edge ], [ null, %rcu_read_unlock_bh.exit.while.end_crit_edge ], [ %10, %do.end28.while.end_crit_edge ]
  ret ptr %rt.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_addr2asc(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !47, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !72, !74, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !121, !122, !123, !125, !127, !128, !130, !132, !134, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !149, !150, !152, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175}
!llvm.named.register.sp = !{!177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @decnet_dst_gc_interval, !1, !"decnet_dst_gc_interval", i1 false, i1 false}
!1 = !{!"../net/decnet/dn_route.c", i32 127, i32 5}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/decnet/dn_route.c", i32 626, i32 22}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/decnet/dn_route.c", i32 677, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dn_route_rcv._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @dn_route_rcv._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @rtm_dn_policy, !12, !"rtm_dn_policy", i1 false, i1 false}
!12 = !{!"../net/decnet/dn_route.c", i32 1617, i32 25}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/decnet/dn_route.c", i32 1747, i32 13}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/decnet/dn_route.c", i32 1749, i32 9}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/decnet/dn_route.c", i32 1857, i32 21}
!19 = !{ptr @dn_route_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../net/decnet/dn_route.c", i32 1860, i32 2}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/decnet/dn_route.c", i32 1887, i32 9}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/decnet/dn_route.c", i32 1889, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dn_route_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dn_route_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dn_route_init.__key.10, !30, !"__key", i1 false, i1 false}
!30 = !{!"../net/decnet/dn_route.c", i32 1896, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/decnet/dn_route.c", i32 1902, i32 26}
!34 = !{ptr @dn_rt_deadline, !35, !"dn_rt_deadline", i1 false, i1 false}
!35 = !{!"../net/decnet/dn_route.c", i32 101, i32 22}
!36 = !{ptr @dn_rt_hash_table, !37, !"dn_rt_hash_table", i1 false, i1 false}
!37 = !{!"../net/decnet/dn_route.c", i32 122, i32 34}
!38 = !{ptr @dn_rt_hash_mask, !39, !"dn_rt_hash_mask", i1 false, i1 false}
!39 = !{!"../net/decnet/dn_route.c", i32 123, i32 21}
!40 = !{ptr @dn_route_timer, !41, !"dn_route_timer", i1 false, i1 false}
!41 = !{!"../net/decnet/dn_route.c", i32 125, i32 26}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/decnet/dn_route.c", i32 377, i32 8}
!44 = !{ptr @dn_rt_flush_lock, !43, !"dn_rt_flush_lock", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/decnet/dn_route.c", i32 126, i32 8}
!47 = !{ptr @dn_rt_flush_timer, !46, !"dn_rt_flush_timer", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @dn_hiord_addr, !73, !"dn_hiord_addr", i1 false, i1 false}
!73 = !{!"../net/decnet/dn_route.c", i32 95, i32 22}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/decnet/dn_route.c", i32 516, i32 47}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/decnet/dn_route.c", i32 518, i32 3}
!78 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @dn_route_rx_packet._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @dn_route_rx_packet._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/decnet/dn_route.c", i32 1528, i32 12}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/decnet/dn_route.c", i32 1529, i32 11}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/net/dst.h", i32 231, i32 2}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/decnet/dn_route.c", i32 1326, i32 10}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/decnet/dn_route.c", i32 1362, i32 4}
!91 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @dn_route_input_slow._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @dn_route_input_slow._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/net/dn_dev.h", i32 181, i32 10}
!96 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/net/dn_dev.h", i32 183, i32 3}
!99 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dn_dev_islocal._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @dn_dev_islocal._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../include/net/dn_dev.h", i32 187, i32 13}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../include/net/dn_dev.h", i32 189, i32 13}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/decnet/dn_route.c", i32 921, i32 10}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../net/decnet/dn_route.c", i32 922, i32 13}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../net/decnet/dn_route.c", i32 924, i32 13}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/decnet/dn_route.c", i32 829, i32 2}
!114 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @dn_rt_bug_out.descriptor, !113, !"descriptor", i1 false, i1 false}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../net/decnet/dn_route.c", i32 781, i32 25}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/decnet/dn_route.c", i32 770, i32 2}
!121 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @dn_output.descriptor, !120, !"descriptor", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/net/dst.h", i32 161, i32 2}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../net/decnet/dn_route.c", i32 325, i32 16}
!127 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../net/decnet/dn_route.c", i32 1250, i32 13}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../net/decnet/dn_route.c", i32 1251, i32 9}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/decnet/dn_route.c", i32 974, i32 3}
!134 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @dn_route_output_slow._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @dn_route_output_slow._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!138 = !{!"../net/decnet/dn_route.c", i32 1004, i32 3}
!139 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/decnet/dn_route.c", i32 1049, i32 3}
!142 = !{ptr @dn_route_output_slow._entry.49, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @dn_route_output_slow._entry_ptr.51, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/decnet/dn_route.c", i32 841, i32 2}
!146 = !{ptr @dn_rt_bug.descriptor, !145, !"descriptor", i1 false, i1 false}
!147 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!148 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!149 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../include/net/netlink.h", i32 991, i32 3}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!154 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @dn_dst_ops, !156, !"dn_dst_ops", i1 false, i1 false}
!156 = !{!"../net/decnet/dn_route.c", i32 129, i32 23}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../net/decnet/dn_route.c", i32 224, i32 16}
!159 = !{ptr @dst_entries_init.__key, !160, !"__key", i1 false, i1 false}
!160 = !{!"../include/net/dst_ops.h", i32 65, i32 9}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../net/decnet/dn_route.c", i32 190, i32 16}
!163 = !{ptr @dn_rt_cache_seq_ops, !164, !"dn_rt_cache_seq_ops", i1 false, i1 false}
!164 = !{!"../net/decnet/dn_route.c", i32 1844, i32 36}
!165 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!166 = !{!"../net/decnet/dn_route.c", i32 1783, i32 8}
!167 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!168 = !{!"../net/decnet/dn_route.c", i32 1795, i32 7}
!169 = distinct !{null, !170, !"__warned", i1 false, i1 false}
!170 = !{!"../net/decnet/dn_route.c", i32 1801, i32 8}
!171 = !{ptr @.str.57, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/decnet/dn_route.c", i32 1835, i32 18}
!173 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../net/decnet/dn_route.c", i32 1836, i32 40}
!175 = !{ptr @__nlmsg_parse.__msg, !176, !"__msg", i1 false, i1 false}
!176 = !{!"../include/net/netlink.h", i32 729, i32 3}
!177 = !{!"sp"}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i64 2157034551}
!188 = !{i64 799567, i64 799584, i64 799608, i64 799634, i64 799652}
!189 = !{i64 2157034904}
!190 = !{!"branch_weights", i32 1, i32 2000}
!191 = !{!"branch_weights", i32 2000, i32 1}
!192 = !{i64 2148292218}
!193 = !{i64 777041, i64 777066, i64 777088, i64 777104, i64 777116, i64 777136, i64 777160, i64 777176, i64 777188}
!194 = !{i64 2148292406}
!195 = !{!"auto-init"}
!196 = !{i64 685280, i64 685341}
!197 = !{i64 688012}
!198 = !{i64 688297}
!199 = !{i64 2149369100}
!200 = !{i64 2149369366}
!201 = !{i64 2148294329, i64 2148294361, i64 2148294390, i64 2148294424, i64 2148294455, i64 2148294478}
!202 = !{i64 2157125760, i64 2157126247, i64 2157125797, i64 2157125853, i64 2157125887, i64 2157125911, i64 2157125952, i64 2157125973, i64 2157126001, i64 2157126035}
!203 = !{i64 2148382330}
!204 = !{i64 2148296794, i64 2148296826, i64 2148296855, i64 2148296889, i64 2148296920, i64 2148296943}
!205 = !{i64 2149318610}
!206 = !{i32 0, i32 33}
!207 = !{i64 2148774614, i64 2148774619, i64 2148774632, i64 2148774676, i64 2148774710, i64 2148774731}
!208 = !{i64 2156560854, i64 2156561336, i64 2156560891, i64 2156560947, i64 2156560981, i64 2156561005, i64 2156561046, i64 2156561067, i64 2156561095, i64 2156561129}
!209 = !{i64 2157006035}
!210 = !{i64 2157014441}
!211 = !{i64 2157022375}
!212 = !{i64 2157030750}
