; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/device.c_pt.bc'
source_filename = "../drivers/net/wireguard/device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.148, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.148 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, i32, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.wg_peer = type { ptr, %struct.prev_queue, %struct.prev_queue, %struct.sk_buff_head, i32, i8, %struct.noise_keypairs, %struct.endpoint, %struct.dst_cache, %struct.rwlock_t, %struct.noise_handshake, %struct.atomic64_t, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cookie, %struct.hlist_node, i64, i64, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i16, i8, i8, %struct.timespec64, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.napi_struct, i64 }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.158, %struct.atomic_t }
%struct.anon.158 = type { ptr, ptr }
%struct.noise_keypairs = type { ptr, ptr, ptr, %struct.spinlock }
%struct.endpoint = type { %union.anon.159, %union.anon.160 }
%union.anon.159 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%union.anon.160 = type { %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.noise_handshake = type { %struct.index_hashtable_entry, i32, i64, ptr, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, %struct.rw_semaphore }
%struct.index_hashtable_entry = type { ptr, %struct.hlist_node, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.cookie = type { i64, i8, [16 x i8], i8, [16 x i8], [32 x i8], [32 x i8], %struct.rw_semaphore }
%struct.timespec64 = type { i64, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@pm_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @wg_pm_notification, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@pernet_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr @wg_netns_pre_exit, ptr null, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 2432, ptr null, ptr @wg_setup, i8 0, i32 0, ptr null, ptr null, ptr @wg_newlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @device_list, ptr @device_list }, [24 x i8] zeroinitializer }, align 32
@wg_netns_pre_exit.__UNIQUE_ID_ddebug606 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wireguard\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wg_netns_pre_exit\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/wireguard/device.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Creating namespace exiting\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"wireguard: %s: Creating namespace exiting\0A\00", [53 x i8] zeroinitializer }, align 32
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @wg_open, ptr @wg_stop, ptr @wg_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ip_tunnel_header_ops = external dso_local constant %struct.header_ops, align 4
@device_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@wg_xmit.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wg_xmit\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid IP packet\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wireguard: %s: Invalid IP packet\0A\00", [62 x i8] zeroinitializer }, align 32
@wg_xmit.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: No peer has allowed IPs matching %pI4\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"wireguard: %s: No peer has allowed IPs matching %pI4\0A\00", [42 x i8] zeroinitializer }, align 32
@wg_xmit.descriptor.15 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.16, i8 0, i8 35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: No peer has allowed IPs matching %pI6\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"wireguard: %s: No peer has allowed IPs matching %pI6\0A\00", [42 x i8] zeroinitializer }, align 32
@wg_xmit.descriptor.18 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.19, i8 0, i8 37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: No valid endpoint has been configured or discovered for peer %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"wireguard: %s: No valid endpoint has been configured or discovered for peer %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@wg_newlink.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&wg->static_identity.lock\00", [38 x i8] zeroinitializer }, align 32
@wg_newlink.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&wg->socket_update_lock\00", [40 x i8] zeroinitializer }, align 32
@wg_newlink.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&wg->device_update_lock\00", [40 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@wg_newlink.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wg-kex-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wg-crypt-%s\00", [20 x i8] zeroinitializer }, align 32
@wg_newlink.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wg_newlink\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Interface created\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wireguard: %s: Interface created\0A\00", [62 x i8] zeroinitializer }, align 32
@wg_destruct.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wg_destruct\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Interface destroyed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wireguard: %s: Interface destroyed\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"pm_notifier\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 94, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"pernet_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 419, i32 33 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"device_list\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 27, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 406, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 218, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 256, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 249, i32 9 }
@___asan_gen_.78 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 313, i32 9 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 131, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 139, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 142, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 150, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1011, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 300, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 301, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 302, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 316, i32 16 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 320, i32 45 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 330, i32 40 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 365, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [34 x i8] c"../drivers/net/wireguard/device.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 252, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @pm_notifier, ptr @pernet_ops, ptr @device_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @netdev_ops, ptr @device_type, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @wg_newlink.__key, ptr @.str.22, ptr @wg_newlink.__key.23, ptr @.str.24, ptr @wg_newlink.__key.25, ptr @.str.26, ptr @wg_newlink.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pernet_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_newlink.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_newlink.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_newlink.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_newlink.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_device_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pm_notifier(ptr noundef nonnull @pm_notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_device(ptr noundef nonnull @pernet_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.error_pm_crit_edge

if.end.error_pm_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_pm

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @rtnl_link_register(ptr noundef nonnull @link_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %error_pernet

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_pernet:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_pernet_device(ptr noundef nonnull @pernet_ops) #8
  br label %error_pm

error_pm:                                         ; preds = %error_pernet, %if.end.error_pm_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.error_pm_crit_edge ], [ %call5, %error_pernet ]
  %call9 = tail call i32 @unregister_pm_notifier(ptr noundef nonnull @pm_notifier) #8
  br label %cleanup

cleanup:                                          ; preds = %error_pm, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_pm ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_device_uninit() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_link_unregister(ptr noundef nonnull @link_ops) #8
  tail call void @unregister_pernet_device(ptr noundef nonnull @pernet_ops) #8
  %call = tail call i32 @unregister_pm_notifier(ptr noundef nonnull @pm_notifier) #8
  tail call void @rcu_barrier() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wg_pm_notification(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wg_netns_pre_exit(ptr noundef readnone %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #8
  %.pn96 = load ptr, ptr @device_list, align 4
  %cmp.not98 = icmp eq ptr %.pn96, @device_list
  br i1 %cmp.not98, label %entry.for.end75_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75

for.body:                                         ; preds = %for.inc69.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn99 = phi ptr [ %.pn, %for.inc69.for.body_crit_edge ], [ %.pn96, %entry.for.body_crit_edge ]
  %wg.0100 = getelementptr i8, ptr %.pn99, i32 -2272
  %creating_net = getelementptr i8, ptr %.pn99, i32 -600
  %0 = ptrtoint ptr %creating_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %creating_net, align 8
  %cmp3 = icmp eq ptr %1, %net
  br i1 %cmp3, label %do.body4, label %for.body.for.inc69_crit_edge

for.body.for.inc69_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69

do.body4:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_netns_pre_exit.__UNIQUE_ID_ddebug606, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_netns_pre_exit, %do.end12)) #8
          to label %if.then10 [label %do.end12], !srcloc !81

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %wg.0100 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wg.0100, align 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_netns_pre_exit.__UNIQUE_ID_ddebug606, ptr noundef nonnull @.str.4, ptr noundef %3) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %do.body4
  %4 = ptrtoint ptr %wg.0100 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wg.0100, align 128
  tail call void @netif_carrier_off(ptr noundef %5) #8
  %device_update_lock = getelementptr i8, ptr %.pn99, i32 -184
  tail call void @mutex_lock_nested(ptr noundef %device_update_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %creating_net to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %creating_net, align 8
  tail call void @wg_socket_reinit(ptr noundef %wg.0100, ptr noundef null, ptr noundef null) #8
  %peer_list = getelementptr i8, ptr %.pn99, i32 8
  %7 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn9193 = load ptr, ptr %peer_list, align 4
  %cmp58.not94 = icmp eq ptr %.pn9193, %peer_list
  br i1 %cmp58.not94, label %do.end12.for.end_crit_edge, label %do.end12.for.body61_crit_edge

do.end12.for.body61_crit_edge:                    ; preds = %do.end12
  br label %for.body61

do.end12.for.end_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %do.end12.for.body61_crit_edge
  %.pn9195 = phi ptr [ %.pn91, %for.body61.for.body61_crit_edge ], [ %.pn9193, %do.end12.for.body61_crit_edge ]
  %peer.0 = getelementptr i8, ptr %.pn9195, i32 -1300
  tail call void @wg_socket_clear_peer_endpoint_src(ptr noundef %peer.0) #8
  %8 = ptrtoint ptr %.pn9195 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn91 = load ptr, ptr %.pn9195, align 4
  %cmp58.not = icmp eq ptr %.pn91, %peer_list
  br i1 %cmp58.not, label %for.body61.for.end_crit_edge, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

for.body61.for.end_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body61.for.end_crit_edge, %do.end12.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %device_update_lock) #8
  br label %for.inc69

