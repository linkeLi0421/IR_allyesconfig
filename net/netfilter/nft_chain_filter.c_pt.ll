; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_chain_filter.c_pt.bc'
source_filename = "../net/netfilter/nft_chain_filter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_chain_type = type { ptr, i32, i32, ptr, i32, [6 x ptr], ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.168, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.186, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.168 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.186 = type { ptr }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nftables_pernet = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, i32, i8 }
%struct.nft_table = type { %struct.list_head, %struct.rhltable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, i16, i32, ptr, i16, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.nft_hook = type { %struct.list_head, i8, %struct.nf_hook_ops, %struct.callback_head }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }

@nft_chain_filter_netdev = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 0, i32 5, ptr null, i32 3, [6 x ptr] [ptr @nft_do_chain_netdev, ptr @nft_do_chain_netdev, ptr null, ptr null, ptr null, ptr null], ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nf_tables_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nf_tables_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"filter\00", [25 x i8] zeroinitializer }, align 32
@nf_tables_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nft_chain_filter_ipv4 = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 0, i32 2, ptr null, i32 31, [6 x ptr] [ptr @nft_do_chain_ipv4, ptr @nft_do_chain_ipv4, ptr @nft_do_chain_ipv4, ptr @nft_do_chain_ipv4, ptr @nft_do_chain_ipv4, ptr null], ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nft_chain_filter_ipv6 = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 0, i32 10, ptr null, i32 31, [6 x ptr] [ptr @nft_do_chain_ipv6, ptr @nft_do_chain_ipv6, ptr @nft_do_chain_ipv6, ptr @nft_do_chain_ipv6, ptr @nft_do_chain_ipv6, ptr null], ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nft_chain_filter_arp = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 0, i32 3, ptr null, i32 3, [6 x ptr] [ptr @nft_do_chain_arp, ptr @nft_do_chain_arp, ptr null, ptr null, ptr null, ptr null], ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nft_chain_filter_inet = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 0, i32 1, ptr null, i32 63, [6 x ptr] [ptr @nft_do_chain_inet, ptr @nft_do_chain_inet, ptr @nft_do_chain_inet, ptr @nft_do_chain_inet, ptr @nft_do_chain_inet, ptr @nft_do_chain_inet_ingress], ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@nft_chain_filter_bridge = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 0, i32 7, ptr null, i32 31, [6 x ptr] [ptr @nft_do_chain_bridge, ptr @nft_do_chain_bridge, ptr @nft_do_chain_bridge, ptr @nft_do_chain_bridge, ptr @nft_do_chain_bridge, ptr null], ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 11]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.12 = private unnamed_addr constant [24 x i8] c"nft_chain_filter_netdev\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 309, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant [26 x i8] c"nf_tables_netdev_notifier\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 389, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 310, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 45, i32 7 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 695, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 723, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"nft_chain_filter_ipv4\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 26, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"nft_chain_filter_ipv6\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 110, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"nft_chain_filter_arp\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 70, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"nft_chain_filter_inet\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 195, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 271, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 313, i32 9 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"nft_chain_filter_bridge\00", align 1
@___asan_gen_.55 = private constant [36 x i8] c"../net/netfilter/nft_chain_filter.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 254, i32 36 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @nft_chain_filter_netdev, ptr @nf_tables_netdev_notifier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nft_chain_filter_ipv4, ptr @nft_chain_filter_ipv6, ptr @nft_chain_filter_arp, ptr @nft_chain_filter_inet, ptr @.str.6, ptr @.str.7, ptr @nft_chain_filter_bridge], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_filter_netdev to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_tables_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_filter_ipv4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_filter_ipv6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_filter_arp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_filter_inet to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_filter_bridge to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_chain_filter_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_filter_netdev) #7
  %call.i = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @nf_tables_netdev_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %nft_chain_filter_netdev_init.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_chain_filter_netdev_init.exit:                ; preds = %entry
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_filter_netdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %nft_chain_filter_netdev_init.exit.cleanup_crit_edge, label %nft_chain_filter_netdev_init.exit.if.end_crit_edge

nft_chain_filter_netdev_init.exit.if.end_crit_edge: ; preds = %nft_chain_filter_netdev_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_chain_filter_netdev_init.exit.cleanup_crit_edge: ; preds = %nft_chain_filter_netdev_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %nft_chain_filter_netdev_init.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_filter_ipv4) #7
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_filter_ipv6) #7
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_filter_arp) #7
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_filter_inet) #7
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_filter_bridge) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nft_chain_filter_netdev_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %nft_chain_filter_netdev_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_chain_filter_fini() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_filter_bridge) #7
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_filter_inet) #7
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_filter_arp) #7
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_filter_ipv6) #7
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_filter_ipv4) #7
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_filter_netdev) #7
  %call.i = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @nf_tables_netdev_notifier) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_register_chain_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_chain_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_do_chain_netdev(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  %flags.i.i3 = alloca i32, align 4
  %_ip6h.i.i = alloca %struct.ipv6hdr, align 4
  %thoff.i.i = alloca i32, align 4
  %frag_off.i.i4 = alloca i16, align 2
  %_iph.i.i = alloca %struct.iphdr, align 4
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #7
  %0 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %pkt, i32 8
  %6 = call ptr @memset(ptr %5, i32 255, i32 12)
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %pkt, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %state, ptr %0, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %9 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %protocol, align 8
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %sw.default [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i.i) #7
  %12 = call ptr @memset(ptr %_iph.i.i, i32 255, i32 20)
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i.i.i, align 8
  %23 = add i32 %22, %sub.ptr.sub.i.i.i
  %sub.i4.i.i.i = sub i32 %20, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 20
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %skb_header_pointer.exit.i.i, !prof !43

if.end.i.i.i.i:                                   ; preds = %sw.bb
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.if.then.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.if.then.i_crit_edge:               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i.i, ptr noundef nonnull %_iph.i.i, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

lor.lhs.false.i.i.i.i.if.then.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

skb_header_pointer.exit.i.i:                      ; preds = %sw.bb
  %add.ptr.i.i46.i.i = getelementptr i8, ptr %18, i32 %sub.ptr.sub.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i46.i.i, null
  br i1 %tobool.not.i.i, label %skb_header_pointer.exit.i.i.if.then.i_crit_edge, label %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge

skb_header_pointer.exit.i.i.if.end.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

skb_header_pointer.exit.i.i.if.then.i_crit_edge:  ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.i.i:                                       ; preds = %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge
  %retval.0.i.i52.i.i = phi ptr [ %add.ptr.i.i46.i.i, %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge ], [ %_iph.i.i, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge ]
  %24 = ptrtoint ptr %retval.0.i.i52.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i = load i8, ptr %retval.0.i.i52.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear.i.i)
  %cmp.i.i = icmp ugt i8 %bf.clear.i.i, 4
  %bf.lshr.mask.i.i = and i8 %bf.load.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i.i)
  %cmp6.not.i.i = icmp eq i8 %bf.lshr.mask.i.i, 64
  %or.cond.i.i = and i1 %cmp.i.i, %cmp6.not.i.i
  br i1 %or.cond.i.i, label %if.end9.i.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %tot_len.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i52.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tot_len.i.i, align 2
  %conv10.i.i = zext i16 %26 to i32
  %27 = shl nuw nsw i8 %bf.clear.i.i, 2
  %mul.i.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pkt, align 4
  %len15.i.i = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %len15.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv10.i.i)
  %cmp16.i.i = icmp ult i32 %31, %conv10.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %mul.i.i)
  %cmp19.i.i = icmp ult i32 %conv10.i.i, %mul.i.i
  %or.cond44.i.i = select i1 %cmp16.i.i, i1 true, i1 %cmp19.i.i
  br i1 %or.cond44.i.i, label %if.end9.i.i.if.then.i_crit_edge, label %__nft_set_pktinfo_ipv4_validate.exit.i

