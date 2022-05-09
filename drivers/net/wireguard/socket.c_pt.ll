; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/socket.c_pt.bc'
source_filename = "../drivers/net/wireguard/socket.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wg_peer = type { ptr, %struct.prev_queue, %struct.prev_queue, %struct.sk_buff_head, i32, i8, %struct.noise_keypairs, %struct.endpoint, %struct.dst_cache, %struct.rwlock_t, %struct.noise_handshake, %struct.atomic64_t, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cookie, %struct.hlist_node, i64, i64, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i16, i8, i8, %struct.timespec64, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.napi_struct, i64 }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.152, %struct.atomic_t }
%struct.anon.152 = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.noise_keypairs = type { ptr, ptr, ptr, %struct.spinlock }
%struct.endpoint = type { %union.anon.153, %union.anon.154 }
%union.anon.153 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%union.anon.154 = type { %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.noise_handshake = type { %struct.index_hashtable_entry, i32, i64, ptr, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, %struct.rw_semaphore }
%struct.index_hashtable_entry = type { ptr, %struct.hlist_node, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cookie = type { i64, i8, [16 x i8], i8, [16 x i8], [32 x i8], [32 x i8], %struct.rw_semaphore }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.timespec64 = type { i64, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.wg_device = type { ptr, [124 x i8], %struct.crypt_queue, %struct.crypt_queue, %struct.crypt_queue, ptr, ptr, ptr, %struct.noise_static_identity, ptr, ptr, ptr, %struct.cookie_checker, ptr, ptr, %struct.allowedips, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16, [126 x i8] }
%struct.crypt_queue = type { %struct.ptr_ring, ptr, i32, [120 x i8] }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.noise_static_identity = type { [32 x i8], [32 x i8], %struct.rw_semaphore, i8 }
%struct.cookie_checker = type { [32 x i8], [32 x i8], [32 x i8], i64, %struct.rw_semaphore, ptr }
%struct.allowedips = type { ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon.44 = type { i16, i16 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.115, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.116, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.117, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.111, [0 x i32], %union.anon.112, i16, i16, %union.anon.113, %struct.refcount_struct, [0 x i32], %union.anon.114 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%union.anon.111 = type { i32 }
%union.anon.112 = type { %struct.hlist_node }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.115 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.116 = type { ptr }
%union.anon.117 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.43 }
%union.anon.43 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.150 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
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
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.62, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.62 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.udp_tunnel_sock_cfg = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.udp_port_cfg = type { i8, %union.anon.161, %union.anon.162, i16, i16, i32, i8 }
%union.anon.161 = type { %struct.in6_addr }
%union.anon.162 = type { %struct.in6_addr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }

@wg_socket_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/wireguard/socket.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@wg_socket_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wireguard: %s: Could not create IPv4 socket\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wg_socket_init\00", [17 x i8] zeroinitializer }, align 32
@wg_socket_init._entry_ptr = internal global ptr @wg_socket_init._entry, section ".printk_index", align 4
@wg_socket_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wireguard: %s: Could not create IPv6 socket\0A\00", [49 x i8] zeroinitializer }, align 32
@wg_socket_init._entry_ptr.6 = internal global ptr @wg_socket_init._entry.4, section ".printk_index", align 4
@wg_socket_reinit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@wg_socket_reinit.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@send4.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@send4.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 19, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wireguard\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"send4\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: No route to %pISpfsc, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wireguard: %s: No route to %pISpfsc, error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@send6.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@in6addr_any = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@send6.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.16, ptr @.str, ptr @.str.11, i8 0, i8 36, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"send6\00", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 376, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 388, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 402, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 424, i32 9 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 76, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 749, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 760, i32 2 }
@___asan_gen_.73 = private constant [34 x i8] c"../drivers/net/wireguard/socket.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 143, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 695, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 723, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @wg_socket_init._entry, ptr @wg_socket_init._entry.4, ptr @wg_socket_init._entry_ptr, ptr @wg_socket_init._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_socket_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_socket_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_socket_send_skb_to_peer(ptr noundef %peer, ptr noundef %skb, i8 noundef zeroext %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %endpoint_lock = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 9
  tail call void @_raw_read_lock_bh(ptr noundef %endpoint_lock) #7
  %endpoint = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7
  %2 = ptrtoint ptr %endpoint to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %endpoint, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end14.thread [
    i16 2, label %if.then
    i16 10, label %if.then8
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer, align 8
  %endpoint_cache = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 8
  %call = tail call fastcc i32 @send4(ptr noundef %6, ptr noundef %skb, ptr noundef %endpoint, i8 noundef zeroext %ds, ptr noundef %endpoint_cache)
  br label %if.end14

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %peer, align 8
  %endpoint_cache11 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 8
  %call12 = tail call fastcc i32 @send6(ptr noundef %8, ptr noundef %skb, ptr noundef %endpoint, i8 noundef zeroext %ds, ptr noundef %endpoint_cache11)
  br label %if.end14

if.end14.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %if.end20

if.end14:                                         ; preds = %if.then8, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call12, %if.then8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.then18, label %if.end14.if.end20_crit_edge, !prof !54

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %conv19 = zext i32 %1 to i64
  %tx_bytes = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 18
  %9 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_bytes, align 8
  %add = add i64 %10, %conv19
  store i64 %add, ptr %tx_bytes, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge, %if.end14.thread
  %ret.039 = phi i32 [ -97, %if.end14.thread ], [ 0, %if.then18 ], [ %ret.0, %if.end14.if.end20_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %endpoint_lock) #7
  ret i32 %ret.039
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send4(ptr noundef %wg, ptr noundef %skb, ptr noundef %endpoint, i8 noundef zeroext %ds, ptr noundef %cache) unnamed_addr #0 align 64 {
entry:
  %fl = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl) #7
  %0 = getelementptr inbounds i8, ptr %fl, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !55
  %2 = call ptr @memset(ptr %fl, i32 0, i32 40)
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 2
  %fwmark = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 23
  %3 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fwmark, align 4
  %5 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %flowic_mark, align 8
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 5
  %6 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 17, ptr %flowic_proto, align 2
  %saddr = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 1
  %7 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %saddr, align 8
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 2
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %endpoint, i32 0, i32 2
  %11 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sin_addr, align 4
  %13 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %daddr, align 4
  %uli = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 3
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %endpoint, i32 0, i32 1
  %14 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sin_port, align 2
  %16 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %uli, align 8
  %sport = getelementptr inbounds %struct.anon.44, ptr %uli, i32 0, i32 1
  %17 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %sport, align 2
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %skb, align 8
  %19 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wg, align 128
  %21 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %21, align 8
  %23 = load i32, ptr %fwmark, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %24, align 4
  tail call fastcc void @local_bh_disable() #7
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #7
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %sock4 = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 5
  %26 = ptrtoint ptr %sock4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %sock4, align 128
  %call = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end9_crit_edge

rcu_read_lock_bh.exit.do.end9_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b164 = load i1, ptr @send4.__warned, align 1
  br i1 %.b164, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @send4.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 39, ptr noundef nonnull @.str.1) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock_bh.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %27, null
  br i1 %tobool11.not, label %do.end9.err_crit_edge, label %if.end16, !prof !56

do.end9.err_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end16:                                         ; preds = %do.end9
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inet_sport, align 8
  %30 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %sport, align 2
  %tobool20.not = icmp eq ptr %cache, null
  br i1 %tobool20.not, label %if.end16.if.then26_crit_edge, label %if.end24

if.end16.if.then26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.end24:                                         ; preds = %if.end16
  %call23 = call ptr @dst_cache_get_ip4(ptr noundef nonnull %cache, ptr noundef %saddr) #7
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.end24.if.then26_crit_edge, label %if.end24.if.end110_crit_edge

if.end24.if.end110_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %if.end24.if.then26_crit_edge, %if.end16.if.then26_crit_edge
  call void @security_sk_classify_flow(ptr noundef nonnull %27, ptr noundef nonnull %fl) #7
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 9
  %31 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skc_net.i, align 4
  %33 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saddr, align 8
  %call30 = call i32 @inet_confirm_addr(ptr noundef %32, ptr noundef null, i32 noundef 0, i32 noundef %34, i32 noundef 254) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then40, label %if.then26.if.end47_crit_edge, !prof !56

if.then26.if.end47_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then40:                                        ; preds = %if.then26
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %7, align 4
  %src_if4 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %src_if4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %src_if4, align 4
  %37 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %saddr, align 8
  br i1 %tobool20.not, label %if.then40.if.end47_crit_edge, label %if.then45

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i = getelementptr inbounds %struct.dst_cache, ptr %cache, i32 0, i32 1
  %39 = ptrtoint ptr %reset_ts.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %reset_ts.i, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then40.if.end47_crit_edge, %if.then26.if.end47_crit_edge
  %40 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skc_net.i, align 4
  %call49 = call ptr @ip_route_output_flow(ptr noundef %41, ptr noundef nonnull %fl, ptr noundef nonnull %27) #7
  %src_if450 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %src_if450 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_if450, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool51.not = icmp eq i32 %43, 0
  br i1 %tobool51.not, label %if.end47.if.end80_crit_edge, label %land.rhs

if.end47.if.end80_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

land.rhs:                                         ; preds = %if.end47
  %cmp.i = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true53, label %land.rhs56

land.lhs.true53:                                  ; preds = %land.rhs
  %cmp = icmp eq ptr %call49, inttoptr (i32 -22 to ptr)
  br i1 %cmp, label %land.lhs.true53.if.then67_crit_edge, label %land.lhs.true53.if.end80_crit_edge

land.lhs.true53.if.end80_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

land.lhs.true53.if.then67_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

land.rhs56:                                       ; preds = %land.rhs
  %44 = ptrtoint ptr %call49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call49, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %43)
  %cmp59.not = icmp eq i32 %47, %43
  br i1 %cmp59.not, label %land.rhs56.if.end80_crit_edge, label %land.rhs56.if.then67_crit_edge, !prof !54

land.rhs56.if.then67_crit_edge:                   ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

land.rhs56.if.end80_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then67:                                        ; preds = %land.rhs56.if.then67_crit_edge, %land.lhs.true53.if.then67_crit_edge
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %7, align 4
  %49 = ptrtoint ptr %src_if450 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %src_if450, align 4
  %50 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %saddr, align 8
  br i1 %tobool20.not, label %if.then67.if.end74_crit_edge, label %if.then73

if.then67.if.end74_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then73:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i168 = getelementptr inbounds %struct.dst_cache, ptr %cache, i32 0, i32 1
  %52 = ptrtoint ptr %reset_ts.i168 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %reset_ts.i168, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then67.if.end74_crit_edge
  br i1 %cmp.i, label %if.end74.if.end77_crit_edge, label %if.then76

if.end74.if.end77_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void @dst_release(ptr noundef %call49) #7
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74.if.end77_crit_edge
  %53 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %skc_net.i, align 4
  %call79 = call ptr @ip_route_output_flow(ptr noundef %54, ptr noundef nonnull %fl, ptr noundef nonnull %27) #7
  br label %if.end80

if.end80:                                         ; preds = %if.end77, %land.rhs56.if.end80_crit_edge, %land.lhs.true53.if.end80_crit_edge, %if.end47.if.end80_crit_edge
  %rt.1 = phi ptr [ %call79, %if.end77 ], [ %call49, %land.rhs56.if.end80_crit_edge ], [ %call49, %if.end47.if.end80_crit_edge ], [ %call49, %land.lhs.true53.if.end80_crit_edge ]
  %cmp.i171 = icmp ugt ptr %rt.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.then82, label %if.end104

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %rt.1 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send4.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@send4, %err)) #7
          to label %land.lhs.true96 [label %err], !srcloc !57

