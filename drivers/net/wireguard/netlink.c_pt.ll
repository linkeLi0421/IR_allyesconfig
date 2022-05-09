; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/netlink.c_pt.bc'
source_filename = "../drivers/net/wireguard/netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.anon = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%union.anon.157 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.123 }
%union.anon.123 = type { [6 x i32], [24 x i8] }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.__kernel_timespec = type { i64, i64 }
%struct.wg_device = type { ptr, [124 x i8], %struct.crypt_queue, %struct.crypt_queue, %struct.crypt_queue, ptr, ptr, ptr, %struct.noise_static_identity, ptr, ptr, ptr, %struct.cookie_checker, ptr, ptr, %struct.allowedips, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16, [126 x i8] }
%struct.crypt_queue = type { %struct.ptr_ring, ptr, i32, [120 x i8] }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.noise_static_identity = type { [32 x i8], [32 x i8], %struct.rw_semaphore, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cookie_checker = type { [32 x i8], [32 x i8], [32 x i8], i64, %struct.rw_semaphore, ptr }
%struct.allowedips = type { ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.134, %union.anon.135, [48 x i8], %union.anon.136, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.138, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.140, i32, i32, i32, i16, i16, %union.anon.142, i32, %union.anon.143, %union.anon.144, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.140 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.133 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wg_peer = type { ptr, %struct.prev_queue, %struct.prev_queue, %struct.sk_buff_head, i32, i8, %struct.noise_keypairs, %struct.endpoint, %struct.dst_cache, %struct.rwlock_t, %struct.noise_handshake, %struct.atomic64_t, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cookie, %struct.hlist_node, i64, i64, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i16, i8, i8, %struct.timespec64, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.napi_struct, i64 }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.155, %struct.atomic_t }
%struct.anon.155 = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.noise_keypairs = type { ptr, ptr, ptr, %struct.spinlock }
%struct.endpoint = type { %union.anon.156, %union.anon.157 }
%union.anon.156 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.dst_cache = type { ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.noise_handshake = type { %struct.index_hashtable_entry, i32, i64, ptr, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, %struct.rw_semaphore }
%struct.index_hashtable_entry = type { ptr, %struct.hlist_node, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.cookie = type { i64, i8, [16 x i8], i8, [16 x i8], [32 x i8], [32 x i8], %struct.rw_semaphore }
%struct.timespec64 = type { i64, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.allowedips_node = type { ptr, [2 x ptr], i8, i8, i8, i8, [16 x i8], i32, %union.anon.159, [4 x i8] }
%union.anon.159 = type { %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
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
%struct.nlattr = type { i16, i16 }
%struct.sock_common = type { %union.anon.107, %union.anon.109, %union.anon.110, i16, i8, i8, i32, %union.anon.112, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon.107 = type { i64 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.112 = type { %struct.hlist_node }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"wireguard\00\00\00\00\00\00\00", i32 1, i32 8, i32 0, i8 -128, i8 2, i8 0, i8 0, ptr @device_policy, ptr null, ptr null, ptr @genl_ops, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@genl_ops = internal constant { [2 x %struct.genl_ops], [40 x i8] } { [2 x %struct.genl_ops] [%struct.genl_ops { ptr null, ptr @wg_get_device_start, ptr @wg_get_device_dump, ptr @wg_get_device_done, ptr null, i32 0, i8 0, i8 0, i8 16, i8 0 }, %struct.genl_ops { ptr @wg_set_device, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1, i8 0, i8 16, i8 0 }], [40 x i8] zeroinitializer }, align 32
@device_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, { i8, i8, i16, { %struct.anon } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [56 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, { i8, i8, i16, { %struct.anon } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon zeroinitializer }, { i8, i8, i16, { %struct.anon } } { i8 11, i8 1, i16 0, { %struct.anon } { %struct.anon { i16 32, i16 32 } } }, { i8, i8, i16, { %struct.anon } } { i8 11, i8 1, i16 0, { %struct.anon } { %struct.anon { i16 32, i16 32 } } }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer } }>, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wireguard\00", [22 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/wireguard/netlink.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@wg_set_device.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@curve25519_null_point = external dso_local constant [0 x i8], align 1
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@peer_policy = internal constant { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, { i8, i8, i16, { %struct.anon } }, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [40 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, { i8, i8, i16, { %struct.anon } }, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon } } { i8 11, i8 1, i16 0, { %struct.anon } { %struct.anon { i16 32, i16 32 } } }, { i8, i8, i16, { %struct.anon } } { i8 11, i8 1, i16 0, { %struct.anon } { %struct.anon { i16 32, i16 32 } } }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, { i8, i8, i16, { %struct.anon } } { i8 11, i8 3, i16 0, { %struct.anon } { %struct.anon { i16 16, i16 0 } } }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, { i8, i8, i16, { %struct.anon } } { i8 11, i8 1, i16 0, { %struct.anon } { %struct.anon { i16 16, i16 16 } } }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer } }>, [40 x i8] zeroinitializer }, align 32
@__const.set_peer.endpoint = private unnamed_addr constant { { %struct.sockaddr, [12 x i8] }, %union.anon.157 } { { %struct.sockaddr, [12 x i8] } { %struct.sockaddr zeroinitializer, [12 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, %union.anon.157 zeroinitializer }, align 4
@allowedip_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, %struct.nla_policy }>, [32 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, { i8, i8, i16, { %struct.anon } } { i8 11, i8 3, i16 0, { %struct.anon } { %struct.anon { i16 4, i16 0 } } }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 20, i64 32]
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"genl_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 607, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"device_policy\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 22, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 68, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 268, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 991, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 517, i32 9 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 695, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 723, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 1208, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"peer_policy\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 33, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"allowedip_policy\00", align 1
@___asan_gen_.45 = private constant [35 x i8] c"../drivers/net/wireguard/netlink.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 46, i32 32 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @wg_genetlink_uninit, ptr @genl_ops, ptr @device_policy, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nla_parse_nested.__msg, ptr @peer_policy, ptr @allowedip_policy], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genl_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peer_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allowedip_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_genetlink_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @genl_family) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_genetlink_uninit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @genl_family) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wg_get_device_start(ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %attrs = getelementptr inbounds %struct.genl_dumpit_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 4
  %call1 = tail call fastcc ptr @lookup_interface(ptr noundef %3, ptr noundef %5)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wg_get_device_dump(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i20.i.i = alloca i16, align 2
  %tmp.i.i.i = alloca i8, align 1
  %tmp.i184.i = alloca i32, align 4
  %tmp.i182.i = alloca i64, align 8
  %tmp.i180.i = alloca i64, align 8
  %tmp.i.i = alloca i16, align 2
  %last_handshake.i = alloca %struct.__kernel_timespec, align 8
  %cidr.i = alloca i8, align 1
  %ip.i = alloca [16 x i8], align 8
  %tmp.i192 = alloca i32, align 4
  %tmp.i190 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  tail call void @rtnl_lock() #9
  %device_update_lock = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %device_update_lock, i32 noundef 0) #9
  %device_update_gen = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %device_update_gen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device_update_gen, align 8
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %5 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %seq, align 4
  %next_peer = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %6 = ptrtoint ptr %next_peer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_peer, align 4
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlmsg_seq, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %11, i32 noundef %15, ptr noundef nonnull @genl_family, i32 noundef 2, i8 noundef zeroext 0) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end114_crit_edge, label %if.end

entry.if.end114_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.end:                                           ; preds = %entry
  %prev_seq.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %16 = ptrtoint ptr %prev_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prev_seq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.end.genl_dump_check_consistent.exit_crit_edge, label %land.lhs.true.i.i

if.end.genl_dump_check_consistent.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %genl_dump_check_consistent.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %18 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.not.i.i = icmp eq i32 %19, %17
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.genl_dump_check_consistent.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.genl_dump_check_consistent.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %genl_dump_check_consistent.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %nlmsg_flags.i.i = getelementptr i8, ptr %call, i32 -14
  %20 = ptrtoint ptr %nlmsg_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nlmsg_flags.i.i, align 2
  %22 = or i16 %21, 16
  store i16 %22, ptr %nlmsg_flags.i.i, align 2
  br label %genl_dump_check_consistent.exit

genl_dump_check_consistent.exit:                  ; preds = %if.then.i.i, %land.lhs.true.i.i.genl_dump_check_consistent.exit_crit_edge, %if.end.genl_dump_check_consistent.exit_crit_edge
  %23 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %seq, align 4
  %25 = ptrtoint ptr %prev_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %prev_seq.i.i, align 4
  %26 = ptrtoint ptr %next_peer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %next_peer, align 4
  %tobool5.not = icmp eq ptr %27, null
  br i1 %tobool5.not, label %if.then6, label %genl_dump_check_consistent.exit.if.end40_crit_edge

genl_dump_check_consistent.exit.if.end40_crit_edge: ; preds = %genl_dump_check_consistent.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then6:                                         ; preds = %genl_dump_check_consistent.exit
  %incoming_port = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 24
  %28 = ptrtoint ptr %incoming_port to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %incoming_port, align 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #9
  %30 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.then6.if.end114_crit_edge

if.then6.if.end114_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

lor.lhs.false:                                    ; preds = %if.then6
  %fwmark = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 23
  %31 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i190) #9
  %33 = ptrtoint ptr %tmp.i190 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tmp.i190, align 4
  %call.i191 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i190) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i190) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool10.not = icmp eq i32 %call.i191, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false.if.end114_crit_edge

lor.lhs.false.if.end114_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 128
  %ifindex = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i192) #9
  %38 = ptrtoint ptr %tmp.i192 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp.i192, align 4
  %call.i193 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i192) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i192) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool13.not = icmp eq i32 %call.i193, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false11.if.end114_crit_edge

lor.lhs.false11.if.end114_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %2, align 128
  %call17 = call fastcc i32 @nla_put_string(ptr noundef %skb, ptr noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false14.if.end114_crit_edge

lor.lhs.false14.if.end114_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.end20:                                         ; preds = %lor.lhs.false14
  %static_identity = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 8
  %lock = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 8, i32 2
  call void @down_read(ptr noundef %lock) #9
  %has_identity = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 8, i32 3
  %41 = ptrtoint ptr %has_identity to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %has_identity, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool22.not = icmp eq i8 %42, 0
  br i1 %tobool22.not, label %if.end20.if.end37_crit_edge, label %if.then23

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then23:                                        ; preds = %if.end20
  %static_private = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 8, i32 1
  %call26 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 32, ptr noundef %static_private) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %if.then23.if.then33_crit_edge

if.then23.if.then33_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

lor.lhs.false28:                                  ; preds = %if.then23
  %call31 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 32, ptr noundef %static_identity) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %lor.lhs.false28.if.end37_crit_edge, label %lor.lhs.false28.if.then33_crit_edge

lor.lhs.false28.if.then33_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

lor.lhs.false28.if.end37_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then33:                                        ; preds = %lor.lhs.false28.if.then33_crit_edge, %if.then23.if.then33_crit_edge
  call void @up_read(ptr noundef %lock) #9
  br label %if.end114

if.end37:                                         ; preds = %lor.lhs.false28.if.end37_crit_edge, %if.end20.if.end37_crit_edge
  call void @up_read(ptr noundef %lock) #9
  br label %if.end40

if.end40:                                         ; preds = %if.end37, %genl_dump_check_consistent.exit.if.end40_crit_edge
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool42.not236 = icmp eq ptr %44, null
  %tobool42.not = select i1 %cmp.i.i, i1 true, i1 %tobool42.not236
  br i1 %tobool42.not, label %if.end40.if.end114_crit_edge, label %if.end44