if.end9.i.i.if.then.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

__nft_set_pktinfo_ipv4_validate.exit.i:           ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %1, align 4
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i52.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %protocol.i.i, align 1
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %2, align 1
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul.i.i, ptr %4, align 4
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i52.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %frag_off.i.i, align 2
  %39 = and i16 %38, 8191
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i.i) #7
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end9.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %skb_header_pointer.exit.i.i.if.then.i_crit_edge, %lor.lhs.false.i.i.i.i.if.then.i_crit_edge, %if.end.i.i.i.i.if.then.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i.i) #7
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %1, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i3) #7
  %42 = ptrtoint ptr %flags.i.i3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %flags.i.i3, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ip6h.i.i) #7
  %43 = call ptr @memset(ptr %_ip6h.i.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thoff.i.i) #7
  %44 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %thoff.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i.i4) #7
  %45 = ptrtoint ptr %frag_off.i.i4 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %frag_off.i.i4, align 2, !annotation !44
  %head.i.i.i.i5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %46 = ptrtoint ptr %head.i.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i.i.i5, align 8
  %network_header.i.i.i.i6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %48 = ptrtoint ptr %network_header.i.i.i.i6 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i.i.i6, align 4
  %conv.i.i.i.i7 = zext i16 %49 to i32
  %add.ptr.i.i.i.i8 = getelementptr i8, ptr %47, i32 %conv.i.i.i.i7
  %data.i.i.i9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i9, align 4
  %sub.ptr.lhs.cast.i.i.i10 = ptrtoint ptr %add.ptr.i.i.i.i8 to i32
  %sub.ptr.rhs.cast.i.i.i11 = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i.i12 = sub i32 %sub.ptr.lhs.cast.i.i.i10, %sub.ptr.rhs.cast.i.i.i11
  %len.i.i.i.i13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i.i.i13, align 4
  %data_len.i.i.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %54 = ptrtoint ptr %data_len.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i.i.i14, align 8
  %56 = add i32 %55, %sub.ptr.sub.i.i.i12
  %sub.i4.i.i.i15 = sub i32 %53, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i.i.i15)
  %cmp.not.i.i.i.i16 = icmp slt i32 %sub.i4.i.i.i15, 40
  br i1 %cmp.not.i.i.i.i16, label %if.end.i.i.i.i18, label %skb_header_pointer.exit.i.i23, !prof !43

if.end.i.i.i.i18:                                 ; preds = %sw.bb1
  %tobool2.not.i.i.i.i17 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i17, label %if.end.i.i.i.i18.if.then.i30_crit_edge, label %lor.lhs.false.i.i.i.i21

if.end.i.i.i.i18.if.then.i30_crit_edge:           ; preds = %if.end.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i30

lor.lhs.false.i.i.i.i21:                          ; preds = %if.end.i.i.i.i18
  %call.i.i.i.i19 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i.i12, ptr noundef nonnull %_ip6h.i.i, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i19)
  %cmp3.i.i.i.i20 = icmp slt i32 %call.i.i.i.i19, 0
  br i1 %cmp3.i.i.i.i20, label %lor.lhs.false.i.i.i.i21.if.then.i30_crit_edge, label %lor.lhs.false.i.i.i.i21.if.end.i.i26_crit_edge

lor.lhs.false.i.i.i.i21.if.end.i.i26_crit_edge:   ; preds = %lor.lhs.false.i.i.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i26

lor.lhs.false.i.i.i.i21.if.then.i30_crit_edge:    ; preds = %lor.lhs.false.i.i.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i30

skb_header_pointer.exit.i.i23:                    ; preds = %sw.bb1
  %add.ptr.i.i38.i.i = getelementptr i8, ptr %51, i32 %sub.ptr.sub.i.i.i12
  %tobool.not.i.i22 = icmp eq ptr %add.ptr.i.i38.i.i, null
  br i1 %tobool.not.i.i22, label %skb_header_pointer.exit.i.i23.if.then.i30_crit_edge, label %skb_header_pointer.exit.i.i23.if.end.i.i26_crit_edge

skb_header_pointer.exit.i.i23.if.end.i.i26_crit_edge: ; preds = %skb_header_pointer.exit.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i26

skb_header_pointer.exit.i.i23.if.then.i30_crit_edge: ; preds = %skb_header_pointer.exit.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i30

if.end.i.i26:                                     ; preds = %skb_header_pointer.exit.i.i23.if.end.i.i26_crit_edge, %lor.lhs.false.i.i.i.i21.if.end.i.i26_crit_edge
  %retval.0.i.i44.i.i = phi ptr [ %add.ptr.i.i38.i.i, %skb_header_pointer.exit.i.i23.if.end.i.i26_crit_edge ], [ %_ip6h.i.i, %lor.lhs.false.i.i.i.i21.if.end.i.i26_crit_edge ]
  %57 = ptrtoint ptr %retval.0.i.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i24 = load i8, ptr %retval.0.i.i44.i.i, align 4
  %bf.lshr.mask.i.i25 = and i8 %bf.load.i.i24, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i.i25)
  %cmp.not.i.i = icmp eq i8 %bf.lshr.mask.i.i25, 96
  br i1 %cmp.not.i.i, label %if.end5.i.i, label %if.end.i.i26.if.then.i30_crit_edge

if.end.i.i26.if.then.i30_crit_edge:               ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i30

if.end5.i.i:                                      ; preds = %if.end.i.i26
  %payload_len.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i44.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %payload_len.i.i, align 4
  %conv6.i.i = zext i16 %59 to i32
  %add.i.i = add nuw nsw i32 %conv6.i.i, 40
  %60 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pkt, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %63)
  %cmp8.i.i = icmp ugt i32 %add.i.i, %63
  br i1 %cmp8.i.i, label %if.end5.i.i.if.then.i30_crit_edge, label %if.end11.i.i

if.end5.i.i.if.then.i30_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i30

if.end11.i.i:                                     ; preds = %if.end5.i.i
  %call13.i.i = call i32 @ipv6_find_hdr(ptr noundef %61, ptr noundef nonnull %thoff.i.i, i32 noundef -1, ptr noundef nonnull %frag_off.i.i4, ptr noundef nonnull %flags.i.i3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.end11.i.i.if.then.i30_crit_edge, label %__nft_set_pktinfo_ipv6_validate.exit.i

if.end11.i.i.if.then.i30_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i30

__nft_set_pktinfo_ipv6_validate.exit.i:           ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %1, align 4
  %conv19.i.i = trunc i32 %call13.i.i to i8
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv19.i.i, ptr %2, align 1
  %66 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %thoff.i.i, align 4
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %4, align 4
  %69 = ptrtoint ptr %frag_off.i.i4 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %frag_off.i.i4, align 2
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i.i4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff.i.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6h.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i3) #7
  br label %sw.epilog

if.then.i30:                                      ; preds = %if.end11.i.i.if.then.i30_crit_edge, %if.end5.i.i.if.then.i30_crit_edge, %if.end.i.i26.if.then.i30_crit_edge, %skb_header_pointer.exit.i.i23.if.then.i30_crit_edge, %lor.lhs.false.i.i.i.i21.if.then.i30_crit_edge, %if.end.i.i.i.i18.if.then.i30_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i.i4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff.i.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6h.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i3) #7
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 0, ptr %1, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 0, ptr %1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.i30, %__nft_set_pktinfo_ipv6_validate.exit.i, %if.then.i, %__nft_set_pktinfo_ipv4_validate.exit.i
  %call = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_do_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_tables_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  %ctx = alloca %struct.nft_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ctx) #7
  %2 = getelementptr inbounds i8, ptr %ctx, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 28)
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %ctx, align 4
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 6, label %entry.if.end_crit_edge
    i32 11, label %entry.if.end_crit_edge88
  ]