for.inc69:                                        ; preds = %for.end, %for.body.for.inc69_crit_edge
  %9 = ptrtoint ptr %.pn99 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn99, align 4
  %cmp.not = icmp eq ptr %.pn, @device_list
  br i1 %cmp.not, label %for.inc69.for.end75_crit_edge, label %for.inc69.for.body_crit_edge

for.inc69.for.body_crit_edge:                     ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc69.for.end75_crit_edge:                    ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75

for.end75:                                        ; preds = %for.inc69.for.end75_crit_edge, %entry.for.end75_crit_edge
  tail call void @rtnl_unlock() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_socket_reinit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_socket_clear_peer_endpoint_src(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wg_setup(ptr noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %1 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ip_tunnel_header_ops, ptr %header_ops, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %addr_len, align 1
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 192, ptr %needed_headroom, align 8
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %5 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 32, ptr %needed_tailroom, align 2
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -2, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 144, ptr %flags, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features, align 16
  %or3 = or i64 %11, 1126357080105
  store i64 %or3, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %12 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %hw_features, align 8
  %or4 = or i64 %13, 1126357076009
  store i64 %or4, ptr %hw_features, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 27
  %14 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %hw_enc_features, align 16
  %or5 = or i64 %15, 1126357076009
  store i64 %or5, ptr %hw_enc_features, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1420, ptr %mtu, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %17 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2147483552, ptr %max_mtu, align 4
  %type7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 4
  %18 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @device_type, ptr %type7, align 4
  %or = and i64 %9, -655393
  %and.i = or i64 %or, 524288
  store i64 %and.i, ptr %priv_flags, align 16
  %19 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 2432)
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %add.ptr.i, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wg_newlink(ptr noundef %src_net, ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !82
  %creating_net21 = getelementptr i8, ptr %dev, i32 3976
  %0 = ptrtoint ptr %creating_net21 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %src_net, ptr %creating_net21, align 8
  %lock = getelementptr i8, ptr %dev, i32 4044
  tail call void @__init_rwsem(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @wg_newlink.__key) #8
  %socket_update_lock = getelementptr i8, ptr %dev, i32 4484
  tail call void @__mutex_init(ptr noundef %socket_update_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @wg_newlink.__key.23) #8
  %device_update_lock = getelementptr i8, ptr %dev, i32 4392
  tail call void @__mutex_init(ptr noundef %device_update_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @wg_newlink.__key.25) #8
  %peer_allowedips = getelementptr i8, ptr %dev, i32 4376
  tail call void @wg_allowedips_init(ptr noundef %peer_allowedips) #8
  %cookie_checker = getelementptr i8, ptr %dev, i32 4160
  tail call void @wg_cookie_checker_init(ptr noundef %cookie_checker, ptr noundef %add.ptr.i) #8
  %peer_list = getelementptr i8, ptr %dev, i32 4584
  %1 = ptrtoint ptr %peer_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %peer_list, ptr %peer_list, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 4588
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %peer_list, ptr %prev.i, align 4
  %device_update_gen = getelementptr i8, ptr %dev, i32 4600
  %3 = ptrtoint ptr %device_update_gen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %device_update_gen, align 8
  %call41 = tail call ptr @wg_pubkey_hashtable_alloc() #8
  %peer_hashtable = getelementptr i8, ptr %dev, i32 4368
  %4 = ptrtoint ptr %peer_hashtable to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call41, ptr %peer_hashtable, align 16
  %tobool.not = icmp eq ptr %call41, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end44

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %entry
  %call45 = tail call ptr @wg_index_hashtable_alloc() #8
  %index_hashtable = getelementptr i8, ptr %dev, i32 4372
  %5 = ptrtoint ptr %index_hashtable to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call45, ptr %index_hashtable, align 4
  %tobool47.not = icmp eq ptr %call45, null
  br i1 %tobool47.not, label %if.end44.err_free_peer_hashtable_crit_edge, label %if.end49

if.end44.err_free_peer_hashtable_crit_edge:       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_peer_hashtable

if.end49:                                         ; preds = %if.end44
  %call50 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #11
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end62.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end49
  %call53179 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call53179, i32 %6)
  %cmp54180 = icmp ult i32 %call53179, %6
  br i1 %cmp54180, label %for.body.lr.ph, label %for.cond.preheader.if.end66_crit_edge

for.cond.preheader.if.end66_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %7 = ptrtoint ptr %call50 to i32
  br label %for.body

if.end62.thread:                                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %8 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 64
  br label %err_free_index_hashtable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call53181 = phi i32 [ %call53179, %for.body.lr.ph ], [ %call53, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call53181
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %7
  %12 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %12, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %12, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @wg_newlink.__key.27, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %13 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %syncp, align 4
  %call53 = tail call i32 @cpumask_next(i32 noundef %call53181, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp54 = icmp ult i32 %call53, %14
  br i1 %cmp54, label %for.body.for.body_crit_edge, label %for.body.if.end66_crit_edge

for.body.if.end66_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end66:                                         ; preds = %for.body.if.end66_crit_edge, %for.cond.preheader.if.end66_crit_edge
  %15 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call50, ptr %15, align 64
  %call67 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.29, i32 noundef 36, i32 noundef 0, ptr noundef %dev) #8
  %handshake_receive_wq = getelementptr i8, ptr %dev, i32 4148
  %17 = ptrtoint ptr %handshake_receive_wq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call67, ptr %handshake_receive_wq, align 4
  %tobool69.not = icmp eq ptr %call67, null
  br i1 %tobool69.not, label %if.end66.err_free_tstats_crit_edge, label %if.end71

if.end66.err_free_tstats_crit_edge:               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_tstats

if.end71:                                         ; preds = %if.end66
  %call74 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.29, i32 noundef 6, i32 noundef 0, ptr noundef %dev) #8
  %handshake_send_wq = getelementptr i8, ptr %dev, i32 4152
  %18 = ptrtoint ptr %handshake_send_wq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call74, ptr %handshake_send_wq, align 8
  %tobool76.not = icmp eq ptr %call74, null
  br i1 %tobool76.not, label %if.end71.err_destroy_handshake_receive_crit_edge, label %if.end78

if.end71.err_destroy_handshake_receive_crit_edge: ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_destroy_handshake_receive

if.end78:                                         ; preds = %if.end71
  %call81 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.30, i32 noundef 40, i32 noundef 0, ptr noundef %dev) #8
  %packet_crypt_wq = getelementptr i8, ptr %dev, i32 4144
  %19 = ptrtoint ptr %packet_crypt_wq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call81, ptr %packet_crypt_wq, align 16
  %tobool83.not = icmp eq ptr %call81, null
  br i1 %tobool83.not, label %if.end78.err_destroy_handshake_send_crit_edge, label %if.end85