if.end40.if.end114_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.end44:                                         ; preds = %if.end40
  %peer_list = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 19
  %45 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %peer_list, align 4
  %cmp.i.not = icmp eq ptr %46, %peer_list
  br i1 %cmp.i.not, label %if.end44.if.then.i.i198_crit_edge, label %lor.lhs.false47

if.end44.if.then.i.i198_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i198

lor.lhs.false47:                                  ; preds = %if.end44
  %47 = ptrtoint ptr %next_peer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %next_peer, align 4
  %tobool49.not = icmp eq ptr %48, null
  br i1 %tobool49.not, label %lor.lhs.false47.do.body_crit_edge, label %land.lhs.true

lor.lhs.false47.do.body_crit_edge:                ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %lor.lhs.false47
  %peer_list51 = getelementptr inbounds %struct.wg_peer, ptr %48, i32 0, i32 31
  %49 = ptrtoint ptr %peer_list51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %peer_list51, align 4
  %cmp.i194.not = icmp eq ptr %50, %peer_list51
  br i1 %cmp.i194.not, label %land.lhs.true.if.then.i.i198_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true.if.then.i.i198_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i198

if.then.i.i198:                                   ; preds = %land.lhs.true.if.then.i.i198_crit_edge, %if.end44.if.then.i.i198_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i197 = icmp ugt ptr %52, %44
  br i1 %cmp.i.i197, label %do.end.i.i, label %if.then.i.i198.nla_nest_cancel.exit_crit_edge, !prof !39

if.then.i.i198.nla_nest_cancel.exit_crit_edge:    ; preds = %if.then.i.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i198
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i198.nla_nest_cancel.exit_crit_edge
  %53 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #9
  br label %if.end114

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %lor.lhs.false47.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %55 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool56.not = icmp eq i32 %55, 0
  br i1 %tobool56.not, label %do.body.if.end75_crit_edge, label %land.rhs

do.body.if.end75_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 16, i32 5
  %call.i199 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %cmp.not = icmp eq i32 %call.i199, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end75_crit_edge, !prof !39

land.rhs.if.end75_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 268, i32 noundef 9, ptr noundef null) #9
  br label %if.end75

if.end75:                                         ; preds = %do.end, %land.rhs.if.end75_crit_edge, %do.body.if.end75_crit_edge
  %56 = ptrtoint ptr %next_peer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %next_peer, align 4
  %tobool85.not = icmp eq ptr %57, null
  %add.ptr = getelementptr %struct.wg_device, ptr %2, i32 0, i32 3, i32 0, i32 10, i32 72
  %spec.select = select i1 %tobool85.not, ptr %add.ptr, ptr %57
  %peer_list89 = getelementptr inbounds %struct.wg_peer, ptr %spec.select, i32 0, i32 31
  %58 = ptrtoint ptr %peer_list89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn265 = load ptr, ptr %peer_list89, align 4
  %cmp94267 = icmp eq ptr %.pn265, %peer_list
  br i1 %cmp94267, label %out.thread, label %for.body.lr.ph

out.thread:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i300 = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i301 = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i302 = sub i32 %sub.ptr.lhs.cast.i300, %sub.ptr.rhs.cast.i301
  %conv.i207303 = trunc i32 %sub.ptr.sub.i302 to i16
  %61 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i207303, ptr %44, align 2
  br label %if.end114

for.body.lr.ph:                                   ; preds = %if.end75
  %next_allowedip.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %62 = getelementptr inbounds %struct.__kernel_timespec, ptr %last_handshake.i, i32 0, i32 1
  %allowedips_seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %get_peer.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn269 = phi ptr [ %.pn265, %for.body.lr.ph ], [ %.pn, %get_peer.exit.for.body_crit_edge ]
  %next_peer_cursor.0268 = phi ptr [ %7, %for.body.lr.ph ], [ %peer.0270, %get_peer.exit.for.body_crit_edge ]
  %peer.0270 = getelementptr i8, ptr %.pn269, i32 -1300
  %63 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32768, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %65 = ptrtoint ptr %next_allowedip.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %next_allowedip.i, align 8
  %tobool.not222.i = icmp eq ptr %64, null
  %tobool.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not222.i
  br i1 %tobool.not.i, label %for.body.out.loopexit_crit_edge, label %if.end.i

for.body.out.loopexit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.loopexit

if.end.i:                                         ; preds = %for.body
  %lock.i = getelementptr i8, ptr %.pn269, i32 -752
  call void @down_read(ptr noundef %lock.i) #9
  %remote_static.i = getelementptr i8, ptr %.pn269, i32 -960
  %call2.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef %remote_static.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  call void @up_read(ptr noundef %lock.i) #9
  br i1 %tobool3.not.i, label %if.end8.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.end8.i:                                        ; preds = %if.end.i
  %tobool9.not.i = icmp eq ptr %66, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end8.i.if.end71.i_crit_edge

if.end8.i.if.end71.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %last_handshake.i) #9
  %walltime_last_handshake.i = getelementptr i8, ptr %.pn269, i32 -28
  %67 = ptrtoint ptr %walltime_last_handshake.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %walltime_last_handshake.i, align 8
  %69 = ptrtoint ptr %last_handshake.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %last_handshake.i, align 8
  %tv_nsec13.i = getelementptr i8, ptr %.pn269, i32 -20
  %70 = ptrtoint ptr %tv_nsec13.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tv_nsec13.i, align 8
  %conv.i200 = sext i32 %71 to i64
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv.i200, ptr %62, align 8
  call void @down_read(ptr noundef %lock.i) #9
  %preshared_key.i = getelementptr i8, ptr %.pn269, i32 -864
  %call18.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 32, ptr noundef %preshared_key.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  call void @up_read(ptr noundef %lock.i) #9
  br i1 %tobool19.not.i, label %if.end25.i, label %if.then10.i.cleanup.thread.i_crit_edge

if.then10.i.cleanup.thread.i_crit_edge:           ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end25.i:                                       ; preds = %if.then10.i
  %call26.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 16, ptr noundef nonnull %last_handshake.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i, label %if.end25.i.cleanup.thread.i_crit_edge

if.end25.i.cleanup.thread.i_crit_edge:            ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

lor.lhs.false.i:                                  ; preds = %if.end25.i
  %persistent_keepalive_interval.i = getelementptr i8, ptr %.pn269, i32 -32
  %73 = ptrtoint ptr %persistent_keepalive_interval.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %persistent_keepalive_interval.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #9
  %75 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool29.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool29.not.i, label %lor.lhs.false30.i, label %lor.lhs.false.i.cleanup.thread.i_crit_edge

lor.lhs.false.i.cleanup.thread.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

lor.lhs.false30.i:                                ; preds = %lor.lhs.false.i
  %tx_bytes.i = getelementptr i8, ptr %.pn269, i32 -284
  %76 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %tx_bytes.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i180.i) #9
  %78 = ptrtoint ptr %tmp.i180.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %tmp.i180.i, align 8
  %call.i181.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i180.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i180.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i)
  %tobool32.not.i = icmp eq i32 %call.i181.i, 0
  br i1 %tobool32.not.i, label %lor.lhs.false33.i, label %lor.lhs.false30.i.cleanup.thread.i_crit_edge

lor.lhs.false30.i.cleanup.thread.i_crit_edge:     ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

lor.lhs.false33.i:                                ; preds = %lor.lhs.false30.i
  %rx_bytes.i = getelementptr i8, ptr %.pn269, i32 -292
  %79 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %rx_bytes.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i182.i) #9
  %81 = ptrtoint ptr %tmp.i182.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %tmp.i182.i, align 8
  %call.i183.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %tmp.i182.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i182.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183.i)
  %tobool35.not.i = icmp eq i32 %call.i183.i, 0
  br i1 %tobool35.not.i, label %lor.lhs.false36.i, label %lor.lhs.false33.i.cleanup.thread.i_crit_edge

lor.lhs.false33.i.cleanup.thread.i_crit_edge:     ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

lor.lhs.false36.i:                                ; preds = %lor.lhs.false33.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i184.i) #9
  %82 = ptrtoint ptr %tmp.i184.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %tmp.i184.i, align 4
  %call.i185.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i184.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i184.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185.i)
  %tobool38.not.i = icmp eq i32 %call.i185.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %lor.lhs.false36.i.cleanup.thread.i_crit_edge

lor.lhs.false36.i.cleanup.thread.i_crit_edge:     ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end40.i:                                       ; preds = %lor.lhs.false36.i
  %endpoint_lock.i = getelementptr i8, ptr %.pn269, i32 -1076
  call void @_raw_read_lock_bh(ptr noundef %endpoint_lock.i) #9
  %endpoint.i = getelementptr i8, ptr %.pn269, i32 -1128
  %83 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %endpoint.i, align 4
  %85 = zext i16 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i16 %84, label %if.end59.thread.i [
    i16 2, label %if.then43.i
    i16 10, label %if.end59.i
  ]

if.end59.thread.i:                                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_read_unlock_bh(ptr noundef %endpoint_lock.i) #9
  br label %cleanup.i

if.then43.i:                                      ; preds = %if.end40.i
  %call45.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 16, ptr noundef %endpoint.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  call void @_raw_read_unlock_bh(ptr noundef %endpoint_lock.i) #9
  br i1 %tobool46.not.i, label %if.then43.i.cleanup.i_crit_edge, label %if.then43.i.cleanup.thread.i_crit_edge

if.then43.i.cleanup.thread.i_crit_edge:           ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.then43.i.cleanup.i_crit_edge:                  ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end59.i:                                       ; preds = %if.end40.i
  %call55.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 28, ptr noundef %endpoint.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  call void @_raw_read_unlock_bh(ptr noundef %endpoint_lock.i) #9
  br i1 %tobool56.not.i, label %if.end59.i.cleanup.i_crit_edge, label %if.end59.i.cleanup.thread.i_crit_edge

if.end59.i.cleanup.thread.i_crit_edge:            ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end59.i.cleanup.i_crit_edge:                   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.end59.i.cleanup.thread.i_crit_edge, %if.then43.i.cleanup.thread.i_crit_edge, %lor.lhs.false36.i.cleanup.thread.i_crit_edge, %lor.lhs.false33.i.cleanup.thread.i_crit_edge, %lor.lhs.false30.i.cleanup.thread.i_crit_edge, %lor.lhs.false.i.cleanup.thread.i_crit_edge, %if.end25.i.cleanup.thread.i_crit_edge, %if.then10.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %last_handshake.i) #9
  br label %if.then.i.i.i

cleanup.i:                                        ; preds = %if.end59.i.cleanup.i_crit_edge, %if.then43.i.cleanup.i_crit_edge, %if.end59.thread.i
  %allowedips_list.i = getelementptr i8, ptr %.pn269, i32 8
  %86 = ptrtoint ptr %allowedips_list.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %allowedips_list.i, align 4
  %cmp65.not.i = icmp eq ptr %87, %allowedips_list.i
  %add.ptr.i = getelementptr i8, ptr %87, i32 -36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %last_handshake.i) #9
  %tobool69.not.i = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %cmp65.not.i, %tobool69.not.i
  br i1 %or.cond.i, label %cleanup.i.get_peer.exit_crit_edge, label %cleanup.i.if.end71.i_crit_edge

cleanup.i.if.end71.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i

cleanup.i.get_peer.exit_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_peer.exit

