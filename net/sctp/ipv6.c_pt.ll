; ModuleID = '/llk/IR_all_yes/net/sctp/ipv6.c_pt.bc'
source_filename = "../net/sctp/ipv6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sctp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.128, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.128 = type { ptr }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.static_key_false_deferred = type { %struct.static_key_false, i32, %struct.delayed_work }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.109 }
%union.anon.109 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.139, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.139 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.77, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.77 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.170, %struct.anon.171, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.flowi = type { %union.anon.38 }
%union.anon.38 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.170 = type { i32, i8, i8, i8 }
%struct.anon.171 = type { i16, i16, i16, i8, i8 }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.129, [0 x i32], %union.anon.130, i16, i16, %union.anon.131, %struct.refcount_struct, [0 x i32], %union.anon.132 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { %struct.hlist_node }
%union.anon.131 = type { i32 }
%union.anon.132 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.133, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.134, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.135, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.133 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.163, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.172, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.172 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.sctp_stream = type { %struct.anon.173, %struct.anon.178, i16, i16, ptr, %union.anon.180, ptr }
%struct.anon.173 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.174, i32, ptr, i8 }
%union.anon.174 = type { i32 }
%struct.anon.178 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.179, i32, i32, i32, i8, i8 }
%union.anon.179 = type { i32 }
%union.anon.180 = type { %struct.anon.182 }
%struct.anon.182 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.168 }
%union.anon.168 = type { ptr, [124 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.sctp6_sock = type { %struct.sctp_sock, %struct.ipv6_pinfo }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.186, i16 }
%union.anon.186 = type { %struct.anon.187 }
%struct.anon.187 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.188 }
%union.anon.188 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.190, i16 }
%struct.anon.190 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.191 }
%union.anon.191 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.165, i32, i32, ptr }
%union.anon.165 = type { ptr }
%struct.anon.39 = type { i16, i16 }
%struct.sctp_sockaddr_entry = type { %struct.list_head, %struct.callback_head, %union.sctp_addr, i8, i8 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.69, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.69 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.72, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.72 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.sctp_paramhdr = type { i16, i16 }
%struct.sctp_ipv6addr_param = type { %struct.sctp_paramhdr, %struct.in6_addr }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@sctp_pf_inet6 = internal global { %struct.sctp_pf, [44 x i8] } { %struct.sctp_pf { ptr @sctp_inet6_event_msgname, ptr @sctp_inet6_skb_msgname, ptr @sctp_inet6_af_supported, ptr @sctp_inet6_cmp_addr, ptr @sctp_inet6_bind_verify, ptr @sctp_inet6_send_verify, ptr @sctp_inet6_supported_addrs, ptr @sctp_v6_create_accept_sk, ptr @sctp_v6_addr_to_user, ptr @sctp_v6_to_sk_saddr, ptr @sctp_v6_to_sk_daddr, ptr @sctp_v6_copy_ip_options, ptr @sctp_af_inet6 }, [44 x i8] zeroinitializer }, align 32
@sctp_af_inet6 = internal global { %struct.sctp_af, [52 x i8] } { %struct.sctp_af { ptr @sctp_v6_xmit, ptr @ipv6_setsockopt, ptr @ipv6_getsockopt, ptr @sctp_v6_get_dst, ptr @sctp_v6_get_saddr, ptr @sctp_v6_copy_addrlist, ptr @sctp_v6_cmp_addr, ptr null, ptr @sctp_v6_from_skb, ptr @sctp_v6_from_sk, ptr @sctp_v6_from_addr_param, ptr @sctp_v6_to_addr_param, ptr @sctp_v6_addr_valid, ptr @sctp_v6_scope, ptr @sctp_v6_inaddr_any, ptr @sctp_v6_is_any, ptr @sctp_v6_available, ptr @sctp_v6_skb_iif, ptr @sctp_v6_is_ce, ptr @sctp_v6_seq_dump_addr, ptr @sctp_v6_ecn_capable, i16 40, i32 28, ptr @sctp_v6_ip_options_len, i16 10, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@sctpv6_prot = external dso_local global %struct.proto, align 4
@sctpv6_seqpacket_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 5, i16 132, ptr @sctpv6_prot, ptr @inet6_seqpacket_ops, i8 2 }, [40 x i8] zeroinitializer }, align 32
@sctpv6_stream_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 1, i16 132, ptr @sctpv6_prot, ptr @inet6_seqpacket_ops, i8 2 }, [40 x i8] zeroinitializer }, align 32
@sctp_inet6addr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @sctp_inet6addr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sctpv6_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @sctp6_rcv, ptr @sctp_v6_err, i32 3 }, [44 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@sctp_v6_copy_ip_options.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/sctp/ipv6.c\00", [16 x i8] zeroinitializer }, align 32
@sctp_v6_copy_ip_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013sctp: %s: Failed to copy ip options\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sctp_v6_copy_ip_options\00", [40 x i8] zeroinitializer }, align 32
@sctp_v6_copy_ip_options._entry_ptr = internal global ptr @sctp_v6_copy_ip_options._entry, section ".printk_index", align 4
@sctp_v6_xmit.__UNIQUE_ID_ddebug572 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.7, ptr @.str.12, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sctp_v6_xmit\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: skb:%p, len:%d, src:%pI6 dst:%pI6\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sctp: %s: skb:%p, len:%d, src:%pI6 dst:%pI6\0A\00", [51 x i8] zeroinitializer }, align 32
@sctp_v6_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@sctp_v6_get_dst.__UNIQUE_ID_ddebug575 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.15, ptr @.str.7, ptr @.str.16, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sctp_v6_get_dst\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: dst=%pI6 \00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp: %s: dst=%pI6 \00", [44 x i8] zeroinitializer }, align 32
@sctp_v6_get_dst.__UNIQUE_ID_ddebug576 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.15, ptr @.str.7, ptr @.str.18, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"src=%pI6 - \00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sctp: src=%pI6 - \00", [46 x i8] zeroinitializer }, align 32
@sctp_v6_get_dst.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_v6_get_dst.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@sctp_v6_get_dst.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_v6_get_dst.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_v6_get_dst.__UNIQUE_ID_ddebug585 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.15, ptr @.str.7, ptr @.str.24, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rt6_dst:%pI6/%d rt6_src:%pI6\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sctp: rt6_dst:%pI6/%d rt6_src:%pI6\0A\00", [60 x i8] zeroinitializer }, align 32
@sctp_v6_get_dst.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.15, ptr @.str.7, ptr @.str.26, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no route\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sctp: no route\0A\00", [16 x i8] zeroinitializer }, align 32
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 4
@rt6_get_cookie.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/ip6_fib.h\00", [42 x i8] zeroinitializer }, align 32
@fib6_get_cookie_safe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_v6_get_saddr.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.29, ptr @.str.7, ptr @.str.30, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sctp_v6_get_saddr\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: asoc:%p dst:%p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sctp: %s: asoc:%p dst:%p\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI6 \00", [26 x i8] zeroinitializer }, align 32
@sctp_v6_ip_options_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inet6_seqpacket_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 10, ptr null, ptr @inet6_release, ptr @inet6_bind, ptr @sctp_inet_connect, ptr @sock_no_socketpair, ptr @inet_accept, ptr @sctp_getname, ptr @sctp_poll, ptr @inet6_ioctl, ptr @sock_gettstamp, ptr @sctp_inet_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet_sendmsg, ptr @inet_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 137]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 137]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4096]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"sctp_pf_inet6\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1145, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"sctp_af_inet6\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1118, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"sctpv6_seqpacket_protosw\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1091, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"sctpv6_stream_protosw\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1098, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"sctp_inet6addr_notifier\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 122, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"sctpv6_protocol\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1112, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 313, i32 9 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1750, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 695, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 723, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 498, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 502, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 231, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 231, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 310, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 320, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 345, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 421, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 426, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"../include/net/ip6_fib.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 306, i32 9 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 449, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 849, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"inet6_seqpacket_ops\00", align 1
@___asan_gen_.148 = private constant [19 x i8] c"../net/sctp/ipv6.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1067, i32 31 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @sctp_v6_copy_ip_options._entry, ptr @sctp_v6_copy_ip_options._entry_ptr, ptr @sctp_pf_inet6, ptr @sctp_af_inet6, ptr @sctpv6_seqpacket_protosw, ptr @sctpv6_stream_protosw, ptr @sctp_inet6addr_notifier, ptr @sctpv6_protocol, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @inet6_seqpacket_ops], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_pf_inet6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_af_inet6 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctpv6_seqpacket_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctpv6_stream_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_inet6addr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctpv6_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_v6_copy_ip_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet6_seqpacket_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_udp_v6_err(ptr nocapture noundef readnone %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %asoc = alloca ptr, align 4
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %asoc) #16
  %5 = ptrtoint ptr %asoc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %asoc, align 4, !annotation !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #16
  %6 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !98
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transport_header, align 2
  %add = add i16 %8, 8
  store i16 %add, ptr %transport_header, align 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %conv.i.i = zext i16 %add to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %call3 = call ptr @sctp_err_lookup(ptr noundef %4, i32 noundef 10, ptr noundef %skb, ptr noundef %add.ptr.i.i, ptr noundef nonnull %asoc, ptr noundef nonnull %t) #16
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 80
  %13 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %if.then.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.then.__in6_dev_get.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %call2.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @.str.2) #16
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.then.__in6_dev_get.exit_crit_edge
  %cmp.not = icmp eq ptr %14, null
  br i1 %cmp.not, label %__in6_dev_get.exit.if.end_crit_edge, label %if.then8, !prof !99

__in6_dev_get.exit.if.end_crit_edge:              ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then8:                                         ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 33, i32 2
  %15 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx = getelementptr [6 x %struct.atomic_t], ptr %16, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #16
  %17 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #16, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.then8, %__in6_dev_get.exit.if.end_crit_edge
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 13
  %18 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx16 = getelementptr [6 x i32], ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx16 to i32
  %21 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 4
  %arrayidx19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %26, %20
  %27 = inttoptr i32 %add20 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add21 = add i32 %29, 1
  store i32 %add21, ptr %27, align 4
  br label %cleanup

if.end26:                                         ; preds = %entry
  %30 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %transport_header, align 2
  %sub = add i16 %31, -8
  store i16 %sub, ptr %transport_header, align 2
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %35 to i32
  %add.ptr.i = getelementptr i8, ptr %33, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 -8
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr, align 4
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i8 %37, label %if.end26.if.end42_crit_edge [
    i8 -119, label %if.then34
    i8 2, label %if.then40
  ]

if.end26.if.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %t, align 4
  call void @sctp_err_finish(ptr noundef nonnull %call3, ptr noundef %40) #16
  br label %cleanup

if.then40:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %icmp6_dataun = getelementptr i8, ptr %add.ptr.i, i32 -4
  %41 = ptrtoint ptr %icmp6_dataun to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %icmp6_dataun, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end26.if.end42_crit_edge
  %info.0 = phi i32 [ %42, %if.then40 ], [ 0, %if.end26.if.end42_crit_edge ]
  %43 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %t, align 4
  %icmp6_code = getelementptr i8, ptr %add.ptr.i, i32 -7
  %45 = ptrtoint ptr %icmp6_code to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %icmp6_code, align 1
  call fastcc void @sctp_v6_err_handle(ptr noundef %44, ptr noundef %skb, i8 noundef zeroext %37, i8 noundef zeroext %46, i32 noundef %info.0)
  %47 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %t, align 4
  call void @sctp_err_finish(ptr noundef nonnull %call3, ptr noundef %48) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then34, %if.end
  %retval.0 = phi i32 [ 0, %if.then34 ], [ 1, %if.end42 ], [ -2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %asoc) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_err_lookup(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_err_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_v6_err_handle(ptr noundef %t, ptr noundef %skb, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %info) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  %sk2 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  %5 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %type, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 4, label %sw.bb3
    i8 -119, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %7 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sw.bb.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

sw.bb.inet6_sk.exit.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %sw.bb.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %9, %cond.true.i.i ], [ null, %sw.bb.inet6_sk.exit.i_crit_edge ]
  %pmtudisc.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %pmtudisc.i, align 2
  %11 = and i16 %bf.load.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %11)
  %cmp.not.i = icmp eq i16 %11, 4096
  br i1 %cmp.not.i, label %inet6_sk.exit.i.cleanup_crit_edge, label %land.rhs.i

inet6_sk.exit.i.cleanup_crit_edge:                ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs.i:                                       ; preds = %inet6_sk.exit.i
  %12 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i12.i = zext i8 %13 to i32
  %shl.i.i13.i = shl nuw i32 1, %conv.i.i12.i
  %and.i.i14.i = and i32 %shl.i.i13.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14.i)
  %tobool.i.not.i15.i = icmp eq i32 %and.i.i14.i, 0
  br i1 %tobool.i.not.i15.i, label %land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge, label %cond.true.i17.i

land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6_sk_accept_pmtu.exit

cond.true.i17.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i16.i = getelementptr inbounds %struct.inet_sock, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %pinet6.i16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pinet6.i16.i, align 8
  br label %ip6_sk_accept_pmtu.exit

ip6_sk_accept_pmtu.exit:                          ; preds = %cond.true.i17.i, %land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge
  %cond.i18.i = phi ptr [ %15, %cond.true.i17.i ], [ null, %land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge ]
  %pmtudisc3.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i18.i, i32 0, i32 10
  %16 = ptrtoint ptr %pmtudisc3.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load4.i = load i16, ptr %pmtudisc3.i, align 2
  %17 = and i16 %bf.load4.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %17)
  %cmp8.i.not = icmp eq i16 %17, 5120
  br i1 %cmp8.i.not, label %ip6_sk_accept_pmtu.exit.cleanup_crit_edge, label %if.then

ip6_sk_accept_pmtu.exit.cleanup_crit_edge:        ; preds = %ip6_sk_accept_pmtu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %ip6_sk_accept_pmtu.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @sctp_icmp_frag_needed(ptr noundef %3, ptr noundef %1, ptr noundef %t, i32 noundef %info) #16
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %code)
  %cmp = icmp eq i8 %code, 1
  br i1 %cmp, label %if.then6, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @sctp_icmp_proto_unreachable(ptr noundef %3, ptr noundef %1, ptr noundef %t) #16
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @sctp_icmp_redirect(ptr noundef %3, ptr noundef %t, ptr noundef %skb) #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %19 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sw.epilog.inet6_sk.exit_crit_edge, label %cond.true.i

sw.epilog.inet6_sk.exit_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %sw.epilog.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %21, %cond.true.i ], [ null, %sw.epilog.inet6_sk.exit_crit_edge ]
  %call10 = call i32 @icmpv6_err_convert(i8 noundef zeroext %type, i8 noundef zeroext %code, ptr noundef nonnull %err) #16
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 3
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %inet6_sk.exit.sock_owned_by_user.exit_crit_edge

inet6_sk.exit.sock_owned_by_user.exit_crit_edge:  ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %inet6_sk.exit
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !101

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1750, i32 noundef 9, ptr noundef null) #16
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %inet6_sk.exit.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not = icmp eq i32 %24, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %sock_owned_by_user.exit.if.else_crit_edge

sock_owned_by_user.exit.if.else_crit_edge:        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %sock_owned_by_user.exit
  %recverr = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %25 = ptrtoint ptr %recverr to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %recverr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then13

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err, align 4
  %sk_err = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %28 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sk_err, align 4
  call void @sk_error_report(ptr noundef %3) #16
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sock_owned_by_user.exit.if.else_crit_edge
  %29 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err, align 4
  %sk_err_soft = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 52
  %31 = ptrtoint ptr %sk_err_soft to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sk_err_soft, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %sw.bb8, %if.then6, %if.then, %ip6_sk_accept_pmtu.exit.cleanup_crit_edge, %inet6_sk.exit.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_v6_pf_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sctp_register_pf(ptr noundef nonnull @sctp_pf_inet6, i16 noundef zeroext 10) #16
  %call1 = tail call i32 @sctp_register_af(ptr noundef nonnull @sctp_af_inet6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_register_pf(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_register_af(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_v6_pf_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet6, i32 0, i32 25)) #16
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = load ptr, ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet6, i32 0, i32 25, i32 1), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet6, i32 0, i32 25), align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev1.i.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %1, ptr %0, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  store ptr inttoptr (i32 256 to ptr), ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet6, i32 0, i32 25), align 4
  store ptr inttoptr (i32 290 to ptr), ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet6, i32 0, i32 25, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_v6_protosw_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @sctpv6_prot, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @sctpv6_seqpacket_protosw) #16
  %call2 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @sctpv6_stream_protosw) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_v6_protosw_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @sctpv6_seqpacket_protosw) #16
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @sctpv6_stream_protosw) #16
  tail call void @proto_unregister(ptr noundef nonnull @sctpv6_prot) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_v6_add_protocol() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_inet6addr_notifier(ptr noundef nonnull @sctp_inet6addr_notifier) #16
  %call1 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @sctpv6_protocol, i8 noundef zeroext -124) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %. = select i1 %cmp, i32 -11, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_v6_del_protocol() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_del_protocol(ptr noundef nonnull @sctpv6_protocol, i8 noundef zeroext -124) #16
  %call1 = tail call i32 @unregister_inet6addr_notifier(ptr noundef nonnull @sctp_inet6addr_notifier) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_icmp_frag_needed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_icmp_proto_unreachable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_icmp_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_err_convert(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_inet6_event_msgname(ptr nocapture noundef readonly %event, ptr noundef %msgname, ptr nocapture noundef writeonly %addrlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msgname, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %event, align 1
  %primary_addr = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %primary_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %primary_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp = icmp eq i16 %3, 2
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %msgname to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %msgname, align 4
  %port = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %port, align 2
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 1
  %7 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %sin_port, align 2
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 2
  %sin_addr5 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %sin_addr5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr5, align 4
  %10 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sin_addr, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %msgname to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 10, ptr %msgname, align 4
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 2
  %12 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sin6_flowinfo, align 4
  %sin6_addr = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 5, i32 0, i32 3
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #16
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else.if.end11_crit_edge, label %if.then7

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %sin6_scope_id = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 5, i32 0, i32 4
  %13 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sin6_scope_id, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.else.if.end11_crit_edge
  %.sink = phi i32 [ %14, %if.then7 ], [ 0, %if.else.if.end11_crit_edge ]
  %15 = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %15, align 4
  %port13 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %port13 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %port13, align 2
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 1
  %19 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %sin6_port, align 2
  %sin6_addr14 = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %sin6_addr14, ptr %sin6_addr, i32 16)
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %if.then3
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk, align 4
  %v4mapped.i = getelementptr inbounds %struct.sctp_sock, ptr %22, i32 0, i32 37
  %23 = ptrtoint ptr %v4mapped.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %v4mapped.i, align 8
  %24 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i = icmp eq i16 %24, 0
  %25 = ptrtoint ptr %msgname to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %msgname, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %26)
  %cmp.i = icmp eq i16 %26, 2
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.sctp_v6_addr_to_user.exit_crit_edge