entry.if.end_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge88
  %count.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 14, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 0
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_tables_net_id to i32))
  %12 = load i32, ptr @nf_tables_net_id, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i, label %if.end8.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end8.rcu_read_lock.exit.i.i_crit_edge
  %gen.i.i = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 43
  %17 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %gen.i.i, align 128
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @.str.2) #7
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %18, i32 0, i32 %12
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i10.i.i, label %do.end7.i.i.nft_pernet.exit_crit_edge, label %land.lhs.true.i13.i.i

do.end7.i.i.nft_pernet.exit_crit_edge:            ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nft_pernet.exit

land.lhs.true.i13.i.i:                            ; preds = %do.end7.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.nft_pernet.exit_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.nft_pernet.exit_crit_edge:  ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nft_pernet.exit

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.nft_pernet.exit_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.nft_pernet.exit_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nft_pernet.exit

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %nft_pernet.exit

nft_pernet.exit:                                  ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.nft_pernet.exit_crit_edge, %land.lhs.true.i13.i.i.nft_pernet.exit_crit_edge, %do.end7.i.i.nft_pernet.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %21 = tail call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i.i.i.i.i17.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %commit_mutex = getelementptr inbounds %struct.nftables_pernet, ptr %20, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #7
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %table.085 = load ptr, ptr %20, align 4
  %cmp12.not86 = icmp eq ptr %table.085, %20
  br i1 %cmp12.not86, label %nft_pernet.exit.for.end54_crit_edge, label %for.body.lr.ph

nft_pernet.exit.for.end54_crit_edge:              ; preds = %nft_pernet.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54

for.body.lr.ph:                                   ; preds = %nft_pernet.exit
  %family21 = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %table22 = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 1
  %chain42 = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp.not.i = icmp eq i32 %event, 6
  br label %for.body

for.body:                                         ; preds = %for.inc48.for.body_crit_edge, %for.body.lr.ph
  %table.087 = phi ptr [ %table.085, %for.body.lr.ph ], [ %table.0, %for.inc48.for.body_crit_edge ]
  %family = getelementptr inbounds %struct.nft_table, ptr %table.087, i32 0, i32 9
  %26 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %family, align 4
  %bf.lshr.mask = and i16 %bf.load, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %bf.lshr.mask)
  %cmp13.not = icmp eq i16 %bf.lshr.mask, 5120
  br i1 %cmp13.not, label %if.end16, label %for.body.for.inc48_crit_edge

for.body.for.inc48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48

if.end16:                                         ; preds = %for.body
  %27 = ptrtoint ptr %family21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 5, ptr %family21, align 2
  %28 = ptrtoint ptr %table22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %table.087, ptr %table22, align 4
  %chains = getelementptr inbounds %struct.nft_table, ptr %table.087, i32 0, i32 2
  %29 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chains, align 4
  %cmp35.not81 = icmp eq ptr %30, %chains
  br i1 %cmp35.not81, label %if.end16.for.inc48_crit_edge, label %if.end16.for.body38_crit_edge

if.end16.for.body38_crit_edge:                    ; preds = %if.end16
  br label %for.body38

if.end16.for.inc48_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48

for.body38:                                       ; preds = %for.inc.for.body38_crit_edge, %if.end16.for.body38_crit_edge
  %.pn.in82 = phi ptr [ %.pn84, %for.inc.for.body38_crit_edge ], [ %30, %if.end16.for.body38_crit_edge ]
  %31 = ptrtoint ptr %.pn.in82 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn84 = load ptr, ptr %.pn.in82, align 8
  %flags.i = getelementptr i8, ptr %.pn.in82, i32 36
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %flags.i, align 4
  %33 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.i.not = icmp eq i8 %33, 0
  br i1 %tobool.i.not, label %for.body38.for.inc_crit_edge, label %if.end41

for.body38.for.inc_crit_edge:                     ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end41:                                         ; preds = %for.body38
  %chain.083 = getelementptr i8, ptr %.pn.in82, i32 -16
  %34 = ptrtoint ptr %chain42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %chain.083, ptr %chain42, align 4
  br i1 %cmp.not.i, label %if.end.i, label %if.end41.for.inc_crit_edge

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %if.end41
  %hook_list.i = getelementptr i8, ptr %.pn.in82, i32 -40
  %35 = ptrtoint ptr %hook_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %hook.040.i = load ptr, ptr %hook_list.i, align 4
  %cmp2.not41.i = icmp eq ptr %hook.040.i, %hook_list.i
  br i1 %cmp2.not41.i, label %if.end.i.for.inc_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %hook.044.i = phi ptr [ %hook.0.i, %for.body.i.for.body.i_crit_edge ], [ %hook.040.i, %if.end.i.for.body.i_crit_edge ]
  %found.043.i = phi ptr [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ null, %if.end.i.for.body.i_crit_edge ]
  %n.042.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %dev3.i = getelementptr inbounds %struct.nft_hook, ptr %hook.044.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev3.i, align 4
  %cmp4.i = icmp eq ptr %37, %1
  %spec.select.i = select i1 %cmp4.i, ptr %hook.044.i, ptr %found.043.i
  %inc.i = add i32 %n.042.i, 1
  %38 = ptrtoint ptr %hook.044.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %hook.0.i = load ptr, ptr %hook.044.i, align 4
  %cmp2.not.i = icmp eq ptr %hook.0.i, %hook_list.i
  br i1 %cmp2.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i, label %for.end.i.for.inc_crit_edge, label %if.end13.i

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end13.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i)
  %cmp14.i = icmp sgt i32 %inc.i, 1
  br i1 %cmp14.i, label %if.then15.i, label %if.end24.i

if.then15.i:                                      ; preds = %if.end13.i
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %ops16.i = getelementptr inbounds %struct.nft_hook, ptr %spec.select.i, i32 0, i32 2
  call void @nf_unregister_net_hook(ptr noundef %40, ptr noundef %ops16.i) #7
  %call.i.i.i78 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select.i) #7
  br i1 %call.i.i.i78, label %if.end.i.i.i, label %if.then15.i.list_del_rcu.exit.i_crit_edge

if.then15.i.list_del_rcu.exit.i_crit_edge:        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spec.select.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then15.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.nft_hook, ptr %spec.select.i, i32 0, i32 3
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 36 to ptr)) #7
  br label %for.inc

if.end24.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call25.i = call i32 @__nft_release_basechain(ptr noundef nonnull %ctx) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end24.i, %list_del_rcu.exit.i, %for.end.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.end41.for.inc_crit_edge, %for.body38.for.inc_crit_edge
  %cmp35.not = icmp eq ptr %.pn84, %chains
  br i1 %cmp35.not, label %for.inc.for.inc48_crit_edge, label %for.inc.for.body38_crit_edge

for.inc.for.body38_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body38

for.inc.for.inc48_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48

for.inc48:                                        ; preds = %for.inc.for.inc48_crit_edge, %if.end16.for.inc48_crit_edge, %for.body.for.inc48_crit_edge
  %48 = ptrtoint ptr %table.087 to i32
  call void @__asan_load4_noabort(i32 %48)
  %table.0 = load ptr, ptr %table.087, align 4
  %cmp12.not = icmp eq ptr %table.0, %20
  br i1 %cmp12.not, label %for.inc48.for.end54_crit_edge, label %for.inc48.for.body_crit_edge