if.end71.i:                                       ; preds = %cleanup.i.if.end71.i_crit_edge, %if.end8.i.if.end71.i_crit_edge
  %allowedips_node.1219.i = phi ptr [ %66, %if.end8.i.if.end71.i_crit_edge ], [ %add.ptr.i, %cleanup.i.if.end71.i_crit_edge ]
  %88 = ptrtoint ptr %allowedips_seq.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %allowedips_seq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %tobool72.not.i = icmp eq i64 %89, 0
  %90 = ptrtoint ptr %peer.0270 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %peer.0270, align 8
  %seq.i = getelementptr inbounds %struct.wg_device, ptr %91, i32 0, i32 15, i32 2
  %92 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %seq.i, align 8
  br i1 %tobool72.not.i, label %if.then73.i, label %if.else75.i

if.then73.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %allowedips_seq.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %allowedips_seq.i, align 8
  br label %if.end84.i

if.else75.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %93)
  %cmp80.not.i = icmp eq i64 %89, %93
  br i1 %cmp80.not.i, label %if.else75.i.if.end84.i_crit_edge, label %if.else75.i.get_peer.exit_crit_edge

if.else75.i.get_peer.exit_crit_edge:              ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_peer.exit

if.else75.i.if.end84.i_crit_edge:                 ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.else75.i.if.end84.i_crit_edge, %if.then73.i
  %95 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i187.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32777, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i187.i)
  %cmp.i.i188.i = icmp slt i32 %call1.i.i187.i, 0
  %tobool86.not229.i = icmp eq ptr %96, null
  %tobool86.not.i = select i1 %cmp.i.i188.i, i1 true, i1 %tobool86.not229.i
  br i1 %tobool86.not.i, label %if.end84.i.if.then.i.i.i_crit_edge, label %for.cond.preheader.i

if.end84.i.if.then.i.i.i_crit_edge:               ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

for.cond.preheader.i:                             ; preds = %if.end84.i
  %allowedips_list89.i = getelementptr i8, ptr %.pn269, i32 8
  %97 = getelementptr inbounds %struct.allowedips_node, ptr %allowedips_node.1219.i, i32 0, i32 8
  %cmp90.not227.i = icmp eq ptr %97, %allowedips_list89.i
  br i1 %cmp90.not227.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %98 = phi ptr [ %121, %for.inc.critedge.i.for.body.i_crit_edge ], [ %97, %for.cond.preheader.i.for.body.i_crit_edge ]
  %allowedips_node.2228.i = phi ptr [ %add.ptr110.i, %for.inc.critedge.i.for.body.i_crit_edge ], [ %allowedips_node.1219.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cidr.i) #9
  %99 = ptrtoint ptr %cidr.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -1, ptr %cidr.i, align 1, !annotation !40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip.i) #9
  %100 = call ptr @memset(ptr %ip.i, i32 255, i32 16)
  %call93.i = call i32 @wg_allowedips_read_node(ptr noundef %allowedips_node.2228.i, ptr noundef nonnull %ip.i, ptr noundef nonnull %cidr.i) #9
  %101 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %cidr.i, align 1
  %103 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32768, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not23.i.i = icmp eq ptr %104, null
  %tobool.not.i.i201 = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not23.i.i
  br i1 %tobool.not.i.i201, label %for.body.i.if.then97.i_crit_edge, label %if.end.i.i202

for.body.i.if.then97.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97.i

if.end.i.i202:                                    ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #9
  %105 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %102, ptr %tmp.i.i.i, align 1
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i202.if.then.i.i.i.i_crit_edge

if.end.i.i202.if.then.i.i.i.i_crit_edge:          ; preds = %if.end.i.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i202
  %conv.i.i = trunc i32 %call93.i to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i20.i.i) #9
  %106 = ptrtoint ptr %tmp.i20.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i.i, ptr %tmp.i20.i.i, align 2
  %call.i21.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i20.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i20.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i21.i.i, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call93.i)
  %cmp.i.i203 = icmp eq i32 %call93.i, 10
  %cond.i.i = select i1 %cmp.i.i203, i32 16, i32 4
  %call7.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %cond.i.i, ptr noundef nonnull %ip.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %for.inc.critedge.i, label %lor.lhs.false5.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false5.i.i.if.then.i.i.i.i_crit_edge:     ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lor.lhs.false5.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false.i.i.if.then.i.i.i.i_crit_edge, %if.end.i.i202.if.then.i.i.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %107 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i22.i.i = icmp ugt ptr %108, %104
  br i1 %cmp.i.i22.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge, !prof !39

if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_nest_cancel.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %nla_nest_cancel.exit.i.i

nla_nest_cancel.exit.i.i:                         ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge
  %109 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %110 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #9
  br label %if.then97.i

if.then97.i:                                      ; preds = %nla_nest_cancel.exit.i.i, %for.body.i.if.then97.i_crit_edge
  %111 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i204 = ptrtoint ptr %112 to i32
  %sub.ptr.rhs.cast.i.i205 = ptrtoint ptr %96 to i32
  %sub.ptr.sub.i.i206 = sub i32 %sub.ptr.lhs.cast.i.i204, %sub.ptr.rhs.cast.i.i205
  %conv.i190.i = trunc i32 %sub.ptr.sub.i.i206 to i16
  %113 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv.i190.i, ptr %96, align 2
  %114 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i192.i = ptrtoint ptr %114 to i32
  %sub.ptr.rhs.cast.i193.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i194.i = sub i32 %sub.ptr.lhs.cast.i192.i, %sub.ptr.rhs.cast.i193.i
  %conv.i195.i = trunc i32 %sub.ptr.sub.i194.i to i16
  %115 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i195.i, ptr %64, align 2
  %116 = ptrtoint ptr %next_allowedip.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %allowedips_node.2228.i, ptr %next_allowedip.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cidr.i) #9
  br label %out

for.inc.critedge.i:                               ; preds = %lor.lhs.false5.i.i
  %117 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %118 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %104 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %119 = ptrtoint ptr %104 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i.i.i, ptr %104, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cidr.i) #9
  %120 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %98, align 4
  %add.ptr110.i = getelementptr i8, ptr %121, i32 -36
  %cmp90.not.i = icmp eq ptr %121, %allowedips_list89.i
  br i1 %cmp90.not.i, label %for.inc.critedge.i.for.end.i_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.critedge.i.for.end.i_crit_edge:           ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.critedge.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %122 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i197.i = ptrtoint ptr %123 to i32
  %sub.ptr.rhs.cast.i198.i = ptrtoint ptr %96 to i32
  %sub.ptr.sub.i199.i = sub i32 %sub.ptr.lhs.cast.i197.i, %sub.ptr.rhs.cast.i198.i
  %conv.i200.i = trunc i32 %sub.ptr.sub.i199.i to i16
  %124 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i200.i, ptr %96, align 2
  br label %get_peer.exit

if.then.i.i.i:                                    ; preds = %if.end84.i.if.then.i.i.i_crit_edge, %cleanup.thread.i, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %125 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i206.i = icmp ugt ptr %126, %64
  br i1 %cmp.i.i206.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !39

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %127 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i207.i = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.i.i208.i = ptrtoint ptr %128 to i32
  %sub.ptr.sub.i.i209.i = sub i32 %sub.ptr.lhs.cast.i.i207.i, %sub.ptr.rhs.cast.i.i208.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i209.i) #9
  br label %out

get_peer.exit:                                    ; preds = %for.end.i, %if.else75.i.get_peer.exit_crit_edge, %cleanup.i.get_peer.exit_crit_edge
  %129 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i202.i = ptrtoint ptr %130 to i32
  %sub.ptr.rhs.cast.i203.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i204.i = sub i32 %sub.ptr.lhs.cast.i202.i, %sub.ptr.rhs.cast.i203.i
  %conv.i205.i = trunc i32 %sub.ptr.sub.i204.i to i16
  %131 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv.i205.i, ptr %64, align 2
  %132 = ptrtoint ptr %next_allowedip.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %next_allowedip.i, align 8
  %133 = ptrtoint ptr %allowedips_seq.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 0, ptr %allowedips_seq.i, align 8
  %134 = ptrtoint ptr %.pn269 to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pn = load ptr, ptr %.pn269, align 4
  %cmp94 = icmp eq ptr %.pn, %peer_list
  br i1 %cmp94, label %get_peer.exit.out.loopexit_crit_edge, label %get_peer.exit.for.body_crit_edge

get_peer.exit.for.body_crit_edge:                 ; preds = %get_peer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

get_peer.exit.out.loopexit_crit_edge:             ; preds = %get_peer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.loopexit

out.loopexit:                                     ; preds = %get_peer.exit.out.loopexit_crit_edge, %for.body.out.loopexit_crit_edge
  %next_peer_cursor.0253.ph = phi ptr [ %next_peer_cursor.0268, %for.body.out.loopexit_crit_edge ], [ %peer.0270, %get_peer.exit.out.loopexit_crit_edge ]
  %135 = xor i1 %tobool.not.i, true
  br label %out

out:                                              ; preds = %out.loopexit, %nla_nest_cancel.exit.i, %if.then97.i
  %next_peer_cursor.0253 = phi ptr [ %next_peer_cursor.0268, %if.then97.i ], [ %next_peer_cursor.0268, %nla_nest_cancel.exit.i ], [ %next_peer_cursor.0253.ph, %out.loopexit ]
  %cmp94246 = phi i1 [ false, %if.then97.i ], [ false, %nla_nest_cancel.exit.i ], [ %135, %out.loopexit ]
  %136 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %137 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i207 = trunc i32 %sub.ptr.sub.i to i16
  %138 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv.i207, ptr %44, align 2
  %tobool111.not = icmp eq ptr %next_peer_cursor.0253, null
  %or.cond = select i1 %cmp94246, i1 true, i1 %tobool111.not
  br i1 %or.cond, label %out.if.end114_crit_edge, label %if.then112

out.if.end114_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then112:                                       ; preds = %out
  %refcount.i = getelementptr inbounds %struct.wg_peer, ptr %next_peer_cursor.0253, i32 0, i32 29
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %139 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %139, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then112.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !39

if.then112.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then112
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %140 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %140)
  %.not.i.i.i.i.i = icmp sgt i32 %140, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end114_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !42

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end114_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then112.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then112.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %if.end114