if.end78.err_destroy_handshake_send_crit_edge:    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_destroy_handshake_send

if.end85:                                         ; preds = %if.end78
  %encrypt_queue = getelementptr i8, ptr %dev, i32 2432
  %call86 = tail call i32 @wg_packet_queue_init(ptr noundef %encrypt_queue, ptr noundef nonnull @wg_packet_encrypt_worker, i32 noundef 1024) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.end85.err_destroy_packet_crypt_crit_edge, label %if.end89

if.end85.err_destroy_packet_crypt_crit_edge:      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_destroy_packet_crypt

if.end89:                                         ; preds = %if.end85
  %decrypt_queue = getelementptr i8, ptr %dev, i32 2944
  %call90 = tail call i32 @wg_packet_queue_init(ptr noundef %decrypt_queue, ptr noundef nonnull @wg_packet_decrypt_worker, i32 noundef 1024) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end89.err_free_encrypt_queue_crit_edge, label %if.end93

if.end89.err_free_encrypt_queue_crit_edge:        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_encrypt_queue

if.end93:                                         ; preds = %if.end89
  %handshake_queue = getelementptr i8, ptr %dev, i32 3456
  %call94 = tail call i32 @wg_packet_queue_init(ptr noundef %handshake_queue, ptr noundef nonnull @wg_packet_handshake_receive_worker, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.end93.err_free_decrypt_queue_crit_edge, label %if.end97

if.end93.err_free_decrypt_queue_crit_edge:        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_decrypt_queue

if.end97:                                         ; preds = %if.end93
  %call98 = tail call i32 @wg_ratelimiter_init() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.end97.err_free_handshake_queue_crit_edge, label %if.end101

if.end97.err_free_handshake_queue_crit_edge:      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_handshake_queue

if.end101:                                        ; preds = %if.end97
  %call102 = tail call i32 @register_netdevice(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %err_uninit_ratelimiter, label %if.end105

if.end105:                                        ; preds = %if.end101
  %device_list = getelementptr i8, ptr %dev, i32 4576
  %20 = load ptr, ptr @device_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_list, ptr noundef nonnull @device_list, ptr noundef %20) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end105.list_add.exit_crit_edge

if.end105.list_add.exit_crit_edge:                ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %device_list, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %device_list, align 4
  %prev3.i.i = getelementptr i8, ptr %dev, i32 4580
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @device_list, ptr %prev3.i.i, align 4
  store volatile ptr %device_list, ptr @device_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end105.list_add.exit_crit_edge
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %24 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @wg_destruct, ptr %priv_destructor, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_newlink.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_newlink, %cleanup)) #8
          to label %if.then113 [label %cleanup], !srcloc !81

if.then113:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_newlink.__UNIQUE_ID_ddebug603, ptr noundef nonnull @.str.33, ptr noundef %dev) #8
  br label %cleanup

err_uninit_ratelimiter:                           ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wg_ratelimiter_uninit() #8
  br label %err_free_handshake_queue

err_free_handshake_queue:                         ; preds = %err_uninit_ratelimiter, %if.end97.err_free_handshake_queue_crit_edge
  %ret.0 = phi i32 [ %call98, %if.end97.err_free_handshake_queue_crit_edge ], [ %call102, %err_uninit_ratelimiter ]
  tail call void @wg_packet_queue_free(ptr noundef %handshake_queue, i1 noundef zeroext false) #8
  br label %err_free_decrypt_queue

err_free_decrypt_queue:                           ; preds = %err_free_handshake_queue, %if.end93.err_free_decrypt_queue_crit_edge
  %ret.1 = phi i32 [ %call94, %if.end93.err_free_decrypt_queue_crit_edge ], [ %ret.0, %err_free_handshake_queue ]
  tail call void @wg_packet_queue_free(ptr noundef %decrypt_queue, i1 noundef zeroext false) #8
  br label %err_free_encrypt_queue

err_free_encrypt_queue:                           ; preds = %err_free_decrypt_queue, %if.end89.err_free_encrypt_queue_crit_edge
  %ret.2 = phi i32 [ %call90, %if.end89.err_free_encrypt_queue_crit_edge ], [ %ret.1, %err_free_decrypt_queue ]
  tail call void @wg_packet_queue_free(ptr noundef %encrypt_queue, i1 noundef zeroext false) #8
  br label %err_destroy_packet_crypt

err_destroy_packet_crypt:                         ; preds = %err_free_encrypt_queue, %if.end85.err_destroy_packet_crypt_crit_edge
  %ret.3 = phi i32 [ %call86, %if.end85.err_destroy_packet_crypt_crit_edge ], [ %ret.2, %err_free_encrypt_queue ]
  %25 = ptrtoint ptr %packet_crypt_wq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %packet_crypt_wq, align 16
  tail call void @destroy_workqueue(ptr noundef %26) #8
  br label %err_destroy_handshake_send

err_destroy_handshake_send:                       ; preds = %err_destroy_packet_crypt, %if.end78.err_destroy_handshake_send_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_destroy_packet_crypt ], [ -12, %if.end78.err_destroy_handshake_send_crit_edge ]
  %27 = ptrtoint ptr %handshake_send_wq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handshake_send_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %28) #8
  br label %err_destroy_handshake_receive