if.then.i.sctp_v6_addr_to_user.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sctp_v6_addr_to_user.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %sin_addr.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 2
  %27 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sin_addr.i.i, align 4
  %sin6_addr.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3
  %arrayidx.i.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i.i, align 4
  %30 = ptrtoint ptr %msgname to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 10, ptr %msgname, align 4
  store i32 0, ptr %sin_addr.i.i, align 4
  %sin6_scope_id.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 4
  %31 = ptrtoint ptr %sin6_scope_id.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %sin6_scope_id.i.i, align 4
  %32 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sin6_addr.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx6.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65535, ptr %arrayidx9.i.i, align 4
  br label %if.end10thread-pre-split.i

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %26)
  %cmp5.i = icmp eq i16 %26, 10
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3
  %35 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sin6_addr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %38, %36
  %arrayidx4.i.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %40, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.end10.thread.i, label %land.lhs.true.i.if.end10thread-pre-split.i_crit_edge

land.lhs.true.i.if.end10thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10thread-pre-split.i

if.end10.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %msgname to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 2, ptr %msgname, align 4
  %arrayidx.i23.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i23.i, align 4
  %sin_addr.i24.i = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 2
  %44 = ptrtoint ptr %sin_addr.i24.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sin_addr.i24.i, align 4
  br label %if.then15.i

if.end10thread-pre-split.i:                       ; preds = %land.lhs.true.i.if.end10thread-pre-split.i_crit_edge, %if.then2.i
  %45 = ptrtoint ptr %msgname to i32
  call void @__asan_load2_noabort(i32 %45)
  %.pr.i = load i16, ptr %msgname, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10thread-pre-split.i, %if.else.i.if.end10.i_crit_edge
  %46 = phi i16 [ %.pr.i, %if.end10thread-pre-split.i ], [ %26, %if.else.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %46)
  %cmp13.i = icmp eq i16 %46, 2
  br i1 %cmp13.i, label %if.end10.i.if.then15.i_crit_edge, label %if.end10.i.sctp_v6_addr_to_user.exit_crit_edge

if.end10.i.sctp_v6_addr_to_user.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sctp_v6_addr_to_user.exit

if.end10.i.if.then15.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end10.i.if.then15.i_crit_edge, %if.end10.thread.i
  %__pad.i = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 3
  %47 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 0, ptr %__pad.i, align 4
  br label %sctp_v6_addr_to_user.exit

sctp_v6_addr_to_user.exit:                        ; preds = %if.then15.i, %if.end10.i.sctp_v6_addr_to_user.exit_crit_edge, %if.then.i.sctp_v6_addr_to_user.exit_crit_edge
  %retval.0.i = phi i32 [ 16, %if.then15.i ], [ 28, %if.end10.i.sctp_v6_addr_to_user.exit_crit_edge ], [ 28, %if.then.i.sctp_v6_addr_to_user.exit_crit_edge ]
  %48 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i, ptr %addrlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_v6_addr_to_user.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_inet6_skb_msgname(ptr nocapture noundef readonly %skb, ptr noundef %msgname, ptr nocapture noundef writeonly %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msgname, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i38 = zext i16 %5 to i32
  %add.ptr.i.i39 = getelementptr i8, ptr %1, i32 %conv.i.i38
  %6 = ptrtoint ptr %add.ptr.i.i39 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr.i.i39, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %msgname to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %msgname, align 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 1
  %10 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %sin_port, align 2
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i42 = zext i16 %14 to i32
  %add.ptr.i.i43 = getelementptr i8, ptr %12, i32 %conv.i.i42
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i43, i32 0, i32 8
  %15 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %saddr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 2
  %17 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sin_addr, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  %18 = ptrtoint ptr %msgname to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 10, ptr %msgname, align 4
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 2
  %19 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sin6_flowinfo, align 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 1
  %22 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %25 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i46 = zext i16 %26 to i32
  %add.ptr.i.i47 = getelementptr i8, ptr %24, i32 %conv.i.i46
  %saddr7 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i47, i32 0, i32 5
  %27 = call ptr @memcpy(ptr %sin6_addr, ptr %saddr7, i32 16)
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #16
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %28 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cb.i, align 8
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 4
  %30 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sin6_scope_id, align 4
  br label %if.end16

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %sin6_scope_id14 = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 4
  %31 = ptrtoint ptr %sin6_scope_id14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %sin6_scope_id14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11, %if.then3
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %v4mapped.i = getelementptr inbounds %struct.sctp_sock, ptr %34, i32 0, i32 37
  %35 = ptrtoint ptr %v4mapped.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i = load i16, ptr %v4mapped.i, align 8
  %36 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i = icmp eq i16 %36, 0
  %37 = ptrtoint ptr %msgname to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %msgname, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %38)
  %cmp.i = icmp eq i16 %38, 2
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.sctp_v6_addr_to_user.exit_crit_edge

if.then.i.sctp_v6_addr_to_user.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sctp_v6_addr_to_user.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %sin_addr.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 2
  %39 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sin_addr.i.i, align 4
  %sin6_addr.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3
  %arrayidx.i.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx.i.i, align 4
  %42 = ptrtoint ptr %msgname to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 10, ptr %msgname, align 4
  store i32 0, ptr %sin_addr.i.i, align 4
  %sin6_scope_id.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 4
  %43 = ptrtoint ptr %sin6_scope_id.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %sin6_scope_id.i.i, align 4
  %44 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %sin6_addr.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx6.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 65535, ptr %arrayidx9.i.i, align 4
  br label %if.end10thread-pre-split.i

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %38)
  %cmp5.i = icmp eq i16 %38, 10
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3
  %47 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sin6_addr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %50, %48
  %arrayidx4.i.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %52, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.end10.thread.i, label %land.lhs.true.i.if.end10thread-pre-split.i_crit_edge

land.lhs.true.i.if.end10thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10thread-pre-split.i

if.end10.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %msgname to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 2, ptr %msgname, align 4
  %arrayidx.i23.i = getelementptr %struct.sockaddr_in6, ptr %msgname, i32 0, i32 3, i32 0, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i23.i, align 4
  %sin_addr.i24.i = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 2
  %56 = ptrtoint ptr %sin_addr.i24.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %sin_addr.i24.i, align 4
  br label %if.then15.i

if.end10thread-pre-split.i:                       ; preds = %land.lhs.true.i.if.end10thread-pre-split.i_crit_edge, %if.then2.i
  %57 = ptrtoint ptr %msgname to i32
  call void @__asan_load2_noabort(i32 %57)
  %.pr.i = load i16, ptr %msgname, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10thread-pre-split.i, %if.else.i.if.end10.i_crit_edge
  %58 = phi i16 [ %.pr.i, %if.end10thread-pre-split.i ], [ %38, %if.else.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %58)
  %cmp13.i = icmp eq i16 %58, 2
  br i1 %cmp13.i, label %if.end10.i.if.then15.i_crit_edge, label %if.end10.i.sctp_v6_addr_to_user.exit_crit_edge

if.end10.i.sctp_v6_addr_to_user.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sctp_v6_addr_to_user.exit

if.end10.i.if.then15.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end10.i.if.then15.i_crit_edge, %if.end10.thread.i
  %__pad.i = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 3
  %59 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 0, ptr %__pad.i, align 4
  br label %sctp_v6_addr_to_user.exit