if.end114:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end114_crit_edge, %out.if.end114_crit_edge, %out.thread, %nla_nest_cancel.exit, %if.end40.if.end114_crit_edge, %if.then33, %lor.lhs.false14.if.end114_crit_edge, %lor.lhs.false11.if.end114_crit_edge, %lor.lhs.false.if.end114_crit_edge, %if.then6.if.end114_crit_edge, %entry.if.end114_crit_edge
  %next_peer_cursor.1235 = phi ptr [ %next_peer_cursor.0253, %out.if.end114_crit_edge ], [ %next_peer_cursor.0253, %if.else.i.i.i.i.i.if.end114_crit_edge ], [ %next_peer_cursor.0253, %if.end15.sink.split.i.i.i.i.i ], [ %7, %if.end40.if.end114_crit_edge ], [ %7, %if.then6.if.end114_crit_edge ], [ %7, %lor.lhs.false.if.end114_crit_edge ], [ %7, %lor.lhs.false11.if.end114_crit_edge ], [ %7, %lor.lhs.false14.if.end114_crit_edge ], [ %7, %if.then33 ], [ %7, %entry.if.end114_crit_edge ], [ %7, %nla_nest_cancel.exit ], [ %7, %out.thread ]
  %ret.0234 = phi i32 [ 0, %out.if.end114_crit_edge ], [ 0, %if.else.i.i.i.i.i.if.end114_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i ], [ -90, %if.end40.if.end114_crit_edge ], [ -90, %if.then6.if.end114_crit_edge ], [ -90, %lor.lhs.false.if.end114_crit_edge ], [ -90, %lor.lhs.false11.if.end114_crit_edge ], [ -90, %lor.lhs.false14.if.end114_crit_edge ], [ -90, %if.then33 ], [ -90, %entry.if.end114_crit_edge ], [ 0, %nla_nest_cancel.exit ], [ 0, %out.thread ]
  %tobool107.not233 = phi i1 [ true, %out.if.end114_crit_edge ], [ true, %if.else.i.i.i.i.i.if.end114_crit_edge ], [ true, %if.end15.sink.split.i.i.i.i.i ], [ false, %if.end40.if.end114_crit_edge ], [ false, %if.then6.if.end114_crit_edge ], [ false, %lor.lhs.false.if.end114_crit_edge ], [ false, %lor.lhs.false11.if.end114_crit_edge ], [ false, %lor.lhs.false14.if.end114_crit_edge ], [ false, %if.then33 ], [ false, %entry.if.end114_crit_edge ], [ true, %nla_nest_cancel.exit ], [ true, %out.thread ]
  %done.1.off0232 = phi i1 [ %cmp94246, %out.if.end114_crit_edge ], [ false, %if.else.i.i.i.i.i.if.end114_crit_edge ], [ false, %if.end15.sink.split.i.i.i.i.i ], [ true, %if.end40.if.end114_crit_edge ], [ true, %if.then6.if.end114_crit_edge ], [ true, %lor.lhs.false.if.end114_crit_edge ], [ true, %lor.lhs.false11.if.end114_crit_edge ], [ true, %lor.lhs.false14.if.end114_crit_edge ], [ true, %if.then33 ], [ true, %entry.if.end114_crit_edge ], [ true, %nla_nest_cancel.exit ], [ true, %out.thread ]
  %141 = ptrtoint ptr %next_peer to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %next_peer, align 4
  call void @wg_peer_put(ptr noundef %142) #9
  call void @mutex_unlock(ptr noundef %device_update_lock) #9
  call void @rtnl_unlock() #9
  br i1 %tobool107.not233, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.end114
  br i1 %tobool.not, label %if.then118.cleanup_crit_edge, label %if.then.i

if.then118.cleanup_crit_edge:                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then118
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i211

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i211:                                 ; preds = %if.then.i
  %data.i.i.i209 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %143 = ptrtoint ptr %data.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data.i.i.i209, align 4
  %cmp.i.i.i210 = icmp ugt ptr %144, %add.ptr1.i
  br i1 %cmp.i.i.i210, label %do.end.i.i.i212, label %if.then.i.i.i211.if.end.i.i.i_crit_edge, !prof !39

if.then.i.i.i211.if.end.i.i.i_crit_edge:          ; preds = %if.then.i.i.i211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

do.end.i.i.i212:                                  ; preds = %if.then.i.i.i211
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i212, %if.then.i.i.i211.if.end.i.i.i_crit_edge
  %145 = ptrtoint ptr %data.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data.i.i.i209, align 4
  %sub.ptr.lhs.cast.i.i.i213 = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i.i.i214 = ptrtoint ptr %146 to i32
  %sub.ptr.sub.i.i.i215 = sub i32 %sub.ptr.lhs.cast.i.i.i213, %sub.ptr.rhs.cast.i.i.i214
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i215) #9
  br label %cleanup

if.end119:                                        ; preds = %if.end114
  %add.ptr1.i217 = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i218 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %147 = ptrtoint ptr %tail.i.i.i218 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tail.i.i.i218, align 8
  %sub.ptr.lhs.cast.i.i219 = ptrtoint ptr %148 to i32
  %sub.ptr.rhs.cast.i.i220 = ptrtoint ptr %add.ptr1.i217 to i32
  %sub.ptr.sub.i.i221 = sub i32 %sub.ptr.lhs.cast.i.i219, %sub.ptr.rhs.cast.i.i220
  %149 = ptrtoint ptr %add.ptr1.i217 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %sub.ptr.sub.i.i221, ptr %add.ptr1.i217, align 4
  br i1 %done.1.off0232, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %next_peer to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %next_peer, align 4
  br label %cleanup

if.end123:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %next_peer to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %next_peer_cursor.1235, ptr %next_peer, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %152 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then121, %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.then118.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then121 ], [ %153, %if.end123 ], [ %ret.0234, %if.then118.cleanup_crit_edge ], [ %ret.0234, %if.then.i.cleanup_crit_edge ], [ %ret.0234, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wg_get_device_done(ptr nocapture noundef readonly %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !43
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 118
  %6 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcpu_refcnt.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, %8
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add13.i = add i32 %17, -1
  store i32 %add13.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !44
  %and.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !39

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #9, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %do.end30.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %next_peer = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %19 = ptrtoint ptr %next_peer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next_peer, align 4
  tail call void @wg_peer_put(ptr noundef %20) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wg_set_device(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %endpoint.i = alloca %struct.endpoint, align 4
  %allowedip.i = alloca [4 x ptr], align 4
  %public_key = alloca [32 x i8], align 1
  %peer134 = alloca [11 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %call = tail call fastcc ptr @lookup_interface(ptr noundef %1, ptr noundef %skb)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %out_nodev

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #9
  %device_update_lock = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %device_update_lock, i32 noundef 0) #9
  %3 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.end8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end8:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %tobool9.not = icmp ult i32 %8, 2
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %if.end8.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %flags.0292 = phi i32 [ %8, %if.end8.if.end11_crit_edge ], [ 0, %if.end.if.end11_crit_edge ]
  %arrayidx13 = getelementptr ptr, ptr %4, i32 6
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %lor.lhs.false, label %if.end11.if.then18_crit_edge

if.end11.if.then18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end11
  %arrayidx16 = getelementptr ptr, ptr %4, i32 7
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end11.if.then18_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then18.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then18.rcu_read_lock.exit_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then18
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then18.rcu_read_lock.exit_crit_edge
  %creating_net = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 7
  %17 = ptrtoint ptr %creating_net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %creating_net, align 8
  %call20 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end29_crit_edge

rcu_read_lock.exit.do.end29_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true.do.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b243 = load i1, ptr @wg_set_device.__warned, align 1
  br i1 %.b243, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @wg_set_device.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 517, ptr noundef nonnull @.str.4) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true.do.end29_crit_edge, %rcu_read_lock.exit.do.end29_crit_edge
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %do.end29.lor.end_crit_edge, label %lor.rhs

do.end29.lor.end_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  %user_ns = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_ns, align 4
  %call32 = tail call zeroext i1 @ns_capable(ptr noundef %20, i32 noundef 12) #9
  %lnot = xor i1 %call32, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end29.lor.end_crit_edge
  %21 = phi i1 [ true, %do.end29.lor.end_crit_edge ], [ %lnot, %lor.rhs ]
  %call.i245 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i245, label %lor.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i248

lor.end.rcu_read_unlock.exit_crit_edge:           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i248:                               ; preds = %lor.end
  %call1.i246 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i246)
  %tobool.not.i247 = icmp eq i32 %call1.i246, 0
  br i1 %tobool.not.i247, label %land.lhs.true.i248.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i250

land.lhs.true.i248.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i248
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i250:                              ; preds = %land.lhs.true.i248
  %.b4.i249 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i249, label %land.lhs.true2.i250.rcu_read_unlock.exit_crit_edge, label %if.then.i251

land.lhs.true2.i250.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i250
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i251:                                     ; preds = %land.lhs.true2.i250
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i251, %land.lhs.true2.i250.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i248.rcu_read_unlock.exit_crit_edge, %lor.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %22 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i252 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i252 to ptr
  %preempt_count.i.i.i.i253 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i253 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i253, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i253, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br i1 %21, label %rcu_read_unlock.exit.out_crit_edge, label %rcu_read_unlock.exit.if.end36_crit_edge

rcu_read_unlock.exit.if.end36_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

rcu_read_unlock.exit.out_crit_edge:               ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end36:                                         ; preds = %rcu_read_unlock.exit.if.end36_crit_edge, %lor.lhs.false.if.end36_crit_edge
  %device_update_gen = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 22
  %26 = ptrtoint ptr %device_update_gen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %device_update_gen, align 8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %device_update_gen, align 8
  %28 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %attrs, align 4
  %arrayidx38 = getelementptr ptr, ptr %29, i32 7
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %31, null
  br i1 %tobool39.not, label %if.end36.if.end53_crit_edge, label %if.then40

if.end36.if.end53_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then40:                                        ; preds = %if.end36
  %add.ptr.i.i254 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i254 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i254, align 4
  %fwmark = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 23
  %34 = ptrtoint ptr %fwmark to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fwmark, align 4
  %peer_list = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 19
  %35 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn242300 = load ptr, ptr %peer_list, align 4
  %cmp.not301 = icmp eq ptr %.pn242300, %peer_list
  br i1 %cmp.not301, label %if.then40.if.end53_crit_edge, label %if.then40.for.body_crit_edge

if.then40.for.body_crit_edge:                     ; preds = %if.then40
  br label %for.body

if.then40.if.end53_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then40.for.body_crit_edge
  %.pn242302 = phi ptr [ %.pn242, %for.body.for.body_crit_edge ], [ %.pn242300, %if.then40.for.body_crit_edge ]
  %peer.0 = getelementptr i8, ptr %.pn242302, i32 -1300
  tail call void @wg_socket_clear_peer_endpoint_src(ptr noundef %peer.0) #9
  %36 = ptrtoint ptr %.pn242302 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn242 = load ptr, ptr %.pn242302, align 4
  %cmp.not = icmp eq ptr %.pn242, %peer_list
  br i1 %cmp.not, label %for.body.if.end53_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end53_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end53:                                         ; preds = %for.body.if.end53_crit_edge, %if.then40.if.end53_crit_edge, %if.end36.if.end53_crit_edge
  %37 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %attrs, align 4
  %arrayidx55 = getelementptr ptr, ptr %38, i32 6
  %39 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %40, null
  br i1 %tobool56.not, label %if.end53.if.end65_crit_edge, label %if.then57

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then57:                                        ; preds = %if.end53
  %add.ptr.i.i255 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i255 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i.i255, align 2
  %incoming_port.i = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 24
  %43 = ptrtoint ptr %incoming_port.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %incoming_port.i, align 128
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %42)
  %cmp.i256 = icmp eq i16 %44, %42
  br i1 %cmp.i256, label %if.then57.if.end65_crit_edge, label %if.end.i

if.then57.if.end65_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.end.i:                                         ; preds = %if.then57
  %peer_list.i = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 19
  %45 = ptrtoint ptr %peer_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn25.i = load ptr, ptr %peer_list.i, align 4
  %cmp5.not26.i = icmp eq ptr %.pn25.i, %peer_list.i
  br i1 %cmp5.not26.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn27.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn25.i, %if.end.i.for.body.i_crit_edge ]
  %peer.0.i = getelementptr i8, ptr %.pn27.i, i32 -1300
  tail call void @wg_socket_clear_peer_endpoint_src(ptr noundef %peer.0.i) #9
  %46 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i = load ptr, ptr %.pn27.i, align 4
  %cmp5.not.i = icmp eq ptr %.pn.i, %peer_list.i
  br i1 %cmp5.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call, align 128
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then12.i, label %set_port.exit

if.then12.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %incoming_port.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %42, ptr %incoming_port.i, align 128
  br label %if.end65