for.inc48.for.body_crit_edge:                     ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc48.for.end54_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54

for.end54:                                        ; preds = %for.inc48.for.end54_crit_edge, %nft_pernet.exit.for.end54_crit_edge
  call void @mutex_unlock(ptr noundef %commit_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end54, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nft_release_basechain(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_do_chain_ipv4(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #7
  %0 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %pkt, i32 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %pkt, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %state, ptr %0, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %1, align 4
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %protocol.i, align 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %2, align 1
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %18 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i.i, ptr %4, align 4
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %frag_off.i, align 2
  %22 = and i16 %21, 8191
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %3, align 2
  %call = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_do_chain_ipv6(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  %flags.i = alloca i32, align 4
  %thoff.i = alloca i32, align 4
  %frag_off.i = alloca i16, align 2
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #7
  %0 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %pkt, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 12)
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %pkt, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %state, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %flags.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thoff.i) #7
  %7 = ptrtoint ptr %thoff.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %thoff.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #7
  %8 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !44
  %call.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %thoff.i, i32 noundef -1, ptr noundef nonnull %frag_off.i, ptr noundef nonnull %flags.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %1, align 4
  br label %nft_set_pktinfo_ipv6.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %11 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %1, align 4
  %conv.i = trunc i32 %call.i to i8
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %12, align 1
  %15 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %thoff.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %10, align 4
  %18 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %frag_off.i, align 2
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %11, align 2
  br label %nft_set_pktinfo_ipv6.exit

nft_set_pktinfo_ipv6.exit:                        ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  %call = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_do_chain_arp(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #7
  %0 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %pkt, i32 16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %pkt, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %state, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %1, align 4
  %call = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_do_chain_inet(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  %flags.i3 = alloca i32, align 4
  %thoff.i4 = alloca i32, align 4
  %frag_off.i5 = alloca i16, align 2
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #7
  %0 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %pkt, i32 8
  %6 = call ptr @memset(ptr %5, i32 255, i32 12)
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %pkt, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %state, ptr %0, align 4
  %pf = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %pf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pf, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %10, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %15 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %1, align 4
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol.i, align 1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %2, align 1
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %21 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i.i, ptr %4, align 4
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %frag_off.i, align 2
  %25 = and i16 %24, 8191
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %3, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i3) #7
  %27 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %flags.i3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thoff.i4) #7
  %28 = ptrtoint ptr %thoff.i4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %thoff.i4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i5) #7
  %29 = ptrtoint ptr %frag_off.i5 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %frag_off.i5, align 2, !annotation !44
  %call.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %thoff.i4, i32 noundef -1, ptr noundef nonnull %frag_off.i5, ptr noundef nonnull %flags.i3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %1, align 4
  br label %nft_set_pktinfo_ipv6.exit

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %1, align 4
  %conv.i = trunc i32 %call.i to i8
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %2, align 1
  %33 = ptrtoint ptr %thoff.i4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %thoff.i4, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %4, align 4
  %36 = ptrtoint ptr %frag_off.i5 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %frag_off.i5, align 2
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %3, align 2
  br label %nft_set_pktinfo_ipv6.exit

nft_set_pktinfo_ipv6.exit:                        ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff.i4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i3) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %nft_set_pktinfo_ipv6.exit, %sw.bb, %entry.sw.epilog_crit_edge
  %call = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_do_chain_inet_ingress(ptr noundef %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %flags.i15 = alloca i32, align 4
  %frag_off.i16 = alloca i16, align 2
  %thoff.i = alloca i32, align 4
  %ingress_state = alloca %struct.nf_hook_state, align 4
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ingress_state) #7
  %0 = call ptr @memcpy(ptr %ingress_state, ptr %state, i32 24)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #7
  %1 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %2 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %3 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %4 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %5 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = call ptr @memset(ptr %pkt, i32 255, i32 20)
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %8, label %entry.cleanup_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %pf = getelementptr inbounds %struct.nf_hook_state, ptr %ingress_state, i32 0, i32 1
  %10 = ptrtoint ptr %pf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %pf, align 1
  %11 = ptrtoint ptr %ingress_state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %ingress_state, align 4
  %12 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %skb, ptr %pkt, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ingress_state, ptr %1, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.if.end.i_crit_edge, !prof !43

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %15)
  %cmp3.i.i = icmp ult i32 %15, 20
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_may_pull.exit.i, !prof !43

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 20, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.cleanup_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_may_pull.exit.i.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %18 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pkt, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear.i)
  %cmp.i = icmp ugt i8 %bf.clear.i, 4
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i)
  %cmp6.not.i = icmp eq i8 %bf.lshr.mask.i, 64
  %or.cond.i = and i1 %cmp.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end9.i, label %if.end.i.do.body39.i_crit_edge

if.end.i.do.body39.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39.i

if.end9.i:                                        ; preds = %if.end.i
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tot_len.i, align 2
  %conv10.i = zext i16 %26 to i32
  %27 = shl nuw nsw i8 %bf.clear.i, 2
  %mul.i = zext i8 %27 to i32
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %28 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv10.i)
  %cmp16.i = icmp ult i32 %29, %conv10.i
  br i1 %cmp16.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @local_bh_disable() #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %net.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i.i, align 4
  %mib.i = getelementptr inbounds %struct.net, ptr %33, i32 0, i32 30
  %34 = ptrtoint ptr %mib.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mib.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %42, %36
  %43 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.ipstats_mib, ptr %43, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #7
  %arrayidx24.i = getelementptr [37 x i64], ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx24.i, align 8
  %add25.i = add i64 %45, 1
  store i64 %add25.i, ptr %arrayidx24.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %43, i32 0, i32 1, i32 0, i32 1
  %46 = call ptr @llvm.returnaddress(i32 0) #7
  %47 = ptrtoint ptr %46 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %47) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %48 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  call fastcc void @local_bh_enable() #7
  br label %cleanup

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i, i32 %mul.i)
  %cmp31.i = icmp ult i32 %conv10.i, %mul.i
  br i1 %cmp31.i, label %if.else.i.do.body39.i_crit_edge, label %nft_set_pktinfo_ipv4_ingress.exit

if.else.i.do.body39.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39.i

do.body39.i:                                      ; preds = %if.else.i.do.body39.i_crit_edge, %if.end.i.do.body39.i_crit_edge
  call fastcc void @local_bh_disable() #7
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %net.i87.i = getelementptr inbounds %struct.nf_hook_state, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %net.i87.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net.i87.i, align 4
  %mib49.i = getelementptr inbounds %struct.net, ptr %53, i32 0, i32 30
  %54 = ptrtoint ptr %mib49.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mib49.i, align 4
  %56 = ptrtoint ptr %55 to i32
  %57 = call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i88.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i88.i to ptr
  %cpu53.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu53.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu53.i, align 4
  %arrayidx54.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx54.i, align 4
  %add55.i = add i32 %62, %56
  %63 = inttoptr i32 %add55.i to ptr
  %syncp56.i = getelementptr inbounds %struct.ipstats_mib, ptr %63, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp56.i) #7
  %arrayidx58.i = getelementptr [37 x i64], ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx58.i, align 8
  %add59.i = add i64 %65, 1
  store i64 %add59.i, ptr %arrayidx58.i, align 8
  %dep_map.i.i89.i = getelementptr inbounds %struct.ipstats_mib, ptr %63, i32 0, i32 1, i32 0, i32 1
  %66 = call ptr @llvm.returnaddress(i32 0) #7
  %67 = ptrtoint ptr %66 to i32
  call void @lock_release(ptr noundef %dep_map.i.i89.i, i32 noundef %67) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %68 = ptrtoint ptr %syncp56.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %syncp56.i, align 4
  %inc.i.i.i90.i = add i32 %69, 1
  store i32 %inc.i.i.i90.i, ptr %syncp56.i, align 4
  call fastcc void @local_bh_enable() #7
  br label %cleanup