land.lhs.true96:                                  ; preds = %if.then82
  %call97 = call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %land.lhs.true96.err_crit_edge, label %if.then99

land.lhs.true96.err_crit_edge:                    ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then99:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wg, align 128
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send4.descriptor, ptr noundef nonnull @.str.12, ptr noundef %57, ptr noundef %endpoint, i32 noundef %55) #7
  br label %err

if.end104:                                        ; preds = %if.end80
  br i1 %tobool20.not, label %if.end104.if.end110_crit_edge, label %if.then106

if.end104.if.end110_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then106:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %saddr, align 8
  call void @dst_cache_set_ip4(ptr noundef nonnull %cache, ptr noundef %rt.1, i32 noundef %59) #7
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end104.if.end110_crit_edge, %if.end24.if.end110_crit_edge
  %rt.2 = phi ptr [ %call23, %if.end24.if.end110_crit_edge ], [ %rt.1, %if.then106 ], [ %rt.1, %if.end104.if.end110_crit_edge ]
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %60 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %61 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %saddr, align 8
  %63 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %daddr, align 4
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt.2, i32 0, i32 2
  %65 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %66, -4
  %67 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %67, i32 9
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i172 = icmp eq i32 %69, 0
  br i1 %cmp.i172, label %if.then.i173, label %if.end110.ip4_dst_hoplimit.exit_crit_edge

if.end110.ip4_dst_hoplimit.exit_crit_edge:        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip4_dst_hoplimit.exit

if.then.i173:                                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %rt.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rt.2, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 127
  %72 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nd_net.i.i, align 4
  %sysctl_ip_default_ttl.i = getelementptr inbounds %struct.net, ptr %73, i32 0, i32 35, i32 37
  %74 = ptrtoint ptr %sysctl_ip_default_ttl.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sysctl_ip_default_ttl.i, align 2
  %conv.i = zext i8 %75 to i32
  br label %ip4_dst_hoplimit.exit

ip4_dst_hoplimit.exit:                            ; preds = %if.then.i173, %if.end110.ip4_dst_hoplimit.exit_crit_edge
  %hoplimit.0.i = phi i32 [ %conv.i, %if.then.i173 ], [ %69, %if.end110.ip4_dst_hoplimit.exit_crit_edge ]
  %conv = trunc i32 %hoplimit.0.i to i8
  %76 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %sport, align 2
  %78 = ptrtoint ptr %uli to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %uli, align 8
  call void @udp_tunnel_xmit_skb(ptr noundef %rt.2, ptr noundef nonnull %27, ptr noundef %skb, i32 noundef %62, i32 noundef %64, i8 noundef zeroext %ds, i8 noundef zeroext %conv, i16 noundef zeroext 0, i16 noundef zeroext %77, i16 noundef zeroext %79, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %out

err:                                              ; preds = %if.then99, %land.lhs.true96.err_crit_edge, %if.then82, %do.end9.err_crit_edge
  %ret.0 = phi i32 [ %55, %if.then99 ], [ %55, %land.lhs.true96.err_crit_edge ], [ -64, %do.end9.err_crit_edge ], [ %55, %if.then82 ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %out

out:                                              ; preds = %err, %ip4_dst_hoplimit.exit
  %ret.1 = phi i32 [ %ret.0, %err ], [ 0, %ip4_dst_hoplimit.exit ]
  %call.i174 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i174, label %out.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i177

out.rcu_read_unlock_bh.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i177:                               ; preds = %out
  %call1.i175 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i175)
  %tobool.not.i176 = icmp eq i32 %call1.i175, 0
  br i1 %tobool.not.i176, label %land.lhs.true.i177.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i179

land.lhs.true.i177.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i179:                              ; preds = %land.lhs.true.i177
  %.b4.i178 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i178, label %land.lhs.true2.i179.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i180

land.lhs.true2.i179.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock_bh.exit

if.then.i180:                                     ; preds = %land.lhs.true2.i179
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i180, %land.lhs.true2.i179.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i177.rcu_read_unlock_bh.exit_crit_edge, %out.rcu_read_unlock_bh.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #7
  call fastcc void @local_bh_enable() #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send6(ptr noundef %wg, ptr noundef %skb, ptr noundef %endpoint, i8 noundef zeroext %ds, ptr noundef %cache) unnamed_addr #0 align 64 {
entry:
  %fl = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl) #7
  %0 = getelementptr inbounds i8, ptr %fl, i32 80
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !55
  %2 = call ptr @memset(ptr %fl, i32 0, i32 40)
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 4
  %3 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sin6_scope_id, align 4
  %5 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fl, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 2
  %fwmark = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 23
  %6 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fwmark, align 4
  %8 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flowic_mark, align 8
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 5
  %9 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 17, ptr %flowic_proto, align 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 1
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %daddr, ptr %sin6_addr, i32 16)
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 2
  %11 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %saddr, ptr %11, i32 16)
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 3
  %13 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flowlabel, align 8
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 1
  %14 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sin6_port, align 2
  %16 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %uli, align 4
  %sport = getelementptr inbounds %struct.anon.44, ptr %uli, i32 0, i32 1
  %17 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %sport, align 2
  %mp_hash = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 5
  %18 = ptrtoint ptr %mp_hash to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mp_hash, align 8
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %skb, align 8
  %20 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wg, align 128
  %22 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %22, align 8
  %24 = load i32, ptr %fwmark, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %25, align 4
  tail call fastcc void @local_bh_disable() #7
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #7
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %sock6 = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 6
  %27 = ptrtoint ptr %sock6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %sock6, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end8_crit_edge