set_port.exit:                                    ; preds = %for.end.i
  %call15.i = tail call i32 @wg_socket_init(ptr noundef %call, i16 noundef zeroext %42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool62.not = icmp eq i32 %call15.i, 0
  br i1 %tobool62.not, label %set_port.exit.if.end65_crit_edge, label %set_port.exit.out_crit_edge

set_port.exit.out_crit_edge:                      ; preds = %set_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

set_port.exit.if.end65_crit_edge:                 ; preds = %set_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.end65:                                         ; preds = %set_port.exit.if.end65_crit_edge, %if.then12.i, %if.then57.if.end65_crit_edge, %if.end53.if.end65_crit_edge
  %and66 = and i32 %flags.0292, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end69_crit_edge, label %if.then68

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wg_peer_remove_all(ptr noundef %call) #9
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end65.if.end69_crit_edge
  %52 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %attrs, align 4
  %arrayidx71 = getelementptr ptr, ptr %53, i32 3
  %54 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx71, align 4
  %tobool72.not = icmp eq ptr %55, null
  br i1 %tobool72.not, label %if.end69.skip_set_private_key_crit_edge, label %land.lhs.true73

if.end69.skip_set_private_key_crit_edge:          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_set_private_key

land.lhs.true73:                                  ; preds = %if.end69
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %55, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %57)
  %cmp77 = icmp eq i16 %57, 36
  br i1 %cmp77, label %if.then78, label %land.lhs.true73.skip_set_private_key_crit_edge

land.lhs.true73.skip_set_private_key_crit_edge:   ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_set_private_key

if.then78:                                        ; preds = %land.lhs.true73
  %add.ptr.i = getelementptr i8, ptr %55, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %public_key) #9
  %static_identity = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 8
  %static_private = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 8, i32 1
  %58 = call ptr @memset(ptr %public_key, i32 255, i32 32)
  %call.i257 = tail call i32 @__crypto_memneq(ptr noundef %static_private, ptr noundef %add.ptr.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %cmp.not.i.not = icmp eq i32 %call.i257, 0
  br i1 %cmp.not.i.not, label %if.then78.cleanup123_crit_edge, label %if.end86

if.then78.cleanup123_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup123

if.end86:                                         ; preds = %if.then78
  %call88 = call fastcc zeroext i1 @curve25519_generate_public(ptr noundef nonnull %public_key, ptr noundef %add.ptr.i)
  br i1 %call88, label %if.then89, label %if.end86.if.end95_crit_edge

if.end86.if.end95_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then89:                                        ; preds = %if.end86
  %peer_hashtable = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 13
  %59 = ptrtoint ptr %peer_hashtable to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %peer_hashtable, align 16
  %call91 = call ptr @wg_pubkey_hashtable_lookup(ptr noundef %60, ptr noundef nonnull %public_key) #9
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.then89.if.end95_crit_edge, label %if.then93

if.then89.if.end95_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then93:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  call void @wg_peer_put(ptr noundef nonnull %call91) #9
  call void @wg_peer_remove(ptr noundef nonnull %call91) #9
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.then89.if.end95_crit_edge, %if.end86.if.end95_crit_edge
  %lock = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 8, i32 2
  call void @down_write(ptr noundef %lock) #9
  call void @wg_noise_set_static_identity_private_key(ptr noundef %static_identity, ptr noundef %add.ptr.i) #9
  %peer_list99 = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 19
  %61 = ptrtoint ptr %peer_list99 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %peer_list99, align 8
  %cmp111.not303 = icmp eq ptr %62, %peer_list99
  br i1 %cmp111.not303, label %if.end95.for.end120_crit_edge, label %if.end95.for.body113_crit_edge

if.end95.for.body113_crit_edge:                   ; preds = %if.end95
  br label %for.body113

if.end95.for.end120_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end120

for.body113:                                      ; preds = %for.body113.for.body113_crit_edge, %if.end95.for.body113_crit_edge
  %.pn.in304 = phi ptr [ %.pn, %for.body113.for.body113_crit_edge ], [ %62, %if.end95.for.body113_crit_edge ]
  %peer82.0 = getelementptr i8, ptr %.pn.in304, i32 -1300
  %63 = ptrtoint ptr %.pn.in304 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn = load ptr, ptr %.pn.in304, align 4
  call void @wg_noise_precompute_static_static(ptr noundef %peer82.0) #9
  call void @wg_noise_expire_current_peer_keypairs(ptr noundef %peer82.0) #9
  %cmp111.not = icmp eq ptr %.pn, %peer_list99
  br i1 %cmp111.not, label %for.body113.for.end120_crit_edge, label %for.body113.for.body113_crit_edge

for.body113.for.body113_crit_edge:                ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body113

for.body113.for.end120_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end120

for.end120:                                       ; preds = %for.body113.for.end120_crit_edge, %if.end95.for.end120_crit_edge
  %cookie_checker = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 12
  call void @wg_cookie_checker_precompute_device_keys(ptr noundef %cookie_checker) #9
  call void @up_write(ptr noundef %lock) #9
  br label %cleanup123

cleanup123:                                       ; preds = %for.end120, %if.then78.cleanup123_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %public_key) #9
  br label %skip_set_private_key

skip_set_private_key:                             ; preds = %cleanup123, %land.lhs.true73.skip_set_private_key_crit_edge, %if.end69.skip_set_private_key_crit_edge
  %64 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %attrs, align 4
  %arrayidx131 = getelementptr ptr, ptr %65, i32 8
  %66 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx131, align 4
  %tobool132.not = icmp eq ptr %67, null
  br i1 %tobool132.not, label %skip_set_private_key.out_crit_edge, label %if.then133

skip_set_private_key.out_crit_edge:               ; preds = %skip_set_private_key
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then133:                                       ; preds = %skip_set_private_key
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %peer134) #9
  %68 = call ptr @memset(ptr %peer134, i32 255, i32 44)
  %69 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx131, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %70, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %72)
  %cmp.i261313 = icmp ugt i16 %72, 7
  br i1 %cmp.i261313, label %land.lhs.true.i262.lr.ph, label %if.then133.cleanup158_crit_edge

if.then133.cleanup158_crit_edge:                  ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup158

land.lhs.true.i262.lr.ph:                         ; preds = %if.then133
  %conv.i259 = zext i16 %72 to i32
  %sub.i260 = add nsw i32 %conv.i259, -4
  %add.ptr.i258 = getelementptr i8, ptr %70, i32 4
  %arrayidx.i = getelementptr inbounds ptr, ptr %peer134, i32 1
  %arrayidx4.i = getelementptr inbounds ptr, ptr %peer134, i32 2
  %arrayidx14.i = getelementptr inbounds ptr, ptr %peer134, i32 3
  %arrayidx23.i = getelementptr inbounds ptr, ptr %peer134, i32 10
  %peer_hashtable.i = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 13
  %lock.i = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 8, i32 2
  %has_identity.i = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 8, i32 3
  %static_identity.i = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 8
  %arrayidx75.i = getelementptr inbounds ptr, ptr %peer134, i32 4
  %peer_allowedips.i = getelementptr inbounds %struct.wg_device, ptr %call, i32 0, i32 15
  %arrayidx100.i = getelementptr inbounds ptr, ptr %peer134, i32 9
  %73 = getelementptr inbounds [4 x ptr], ptr %allowedip.i, i32 0, i32 1
  %74 = getelementptr inbounds [4 x ptr], ptr %allowedip.i, i32 0, i32 2
  %75 = getelementptr inbounds [4 x ptr], ptr %allowedip.i, i32 0, i32 3
  %arrayidx125.i = getelementptr inbounds ptr, ptr %peer134, i32 5
  br label %land.lhs.true.i262

land.lhs.true.i262:                               ; preds = %for.inc155.land.lhs.true.i262_crit_edge, %land.lhs.true.i262.lr.ph
  %attr.0315 = phi ptr [ %add.ptr.i258, %land.lhs.true.i262.lr.ph ], [ %add.ptr.i281, %for.inc155.land.lhs.true.i262_crit_edge ]
  %rem.0314 = phi i32 [ %sub.i260, %land.lhs.true.i262.lr.ph ], [ %sub1.i, %for.inc155.land.lhs.true.i262_crit_edge ]
  %76 = ptrtoint ptr %attr.0315 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %attr.0315, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %77)
  %cmp1.i = icmp ult i16 %77, 4
  %conv.i263 = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0314, i32 %conv.i263)
  %cmp5.i.not = icmp ult i32 %rem.0314, %conv.i263
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i262.cleanup158_crit_edge, label %for.body144

land.lhs.true.i262.cleanup158_crit_edge:          ; preds = %land.lhs.true.i262
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup158

for.body144:                                      ; preds = %land.lhs.true.i262
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.0315, i32 0, i32 1
  %78 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %79)
  %tobool.not.i264 = icmp sgt i16 %79, -1
  br i1 %tobool.not.i264, label %nla_parse_nested.exit.thread, label %nla_parse_nested.exit

nla_parse_nested.exit.thread:                     ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #9
  br label %cleanup158.thread

nla_parse_nested.exit:                            ; preds = %for.body144
  %add.ptr.i.i265 = getelementptr i8, ptr %attr.0315, i32 4
  %80 = ptrtoint ptr %attr.0315 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %attr.0315, align 2
  %conv.i.i = zext i16 %81 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %peer134, i32 noundef 10, ptr noundef %add.ptr.i.i265, i32 noundef %sub.i.i, ptr noundef nonnull @peer_policy, i32 noundef 31, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp147 = icmp slt i32 %call6.i, 0
  br i1 %cmp147, label %nla_parse_nested.exit.cleanup158.thread_crit_edge, label %if.end149

nla_parse_nested.exit.cleanup158.thread_crit_edge: ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup158.thread

if.end149:                                        ; preds = %nla_parse_nested.exit
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i267 = icmp eq ptr %83, null
  br i1 %tobool.not.i267, label %if.end149.out.i_crit_edge, label %land.lhs.true.i269

if.end149.out.i_crit_edge:                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

land.lhs.true.i269:                               ; preds = %if.end149
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %83, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %85)
  %cmp.i268 = icmp eq i16 %85, 36
  br i1 %cmp.i268, label %if.then.i271, label %land.lhs.true.i269.out.i_crit_edge

land.lhs.true.i269.out.i_crit_edge:               ; preds = %land.lhs.true.i269
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i271:                                     ; preds = %land.lhs.true.i269
  %add.ptr.i.i270 = getelementptr i8, ptr %83, i32 4
  %86 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %87, null
  br i1 %tobool5.not.i, label %if.then.i271.if.end13.i_crit_edge, label %land.lhs.true6.i

if.then.i271.if.end13.i_crit_edge:                ; preds = %if.then.i271
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

land.lhs.true6.i:                                 ; preds = %if.then.i271
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %87, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %89)
  %cmp9.i = icmp eq i16 %89, 36
  %add.ptr.i230.i = getelementptr i8, ptr %87, i32 4
  %spec.select.i = select i1 %cmp9.i, ptr %add.ptr.i230.i, ptr null
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true6.i, %if.then.i271.if.end13.i_crit_edge
  %preshared_key.0.i = phi ptr [ null, %if.then.i271.if.end13.i_crit_edge ], [ %spec.select.i, %land.lhs.true6.i ]
  %90 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %91, null
  br i1 %tobool15.not.i, label %if.end13.i.if.end22.i_crit_edge, label %if.end19.i

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end19.i:                                       ; preds = %if.end13.i
  %add.ptr.i.i.i = getelementptr i8, ptr %91, i32 4
  %92 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %93)
  %tobool20.not.i = icmp ult i32 %93, 8
  br i1 %tobool20.not.i, label %if.end19.i.if.end22.i_crit_edge, label %if.end19.i.out.i_crit_edge