sctp_v6_addr_to_user.exit:                        ; preds = %if.then15.i, %if.end10.i.sctp_v6_addr_to_user.exit_crit_edge, %if.then.i.sctp_v6_addr_to_user.exit_crit_edge
  %retval.0.i = phi i32 [ 16, %if.then15.i ], [ 28, %if.end10.i.sctp_v6_addr_to_user.exit_crit_edge ], [ 28, %if.then.i.sctp_v6_addr_to_user.exit_crit_edge ]
  %60 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i, ptr %addr_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_v6_addr_to_user.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_inet6_af_supported(i16 noundef zeroext %family, ptr nocapture noundef readonly %sp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %family, label %entry.sw.default_crit_edge [
    i16 10, label %entry.return_crit_edge
    i16 2, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default

sw.bb1:                                           ; preds = %entry
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sp, i32 0, i32 5
  %1 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %2 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %sw.bb1.return_crit_edge, label %sw.bb1.sw.default_crit_edge

sw.bb1.sw.default_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.default:                                       ; preds = %sw.bb1.sw.default_crit_edge, %entry.sw.default_crit_edge
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %entry.return_crit_edge ], [ 1, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_inet6_cmp_addr(ptr noundef %addr1, ptr noundef %addr2, ptr noundef %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr1, align 4
  %call1 = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %1) #16
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr2, align 4
  %call3 = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %3) #16
  %tobool.not = icmp eq ptr %call1, null
  %tobool4.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %opt, i32 0, i32 5
  %4 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %5 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %cmp.not = icmp eq ptr %call1, %call3
  %or.cond46 = select i1 %tobool5.not, i1 true, i1 %cmp.not
  br i1 %or.cond46, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @sctp_is_any(ptr noundef %opt, ptr noundef %addr1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end8
  %call12 = tail call i32 @sctp_is_any(ptr noundef %opt, ptr noundef %addr2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  %6 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp18 = icmp eq i16 %7, 2
  br i1 %cmp18, label %land.lhs.true20, label %if.end15.if.end30_crit_edge

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.lhs.true20:                                  ; preds = %if.end15
  %8 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp23 = icmp eq i16 %9, 2
  br i1 %cmp23, label %if.then25, label %land.lhs.true20.if.end30_crit_edge

land.lhs.true20.if.end30_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then25:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr1, i32 0, i32 2
  %10 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sin_addr, align 4
  %sin_addr26 = getelementptr inbounds %struct.sockaddr_in, ptr %addr2, i32 0, i32 2
  %12 = ptrtoint ptr %sin_addr26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sin_addr26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp28 = icmp eq i32 %11, %13
  %conv29 = zext i1 %cmp28 to i32
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true20.if.end30_crit_edge, %if.end15.if.end30_crit_edge
  %call31 = tail call fastcc i32 @__sctp_v6_cmp_addr(ptr noundef %addr1, ptr noundef %addr2)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then25, %lor.lhs.false11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv29, %if.then25 ], [ %call31, %if.end30 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %lor.lhs.false11.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_inet6_bind_verify(ptr noundef %opt, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp.not = icmp eq i16 %1, 10
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %1) #16
  br label %if.end26

if.else:                                          ; preds = %entry
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %call.i43 = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #16
  %and = and i32 %call.i43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.cleanup22_crit_edge, label %if.then4

if.else.cleanup22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup22

if.then4:                                         ; preds = %if.else
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 4
  %2 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.then4.cleanup28_crit_edge, label %if.end

if.then4.cleanup28_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

if.end:                                           ; preds = %if.then4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %opt, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %10 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sin6_scope_id, align 4
  %call9 = tail call ptr @dev_get_by_index_rcu(ptr noundef %5, i32 noundef %11) #16
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %rcu_read_lock.exit.if.then18_crit_edge, label %lor.lhs.false

rcu_read_lock.exit.if.then18_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %ip_nonlocal_bind.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 36, i32 1, i32 25
  %12 = ptrtoint ptr %ip_nonlocal_bind.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ip_nonlocal_bind.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i44 = icmp eq i8 %13, 0
  br i1 %tobool.not.i44, label %lor.lhs.false.i, label %lor.lhs.false.if.end19_crit_edge

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %freebind.i = getelementptr inbounds %struct.inet_sock, ptr %opt, i32 0, i32 12
  %14 = ptrtoint ptr %freebind.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %freebind.i, align 8
  %15 = and i16 %bf.load.i, 9216
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %.not = icmp eq i16 %15, 0
  br i1 %.not, label %lor.lhs.false14, label %lor.lhs.false.i.if.end19_crit_edge

lor.lhs.false.i.if.end19_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

lor.lhs.false14:                                  ; preds = %lor.lhs.false.i
  %call16 = tail call i32 @ipv6_chk_addr(ptr noundef %5, ptr noundef %sin6_addr, ptr noundef nonnull %call9, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false14.if.then18_crit_edge, label %lor.lhs.false14.if.end19_crit_edge

lor.lhs.false14.if.end19_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

lor.lhs.false14.if.then18_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false14.if.then18_crit_edge, %rcu_read_lock.exit.if.then18_crit_edge
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i45, label %if.then18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

if.then18.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %if.then18
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %if.then18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %16 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i52 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup28

if.end19:                                         ; preds = %lor.lhs.false14.if.end19_crit_edge, %lor.lhs.false.i.if.end19_crit_edge, %lor.lhs.false.if.end19_crit_edge
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i54, label %if.end19.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true.i57

if.end19.rcu_read_unlock.exit64_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit64

land.lhs.true.i57:                                ; preds = %if.end19
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit64

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit64

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit64

rcu_read_unlock.exit64:                           ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, %if.end19.rcu_read_unlock.exit64_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %20 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i61 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i63 = add i32 %23, -1
  store volatile i32 %sub.i.i.i63, ptr %preempt_count.i.i.i.i62, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup22

cleanup22:                                        ; preds = %rcu_read_unlock.exit64, %if.else.cleanup22_crit_edge
  %pf = getelementptr inbounds %struct.sctp_sock, ptr %opt, i32 0, i32 2
  %24 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pf, align 4
  %af21 = getelementptr inbounds %struct.sctp_pf, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %af21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %af21, align 4
  br label %if.end26

if.end26:                                         ; preds = %cleanup22, %if.then
  %af.1 = phi ptr [ %call, %if.then ], [ %27, %cleanup22 ]
  %available = getelementptr inbounds %struct.sctp_af, ptr %af.1, i32 0, i32 16
  %28 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %available, align 4
  %call27 = tail call i32 %29(ptr noundef %addr, ptr noundef %opt) #16
  br label %cleanup28

cleanup28:                                        ; preds = %if.end26, %rcu_read_unlock.exit, %if.then4.cleanup28_crit_edge
  %retval.3 = phi i32 [ %call27, %if.end26 ], [ 0, %if.then4.cleanup28_crit_edge ], [ 0, %rcu_read_unlock.exit ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_inet6_send_verify(ptr nocapture noundef readonly %opt, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp.not = icmp eq i16 %1, 10
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %1) #16
  br label %if.end16

if.else:                                          ; preds = %entry
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %call.i25 = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #16
  %and = and i32 %call.i25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.then4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %if.else
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 4
  %2 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.then4.cleanup19_crit_edge, label %if.end

if.then4.cleanup19_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup19

if.end:                                           ; preds = %if.then4
  %4 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %opt, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %10 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sin6_scope_id, align 4
  %call9 = tail call ptr @dev_get_by_index_rcu(ptr noundef %9, i32 noundef %11) #16
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i26, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %rcu_read_lock.exit
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %12 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i33 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %rcu_read_unlock.exit.cleanup19_crit_edge, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

rcu_read_unlock.exit.cleanup19_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup19

cleanup:                                          ; preds = %rcu_read_unlock.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %pf = getelementptr inbounds %struct.sctp_sock, ptr %opt, i32 0, i32 2
  %16 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pf, align 4
  %af14 = getelementptr inbounds %struct.sctp_pf, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %af14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %af14, align 4
  br label %if.end16

if.end16:                                         ; preds = %cleanup, %if.then
  %af.1 = phi ptr [ %call, %if.then ], [ %19, %cleanup ]
  %cmp17 = icmp ne ptr %af.1, null
  %conv18 = zext i1 %cmp17 to i32
  br label %cleanup19

cleanup19:                                        ; preds = %if.end16, %rcu_read_unlock.exit.cleanup19_crit_edge, %if.then4.cleanup19_crit_edge
  %retval.1 = phi i32 [ %conv18, %if.end16 ], [ 0, %if.then4.cleanup19_crit_edge ], [ 0, %rcu_read_unlock.exit.cleanup19_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_inet6_supported_addrs(ptr noundef readonly %opt, ptr nocapture noundef writeonly %types) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %types to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 6, ptr %types, align 2
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %opt, i32 0, i32 5
  %1 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %2 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx2 = getelementptr i16, ptr %types, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5, ptr %arrayidx2, align 2
  br label %return

return:                                           ; preds = %if.then, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ 2, %if.then ], [ 1, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sctp_v6_create_accept_sk(ptr noundef %sk, ptr noundef %asoc, i1 noundef zeroext %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %6 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_prot, align 8
  %conv = zext i1 %kern to i32
  %call2 = tail call ptr @sk_alloc(ptr noundef %5, i32 noundef 10, i32 noundef 3264, ptr noundef %7, i32 noundef %conv) #16
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %inet6_sk.exit.out_crit_edge, label %if.end

inet6_sk.exit.out_crit_edge:                      ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %inet6_sk.exit
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call2) #16
  tail call void @sctp_copy_sock(ptr noundef nonnull %call2, ptr noundef %sk, ptr noundef %asoc) #16
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i44 = and i32 %10, -257
  store i32 %and.i.i44, ptr %8, align 4
  %inet6 = getelementptr inbounds %struct.sctp6_sock, ptr %call2, i32 0, i32 1
  %pinet6 = getelementptr inbounds %struct.inet_sock, ptr %call2, i32 0, i32 1
  %11 = ptrtoint ptr %pinet6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %inet6, ptr %pinet6, align 8
  %v4mapped = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 37
  %12 = ptrtoint ptr %v4mapped to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %v4mapped, align 8
  %bf.clear = and i16 %bf.load, 1024
  %v4mapped7 = getelementptr inbounds %struct.sctp_sock, ptr %call2, i32 0, i32 37
  %13 = ptrtoint ptr %v4mapped7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load8 = load i16, ptr %v4mapped7, align 8
  %bf.clear9 = and i16 %bf.load8, -1025
  %bf.set = or i16 %bf.clear9, %bf.clear
  store i16 %bf.set, ptr %v4mapped7, align 8
  %skc_state.i.i45 = getelementptr inbounds %struct.sock_common, ptr %call2, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state.i.i45 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state.i.i45, align 2
  %conv.i.i46 = zext i8 %15 to i32
  %shl.i.i47 = shl nuw i32 1, %conv.i.i46
  %and.i.i48 = and i32 %shl.i.i47, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48)
  %tobool.i.not.i49 = icmp eq i32 %and.i.i48, 0
  %spec.select = select i1 %tobool.i.not.i49, ptr null, ptr %inet6
  %16 = call ptr @memcpy(ptr %spec.select, ptr %cond.i, i32 112)
  %ipv6_mc_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select, i32 0, i32 15
  %17 = ptrtoint ptr %ipv6_mc_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ipv6_mc_list, align 4
  %ipv6_ac_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select, i32 0, i32 16
  %18 = ptrtoint ptr %ipv6_ac_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ipv6_ac_list, align 4
  %ipv6_fl_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select, i32 0, i32 17
  %19 = ptrtoint ptr %ipv6_fl_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ipv6_fl_list, align 4
  tail call void @sctp_v6_copy_ip_options(ptr noundef %sk, ptr noundef nonnull %call2)
  %primary_addr = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %primary_addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %primary_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %21)
  %cmp.i = icmp eq i16 %21, 2
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %call2, i32 0, i32 10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skc_v6_daddr.i, align 8
  %arrayidx5.i = getelementptr %struct.sock_common, ptr %call2, i32 0, i32 10, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx5.i, align 4
  %arrayidx9.i = getelementptr %struct.sock_common, ptr %call2, i32 0, i32 10, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65535, ptr %arrayidx9.i, align 8
  %sin_addr.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 5, i32 0, i32 2
  %25 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sin_addr.i, align 4
  %arrayidx13.i = getelementptr %struct.sock_common, ptr %call2, i32 0, i32 10, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx13.i, align 4
  br label %sctp_v6_to_sk_daddr.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sin6_addr.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 5, i32 0, i32 3
  %28 = call ptr @memcpy(ptr %skc_v6_daddr.i, ptr %sin6_addr.i, i32 16)
  br label %sctp_v6_to_sk_daddr.exit

sctp_v6_to_sk_daddr.exit:                         ; preds = %if.else.i, %if.then.i
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %call2, i32 0, i32 11
  %skc_v6_rcv_saddr13 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %29 = call ptr @memcpy(ptr %skc_v6_rcv_saddr, ptr %skc_v6_rcv_saddr13, i32 16)
  %skc_prot15 = getelementptr inbounds %struct.sock_common, ptr %call2, i32 0, i32 8
  %30 = ptrtoint ptr %skc_prot15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_prot15, align 8
  %init = getelementptr inbounds %struct.proto, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init, align 4
  %call16 = tail call i32 %33(ptr noundef nonnull %call2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %sctp_v6_to_sk_daddr.exit.out_crit_edge, label %if.then18

sctp_v6_to_sk_daddr.exit.out_crit_edge:           ; preds = %sctp_v6_to_sk_daddr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then18:                                        ; preds = %sctp_v6_to_sk_daddr.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @sk_common_release(ptr noundef nonnull %call2) #16
  br label %out

out:                                              ; preds = %if.then18, %sctp_v6_to_sk_daddr.exit.out_crit_edge, %inet6_sk.exit.out_crit_edge
  %newsk.0 = phi ptr [ null, %if.then18 ], [ %call2, %sctp_v6_to_sk_daddr.exit.out_crit_edge ], [ null, %inet6_sk.exit.out_crit_edge ]
  ret ptr %newsk.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_v6_addr_to_user(ptr nocapture noundef readonly %sp, ptr nocapture noundef %addr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %v4mapped = getelementptr inbounds %struct.sctp_sock, ptr %sp, i32 0, i32 37
  %0 = ptrtoint ptr %v4mapped to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %v4mapped, align 8
  %1 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp = icmp eq i16 %3, 2
  br i1 %cmp, label %if.then2, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sin_addr.i, align 4
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 10, ptr %addr, align 4
  store i32 0, ptr %sin_addr.i, align 4
  %sin6_scope_id.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 4
  %8 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sin6_scope_id.i, align 4
  %9 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sin6_addr.i, align 4
  %arrayidx6.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx6.i, align 4
  %arrayidx9.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65535, ptr %arrayidx9.i, align 4
  br label %if.end10thread-pre-split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp5 = icmp eq i16 %3, 10
  br i1 %cmp5, label %land.lhs.true, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true:                                    ; preds = %if.else
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %12 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %15, %13
  %arrayidx4.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %17, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %if.end10.thread, label %land.lhs.true.if.end10thread-pre-split_crit_edge

land.lhs.true.if.end10thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10thread-pre-split

if.end10.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %addr, align 4
  %arrayidx.i23 = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i23, align 4
  %sin_addr.i24 = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %21 = ptrtoint ptr %sin_addr.i24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sin_addr.i24, align 4
  br label %if.then15

if.end10thread-pre-split:                         ; preds = %land.lhs.true.if.end10thread-pre-split_crit_edge, %if.then2
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %22)
  %.pr = load i16, ptr %addr, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %if.else.if.end10_crit_edge
  %23 = phi i16 [ %.pr, %if.end10thread-pre-split ], [ %3, %if.else.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %23)
  %cmp13 = icmp eq i16 %23, 2
  br i1 %cmp13, label %if.end10.if.then15_crit_edge, label %if.end10.return_crit_edge

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end10.if.then15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15

if.then15:                                        ; preds = %if.end10.if.then15_crit_edge, %if.end10.thread
  %__pad = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 3
  %24 = ptrtoint ptr %__pad to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %__pad, align 4
  br label %return

return:                                           ; preds = %if.then15, %if.end10.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 16, %if.then15 ], [ 28, %if.end10.return_crit_edge ], [ 28, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v6_to_sk_saddr(ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %sk) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %skc_v6_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %skc_v6_rcv_saddr, align 8
  %arrayidx5 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx5, align 4
  %arrayidx9 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65535, ptr %arrayidx9, align 8
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %5 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sin_addr, align 4
  %arrayidx13 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx13, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %skc_v6_rcv_saddr, ptr %sin6_addr, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v6_to_sk_daddr(ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %sk) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %skc_v6_daddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %skc_v6_daddr, align 8
  %arrayidx5 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx5, align 4
  %arrayidx9 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65535, ptr %arrayidx9, align 8
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %5 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sin_addr, align 4
  %arrayidx13 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx13, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %skc_v6_daddr, ptr %sin6_addr, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_v6_copy_ip_options(ptr noundef %sk, ptr noundef %newsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %skc_state.i.i42 = getelementptr inbounds %struct.sock_common, ptr %newsk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state.i.i42 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i.i42, align 2
  %conv.i.i43 = zext i8 %5 to i32
  %shl.i.i44 = shl nuw i32 1, %conv.i.i43
  %and.i.i45 = and i32 %shl.i.i44, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45)
  %tobool.i.not.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %tobool.i.not.i46, label %inet6_sk.exit.inet6_sk.exit50_crit_edge, label %cond.true.i48

inet6_sk.exit.inet6_sk.exit50_crit_edge:          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_sk.exit50

cond.true.i48:                                    ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i47 = getelementptr inbounds %struct.inet_sock, ptr %newsk, i32 0, i32 1
  %6 = ptrtoint ptr %pinet6.i47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinet6.i47, align 8
  br label %inet6_sk.exit50

inet6_sk.exit50:                                  ; preds = %cond.true.i48, %inet6_sk.exit.inet6_sk.exit50_crit_edge
  %cond.i49 = phi ptr [ %7, %cond.true.i48 ], [ null, %inet6_sk.exit.inet6_sk.exit50_crit_edge ]
  %8 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %inet6_sk.exit50.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

inet6_sk.exit50.rcu_read_lock.exit_crit_edge:     ; preds = %inet6_sk.exit50
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %inet6_sk.exit50
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %inet6_sk.exit50.rcu_read_lock.exit_crit_edge
  %opt2 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %12 = ptrtoint ptr %opt2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %opt2, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @sctp_v6_copy_ip_options.__warned, align 1
  br i1 %.b41, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sctp_v6_copy_ip_options.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 498, ptr noundef nonnull @.str.2) #16
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %do.end10.do.body29_crit_edge, label %if.then13

do.end10.do.body29_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body29

if.then13:                                        ; preds = %do.end10
  %call14 = tail call ptr @ipv6_dup_options(ptr noundef %newsk, ptr noundef nonnull %13) #16
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.then13.do.body29_crit_edge

if.then13.do.body29_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body29

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #19
  br label %do.body29

do.body29:                                        ; preds = %do.end19, %if.then13.do.body29_crit_edge, %do.end10.do.body29_crit_edge
  %opt.0 = phi ptr [ %call14, %if.then13.do.body29_crit_edge ], [ null, %do.end19 ], [ null, %do.end10.do.body29_crit_edge ]
  %opt30 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i49, i32 0, i32 18
  %14 = ptrtoint ptr %opt30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %opt.0, ptr %opt30, align 4
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i51, label %do.body29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i54

do.body29.rcu_read_unlock.exit_crit_edge:         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i54:                                ; preds = %do.body29
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, %do.body29.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %15 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i58 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i59, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_v6_skb_iif(ptr nocapture noundef readonly %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb, align 8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_get_af_specific(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_is_any(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sctp_v6_cmp_addr(ptr noundef %addr1, ptr nocapture noundef readonly %addr2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr1, align 4
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not = icmp eq i16 %1, %3
  br i1 %cmp.not, label %if.end42, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp6 = icmp eq i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp10 = icmp eq i16 %3, 10
  %or.cond = select i1 %cmp6, i1 %cmp10, i1 false
  br i1 %or.cond, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %if.then
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr2, i32 0, i32 3
  %4 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr %struct.sockaddr_in6, ptr %addr2, i32 0, i32 3, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %7, %5
  %arrayidx4.i = getelementptr %struct.sockaddr_in6, ptr %addr2, i32 0, i32 3, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %9, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %land.lhs.true14, label %land.lhs.true12.if.end41_crit_edge

land.lhs.true12.if.end41_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %arrayidx = getelementptr %struct.sockaddr_in6, ptr %addr2, i32 0, i32 3, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr1, i32 0, i32 2
  %12 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sin_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp16 = icmp eq i32 %11, %13
  br i1 %cmp16, label %land.lhs.true14.return_crit_edge, label %land.lhs.true14.if.end41_crit_edge

land.lhs.true14.if.end41_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

land.lhs.true14.return_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp21 = icmp eq i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp26 = icmp eq i16 %1, 10
  %or.cond92 = select i1 %cmp21, i1 %cmp26, i1 false
  br i1 %or.cond92, label %land.lhs.true28, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

land.lhs.true28:                                  ; preds = %if.end
  %sin6_addr29 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr1, i32 0, i32 3
  %14 = ptrtoint ptr %sin6_addr29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sin6_addr29, align 4
  %arrayidx2.i81 = getelementptr %struct.sockaddr_in6, ptr %addr1, i32 0, i32 3, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx2.i81 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i81, align 4
  %or.i82 = or i32 %17, %15
  %arrayidx4.i83 = getelementptr %struct.sockaddr_in6, ptr %addr1, i32 0, i32 3, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx4.i83 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i83, align 4
  %xor.i84 = xor i32 %19, 65535
  %or5.i85 = or i32 %or.i82, %xor.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i85)
  %cmp.i86 = icmp eq i32 %or5.i85, 0
  br i1 %cmp.i86, label %land.lhs.true32, label %land.lhs.true28.if.end41_crit_edge

land.lhs.true28.if.end41_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %arrayidx35 = getelementptr %struct.sockaddr_in6, ptr %addr1, i32 0, i32 3, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx35, align 4
  %sin_addr36 = getelementptr inbounds %struct.sockaddr_in, ptr %addr2, i32 0, i32 2
  %22 = ptrtoint ptr %sin_addr36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sin_addr36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp38 = icmp eq i32 %21, %23
  br i1 %cmp38, label %land.lhs.true32.return_crit_edge, label %land.lhs.true32.if.end41_crit_edge

land.lhs.true32.if.end41_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

land.lhs.true32.return_crit_edge:                 ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end41:                                         ; preds = %land.lhs.true32.if.end41_crit_edge, %land.lhs.true28.if.end41_crit_edge, %if.end.if.end41_crit_edge, %land.lhs.true14.if.end41_crit_edge, %land.lhs.true12.if.end41_crit_edge
  br label %return

if.end42:                                         ; preds = %entry
  %sin6_addr43 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr1, i32 0, i32 3
  %sin6_addr44 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr2, i32 0, i32 3
  %24 = ptrtoint ptr %sin6_addr43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sin6_addr43, align 4
  %26 = ptrtoint ptr %sin6_addr44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sin6_addr44, align 4
  %xor.i87 = xor i32 %27, %25
  %arrayidx4.i88 = getelementptr %struct.sockaddr_in6, ptr %addr1, i32 0, i32 3, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx4.i88 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i88, align 4
  %arrayidx6.i = getelementptr %struct.sockaddr_in6, ptr %addr2, i32 0, i32 3, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %31, %29
  %or.i89 = or i32 %xor7.i, %xor.i87
  %arrayidx9.i = getelementptr %struct.sockaddr_in6, ptr %addr1, i32 0, i32 3, i32 0, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.sockaddr_in6, ptr %addr2, i32 0, i32 3, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %35, %33
  %or13.i = or i32 %or.i89, %xor12.i
  %arrayidx15.i = getelementptr %struct.sockaddr_in6, ptr %addr1, i32 0, i32 3, i32 0, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.sockaddr_in6, ptr %addr2, i32 0, i32 3, i32 0, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %39, %37
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i90 = icmp eq i32 %or19.i, 0
  br i1 %cmp.i90, label %if.end47, label %if.end42.return_crit_edge

if.end42.return_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end47:                                         ; preds = %if.end42
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr43) #16
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end47.if.end61_crit_edge, label %land.lhs.true50

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

land.lhs.true50:                                  ; preds = %if.end47
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %addr1, i32 0, i32 4
  %40 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool51.not = icmp eq i32 %41, 0
  br i1 %tobool51.not, label %land.lhs.true50.if.end61_crit_edge, label %land.lhs.true52

land.lhs.true50.if.end61_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

land.lhs.true52:                                  ; preds = %land.lhs.true50
  %sin6_scope_id53 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr2, i32 0, i32 4
  %42 = ptrtoint ptr %sin6_scope_id53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sin6_scope_id53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool54.not = icmp eq i32 %43, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp58.not = icmp eq i32 %41, %43
  %or.cond80 = select i1 %tobool54.not, i1 true, i1 %cmp58.not
  br i1 %or.cond80, label %land.lhs.true52.if.end61_crit_edge, label %land.lhs.true52.return_crit_edge

land.lhs.true52.return_crit_edge:                 ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true52.if.end61_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true52.if.end61_crit_edge, %land.lhs.true50.if.end61_crit_edge, %if.end47.if.end61_crit_edge
  br label %return

return:                                           ; preds = %if.end61, %land.lhs.true52.return_crit_edge, %if.end42.return_crit_edge, %if.end41, %land.lhs.true32.return_crit_edge, %land.lhs.true14.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 1, %if.end61 ], [ 1, %land.lhs.true14.return_crit_edge ], [ 1, %land.lhs.true32.return_crit_edge ], [ 0, %if.end42.return_crit_edge ], [ 0, %land.lhs.true52.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_copy_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_dup_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v6_xmit(ptr noundef %skb, ptr noundef %t) #0 align 64 {
entry:
  %keys.i.i = alloca %struct.flow_keys, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %0 = ptrtoint ptr %dst1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1, align 8
  %tobool.not.i170 = icmp eq ptr %1, null
  br i1 %tobool.not.i170, label %entry.dst_clone.exit_crit_edge, label %if.then.i171

entry.dst_clone.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dst_clone.exit

if.then.i171:                                     ; preds = %entry
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #16, !srcloc !105
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !106
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 231, i32 noundef 9, ptr noundef null) #16
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %entry.dst_clone.exit_crit_edge
  %fl = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %7 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %dst_clone.exit.inet6_sk.exit_crit_edge, label %cond.true.i

dst_clone.exit.inet6_sk.exit_crit_edge:           ; preds = %dst_clone.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %dst_clone.exit
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %dst_clone.exit.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %9, %cond.true.i ], [ null, %dst_clone.exit.inet6_sk.exit_crit_edge ]
  %tclass3 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 12
  %10 = ptrtoint ptr %tclass3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tclass3, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_v6_xmit.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_v6_xmit, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #18
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %saddr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 2
  %daddr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_v6_xmit.__UNIQUE_ID_ddebug572, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %skb, i32 noundef %13, ptr noundef %saddr, ptr noundef %daddr) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %inet6_sk.exit
  %dscp = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 31
  %14 = ptrtoint ptr %dscp to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dscp, align 8
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not = icmp eq i8 %16, 0
  %and11 = and i8 %15, -4
  %spec.select = select i1 %tobool7.not, i8 %11, i8 %and11
  %17 = and i8 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %do.end.if.end26_crit_edge, label %do.body17

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

do.body17:                                        ; preds = %do.end
  %18 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i173 = zext i8 %19 to i32
  %shl.i.i174 = shl nuw i32 1, %conv.i.i173
  %and.i.i175 = and i32 %shl.i.i174, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i175)
  %tobool.i.not.i176 = icmp eq i32 %and.i.i175, 0
  br i1 %tobool.i.not.i176, label %do.body17.inet6_sk.exit180_crit_edge, label %cond.true.i178

do.body17.inet6_sk.exit180_crit_edge:             ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_sk.exit180

cond.true.i178:                                   ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i177 = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %pinet6.i177 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pinet6.i177, align 8
  br label %inet6_sk.exit180

inet6_sk.exit180:                                 ; preds = %cond.true.i178, %do.body17.inet6_sk.exit180_crit_edge
  %cond.i179 = phi ptr [ %21, %cond.true.i178 ], [ null, %do.body17.inet6_sk.exit180_crit_edge ]
  %tclass19 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i179, i32 0, i32 12
  %22 = ptrtoint ptr %tclass19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tclass19, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool21.not = icmp eq i8 %24, 0
  br i1 %tobool21.not, label %inet6_sk.exit180.if.end26_crit_edge, label %if.then22

inet6_sk.exit180.if.end26_crit_edge:              ; preds = %inet6_sk.exit180
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then22:                                        ; preds = %inet6_sk.exit180
  call void @__sanitizer_cov_trace_pc() #18
  %flowlabel = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 3
  %25 = ptrtoint ptr %flowlabel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flowlabel, align 8
  %or = or i32 %26, 2097152
  store i32 %or, ptr %flowlabel, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %inet6_sk.exit180.if.end26_crit_edge, %do.end.if.end26_crit_edge
  %param_flags = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 35
  %27 = ptrtoint ptr %param_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %param_flags, align 4
  %and27 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.do.body32_crit_edge

if.end26.do.body32_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %29 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  br label %do.body32

do.body32:                                        ; preds = %if.then29, %if.end26.do.body32_crit_edge
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !108
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %31 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skc_net.i, align 4
  %sctp = getelementptr inbounds %struct.net, ptr %32, i32 0, i32 38
  %33 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sctp, align 8
  %arrayidx = getelementptr [34 x i32], ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %arrayidx to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i182 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i182 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %arrayidx51 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx51, align 4
  %add = add i32 %41, %35
  %42 = inttoptr i32 %add to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add52 = add i32 %44, 1
  store i32 %add52, ptr %42, align 4
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !109
  %and.i.i183 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i183)
  %tobool63.not = icmp eq i32 %and.i.i183, 0
  br i1 %tobool63.not, label %if.then72, label %do.body32.do.end75_crit_edge, !prof !99

do.body32.do.end75_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end75

if.then72:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %do.body32.do.end75_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #16, !srcloc !110
  %encap_port = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %46 = ptrtoint ptr %encap_port to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %encap_port, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool82.not = icmp eq i16 %47, 0
  br i1 %tobool82.not, label %do.end75.if.then85_crit_edge, label %lor.lhs.false

do.end75.if.then85_crit_edge:                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then85

lor.lhs.false:                                    ; preds = %do.end75
  %udp_port = getelementptr inbounds %struct.sctp_sock, ptr %5, i32 0, i32 16
  %48 = ptrtoint ptr %udp_port to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %udp_port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool84.not = icmp eq i16 %49, 0
  br i1 %tobool84.not, label %lor.lhs.false.if.then85_crit_edge, label %if.end104

lor.lhs.false.if.then85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then85

if.then85:                                        ; preds = %lor.lhs.false.if.then85_crit_edge, %do.end75.if.then85_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %50 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i170, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %51 = ptrtoint ptr %1 to i32
  %52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %51, ptr %52, align 8
  %54 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %57, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.then85.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then85.rcu_read_lock.exit_crit_edge:           ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then85
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then85.rcu_read_lock.exit_crit_edge
  %sk_mark = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 34
  %58 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sk_mark, align 8
  %opt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %60 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %opt, align 4
  %call91 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end100_crit_edge

rcu_read_lock.exit.do.end100_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end100

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call93 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true.do.end100_crit_edge, label %land.lhs.true95

land.lhs.true.do.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end100

land.lhs.true95:                                  ; preds = %land.lhs.true
  %.b169 = load i1, ptr @sctp_v6_xmit.__warned, align 1
  br i1 %.b169, label %land.lhs.true95.do.end100_crit_edge, label %if.then97

land.lhs.true95.do.end100_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end100

if.then97:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sctp_v6_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 251, ptr noundef nonnull @.str.2) #16
  br label %do.end100