rcu_read_lock_bh.exit.do.end8_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b118 = load i1, ptr @send6.__warned, align 1
  br i1 %.b118, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @send6.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.1) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock_bh.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %28, null
  br i1 %tobool10.not, label %do.end8.err_crit_edge, label %if.end15, !prof !56

do.end8.err_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end15:                                         ; preds = %do.end8
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %inet_sport, align 8
  %31 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %sport, align 2
  %tobool19.not = icmp eq ptr %cache, null
  br i1 %tobool19.not, label %if.end15.if.then25_crit_edge, label %if.end23

if.end15.if.then25_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.end23:                                         ; preds = %if.end15
  %call22 = call ptr @dst_cache_get_ip6(ptr noundef nonnull %cache, ptr noundef %saddr) #7
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end23.if.then25_crit_edge, label %if.end23.if.end77_crit_edge

if.end23.if.end77_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.end15.if.then25_crit_edge
  call void @security_sk_classify_flow(ptr noundef nonnull %28, ptr noundef nonnull %fl) #7
  %32 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %saddr, align 8
  %arrayidx2.i = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 2, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %35, %33
  %arrayidx4.i = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 2, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx4.i, align 8
  %or5.i = or i32 %or.i, %37
  %arrayidx7.i = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 2, i32 0, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.then25.if.end46_crit_edge, label %land.rhs

if.then25.if.end46_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.rhs:                                         ; preds = %if.then25
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 9
  %40 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skc_net.i, align 4
  %call31 = call i32 @ipv6_chk_addr(ptr noundef %41, ptr noundef %saddr, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then41, label %land.rhs.if.end46_crit_edge, !prof !56

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then41:                                        ; preds = %land.rhs
  %42 = call ptr @memcpy(ptr %saddr, ptr @in6addr_any, i32 16)
  %43 = call ptr @memcpy(ptr %11, ptr @in6addr_any, i32 16)
  br i1 %tobool19.not, label %if.then41.if.end46_crit_edge, label %if.then44

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i = getelementptr inbounds %struct.dst_cache, ptr %cache, i32 0, i32 1
  %45 = ptrtoint ptr %reset_ts.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %reset_ts.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then41.if.end46_crit_edge, %land.rhs.if.end46_crit_edge, %if.then25.if.end46_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %46 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_dst_lookup_flow = getelementptr inbounds %struct.ipv6_stub, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %ipv6_dst_lookup_flow to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ipv6_dst_lookup_flow, align 4
  %skc_net.i119 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 9
  %49 = ptrtoint ptr %skc_net.i119 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %skc_net.i119, align 4
  %call48 = call ptr %48(ptr noundef %50, ptr noundef nonnull %28, ptr noundef nonnull %fl, ptr noundef null) #7
  %cmp.i120 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then50, label %if.end72

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %call48 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send6.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@send6, %err)) #7
          to label %land.lhs.true64 [label %err], !srcloc !57

land.lhs.true64:                                  ; preds = %if.then50
  %call65 = call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true64.err_crit_edge, label %if.then67

land.lhs.true64.err_crit_edge:                    ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wg, align 128
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send6.descriptor, ptr noundef nonnull @.str.12, ptr noundef %53, ptr noundef %endpoint, i32 noundef %51) #7
  br label %err

if.end72:                                         ; preds = %if.end46
  br i1 %tobool19.not, label %if.end72.if.end77_crit_edge, label %if.then74

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  call void @dst_cache_set_ip6(ptr noundef nonnull %cache, ptr noundef %call48, ptr noundef %saddr) #7
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end72.if.end77_crit_edge, %if.end23.if.end77_crit_edge
  %dst.1 = phi ptr [ %call22, %if.end23.if.end77_crit_edge ], [ %call48, %if.then74 ], [ %call48, %if.end72.if.end77_crit_edge ]
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %54 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %55 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %22, align 8
  %call80 = call i32 @ip6_dst_hoplimit(ptr noundef %dst.1) #7
  %conv = trunc i32 %call80 to i8
  %57 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sport, align 2
  %59 = ptrtoint ptr %uli to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %uli, align 4
  %call85 = call i32 @udp_tunnel6_xmit_skb(ptr noundef %dst.1, ptr noundef nonnull %28, ptr noundef %skb, ptr noundef %56, ptr noundef %saddr, ptr noundef %daddr, i8 noundef zeroext %ds, i8 noundef zeroext %conv, i32 noundef 0, i16 noundef zeroext %58, i16 noundef zeroext %60, i1 noundef zeroext false) #7
  br label %out

err:                                              ; preds = %if.then67, %land.lhs.true64.err_crit_edge, %if.then50, %do.end8.err_crit_edge
  %ret.0 = phi i32 [ %51, %if.then67 ], [ %51, %land.lhs.true64.err_crit_edge ], [ -64, %do.end8.err_crit_edge ], [ %51, %if.then50 ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %out

out:                                              ; preds = %err, %if.end77
  %ret.1 = phi i32 [ %ret.0, %err ], [ 0, %if.end77 ]
  %call.i121 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i121, label %out.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i124

out.rcu_read_unlock_bh.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i124:                               ; preds = %out
  %call1.i122 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %tobool.not.i123 = icmp eq i32 %call1.i122, 0
  br i1 %tobool.not.i123, label %land.lhs.true.i124.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i126

land.lhs.true.i124.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i126:                              ; preds = %land.lhs.true.i124
  %.b4.i125 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i125, label %land.lhs.true2.i126.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i127

land.lhs.true2.i126.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock_bh.exit

if.then.i127:                                     ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i127, %land.lhs.true2.i126.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i124.rcu_read_unlock_bh.exit_crit_edge, %out.rcu_read_unlock_bh.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #7
  call fastcc void @local_bh_enable() #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_socket_send_buffer_to_peer(ptr noundef %peer, ptr nocapture noundef readonly %buffer, i32 noundef %len, i8 noundef zeroext %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 176
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !56

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 176
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 176
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 16
  %6 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i.i, ptr %inner_network_header.i.i, align 4
  %call.i11 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len) #7
  %7 = call ptr @memcpy(ptr %call.i11, ptr %buffer, i32 %len)
  %call5 = tail call i32 @wg_socket_send_skb_to_peer(ptr noundef %peer, ptr noundef nonnull %call.i, i8 noundef zeroext %ds)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_socket_send_buffer_as_reply_to_skb(ptr noundef %wg, ptr noundef readonly %in_skb, ptr nocapture noundef readonly %buffer, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %endpoint = alloca %struct.endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %endpoint) #7
  %tobool.not = icmp eq ptr %in_skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !56

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %endpoint, i32 0, i32 44)
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol.i, align 8
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %2, label %if.end.cleanup_crit_edge [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then9.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %endpoint to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %endpoint, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i.i, align 2
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %endpoint, i32 0, i32 1
  %11 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %sin_port.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i43.i = zext i16 %13 to i32
  %add.ptr.i.i44.i = getelementptr i8, ptr %6, i32 %conv.i.i43.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i44.i, i32 0, i32 8
  %14 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saddr.i, align 4
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %endpoint, i32 0, i32 2
  %16 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sin_addr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i44.i, i32 0, i32 9
  %17 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %daddr.i, align 4
  %19 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %19, align 4
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 15, i32 0, i32 7
  %21 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %skb_iif.i, align 8
  %src_if4.i = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %src_if4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %src_if4.i, align 4
  br label %if.end11

if.then9.i:                                       ; preds = %if.end
  %24 = ptrtoint ptr %endpoint to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 10, ptr %endpoint, align 4
  %head.i.i49.i = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i49.i, align 8
  %transport_header.i.i50.i = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 15, i32 0, i32 19
  %27 = ptrtoint ptr %transport_header.i.i50.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %transport_header.i.i50.i, align 2
  %conv.i.i51.i = zext i16 %28 to i32
  %add.ptr.i.i52.i = getelementptr i8, ptr %26, i32 %conv.i.i51.i
  %29 = ptrtoint ptr %add.ptr.i.i52.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i52.i, align 2
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 1
  %31 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %sin6_port.i, align 2
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 3
  %network_header.i.i54.i = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i54.i, align 4
  %conv.i.i55.i = zext i16 %33 to i32
  %add.ptr.i.i56.i = getelementptr i8, ptr %26, i32 %conv.i.i55.i
  %saddr13.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i56.i, i32 0, i32 5
  %34 = call ptr @memcpy(ptr %sin6_addr.i, ptr %saddr13.i, i32 16)
  %skb_iif16.i = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 15, i32 0, i32 7
  %35 = ptrtoint ptr %skb_iif16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %skb_iif16.i, align 8
  %call.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %saddr13.i) #7
  %and.i.i.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i, label %if.then9.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge

if.then9.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ipv6_addr_needs_scope_id.exit.thread.i.i

lor.rhs.i.i.i:                                    ; preds = %if.then9.i
  %and1.i.i.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp ne i32 %and1.i.i.i, 0
  %and3.i.i.i = and i32 %call.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.i.i.i = icmp ne i32 %and3.i.i.i, 0
  %or.cond.i.i = and i1 %tobool2.not.i.i.i, %tobool4.i.i.i
  br i1 %or.cond.i.i, label %lor.rhs.i.i.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge, label %lor.rhs.i.i.i.ipv6_iface_scope_id.exit.i_crit_edge

lor.rhs.i.i.i.ipv6_iface_scope_id.exit.i_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_iface_scope_id.exit.i

lor.rhs.i.i.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ipv6_addr_needs_scope_id.exit.thread.i.i

__ipv6_addr_needs_scope_id.exit.thread.i.i:       ; preds = %lor.rhs.i.i.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge, %if.then9.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge
  br label %ipv6_iface_scope_id.exit.i

ipv6_iface_scope_id.exit.i:                       ; preds = %__ipv6_addr_needs_scope_id.exit.thread.i.i, %lor.rhs.i.i.i.ipv6_iface_scope_id.exit.i_crit_edge
  %37 = phi i32 [ %36, %__ipv6_addr_needs_scope_id.exit.thread.i.i ], [ 0, %lor.rhs.i.i.i.ipv6_iface_scope_id.exit.i_crit_edge ]
  %sin6_scope_id.i = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 4
  %38 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sin6_scope_id.i, align 4
  %39 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %40 = ptrtoint ptr %head.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i49.i, align 8
  %42 = ptrtoint ptr %network_header.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i.i54.i, align 4
  %conv.i.i63.i = zext i16 %43 to i32
  %add.ptr.i.i64.i = getelementptr i8, ptr %41, i32 %conv.i.i63.i
  %daddr19.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i64.i, i32 0, i32 6
  %44 = call ptr @memcpy(ptr %39, ptr %daddr19.i, i32 16)
  br label %if.end11

if.end11:                                         ; preds = %ipv6_iface_scope_id.exit.i, %if.then.i
  %add = add i32 %len, 176
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end23, !prof !56

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 176
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %47 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %48, i32 176
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %49 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 16
  %51 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i.i, ptr %inner_network_header.i.i, align 4
  %call.i49 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len) #7
  %52 = call ptr @memcpy(ptr %call.i49, ptr %buffer, i32 %len)
  %53 = ptrtoint ptr %endpoint to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %endpoint, align 4
  %55 = zext i16 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %54, label %if.end23.cleanup_crit_edge [
    i16 2, label %if.then27
    i16 10, label %if.then33
  ]

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call fastcc i32 @send4(ptr noundef %wg, ptr noundef nonnull %call.i, ptr noundef nonnull %endpoint, i8 noundef zeroext 0, ptr noundef null)
  br label %cleanup

if.then33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call fastcc i32 @send6(ptr noundef %wg, ptr noundef nonnull %call.i, ptr noundef nonnull %endpoint, i8 noundef zeroext 0, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.then27, %if.end23.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ %call28, %if.then27 ], [ %call34, %if.then33 ], [ 0, %if.end23.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %endpoint) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_socket_endpoint_from_skb(ptr nocapture noundef writeonly %endpoint, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %endpoint, i32 0, i32 44)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol, align 8
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %2, label %entry.return_crit_edge [
    i16 2048, label %if.then
    i16 -31011, label %if.then9
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %endpoint to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %endpoint, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %endpoint, i32 0, i32 1
  %11 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %sin_port, align 2
  %12 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i43 = zext i16 %14 to i32
  %add.ptr.i.i44 = getelementptr i8, ptr %12, i32 %conv.i.i43
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i44, i32 0, i32 8
  %15 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %saddr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %endpoint, i32 0, i32 2
  %17 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sin_addr, align 4
  %18 = load ptr, ptr %head.i.i, align 8
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i47 = zext i16 %19 to i32
  %add.ptr.i.i48 = getelementptr i8, ptr %18, i32 %conv.i.i47
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i48, i32 0, i32 9
  %20 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %daddr, align 4
  %22 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %22, align 4
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %24 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %skb_iif, align 8
  %src_if4 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %src_if4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %src_if4, align 4
  br label %return

if.then9:                                         ; preds = %entry
  %27 = ptrtoint ptr %endpoint to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 10, ptr %endpoint, align 4
  %head.i.i49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i49, align 8
  %transport_header.i.i50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %30 = ptrtoint ptr %transport_header.i.i50 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %transport_header.i.i50, align 2
  %conv.i.i51 = zext i16 %31 to i32
  %add.ptr.i.i52 = getelementptr i8, ptr %29, i32 %conv.i.i51
  %32 = ptrtoint ptr %add.ptr.i.i52 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i.i52, align 2
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 1
  %34 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 3
  %35 = load ptr, ptr %head.i.i49, align 8
  %network_header.i.i54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i54 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i54, align 4
  %conv.i.i55 = zext i16 %37 to i32
  %add.ptr.i.i56 = getelementptr i8, ptr %35, i32 %conv.i.i55
  %saddr13 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i56, i32 0, i32 5
  %38 = call ptr @memcpy(ptr %sin6_addr, ptr %saddr13, i32 16)
  %39 = load ptr, ptr %head.i.i49, align 8
  %40 = load i16, ptr %network_header.i.i54, align 4
  %conv.i.i59 = zext i16 %40 to i32
  %add.ptr.i.i60 = getelementptr i8, ptr %39, i32 %conv.i.i59
  %saddr15 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i60, i32 0, i32 5
  %skb_iif16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %41 = ptrtoint ptr %skb_iif16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %skb_iif16, align 8
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %saddr15) #7
  %and.i.i = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.then9.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge

if.then9.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ipv6_addr_needs_scope_id.exit.thread.i