if.end19.i.out.i_crit_edge:                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end19.i.if.end22.i_crit_edge, %if.end13.i.if.end22.i_crit_edge
  %flags.0260.i = phi i32 [ %93, %if.end19.i.if.end22.i_crit_edge ], [ 0, %if.end13.i.if.end22.i_crit_edge ]
  %94 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx23.i, align 4
  %tobool24.not.i = icmp eq ptr %95, null
  br i1 %tobool24.not.i, label %if.end22.i.if.end31.i_crit_edge, label %if.then25.i

if.end22.i.if.end31.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then25.i:                                      ; preds = %if.end22.i
  %add.ptr.i.i231.i = getelementptr i8, ptr %95, i32 4
  %96 = ptrtoint ptr %add.ptr.i.i231.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i.i231.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp28.not.i = icmp eq i32 %97, 1
  br i1 %cmp28.not.i, label %if.then25.i.if.end31.i_crit_edge, label %if.then25.i.out.i_crit_edge

if.then25.i.out.i_crit_edge:                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then25.i.if.end31.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then25.i.if.end31.i_crit_edge, %if.end22.i.if.end31.i_crit_edge
  %98 = ptrtoint ptr %peer_hashtable.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %peer_hashtable.i, align 16
  %call34.i = call ptr @wg_pubkey_hashtable_lookup(ptr noundef %99, ptr noundef %add.ptr.i.i270) #9
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end31.i.if.end62.i_crit_edge

if.end31.i.if.end62.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.then36.i:                                      ; preds = %if.end31.i
  %and37.i = and i32 %flags.0260.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.then36.i.out.i_crit_edge

if.then36.i.out.i_crit_edge:                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end40.i:                                       ; preds = %if.then36.i
  %and41.i = and i32 %flags.0260.i, -3
  call void @down_read(ptr noundef %lock.i) #9
  %100 = ptrtoint ptr %has_identity.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %has_identity.i, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool43.not.i = icmp eq i8 %101, 0
  br i1 %tobool43.not.i, label %if.end40.i.if.end53.i_crit_edge, label %land.lhs.true44.i

if.end40.i.if.end53.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

land.lhs.true44.i:                                ; preds = %if.end40.i
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i233.i = getelementptr i8, ptr %103, i32 4
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(32) %add.ptr.i233.i, ptr noundef dereferenceable(32) %static_identity.i, i32 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool49.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %land.lhs.true44.i.if.end53.i_crit_edge

land.lhs.true44.i.if.end53.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then50.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @up_read(ptr noundef %lock.i) #9
  br label %out.i

if.end53.i:                                       ; preds = %land.lhs.true44.i.if.end53.i_crit_edge, %if.end40.i.if.end53.i_crit_edge
  call void @up_read(ptr noundef %lock.i) #9
  %call56.i = call ptr @wg_peer_create(ptr noundef %call, ptr noundef %add.ptr.i.i270, ptr noundef %preshared_key.0.i) #9
  %cmp.i.i = icmp ugt ptr %call56.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then58.i, label %if.end60.i

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %call56.i to i32
  br label %out.i

if.end60.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @wg_peer_get(ptr noundef %call56.i) #9
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end60.i, %if.end31.i.if.end62.i_crit_edge
  %peer.0.i272 = phi ptr [ %call34.i, %if.end31.i.if.end62.i_crit_edge ], [ %call56.i, %if.end60.i ]
  %flags.1.i = phi i32 [ %flags.0260.i, %if.end31.i.if.end62.i_crit_edge ], [ %and41.i, %if.end60.i ]
  %and63.i = and i32 %flags.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @wg_peer_remove(ptr noundef %peer.0.i272) #9
  br label %out.i

if.end66.i:                                       ; preds = %if.end62.i
  %tobool67.not.i = icmp eq ptr %preshared_key.0.i, null
  br i1 %tobool67.not.i, label %if.end66.i.if.end74.i_crit_edge, label %if.then68.i

if.end66.i.if.end74.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

if.then68.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock69.i = getelementptr inbounds %struct.wg_peer, ptr %peer.0.i272, i32 0, i32 10, i32 13
  call void @down_write(ptr noundef %lock69.i) #9
  %preshared_key71.i = getelementptr inbounds %struct.wg_peer, ptr %peer.0.i272, i32 0, i32 10, i32 8
  %105 = call ptr @memcpy(ptr %preshared_key71.i, ptr %preshared_key.0.i, i32 32)
  call void @up_write(ptr noundef %lock69.i) #9
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then68.i, %if.end66.i.if.end74.i_crit_edge
  %106 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx75.i, align 4
  %tobool76.not.i = icmp eq ptr %107, null
  br i1 %tobool76.not.i, label %if.end74.i.if.end95.i_crit_edge, label %if.then77.i

if.end74.i.if.end95.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

if.then77.i:                                      ; preds = %if.end74.i
  %add.ptr.i234.i = getelementptr i8, ptr %107, i32 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %107, align 2
  %conv.i235.i = zext i16 %109 to i32
  %sub.i236.i = add nsw i32 %conv.i235.i, -4
  %110 = zext i16 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %109, label %if.then77.i.if.end95.i_crit_edge [
    i16 20, label %land.lhs.true83.i
    i16 32, label %land.lhs.true88.i
  ]

if.then77.i.if.end95.i_crit_edge:                 ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

land.lhs.true83.i:                                ; preds = %if.then77.i
  %111 = ptrtoint ptr %add.ptr.i234.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr.i234.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %112)
  %cmp84.i = icmp eq i16 %112, 2
  br i1 %cmp84.i, label %land.lhs.true83.i.if.then93.i_crit_edge, label %land.lhs.true83.i.if.end95.i_crit_edge

land.lhs.true83.i.if.end95.i_crit_edge:           ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

land.lhs.true83.i.if.then93.i_crit_edge:          ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93.i

land.lhs.true88.i:                                ; preds = %if.then77.i
  %113 = ptrtoint ptr %add.ptr.i234.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr.i234.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %114)
  %cmp91.i = icmp eq i16 %114, 10
  br i1 %cmp91.i, label %land.lhs.true88.i.if.then93.i_crit_edge, label %land.lhs.true88.i.if.end95.i_crit_edge

land.lhs.true88.i.if.end95.i_crit_edge:           ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

land.lhs.true88.i.if.then93.i_crit_edge:          ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93.i

if.then93.i:                                      ; preds = %land.lhs.true88.i.if.then93.i_crit_edge, %land.lhs.true83.i.if.then93.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %endpoint.i) #9
  %115 = call ptr @memcpy(ptr %endpoint.i, ptr @__const.set_peer.endpoint, i32 44)
  %116 = call ptr @memcpy(ptr %endpoint.i, ptr %add.ptr.i234.i, i32 %sub.i236.i)
  call void @wg_socket_set_peer_endpoint(ptr noundef %peer.0.i272, ptr noundef nonnull %endpoint.i) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %endpoint.i) #9
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then93.i, %land.lhs.true88.i.if.end95.i_crit_edge, %land.lhs.true83.i.if.end95.i_crit_edge, %if.then77.i.if.end95.i_crit_edge, %if.end74.i.if.end95.i_crit_edge
  %and96.i = and i32 %flags.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.end95.i.if.end99.i_crit_edge, label %if.then98.i

if.end95.i.if.end99.i_crit_edge:                  ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99.i

if.then98.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @wg_allowedips_remove_by_peer(ptr noundef %peer_allowedips.i, ptr noundef %peer.0.i272, ptr noundef %device_update_lock) #9
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then98.i, %if.end95.i.if.end99.i_crit_edge
  %117 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx100.i, align 4
  %tobool101.not.i = icmp eq ptr %118, null
  br i1 %tobool101.not.i, label %if.end99.i.if.end124.i_crit_edge, label %if.then102.i

if.end99.i.if.end124.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124.i

if.then102.i:                                     ; preds = %if.end99.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %allowedip.i) #9
  %119 = call ptr @memset(ptr %allowedip.i, i32 255, i32 16)
  %120 = ptrtoint ptr %118 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %118, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %121)
  %cmp.i240272.i = icmp ugt i16 %121, 7
  br i1 %cmp.i240272.i, label %land.lhs.true.i.lr.ph.i, label %if.then102.i.cleanup.i_crit_edge

if.then102.i.cleanup.i_crit_edge:                 ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

land.lhs.true.i.lr.ph.i:                          ; preds = %if.then102.i
  %conv.i238.i = zext i16 %121 to i32
  %sub.i239.i = add nsw i32 %conv.i238.i, -4
  %add.ptr.i237.i = getelementptr i8, ptr %118, i32 4
  %122 = ptrtoint ptr %add.ptr.i237.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %add.ptr.i237.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %123)
  %cmp1.i.i305 = icmp ult i16 %123, 4
  %conv.i241.i306 = zext i16 %123 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i239.i, i32 %conv.i241.i306)
  %cmp5.i.not.i307 = icmp ult i32 %sub.i239.i, %conv.i241.i306
  %or.cond269.i308 = select i1 %cmp1.i.i305, i1 true, i1 %cmp5.i.not.i307
  br i1 %or.cond269.i308, label %land.lhs.true.i.lr.ph.i.cleanup.i_crit_edge, label %land.lhs.true.i.lr.ph.i.for.body.i273_crit_edge

land.lhs.true.i.lr.ph.i.for.body.i273_crit_edge:  ; preds = %land.lhs.true.i.lr.ph.i
  br label %for.body.i273

land.lhs.true.i.lr.ph.i.cleanup.i_crit_edge:      ; preds = %land.lhs.true.i.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

land.lhs.true.i.i:                                ; preds = %for.inc.i
  %add.ptr.i249.i = getelementptr i8, ptr %attr.0275.i309, i32 %and.i.i
  %124 = ptrtoint ptr %add.ptr.i249.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %add.ptr.i249.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %125)
  %cmp1.i.i = icmp ult i16 %125, 4
  %conv.i241.i = zext i16 %125 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i, i32 %conv.i241.i)
  %cmp5.i.not.i = icmp ult i32 %sub1.i.i, %conv.i241.i
  %or.cond269.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond269.i, label %land.lhs.true.i.i.cleanup.i_crit_edge, label %land.lhs.true.i.i.for.body.i273_crit_edge

land.lhs.true.i.i.for.body.i273_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i273

land.lhs.true.i.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.body.i273:                                    ; preds = %land.lhs.true.i.i.for.body.i273_crit_edge, %land.lhs.true.i.lr.ph.i.for.body.i273_crit_edge
  %conv.i241.i311 = phi i32 [ %conv.i241.i, %land.lhs.true.i.i.for.body.i273_crit_edge ], [ %conv.i241.i306, %land.lhs.true.i.lr.ph.i.for.body.i273_crit_edge ]
  %rem.0273.i310 = phi i32 [ %sub1.i.i, %land.lhs.true.i.i.for.body.i273_crit_edge ], [ %sub.i239.i, %land.lhs.true.i.lr.ph.i.for.body.i273_crit_edge ]
  %attr.0275.i309 = phi ptr [ %add.ptr.i249.i, %land.lhs.true.i.i.for.body.i273_crit_edge ], [ %add.ptr.i237.i, %land.lhs.true.i.lr.ph.i.for.body.i273_crit_edge ]
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %attr.0275.i309, i32 0, i32 1
  %126 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %nla_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %127)
  %tobool.not.i.i = icmp sgt i16 %127, -1
  br i1 %tobool.not.i.i, label %nla_parse_nested.exit.thread.i, label %nla_parse_nested.exit.i