do.end100:                                        ; preds = %if.then97, %land.lhs.true95.do.end100_crit_edge, %land.lhs.true.do.end100_crit_edge, %rcu_read_lock.exit.do.end100_crit_edge
  %conv102 = zext i8 %spec.select to i32
  %sk_priority = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 33
  %62 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sk_priority, align 4
  %call103 = tail call i32 @ip6_xmit(ptr noundef %5, ptr noundef %skb, ptr noundef %fl, i32 noundef %59, ptr noundef %61, i32 noundef %conv102, i32 noundef %63) #16
  %call.i185 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i185, label %do.end100.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i188

do.end100.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i188:                               ; preds = %do.end100
  %call1.i186 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i186)
  %tobool.not.i187 = icmp eq i32 %call1.i186, 0
  br i1 %tobool.not.i187, label %land.lhs.true.i188.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i190

land.lhs.true.i188.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i188
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i190:                              ; preds = %land.lhs.true.i188
  %.b4.i189 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i189, label %land.lhs.true2.i190.rcu_read_unlock.exit_crit_edge, label %if.then.i191

land.lhs.true2.i190.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i190
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i191:                                     ; preds = %land.lhs.true2.i190
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i191, %land.lhs.true2.i190.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i188.rcu_read_unlock.exit_crit_edge, %do.end100.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %64 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i192 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i192 to ptr
  %preempt_count.i.i.i.i193 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i193, align 4
  %sub.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i193, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

if.end104:                                        ; preds = %lor.lhs.false
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %68 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool.i.not = icmp eq i16 %71, 0
  br i1 %tobool.i.not, label %if.end104.if.end109_crit_edge, label %if.then106

if.end104.if.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end109

if.then106:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 8
  %72 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %gso_type, align 8
  %or108 = or i32 %73, 2048
  store i32 %or108, ptr %gso_type, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end104.if.end109_crit_edge
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %74 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load110 = load i16, ptr %encapsulation, align 8
  %bf.set112 = or i16 %bf.load110, 4
  store i16 %bf.set112, ptr %encapsulation, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %77 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %inner_mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %79 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i, ptr %inner_mac_header.i, align 2
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %80 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i, ptr %inner_transport_header.i, align 2
  %81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -124, ptr %81, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %83 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %bf.load.i200 = load i32, ptr %inner_protocol_type.i, align 2
  %bf.set.i201 = or i32 %bf.load.i200, 4194304
  store i32 %bf.set.i201, ptr %inner_protocol_type.i, align 2
  %84 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %skc_net.i, align 4
  %flowlabel114 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 3
  %86 = ptrtoint ptr %flowlabel114 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flowlabel114, align 8
  %and.i203 = and i32 %87, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i203)
  %tobool.not.i204 = icmp eq i32 %and.i203, 0
  br i1 %tobool.not.i204, label %lor.lhs.false.i, label %if.end109.ip6_make_flowlabel.exit_crit_edge

if.end109.ip6_make_flowlabel.exit_crit_edge:      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6_make_flowlabel.exit

lor.lhs.false.i:                                  ; preds = %if.end109
  %auto_flowlabels.i = getelementptr inbounds %struct.net, ptr %85, i32 0, i32 36, i32 1, i32 17
  %88 = ptrtoint ptr %auto_flowlabels.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %auto_flowlabels.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp.i = icmp eq i8 %89, 0
  br i1 %cmp.i, label %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6_make_flowlabel.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %90 = and i16 %bf.load110, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %if.then.i.i, label %if.end.i.skb_get_hash_flowi6.exit.i_crit_edge

if.end.i.skb_get_hash_flowi6.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_get_hash_flowi6.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %keys.i.i) #16
  %92 = call ptr @memset(ptr %keys.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__get_hash_from_flowi6(ptr noundef %fl, ptr noundef nonnull %keys.i.i) #16
  %ports.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 6
  %93 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ports.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i.i.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i.i.i, label %flow_keys_have_l4.exit.i.i, label %flow_keys_have_l4.exit.thread.i.i

flow_keys_have_l4.exit.thread.i.i:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %95 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load.i.i11.i.i = load i16, ptr %encapsulation, align 8
  %bf.clear.i.i12.i.i = and i16 %bf.load.i.i11.i.i, -193
  br label %99

flow_keys_have_l4.exit.i.i:                       ; preds = %if.then.i.i
  %tags.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %tags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tags.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool1.i.not.i.i = icmp eq i32 %97, 0
  %98 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load.i.i.i.i = load i16, ptr %encapsulation, align 8
  %bf.clear.i.i.i.i = and i16 %bf.load.i.i.i.i, -193
  br i1 %tobool1.i.not.i.i, label %flow_keys_have_l4.exit.i.i._crit_edge, label %flow_keys_have_l4.exit.i.i._crit_edge207

flow_keys_have_l4.exit.i.i._crit_edge207:         ; preds = %flow_keys_have_l4.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %99

flow_keys_have_l4.exit.i.i._crit_edge:            ; preds = %flow_keys_have_l4.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %100

99:                                               ; preds = %flow_keys_have_l4.exit.i.i._crit_edge207, %flow_keys_have_l4.exit.thread.i.i
  %bf.clear.i.i14.i.i = phi i16 [ %bf.clear.i.i12.i.i, %flow_keys_have_l4.exit.thread.i.i ], [ %bf.clear.i.i.i.i, %flow_keys_have_l4.exit.i.i._crit_edge207 ]
  br label %100

100:                                              ; preds = %99, %flow_keys_have_l4.exit.i.i._crit_edge
  %bf.clear.i.i13.i.i = phi i16 [ %bf.clear.i.i14.i.i, %99 ], [ %bf.clear.i.i.i.i, %flow_keys_have_l4.exit.i.i._crit_edge ]
  %101 = phi i16 [ 192, %99 ], [ 64, %flow_keys_have_l4.exit.i.i._crit_edge ]
  %bf.set8.i.i.i.i = or i16 %101, %bf.clear.i.i13.i.i
  %102 = ptrtoint ptr %encapsulation to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %bf.set8.i.i.i.i, ptr %encapsulation, align 8
  %hash10.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %103 = ptrtoint ptr %hash10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call.i.i, ptr %hash10.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %keys.i.i) #16
  br label %skb_get_hash_flowi6.exit.i

skb_get_hash_flowi6.exit.i:                       ; preds = %100, %if.end.i.skb_get_hash_flowi6.exit.i_crit_edge
  %hash7.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %104 = ptrtoint ptr %hash7.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hash7.i.i, align 4
  %or.i.i = call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 16) #16
  %and11.i = and i32 %or.i.i, 1048575
  %flowlabel_state_ranges.i = getelementptr inbounds %struct.net, ptr %85, i32 0, i32 36, i32 1, i32 27
  %106 = ptrtoint ptr %flowlabel_state_ranges.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %flowlabel_state_ranges.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool14.not.i = icmp eq i8 %107, 0
  %or.i = or i32 %and11.i, 524288
  %spec.select.i = select i1 %tobool14.not.i, i32 %and11.i, i32 %or.i
  br label %ip6_make_flowlabel.exit

ip6_make_flowlabel.exit:                          ; preds = %skb_get_hash_flowi6.exit.i, %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge, %if.end109.ip6_make_flowlabel.exit_crit_edge
  %retval.0.i205 = phi i32 [ %spec.select.i, %skb_get_hash_flowi6.exit.i ], [ 0, %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge ], [ %and.i203, %if.end109.ip6_make_flowlabel.exit_crit_edge ]
  %saddr116 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 2
  %daddr117 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 1
  %call118 = call i32 @ip6_dst_hoplimit(ptr noundef %1) #16
  %conv119 = trunc i32 %call118 to i8
  %108 = ptrtoint ptr %udp_port to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %udp_port, align 4
  %110 = ptrtoint ptr %encap_port to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %encap_port, align 8
  %call123 = call i32 @udp_tunnel6_xmit_skb(ptr noundef %1, ptr noundef %5, ptr noundef %skb, ptr noundef null, ptr noundef %saddr116, ptr noundef %daddr117, i8 noundef zeroext %spec.select, i8 noundef zeroext %conv119, i32 noundef %retval.0.i205, i16 noundef zeroext %109, i16 noundef zeroext %111, i1 noundef zeroext false) #16
  br label %cleanup

cleanup:                                          ; preds = %ip6_make_flowlabel.exit, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call123, %ip6_make_flowlabel.exit ], [ %call103, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_v6_get_dst(ptr noundef %t, ptr noundef readonly %saddr, ptr noundef %fl, ptr noundef %sk) #0 align 64 {
entry:
  %_fl = alloca %struct.flowi, align 8
  %dst_saddr = alloca %union.sctp_addr, align 4
  %final = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %_fl) #16
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %3 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %4 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dst_saddr) #16
  %6 = getelementptr inbounds %struct.sockaddr_in6, ptr %dst_saddr, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sockaddr_in6, ptr %dst_saddr, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sockaddr_in6, ptr %dst_saddr, i32 0, i32 3
  %9 = getelementptr inbounds %struct.sockaddr_in6, ptr %dst_saddr, i32 0, i32 4
  %10 = call ptr @memset(ptr %dst_saddr, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final) #16
  %11 = call ptr @memset(ptr %final, i32 255, i32 16)
  %12 = call ptr @memset(ptr %_fl, i32 0, i32 88)
  %daddr2 = getelementptr inbounds %struct.flowi6, ptr %_fl, i32 0, i32 1
  %sin6_addr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 6, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %daddr2, ptr %sin6_addr, i32 16)
  %sin6_port = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 6, i32 0, i32 1
  %14 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sin6_port, align 2
  %uli = getelementptr inbounds %struct.flowi6, ptr %_fl, i32 0, i32 4
  %16 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %uli, align 4
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %_fl, i32 0, i32 5
  %17 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -124, ptr %flowic_proto, align 2
  %call.i452 = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #16
  %and = and i32 %call.i452, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sin6_scope_id = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 6, i32 0, i32 4
  %18 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sin6_scope_id, align 4
  %20 = ptrtoint ptr %_fl to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %_fl, align 8
  br label %if.end11