lor.rhs.i.i:                                      ; preds = %if.then9
  %and1.i.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp ne i32 %and1.i.i, 0
  %and3.i.i = and i32 %call.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.i.i = icmp ne i32 %and3.i.i, 0
  %or.cond.i = and i1 %tobool2.not.i.i, %tobool4.i.i
  br i1 %or.cond.i, label %lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge, label %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge

lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge:   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_iface_scope_id.exit

lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ipv6_addr_needs_scope_id.exit.thread.i

__ipv6_addr_needs_scope_id.exit.thread.i:         ; preds = %lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge, %if.then9.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge
  br label %ipv6_iface_scope_id.exit

ipv6_iface_scope_id.exit:                         ; preds = %__ipv6_addr_needs_scope_id.exit.thread.i, %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge
  %43 = phi i32 [ %42, %__ipv6_addr_needs_scope_id.exit.thread.i ], [ 0, %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge ]
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 4
  %44 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sin6_scope_id, align 4
  %45 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %46 = ptrtoint ptr %head.i.i49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i49, align 8
  %48 = ptrtoint ptr %network_header.i.i54 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i54, align 4
  %conv.i.i63 = zext i16 %49 to i32
  %add.ptr.i.i64 = getelementptr i8, ptr %47, i32 %conv.i.i63
  %daddr19 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i64, i32 0, i32 6
  %50 = call ptr @memcpy(ptr %45, ptr %daddr19, i32 16)
  br label %return

return:                                           ; preds = %ipv6_iface_scope_id.exit, %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %ipv6_iface_scope_id.exit ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_socket_set_peer_endpoint(ptr noundef %peer, ptr noundef readonly %endpoint) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoint1 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %endpoint, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %1, label %entry.if.end_crit_edge [
    i16 2, label %land.lhs.true.i
    i16 10, label %land.lhs.true31.i
    i16 0, label %endpoint_eq.exit
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %endpoint1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %endpoint1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cmp4.i = icmp eq i16 %4, 2
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %endpoint, i32 0, i32 1
  %5 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sin_port.i, align 2
  %sin_port8.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %sin_port8.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sin_port8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp10.i = icmp eq i16 %6, %8
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true6.i.if.end_crit_edge

land.lhs.true6.i.if.end_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true12.i:                                ; preds = %land.lhs.true6.i
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %endpoint, i32 0, i32 2
  %9 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sin_addr.i, align 4
  %sin_addr13.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %sin_addr13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sin_addr13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp15.i = icmp eq i32 %10, %12
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true12.i.if.end_crit_edge

land.lhs.true12.i.if.end_crit_edge:               ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true17.i:                                ; preds = %land.lhs.true12.i
  %13 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %18)
  %cmp21.i = icmp eq i32 %15, %18
  br i1 %cmp21.i, label %land.lhs.true23.i, label %land.lhs.true17.i.if.end_crit_edge

land.lhs.true17.i.if.end_crit_edge:               ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true23.i:                                ; preds = %land.lhs.true17.i
  %src_if4.i = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %src_if4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_if4.i, align 4
  %src_if424.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 1, i32 0, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %src_if424.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_if424.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp25.i = icmp eq i32 %20, %22
  br i1 %cmp25.i, label %land.lhs.true23.i.return_crit_edge, label %land.lhs.true23.i.if.end_crit_edge

land.lhs.true23.i.if.end_crit_edge:               ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true23.i.return_crit_edge:               ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true31.i:                                ; preds = %entry
  %23 = ptrtoint ptr %endpoint1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %endpoint1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %24)
  %cmp34.i = icmp eq i16 %24, 10
  br i1 %cmp34.i, label %land.lhs.true36.i, label %land.lhs.true31.i.if.end_crit_edge

land.lhs.true31.i.if.end_crit_edge:               ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true36.i:                                ; preds = %land.lhs.true31.i
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 1
  %25 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sin6_port.i, align 2
  %sin6_port38.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %sin6_port38.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sin6_port38.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp40.i = icmp eq i16 %26, %28
  br i1 %cmp40.i, label %land.lhs.true42.i, label %land.lhs.true36.i.if.end_crit_edge

land.lhs.true36.i.if.end_crit_edge:               ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true42.i:                                ; preds = %land.lhs.true36.i
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 3
  %sin6_addr43.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sin6_addr.i, align 4
  %31 = ptrtoint ptr %sin6_addr43.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sin6_addr43.i, align 4
  %xor.i.i = xor i32 %32, %30
  %arrayidx4.i.i = getelementptr %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 3, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 0, i32 0, i32 3, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %36, %34
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 3, i32 0, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 0, i32 0, i32 3, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %40, %38
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 3, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 0, i32 0, i32 3, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %44, %42
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true45.i, label %land.lhs.true42.i.if.end_crit_edge

land.lhs.true42.i.if.end_crit_edge:               ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true45.i:                                ; preds = %land.lhs.true42.i
  %sin6_scope_id.i = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 4
  %45 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sin6_scope_id.i, align 4
  %sin6_scope_id46.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 0, i32 0, i32 4
  %47 = ptrtoint ptr %sin6_scope_id46.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sin6_scope_id46.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp47.i = icmp eq i32 %46, %48
  br i1 %cmp47.i, label %land.lhs.true49.i, label %land.lhs.true45.i.if.end_crit_edge

land.lhs.true45.i.if.end_crit_edge:               ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true49.i:                                ; preds = %land.lhs.true45.i
  %49 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %50 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %49, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  %xor.i78.i = xor i32 %54, %52
  %arrayidx4.i79.i = getelementptr %struct.endpoint, ptr %endpoint, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx4.i79.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx4.i79.i, align 4
  %arrayidx6.i80.i = getelementptr %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 1, i32 0, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx6.i80.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx6.i80.i, align 4
  %xor7.i81.i = xor i32 %58, %56
  %or.i82.i = or i32 %xor7.i81.i, %xor.i78.i
  %arrayidx9.i83.i = getelementptr %struct.endpoint, ptr %endpoint, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %59 = ptrtoint ptr %arrayidx9.i83.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx9.i83.i, align 4
  %arrayidx11.i84.i = getelementptr %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 1, i32 0, i32 0, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx11.i84.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx11.i84.i, align 4
  %xor12.i85.i = xor i32 %62, %60
  %or13.i86.i = or i32 %or.i82.i, %xor12.i85.i
  %arrayidx15.i87.i = getelementptr %struct.endpoint, ptr %endpoint, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx15.i87.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx15.i87.i, align 4
  %arrayidx17.i88.i = getelementptr %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 1, i32 0, i32 0, i32 0, i32 3
  %65 = ptrtoint ptr %arrayidx17.i88.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx17.i88.i, align 4
  %xor18.i89.i = xor i32 %66, %64
  %or19.i90.i = or i32 %or13.i86.i, %xor18.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i90.i)
  %cmp.i91.i = icmp eq i32 %or19.i90.i, 0
  br i1 %cmp.i91.i, label %land.lhs.true49.i.return_crit_edge, label %land.lhs.true49.i.if.end_crit_edge

land.lhs.true49.i.if.end_crit_edge:               ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true49.i.return_crit_edge:               ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

endpoint_eq.exit:                                 ; preds = %entry
  %67 = ptrtoint ptr %endpoint1 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %endpoint1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool54.not.i = icmp eq i16 %68, 0
  br i1 %tobool54.not.i, label %endpoint_eq.exit.return_crit_edge, label %endpoint_eq.exit.if.end_crit_edge

endpoint_eq.exit.if.end_crit_edge:                ; preds = %endpoint_eq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