nft_set_pktinfo_ipv4_ingress.exit:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %2, align 4
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %71 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %protocol.i, align 1
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %3, align 1
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul.i, ptr %5, align 4
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %frag_off.i, align 2
  %77 = and i16 %76, 8191
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %4, align 2
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %pf3 = getelementptr inbounds %struct.nf_hook_state, ptr %ingress_state, i32 0, i32 1
  %79 = ptrtoint ptr %pf3 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 10, ptr %pf3, align 1
  %80 = ptrtoint ptr %ingress_state to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 5, ptr %ingress_state, align 4
  %81 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %skb, ptr %pkt, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %ingress_state, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i15) #7
  %83 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %flags.i15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i16) #7
  %84 = ptrtoint ptr %frag_off.i16 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 -1, ptr %frag_off.i16, align 2, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thoff.i) #7
  %85 = ptrtoint ptr %thoff.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %thoff.i, align 4
  %len.i.i.i17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %86 = ptrtoint ptr %len.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.i.i.i17, align 4
  %data_len.i.i.i18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %88 = ptrtoint ptr %data_len.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %data_len.i.i.i18, align 8
  %sub.i.i.i19 = sub i32 %87, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i.i19)
  %cmp.not.i.i20 = icmp ult i32 %sub.i.i.i19, 40
  br i1 %cmp.not.i.i20, label %if.end.i.i22, label %sw.bb2.if.end.i33_crit_edge, !prof !43

sw.bb2.if.end.i33_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i33

if.end.i.i22:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %87)
  %cmp3.i.i21 = icmp ult i32 %87, 40
  br i1 %cmp3.i.i21, label %if.end.i.i22.nft_set_pktinfo_ipv6_ingress.exit.thread_crit_edge, label %pskb_may_pull.exit.i26, !prof !43

if.end.i.i22.nft_set_pktinfo_ipv6_ingress.exit.thread_crit_edge: ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %nft_set_pktinfo_ipv6_ingress.exit.thread

pskb_may_pull.exit.i26:                           ; preds = %if.end.i.i22
  %sub.i.i23 = sub nuw nsw i32 40, %sub.i.i.i19
  %call13.i.i24 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i23) #7
  %cmp14.i.not.i25 = icmp eq ptr %call13.i.i24, null
  br i1 %cmp14.i.not.i25, label %pskb_may_pull.exit.i26.nft_set_pktinfo_ipv6_ingress.exit.thread_crit_edge, label %pskb_may_pull.exit.i26.if.end.i33_crit_edge

pskb_may_pull.exit.i26.if.end.i33_crit_edge:      ; preds = %pskb_may_pull.exit.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i33

pskb_may_pull.exit.i26.nft_set_pktinfo_ipv6_ingress.exit.thread_crit_edge: ; preds = %pskb_may_pull.exit.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %nft_set_pktinfo_ipv6_ingress.exit.thread

if.end.i33:                                       ; preds = %pskb_may_pull.exit.i26.if.end.i33_crit_edge, %sw.bb2.if.end.i33_crit_edge
  %90 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pkt, align 4
  %head.i.i.i27 = getelementptr inbounds %struct.sk_buff, ptr %91, i32 0, i32 18
  %92 = ptrtoint ptr %head.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.i.i.i27, align 8
  %network_header.i.i.i28 = getelementptr inbounds %struct.sk_buff, ptr %91, i32 0, i32 15, i32 0, i32 20
  %94 = ptrtoint ptr %network_header.i.i.i28 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %network_header.i.i.i28, align 4
  %conv.i.i.i29 = zext i16 %95 to i32
  %add.ptr.i.i.i30 = getelementptr i8, ptr %93, i32 %conv.i.i.i29
  %96 = ptrtoint ptr %add.ptr.i.i.i30 to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i31 = load i8, ptr %add.ptr.i.i.i30, align 4
  %bf.lshr.mask.i32 = and i8 %bf.load.i31, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i32)
  %cmp.not.i = icmp eq i8 %bf.lshr.mask.i32, 96
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i33.inhdr_error.i_crit_edge

if.end.i33.inhdr_error.i_crit_edge:               ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %inhdr_error.i

if.end5.i:                                        ; preds = %if.end.i33
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i30, i32 0, i32 2
  %97 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %payload_len.i, align 4
  %conv6.i = zext i16 %98 to i32
  %add.i34 = add nuw nsw i32 %conv6.i, 40
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %91, i32 0, i32 6
  %99 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i34, i32 %100)
  %cmp8.i = icmp ugt i32 %add.i34, %100
  br i1 %cmp8.i, label %if.then10.i, label %if.end54.i

if.then10.i:                                      ; preds = %if.end5.i
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %in.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %in.i.i, align 4
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 80
  %105 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i.i, label %if.then10.i.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then10.i.__in6_dev_get.exit.i_crit_edge:       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then10.i
  %call2.i.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 313, ptr noundef nonnull @.str.2) #7
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %if.then10.i.__in6_dev_get.exit.i_crit_edge
  %cmp13.not.i = icmp eq ptr %106, null
  br i1 %cmp13.not.i, label %__in6_dev_get.exit.i.do.body30.i_crit_edge, label %do.body.i42, !prof !43

__in6_dev_get.exit.i.do.body30.i_crit_edge:       ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30.i

do.body.i42:                                      ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @local_bh_disable() #7
  %ipv6.i = getelementptr inbounds %struct.inet6_dev, ptr %106, i32 0, i32 33, i32 1
  %107 = ptrtoint ptr %ipv6.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ipv6.i, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i.i36 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i36 to ptr
  %cpu.i37 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %cpu.i37 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cpu.i37, align 4
  %arrayidx.i38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i38, align 4
  %add21.i = add i32 %115, %109
  %116 = inttoptr i32 %add21.i to ptr
  %syncp.i39 = getelementptr inbounds %struct.ipstats_mib, ptr %116, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i39) #7
  %arrayidx22.i = getelementptr [37 x i64], ptr %116, i32 0, i32 12
  %117 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx22.i, align 8
  %add23.i = add i64 %118, 1
  store i64 %add23.i, ptr %arrayidx22.i, align 8
  %dep_map.i.i.i40 = getelementptr inbounds %struct.ipstats_mib, ptr %116, i32 0, i32 1, i32 0, i32 1
  %119 = call ptr @llvm.returnaddress(i32 0) #7
  %120 = ptrtoint ptr %119 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i40, i32 noundef %120) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %121 = ptrtoint ptr %syncp.i39 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %syncp.i39, align 4
  %inc.i.i.i.i41 = add i32 %122, 1
  store i32 %inc.i.i.i.i41, ptr %syncp.i39, align 4
  call fastcc void @local_bh_enable() #7
  br label %do.body30.i