if.else:                                          ; preds = %inet6_sk.exit
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %if.else.if.end11_crit_edge, label %if.then7

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %sk8 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %sk8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk8, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %skc_bound_dev_if, align 4
  %25 = ptrtoint ptr %_fl to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %_fl, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.else.if.end11_crit_edge, %if.then
  %flowlabel = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 30
  %26 = ptrtoint ptr %flowlabel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flowlabel, align 4
  %and12 = and i32 %27, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %if.then14

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %and16 = and i32 %27, 1048575
  %flowlabel17 = getelementptr inbounds %struct.flowi6, ptr %_fl, i32 0, i32 3
  %28 = ptrtoint ptr %flowlabel17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and16, ptr %flowlabel17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11.if.end18_crit_edge
  %sndflow = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %29 = ptrtoint ptr %sndflow to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load = load i16, ptr %sndflow, align 2
  %30 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool19.not = icmp eq i16 %30, 0
  br i1 %tobool19.not, label %if.end18.do.body_crit_edge, label %land.lhs.true

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true:                                    ; preds = %if.end18
  %flowlabel20 = getelementptr inbounds %struct.flowi6, ptr %_fl, i32 0, i32 3
  %31 = ptrtoint ptr %flowlabel20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flowlabel20, align 8
  %and21 = and i32 %32, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.body_crit_edge, label %if.then23

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ipv6_flowlabel_exclusive, ptr blockaddress(@sctp_v6_get_dst, %do.end.i)) #16
          to label %do.body [label %do.end.i], !srcloc !107

do.end.i:                                         ; preds = %if.then23
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %33 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skc_net.i.i, align 4
  %flowlabel_has_excl.i = getelementptr inbounds %struct.net, ptr %34, i32 0, i32 36, i32 17
  %35 = ptrtoint ptr %flowlabel_has_excl.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %flowlabel_has_excl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool5.not.i = icmp eq i8 %36, 0
  br i1 %tobool5.not.i, label %do.end.i.do.body_crit_edge, label %if.then.i453

do.end.i.do.body_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then.i453:                                     ; preds = %do.end.i
  %call6.i = tail call ptr @__fl6_sock_lookup(ptr noundef %sk, i32 noundef %32) #16
  %tobool7.not.i = icmp eq ptr %call6.i, null
  %cmp.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool7.not.i, %cmp.i
  br i1 %or.cond, label %if.then.i453.if.else298_crit_edge, label %if.then.i456

if.then.i453.if.else298_crit_edge:                ; preds = %if.then.i453
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else298

if.then.i456:                                     ; preds = %if.then.i453
  call void @__sanitizer_cov_trace_pc() #18
  %users.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call6.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #16
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #16, !srcloc !111
  br label %do.body

do.body:                                          ; preds = %if.then.i456, %do.end.i.do.body_crit_edge, %if.then23, %land.lhs.true.do.body_crit_edge, %if.end18.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_v6_get_dst.__UNIQUE_ID_ddebug575, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_v6_get_dst, %if.then35)) #16
          to label %do.end [label %if.then35], !srcloc !107

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_v6_get_dst.__UNIQUE_ID_ddebug575, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef %daddr2) #16
  br label %do.end

do.end:                                           ; preds = %if.then35, %do.body
  %tobool38.not = icmp eq ptr %1, null
  br i1 %tobool38.not, label %do.end.if.end42_crit_edge, label %if.then39

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.then39:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bind_addr, align 4
  %sport = getelementptr inbounds %struct.anon.39, ptr %uli, i32 0, i32 1
  %40 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %sport, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %do.end.if.end42_crit_edge
  %tobool43.not = icmp eq ptr %saddr, null
  br i1 %tobool43.not, label %if.end42.if.end72_crit_edge, label %if.then44

if.end42.if.end72_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.then44:                                        ; preds = %if.end42
  %saddr45 = getelementptr inbounds %struct.flowi6, ptr %_fl, i32 0, i32 2
  %sin6_addr46 = getelementptr inbounds %struct.sockaddr_in6, ptr %saddr, i32 0, i32 3
  %41 = call ptr @memcpy(ptr %saddr45, ptr %sin6_addr46, i32 16)
  %sport48 = getelementptr inbounds %struct.anon.39, ptr %uli, i32 0, i32 1
  %42 = ptrtoint ptr %sport48 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sport48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool49.not = icmp eq i16 %43, 0
  br i1 %tobool49.not, label %if.then50, label %if.then44.do.body55_crit_edge

if.then44.do.body55_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body55

if.then50:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  %sin6_port51 = getelementptr inbounds %struct.sockaddr_in6, ptr %saddr, i32 0, i32 1
  %44 = ptrtoint ptr %sin6_port51 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sin6_port51, align 2
  %46 = ptrtoint ptr %sport48 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %sport48, align 2
  br label %do.body55

do.body55:                                        ; preds = %if.then50, %if.then44.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_v6_get_dst.__UNIQUE_ID_ddebug576, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_v6_get_dst, %if.then67)) #16
          to label %if.end72 [label %if.then67], !srcloc !107

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_v6_get_dst.__UNIQUE_ID_ddebug576, ptr noundef nonnull @.str.19, ptr noundef %saddr45) #16
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %do.body55, %if.end42.if.end72_crit_edge
  %47 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %50, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end72.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end72.rcu_read_lock.exit_crit_edge:            ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end72
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end72.rcu_read_lock.exit_crit_edge
  %opt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %51 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %opt, align 4
  %call78 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true80, label %rcu_read_lock.exit.do.end88_crit_edge

rcu_read_lock.exit.do.end88_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end88

land.lhs.true80:                                  ; preds = %rcu_read_lock.exit
  %call81 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.lhs.true80.do.end88_crit_edge, label %land.lhs.true83

land.lhs.true80.do.end88_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end88

land.lhs.true83:                                  ; preds = %land.lhs.true80
  %.b419 = load i1, ptr @sctp_v6_get_dst.__warned, align 1
  br i1 %.b419, label %land.lhs.true83.do.end88_crit_edge, label %if.then85

land.lhs.true83.do.end88_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end88

if.then85:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sctp_v6_get_dst.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 324, ptr noundef nonnull @.str.2) #16
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %land.lhs.true83.do.end88_crit_edge, %land.lhs.true80.do.end88_crit_edge, %rcu_read_lock.exit.do.end88_crit_edge
  %call90 = call ptr @fl6_update_dst(ptr noundef nonnull %_fl, ptr noundef %52, ptr noundef nonnull %final) #16
  %call.i457 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i457, label %do.end88.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i460

do.end88.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i460:                               ; preds = %do.end88
  %call1.i458 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i458)
  %tobool.not.i459 = icmp eq i32 %call1.i458, 0
  br i1 %tobool.not.i459, label %land.lhs.true.i460.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i462

land.lhs.true.i460.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i460
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i462:                              ; preds = %land.lhs.true.i460
  %.b4.i461 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i461, label %land.lhs.true2.i462.rcu_read_unlock.exit_crit_edge, label %if.then.i463

land.lhs.true2.i462.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i462
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i463:                                     ; preds = %land.lhs.true2.i462
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i463, %land.lhs.true2.i462.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i460.rcu_read_unlock.exit_crit_edge, %do.end88.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %53 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i464 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i464 to ptr
  %preempt_count.i.i.i.i465 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i465 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i465, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i465, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %57 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skc_net.i, align 4
  %call92 = call ptr @ip6_dst_lookup_flow(ptr noundef %58, ptr noundef %sk, ptr noundef nonnull %_fl, ptr noundef %call90) #16
  %tobool43.not.not = xor i1 %tobool43.not, true
  %brmerge = or i1 %tobool38.not, %tobool43.not.not
  br i1 %brmerge, label %if.then95, label %if.end97

if.then95:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %dst96 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %59 = ptrtoint ptr %dst96 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call92, ptr %dst96, align 8
  %60 = call ptr @memcpy(ptr %fl, ptr %_fl, i32 88)
  br label %out

if.end97:                                         ; preds = %rcu_read_unlock.exit
  %call100 = call i32 @sctp_scope(ptr noundef %ipaddr) #16
  %cmp.i467 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i467, label %if.end97.if.end157_crit_edge, label %if.then102

if.end97.if.end157_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end157

if.then102:                                       ; preds = %if.end97
  %bind_addr99 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6
  %saddr103 = getelementptr inbounds %struct.flowi6, ptr %_fl, i32 0, i32 2
  %61 = ptrtoint ptr %bind_addr99 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %bind_addr99, align 4
  %63 = ptrtoint ptr %dst_saddr to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 10, ptr %dst_saddr, align 4
  %64 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %62, ptr %6, align 2
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %7, align 4
  %66 = call ptr @memcpy(ptr %8, ptr %saddr103, i32 16)
  %67 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %9, align 4
  %68 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i424 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i424 to ptr
  %preempt_count.i.i.i.i425 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i425 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i425, align 4
  %add.i.i.i426 = add i32 %71, 1
  store volatile i32 %add.i.i.i426, ptr %preempt_count.i.i.i.i425, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i427 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i427, label %if.then102.rcu_read_lock.exit434_crit_edge, label %land.lhs.true.i430

if.then102.rcu_read_lock.exit434_crit_edge:       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit434

land.lhs.true.i430:                               ; preds = %if.then102
  %call1.i428 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i428)
  %tobool.not.i429 = icmp eq i32 %call1.i428, 0
  br i1 %tobool.not.i429, label %land.lhs.true.i430.rcu_read_lock.exit434_crit_edge, label %land.lhs.true2.i432

land.lhs.true.i430.rcu_read_lock.exit434_crit_edge: ; preds = %land.lhs.true.i430
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit434

land.lhs.true2.i432:                              ; preds = %land.lhs.true.i430
  %.b4.i431 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i431, label %land.lhs.true2.i432.rcu_read_lock.exit434_crit_edge, label %if.then.i433

land.lhs.true2.i432.rcu_read_lock.exit434_crit_edge: ; preds = %land.lhs.true2.i432
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit434

if.then.i433:                                     ; preds = %land.lhs.true2.i432
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit434

rcu_read_lock.exit434:                            ; preds = %if.then.i433, %land.lhs.true2.i432.rcu_read_lock.exit434_crit_edge, %land.lhs.true.i430.rcu_read_lock.exit434_crit_edge, %if.then102.rcu_read_lock.exit434_crit_edge
  %call106 = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %land.lhs.true108, label %rcu_read_lock.exit434.do.end116_crit_edge

rcu_read_lock.exit434.do.end116_crit_edge:        ; preds = %rcu_read_lock.exit434
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end116

land.lhs.true108:                                 ; preds = %rcu_read_lock.exit434
  %call109 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %land.lhs.true108.do.end116_crit_edge, label %land.lhs.true111

land.lhs.true108.do.end116_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end116

land.lhs.true111:                                 ; preds = %land.lhs.true108
  %.b413418 = load i1, ptr @sctp_v6_get_dst.__warned.20, align 1
  br i1 %.b413418, label %land.lhs.true111.do.end116_crit_edge, label %if.then113

land.lhs.true111.do.end116_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end116

if.then113:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sctp_v6_get_dst.__warned.20, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 345, ptr noundef nonnull @.str.21) #16
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %land.lhs.true111.do.end116_crit_edge, %land.lhs.true108.do.end116_crit_edge, %rcu_read_lock.exit434.do.end116_crit_edge
  %address_list = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6, i32 1
  %72 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %72)
  %laddr.0550 = load volatile ptr, ptr %address_list, align 4
  %cmp.not551 = icmp eq ptr %laddr.0550, %address_list
  br i1 %cmp.not551, label %do.end116.for.end_crit_edge, label %for.body.lr.ph

do.end116.for.end_crit_edge:                      ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end116
  %src_out_of_asoc_ok = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 70
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %laddr.0552 = phi ptr [ %laddr.0550, %for.body.lr.ph ], [ %laddr.0, %for.inc.for.body_crit_edge ]
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0552, i32 0, i32 4
  %73 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool124.not = icmp eq i8 %74, 0
  br i1 %tobool124.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false125

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false125:                                 ; preds = %for.body
  %state = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0552, i32 0, i32 3
  %75 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %state, align 4
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %76, label %land.lhs.true134 [
    i8 2, label %lor.lhs.false125.for.inc_crit_edge
    i8 1, label %lor.lhs.false125.if.end137_crit_edge
  ]

lor.lhs.false125.if.end137_crit_edge:             ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end137

lor.lhs.false125.for.inc_crit_edge:               ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true134:                                 ; preds = %lor.lhs.false125
  %78 = ptrtoint ptr %src_out_of_asoc_ok to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %src_out_of_asoc_ok, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool135.not = icmp eq i32 %79, 0
  br i1 %tobool135.not, label %land.lhs.true134.for.inc_crit_edge, label %land.lhs.true134.if.end137_crit_edge

land.lhs.true134.if.end137_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end137

land.lhs.true134.for.inc_crit_edge:               ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end137:                                        ; preds = %land.lhs.true134.if.end137_crit_edge, %lor.lhs.false125.if.end137_crit_edge
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0552, i32 0, i32 2
  %80 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %81)
  %cmp139 = icmp eq i16 %81, 10
  br i1 %cmp139, label %land.lhs.true141, label %if.end137.for.inc_crit_edge

if.end137.for.inc_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true141:                                 ; preds = %if.end137
  %call.i468 = call fastcc i32 @__sctp_v6_cmp_addr(ptr noundef nonnull %dst_saddr, ptr noundef %a) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i468)
  %tobool.not.i469 = icmp eq i32 %call.i468, 0
  br i1 %tobool.not.i469, label %land.lhs.true141.for.inc_crit_edge, label %sctp_v6_cmp_addr.exit

land.lhs.true141.for.inc_crit_edge:               ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

sctp_v6_cmp_addr.exit:                            ; preds = %land.lhs.true141
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %6, align 2
  %sin6_port1.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0552, i32 0, i32 2, i32 0, i32 1
  %84 = ptrtoint ptr %sin6_port1.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %sin6_port1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %85)
  %cmp.i471.not = icmp eq i16 %83, %85
  br i1 %cmp.i471.not, label %if.then145, label %sctp_v6_cmp_addr.exit.for.inc_crit_edge

sctp_v6_cmp_addr.exit.for.inc_crit_edge:          ; preds = %sctp_v6_cmp_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then145:                                       ; preds = %sctp_v6_cmp_addr.exit
  %call.i472 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i472, label %if.then145.rcu_read_unlock.exit483_crit_edge, label %land.lhs.true.i475

if.then145.rcu_read_unlock.exit483_crit_edge:     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit483

land.lhs.true.i475:                               ; preds = %if.then145
  %call1.i473 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i473)
  %tobool.not.i474 = icmp eq i32 %call1.i473, 0
  br i1 %tobool.not.i474, label %land.lhs.true.i475.rcu_read_unlock.exit483_crit_edge, label %land.lhs.true2.i477

land.lhs.true.i475.rcu_read_unlock.exit483_crit_edge: ; preds = %land.lhs.true.i475
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit483

land.lhs.true2.i477:                              ; preds = %land.lhs.true.i475
  %.b4.i476 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i476, label %land.lhs.true2.i477.rcu_read_unlock.exit483_crit_edge, label %if.then.i478

land.lhs.true2.i477.rcu_read_unlock.exit483_crit_edge: ; preds = %land.lhs.true2.i477
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit483

if.then.i478:                                     ; preds = %land.lhs.true2.i477
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit483

rcu_read_unlock.exit483:                          ; preds = %if.then.i478, %land.lhs.true2.i477.rcu_read_unlock.exit483_crit_edge, %land.lhs.true.i475.rcu_read_unlock.exit483_crit_edge, %if.then145.rcu_read_unlock.exit483_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %86 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i479 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i479 to ptr
  %preempt_count.i.i.i.i480 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i480 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i480, align 4
  %sub.i.i.i481 = add i32 %89, -1
  store volatile i32 %sub.i.i.i481, ptr %preempt_count.i.i.i.i480, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %dst146 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %90 = ptrtoint ptr %dst146 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call92, ptr %dst146, align 8
  %91 = call ptr @memcpy(ptr %fl, ptr %_fl, i32 88)
  br label %out

for.inc:                                          ; preds = %sctp_v6_cmp_addr.exit.for.inc_crit_edge, %land.lhs.true141.for.inc_crit_edge, %if.end137.for.inc_crit_edge, %land.lhs.true134.for.inc_crit_edge, %lor.lhs.false125.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %92 = ptrtoint ptr %laddr.0552 to i32
  call void @__asan_load4_noabort(i32 %92)
  %laddr.0 = load volatile ptr, ptr %laddr.0552, align 4
  %cmp.not = icmp eq ptr %laddr.0, %address_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end116.for.end_crit_edge
  %call.i484 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i484, label %for.end.rcu_read_unlock.exit495_crit_edge, label %land.lhs.true.i487

for.end.rcu_read_unlock.exit495_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit495

land.lhs.true.i487:                               ; preds = %for.end
  %call1.i485 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i485)
  %tobool.not.i486 = icmp eq i32 %call1.i485, 0
  br i1 %tobool.not.i486, label %land.lhs.true.i487.rcu_read_unlock.exit495_crit_edge, label %land.lhs.true2.i489

land.lhs.true.i487.rcu_read_unlock.exit495_crit_edge: ; preds = %land.lhs.true.i487
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit495

land.lhs.true2.i489:                              ; preds = %land.lhs.true.i487
  %.b4.i488 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i488, label %land.lhs.true2.i489.rcu_read_unlock.exit495_crit_edge, label %if.then.i490

land.lhs.true2.i489.rcu_read_unlock.exit495_crit_edge: ; preds = %land.lhs.true2.i489
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit495