err_destroy_handshake_receive:                    ; preds = %err_destroy_handshake_send, %if.end71.err_destroy_handshake_receive_crit_edge
  %ret.5 = phi i32 [ %ret.4, %err_destroy_handshake_send ], [ -12, %if.end71.err_destroy_handshake_receive_crit_edge ]
  %29 = ptrtoint ptr %handshake_receive_wq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handshake_receive_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %30) #8
  br label %err_free_tstats

err_free_tstats:                                  ; preds = %err_destroy_handshake_receive, %if.end66.err_free_tstats_crit_edge
  %ret.6 = phi i32 [ %ret.5, %err_destroy_handshake_receive ], [ -12, %if.end66.err_free_tstats_crit_edge ]
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %15, align 64
  tail call void @free_percpu(ptr noundef %32) #8
  br label %err_free_index_hashtable

err_free_index_hashtable:                         ; preds = %err_free_tstats, %if.end62.thread
  %ret.7 = phi i32 [ %ret.6, %err_free_tstats ], [ -12, %if.end62.thread ]
  %33 = ptrtoint ptr %index_hashtable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %index_hashtable, align 4
  tail call void @kvfree(ptr noundef %34) #8
  br label %err_free_peer_hashtable

err_free_peer_hashtable:                          ; preds = %err_free_index_hashtable, %if.end44.err_free_peer_hashtable_crit_edge
  %ret.8 = phi i32 [ %ret.7, %err_free_index_hashtable ], [ -12, %if.end44.err_free_peer_hashtable_crit_edge ]
  %35 = ptrtoint ptr %peer_hashtable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %peer_hashtable, align 16
  tail call void @kvfree(ptr noundef %36) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_peer_hashtable, %if.then113, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.8, %err_free_peer_hashtable ], [ -12, %entry.cleanup_crit_edge ], [ %call102, %if.then113 ], [ %call102, %list_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wg_open(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i, label %entry.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

entry.__in_dev_get_rtnl.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 249, ptr noundef nonnull @.str.6) #8
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %entry.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %0 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip_ptr.i, align 32
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 80
  %2 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i37 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i37, label %__in_dev_get_rtnl.exit.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

__in_dev_get_rtnl.exit.__in6_dev_get.exit_crit_edge: ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %__in_dev_get_rtnl.exit
  %call2.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i38 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__in6_dev_get.exit

land.lhs.true.i39:                                ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i39.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i39.__in6_dev_get.exit_crit_edge:   ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i39
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i40

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__in6_dev_get.exit

if.then.i40:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 313, ptr noundef nonnull @.str.8) #8
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i40, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i39.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %__in_dev_get_rtnl.exit.__in6_dev_get.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %__in6_dev_get.exit.if.end_crit_edge, label %if.then

__in6_dev_get.exit.if.end_crit_edge:              ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %state.i = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 21, i32 2
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #8
  %arrayidx.i = getelementptr %struct.in_device, ptr %1, i32 0, i32 21, i32 1, i32 5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx.i, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 35, i32 6
  %7 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %8, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %__in6_dev_get.exit.if.end_crit_edge
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %addr_gen_mode = getelementptr inbounds %struct.inet6_dev, ptr %3, i32 0, i32 32, i32 49
  %10 = ptrtoint ptr %addr_gen_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %addr_gen_mode, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %device_update_lock = getelementptr i8, ptr %dev, i32 4392
  tail call void @mutex_lock_nested(ptr noundef %device_update_lock, i32 noundef 0) #8
  %incoming_port = getelementptr i8, ptr %dev, i32 4608
  %11 = ptrtoint ptr %incoming_port to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %incoming_port, align 128
  %call7 = tail call i32 @wg_socket_init(ptr noundef %add.ptr.i, i16 noundef zeroext %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.out_crit_edge, label %if.end9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %if.end6
  %peer_list = getelementptr i8, ptr %dev, i32 4584
  %13 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn41 = load ptr, ptr %peer_list, align 4
  %cmp12.not43 = icmp eq ptr %.pn41, %peer_list
  br i1 %cmp12.not43, label %if.end9.out_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %.pn44 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn41, %if.end9.for.body_crit_edge ]
  %peer.045 = getelementptr i8, ptr %.pn44, i32 -1300
  tail call void @wg_packet_send_staged_packets(ptr noundef %peer.045) #8
  %persistent_keepalive_interval = getelementptr i8, ptr %.pn44, i32 -32
  %14 = ptrtoint ptr %persistent_keepalive_interval to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %persistent_keepalive_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool13.not = icmp eq i16 %15, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.then14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wg_packet_send_keepalive(ptr noundef %peer.045) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn44, align 4
  %cmp12.not = icmp eq ptr %.pn, %peer_list
  br i1 %cmp12.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end9.out_crit_edge, %if.end6.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %device_update_lock) #8
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wg_stop(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device_update_lock = getelementptr i8, ptr %dev, i32 4392
  tail call void @mutex_lock_nested(ptr noundef %device_update_lock, i32 noundef 0) #8
  %peer_list = getelementptr i8, ptr %dev, i32 4584
  %0 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn25 = load ptr, ptr %peer_list, align 4
  %cmp.not26 = icmp eq ptr %.pn25, %peer_list
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn27 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn25, %entry.for.body_crit_edge ]
  %peer.0 = getelementptr i8, ptr %.pn27, i32 -1300
  tail call void @wg_packet_purge_staged_packets(ptr noundef %peer.0) #8
  tail call void @wg_timers_stop(ptr noundef %peer.0) #8
  %handshake = getelementptr i8, ptr %.pn27, i32 -1028
  tail call void @wg_noise_handshake_clear(ptr noundef %handshake) #8
  %keypairs = getelementptr i8, ptr %.pn27, i32 -1184
  tail call void @wg_noise_keypairs_clear(ptr noundef %keypairs) #8
  %last_sent_handshake = getelementptr i8, ptr %.pn27, i32 -652
  %call.i.i1.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  %sub.i = add i64 %call.i.i1.i, -6000000000
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_sent_handshake, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %last_sent_handshake, i64 noundef %sub.i) #8
  %1 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp.not = icmp eq ptr %.pn, %peer_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %device_update_lock) #8
  %queue.i.i.i = getelementptr i8, ptr %dev, i32 3720
  %consumer_lock.i = getelementptr i8, ptr %dev, i32 3592
  tail call void @_raw_spin_lock(ptr noundef %consumer_lock.i) #8
  %size.i.i.i = getelementptr i8, ptr %dev, i32 3712
  %2 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i28 = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i28, label %for.end.ptr_ring_consume.exit.thread_crit_edge, label %__ptr_ring_peek.exit.i.i.lr.ph, !prof !83

for.end.ptr_ring_consume.exit.thread_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptr_ring_consume.exit.thread