do.body30.i:                                      ; preds = %do.body.i42, %__in6_dev_get.exit.i.do.body30.i_crit_edge
  call fastcc void @local_bh_disable() #7
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %net.i.i43 = getelementptr inbounds %struct.nf_hook_state, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %net.i.i43 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %net.i.i43, align 4
  %ipv6_statistics.i = getelementptr inbounds %struct.net, ptr %126, i32 0, i32 30, i32 1
  %127 = ptrtoint ptr %ipv6_statistics.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ipv6_statistics.i, align 4
  %129 = ptrtoint ptr %128 to i32
  %130 = call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i159.i = and i32 %130, -16384
  %131 = inttoptr i32 %and.i159.i to ptr
  %cpu42.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %cpu42.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cpu42.i, align 4
  %arrayidx43.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx43.i, align 4
  %add44.i = add i32 %135, %129
  %136 = inttoptr i32 %add44.i to ptr
  %syncp45.i = getelementptr inbounds %struct.ipstats_mib, ptr %136, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp45.i) #7
  %arrayidx47.i = getelementptr [37 x i64], ptr %136, i32 0, i32 12
  %137 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %arrayidx47.i, align 8
  %add48.i = add i64 %138, 1
  store i64 %add48.i, ptr %arrayidx47.i, align 8
  %dep_map.i.i160.i = getelementptr inbounds %struct.ipstats_mib, ptr %136, i32 0, i32 1, i32 0, i32 1
  %139 = call ptr @llvm.returnaddress(i32 0) #7
  %140 = ptrtoint ptr %139 to i32
  call void @lock_release(ptr noundef %dep_map.i.i160.i, i32 noundef %140) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  br label %nft_set_pktinfo_ipv6_ingress.exit.thread.sink.split

if.end54.i:                                       ; preds = %if.end5.i
  %call56.i = call i32 @ipv6_find_hdr(ptr noundef %91, ptr noundef nonnull %thoff.i, i32 noundef -1, ptr noundef nonnull %frag_off.i16, ptr noundef nonnull %flags.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %if.end54.i.inhdr_error.i_crit_edge, label %nft_set_pktinfo_ipv6_ingress.exit

if.end54.i.inhdr_error.i_crit_edge:               ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inhdr_error.i

inhdr_error.i:                                    ; preds = %if.end54.i.inhdr_error.i_crit_edge, %if.end.i33.inhdr_error.i_crit_edge
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %in.i163.i = getelementptr inbounds %struct.nf_hook_state, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %in.i163.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %in.i163.i, align 4
  %ip6_ptr.i164.i = getelementptr inbounds %struct.net_device, ptr %144, i32 0, i32 80
  %145 = ptrtoint ptr %ip6_ptr.i164.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %ip6_ptr.i164.i, align 8
  %call.i165.i = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i165.i, label %inhdr_error.i.__in6_dev_get.exit175.i_crit_edge, label %lor.lhs.false.i168.i

inhdr_error.i.__in6_dev_get.exit175.i_crit_edge:  ; preds = %inhdr_error.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit175.i

lor.lhs.false.i168.i:                             ; preds = %inhdr_error.i
  %call2.i166.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i166.i)
  %tobool.not.i167.i = icmp eq i32 %call2.i166.i, 0
  br i1 %tobool.not.i167.i, label %land.lhs.true.i171.i, label %lor.lhs.false.i168.i.__in6_dev_get.exit175.i_crit_edge

lor.lhs.false.i168.i.__in6_dev_get.exit175.i_crit_edge: ; preds = %lor.lhs.false.i168.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit175.i

land.lhs.true.i171.i:                             ; preds = %lor.lhs.false.i168.i
  %call3.i169.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i169.i)
  %tobool4.not.i170.i = icmp eq i32 %call3.i169.i, 0
  br i1 %tobool4.not.i170.i, label %land.lhs.true.i171.i.__in6_dev_get.exit175.i_crit_edge, label %land.lhs.true5.i173.i

land.lhs.true.i171.i.__in6_dev_get.exit175.i_crit_edge: ; preds = %land.lhs.true.i171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit175.i

land.lhs.true5.i173.i:                            ; preds = %land.lhs.true.i171.i
  %.b10.i172.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i172.i, label %land.lhs.true5.i173.i.__in6_dev_get.exit175.i_crit_edge, label %if.then.i174.i

land.lhs.true5.i173.i.__in6_dev_get.exit175.i_crit_edge: ; preds = %land.lhs.true5.i173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit175.i

if.then.i174.i:                                   ; preds = %land.lhs.true5.i173.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 313, ptr noundef nonnull @.str.2) #7
  br label %__in6_dev_get.exit175.i

__in6_dev_get.exit175.i:                          ; preds = %if.then.i174.i, %land.lhs.true5.i173.i.__in6_dev_get.exit175.i_crit_edge, %land.lhs.true.i171.i.__in6_dev_get.exit175.i_crit_edge, %lor.lhs.false.i168.i.__in6_dev_get.exit175.i_crit_edge, %inhdr_error.i.__in6_dev_get.exit175.i_crit_edge
  %cmp67.not.i = icmp eq ptr %146, null
  br i1 %cmp67.not.i, label %__in6_dev_get.exit175.i.do.body102.i_crit_edge, label %do.body76.i, !prof !43

__in6_dev_get.exit175.i.do.body102.i_crit_edge:   ; preds = %__in6_dev_get.exit175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102.i

do.body76.i:                                      ; preds = %__in6_dev_get.exit175.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @local_bh_disable() #7
  %ipv686.i = getelementptr inbounds %struct.inet6_dev, ptr %146, i32 0, i32 33, i32 1
  %147 = ptrtoint ptr %ipv686.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ipv686.i, align 4
  %149 = ptrtoint ptr %148 to i32
  %150 = call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i176.i = and i32 %150, -16384
  %151 = inttoptr i32 %and.i176.i to ptr
  %cpu89.i = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %cpu89.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cpu89.i, align 4
  %arrayidx90.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %153
  %154 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx90.i, align 4
  %add91.i = add i32 %155, %149
  %156 = inttoptr i32 %add91.i to ptr
  %syncp92.i = getelementptr inbounds %struct.ipstats_mib, ptr %156, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp92.i) #7
  %arrayidx94.i = getelementptr [37 x i64], ptr %156, i32 0, i32 7
  %157 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %arrayidx94.i, align 8
  %add95.i = add i64 %158, 1
  store i64 %add95.i, ptr %arrayidx94.i, align 8
  %dep_map.i.i177.i = getelementptr inbounds %struct.ipstats_mib, ptr %156, i32 0, i32 1, i32 0, i32 1
  %159 = call ptr @llvm.returnaddress(i32 0) #7
  %160 = ptrtoint ptr %159 to i32
  call void @lock_release(ptr noundef %dep_map.i.i177.i, i32 noundef %160) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %161 = ptrtoint ptr %syncp92.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %syncp92.i, align 4
  %inc.i.i.i178.i = add i32 %162, 1
  store i32 %inc.i.i.i178.i, ptr %syncp92.i, align 4
  call fastcc void @local_bh_enable() #7
  br label %do.body102.i