if.then.i490:                                     ; preds = %land.lhs.true2.i489
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit495

rcu_read_unlock.exit495:                          ; preds = %if.then.i490, %land.lhs.true2.i489.rcu_read_unlock.exit495_crit_edge, %land.lhs.true.i487.rcu_read_unlock.exit495_crit_edge, %for.end.rcu_read_unlock.exit495_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %93 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i491 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i491 to ptr
  %preempt_count.i.i.i.i492 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i.i.i492 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i.i.i492, align 4
  %sub.i.i.i493 = add i32 %96, -1
  store volatile i32 %sub.i.i.i493, ptr %preempt_count.i.i.i.i492, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @dst_release(ptr noundef %call92) #16
  br label %if.end157

if.end157:                                        ; preds = %rcu_read_unlock.exit495, %if.end97.if.end157_crit_edge
  %dst.0 = phi ptr [ %call92, %if.end97.if.end157_crit_edge ], [ null, %rcu_read_unlock.exit495 ]
  %97 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i435 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i435 to ptr
  %preempt_count.i.i.i.i436 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i.i436 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i.i436, align 4
  %add.i.i.i437 = add i32 %100, 1
  store volatile i32 %add.i.i.i437, ptr %preempt_count.i.i.i.i436, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i438 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i438, label %if.end157.rcu_read_lock.exit445_crit_edge, label %land.lhs.true.i441

if.end157.rcu_read_lock.exit445_crit_edge:        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit445

land.lhs.true.i441:                               ; preds = %if.end157
  %call1.i439 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i439)
  %tobool.not.i440 = icmp eq i32 %call1.i439, 0
  br i1 %tobool.not.i440, label %land.lhs.true.i441.rcu_read_lock.exit445_crit_edge, label %land.lhs.true2.i443

land.lhs.true.i441.rcu_read_lock.exit445_crit_edge: ; preds = %land.lhs.true.i441
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit445

land.lhs.true2.i443:                              ; preds = %land.lhs.true.i441
  %.b4.i442 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i442, label %land.lhs.true2.i443.rcu_read_lock.exit445_crit_edge, label %if.then.i444

land.lhs.true2.i443.rcu_read_lock.exit445_crit_edge: ; preds = %land.lhs.true2.i443
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit445

if.then.i444:                                     ; preds = %land.lhs.true2.i443
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit445

rcu_read_lock.exit445:                            ; preds = %if.then.i444, %land.lhs.true2.i443.rcu_read_lock.exit445_crit_edge, %land.lhs.true.i441.rcu_read_lock.exit445_crit_edge, %if.end157.rcu_read_lock.exit445_crit_edge
  %call159 = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %land.lhs.true161, label %rcu_read_lock.exit445.do.end169_crit_edge

rcu_read_lock.exit445.do.end169_crit_edge:        ; preds = %rcu_read_lock.exit445
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end169

land.lhs.true161:                                 ; preds = %rcu_read_lock.exit445
  %call162 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %land.lhs.true161.do.end169_crit_edge, label %land.lhs.true164

land.lhs.true161.do.end169_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end169

land.lhs.true164:                                 ; preds = %land.lhs.true161
  %.b414417 = load i1, ptr @sctp_v6_get_dst.__warned.22, align 1
  br i1 %.b414417, label %land.lhs.true164.do.end169_crit_edge, label %if.then166

land.lhs.true164.do.end169_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end169

if.then166:                                       ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sctp_v6_get_dst.__warned.22, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 372, ptr noundef nonnull @.str.21) #16
  br label %do.end169

do.end169:                                        ; preds = %if.then166, %land.lhs.true164.do.end169_crit_edge, %land.lhs.true161.do.end169_crit_edge, %rcu_read_lock.exit445.do.end169_crit_edge
  %address_list175 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6, i32 1
  %101 = ptrtoint ptr %address_list175 to i32
  call void @__asan_load4_noabort(i32 %101)
  %laddr.1553 = load volatile ptr, ptr %address_list175, align 4
  %cmp182.not554 = icmp eq ptr %laddr.1553, %address_list175
  br i1 %cmp182.not554, label %do.end169.for.end275_crit_edge, label %for.body184.lr.ph

do.end169.for.end275_crit_edge:                   ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end275

for.body184.lr.ph:                                ; preds = %do.end169
  %saddr205 = getelementptr inbounds %struct.flowi6, ptr %_fl, i32 0, i32 2
  %sport211 = getelementptr inbounds %struct.anon.39, ptr %uli, i32 0, i32 1
  %arrayidx.1.i.i.i.i = getelementptr %struct.sctp_transport, ptr %t, i32 0, i32 6, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx.2.i.i.i.i = getelementptr %struct.sctp_transport, ptr %t, i32 0, i32 6, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx.3.i.i.i.i = getelementptr %struct.sctp_transport, ptr %t, i32 0, i32 6, i32 0, i32 3, i32 0, i32 0, i32 3
  %dst260 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  br label %for.body184

for.body184:                                      ; preds = %cleanup261.for.body184_crit_edge, %for.body184.lr.ph
  %laddr.1557 = phi ptr [ %laddr.1553, %for.body184.lr.ph ], [ %laddr.1, %cleanup261.for.body184_crit_edge ]
  %dst.1556 = phi ptr [ %dst.0, %for.body184.lr.ph ], [ %dst.2, %cleanup261.for.body184_crit_edge ]
  %matchlen.0555 = phi i8 [ 0, %for.body184.lr.ph ], [ %matchlen.1, %cleanup261.for.body184_crit_edge ]
  %valid185 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.1557, i32 0, i32 4
  %102 = ptrtoint ptr %valid185 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %valid185, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool186.not = icmp eq i8 %103, 0
  br i1 %tobool186.not, label %for.body184.cleanup261_crit_edge, label %lor.lhs.false187

for.body184.cleanup261_crit_edge:                 ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup261

lor.lhs.false187:                                 ; preds = %for.body184
  %state188 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.1557, i32 0, i32 3
  %104 = ptrtoint ptr %state188 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %state188, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %105)
  %cmp190.not = icmp eq i8 %105, 1
  br i1 %cmp190.not, label %lor.lhs.false192, label %lor.lhs.false187.cleanup261_crit_edge

lor.lhs.false187.cleanup261_crit_edge:            ; preds = %lor.lhs.false187
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup261

lor.lhs.false192:                                 ; preds = %lor.lhs.false187
  %a193 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.1557, i32 0, i32 2
  %106 = ptrtoint ptr %a193 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %a193, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %107)
  %cmp196.not = icmp eq i16 %107, 10
  br i1 %cmp196.not, label %lor.lhs.false198, label %lor.lhs.false192.cleanup261_crit_edge

lor.lhs.false192.cleanup261_crit_edge:            ; preds = %lor.lhs.false192
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup261

lor.lhs.false198:                                 ; preds = %lor.lhs.false192
  %call200 = call i32 @sctp_scope(ptr noundef %a193) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call100, i32 %call200)
  %cmp201 = icmp ugt i32 %call100, %call200
  br i1 %cmp201, label %lor.lhs.false198.cleanup261_crit_edge, label %if.end204

lor.lhs.false198.cleanup261_crit_edge:            ; preds = %lor.lhs.false198
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup261

if.end204:                                        ; preds = %lor.lhs.false198
  %sin6_addr207 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.1557, i32 0, i32 2, i32 0, i32 3
  %108 = call ptr @memcpy(ptr %saddr205, ptr %sin6_addr207, i32 16)
  %sin6_port209 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.1557, i32 0, i32 2, i32 0, i32 1
  %109 = ptrtoint ptr %sin6_port209 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %sin6_port209, align 2
  %111 = ptrtoint ptr %sport211 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %sport211, align 2
  %112 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %opt, align 4
  %call218 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %land.lhs.true220, label %if.end204.do.end228_crit_edge

if.end204.do.end228_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end228

land.lhs.true220:                                 ; preds = %if.end204
  %call221 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %land.lhs.true220.do.end228_crit_edge, label %land.lhs.true223

land.lhs.true220.do.end228_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end228

land.lhs.true223:                                 ; preds = %land.lhs.true220
  %.b415416 = load i1, ptr @sctp_v6_get_dst.__warned.23, align 1
  br i1 %.b415416, label %land.lhs.true223.do.end228_crit_edge, label %if.then225

land.lhs.true223.do.end228_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end228

if.then225:                                       ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sctp_v6_get_dst.__warned.23, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 384, ptr noundef nonnull @.str.2) #16
  br label %do.end228

do.end228:                                        ; preds = %if.then225, %land.lhs.true223.do.end228_crit_edge, %land.lhs.true220.do.end228_crit_edge, %if.end204.do.end228_crit_edge
  %call230 = call ptr @fl6_update_dst(ptr noundef nonnull %_fl, ptr noundef %113, ptr noundef nonnull %final) #16
  %114 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %skc_net.i, align 4
  %call232 = call ptr @ip6_dst_lookup_flow(ptr noundef %115, ptr noundef %sk, ptr noundef nonnull %_fl, ptr noundef %call230) #16
  %cmp.i497 = icmp ugt ptr %call232, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i497, label %do.end228.cleanup261_crit_edge, label %if.end235

do.end228.cleanup261_crit_edge:                   ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup261

if.end235:                                        ; preds = %do.end228
  %116 = ptrtoint ptr %call232 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call232, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %117, i32 0, i32 127
  %118 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %nd_net.i, align 4
  %call240 = call i32 @ipv6_chk_addr(ptr noundef %119, ptr noundef %sin6_addr207, ptr noundef %117, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end247, label %if.then242

if.then242:                                       ; preds = %if.end235
  %tobool.not.i498 = icmp eq ptr %dst.1556, null
  %cmp.i499 = icmp ugt ptr %dst.1556, inttoptr (i32 -4096 to ptr)
  %spec.select.i500 = or i1 %tobool.not.i498, %cmp.i499
  br i1 %spec.select.i500, label %if.then242.cleanup261.thread_crit_edge, label %if.then244

if.then242.cleanup261.thread_crit_edge:           ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup261.thread

if.then244:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #18
  call void @dst_release(ptr noundef nonnull %dst.1556) #16
  br label %cleanup261.thread

cleanup261.thread:                                ; preds = %if.then244, %if.then242.cleanup261.thread_crit_edge
  %120 = ptrtoint ptr %dst260 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call232, ptr %dst260, align 8
  %121 = call ptr @memcpy(ptr %fl, ptr %_fl, i32 88)
  br label %for.end275

if.end247:                                        ; preds = %if.end235
  %122 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sin6_addr, align 4
  %124 = ptrtoint ptr %sin6_addr207 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sin6_addr207, align 4
  %xor.i.i.i.i = xor i32 %125, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %xor.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i, label %if.end247.cleanup.i.i.i.i_crit_edge

if.end247.cleanup.i.i.i.i_crit_edge:              ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %for.inc.2.i.i.i.i.cleanup.i.i.i.i_crit_edge, %for.inc.1.i.i.i.i.cleanup.i.i.i.i_crit_edge, %for.inc.i.i.i.i.cleanup.i.i.i.i_crit_edge, %if.end247.cleanup.i.i.i.i_crit_edge
  %i.04.lcssa.i.i.i.i = phi i32 [ 0, %if.end247.cleanup.i.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.i.cleanup.i.i.i.i_crit_edge ], [ 64, %for.inc.1.i.i.i.i.cleanup.i.i.i.i_crit_edge ], [ 96, %for.inc.2.i.i.i.i.cleanup.i.i.i.i_crit_edge ]
  %xor.lcssa.i.i.i.i = phi i32 [ %xor.i.i.i.i, %if.end247.cleanup.i.i.i.i_crit_edge ], [ %xor.1.i.i.i.i, %for.inc.i.i.i.i.cleanup.i.i.i.i_crit_edge ], [ %xor.2.i.i.i.i, %for.inc.1.i.i.i.i.cleanup.i.i.i.i_crit_edge ], [ %xor.3.i.i.i.i, %for.inc.2.i.i.i.i.cleanup.i.i.i.i_crit_edge ]
  %126 = call i32 @llvm.ctlz.i32(i32 %xor.lcssa.i.i.i.i, i1 true) #16, !range !112
  %sub.i.i.i.i = or i32 %126, %i.04.lcssa.i.i.i.i
  br label %sctp_v6_addr_match_len.exit

for.inc.i.i.i.i:                                  ; preds = %if.end247
  %127 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.1.i.i.i.i, align 4
  %arrayidx1.1.i.i.i.i = getelementptr %struct.sctp_sockaddr_entry, ptr %laddr.1557, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 1
  %129 = ptrtoint ptr %arrayidx1.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx1.1.i.i.i.i, align 4
  %xor.1.i.i.i.i = xor i32 %130, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.1.i.i.i.i)
  %tobool.not.1.i.i.i.i = icmp eq i32 %xor.1.i.i.i.i, 0
  br i1 %tobool.not.1.i.i.i.i, label %for.inc.1.i.i.i.i, label %for.inc.i.i.i.i.cleanup.i.i.i.i_crit_edge

for.inc.i.i.i.i.cleanup.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i.i.i

for.inc.1.i.i.i.i:                                ; preds = %for.inc.i.i.i.i
  %131 = ptrtoint ptr %arrayidx.2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.2.i.i.i.i, align 4
  %arrayidx1.2.i.i.i.i = getelementptr %struct.sctp_sockaddr_entry, ptr %laddr.1557, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 2
  %133 = ptrtoint ptr %arrayidx1.2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx1.2.i.i.i.i, align 4
  %xor.2.i.i.i.i = xor i32 %134, %132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.2.i.i.i.i)
  %tobool.not.2.i.i.i.i = icmp eq i32 %xor.2.i.i.i.i, 0
  br i1 %tobool.not.2.i.i.i.i, label %for.inc.2.i.i.i.i, label %for.inc.1.i.i.i.i.cleanup.i.i.i.i_crit_edge

for.inc.1.i.i.i.i.cleanup.i.i.i.i_crit_edge:      ; preds = %for.inc.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i.i.i

for.inc.2.i.i.i.i:                                ; preds = %for.inc.1.i.i.i.i
  %135 = ptrtoint ptr %arrayidx.3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.3.i.i.i.i, align 4
  %arrayidx1.3.i.i.i.i = getelementptr %struct.sctp_sockaddr_entry, ptr %laddr.1557, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 3
  %137 = ptrtoint ptr %arrayidx1.3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx1.3.i.i.i.i, align 4
  %xor.3.i.i.i.i = xor i32 %138, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.3.i.i.i.i)
  %tobool.not.3.i.i.i.i = icmp eq i32 %xor.3.i.i.i.i, 0
  br i1 %tobool.not.3.i.i.i.i, label %for.inc.2.i.i.i.i.sctp_v6_addr_match_len.exit_crit_edge, label %for.inc.2.i.i.i.i.cleanup.i.i.i.i_crit_edge

for.inc.2.i.i.i.i.cleanup.i.i.i.i_crit_edge:      ; preds = %for.inc.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i.i.i

for.inc.2.i.i.i.i.sctp_v6_addr_match_len.exit_crit_edge: ; preds = %for.inc.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sctp_v6_addr_match_len.exit

sctp_v6_addr_match_len.exit:                      ; preds = %for.inc.2.i.i.i.i.sctp_v6_addr_match_len.exit_crit_edge, %cleanup.i.i.i.i
  %retval.2.i.i.i.i = phi i32 [ %sub.i.i.i.i, %cleanup.i.i.i.i ], [ 128, %for.inc.2.i.i.i.i.sctp_v6_addr_match_len.exit_crit_edge ]
  %conv250 = trunc i32 %retval.2.i.i.i.i to i8
  %conv251 = zext i8 %matchlen.0555 to i32
  %conv252 = and i32 %retval.2.i.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv252, i32 %conv251)
  %cmp253 = icmp ult i32 %conv252, %conv251
  br i1 %cmp253, label %if.then255, label %if.end256

if.then255:                                       ; preds = %sctp_v6_addr_match_len.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @dst_release(ptr noundef %call232) #16
  br label %cleanup261

if.end256:                                        ; preds = %sctp_v6_addr_match_len.exit
  %tobool.not.i502 = icmp eq ptr %dst.1556, null
  %cmp.i503 = icmp ugt ptr %dst.1556, inttoptr (i32 -4096 to ptr)
  %spec.select.i504 = or i1 %tobool.not.i502, %cmp.i503
  br i1 %spec.select.i504, label %if.end256.if.end259_crit_edge, label %if.then258

if.end256.if.end259_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end259

if.then258:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #18
  call void @dst_release(ptr noundef nonnull %dst.1556) #16
  br label %if.end259

if.end259:                                        ; preds = %if.then258, %if.end256.if.end259_crit_edge
  %139 = ptrtoint ptr %dst260 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call232, ptr %dst260, align 8
  %140 = call ptr @memcpy(ptr %fl, ptr %_fl, i32 88)
  br label %cleanup261