__ptr_ring_peek.exit.i.i.lr.ph:                   ; preds = %for.end
  %consumer_head.i.i.i = getelementptr i8, ptr %dev, i32 3584
  %consumer_tail.i.i.i = getelementptr i8, ptr %dev, i32 3588
  %batch.i.i.i = getelementptr i8, ptr %dev, i32 3716
  br label %__ptr_ring_peek.exit.i.i

__ptr_ring_peek.exit.i.i:                         ; preds = %ptr_ring_consume.exit.__ptr_ring_peek.exit.i.i_crit_edge, %__ptr_ring_peek.exit.i.i.lr.ph
  %4 = phi i32 [ %3, %__ptr_ring_peek.exit.i.i.lr.ph ], [ %27, %ptr_ring_consume.exit.__ptr_ring_peek.exit.i.i_crit_edge ]
  %5 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue.i.i.i, align 8
  %7 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %consumer_head.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr ptr, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %__ptr_ring_peek.exit.i.i.ptr_ring_consume.exit.thread_crit_edge, label %if.then.i.i

__ptr_ring_peek.exit.i.i.ptr_ring_consume.exit.thread_crit_edge: ; preds = %__ptr_ring_peek.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptr_ring_consume.exit.thread

if.then.i.i:                                      ; preds = %__ptr_ring_peek.exit.i.i
  %inc.i.i.i = add i32 %8, 1
  %11 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %consumer_tail.i.i.i, align 4
  %sub.i.i.i = sub i32 %inc.i.i.i, %12
  %13 = ptrtoint ptr %batch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %batch.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %14)
  %cmp.not.i.i.i = icmp slt i32 %sub.i.i.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %4)
  %cmp2.not.i.i.i = icmp slt i32 %inc.i.i.i, %4
  %or.cond.i.i = select i1 %cmp.not.i.i.i, i1 %cmp2.not.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i, !prof !84

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp5.not46.i.i.i = icmp slt i32 %8, %12
  br i1 %cmp5.not46.i.i.i, label %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge, !prof !83

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %head.047.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %8, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue.i.i.i, align 8
  %dec.i.i.i = add i32 %head.047.i.i.i, -1
  %arrayidx.i5.i.i = getelementptr ptr, ptr %16, i32 %head.047.i.i.i
  %17 = ptrtoint ptr %arrayidx.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.i5.i.i, align 4
  %18 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %consumer_tail.i.i.i, align 4
  %cmp5.not.i.i.i = icmp slt i32 %dec.i.i.i, %19
  br i1 %cmp5.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge, !prof !83

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge
  %20 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i.i.i, ptr %consumer_tail.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %21 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %22)
  %cmp14.not.i.i.i = icmp slt i32 %inc.i.i.i, %22
  br i1 %cmp14.not.i.i.i, label %if.end.i.i.i.ptr_ring_consume.exit_crit_edge, label %if.then21.i.i.i, !prof !85

if.end.i.i.i.ptr_ring_consume.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptr_ring_consume.exit

if.then21.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %consumer_tail.i.i.i, align 4
  br label %ptr_ring_consume.exit

ptr_ring_consume.exit.thread:                     ; preds = %ptr_ring_consume.exit.ptr_ring_consume.exit.thread_crit_edge, %__ptr_ring_peek.exit.i.i.ptr_ring_consume.exit.thread_crit_edge, %for.end.ptr_ring_consume.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %consumer_lock.i) #8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %handshake_queue_len = getelementptr i8, ptr %dev, i32 4592
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %handshake_queue_len, i32 noundef 4) #8
  %24 = ptrtoint ptr %handshake_queue_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %handshake_queue_len, align 4
  tail call void @wg_socket_reinit(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null) #8
  ret i32 0

ptr_ring_consume.exit:                            ; preds = %if.then21.i.i.i, %if.end.i.i.i.ptr_ring_consume.exit_crit_edge
  %consumer_head.0.i.i.i = phi i32 [ 0, %if.then21.i.i.i ], [ %inc.i.i.i, %if.end.i.i.i.ptr_ring_consume.exit_crit_edge ]
  %25 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %consumer_head.0.i.i.i, ptr %consumer_head.i.i.i, align 128
  tail call void @_raw_spin_unlock(ptr noundef %consumer_lock.i) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #8
  tail call void @_raw_spin_lock(ptr noundef %consumer_lock.i) #8
  %26 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %ptr_ring_consume.exit.ptr_ring_consume.exit.thread_crit_edge, label %ptr_ring_consume.exit.__ptr_ring_peek.exit.i.i_crit_edge, !prof !83

ptr_ring_consume.exit.__ptr_ring_peek.exit.i.i_crit_edge: ; preds = %ptr_ring_consume.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ptr_ring_peek.exit.i.i

ptr_ring_consume.exit.ptr_ring_consume.exit.thread_crit_edge: ; preds = %ptr_ring_consume.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptr_ring_consume.exit.thread
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wg_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  %packets = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %packets) #8
  %0 = call ptr @memset(ptr %packets, i32 255, i32 56)
  %call.i = tail call zeroext i16 @ip_tunnel_parse_protocol(ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %wg_check_packet_protocol.exit, !prof !86

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

wg_check_packet_protocol.exit:                    ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %call.i)
  %cmp.i = icmp eq i16 %2, %call.i
  br i1 %cmp.i, label %if.end17, label %wg_check_packet_protocol.exit.if.then_crit_edge, !prof !85

wg_check_packet_protocol.exit.if.then_crit_edge:  ; preds = %wg_check_packet_protocol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %wg_check_packet_protocol.exit.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_xmit.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_xmit, %err)) #8
          to label %land.lhs.true [label %err], !srcloc !81

land.lhs.true:                                    ; preds = %if.then
  %call14 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.err_crit_edge, label %if.then16

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_xmit.descriptor, ptr noundef nonnull @.str.11, ptr noundef %dev) #8
  br label %err

if.end17:                                         ; preds = %wg_check_packet_protocol.exit
  %peer_allowedips = getelementptr i8, ptr %dev, i32 4376
  %call18 = tail call ptr @wg_allowedips_lookup_dst(ptr noundef %peer_allowedips, ptr noundef %skb) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then28, label %do.end90, !prof !83

if.then28:                                        ; preds = %if.end17
  %3 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %protocol.i, align 8
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %if.then28.err_icmp_crit_edge [
    i16 2048, label %do.body31
    i16 -31011, label %do.body60
  ]

if.then28.err_icmp_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_icmp

do.body31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_xmit.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_xmit, %err_icmp)) #8
          to label %land.lhs.true45 [label %err_icmp], !srcloc !81

land.lhs.true45:                                  ; preds = %do.body31
  %call46 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true45.err_icmp_crit_edge, label %if.then48

land.lhs.true45.err_icmp_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_icmp

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_xmit.descriptor.12, ptr noundef nonnull @.str.14, ptr noundef %dev, ptr noundef %daddr) #8
  br label %err_icmp