do.body102.i:                                     ; preds = %do.body76.i, %__in6_dev_get.exit175.i.do.body102.i_crit_edge
  call fastcc void @local_bh_disable() #7
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %net.i180.i = getelementptr inbounds %struct.nf_hook_state, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %net.i180.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %net.i180.i, align 4
  %ipv6_statistics113.i = getelementptr inbounds %struct.net, ptr %166, i32 0, i32 30, i32 1
  %167 = ptrtoint ptr %ipv6_statistics113.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ipv6_statistics113.i, align 4
  %169 = ptrtoint ptr %168 to i32
  %170 = call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i181.i = and i32 %170, -16384
  %171 = inttoptr i32 %and.i181.i to ptr
  %cpu116.i = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 3
  %172 = ptrtoint ptr %cpu116.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cpu116.i, align 4
  %arrayidx117.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %173
  %174 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx117.i, align 4
  %add118.i = add i32 %175, %169
  %176 = inttoptr i32 %add118.i to ptr
  %syncp119.i = getelementptr inbounds %struct.ipstats_mib, ptr %176, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp119.i) #7
  %arrayidx121.i = getelementptr [37 x i64], ptr %176, i32 0, i32 7
  %177 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx121.i, align 8
  %add122.i = add i64 %178, 1
  store i64 %add122.i, ptr %arrayidx121.i, align 8
  %dep_map.i.i182.i = getelementptr inbounds %struct.ipstats_mib, ptr %176, i32 0, i32 1, i32 0, i32 1
  %179 = call ptr @llvm.returnaddress(i32 0) #7
  %180 = ptrtoint ptr %179 to i32
  call void @lock_release(ptr noundef %dep_map.i.i182.i, i32 noundef %180) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  br label %nft_set_pktinfo_ipv6_ingress.exit.thread.sink.split

nft_set_pktinfo_ipv6_ingress.exit.thread.sink.split: ; preds = %do.body102.i, %do.body30.i
  %syncp119.i.sink51 = phi ptr [ %syncp119.i, %do.body102.i ], [ %syncp45.i, %do.body30.i ]
  %181 = ptrtoint ptr %syncp119.i.sink51 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %syncp119.i.sink51, align 4
  %inc.i.i.i183.i = add i32 %182, 1
  store i32 %inc.i.i.i183.i, ptr %syncp119.i.sink51, align 4
  call fastcc void @local_bh_enable() #7
  br label %nft_set_pktinfo_ipv6_ingress.exit.thread

nft_set_pktinfo_ipv6_ingress.exit.thread:         ; preds = %nft_set_pktinfo_ipv6_ingress.exit.thread.sink.split, %pskb_may_pull.exit.i26.nft_set_pktinfo_ipv6_ingress.exit.thread_crit_edge, %if.end.i.i22.nft_set_pktinfo_ipv6_ingress.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i15) #7
  br label %cleanup

nft_set_pktinfo_ipv6_ingress.exit:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 1, ptr %2, align 4
  %conv62.i = trunc i32 %call56.i to i8
  %184 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv62.i, ptr %3, align 1
  %185 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %thoff.i, align 4
  %187 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %5, align 4
  %188 = ptrtoint ptr %frag_off.i16 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %frag_off.i16, align 2
  %190 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i15) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %nft_set_pktinfo_ipv6_ingress.exit, %nft_set_pktinfo_ipv4_ingress.exit
  %call10 = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %nft_set_pktinfo_ipv6_ingress.exit.thread, %do.body39.i, %do.body.i, %pskb_may_pull.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %sw.epilog ], [ 1, %entry.cleanup_crit_edge ], [ 0, %nft_set_pktinfo_ipv6_ingress.exit.thread ], [ 0, %do.body39.i ], [ 0, %do.body.i ], [ 0, %pskb_may_pull.exit.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ingress_state) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  %5 = tail call i32 @llvm.read_register.i32(metadata !33) #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %14 = tail call i32 @llvm.read_register.i32(metadata !33) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !33) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %33 = tail call i32 @llvm.read_register.i32(metadata !33) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !52

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #7
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_do_chain_bridge(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  %flags.i.i4 = alloca i32, align 4
  %_ip6h.i.i = alloca %struct.ipv6hdr, align 4
  %thoff.i.i = alloca i32, align 4
  %frag_off.i.i5 = alloca i16, align 2
  %_iph.i.i = alloca %struct.iphdr, align 4
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #7
  %0 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %pkt, i32 8
  %6 = call ptr @memset(ptr %5, i32 255, i32 12)
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %pkt, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %state, ptr %0, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %11 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %h_proto, align 1
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %14, label %sw.default [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i.i) #7
  %16 = call ptr @memset(ptr %_iph.i.i, i32 255, i32 20)
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %18 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i.i, align 8
  %25 = add i32 %24, %sub.ptr.sub.i.i.i
  %sub.i4.i.i.i = sub i32 %22, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 20
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %skb_header_pointer.exit.i.i, !prof !43

if.end.i.i.i.i:                                   ; preds = %sw.bb
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.if.then.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.if.then.i_crit_edge:               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i.i, ptr noundef nonnull %_iph.i.i, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

lor.lhs.false.i.i.i.i.if.then.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

skb_header_pointer.exit.i.i:                      ; preds = %sw.bb
  %add.ptr.i.i46.i.i = getelementptr i8, ptr %20, i32 %sub.ptr.sub.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i46.i.i, null
  br i1 %tobool.not.i.i, label %skb_header_pointer.exit.i.i.if.then.i_crit_edge, label %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge

skb_header_pointer.exit.i.i.if.end.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

skb_header_pointer.exit.i.i.if.then.i_crit_edge:  ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.i.i:                                       ; preds = %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge
  %retval.0.i.i52.i.i = phi ptr [ %add.ptr.i.i46.i.i, %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge ], [ %_iph.i.i, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge ]
  %26 = ptrtoint ptr %retval.0.i.i52.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i = load i8, ptr %retval.0.i.i52.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear.i.i)
  %cmp.i.i = icmp ugt i8 %bf.clear.i.i, 4
  %bf.lshr.mask.i.i = and i8 %bf.load.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i.i)
  %cmp6.not.i.i = icmp eq i8 %bf.lshr.mask.i.i, 64
  %or.cond.i.i = and i1 %cmp.i.i, %cmp6.not.i.i
  br i1 %or.cond.i.i, label %if.end9.i.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %tot_len.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i52.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tot_len.i.i, align 2
  %conv10.i.i = zext i16 %28 to i32
  %29 = shl nuw nsw i8 %bf.clear.i.i, 2
  %mul.i.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pkt, align 4
  %len15.i.i = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %len15.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv10.i.i)
  %cmp16.i.i = icmp ult i32 %33, %conv10.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %mul.i.i)
  %cmp19.i.i = icmp ult i32 %conv10.i.i, %mul.i.i
  %or.cond44.i.i = select i1 %cmp16.i.i, i1 true, i1 %cmp19.i.i
  br i1 %or.cond44.i.i, label %if.end9.i.i.if.then.i_crit_edge, label %__nft_set_pktinfo_ipv4_validate.exit.i

if.end9.i.i.if.then.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

__nft_set_pktinfo_ipv4_validate.exit.i:           ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %1, align 4
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i52.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %protocol.i.i, align 1
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %2, align 1
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul.i.i, ptr %4, align 4
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i52.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %frag_off.i.i, align 2
  %41 = and i16 %40, 8191
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i.i) #7
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end9.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %skb_header_pointer.exit.i.i.if.then.i_crit_edge, %lor.lhs.false.i.i.i.i.if.then.i_crit_edge, %if.end.i.i.i.i.if.then.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i.i) #7
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 0, ptr %1, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i4) #7
  %44 = ptrtoint ptr %flags.i.i4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %flags.i.i4, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ip6h.i.i) #7
  %45 = call ptr @memset(ptr %_ip6h.i.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thoff.i.i) #7
  %46 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %thoff.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i.i5) #7
  %47 = ptrtoint ptr %frag_off.i.i5 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %frag_off.i.i5, align 2, !annotation !44
  %network_header.i.i.i.i7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %48 = ptrtoint ptr %network_header.i.i.i.i7 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i.i.i7, align 4
  %conv.i.i.i.i8 = zext i16 %49 to i32
  %add.ptr.i.i.i.i9 = getelementptr i8, ptr %10, i32 %conv.i.i.i.i8
  %data.i.i.i10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i10, align 4
  %sub.ptr.lhs.cast.i.i.i11 = ptrtoint ptr %add.ptr.i.i.i.i9 to i32
  %sub.ptr.rhs.cast.i.i.i12 = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i.i13 = sub i32 %sub.ptr.lhs.cast.i.i.i11, %sub.ptr.rhs.cast.i.i.i12
  %len.i.i.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i.i.i14, align 4
  %data_len.i.i.i.i15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %54 = ptrtoint ptr %data_len.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i.i.i15, align 8
  %56 = add i32 %55, %sub.ptr.sub.i.i.i13
  %sub.i4.i.i.i16 = sub i32 %53, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i.i.i16)
  %cmp.not.i.i.i.i17 = icmp slt i32 %sub.i4.i.i.i16, 40
  br i1 %cmp.not.i.i.i.i17, label %if.end.i.i.i.i19, label %skb_header_pointer.exit.i.i24, !prof !43