cleanup261:                                       ; preds = %if.end259, %if.then255, %do.end228.cleanup261_crit_edge, %lor.lhs.false198.cleanup261_crit_edge, %lor.lhs.false192.cleanup261_crit_edge, %lor.lhs.false187.cleanup261_crit_edge, %for.body184.cleanup261_crit_edge
  %matchlen.1 = phi i8 [ %matchlen.0555, %if.then255 ], [ %conv250, %if.end259 ], [ %matchlen.0555, %lor.lhs.false198.cleanup261_crit_edge ], [ %matchlen.0555, %lor.lhs.false192.cleanup261_crit_edge ], [ %matchlen.0555, %lor.lhs.false187.cleanup261_crit_edge ], [ %matchlen.0555, %for.body184.cleanup261_crit_edge ], [ %matchlen.0555, %do.end228.cleanup261_crit_edge ]
  %dst.2 = phi ptr [ %dst.1556, %if.then255 ], [ %call232, %if.end259 ], [ %dst.1556, %lor.lhs.false198.cleanup261_crit_edge ], [ %dst.1556, %lor.lhs.false192.cleanup261_crit_edge ], [ %dst.1556, %lor.lhs.false187.cleanup261_crit_edge ], [ %dst.1556, %for.body184.cleanup261_crit_edge ], [ %dst.1556, %do.end228.cleanup261_crit_edge ]
  %141 = ptrtoint ptr %laddr.1557 to i32
  call void @__asan_load4_noabort(i32 %141)
  %laddr.1 = load volatile ptr, ptr %laddr.1557, align 4
  %cmp182.not = icmp eq ptr %laddr.1, %address_list175
  br i1 %cmp182.not, label %cleanup261.for.end275_crit_edge, label %cleanup261.for.body184_crit_edge

cleanup261.for.body184_crit_edge:                 ; preds = %cleanup261
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body184

cleanup261.for.end275_crit_edge:                  ; preds = %cleanup261
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end275

for.end275:                                       ; preds = %cleanup261.for.end275_crit_edge, %cleanup261.thread, %do.end169.for.end275_crit_edge
  %dst.3 = phi ptr [ %call232, %cleanup261.thread ], [ %dst.0, %do.end169.for.end275_crit_edge ], [ %dst.2, %cleanup261.for.end275_crit_edge ]
  %call.i505 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i505, label %for.end275.rcu_read_unlock.exit516_crit_edge, label %land.lhs.true.i508

for.end275.rcu_read_unlock.exit516_crit_edge:     ; preds = %for.end275
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit516

land.lhs.true.i508:                               ; preds = %for.end275
  %call1.i506 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i506)
  %tobool.not.i507 = icmp eq i32 %call1.i506, 0
  br i1 %tobool.not.i507, label %land.lhs.true.i508.rcu_read_unlock.exit516_crit_edge, label %land.lhs.true2.i510

land.lhs.true.i508.rcu_read_unlock.exit516_crit_edge: ; preds = %land.lhs.true.i508
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit516

land.lhs.true2.i510:                              ; preds = %land.lhs.true.i508
  %.b4.i509 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i509, label %land.lhs.true2.i510.rcu_read_unlock.exit516_crit_edge, label %if.then.i511

land.lhs.true2.i510.rcu_read_unlock.exit516_crit_edge: ; preds = %land.lhs.true2.i510
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit516

if.then.i511:                                     ; preds = %land.lhs.true2.i510
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit516

rcu_read_unlock.exit516:                          ; preds = %if.then.i511, %land.lhs.true2.i510.rcu_read_unlock.exit516_crit_edge, %land.lhs.true.i508.rcu_read_unlock.exit516_crit_edge, %for.end275.rcu_read_unlock.exit516_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %142 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i512 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i.i.i.i512 to ptr
  %preempt_count.i.i.i.i513 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %preempt_count.i.i.i.i513 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %preempt_count.i.i.i.i513, align 4
  %sub.i.i.i514 = add i32 %145, -1
  store volatile i32 %sub.i.i.i514, ptr %preempt_count.i.i.i.i513, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit516, %rcu_read_unlock.exit483, %if.then95
  %dst.4 = phi ptr [ %call92, %if.then95 ], [ %dst.3, %rcu_read_unlock.exit516 ], [ %call92, %rcu_read_unlock.exit483 ]
  %tobool.not.i517 = icmp eq ptr %dst.4, null
  %cmp.i518 = icmp ugt ptr %dst.4, inttoptr (i32 -4096 to ptr)
  %spec.select.i519 = or i1 %tobool.not.i517, %cmp.i518
  br i1 %spec.select.i519, label %out.if.else298_crit_edge, label %if.then277

out.if.else298_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else298

if.then277:                                       ; preds = %out
  %sernum.i = getelementptr inbounds %struct.rt6_info, ptr %dst.4, i32 0, i32 2
  %146 = ptrtoint ptr %sernum.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %sernum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i520 = icmp eq i32 %147, 0
  br i1 %tobool.not.i520, label %if.end.i, label %if.then277.rt6_get_cookie.exit_crit_edge

if.then277.rt6_get_cookie.exit_crit_edge:         ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #18
  br label %rt6_get_cookie.exit

if.end.i:                                         ; preds = %if.then277
  %148 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %151, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %from2.i = getelementptr inbounds %struct.rt6_info, ptr %dst.4, i32 0, i32 1
  %152 = ptrtoint ptr %from2.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile ptr, ptr %from2.i, align 4
  %call.i521 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i521)
  %tobool4.not.i = icmp eq i32 %call.i521, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i522, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i

land.lhs.true.i522:                               ; preds = %rcu_read_lock.exit.i
  %call5.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i522.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i522.do.end12.i_crit_edge:          ; preds = %land.lhs.true.i522
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i522
  %.b23.i = load i1, ptr @rt6_get_cookie.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rt6_get_cookie.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 306, ptr noundef nonnull @.str.2) #16
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i522.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %153, null
  br i1 %tobool14.not.i, label %do.end12.i.if.end17.i_crit_edge, label %if.then15.i

do.end12.i.if.end17.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then15.i:                                      ; preds = %do.end12.i
  %fib6_node.i.i = getelementptr inbounds %struct.fib6_info, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %fib6_node.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile ptr, ptr %fib6_node.i.i, align 4
  %call.i24.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true.i26.i, label %if.then15.i.do.end7.i.i_crit_edge

if.then15.i.do.end7.i.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i.i

land.lhs.true.i26.i:                              ; preds = %if.then15.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i26.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i26.i.do.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i26.i
  %.b1.i.i = load i1, ptr @fib6_get_cookie_safe.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i27.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i.i

if.then.i27.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @fib6_get_cookie_safe.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 284, ptr noundef nonnull @.str.2) #16
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i27.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i26.i.do.end7.i.i_crit_edge, %if.then15.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %155, null
  br i1 %tobool9.not.i.i, label %do.end7.i.i.if.end17.i_crit_edge, label %do.end13.i.i

do.end7.i.i.if.end17.i_crit_edge:                 ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

do.end13.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %fn_sernum.i.i = getelementptr inbounds %struct.fib6_node, ptr %155, i32 0, i32 7
  %156 = ptrtoint ptr %fn_sernum.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %fn_sernum.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !113
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end13.i.i, %do.end7.i.i.if.end17.i_crit_edge, %do.end12.i.if.end17.i_crit_edge
  %cookie.1.i = phi i32 [ 0, %do.end12.i.if.end17.i_crit_edge ], [ 0, %do.end7.i.i.if.end17.i_crit_edge ], [ %157, %do.end13.i.i ]
  %call.i28.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i28.i, label %if.end17.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i31.i

if.end17.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true.i31.i:                              ; preds = %if.end17.i
  %call1.i29.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call1.i29.i, 0
  br i1 %tobool.not.i30.i, label %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i33.i

land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i33.i:                             ; preds = %land.lhs.true.i31.i
  %.b4.i32.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32.i, label %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i34.i

land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

if.then.i34.i:                                    ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i34.i, %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, %if.end17.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %158 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i35.i = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i.i.i.i35.i to ptr
  %preempt_count.i.i.i.i36.i = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %preempt_count.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %preempt_count.i.i.i.i36.i, align 4
  %sub.i.i.i.i523 = add i32 %161, -1
  store volatile i32 %sub.i.i.i.i523, ptr %preempt_count.i.i.i.i36.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %rt6_get_cookie.exit

rt6_get_cookie.exit:                              ; preds = %rcu_read_unlock.exit.i, %if.then277.rt6_get_cookie.exit_crit_edge
  %retval.0.i524 = phi i32 [ %cookie.1.i, %rcu_read_unlock.exit.i ], [ %147, %if.then277.rt6_get_cookie.exit_crit_edge ]
  %dst_cookie = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 4
  %162 = ptrtoint ptr %dst_cookie to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %retval.0.i524, ptr %dst_cookie, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_v6_get_dst.__UNIQUE_ID_ddebug585, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_v6_get_dst, %if.then291)) #16
          to label %if.end316 [label %if.then291], !srcloc !107

if.then291:                                       ; preds = %rt6_get_cookie.exit
  call void @__sanitizer_cov_trace_pc() #18
  %rt6i_dst = getelementptr inbounds %struct.rt6_info, ptr %dst.4, i32 0, i32 3
  %plen = getelementptr inbounds %struct.rt6_info, ptr %dst.4, i32 0, i32 3, i32 1
  %163 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %plen, align 4
  %saddr294 = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_v6_get_dst.__UNIQUE_ID_ddebug585, ptr noundef nonnull @.str.25, ptr noundef %rt6i_dst, i32 noundef %164, ptr noundef %saddr294) #16
  br label %if.end316

if.else298:                                       ; preds = %out.if.else298_crit_edge, %if.then.i453.if.else298_crit_edge
  %dst299 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %165 = ptrtoint ptr %dst299 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %dst299, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_v6_get_dst.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_v6_get_dst, %if.then312)) #16
          to label %if.end316 [label %if.then312], !srcloc !107

if.then312:                                       ; preds = %if.else298
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_v6_get_dst.__UNIQUE_ID_ddebug586, ptr noundef nonnull @.str.27) #16
  br label %if.end316

if.end316:                                        ; preds = %if.then312, %if.else298, %if.then291, %rt6_get_cookie.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final) #16
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dst_saddr) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %_fl) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_v6_get_saddr(ptr nocapture noundef readnone %sk, ptr nocapture noundef %t, ptr nocapture noundef readonly %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr1 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_v6_get_saddr.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_v6_get_saddr, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc, align 8
  %dst = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_v6_get_saddr.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, ptr noundef %1, ptr noundef %3) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dst4 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %4 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst4, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end.if.end8_crit_edge, label %if.then6

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %saddr1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 10, ptr %saddr1, align 4
  %sin6_addr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 19, i32 0, i32 3
  %saddr7 = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %sin6_addr, ptr %saddr7, i32 16)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_v6_copy_addrlist(ptr noundef %addrlist, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 80
  %4 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i30 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i30, label %rcu_read_lock.exit.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

rcu_read_lock.exit.__in6_dev_get.exit_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i31 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true.i32:                                ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i32.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i32.__in6_dev_get.exit_crit_edge:   ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i32
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i33

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

if.then.i33:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @.str.2) #16
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i33, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i32.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %rcu_read_lock.exit.__in6_dev_get.exit_crit_edge
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %__in6_dev_get.exit
  %call.i34 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i34, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i37

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i37:                                ; preds = %if.then
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  br label %cleanup

if.end:                                           ; preds = %__in6_dev_get.exit
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #16
  %addr_list = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %addr_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn55 = load ptr, ptr %addr_list, align 4
  %cmp2.not57 = icmp eq ptr %.pn55, %addr_list
  br i1 %cmp2.not57, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %prev.i43 = getelementptr inbounds %struct.list_head, ptr %addrlist, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn58 = phi ptr [ %.pn55, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2848, i32 noundef 48) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %ifp.059 = getelementptr i8, ptr %.pn58, i32 -228
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %a to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 10, ptr %a, align 8
  %sin6_addr = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %sin6_addr, ptr %ifp.059, i32 16)
  %10 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex, align 4
  %sin6_scope_id = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sin6_scope_id, align 8
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %valid, align 1
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %16 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i43, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %17, ptr noundef %addrlist) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %prev.i43, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %addrlist, ptr %call7.i.i, align 8
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %17, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn58, align 4
  %cmp2.not = icmp eq ptr %.pn, %addr_list
  br i1 %cmp2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #16
  %call.i44 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i44, label %for.end.rcu_read_unlock.exit54_crit_edge, label %land.lhs.true.i47

for.end.rcu_read_unlock.exit54_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit54

land.lhs.true.i47:                                ; preds = %for.end
  %call1.i45 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit54_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit54_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit54

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit54_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit54_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit54

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit54