endpoint_eq.exit.return_crit_edge:                ; preds = %endpoint_eq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %endpoint_eq.exit.if.end_crit_edge, %land.lhs.true49.i.if.end_crit_edge, %land.lhs.true45.i.if.end_crit_edge, %land.lhs.true42.i.if.end_crit_edge, %land.lhs.true36.i.if.end_crit_edge, %land.lhs.true31.i.if.end_crit_edge, %land.lhs.true23.i.if.end_crit_edge, %land.lhs.true17.i.if.end_crit_edge, %land.lhs.true12.i.if.end_crit_edge, %land.lhs.true6.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %endpoint_lock = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 9
  tail call void @_raw_write_lock_bh(ptr noundef %endpoint_lock) #7
  %69 = ptrtoint ptr %endpoint to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %endpoint, align 4
  %71 = zext i16 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %70, label %if.end.out_crit_edge [
    i16 2, label %if.then3
    i16 10, label %if.then13
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %72 = call ptr @memcpy(ptr %endpoint1, ptr %endpoint, i32 16)
  %73 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 1
  %74 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %73, align 4
  %src_if4 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %78 = ptrtoint ptr %src_if4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %src_if4, align 4
  %src_if48 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 1, i32 0, i32 0, i32 0, i32 1
  %80 = ptrtoint ptr %src_if48 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %src_if48, align 4
  br label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %81 = call ptr @memcpy(ptr %endpoint1, ptr %endpoint, i32 28)
  %82 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 1
  %83 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %84 = call ptr @memcpy(ptr %82, ptr %83, i32 16)
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 8, i32 1
  %86 = ptrtoint ptr %reset_ts.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %reset_ts.i, align 4
  br label %out

out:                                              ; preds = %if.end18, %if.end.out_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %endpoint_lock) #7
  br label %return

return:                                           ; preds = %out, %endpoint_eq.exit.return_crit_edge, %land.lhs.true49.i.return_crit_edge, %land.lhs.true23.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_socket_set_peer_endpoint_from_skb(ptr noundef %peer, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %endpoint = alloca %struct.endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %endpoint) #7
  %0 = call ptr @memset(ptr %endpoint, i32 0, i32 44)
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol.i, align 8
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %2, label %entry.if.end_crit_edge [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then9.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %endpoint to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %endpoint, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i.i, align 2
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %endpoint, i32 0, i32 1
  %11 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %sin_port.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i43.i = zext i16 %13 to i32
  %add.ptr.i.i44.i = getelementptr i8, ptr %6, i32 %conv.i.i43.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i44.i, i32 0, i32 8
  %14 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saddr.i, align 4
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %endpoint, i32 0, i32 2
  %16 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sin_addr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i44.i, i32 0, i32 9
  %17 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %daddr.i, align 4
  %19 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %19, align 4
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %21 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %skb_iif.i, align 8
  %src_if4.i = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %src_if4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %src_if4.i, align 4
  br label %if.then

if.then9.i:                                       ; preds = %entry
  %24 = ptrtoint ptr %endpoint to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 10, ptr %endpoint, align 4
  %head.i.i49.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i49.i, align 8
  %transport_header.i.i50.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %27 = ptrtoint ptr %transport_header.i.i50.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %transport_header.i.i50.i, align 2
  %conv.i.i51.i = zext i16 %28 to i32
  %add.ptr.i.i52.i = getelementptr i8, ptr %26, i32 %conv.i.i51.i
  %29 = ptrtoint ptr %add.ptr.i.i52.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i52.i, align 2
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 1
  %31 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %sin6_port.i, align 2
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 3
  %network_header.i.i54.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i54.i, align 4
  %conv.i.i55.i = zext i16 %33 to i32
  %add.ptr.i.i56.i = getelementptr i8, ptr %26, i32 %conv.i.i55.i
  %saddr13.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i56.i, i32 0, i32 5
  %34 = call ptr @memcpy(ptr %sin6_addr.i, ptr %saddr13.i, i32 16)
  %skb_iif16.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %35 = ptrtoint ptr %skb_iif16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %skb_iif16.i, align 8
  %call.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %saddr13.i) #7
  %and.i.i.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i, label %if.then9.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge

if.then9.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ipv6_addr_needs_scope_id.exit.thread.i.i

lor.rhs.i.i.i:                                    ; preds = %if.then9.i
  %and1.i.i.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp ne i32 %and1.i.i.i, 0
  %and3.i.i.i = and i32 %call.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.i.i.i = icmp ne i32 %and3.i.i.i, 0
  %or.cond.i.i = and i1 %tobool2.not.i.i.i, %tobool4.i.i.i
  br i1 %or.cond.i.i, label %lor.rhs.i.i.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge, label %lor.rhs.i.i.i.ipv6_iface_scope_id.exit.i_crit_edge

lor.rhs.i.i.i.ipv6_iface_scope_id.exit.i_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipv6_iface_scope_id.exit.i

lor.rhs.i.i.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ipv6_addr_needs_scope_id.exit.thread.i.i

__ipv6_addr_needs_scope_id.exit.thread.i.i:       ; preds = %lor.rhs.i.i.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge, %if.then9.i.__ipv6_addr_needs_scope_id.exit.thread.i.i_crit_edge
  br label %ipv6_iface_scope_id.exit.i

ipv6_iface_scope_id.exit.i:                       ; preds = %__ipv6_addr_needs_scope_id.exit.thread.i.i, %lor.rhs.i.i.i.ipv6_iface_scope_id.exit.i_crit_edge
  %37 = phi i32 [ %36, %__ipv6_addr_needs_scope_id.exit.thread.i.i ], [ 0, %lor.rhs.i.i.i.ipv6_iface_scope_id.exit.i_crit_edge ]
  %sin6_scope_id.i = getelementptr inbounds %struct.sockaddr_in6, ptr %endpoint, i32 0, i32 4
  %38 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sin6_scope_id.i, align 4
  %39 = getelementptr inbounds %struct.endpoint, ptr %endpoint, i32 0, i32 1
  %40 = ptrtoint ptr %head.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i49.i, align 8
  %42 = ptrtoint ptr %network_header.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i.i54.i, align 4
  %conv.i.i63.i = zext i16 %43 to i32
  %add.ptr.i.i64.i = getelementptr i8, ptr %41, i32 %conv.i.i63.i
  %daddr19.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i64.i, i32 0, i32 6
  %44 = call ptr @memcpy(ptr %39, ptr %daddr19.i, i32 16)
  br label %if.then

if.then:                                          ; preds = %ipv6_iface_scope_id.exit.i, %if.then.i
  call void @wg_socket_set_peer_endpoint(ptr noundef %peer, ptr noundef nonnull %endpoint)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %endpoint) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_socket_clear_peer_endpoint_src(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoint_lock = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 9
  tail call void @_raw_write_lock_bh(ptr noundef %endpoint_lock) #7
  %0 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %endpoint_cache = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 8
  tail call void @dst_cache_reset_now(ptr noundef %endpoint_cache) #7
  tail call void @_raw_write_unlock_bh(ptr noundef %endpoint_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_reset_now(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_socket_init(ptr noundef %wg, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %cfg = alloca %struct.udp_tunnel_sock_cfg, align 4
  %new4 = alloca ptr, align 4
  %new6 = alloca ptr, align 4
  %port4 = alloca %struct.udp_port_cfg, align 4
  %port6 = alloca %struct.udp_port_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #7
  %0 = getelementptr inbounds i8, ptr %cfg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wg, ptr %cfg, align 4
  %encap_type = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %cfg, i32 0, i32 1
  %3 = ptrtoint ptr %encap_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %encap_type, align 4
  %encap_rcv = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %encap_rcv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wg_receive, ptr %encap_rcv, align 4
  %encap_err_lookup = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %cfg, i32 0, i32 3
  %5 = call ptr @memset(ptr %encap_err_lookup, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new4) #7
  %6 = ptrtoint ptr %new4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %new4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new6) #7
  %7 = ptrtoint ptr %new6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %new6, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %port4) #7
  %8 = call ptr @memset(ptr %port4, i32 0, i32 48)
  %9 = ptrtoint ptr %port4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %port4, align 4
  %local_udp_port = getelementptr inbounds %struct.udp_port_cfg, ptr %port4, i32 0, i32 3
  %10 = ptrtoint ptr %local_udp_port to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %port, ptr %local_udp_port, align 4
  %use_udp_checksums = getelementptr inbounds %struct.udp_port_cfg, ptr %port4, i32 0, i32 6
  %11 = ptrtoint ptr %use_udp_checksums to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %use_udp_checksums, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %port6) #7
  %12 = getelementptr inbounds i8, ptr %port6, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 44)
  %14 = ptrtoint ptr %port6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 10, ptr %port6, align 4
  %15 = getelementptr inbounds { i8, [3 x i8], { { { [16 x i8] } } }, %union.anon.162, i16, i16, i32, i8, [3 x i8] }, ptr %port6, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %15, align 1
  %17 = getelementptr inbounds { i8, [3 x i8], { { { [16 x i8] } } }, %union.anon.162, i16, i16, i32, i8, [3 x i8] }, ptr %port6, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %17, align 2
  %19 = getelementptr inbounds { i8, [3 x i8], { { { [16 x i8] } } }, %union.anon.162, i16, i16, i32, i8, [3 x i8] }, ptr %port6, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %19, align 1
  %21 = getelementptr inbounds { i8, [3 x i8], { { { [16 x i8] } } }, %union.anon.162, i16, i16, i32, i8, [3 x i8] }, ptr %port6, i32 0, i32 7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 112, ptr %21, align 4
  %23 = tail call i32 @llvm.read_register.i32(metadata !44) #7
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.17) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %creating_net = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 7
  %27 = ptrtoint ptr %creating_net to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %creating_net, align 8
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @wg_socket_init.__warned, align 1
  br i1 %.b79, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @wg_socket_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 376, ptr noundef nonnull @.str.1) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %28, null
  br i1 %tobool9.not, label %do.end7.cond.end_crit_edge, label %cond.true