do.body60:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_xmit.descriptor.15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_xmit, %err_icmp)) #8
          to label %land.lhs.true74 [label %err_icmp], !srcloc !81

land.lhs.true74:                                  ; preds = %do.body60
  %call75 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true74.err_icmp_crit_edge, label %if.then77

land.lhs.true74.err_icmp_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_icmp

if.then77:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i258 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i258 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i258, align 8
  %network_header.i.i259 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i259 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i259, align 4
  %conv.i.i260 = zext i16 %13 to i32
  %add.ptr.i.i261 = getelementptr i8, ptr %11, i32 %conv.i.i260
  %daddr81 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i261, i32 0, i32 6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_xmit.descriptor.15, ptr noundef nonnull @.str.17, ptr noundef %dev, ptr noundef %daddr81) #8
  br label %err_icmp

do.end90:                                         ; preds = %if.end17
  %endpoint = getelementptr inbounds %struct.wg_peer, ptr %call18, i32 0, i32 7
  %14 = ptrtoint ptr %endpoint to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load volatile i16, ptr %endpoint, align 4
  %16 = and i16 %15, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %16)
  %.not = icmp eq i16 %16, 2
  br i1 %.not, label %if.end128, label %if.then104, !prof !85

if.then104:                                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_xmit.descriptor.18, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_xmit, %err_peer)) #8
          to label %land.lhs.true119 [label %err_peer], !srcloc !81

land.lhs.true119:                                 ; preds = %if.then104
  %call120 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %land.lhs.true119.err_peer_crit_edge, label %if.then122

land.lhs.true119.err_peer_crit_edge:              ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_peer

if.then122:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #10
  %internal_id = getelementptr inbounds %struct.wg_peer, ptr %call18, i32 0, i32 34
  %17 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %internal_id, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_xmit.descriptor.18, ptr noundef nonnull @.str.20, ptr noundef %dev, i64 noundef %18) #8
  br label %err_peer

if.end128:                                        ; preds = %do.end90
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i262 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i262, label %if.end128.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end128.skb_dst.exit_crit_edge:                 ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end128
  %call.i263 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool1.not.i = icmp eq i32 %call.i263, 0
  br i1 %tobool1.not.i, label %land.rhs.i264, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exitthread-pre-split

land.rhs.i264:                                    ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i264.skb_dst.exitthread-pre-split_crit_edge, !prof !83

land.rhs.i264.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i264
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i264
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i264.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %19, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %if.end128.skb_dst.exit_crit_edge
  %23 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %21, %if.end128.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %tobool130.not = icmp ult i32 %23, 2
  br i1 %tobool130.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %skb_dst.exit
  %and.i265 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i265)
  %tobool.not.i266 = icmp eq i32 %and.i265, 0
  br i1 %tobool.not.i266, label %cond.true.skb_dst.exit275_crit_edge, label %land.lhs.true.i269

cond.true.skb_dst.exit275_crit_edge:              ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit275

land.lhs.true.i269:                               ; preds = %cond.true
  %call.i267 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %tobool1.not.i268 = icmp eq i32 %call.i267, 0
  br i1 %tobool1.not.i268, label %land.rhs.i272, label %land.lhs.true.i269.skb_dst.exit275_crit_edge

land.lhs.true.i269.skb_dst.exit275_crit_edge:     ; preds = %land.lhs.true.i269
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit275

land.rhs.i272:                                    ; preds = %land.lhs.true.i269
  %call2.i270 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i270)
  %tobool3.not.i271 = icmp eq i32 %call2.i270, 0
  br i1 %tobool3.not.i271, label %do.end.i273, label %land.rhs.i272.skb_dst.exit275_crit_edge, !prof !83

land.rhs.i272.skb_dst.exit275_crit_edge:          ; preds = %land.rhs.i272
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit275

do.end.i273:                                      ; preds = %land.rhs.i272
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit275

skb_dst.exit275:                                  ; preds = %do.end.i273, %land.rhs.i272.skb_dst.exit275_crit_edge, %land.lhs.true.i269.skb_dst.exit275_crit_edge, %cond.true.skb_dst.exit275_crit_edge
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 8
  %and25.i274 = and i32 %25, -2
  %26 = inttoptr i32 %and25.i274 to ptr
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mtu.i, align 4
  %call.i276 = tail call i32 %30(ptr noundef %26) #8
  br label %cond.end

cond.false:                                       ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mtu133 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %31 = ptrtoint ptr %mtu133 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mtu133, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %skb_dst.exit275
  %cond = phi i32 [ %call.i276, %skb_dst.exit275 ], [ %32, %cond.false ]
  %33 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %packets, ptr %packets, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %packets, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %packets, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %packets, i32 0, i32 1
  %35 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %qlen.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %36 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.i.not = icmp eq i16 %39, 0
  br i1 %tobool.i.not, label %if.then135, label %if.else136

if.then135:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %skb, align 8
  br label %if.end142

if.else136:                                       ; preds = %cond.end
  %call.i277 = call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef 0, i1 noundef zeroext true) #8
  %cmp.i278 = icmp ugt ptr %call.i277, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #10
  call void @consume_skb(ptr noundef %skb) #8
  br label %if.end142

cleanup:                                          ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %call.i277 to i32
  br label %err_peer

if.end142:                                        ; preds = %cleanup.thread, %if.then135
  %skb.addr.1 = phi ptr [ %skb, %if.then135 ], [ %call.i277, %cleanup.thread ]
  %tobool143.not = icmp eq ptr %skb.addr.1, null
  br i1 %tobool143.not, label %if.end142.for.end_crit_edge, label %if.end142.for.body_crit_edge

if.end142.for.body_crit_edge:                     ; preds = %if.end142
  br label %for.body

if.end142.for.end_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end142.for.body_crit_edge
  %next.0298.sink = phi ptr [ %43, %for.inc.for.body_crit_edge ], [ %skb.addr.1, %if.end142.for.body_crit_edge ]
  %42 = ptrtoint ptr %next.0298.sink to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %next.0298.sink, align 8
  store ptr null, ptr %next.0298.sink, align 8
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %next.0298.sink, i32 0, i32 21
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #8
  %44 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i.not.i = icmp eq i32 %45, 1
  br i1 %cmp.i.not.i, label %for.body.if.end161_crit_edge, label %if.then6.i

for.body.if.end161_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then6.i:                                       ; preds = %for.body
  %call7.i = call ptr @skb_clone(ptr noundef nonnull %next.0298.sink, i32 noundef 2592) #8
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit, label %if.then11.i, !prof !83

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @consume_skb(ptr noundef nonnull %next.0298.sink) #8
  br label %if.end161