rcu_read_unlock.exit54:                           ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit54_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit54_crit_edge, %for.end.rcu_read_unlock.exit54_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit54, %rcu_read_unlock.exit
  %23 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i51 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i53 = add i32 %26, -1
  store volatile i32 %sub.i.i.i53, ptr %preempt_count.i.i.i.i52, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v6_cmp_addr(ptr noundef %addr1, ptr nocapture noundef readonly %addr2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__sctp_v6_cmp_addr(ptr noundef %addr1, ptr noundef %addr2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %addr1, i32 0, i32 1
  %0 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sin6_port, align 2
  %sin6_port1 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr2, i32 0, i32 1
  %2 = ptrtoint ptr %sin6_port1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sin6_port1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp eq i16 %1, %3
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v6_from_skb(ptr nocapture noundef writeonly %addr, ptr nocapture noundef readonly %skb, i32 noundef %is_saddr) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 10, ptr %addr, align 4
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 2
  %5 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sin6_flowinfo, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb, align 8
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 4
  %8 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_saddr)
  %tobool.not = icmp eq i32 %is_saddr, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  %11 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i16 = zext i16 %15 to i32
  %add.ptr.i.i17 = getelementptr i8, ptr %13, i32 %conv.i.i16
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i17, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %sin6_addr, ptr %saddr, i32 16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dest = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dest, align 2
  %sin6_port2 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  %19 = ptrtoint ptr %sin6_port2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %sin6_port2, align 2
  %sin6_addr3 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i19 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i19, align 4
  %conv.i.i20 = zext i16 %23 to i32
  %add.ptr.i.i21 = getelementptr i8, ptr %21, i32 %conv.i.i20
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i21, i32 0, i32 6
  %24 = call ptr @memcpy(ptr %sin6_addr3, ptr %daddr, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v6_from_sk(ptr nocapture noundef writeonly %addr, ptr nocapture noundef readonly %sk) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 10, ptr %addr, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  %1 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %2 = call ptr @memcpy(ptr %sin6_addr, ptr %skc_v6_rcv_saddr, i32 16)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sctp_v6_from_addr_param(ptr nocapture noundef writeonly %addr, ptr nocapture noundef readonly %param, i16 noundef zeroext %port, i32 noundef %iif) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %1)
  %cmp = icmp ult i16 %1, 20
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 10, ptr %addr, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  %3 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %port, ptr %sin6_port, align 2
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sin6_flowinfo, align 4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %addr2 = getelementptr inbounds %struct.sctp_ipv6addr_param, ptr %param, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %sin6_addr, ptr %addr2, i32 16)
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 4
  %6 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %iif, ptr %sin6_scope_id, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %7 = xor i1 %cmp, true
  ret i1 %7
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_v6_to_addr_param(ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %param) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 6, ptr %param, align 4
  %length2 = getelementptr inbounds %struct.sctp_paramhdr, ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %length2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 20, ptr %length2, align 2
  %addr3 = getelementptr inbounds %struct.sctp_ipv6addr_param, ptr %param, i32 0, i32 1
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %addr3, ptr %sin6_addr, i32 16)
  ret i32 20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v6_addr_valid(ptr noundef %addr, ptr noundef %sp, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #16
  %and.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 4096
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %sp, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sp, i32 0, i32 5
  %0 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %1 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2, ptr %addr, align 4
  %arrayidx.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %5 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sin_addr.i, align 4
  %call4 = tail call ptr @sctp_get_af_specific(i16 noundef zeroext 2) #16
  %addr_valid = getelementptr inbounds %struct.sctp_af, ptr %call4, i32 0, i32 12
  %6 = ptrtoint ptr %addr_valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_valid, align 4
  %call5 = tail call i32 %7(ptr noundef %addr, ptr noundef %sp, ptr noundef %skb) #16
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %and = and i32 %call.i, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %and, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v6_scope(ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #16
  %0 = trunc i32 %call.i to i8
  %trunc = and i8 %0, -16
  %1 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %trunc, label %sw.default [
    i8 16, label %entry.sw.epilog_crit_edge
    i8 32, label %sw.bb2
    i8 64, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ 0, %sw.default ], [ 1, %sw.bb3 ], [ 2, %sw.bb2 ], [ 3, %entry.sw.epilog_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sctp_v6_inaddr_any(ptr nocapture noundef writeonly %addr, i16 noundef zeroext %port) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %addr, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 10, ptr %addr, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  %3 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %port, ptr %sin6_port, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_v6_is_any(ptr nocapture noundef readonly %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %0 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %3, %1
  %arrayidx4.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %5
  %arrayidx7.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v6_available(ptr noundef %addr, ptr noundef %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sp, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #16
  %trunc = trunc i32 %call.i to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %trunc, label %if.end10 [
    i16 0, label %entry.cleanup_crit_edge
    i16 4096, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %entry
  %tobool.not = icmp eq ptr %sp, null
  br i1 %tobool.not, label %if.then3.if.end7_crit_edge, label %land.lhs.true

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then3
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sp, i32 0, i32 5
  %3 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %4 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.then3.if.end7_crit_edge
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %addr, align 4
  %arrayidx.i = getelementptr %struct.sockaddr_in6, ptr %addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %8 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sin_addr.i, align 4
  %call8 = tail call ptr @sctp_get_af_specific(i16 noundef zeroext 2) #16
  %available = getelementptr inbounds %struct.sctp_af, ptr %call8, i32 0, i32 16
  %9 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %available, align 4
  %call9 = tail call i32 %10(ptr noundef %addr, ptr noundef %sp) #16
  br label %cleanup

if.end10:                                         ; preds = %entry
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %ip_nonlocal_bind.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 1, i32 25
  %11 = ptrtoint ptr %ip_nonlocal_bind.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ip_nonlocal_bind.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end13
  %freebind.i = getelementptr inbounds %struct.inet_sock, ptr %sp, i32 0, i32 12
  %13 = ptrtoint ptr %freebind.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %freebind.i, align 8
  %14 = and i16 %bf.load.i, 9216
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %.not = icmp eq i16 %14, 0
  br i1 %.not, label %lor.rhs, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = tail call i32 @ipv6_chk_addr(ptr noundef %1, ptr noundef %sin6_addr, ptr noundef null, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18 = icmp ne i32 %call17, 0
  %phi.cast = zext i1 %tobool18 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %lor.lhs.false.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %phi.cast, %lor.rhs ], [ 1, %lor.lhs.false.i.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_v6_is_ce(ptr nocapture noundef readonly %skb) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %and = and i32 %5, 1048576
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_v6_seq_dump_addr(ptr noundef %seq, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.32, ptr noundef %sin6_addr) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v6_ecn_capable(ptr noundef %sk) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %tclass = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 12
  %4 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tclass, align 1
  %6 = or i8 %5, 2
  store i8 %6, ptr %tclass, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v6_ip_options_len(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %4 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !102
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %inet6_sk.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

inet6_sk.exit.rcu_read_lock.exit_crit_edge:       ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %inet6_sk.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %inet6_sk.exit.rcu_read_lock.exit_crit_edge
  %opt1 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %8 = ptrtoint ptr %opt1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %opt1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @sctp_v6_ip_options_len.__warned, align 1
  br i1 %.b17, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sctp_v6_ip_options_len.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 516, ptr noundef nonnull @.str.2) #16
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %do.end9.if.end14_crit_edge, label %if.then12

do.end9.if.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %opt_flen, align 4
  %conv = zext i16 %11 to i32
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %opt_nflen, align 2
  %conv13 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv13, %conv
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end9.if.end14_crit_edge
  %len.0 = phi i32 [ %add, %if.then12 ], [ 0, %do.end9.if.end14_crit_edge ]
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i18, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %if.end14
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %14 = tail call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i.i.i.i.i25 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret i32 %len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_tunnel6_xmit_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_hash_from_flowi6(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_scope(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fl6_sock_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_inet_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_getname(ptr noundef %sock, ptr noundef %uaddr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_getname(ptr noundef %sock, ptr noundef %uaddr, i32 noundef %peer) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %v4mapped.i = getelementptr inbounds %struct.sctp_sock, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %v4mapped.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %v4mapped.i, align 8
  %3 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  %4 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %uaddr, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp.i = icmp eq i16 %5, 2
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %sin_addr.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %6 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sin_addr.i.i, align 4
  %sin6_addr.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %arrayidx.i.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx.i.i, align 4
  %9 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 10, ptr %uaddr, align 4
  store i32 0, ptr %sin_addr.i.i, align 4
  %sin6_scope_id.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %10 = ptrtoint ptr %sin6_scope_id.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sin6_scope_id.i.i, align 4
  %11 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sin6_addr.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx6.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65535, ptr %arrayidx9.i.i, align 4
  br label %if.end10thread-pre-split.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %5)
  %cmp5.i = icmp eq i16 %5, 10
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %14 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sin6_addr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %17, %15
  %arrayidx4.i.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %19, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.end10.thread.i, label %land.lhs.true.i.if.end10thread-pre-split.i_crit_edge

land.lhs.true.i.if.end10thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10thread-pre-split.i

if.end10.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %uaddr, align 4
  %arrayidx.i23.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i23.i, align 4
  %sin_addr.i24.i = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %23 = ptrtoint ptr %sin_addr.i24.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sin_addr.i24.i, align 4
  br label %if.then15.i

if.end10thread-pre-split.i:                       ; preds = %land.lhs.true.i.if.end10thread-pre-split.i_crit_edge, %if.then2.i
  %24 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %24)
  %.pr.i = load i16, ptr %uaddr, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10thread-pre-split.i, %if.else.i.if.end10.i_crit_edge
  %25 = phi i16 [ %.pr.i, %if.end10thread-pre-split.i ], [ %5, %if.else.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp13.i = icmp eq i16 %25, 2
  br i1 %cmp13.i, label %if.end10.i.if.then15.i_crit_edge, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10.i.if.then15.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end10.i.if.then15.i_crit_edge, %if.end10.thread.i
  %__pad.i = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 3
  %26 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 0, ptr %__pad.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15.i, %if.end10.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 16, %if.then15.i ], [ 28, %if.end10.i.cleanup_crit_edge ], [ 28, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_inet_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_getname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_inet6addr_event(ptr nocapture noundef readnone %this, i32 noundef %ev, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %idev = getelementptr inbounds %struct.inet6_ifaddr, ptr %ptr, i32 0, i32 16
  %0 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %6 = zext i32 %ev to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %ev, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2848, i32 noundef 48) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %a to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 10, ptr %a, align 8
  %sin6_addr = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %sin6_addr, ptr %ptr, i32 16)
  %10 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %idev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex, align 4
  %sin6_scope_id = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 4
  %16 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sin6_scope_id, align 8
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %valid, align 1
  %local_addr_lock = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 38, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %local_addr_lock) #16
  %local_addr_list = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 38, i32 8
  %prev.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 38, i32 8, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %19, ptr noundef %local_addr_list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail_rcu.exit_crit_edge

if.then.list_add_tail_rcu.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %local_addr_list, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !114
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i.i, ptr %19, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.then.list_add_tail_rcu.exit_crit_edge
  tail call void @sctp_addr_wq_mgmt(ptr noundef %5, ptr noundef nonnull %call7.i.i, i32 noundef 0) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %local_addr_lock) #16
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %local_addr_lock12 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 38, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %local_addr_lock12) #16
  %local_addr_list14 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 38, i32 8
  %24 = ptrtoint ptr %local_addr_list14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %local_addr_list14, align 8
  %cmp.not94 = icmp eq ptr %25, %local_addr_list14
  br i1 %cmp.not94, label %sw.bb10.sw.epilog.critedge_crit_edge, label %for.body.lr.ph

sw.bb10.sw.epilog.critedge_crit_edge:             ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.critedge

for.body.lr.ph:                                   ; preds = %sw.bb10
  %arrayidx6.i = getelementptr [4 x i32], ptr %ptr, i32 0, i32 1
  %arrayidx11.i = getelementptr [4 x i32], ptr %ptr, i32 0, i32 2
  %arrayidx17.i = getelementptr [4 x i32], ptr %ptr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.095 = phi ptr [ %25, %for.body.lr.ph ], [ %temp.096, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %addr.095 to i32
  call void @__asan_load4_noabort(i32 %26)
  %temp.096 = load ptr, ptr %addr.095, align 4
  %a23 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.095, i32 0, i32 2
  %27 = ptrtoint ptr %a23 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %a23, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %28)
  %cmp24 = icmp eq i16 %28, 10
  br i1 %cmp24, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %sin6_addr27 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.095, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %sin6_addr27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sin6_addr27, align 4
  %31 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ptr, align 4
  %xor.i = xor i32 %32, %30
  %arrayidx4.i = getelementptr %struct.sctp_sockaddr_entry, ptr %addr.095, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.i, align 4
  %35 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %36, %34
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr %struct.sctp_sockaddr_entry, ptr %addr.095, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9.i, align 4
  %39 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %40, %38
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr %struct.sctp_sockaddr_entry, ptr %addr.095, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx15.i, align 4
  %43 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %44, %42
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true31, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true31:                                  ; preds = %land.lhs.true
  %sin6_scope_id33 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.095, i32 0, i32 2, i32 0, i32 4
  %45 = ptrtoint ptr %sin6_scope_id33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sin6_scope_id33, align 4
  %47 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %idev, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %ifindex36 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 17
  %51 = ptrtoint ptr %ifindex36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ifindex36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %52)
  %cmp37 = icmp eq i32 %46, %52
  br i1 %cmp37, label %if.then39, label %land.lhs.true31.for.inc_crit_edge

land.lhs.true31.for.inc_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then39:                                        ; preds = %land.lhs.true31
  tail call void @sctp_addr_wq_mgmt(ptr noundef %5, ptr noundef %addr.095, i32 noundef 2) #16
  %valid40 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.095, i32 0, i32 4
  %53 = ptrtoint ptr %valid40 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %valid40, align 1
  %call.i.i88 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %addr.095) #16
  br i1 %call.i.i88, label %if.end.i.i89, label %if.then39.list_del_rcu.exit_crit_edge

if.then39.list_del_rcu.exit_crit_edge:            ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit

if.end.i.i89:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %addr.095, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %addr.095 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %addr.095, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i89, %if.then39.list_del_rcu.exit_crit_edge
  %prev.i90 = getelementptr inbounds %struct.list_head, ptr %addr.095, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i90, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %local_addr_lock12) #16
  %tobool52.not = icmp eq ptr %addr.095, null
  br i1 %tobool52.not, label %list_del_rcu.exit.sw.epilog_crit_edge, label %do.end

list_del_rcu.exit.sw.epilog_crit_edge:            ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.inc:                                          ; preds = %land.lhs.true31.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %temp.096, %local_addr_list14
  br i1 %cmp.not, label %for.inc.sw.epilog.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.sw.epilog.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.critedge

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  %rcu = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.095, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #16
  br label %sw.epilog

sw.epilog.critedge:                               ; preds = %for.inc.sw.epilog.critedge_crit_edge, %sw.bb10.sw.epilog.critedge_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %local_addr_lock12) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.critedge, %do.end, %list_del_rcu.exit.sw.epilog_crit_edge, %list_add_tail_rcu.exit, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_addr_wq_mgmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp6_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %encap_port = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %encap_port to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %encap_port, align 8
  %call = tail call i32 @sctp_rcv(ptr noundef %skb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %cond = sext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v6_err(ptr noundef %skb, ptr nocapture noundef readnone %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #0 align 64 {
entry:
  %transport = alloca ptr, align 4
  %asoc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transport) #16
  %5 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %transport, align 4, !annotation !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %asoc) #16
  %6 = ptrtoint ptr %asoc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %asoc, align 4, !annotation !98
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header, align 4
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %9 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %transport_header, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  store i16 %conv.i, ptr %network_header, align 4
  %15 = trunc i32 %offset to i16
  %conv1.i = add i16 %conv.i, %15
  store i16 %conv1.i, ptr %transport_header, align 2
  %conv.i.i46 = zext i16 %conv1.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i46
  %call2 = call ptr @sctp_err_lookup(ptr noundef %4, i32 noundef 10, ptr noundef %skb, ptr noundef %add.ptr.i.i, ptr noundef nonnull %asoc, ptr noundef nonnull %transport) #16
  %16 = ptrtoint ptr %network_header to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %8, ptr %network_header, align 4
  %17 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %10, ptr %transport_header, align 2
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 80
  %20 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %if.then.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.then.__in6_dev_get.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %call2.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @.str.2) #16
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.then.__in6_dev_get.exit_crit_edge
  %cmp.not = icmp eq ptr %21, null
  br i1 %cmp.not, label %__in6_dev_get.exit.if.end_crit_edge, label %if.then8, !prof !99

__in6_dev_get.exit.if.end_crit_edge:              ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then8:                                         ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %21, i32 0, i32 33, i32 2
  %22 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx = getelementptr [6 x %struct.atomic_t], ptr %23, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #16
  %24 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #16, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.then8, %__in6_dev_get.exit.if.end_crit_edge
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 13
  %25 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx16 = getelementptr [6 x i32], ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx16 to i32
  %28 = call i32 @llvm.read_register.i32(metadata !88) #16
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu, align 4
  %arrayidx19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx19, align 4
  %add = add i32 %33, %27
  %34 = inttoptr i32 %add to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add20 = add i32 %36, 1
  store i32 %add20, ptr %34, align 4
  br label %cleanup

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %transport, align 4
  call fastcc void @sctp_v6_err_handle(ptr noundef %38, ptr noundef %skb, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %info)
  %39 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %transport, align 4
  call void @sctp_err_finish(ptr noundef nonnull %call2, ptr noundef %40) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %asoc) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transport) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_rcv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !28, !30, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !52, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !71, !72, !73, !74, !76, !78, !80, !82, !84, !86}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/ipv6.c", i32 203, i32 3}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/net/sock.h", i32 1750, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sctp_pf_inet6, !10, !"sctp_pf_inet6", i1 false, i1 false}
!10 = !{!"../net/sctp/ipv6.c", i32 1145, i32 23}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/sctp/ipv6.c", i32 498, i32 8}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/sctp/ipv6.c", i32 502, i32 4}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sctp_v6_copy_ip_options._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @sctp_v6_copy_ip_options._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sctp_af_inet6, !27, !"sctp_af_inet6", i1 false, i1 false}
!27 = !{!"../net/sctp/ipv6.c", i32 1118, i32 23}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/sctp/ipv6.c", i32 231, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sctp_v6_xmit.__UNIQUE_ID_ddebug572, !29, !"__UNIQUE_ID_ddebug572", i1 false, i1 false}
!33 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/sctp/ipv6.c", i32 251, i32 11}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/dst.h", i32 231, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/sctp/ipv6.c", i32 310, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sctp_v6_get_dst.__UNIQUE_ID_ddebug575, !39, !"__UNIQUE_ID_ddebug575", i1 false, i1 false}
!42 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/sctp/ipv6.c", i32 320, i32 3}
!45 = !{ptr @sctp_v6_get_dst.__UNIQUE_ID_ddebug576, !44, !"__UNIQUE_ID_ddebug576", i1 false, i1 false}
!46 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/sctp/ipv6.c", i32 324, i32 32}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/sctp/ipv6.c", i32 345, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/sctp/ipv6.c", i32 372, i32 2}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/sctp/ipv6.c", i32 384, i32 33}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/sctp/ipv6.c", i32 421, i32 3}
!58 = !{ptr @sctp_v6_get_dst.__UNIQUE_ID_ddebug585, !57, !"__UNIQUE_ID_ddebug585", i1 false, i1 false}
!59 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/sctp/ipv6.c", i32 426, i32 3}
!62 = !{ptr @sctp_v6_get_dst.__UNIQUE_ID_ddebug586, !61, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!63 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/net/ip6_fib.h", i32 306, i32 9}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/net/ip6_fib.h", i32 284, i32 7}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/sctp/ipv6.c", i32 449, i32 2}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sctp_v6_get_saddr.__UNIQUE_ID_ddebug587, !70, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!73 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/sctp/ipv6.c", i32 849, i32 18}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../net/sctp/ipv6.c", i32 516, i32 8}
!78 = !{ptr @sctpv6_seqpacket_protosw, !79, !"sctpv6_seqpacket_protosw", i1 false, i1 false}
!79 = !{!"../net/sctp/ipv6.c", i32 1091, i32 28}
!80 = !{ptr @inet6_seqpacket_ops, !81, !"inet6_seqpacket_ops", i1 false, i1 false}
!81 = !{!"../net/sctp/ipv6.c", i32 1067, i32 31}
!82 = !{ptr @sctpv6_stream_protosw, !83, !"sctpv6_stream_protosw", i1 false, i1 false}
!83 = !{!"../net/sctp/ipv6.c", i32 1098, i32 28}
!84 = !{ptr @sctp_inet6addr_notifier, !85, !"sctp_inet6addr_notifier", i1 false, i1 false}
!85 = !{!"../net/sctp/ipv6.c", i32 122, i32 30}
!86 = !{ptr @sctpv6_protocol, !87, !"sctpv6_protocol", i1 false, i1 false}
!87 = !{!"../net/sctp/ipv6.c", i32 1112, i32 36}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2148370543, i64 2148370569, i64 2148370598, i64 2148370632, i64 2148370663, i64 2148370686}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2149386702}
!103 = !{i64 2149386968}
!104 = !{i64 2148369962}
!105 = !{i64 855582, i64 855607, i64 855629, i64 855645, i64 855657, i64 855677, i64 855701, i64 855717, i64 855729}
!106 = !{i64 2148370150}
!107 = !{i64 2148983920, i64 2148983925, i64 2148983938, i64 2148983982, i64 2148984016, i64 2148984037}
!108 = !{i64 774243, i64 774304}
!109 = !{i64 776975}
!110 = !{i64 777260}
!111 = !{i64 2148373008, i64 2148373034, i64 2148373063, i64 2148373097, i64 2148373128, i64 2148373151}
!112 = !{i32 0, i32 33}
!113 = !{i64 2157610627}
!114 = !{i64 2151844145}