if.end.i.i.i.i19:                                 ; preds = %sw.bb1
  %tobool2.not.i.i.i.i18 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i18, label %if.end.i.i.i.i19.if.then.i31_crit_edge, label %lor.lhs.false.i.i.i.i22

if.end.i.i.i.i19.if.then.i31_crit_edge:           ; preds = %if.end.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i31

lor.lhs.false.i.i.i.i22:                          ; preds = %if.end.i.i.i.i19
  %call.i.i.i.i20 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i.i13, ptr noundef nonnull %_ip6h.i.i, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i20)
  %cmp3.i.i.i.i21 = icmp slt i32 %call.i.i.i.i20, 0
  br i1 %cmp3.i.i.i.i21, label %lor.lhs.false.i.i.i.i22.if.then.i31_crit_edge, label %lor.lhs.false.i.i.i.i22.if.end.i.i27_crit_edge

lor.lhs.false.i.i.i.i22.if.end.i.i27_crit_edge:   ; preds = %lor.lhs.false.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i27

lor.lhs.false.i.i.i.i22.if.then.i31_crit_edge:    ; preds = %lor.lhs.false.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i31

skb_header_pointer.exit.i.i24:                    ; preds = %sw.bb1
  %add.ptr.i.i38.i.i = getelementptr i8, ptr %51, i32 %sub.ptr.sub.i.i.i13
  %tobool.not.i.i23 = icmp eq ptr %add.ptr.i.i38.i.i, null
  br i1 %tobool.not.i.i23, label %skb_header_pointer.exit.i.i24.if.then.i31_crit_edge, label %skb_header_pointer.exit.i.i24.if.end.i.i27_crit_edge

skb_header_pointer.exit.i.i24.if.end.i.i27_crit_edge: ; preds = %skb_header_pointer.exit.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i27

skb_header_pointer.exit.i.i24.if.then.i31_crit_edge: ; preds = %skb_header_pointer.exit.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i31

if.end.i.i27:                                     ; preds = %skb_header_pointer.exit.i.i24.if.end.i.i27_crit_edge, %lor.lhs.false.i.i.i.i22.if.end.i.i27_crit_edge
  %retval.0.i.i44.i.i = phi ptr [ %add.ptr.i.i38.i.i, %skb_header_pointer.exit.i.i24.if.end.i.i27_crit_edge ], [ %_ip6h.i.i, %lor.lhs.false.i.i.i.i22.if.end.i.i27_crit_edge ]
  %57 = ptrtoint ptr %retval.0.i.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i25 = load i8, ptr %retval.0.i.i44.i.i, align 4
  %bf.lshr.mask.i.i26 = and i8 %bf.load.i.i25, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i.i26)
  %cmp.not.i.i = icmp eq i8 %bf.lshr.mask.i.i26, 96
  br i1 %cmp.not.i.i, label %if.end5.i.i, label %if.end.i.i27.if.then.i31_crit_edge

if.end.i.i27.if.then.i31_crit_edge:               ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i31

if.end5.i.i:                                      ; preds = %if.end.i.i27
  %payload_len.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i44.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %payload_len.i.i, align 4
  %conv6.i.i = zext i16 %59 to i32
  %add.i.i = add nuw nsw i32 %conv6.i.i, 40
  %60 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pkt, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %63)
  %cmp8.i.i = icmp ugt i32 %add.i.i, %63
  br i1 %cmp8.i.i, label %if.end5.i.i.if.then.i31_crit_edge, label %if.end11.i.i

if.end5.i.i.if.then.i31_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i31

if.end11.i.i:                                     ; preds = %if.end5.i.i
  %call13.i.i = call i32 @ipv6_find_hdr(ptr noundef %61, ptr noundef nonnull %thoff.i.i, i32 noundef -1, ptr noundef nonnull %frag_off.i.i5, ptr noundef nonnull %flags.i.i4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.end11.i.i.if.then.i31_crit_edge, label %__nft_set_pktinfo_ipv6_validate.exit.i

if.end11.i.i.if.then.i31_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i31

__nft_set_pktinfo_ipv6_validate.exit.i:           ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %1, align 4
  %conv19.i.i = trunc i32 %call13.i.i to i8
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv19.i.i, ptr %2, align 1
  %66 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %thoff.i.i, align 4
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %4, align 4
  %69 = ptrtoint ptr %frag_off.i.i5 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %frag_off.i.i5, align 2
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i.i5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff.i.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6h.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i4) #7
  br label %sw.epilog

if.then.i31:                                      ; preds = %if.end11.i.i.if.then.i31_crit_edge, %if.end5.i.i.if.then.i31_crit_edge, %if.end.i.i27.if.then.i31_crit_edge, %skb_header_pointer.exit.i.i24.if.then.i31_crit_edge, %lor.lhs.false.i.i.i.i22.if.then.i31_crit_edge, %if.end.i.i.i.i19.if.then.i31_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i.i5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff.i.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6h.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i4) #7
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 0, ptr %1, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 0, ptr %1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.i31, %__nft_set_pktinfo_ipv6_validate.exit.i, %if.then.i, %__nft_set_pktinfo_ipv4_validate.exit.i
  %call2 = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_chain_filter.c", i32 310, i32 11}
!2 = !{ptr @nft_chain_filter_netdev, !3, !"nft_chain_filter_netdev", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_chain_filter.c", i32 309, i32 36}
!4 = !{ptr @nf_tables_netdev_notifier, !5, !"nf_tables_netdev_notifier", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_chain_filter.c", i32 389, i32 30}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nft_chain_filter_ipv4, !18, !"nft_chain_filter_ipv4", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_chain_filter.c", i32 26, i32 36}
!19 = !{ptr @nft_chain_filter_ipv6, !20, !"nft_chain_filter_ipv6", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_chain_filter.c", i32 110, i32 36}
!21 = !{ptr @nft_chain_filter_arp, !22, !"nft_chain_filter_arp", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_chain_filter.c", i32 70, i32 36}
!23 = !{ptr @nft_chain_filter_inet, !24, !"nft_chain_filter_inet", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_chain_filter.c", i32 195, i32 36}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nft_chain_filter_bridge, !32, !"nft_chain_filter_bridge", i1 false, i1 false}
!32 = !{!"../net/netfilter/nft_chain_filter.c", i32 254, i32 36}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{!"auto-init"}
!45 = !{i64 2149597013}
!46 = !{i64 2149597279}
!47 = !{i64 2150349708}
!48 = !{i64 2150241310}
!49 = !{i64 2150246244}
!50 = !{i64 2150267962}
!51 = !{i64 2150272856}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2150349383}