skb_share_check.exit:                             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree_skb_reason(ptr noundef nonnull %next.0298.sink, i32 noundef 0) #8
  br label %for.inc

if.end161:                                        ; preds = %if.then11.i, %for.body.if.end161_crit_edge
  %skb.addr.0.i.ph = phi ptr [ %call7.i, %if.then11.i ], [ %next.0298.sink, %for.body.if.end161_crit_edge ]
  %46 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.ph, i32 0, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i279 = icmp eq i32 %48, 0
  br i1 %tobool.not.i279, label %if.end161.skb_dst_drop.exit_crit_edge, label %if.then.i

if.end161.skb_dst_drop.exit_crit_edge:            ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %if.end161
  %and.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i = and i32 %48, -2
  %49 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %49) #8
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %46, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end161.skb_dst_drop.exit_crit_edge
  %mtu163 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.ph, i32 0, i32 3, i32 16
  %51 = ptrtoint ptr %mtu163 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond, ptr %mtu163, align 8
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i, align 4
  %54 = ptrtoint ptr %skb.addr.0.i.ph to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %packets, ptr %skb.addr.0.i.ph, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %skb.addr.0.i.ph, i32 0, i32 1
  %55 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb.addr.0.i.ph, ptr %prev.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %skb.addr.0.i.ph, ptr %53, align 4
  %57 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %skb_dst_drop.exit, %skb_share_check.exit
  %tobool164.not = icmp eq ptr %43, null
  br i1 %tobool164.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end142.for.end_crit_edge
  %staged_packet_queue = getelementptr inbounds %struct.wg_peer, ptr %call18, i32 0, i32 3
  %lock = getelementptr inbounds %struct.wg_peer, ptr %call18, i32 0, i32 3, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %qlen.i280 = getelementptr inbounds %struct.wg_peer, ptr %call18, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %qlen.i280 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qlen.i280, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %60)
  %cmp172300 = icmp ugt i32 %60, 128
  br i1 %cmp172300, label %while.body.lr.ph, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  br label %while.body

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %while.body.lr.ph
  %61 = phi i32 [ %60, %while.body.lr.ph ], [ %74, %__skb_dequeue.exit.while.body_crit_edge ]
  %62 = ptrtoint ptr %staged_packet_queue to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %staged_packet_queue, align 4
  %cmp.i.i = icmp eq ptr %63, %staged_packet_queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %63
  %tobool.not.i281 = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i281, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i282

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_dequeue.exit

if.then.i282:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %61, -1
  %64 = ptrtoint ptr %qlen.i280 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %sub.i.i, ptr %qlen.i280, align 4
  %65 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %spec.store.select.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %68, ptr %prev17.i.i, align 4
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %66, ptr %68, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i282, %while.body.__skb_dequeue.exit_crit_edge
  call void @consume_skb(ptr noundef %spec.store.select.i.i) #8
  %71 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %72, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %73 = ptrtoint ptr %qlen.i280 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qlen.i280, align 4
  %cmp172 = icmp ugt i32 %74, 128
  br i1 %cmp172, label %__skb_dequeue.exit.while.body_crit_edge, label %__skb_dequeue.exit.while.end_crit_edge

__skb_dequeue.exit.while.end_crit_edge:           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %__skb_dequeue.exit.while.end_crit_edge, %for.end.while.end_crit_edge
  %75 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %packets, align 4
  %cmp.i.not.i283 = icmp eq ptr %76, %packets
  br i1 %cmp.i.not.i283, label %while.end.skb_queue_splice_tail.exit_crit_edge, label %if.then.i286

while.end.skb_queue_splice_tail.exit_crit_edge:   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_queue_splice_tail.exit

if.then.i286:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i284 = getelementptr inbounds %struct.wg_peer, ptr %call18, i32 0, i32 3, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i284 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i284, align 4
  %79 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.83, ptr %76, i32 0, i32 1
  %81 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %78, ptr %prev5.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %76, ptr %78, align 8
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %staged_packet_queue, ptr %80, align 8
  store volatile ptr %80, ptr %prev.i284, align 4
  %84 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %qlen.i, align 4
  %86 = ptrtoint ptr %qlen.i280 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qlen.i280, align 4
  %add.i = add i32 %87, %85
  store i32 %add.i, ptr %qlen.i280, align 4
  br label %skb_queue_splice_tail.exit

skb_queue_splice_tail.exit:                       ; preds = %if.then.i286, %while.end.skb_queue_splice_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call void @wg_packet_send_staged_packets(ptr noundef nonnull %call18) #8
  call void @wg_peer_put(ptr noundef nonnull %call18) #8
  br label %cleanup194

err_peer:                                         ; preds = %cleanup, %if.then122, %land.lhs.true119.err_peer_crit_edge, %if.then104
  %ret.1 = phi i32 [ -89, %if.then122 ], [ -89, %land.lhs.true119.err_peer_crit_edge ], [ %41, %cleanup ], [ -89, %if.then104 ]
  call void @wg_peer_put(ptr noundef nonnull %call18) #8
  br label %err_icmp

err_icmp:                                         ; preds = %err_peer, %if.then77, %land.lhs.true74.err_icmp_crit_edge, %do.body60, %if.then48, %land.lhs.true45.err_icmp_crit_edge, %do.body31, %if.then28.err_icmp_crit_edge
  %ret.2 = phi i32 [ -126, %if.then48 ], [ -126, %land.lhs.true45.err_icmp_crit_edge ], [ -126, %if.then77 ], [ -126, %land.lhs.true74.err_icmp_crit_edge ], [ %ret.1, %err_peer ], [ -126, %if.then28.err_icmp_crit_edge ], [ -126, %do.body31 ], [ -126, %do.body60 ]
  %88 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %protocol.i, align 8
  %90 = zext i16 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %89, label %err_icmp.err_crit_edge [
    i16 2048, label %if.then183
    i16 -31011, label %if.then189
  ]

err_icmp.err_crit_edge:                           ; preds = %err_icmp
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then183:                                       ; preds = %err_icmp
  call void @__sanitizer_cov_trace_pc() #10
  call void @icmp_ndo_send(ptr noundef %skb, i32 noundef 3, i32 noundef 1, i32 noundef 0) #8
  br label %err

if.then189:                                       ; preds = %err_icmp
  call void @__sanitizer_cov_trace_pc() #10
  call void @icmpv6_ndo_send(ptr noundef %skb, i8 noundef zeroext 1, i8 noundef zeroext 3, i32 noundef 0) #8
  br label %err

err:                                              ; preds = %if.then189, %if.then183, %err_icmp.err_crit_edge, %if.then16, %land.lhs.true.err_crit_edge, %if.then
  %ret.3 = phi i32 [ -93, %if.then16 ], [ -93, %land.lhs.true.err_crit_edge ], [ %ret.2, %if.then183 ], [ %ret.2, %if.then189 ], [ %ret.2, %err_icmp.err_crit_edge ], [ -93, %if.then ]
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %91 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_errors, align 4
  %inc193 = add i32 %92, 1
  store i32 %inc193, ptr %tx_errors, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup194