nla_parse_nested.exit.thread.i:                   ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #9
  br label %cleanup.thread.i

nla_parse_nested.exit.i:                          ; preds = %for.body.i273
  %add.ptr.i.i242.i = getelementptr i8, ptr %attr.0275.i309, i32 4
  %sub.i.i.i274 = add nsw i32 %conv.i241.i311, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %allowedip.i, i32 noundef 3, ptr noundef %add.ptr.i.i242.i, i32 noundef %sub.i.i.i274, ptr noundef nonnull @allowedip_policy, i32 noundef 31, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp111.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp111.i, label %nla_parse_nested.exit.i.cleanup.thread.i_crit_edge, label %if.end114.i

nla_parse_nested.exit.i.cleanup.thread.i_crit_edge: ; preds = %nla_parse_nested.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end114.i:                                      ; preds = %nla_parse_nested.exit.i
  %128 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %73, align 4
  %tobool.not.i243.i = icmp eq ptr %129, null
  br i1 %tobool.not.i243.i, label %if.end114.i.cleanup.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end114.i.cleanup.thread.i_crit_edge:           ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end114.i
  %130 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %74, align 4
  %tobool2.not.i.i = icmp eq ptr %131, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.cleanup.thread.i_crit_edge, label %lor.lhs.false3.i.i

lor.lhs.false.i.i.cleanup.thread.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %132 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %75, align 4
  %tobool5.not.i.i = icmp eq ptr %133, null
  br i1 %tobool5.not.i.i, label %lor.lhs.false3.i.i.cleanup.thread.i_crit_edge, label %if.end.i.i

lor.lhs.false3.i.i.cleanup.thread.i_crit_edge:    ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end.i.i:                                       ; preds = %lor.lhs.false3.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %129, i32 4
  %134 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr.i.i66.i.i = getelementptr i8, ptr %133, i32 4
  %136 = ptrtoint ptr %add.ptr.i.i66.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %add.ptr.i.i66.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %135)
  %cmp.i244.i = icmp eq i16 %135, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %137)
  %cmp11.i.i = icmp ult i8 %137, 33
  %or.cond.i.i = select i1 %cmp.i244.i, i1 %cmp11.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true13.i.i, label %if.else.i.i

land.lhs.true13.i.i:                              ; preds = %if.end.i.i
  %138 = ptrtoint ptr %131 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %131, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %139)
  %cmp16.i.i = icmp eq i16 %139, 8
  br i1 %cmp16.i.i, label %if.then18.i.i, label %land.lhs.true13.i.i.cleanup.thread.i_crit_edge

land.lhs.true13.i.i.cleanup.thread.i_crit_edge:   ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.then18.i.i:                                    ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %peer.0.i272 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %peer.0.i272, align 8
  %peer_allowedips.i.i = getelementptr inbounds %struct.wg_device, ptr %141, i32 0, i32 15
  %add.ptr.i.i245.i = getelementptr i8, ptr %131, i32 4
  %device_update_lock.i.i = getelementptr inbounds %struct.wg_device, ptr %141, i32 0, i32 16
  %call22.i.i = call i32 @wg_allowedips_insert_v4(ptr noundef %peer_allowedips.i.i, ptr noundef %add.ptr.i.i245.i, i8 noundef zeroext %137, ptr noundef %peer.0.i272, ptr noundef %device_update_lock.i.i) #9
  br label %set_allowedip.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %135)
  %cmp24.i.i = icmp eq i16 %135, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %137)
  %cmp28.i.i = icmp ult i8 %137, -127
  %or.cond65.i.i = select i1 %cmp24.i.i, i1 %cmp28.i.i, i1 false
  br i1 %or.cond65.i.i, label %land.lhs.true30.i.i, label %if.else.i.i.cleanup.thread.i_crit_edge

if.else.i.i.cleanup.thread.i_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

land.lhs.true30.i.i:                              ; preds = %if.else.i.i
  %142 = ptrtoint ptr %131 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %131, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %143)
  %cmp33.i.i = icmp eq i16 %143, 20
  br i1 %cmp33.i.i, label %if.then35.i.i, label %land.lhs.true30.i.i.cleanup.thread.i_crit_edge

land.lhs.true30.i.i.cleanup.thread.i_crit_edge:   ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.then35.i.i:                                    ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %peer.0.i272 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %peer.0.i272, align 8
  %peer_allowedips37.i.i = getelementptr inbounds %struct.wg_device, ptr %145, i32 0, i32 15
  %add.ptr.i69.i.i = getelementptr i8, ptr %131, i32 4
  %device_update_lock41.i.i = getelementptr inbounds %struct.wg_device, ptr %145, i32 0, i32 16
  %call42.i.i = call i32 @wg_allowedips_insert_v6(ptr noundef %peer_allowedips37.i.i, ptr noundef %add.ptr.i69.i.i, i8 noundef zeroext %137, ptr noundef %peer.0.i272, ptr noundef %device_update_lock41.i.i) #9
  br label %set_allowedip.exit.i

set_allowedip.exit.i:                             ; preds = %if.then35.i.i, %if.then18.i.i
  %retval.0.i246.i = phi i32 [ %call22.i.i, %if.then18.i.i ], [ %call42.i.i, %if.then35.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i246.i)
  %cmp117.i = icmp slt i32 %retval.0.i246.i, 0
  br i1 %cmp117.i, label %set_allowedip.exit.i.cleanup.thread.i_crit_edge, label %for.inc.i

set_allowedip.exit.i.cleanup.thread.i_crit_edge:  ; preds = %set_allowedip.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

for.inc.i:                                        ; preds = %set_allowedip.exit.i
  %146 = ptrtoint ptr %attr.0275.i309 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %attr.0275.i309, align 2
  %conv.i247.i = zext i16 %147 to i32
  %sub.i248.i = add nuw nsw i32 %conv.i247.i, 3
  %and.i.i = and i32 %sub.i248.i, 131068
  %sub1.i.i = sub nsw i32 %rem.0273.i310, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i.i)
  %cmp.i240.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i240.i, label %land.lhs.true.i.i, label %for.inc.i.cleanup.i_crit_edge

for.inc.i.cleanup.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %set_allowedip.exit.i.cleanup.thread.i_crit_edge, %land.lhs.true30.i.i.cleanup.thread.i_crit_edge, %if.else.i.i.cleanup.thread.i_crit_edge, %land.lhs.true13.i.i.cleanup.thread.i_crit_edge, %lor.lhs.false3.i.i.cleanup.thread.i_crit_edge, %lor.lhs.false.i.i.cleanup.thread.i_crit_edge, %if.end114.i.cleanup.thread.i_crit_edge, %nla_parse_nested.exit.i.cleanup.thread.i_crit_edge, %nla_parse_nested.exit.thread.i
  %ret.1.ph.i = phi i32 [ -22, %nla_parse_nested.exit.thread.i ], [ %retval.0.i246.i, %set_allowedip.exit.i.cleanup.thread.i_crit_edge ], [ %call6.i.i, %nla_parse_nested.exit.i.cleanup.thread.i_crit_edge ], [ -22, %lor.lhs.false3.i.i.cleanup.thread.i_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup.thread.i_crit_edge ], [ -22, %if.end114.i.cleanup.thread.i_crit_edge ], [ -22, %land.lhs.true30.i.i.cleanup.thread.i_crit_edge ], [ -22, %if.else.i.i.cleanup.thread.i_crit_edge ], [ -22, %land.lhs.true13.i.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %allowedip.i) #9
  br label %out.i

cleanup.i:                                        ; preds = %for.inc.i.cleanup.i_crit_edge, %land.lhs.true.i.i.cleanup.i_crit_edge, %land.lhs.true.i.lr.ph.i.cleanup.i_crit_edge, %if.then102.i.cleanup.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.then102.i.cleanup.i_crit_edge ], [ 0, %land.lhs.true.i.lr.ph.i.cleanup.i_crit_edge ], [ %retval.0.i246.i, %for.inc.i.cleanup.i_crit_edge ], [ %retval.0.i246.i, %land.lhs.true.i.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %allowedip.i) #9
  br label %if.end124.i

if.end124.i:                                      ; preds = %cleanup.i, %if.end99.i.if.end124.i_crit_edge
  %ret.2.i = phi i32 [ %ret.0.lcssa.i, %cleanup.i ], [ 0, %if.end99.i.if.end124.i_crit_edge ]
  %148 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx125.i, align 4
  %tobool126.not.i = icmp eq ptr %149, null
  br i1 %tobool126.not.i, label %if.end124.i.if.end141.i_crit_edge, label %if.then127.i

if.end124.i.if.end141.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141.i

if.then127.i:                                     ; preds = %if.end124.i
  %add.ptr.i.i250.i = getelementptr i8, ptr %149, i32 4
  %150 = ptrtoint ptr %add.ptr.i.i250.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %add.ptr.i.i250.i, align 2
  %persistent_keepalive_interval130.i = getelementptr inbounds %struct.wg_peer, ptr %peer.0.i272, i32 0, i32 25
  %152 = ptrtoint ptr %persistent_keepalive_interval130.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %persistent_keepalive_interval130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool131.not.i = icmp ne i16 %153, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool134.not.i = icmp eq i16 %151, 0
  %or.cond.i = select i1 %tobool131.not.i, i1 true, i1 %tobool134.not.i
  br i1 %or.cond.i, label %if.end140.critedge.i, label %land.rhs.i278

land.rhs.i278:                                    ; preds = %if.then127.i
  %154 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %call, align 128
  %state.i.i275 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 6
  %156 = ptrtoint ptr %state.i.i275 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %state.i.i275, align 4
  %and1.i.i.i276 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i276)
  %tobool.i.not.i277 = icmp eq i32 %and1.i.i.i276, 0
  %158 = ptrtoint ptr %persistent_keepalive_interval130.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %151, ptr %persistent_keepalive_interval130.i, align 4
  br i1 %tobool.i.not.i277, label %land.rhs.i278.if.end141.i_crit_edge, label %if.then139.i

land.rhs.i278.if.end141.i_crit_edge:              ; preds = %land.rhs.i278
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141.i

if.then139.i:                                     ; preds = %land.rhs.i278
  call void @__sanitizer_cov_trace_pc() #11
  call void @wg_packet_send_keepalive(ptr noundef %peer.0.i272) #9
  br label %if.end141.i

if.end140.critedge.i:                             ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #11
  %159 = ptrtoint ptr %persistent_keepalive_interval130.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %151, ptr %persistent_keepalive_interval130.i, align 4
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.end140.critedge.i, %if.then139.i, %land.rhs.i278.if.end141.i_crit_edge, %if.end124.i.if.end141.i_crit_edge
  %160 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call, align 128
  %state.i251.i = getelementptr inbounds %struct.net_device, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %state.i251.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %state.i251.i, align 4
  %and1.i.i252.i = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i252.i)
  %tobool.i253.not.i = icmp eq i32 %and1.i.i252.i, 0
  br i1 %tobool.i253.not.i, label %if.end141.i.out.i_crit_edge, label %if.then144.i

if.end141.i.out.i_crit_edge:                      ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then144.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @wg_packet_send_staged_packets(ptr noundef %peer.0.i272) #9
  br label %out.i