do.end7.cond.end_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end7
  %count.i = getelementptr inbounds %struct.net, ptr %28, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #7
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %count.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %cond.true
  %31 = phi i32 [ %30, %cond.true ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %32 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %31, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %33 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %35 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %34, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %34
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !54

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %36 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %37, 1
  %38 = or i32 %add5.i.i.i.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end4.i.i.i.i.maybe_get_net.exit_crit_edge:     ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %maybe_get_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #7
  br label %maybe_get_net.exit

maybe_get_net.exit:                               ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge
  %39 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool12.i.i.i.not.i = icmp eq i32 %40, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %28
  br label %cond.end

cond.end:                                         ; preds = %maybe_get_net.exit, %do.end7.cond.end_crit_edge
  %cond = phi ptr [ %spec.select.i, %maybe_get_net.exit ], [ null, %do.end7.cond.end_crit_edge ]
  %call.i81 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i81, label %cond.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i84

cond.end.rcu_read_unlock.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i84:                                ; preds = %cond.end
  %call1.i82 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.18) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, %cond.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %41 = call i32 @llvm.read_register.i32(metadata !44) #7
  %and.i.i.i.i.i88 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i89, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %tobool11.not = icmp eq ptr %cond, null
  br i1 %tobool11.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %retry.preheader, !prof !56

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

retry.preheader:                                  ; preds = %rcu_read_unlock.exit
  %local_udp_port28 = getelementptr inbounds %struct.udp_port_cfg, ptr %port6, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %port)
  %tobool34.not = icmp eq i16 %port, 0
  br label %retry

retry:                                            ; preds = %if.then31.retry_crit_edge, %retry.preheader
  %retries.0 = phi i32 [ %inc, %if.then31.retry_crit_edge ], [ 0, %retry.preheader ]
  %45 = ptrtoint ptr %port4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %port4, align 4
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %46, label %retry.do.end21_crit_edge [
    i8 2, label %if.then.i91
    i8 10, label %if.then6.i
  ]

retry.do.end21_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

if.then.i91:                                      ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i90 = call i32 @udp_sock_create4(ptr noundef nonnull %cond, ptr noundef nonnull %port4, ptr noundef nonnull %new4) #7
  br label %udp_sock_create.exit

if.then6.i:                                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 @udp_sock_create6(ptr noundef nonnull %cond, ptr noundef nonnull %port4, ptr noundef nonnull %new4) #7
  br label %udp_sock_create.exit

udp_sock_create.exit:                             ; preds = %if.then6.i, %if.then.i91
  %retval.0.i = phi i32 [ %call.i90, %if.then.i91 ], [ %call7.i, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %udp_sock_create.exit.do.end21_crit_edge, label %if.end24

udp_sock_create.exit.do.end21_crit_edge:          ; preds = %udp_sock_create.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end21:                                         ; preds = %udp_sock_create.exit.do.end21_crit_edge, %retry.do.end21_crit_edge
  %retval.0.i109 = phi i32 [ %retval.0.i, %udp_sock_create.exit.do.end21_crit_edge ], [ -96, %retry.do.end21_crit_edge ]
  %48 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wg, align 128
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %49) #10
  br label %out

if.end24:                                         ; preds = %udp_sock_create.exit
  %50 = ptrtoint ptr %new4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %new4, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk.i, align 16
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %53, i32 0, i32 41
  %54 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2592, ptr %sk_allocation.i, align 8
  %55 = load ptr, ptr %sk.i, align 16
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %55, i32 0, i32 21
  %56 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2147483647, ptr %sk_sndbuf.i, align 4
  %57 = load ptr, ptr %sk.i, align 16
  call void @sk_set_memalloc(ptr noundef %57) #7
  %58 = ptrtoint ptr %new4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %new4, align 4
  call void @setup_udp_tunnel_sock(ptr noundef nonnull %cond, ptr noundef %59, ptr noundef nonnull %cfg) #7
  %call25 = call zeroext i1 @ipv6_mod_enabled() #7
  br i1 %call25, label %if.then26, label %if.end24.if.end48_crit_edge

if.end24.if.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then26:                                        ; preds = %if.end24
  %60 = ptrtoint ptr %new4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %new4, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sk, align 16
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %inet_sport, align 8
  %66 = ptrtoint ptr %local_udp_port28 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %local_udp_port28, align 4
  %67 = ptrtoint ptr %port6 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %port6, align 4
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %68, label %if.then26.if.then31_crit_edge [
    i8 2, label %if.then.i93
    i8 10, label %if.then6.i95
  ]

if.then26.if.then31_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then.i93:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %call.i92 = call i32 @udp_sock_create4(ptr noundef nonnull %cond, ptr noundef nonnull %port6, ptr noundef nonnull %new6) #7
  br label %udp_sock_create.exit97

if.then6.i95:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i94 = call i32 @udp_sock_create6(ptr noundef nonnull %cond, ptr noundef nonnull %port6, ptr noundef nonnull %new6) #7
  br label %udp_sock_create.exit97

udp_sock_create.exit97:                           ; preds = %if.then6.i95, %if.then.i93
  %retval.0.i96 = phi i32 [ %call.i92, %if.then.i93 ], [ %call7.i94, %if.then6.i95 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i96)
  %cmp30 = icmp slt i32 %retval.0.i96, 0
  br i1 %cmp30, label %udp_sock_create.exit97.if.then31_crit_edge, label %if.end47

udp_sock_create.exit97.if.then31_crit_edge:       ; preds = %udp_sock_create.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %udp_sock_create.exit97.if.then31_crit_edge, %if.then26.if.then31_crit_edge
  %retval.0.i96112 = phi i32 [ %retval.0.i96, %udp_sock_create.exit97.if.then31_crit_edge ], [ -96, %if.then26.if.then31_crit_edge ]
  %70 = ptrtoint ptr %new4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %new4, align 4
  call void @udp_tunnel_sock_release(ptr noundef %71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -98, i32 %retval.0.i96112)
  %cmp32 = icmp eq i32 %retval.0.i96112, -98
  %or.cond = and i1 %tobool34.not, %cmp32
  %inc = add nuw nsw i32 %retries.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %retries.0)
  %cmp36 = icmp ult i32 %retries.0, 100
  %or.cond80 = select i1 %or.cond, i1 %cmp36, i1 false
  br i1 %or.cond80, label %if.then31.retry_crit_edge, label %do.end41

if.then31.retry_crit_edge:                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

do.end41:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wg, align 128
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %73) #10
  br label %out