cleanup194:                                       ; preds = %err, %skb_queue_splice_tail.exit
  %retval.0 = phi i32 [ %ret.3, %err ], [ 0, %skb_queue_splice_tail.exit ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %packets) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_socket_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_staged_packets(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_keepalive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_purge_staged_packets(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_handshake_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_keypairs_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_allowedips_lookup_dst(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_ndo_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_ndo_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ip_tunnel_parse_protocol(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_allowedips_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_cookie_checker_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_pubkey_hashtable_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_index_hashtable_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_packet_queue_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_encrypt_worker(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_decrypt_worker(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_handshake_receive_worker(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_ratelimiter_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wg_destruct(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @rtnl_lock() #8
  %device_list = getelementptr i8, ptr %dev, i32 4576
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr i8, ptr %dev, i32 4580
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %device_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %device_list, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 4580
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @rtnl_unlock() #8
  %device_update_lock = getelementptr i8, ptr %dev, i32 4392
  tail call void @mutex_lock_nested(ptr noundef %device_update_lock, i32 noundef 0) #8
  %creating_net = getelementptr i8, ptr %dev, i32 3976
  %8 = ptrtoint ptr %creating_net to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %creating_net, align 8
  %incoming_port = getelementptr i8, ptr %dev, i32 4608
  %9 = ptrtoint ptr %incoming_port to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %incoming_port, align 128
  tail call void @wg_socket_reinit(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null) #8
  tail call void @wg_peer_remove_all(ptr noundef %add.ptr.i) #8
  %handshake_receive_wq = getelementptr i8, ptr %dev, i32 4148
  %10 = ptrtoint ptr %handshake_receive_wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handshake_receive_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %11) #8
  %handshake_send_wq = getelementptr i8, ptr %dev, i32 4152
  %12 = ptrtoint ptr %handshake_send_wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handshake_send_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %13) #8
  %packet_crypt_wq = getelementptr i8, ptr %dev, i32 4144
  %14 = ptrtoint ptr %packet_crypt_wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %packet_crypt_wq, align 16
  tail call void @destroy_workqueue(ptr noundef %15) #8
  %handshake_queue = getelementptr i8, ptr %dev, i32 3456
  tail call void @wg_packet_queue_free(ptr noundef %handshake_queue, i1 noundef zeroext true) #8
  %decrypt_queue = getelementptr i8, ptr %dev, i32 2944
  tail call void @wg_packet_queue_free(ptr noundef %decrypt_queue, i1 noundef zeroext false) #8
  %encrypt_queue = getelementptr i8, ptr %dev, i32 2432
  tail call void @wg_packet_queue_free(ptr noundef %encrypt_queue, i1 noundef zeroext false) #8
  tail call void @rcu_barrier() #8
  tail call void @wg_ratelimiter_uninit() #8
  %static_identity = getelementptr i8, ptr %dev, i32 3980
  %16 = call ptr @memset(ptr %static_identity, i32 0, i32 164)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %static_identity) #8, !srcloc !87
  %17 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 64
  tail call void @free_percpu(ptr noundef %19) #8
  %index_hashtable = getelementptr i8, ptr %dev, i32 4372
  %20 = ptrtoint ptr %index_hashtable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %index_hashtable, align 4
  tail call void @kvfree(ptr noundef %21) #8
  %peer_hashtable = getelementptr i8, ptr %dev, i32 4368
  %22 = ptrtoint ptr %peer_hashtable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %peer_hashtable, align 16
  tail call void @kvfree(ptr noundef %23) #8
  tail call void @mutex_unlock(ptr noundef %device_update_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_destruct.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_destruct, %do.end41)) #8
          to label %if.then38 [label %do.end41], !srcloc !81

if.then38:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_destruct.__UNIQUE_ID_ddebug593, ptr noundef nonnull @.str.36, ptr noundef %dev) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %list_del.exit
  tail call void @free_netdev(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_ratelimiter_uninit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_queue_free(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_remove_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @pm_notifier, !1, !"pm_notifier", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/device.c", i32 94, i32 30}
!2 = !{ptr @pernet_ops, !3, !"pernet_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireguard/device.c", i32 419, i32 33}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireguard/device.c", i32 406, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @wg_netns_pre_exit.__UNIQUE_ID_ddebug606, !5, !"__UNIQUE_ID_ddebug606", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @device_list, !12, !"device_list", i1 false, i1 false}
!12 = !{!"../drivers/net/wireguard/device.c", i32 27, i32 8}
!13 = !{ptr @link_ops, !14, !"link_ops", i1 false, i1 false}
!14 = !{!"../drivers/net/wireguard/device.c", i32 391, i32 29}
!15 = !{ptr @netdev_ops, !16, !"netdev_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/wireguard/device.c", i32 218, i32 36}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireguard/device.c", i32 131, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wg_xmit.descriptor, !26, !"descriptor", i1 false, i1 false}
!29 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireguard/device.c", i32 139, i32 4}
!32 = !{ptr @wg_xmit.descriptor.12, !31, !"descriptor", i1 false, i1 false}
!33 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireguard/device.c", i32 142, i32 4}
!36 = !{ptr @wg_xmit.descriptor.15, !35, !"descriptor", i1 false, i1 false}
!37 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireguard/device.c", i32 150, i32 3}
!40 = !{ptr @wg_xmit.descriptor.18, !39, !"descriptor", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!44 = !{ptr @device_type, !45, !"device_type", i1 false, i1 false}
!45 = !{!"../drivers/net/wireguard/device.c", i32 256, i32 33}
!46 = !{ptr @wg_newlink.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/net/wireguard/device.c", i32 300, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @wg_newlink.__key.23, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/wireguard/device.c", i32 301, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wg_newlink.__key.25, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/wireguard/device.c", i32 302, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @wg_newlink.__key.27, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/wireguard/device.c", i32 316, i32 16}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireguard/device.c", i32 320, i32 45}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireguard/device.c", i32 330, i32 40}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireguard/device.c", i32 365, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @wg_newlink.__UNIQUE_ID_ddebug603, !63, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!66 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireguard/device.c", i32 252, i32 2}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @wg_destruct.__UNIQUE_ID_ddebug593, !68, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!71 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2148757260, i64 2148757265, i64 2148757278, i64 2148757322, i64 2148757356, i64 2148757377}
!82 = !{i64 2158282048}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{!"branch_weights", i32 4000000, i32 4001}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{!"branch_weights", i32 1073205, i32 2146410443}
!87 = !{i64 2149246323}