out.i:                                            ; preds = %if.then144.i, %if.end141.i.out.i_crit_edge, %cleanup.thread.i, %if.then65.i, %if.then58.i, %if.then50.i, %if.then36.i.out.i_crit_edge, %if.then25.i.out.i_crit_edge, %if.end19.i.out.i_crit_edge, %land.lhs.true.i269.out.i_crit_edge, %if.end149.out.i_crit_edge
  %peer.1.i = phi ptr [ null, %if.end19.i.out.i_crit_edge ], [ null, %if.then25.i.out.i_crit_edge ], [ %peer.0.i272, %if.then65.i ], [ %peer.0.i272, %if.then144.i ], [ %peer.0.i272, %if.end141.i.out.i_crit_edge ], [ null, %if.then36.i.out.i_crit_edge ], [ null, %if.then58.i ], [ null, %if.then50.i ], [ null, %land.lhs.true.i269.out.i_crit_edge ], [ null, %if.end149.out.i_crit_edge ], [ %peer.0.i272, %cleanup.thread.i ]
  %ret.3.i = phi i32 [ -95, %if.end19.i.out.i_crit_edge ], [ -96, %if.then25.i.out.i_crit_edge ], [ 0, %if.then65.i ], [ %ret.2.i, %if.then144.i ], [ %ret.2.i, %if.end141.i.out.i_crit_edge ], [ 0, %if.then36.i.out.i_crit_edge ], [ %104, %if.then58.i ], [ 0, %if.then50.i ], [ -22, %land.lhs.true.i269.out.i_crit_edge ], [ -22, %if.end149.out.i_crit_edge ], [ %ret.1.ph.i, %cleanup.thread.i ]
  call void @wg_peer_put(ptr noundef %peer.1.i) #9
  %164 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx4.i, align 4
  %tobool147.not.i = icmp eq ptr %165, null
  br i1 %tobool147.not.i, label %out.i.set_peer.exit_crit_edge, label %if.then148.i

out.i.set_peer.exit_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_peer.exit

if.then148.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i254.i = getelementptr i8, ptr %165, i32 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %165, align 2
  %conv.i255.i = zext i16 %167 to i32
  %sub.i256.i = add nsw i32 %conv.i255.i, -4
  %168 = call ptr @memset(ptr %add.ptr.i254.i, i32 0, i32 %sub.i256.i)
  call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr.i254.i) #9, !srcloc !48
  br label %set_peer.exit

set_peer.exit:                                    ; preds = %if.then148.i, %out.i.set_peer.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %cmp152 = icmp slt i32 %ret.3.i, 0
  br i1 %cmp152, label %set_peer.exit.cleanup158.thread_crit_edge, label %for.inc155

set_peer.exit.cleanup158.thread_crit_edge:        ; preds = %set_peer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup158.thread

for.inc155:                                       ; preds = %set_peer.exit
  %169 = ptrtoint ptr %attr.0315 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %attr.0315, align 2
  %conv.i279 = zext i16 %170 to i32
  %sub.i280 = add nuw nsw i32 %conv.i279, 3
  %and.i = and i32 %sub.i280, 131068
  %sub1.i = sub i32 %rem.0314, %and.i
  %add.ptr.i281 = getelementptr i8, ptr %attr.0315, i32 %and.i
  %cmp.i261 = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i261, label %for.inc155.land.lhs.true.i262_crit_edge, label %for.inc155.cleanup158_crit_edge

for.inc155.cleanup158_crit_edge:                  ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup158

for.inc155.land.lhs.true.i262_crit_edge:          ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i262

cleanup158.thread:                                ; preds = %set_peer.exit.cleanup158.thread_crit_edge, %nla_parse_nested.exit.cleanup158.thread_crit_edge, %nla_parse_nested.exit.thread
  %ret.3.ph = phi i32 [ -22, %nla_parse_nested.exit.thread ], [ %call6.i, %nla_parse_nested.exit.cleanup158.thread_crit_edge ], [ %ret.3.i, %set_peer.exit.cleanup158.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %peer134) #9
  br label %out

cleanup158:                                       ; preds = %for.inc155.cleanup158_crit_edge, %land.lhs.true.i262.cleanup158_crit_edge, %if.then133.cleanup158_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %peer134) #9
  br label %out

out:                                              ; preds = %cleanup158, %cleanup158.thread, %skip_set_private_key.out_crit_edge, %set_port.exit.out_crit_edge, %rcu_read_unlock.exit.out_crit_edge, %if.end8.out_crit_edge
  %ret.4 = phi i32 [ -95, %if.end8.out_crit_edge ], [ -1, %rcu_read_unlock.exit.out_crit_edge ], [ %call15.i, %set_port.exit.out_crit_edge ], [ %ret.3.ph, %cleanup158.thread ], [ 0, %cleanup158 ], [ 0, %skip_set_private_key.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %device_update_lock) #9
  call void @rtnl_unlock() #9
  %171 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %call, align 128
  %tobool.not.i282 = icmp eq ptr %172, null
  br i1 %tobool.not.i282, label %out.out_nodev_crit_edge, label %do.body1.i

out.out_nodev_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_nodev

do.body1.i:                                       ; preds = %out
  %173 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !43
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %172, i32 0, i32 118
  %174 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pcpu_refcnt.i, align 4
  %176 = ptrtoint ptr %175 to i32
  %177 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i283 = and i32 %177, -16384
  %178 = inttoptr i32 %and.i.i283 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 3
  %179 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %cpu.i, align 4
  %arrayidx.i284 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %180
  %181 = ptrtoint ptr %arrayidx.i284 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx.i284, align 4
  %add.i = add i32 %182, %176
  %183 = inttoptr i32 %add.i to ptr
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  %add13.i = add i32 %185, -1
  store i32 %add13.i, ptr %183, align 4
  %186 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !44
  %and.i.i.i = and i32 %186, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i285 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i285, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !39

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %173) #9, !srcloc !45
  br label %out_nodev

out_nodev:                                        ; preds = %do.end30.i, %out.out_nodev_crit_edge, %if.then
  %ret.5 = phi i32 [ %2, %if.then ], [ %ret.4, %out.out_nodev_crit_edge ], [ %ret.4, %do.end30.i ]
  %187 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %attrs, align 4
  %arrayidx166 = getelementptr ptr, ptr %188, i32 3
  %189 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx166, align 4
  %tobool167.not = icmp eq ptr %190, null
  br i1 %tobool167.not, label %out_nodev.cleanup176_crit_edge, label %if.then168

out_nodev.cleanup176_crit_edge:                   ; preds = %out_nodev
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.then168:                                       ; preds = %out_nodev
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i286 = getelementptr i8, ptr %190, i32 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %190, align 2
  %conv.i287 = zext i16 %192 to i32
  %sub.i288 = add nsw i32 %conv.i287, -4
  %193 = call ptr @memset(ptr %add.ptr.i286, i32 0, i32 %sub.i288)
  call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr.i286) #9, !srcloc !48
  br label %cleanup176

cleanup176:                                       ; preds = %if.then168, %out_nodev.cleanup176_crit_edge
  ret i32 %ret.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_interface(ptr nocapture noundef readonly %attrs, ptr nocapture noundef readonly %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %attrs, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %arrayidx1 = getelementptr ptr, ptr %attrs, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  %4 = xor i1 %tobool.not, %tobool2.not
  br i1 %4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %call11 = tail call ptr @dev_get_by_index(ptr noundef %9, i32 noundef %11) #9
  br label %if.end20

if.else:                                          ; preds = %if.end
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %if.then14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %skc_net.i49 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i49, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %call18 = tail call ptr @dev_get_by_name(ptr noundef %16, ptr noundef %add.ptr.i) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.then7
  %dev.0 = phi ptr [ %call11, %if.then7 ], [ %call18, %if.then14 ]
  %tobool21.not = icmp eq ptr %dev.0, null
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 136
  %17 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtnl_link_ops, align 4
  %tobool25.not = icmp eq ptr %18, null
  br i1 %tobool25.not, label %if.end24.do.body1.i_crit_edge, label %lor.lhs.false

if.end24.do.body1.i_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

lor.lhs.false:                                    ; preds = %if.end24
  %kind = getelementptr inbounds %struct.rtnl_link_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kind, align 4
  %tobool27.not = icmp eq ptr %20, null
  br i1 %tobool27.not, label %lor.lhs.false.do.body1.i_crit_edge, label %lor.lhs.false28

lor.lhs.false.do.body1.i_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %call31 = tail call i32 @strcmp(ptr noundef nonnull %20, ptr noundef nonnull dereferenceable(10) @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %lor.lhs.false28.do.body1.i_crit_edge

lor.lhs.false28.do.body1.i_crit_edge:             ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

do.body1.i:                                       ; preds = %lor.lhs.false28.do.body1.i_crit_edge, %lor.lhs.false.do.body1.i_crit_edge, %if.end24.do.body1.i_crit_edge
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !43
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 118
  %22 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcpu_refcnt.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %30, %24
  %31 = inttoptr i32 %add.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add13.i = add i32 %33, -1
  store i32 %add13.i, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !44
  %and.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !39

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #9, !srcloc !45
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i50 = getelementptr i8, ptr %dev.0, i32 2304
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %dev_put.exit, %if.end20.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -95 to ptr), %dev_put.exit ], [ %add.ptr.i50, %if.end35 ], [ inttoptr (i32 -53 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end20.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, ptr noundef %str) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @strlen(ptr noundef %str) #13
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add, ptr noundef %str) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wg_peer_get(ptr noundef %peer) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %refcount = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 29
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !41
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !39

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !42

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_allowedips_read_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_socket_clear_peer_endpoint_src(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_remove_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @curve25519_generate_public(ptr noundef %pub, ptr noundef %secret) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %secret, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %entry.return_crit_edge, label %if.end, !prof !39

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @curve25519_base_arch(ptr noundef %pub, ptr noundef %secret) #9
  %call.i8 = tail call i32 @__crypto_memneq(ptr noundef %pub, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp.not.i9 = icmp ne i32 %call.i8, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp.not.i9, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_pubkey_hashtable_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_set_static_identity_private_key(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_precompute_static_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_expire_current_peer_keypairs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_cookie_checker_precompute_device_keys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_socket_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @curve25519_base_arch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_peer_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_socket_set_peer_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_allowedips_remove_by_peer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_keepalive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_staged_packets(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_allowedips_insert_v4(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_allowedips_insert_v6(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !21, !22, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @genl_family, !1, !"genl_family", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/netlink.c", i32 621, i32 27}
!2 = !{ptr @device_policy, !3, !"device_policy", i1 false, i1 false}
!3 = !{!"../drivers/net/wireguard/netlink.c", i32 22, i32 32}
!4 = !{ptr @genl_ops, !5, !"genl_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/wireguard/netlink.c", i32 607, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireguard/netlink.c", i32 68, i32 39}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireguard/netlink.c", i32 268, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/net/netlink.h", i32 991, i32 3}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../drivers/net/wireguard/netlink.c", i32 517, i32 9}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nla_parse_nested.__msg, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!24 = !{ptr @peer_policy, !25, !"peer_policy", i1 false, i1 false}
!25 = !{!"../drivers/net/wireguard/netlink.c", i32 33, i32 32}
!26 = !{ptr @allowedip_policy, !27, !"allowedip_policy", i1 false, i1 false}
!27 = !{!"../drivers/net/wireguard/netlink.c", i32 46, i32 32}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"auto-init"}
!41 = !{i64 2148184626, i64 2148184658, i64 2148184687, i64 2148184721, i64 2148184752, i64 2148184775}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 636423, i64 636484}
!44 = !{i64 639155}
!45 = !{i64 639440}
!46 = !{i64 2149979908}
!47 = !{i64 2149980174}
!48 = !{i64 2149243123}