if.end47:                                         ; preds = %udp_sock_create.exit97
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %new6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %new6, align 4
  %sk.i98 = getelementptr inbounds %struct.socket, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %sk.i98 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sk.i98, align 16
  %sk_allocation.i99 = getelementptr inbounds %struct.sock, ptr %77, i32 0, i32 41
  %78 = ptrtoint ptr %sk_allocation.i99 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2592, ptr %sk_allocation.i99, align 8
  %79 = load ptr, ptr %sk.i98, align 16
  %sk_sndbuf.i100 = getelementptr inbounds %struct.sock, ptr %79, i32 0, i32 21
  %80 = ptrtoint ptr %sk_sndbuf.i100 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2147483647, ptr %sk_sndbuf.i100, align 4
  %81 = load ptr, ptr %sk.i98, align 16
  call void @sk_set_memalloc(ptr noundef %81) #7
  %82 = ptrtoint ptr %new6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %new6, align 4
  call void @setup_udp_tunnel_sock(ptr noundef nonnull %cond, ptr noundef %83, ptr noundef nonnull %cfg) #7
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end24.if.end48_crit_edge
  %84 = ptrtoint ptr %new4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %new4, align 4
  %sk49 = getelementptr inbounds %struct.socket, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %sk49 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sk49, align 16
  %88 = ptrtoint ptr %new6 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %new6, align 4
  %tobool50.not = icmp eq ptr %89, null
  br i1 %tobool50.not, label %if.end48.cond.end54_crit_edge, label %cond.true51

if.end48.cond.end54_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end54

cond.true51:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %sk52 = getelementptr inbounds %struct.socket, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %sk52 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sk52, align 16
  br label %cond.end54

cond.end54:                                       ; preds = %cond.true51, %if.end48.cond.end54_crit_edge
  %cond55 = phi ptr [ %91, %cond.true51 ], [ null, %if.end48.cond.end54_crit_edge ]
  call void @wg_socket_reinit(ptr noundef %wg, ptr noundef %87, ptr noundef %cond55)
  br label %out

out:                                              ; preds = %cond.end54, %do.end41, %do.end21
  %ret.0 = phi i32 [ %retval.0.i109, %do.end21 ], [ %retval.0.i96112, %do.end41 ], [ 0, %cond.end54 ]
  %count.i101 = getelementptr inbounds %struct.net, ptr %cond, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i102 = call zeroext i1 @__kasan_check_write(ptr noundef %count.i101, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @llvm.prefetch.p0(ptr %count.i101, i32 1, i32 3, i32 1) #7
  %92 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i101, ptr %count.i101, i32 1, ptr elementtype(i32) %count.i101) #7, !srcloc !62
  %asmresult.i.i.i.i.i.i.i103 = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i103)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i103, 1
  br i1 %cmp.i.i.i.i, label %if.then.i106, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i103)
  %.not.i.i.i.i104 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i103, 0
  br i1 %.not.i.i.i.i104, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i105, !prof !54

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i105:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %count.i101, i32 noundef 3) #7
  br label %cleanup

if.then.i106:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @__put_net(ptr noundef nonnull %cond) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i106, %if.then10.i.i.i.i105, %if.end5.i.i.i.i.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -64, %rcu_read_unlock.exit.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i105 ], [ %ret.0, %if.then.i106 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %port6) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %port4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new4) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wg_receive(ptr noundef readonly %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end, !prof !56

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end:                                           ; preds = %entry
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end.err_crit_edge, label %if.end14, !prof !56

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %skb, align 8
  tail call void @wg_packet_receive(ptr noundef nonnull %1, ptr noundef %skb) #7
  br label %cleanup

err:                                              ; preds = %if.end.err_crit_edge, %entry.err_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_udp_tunnel_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_mod_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_socket_reinit(ptr noundef %wg, ptr noundef %new4, ptr noundef %new6) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %socket_update_lock = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %socket_update_lock, i32 noundef 0) #7
  %dep_map = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 17, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b117 = load i1, ptr @wg_socket_reinit.__warned, align 1
  br i1 %.b117, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @wg_socket_reinit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 425, ptr noundef nonnull @.str.7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %sock4 = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 5
  %0 = ptrtoint ptr %sock4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock4, align 128
  %call.i118 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool10.not = icmp eq i32 %call.i118, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %do.end.do.end19_crit_edge

do.end.do.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

land.lhs.true11:                                  ; preds = %do.end
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true11.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true11.do.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %.b115116 = load i1, ptr @wg_socket_reinit.__warned.8, align 1
  br i1 %.b115116, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @wg_socket_reinit.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 427, ptr noundef nonnull @.str.7) #7
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true11.do.end19_crit_edge, %do.end.do.end19_crit_edge
  %sock6 = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 6
  %2 = ptrtoint ptr %sock6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %4 = ptrtoint ptr %sock4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new4, ptr %sock4, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  %5 = ptrtoint ptr %sock6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %new6, ptr %sock6, align 4
  %tobool100.not = icmp eq ptr %new4, null
  br i1 %tobool100.not, label %do.end19.if.end103_crit_edge, label %if.then101

do.end19.if.end103_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then101:                                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %new4, i32 0, i32 6
  %6 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inet_sport, align 8
  %incoming_port = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 24
  %8 = ptrtoint ptr %incoming_port to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %incoming_port, align 128
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %do.end19.if.end103_crit_edge
  tail call void @mutex_unlock(ptr noundef %socket_update_lock) #7
  tail call void @synchronize_net() #7
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end103.sock_free.exit_crit_edge, label %if.end.i, !prof !56

if.end103.sock_free.exit_crit_edge:               ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_free.exit

if.end.i:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sk_clear_memalloc(ptr noundef nonnull %1) #7
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %9 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_socket.i, align 8
  tail call void @udp_tunnel_sock_release(ptr noundef %10) #7
  br label %sock_free.exit

sock_free.exit:                                   ; preds = %if.end.i, %if.end103.sock_free.exit_crit_edge
  %tobool.not.i119 = icmp eq ptr %3, null
  br i1 %tobool.not.i119, label %sock_free.exit.sock_free.exit122_crit_edge, label %if.end.i121, !prof !56

sock_free.exit.sock_free.exit122_crit_edge:       ; preds = %sock_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_free.exit122

if.end.i121:                                      ; preds = %sock_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sk_clear_memalloc(ptr noundef nonnull %3) #7
  %sk_socket.i120 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  %11 = ptrtoint ptr %sk_socket.i120 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk_socket.i120, align 8
  tail call void @udp_tunnel_sock_release(ptr noundef %12) #7
  br label %sock_free.exit122

sock_free.exit122:                                ; preds = %if.end.i121, %sock_free.exit.sock_free.exit122_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_confirm_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip4(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_xmit_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

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
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
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
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip6(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_tunnel6_xmit_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_set_memalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_clear_memalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37, !38, !40, !41, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/socket.c", i32 376, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireguard/socket.c", i32 388, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @wg_socket_init._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @wg_socket_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireguard/socket.c", i32 402, i32 4}
!11 = !{ptr @wg_socket_init._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @wg_socket_init._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../drivers/net/wireguard/socket.c", i32 424, i32 9}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../drivers/net/wireguard/socket.c", i32 426, i32 9}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/net/wireguard/socket.c", i32 39, i32 9}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireguard/socket.c", i32 76, i32 4}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @send4.descriptor, !21, !"descriptor", i1 false, i1 false}
!25 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../drivers/net/wireguard/socket.c", i32 119, i32 9}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireguard/socket.c", i32 143, i32 4}
!37 = !{ptr @send6.descriptor, !36, !"descriptor", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!"auto-init"}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2148747068, i64 2148747073, i64 2148747086, i64 2148747130, i64 2148747164, i64 2148747185}
!58 = !{i64 2149972916}
!59 = !{i64 550938, i64 550962, i64 550983, i64 551000, i64 551017}
!60 = !{i64 2149973182}
!61 = !{i64 2148265635}
!62 = !{i64 2148180099, i64 2148180131, i64 2148180160, i64 2148180194, i64 2148180225, i64 2148180248}
!63 = !{i64 2148888803}
!64 = !{i64 2158178144}
!65 = !{i64 2158185363}
