; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_metrics.c_pt.bc'
source_filename = "../net/ipv4/tcp_metrics.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.65 }
%union.anon.65 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.194 = type { i32, i32, i64 }
%struct.anon.195 = type { i32, i32, i64 }
%struct.anon.196 = type { i32, i32 }
%struct.tcp_metrics_block = type { ptr, %struct.possible_net_t, %struct.inetpeer_addr, %struct.inetpeer_addr, i32, i32, [5 x i32], %struct.tcp_fastopen_metrics, %struct.callback_head }
%struct.inetpeer_addr = type { %union.anon.200, i16 }
%union.anon.200 = type { %struct.in6_addr }
%struct.tcp_fastopen_metrics = type { i16, i16, i32, %struct.tcp_fastopen_cookie }
%struct.tcp_fastopen_cookie = type { [2 x i64], i8, i8 }
%struct.ipv4_addr_key = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.165, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.183, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.165 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.183 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.tcpm_hash_bucket = type { ptr }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.169 }
%union.anon.169 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fastopen_seqlock = internal global { %struct.seqlock_t, [48 x i8] } { %struct.seqlock_t { %struct.seqcount_spinlock { %struct.seqcount { i32 0, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr getelementptr (i8, ptr @fastopen_seqlock, i64 36) }, %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [48 x i8] zeroinitializer }, align 32
@__setup_str_set_tcpmhash_entries = internal constant [18 x i8] c"tcpmhash_entries=\00", section ".init.rodata", align 1
@__setup_set_tcpmhash_entries = internal global %struct.obs_kernel_param { ptr @__setup_str_set_tcpmhash_entries, ptr @set_tcpmhash_entries, i32 0 }, section ".init.setup", align 4
@tcp_net_metrics_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @tcp_net_metrics_init, ptr null, ptr null, ptr @tcp_net_metrics_exit_batch, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not allocate the tcp_metrics hash table\0A\00", [49 x i8] zeroinitializer }, align 32
@tcp_metrics_nl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"tcp_metrics\00\00\00\00\00", i32 1, i32 13, i32 0, i8 -128, i8 0, i8 2, i8 0, ptr @tcp_metrics_nl_policy, ptr null, ptr null, ptr null, ptr @tcp_metrics_nl_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Could not register tcp_metrics generic netlink\0A\00", [48 x i8] zeroinitializer }, align 32
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@tcp_metrics_hash_log = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@tcp_metrics_hash = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__tcp_get_metrics.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/ipv4/tcp_metrics.c\00", [41 x i8] zeroinitializer }, align 32
@__tcp_get_metrics.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_metrics_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@tcpm_new.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@tcpm_new.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcpm_new.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcp_metrics_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tcp_get_metrics_req.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tcp_get_metrics_req.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fastopen_seqlock.seqcount\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fastopen_seqlock\00", [47 x i8] zeroinitializer }, align 32
@tcpmhash_entries = internal global { i32, [28 x i8] } zeroinitializer, align 32
@init_net = external dso_local global %struct.net, align 128
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@tcp_metrics_flush_all.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_metrics_flush_all.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_metrics_nl_ops = internal constant { [2 x %struct.genl_small_ops], [40 x i8] } { [2 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @tcp_metrics_nl_cmd_get, ptr @tcp_metrics_nl_dump, i8 1, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @tcp_metrics_nl_cmd_del, ptr null, i8 2, i8 0, i8 1, i8 3 }], [40 x i8] zeroinitializer }, align 32
@tcp_metrics_nl_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [11 x %struct.nla_policy] }>, [48 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [11 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.65 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.65 zeroinitializer }, [11 x %struct.nla_policy] zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@tcp_metrics_nl_cmd_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_metrics_nl_cmd_get.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@tcp_metrics_nl_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_metrics_nl_dump.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_metrics_nl_cmd_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_metrics_nl_cmd_del.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"fastopen_seqlock\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"tcp_net_metrics_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1020, i32 48 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1031, i32 9 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1035, i32 9 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 2067, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 218, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"tcp_metrics_lock\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 174, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 91, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 723, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 541, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"tcpmhash_entries\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 973, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"tcp_metrics_nl_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 946, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"tcp_metrics_nl_policy\00", align 1
@___asan_gen_.78 = private constant [26 x i8] c"../net/ipv4/tcp_metrics.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 600, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 991, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__setup_set_tcpmhash_entries, ptr @fastopen_seqlock, ptr @tcp_net_metrics_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tcp_metrics_lock, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @tcpmhash_entries, ptr @tcp_metrics_nl_ops, ptr @tcp_metrics_nl_policy, ptr @.str.20], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastopen_seqlock to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_net_metrics_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_metrics_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpmhash_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_metrics_nl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_metrics_nl_policy to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_update_metrics(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.__sk_dst_get.exit_crit_edge

entry.__sk_dst_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i241 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i241, label %land.lhs.true.i242, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

land.lhs.true.i242:                               ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i242.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i242.__sk_dst_get.exit_crit_edge:   ; preds = %land.lhs.true.i242
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i242
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i243

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

if.then.i243:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.3) #12
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i243, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i242.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %entry.__sk_dst_get.exit_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %4 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_dst_pending_confirm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i244 = icmp eq i32 %5, 0
  br i1 %tobool.not.i244, label %do.body4.i, label %__sk_dst_get.exit.sk_dst_confirm.exit_crit_edge

__sk_dst_get.exit.sk_dst_confirm.exit_crit_edge:  ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_dst_confirm.exit

do.body4.i:                                       ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %sk_dst_pending_confirm.i, align 8
  br label %sk_dst_confirm.exit

sk_dst_confirm.exit:                              ; preds = %do.body4.i, %__sk_dst_get.exit.sk_dst_confirm.exit_crit_edge
  %sysctl_tcp_nometrics_save = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 89
  %7 = ptrtoint ptr %sysctl_tcp_nometrics_save to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sysctl_tcp_nometrics_save, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp ne i8 %8, 0
  %tobool4.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %sk_dst_confirm.exit.cleanup_crit_edge, label %if.end

sk_dst_confirm.exit.cleanup_crit_edge:            ; preds = %sk_dst_confirm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sk_dst_confirm.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %icsk_backoff = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 20
  %13 = ptrtoint ptr %icsk_backoff to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %icsk_backoff, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %rcu_read_lock.exit.if.then9_crit_edge

rcu_read_lock.exit.if.then9_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false7:                                   ; preds = %rcu_read_lock.exit
  %srtt_us = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %15 = ptrtoint ptr %srtt_us to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %srtt_us, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not = icmp eq i32 %16, 0
  br i1 %tobool8.not, label %lor.lhs.false7.if.then9_crit_edge, label %if.else

lor.lhs.false7.if.then9_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false7.if.then9_crit_edge, %rcu_read_lock.exit.if.then9_crit_edge
  %call10 = tail call fastcc ptr @tcp_get_metrics(ptr noundef %sk, ptr noundef nonnull %1, i1 noundef zeroext false)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then9.out_unlock_crit_edge, label %land.lhs.true

if.then9.out_unlock_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

land.lhs.true:                                    ; preds = %if.then9
  %tcpm_lock.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %call10, i32 0, i32 5
  %17 = ptrtoint ptr %tcpm_lock.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tcpm_lock.i, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then13, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.tcp_metrics_block, ptr %call10, i32 0, i32 6, i32 0
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx.i, align 4
  br label %out_unlock

if.else:                                          ; preds = %lor.lhs.false7
  %call15 = tail call fastcc ptr @tcp_get_metrics(ptr noundef %sk, ptr noundef nonnull %1, i1 noundef zeroext true)
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.else.out_unlock_crit_edge, label %if.end19

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end19:                                         ; preds = %if.else
  %arrayidx.i245 = getelementptr %struct.tcp_metrics_block, ptr %call15, i32 0, i32 6, i32 0
  %20 = ptrtoint ptr %arrayidx.i245 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i245, align 4
  %22 = ptrtoint ptr %srtt_us to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %srtt_us, align 8
  %sub = sub i32 %21, %23
  %tcpm_lock.i246 = getelementptr inbounds %struct.tcp_metrics_block, ptr %call15, i32 0, i32 5
  %24 = ptrtoint ptr %tcpm_lock.i246 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tcpm_lock.i246, align 4
  %and.i247 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i247)
  %tobool.i248.not = icmp eq i32 %and.i247, 0
  br i1 %tobool.i248.not, label %if.then23, label %if.end19.if.end30_crit_edge

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  %shr300 = lshr i32 %sub, 3
  %sub28 = sub i32 %21, %shr300
  %rtt.0 = select i1 %cmp, i32 %23, i32 %sub28
  %26 = ptrtoint ptr %arrayidx.i245 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rtt.0, ptr %arrayidx.i245, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.end19.if.end30_crit_edge
  %27 = ptrtoint ptr %tcpm_lock.i246 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tcpm_lock.i246, align 4
  %and.i251 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i251)
  %tobool.i252.not = icmp eq i32 %and.i251, 0
  br i1 %tobool.i252.not, label %if.then32, label %if.end30.if.end53_crit_edge

if.end30.if.end53_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %29 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %shr38 = ashr i32 %29, 1
  %mdev_us = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 46
  %30 = ptrtoint ptr %mdev_us to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mdev_us, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %shr38, i32 %31)
  %arrayidx.i253 = getelementptr %struct.tcp_metrics_block, ptr %call15, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i253, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp45.not = icmp ugt i32 %34, %32
  %sub49 = sub i32 %34, %32
  %shr50 = lshr i32 %sub49, 2
  %sub51 = sub i32 %34, %shr50
  %var.0 = select i1 %cmp45.not, i32 %sub51, i32 %32
  %35 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %var.0, ptr %arrayidx.i253, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then32, %if.end30.if.end53_crit_edge
  %snd_ssthresh.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %36 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %snd_ssthresh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %37)
  %cmp.i = icmp ugt i32 %37, 2147483646
  br i1 %cmp.i, label %if.then55, label %if.else82

if.then55:                                        ; preds = %if.end53
  %sysctl_tcp_no_ssthresh_metrics_save = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 90
  %38 = ptrtoint ptr %sysctl_tcp_no_ssthresh_metrics_save to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sysctl_tcp_no_ssthresh_metrics_save, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool57.not = icmp eq i8 %39, 0
  br i1 %tobool57.not, label %land.lhs.true58, label %if.then55.if.end71_crit_edge

if.then55.if.end71_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

land.lhs.true58:                                  ; preds = %if.then55
  %40 = ptrtoint ptr %tcpm_lock.i246 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tcpm_lock.i246, align 4
  %and.i256 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i256)
  %tobool.i257.not = icmp eq i32 %and.i256, 0
  br i1 %tobool.i257.not, label %if.then60, label %land.lhs.true58.if.end71_crit_edge

land.lhs.true58.if.end71_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then60:                                        ; preds = %land.lhs.true58
  %arrayidx.i258 = getelementptr %struct.tcp_metrics_block, ptr %call15, i32 0, i32 6, i32 2
  %42 = ptrtoint ptr %arrayidx.i258 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool62.not = icmp eq i32 %43, 0
  br i1 %tobool62.not, label %if.then60.if.end71_crit_edge, label %land.lhs.true63

if.then60.if.end71_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

land.lhs.true63:                                  ; preds = %if.then60
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %44 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %snd_cwnd, align 8
  %shr64 = lshr i32 %45, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr64, i32 %43)
  %cmp65 = icmp ugt i32 %shr64, %43
  br i1 %cmp65, label %if.then67, label %land.lhs.true63.if.end71_crit_edge

land.lhs.true63.if.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then67:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %arrayidx.i258 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr64, ptr %arrayidx.i258, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %land.lhs.true63.if.end71_crit_edge, %if.then60.if.end71_crit_edge, %land.lhs.true58.if.end71_crit_edge, %if.then55.if.end71_crit_edge
  %47 = ptrtoint ptr %tcpm_lock.i246 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tcpm_lock.i246, align 4
  %and.i261 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i261)
  %tobool.i262.not = icmp eq i32 %and.i261, 0
  br i1 %tobool.i262.not, label %if.then73, label %if.end71.if.end145_crit_edge

if.end71.if.end145_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

if.then73:                                        ; preds = %if.end71
  %arrayidx.i263 = getelementptr %struct.tcp_metrics_block, ptr %call15, i32 0, i32 6, i32 3
  %49 = ptrtoint ptr %arrayidx.i263 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i263, align 4
  %snd_cwnd75 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %51 = ptrtoint ptr %snd_cwnd75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %snd_cwnd75, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %50)
  %cmp76 = icmp ugt i32 %52, %50
  br i1 %cmp76, label %if.then78, label %if.then73.if.end145_crit_edge

if.then73.if.end145_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

if.then78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %arrayidx.i263 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx.i263, align 4
  br label %if.end145

if.else82:                                        ; preds = %if.end53
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %54 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %snd_cwnd.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %37)
  %cmp.i266 = icmp ult i32 %55, %37
  br i1 %cmp.i266, label %if.else82.if.else106_crit_edge, label %land.lhs.true84

if.else82.if.else106_crit_edge:                   ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else106

land.lhs.true84:                                  ; preds = %if.else82
  %icsk_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %56 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load = load i8, ptr %icsk_ca_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %cmp86 = icmp ult i8 %bf.load, 8
  br i1 %cmp86, label %if.then88, label %land.lhs.true84.if.else106_crit_edge

land.lhs.true84.if.else106_crit_edge:             ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else106

if.then88:                                        ; preds = %land.lhs.true84
  %sysctl_tcp_no_ssthresh_metrics_save90 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 90
  %57 = ptrtoint ptr %sysctl_tcp_no_ssthresh_metrics_save90 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sysctl_tcp_no_ssthresh_metrics_save90, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool91.not = icmp eq i8 %58, 0
  br i1 %tobool91.not, label %land.lhs.true92, label %if.then88.if.end99_crit_edge

if.then88.if.end99_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

land.lhs.true92:                                  ; preds = %if.then88
  %59 = ptrtoint ptr %tcpm_lock.i246 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tcpm_lock.i246, align 4
  %and.i268 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.i269.not = icmp eq i32 %and.i268, 0
  br i1 %tobool.i269.not, label %if.then94, label %land.lhs.true92.if.end99_crit_edge

land.lhs.true92.if.end99_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then94:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  %shr96 = lshr i32 %55, 1
  %61 = tail call i32 @llvm.umax.i32(i32 %shr96, i32 %37)
  %arrayidx.i270 = getelementptr %struct.tcp_metrics_block, ptr %call15, i32 0, i32 6, i32 2
  %62 = ptrtoint ptr %arrayidx.i270 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx.i270, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %land.lhs.true92.if.end99_crit_edge, %if.then88.if.end99_crit_edge
  %63 = ptrtoint ptr %tcpm_lock.i246 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tcpm_lock.i246, align 4
  %and.i272 = and i32 %64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i272)
  %tobool.i273.not = icmp eq i32 %and.i272, 0
  br i1 %tobool.i273.not, label %if.then101, label %if.end99.if.end145_crit_edge

if.end99.if.end145_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i274 = getelementptr %struct.tcp_metrics_block, ptr %call15, i32 0, i32 6, i32 3
  %65 = ptrtoint ptr %arrayidx.i274 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i274, align 4
  %67 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %snd_cwnd.i, align 8
  %add = add i32 %68, %66
  %shr104 = lshr i32 %add, 1
  store i32 %shr104, ptr %arrayidx.i274, align 4
  br label %if.end145

if.else106:                                       ; preds = %land.lhs.true84.if.else106_crit_edge, %if.else82.if.else106_crit_edge
  %69 = ptrtoint ptr %tcpm_lock.i246 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tcpm_lock.i246, align 4
  %and.i277 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i277)
  %tobool.i278.not = icmp eq i32 %and.i277, 0
  br i1 %tobool.i278.not, label %if.then108, label %if.else106.if.end113_crit_edge

if.else106.if.end113_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

if.then108:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i279 = getelementptr %struct.tcp_metrics_block, ptr %call15, i32 0, i32 6, i32 3
  %71 = ptrtoint ptr %arrayidx.i279 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i279, align 4
  %add111 = add i32 %72, %37
  %shr112 = lshr i32 %add111, 1
  store i32 %shr112, ptr %arrayidx.i279, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %if.else106.if.end113_crit_edge
  %sysctl_tcp_no_ssthresh_metrics_save115 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 90
  %73 = ptrtoint ptr %sysctl_tcp_no_ssthresh_metrics_save115 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sysctl_tcp_no_ssthresh_metrics_save115, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool116.not = icmp eq i8 %74, 0
  br i1 %tobool116.not, label %land.lhs.true117, label %if.end113.if.end129_crit_edge

if.end113.if.end129_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

land.lhs.true117:                                 ; preds = %if.end113
  %75 = ptrtoint ptr %tcpm_lock.i246 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tcpm_lock.i246, align 4
  %and.i282 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i282)
  %tobool.i283.not = icmp eq i32 %and.i282, 0
  br i1 %tobool.i283.not, label %if.then119, label %land.lhs.true117.if.end129_crit_edge

land.lhs.true117.if.end129_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

if.then119:                                       ; preds = %land.lhs.true117
  %arrayidx.i284 = getelementptr %struct.tcp_metrics_block, ptr %call15, i32 0, i32 6, i32 2
  %77 = ptrtoint ptr %arrayidx.i284 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool121.not = icmp eq i32 %78, 0
  br i1 %tobool121.not, label %if.then119.if.end129_crit_edge, label %land.lhs.true122

if.then119.if.end129_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

land.lhs.true122:                                 ; preds = %if.then119
  %79 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %snd_ssthresh.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %78)
  %cmp124 = icmp ugt i32 %80, %78
  br i1 %cmp124, label %if.then126, label %land.lhs.true122.if.end129_crit_edge

land.lhs.true122.if.end129_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

if.then126:                                       ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %arrayidx.i284 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx.i284, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %land.lhs.true122.if.end129_crit_edge, %if.then119.if.end129_crit_edge, %land.lhs.true117.if.end129_crit_edge, %if.end113.if.end129_crit_edge
  %82 = ptrtoint ptr %tcpm_lock.i246 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tcpm_lock.i246, align 4
  %and.i287 = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i287)
  %tobool.i288.not = icmp eq i32 %and.i287, 0
  br i1 %tobool.i288.not, label %if.then131, label %if.end129.if.end145_crit_edge

if.end129.if.end145_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

if.then131:                                       ; preds = %if.end129
  %arrayidx.i289 = getelementptr %struct.tcp_metrics_block, ptr %call15, i32 0, i32 6, i32 4
  %84 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i289, align 4
  %reordering = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 58
  %86 = ptrtoint ptr %reordering to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %reordering, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp133 = icmp ult i32 %85, %87
  br i1 %cmp133, label %land.lhs.true135, label %if.then131.if.end145_crit_edge

if.then131.if.end145_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

land.lhs.true135:                                 ; preds = %if.then131
  %sysctl_tcp_reordering = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 65
  %88 = ptrtoint ptr %sysctl_tcp_reordering to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sysctl_tcp_reordering, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp138.not = icmp eq i32 %87, %89
  br i1 %cmp138.not, label %land.lhs.true135.if.end145_crit_edge, label %if.then140

land.lhs.true135.if.end145_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

if.then140:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %arrayidx.i289, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %land.lhs.true135.if.end145_crit_edge, %if.then131.if.end145_crit_edge, %if.end129.if.end145_crit_edge, %if.then101, %if.end99.if.end145_crit_edge, %if.then78, %if.then73.if.end145_crit_edge, %if.end71.if.end145_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %tcpm_stamp = getelementptr inbounds %struct.tcp_metrics_block, ptr %call15, i32 0, i32 4
  %92 = ptrtoint ptr %tcpm_stamp to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %tcpm_stamp, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.end145, %if.else.out_unlock_crit_edge, %if.then13, %land.lhs.true.out_unlock_crit_edge, %if.then9.out_unlock_crit_edge
  %call.i291 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i291, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i294

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i294:                               ; preds = %out_unlock
  %call1.i292 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i292)
  %tobool.not.i293 = icmp eq i32 %call1.i292, 0
  br i1 %tobool.not.i293, label %land.lhs.true.i294.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i296

land.lhs.true.i294.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i294
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i296:                              ; preds = %land.lhs.true.i294
  %.b4.i295 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i295, label %land.lhs.true2.i296.rcu_read_unlock.exit_crit_edge, label %if.then.i297

land.lhs.true2.i296.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i296
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i297:                                     ; preds = %land.lhs.true2.i296
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i297, %land.lhs.true2.i296.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i294.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %93 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i298 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i298 to ptr
  %preempt_count.i.i.i.i299 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i.i.i299 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i.i.i299, align 4
  %sub.i.i.i = add i32 %96, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i299, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %sk_dst_confirm.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tcp_get_metrics(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %dst, i1 noundef zeroext %create) unnamed_addr #0 align 64 {
entry:
  %saddr = alloca %struct.inetpeer_addr, align 4
  %daddr = alloca %struct.inetpeer_addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %saddr) #12
  %0 = call ptr @memset(ptr %saddr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %daddr) #12
  %1 = call ptr @memset(ptr %daddr, i32 255, i32 20)
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 2, label %if.then
    i16 10, label %if.then15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %5 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inet_saddr, align 4
  %7 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %saddr, align 4
  %vif.i = getelementptr inbounds %struct.ipv4_addr_key, ptr %saddr, i32 0, i32 1
  %8 = ptrtoint ptr %vif.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %vif.i, align 4
  %family.i = getelementptr inbounds %struct.inetpeer_addr, ptr %saddr, i32 0, i32 1
  %9 = ptrtoint ptr %family.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %family.i, align 4
  %10 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk, align 8
  %12 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %daddr, align 4
  %vif.i78 = getelementptr inbounds %struct.ipv4_addr_key, ptr %daddr, i32 0, i32 1
  %13 = ptrtoint ptr %vif.i78 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %vif.i78, align 4
  %family.i79 = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr, i32 0, i32 1
  %14 = ptrtoint ptr %family.i79 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %family.i79, align 4
  br label %if.end39

if.then15:                                        ; preds = %entry
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %15 = ptrtoint ptr %skc_v6_daddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %skc_v6_daddr, align 4
  %arrayidx2.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %18, %16
  %arrayidx4.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %20, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %if.then18, label %if.else30

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %inet_saddr20 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %21 = ptrtoint ptr %inet_saddr20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %inet_saddr20, align 4
  %23 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %saddr, align 4
  %vif.i80 = getelementptr inbounds %struct.ipv4_addr_key, ptr %saddr, i32 0, i32 1
  %24 = ptrtoint ptr %vif.i80 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %vif.i80, align 4
  %family.i81 = getelementptr inbounds %struct.inetpeer_addr, ptr %saddr, i32 0, i32 1
  %25 = ptrtoint ptr %family.i81 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %family.i81, align 4
  %26 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sk, align 8
  %28 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %daddr, align 4
  %vif.i82 = getelementptr inbounds %struct.ipv4_addr_key, ptr %daddr, i32 0, i32 1
  %29 = ptrtoint ptr %vif.i82 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %vif.i82, align 4
  %family.i83 = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr, i32 0, i32 1
  %30 = ptrtoint ptr %family.i83 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2, ptr %family.i83, align 4
  br label %if.end39

if.else30:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %31 = call ptr @memcpy(ptr %saddr, ptr %skc_v6_rcv_saddr, i32 16)
  %family.i84 = getelementptr inbounds %struct.inetpeer_addr, ptr %saddr, i32 0, i32 1
  %32 = ptrtoint ptr %family.i84 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 10, ptr %family.i84, align 4
  %33 = call ptr @memcpy(ptr %daddr, ptr %skc_v6_daddr, i32 16)
  %family.i85 = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr, i32 0, i32 1
  %34 = ptrtoint ptr %family.i85 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 10, ptr %family.i85, align 4
  %xor.i87 = xor i32 %18, %16
  %xor5.i = xor i32 %xor.i87, %20
  %arrayidx7.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx7.i, align 4
  %xor8.i = xor i32 %xor5.i, %36
  br label %if.end39

if.end39:                                         ; preds = %if.else30, %if.then18, %if.then
  %hash.0 = phi i32 [ %11, %if.then ], [ %27, %if.then18 ], [ %xor8.i, %if.else30 ]
  %37 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dst, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 127
  %39 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nd_net.i, align 4
  %hash_mix.i = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 26
  %41 = ptrtoint ptr %hash_mix.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hash_mix.i, align 8
  %xor = xor i32 %42, %hash.0
  %43 = load i32, ptr @tcp_metrics_hash_log, align 4
  %mul.i.i = mul i32 %xor, 1640531527
  %sub.i = sub i32 32, %43
  %shr.i = lshr i32 %mul.i.i, %sub.i
  %call43 = call fastcc ptr @__tcp_get_metrics(ptr noundef nonnull %saddr, ptr noundef nonnull %daddr, ptr noundef %40, i32 noundef %shr.i)
  %cmp44 = icmp eq ptr %call43, inttoptr (i32 1 to ptr)
  %spec.store.select = select i1 %cmp44, ptr null, ptr %call43
  %tobool.not = icmp eq ptr %spec.store.select, null
  %brmerge.demorgan = and i1 %tobool.not, %create
  br i1 %brmerge.demorgan, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.end39
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @tcp_metrics_lock) #12
  %44 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dst, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 127
  %46 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nd_net.i.i, align 4
  %call1.i = call fastcc ptr @__tcp_get_metrics(ptr noundef nonnull %saddr, ptr noundef nonnull %daddr, ptr noundef %47, i32 noundef %shr.i) #12
  %cmp.i89 = icmp eq ptr %call1.i, inttoptr (i32 1 to ptr)
  %switch.i = icmp ult ptr %call1.i, inttoptr (i32 2 to ptr)
  br i1 %switch.i, label %if.end3.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then50
  %tcpm_stamp.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1.i, i32 0, i32 4
  %48 = ptrtoint ptr %tcpm_stamp.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tcpm_stamp.i.i, align 8
  %add.i.i = add i32 %49, 360000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.tcpm_new.exit_crit_edge, !prof !88

land.lhs.true.i.i.tcpm_new.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcpm_new.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %52 = ptrtoint ptr %tcpm_stamp.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tcpm_stamp.i.i, align 8
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %53 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %54, -4
  %55 = inttoptr i32 %and.i.i.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %and.i.i = lshr i32 %57, 4
  %58 = and i32 %and.i.i, 15
  %and.i83.i = lshr i32 %57, 5
  %59 = and i32 %and.i83.i, 16
  %60 = or i32 %58, %59
  %tcpm_lock.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1.i, i32 0, i32 5
  %61 = ptrtoint ptr %tcpm_lock.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tcpm_lock.i, align 4
  %62 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i84.i = and i32 %62, -4
  %63 = inttoptr i32 %and.i84.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %63, i32 3
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i = mul i32 %65, 1000
  %tcpm_vals.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1.i, i32 0, i32 6
  %66 = ptrtoint ptr %tcpm_vals.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul.i, ptr %tcpm_vals.i, align 8
  %67 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i86.i = and i32 %67, -4
  %68 = inttoptr i32 %and.i86.i to ptr
  %arrayidx.i87.i = getelementptr i32, ptr %68, i32 4
  %69 = ptrtoint ptr %arrayidx.i87.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i87.i, align 4
  %mul23.i = mul i32 %70, 1000
  %arrayidx25.i = getelementptr %struct.tcp_metrics_block, ptr %call1.i, i32 0, i32 6, i32 1
  %71 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul23.i, ptr %arrayidx25.i, align 4
  %72 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i89.i = and i32 %72, -4
  %73 = inttoptr i32 %and.i89.i to ptr
  %arrayidx.i90.i = getelementptr i32, ptr %73, i32 5
  %74 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i90.i, align 4
  %arrayidx28.i = getelementptr %struct.tcp_metrics_block, ptr %call1.i, i32 0, i32 6, i32 2
  %76 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx28.i, align 8
  %77 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i92.i = and i32 %77, -4
  %78 = inttoptr i32 %and.i92.i to ptr
  %arrayidx.i93.i = getelementptr i32, ptr %78, i32 6
  %79 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i93.i, align 4
  %arrayidx31.i = getelementptr %struct.tcp_metrics_block, ptr %call1.i, i32 0, i32 6, i32 3
  %81 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx31.i, align 4
  %82 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i95.i = and i32 %82, -4
  %83 = inttoptr i32 %and.i95.i to ptr
  %arrayidx.i96.i = getelementptr i32, ptr %83, i32 8
  %84 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i96.i, align 4
  %arrayidx34.i = getelementptr %struct.tcp_metrics_block, ptr %call1.i, i32 0, i32 6, i32 4
  %86 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx34.i, align 8
  br label %tcpm_new.exit

if.end3.i:                                        ; preds = %if.then50
  br i1 %cmp.i89, label %if.then7.i, label %if.else.i, !prof !88

if.then7.i:                                       ; preds = %if.end3.i
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @tcp_metrics_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %if.then7.i.do.end.i_crit_edge

if.then7.i.do.end.i_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then7.i
  %call10.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true12.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %.b138.i = load i1, ptr @tcpm_new.__warned, align 1
  br i1 %.b138.i, label %land.lhs.true12.i.do.end.i_crit_edge, label %if.then14.i

land.lhs.true12.i.do.end.i_crit_edge:             ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then14.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcpm_new.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 174, ptr noundef nonnull @.str.8) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %land.lhs.true12.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then7.i.do.end.i_crit_edge
  %87 = load ptr, ptr @tcp_metrics_hash, align 4
  %arrayidx.i = getelementptr %struct.tcpm_hash_bucket, ptr %87, i32 %shr.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i, align 4
  %call.i140.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @tcp_metrics_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140.i)
  %tobool18.not.i = icmp eq i32 %call.i140.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true19.i, label %do.end.i.do.end27.i_crit_edge

do.end.i.do.end27.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27.i

land.lhs.true19.i:                                ; preds = %do.end.i
  %call20.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true19.i.do.end27.i_crit_edge, label %land.lhs.true22.i

land.lhs.true19.i.do.end27.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27.i

land.lhs.true22.i:                                ; preds = %land.lhs.true19.i
  %.b134137.i = load i1, ptr @tcpm_new.__warned.9, align 1
  br i1 %.b134137.i, label %land.lhs.true22.i.do.end27.i_crit_edge, label %if.then24.i

land.lhs.true22.i.do.end27.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27.i

if.then24.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcpm_new.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 175, ptr noundef nonnull @.str.8) #12
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.then24.i, %land.lhs.true22.i.do.end27.i_crit_edge, %land.lhs.true19.i.do.end27.i_crit_edge, %do.end.i.do.end27.i_crit_edge
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %tm.1144.i = load ptr, ptr %89, align 8
  %tobool29.not145.i = icmp eq ptr %tm.1144.i, null
  br i1 %tobool29.not145.i, label %do.end27.i.if.end52.i_crit_edge, label %do.end27.i.for.body.i_crit_edge

do.end27.i.for.body.i_crit_edge:                  ; preds = %do.end27.i
  br label %for.body.i

do.end27.i.if.end52.i_crit_edge:                  ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

for.body.i:                                       ; preds = %do.end45.i.for.body.i_crit_edge, %do.end27.i.for.body.i_crit_edge
  %tm.1147.i = phi ptr [ %tm.1.i, %do.end45.i.for.body.i_crit_edge ], [ %tm.1144.i, %do.end27.i.for.body.i_crit_edge ]
  %oldest.0146.i = phi ptr [ %spec.select139.i, %do.end45.i.for.body.i_crit_edge ], [ %89, %do.end27.i.for.body.i_crit_edge ]
  %tcpm_stamp.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.1147.i, i32 0, i32 4
  %91 = ptrtoint ptr %tcpm_stamp.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tcpm_stamp.i, align 8
  %tcpm_stamp30.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %oldest.0146.i, i32 0, i32 4
  %93 = ptrtoint ptr %tcpm_stamp30.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tcpm_stamp30.i, align 8
  %sub.i90 = sub i32 %92, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i90)
  %cmp31.i = icmp slt i32 %sub.i90, 0
  %spec.select139.i = select i1 %cmp31.i, ptr %tm.1147.i, ptr %oldest.0146.i
  %call.i141.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @tcp_metrics_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.i)
  %tobool36.not.i = icmp eq i32 %call.i141.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true37.i, label %for.body.i.do.end45.i_crit_edge

for.body.i.do.end45.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45.i

land.lhs.true37.i:                                ; preds = %for.body.i
  %call38.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true37.i.do.end45.i_crit_edge, label %land.lhs.true40.i

land.lhs.true37.i.do.end45.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45.i

land.lhs.true40.i:                                ; preds = %land.lhs.true37.i
  %.b135136.i = load i1, ptr @tcpm_new.__warned.10, align 1
  br i1 %.b135136.i, label %land.lhs.true40.i.do.end45.i_crit_edge, label %if.then42.i

land.lhs.true40.i.do.end45.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45.i

if.then42.i:                                      ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcpm_new.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 176, ptr noundef nonnull @.str.8) #12
  br label %do.end45.i

do.end45.i:                                       ; preds = %if.then42.i, %land.lhs.true40.i.do.end45.i_crit_edge, %land.lhs.true37.i.do.end45.i_crit_edge, %for.body.i.do.end45.i_crit_edge
  %95 = ptrtoint ptr %tm.1147.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %tm.1.i = load ptr, ptr %tm.1147.i, align 8
  %tobool29.not.i = icmp eq ptr %tm.1.i, null
  br i1 %tobool29.not.i, label %do.end45.i.if.end52.i_crit_edge, label %do.end45.i.for.body.i_crit_edge

do.end45.i.for.body.i_crit_edge:                  ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end45.i.if.end52.i_crit_edge:                  ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.else.i:                                        ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %96 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %96, i32 noundef 2592, i32 noundef 120) #15
  %tobool49.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool49.not.i, label %if.else.i.tcpm_new.exit_crit_edge, label %if.else.i.if.end52.i_crit_edge

if.else.i.if.end52.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.else.i.tcpm_new.exit_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcpm_new.exit

if.end52.i:                                       ; preds = %if.else.i.if.end52.i_crit_edge, %do.end45.i.if.end52.i_crit_edge, %do.end27.i.if.end52.i_crit_edge
  %tm.2.i = phi ptr [ %call7.i.i, %if.else.i.if.end52.i_crit_edge ], [ %89, %do.end27.i.if.end52.i_crit_edge ], [ %spec.select139.i, %do.end45.i.if.end52.i_crit_edge ]
  %tcpm_net.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 1
  %97 = ptrtoint ptr %tcpm_net.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %47, ptr %tcpm_net.i, align 4
  %tcpm_saddr.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 2
  %98 = call ptr @memcpy(ptr %tcpm_saddr.i, ptr %saddr, i32 20)
  %tcpm_daddr.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 3
  %99 = call ptr @memcpy(ptr %tcpm_daddr.i, ptr %daddr, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %tcpm_stamp.i142.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 4
  %101 = ptrtoint ptr %tcpm_stamp.i142.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %tcpm_stamp.i142.i, align 8
  %_metrics.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %102 = ptrtoint ptr %_metrics.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %103, -4
  %104 = inttoptr i32 %and.i.i.i.i.i to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %and.i.i.i = lshr i32 %106, 4
  %107 = and i32 %and.i.i.i, 15
  %and.i83.i.i = lshr i32 %106, 5
  %108 = and i32 %and.i83.i.i, 16
  %109 = or i32 %107, %108
  %tcpm_lock.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 5
  %110 = ptrtoint ptr %tcpm_lock.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %tcpm_lock.i.i, align 4
  %111 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i84.i.i = and i32 %111, -4
  %112 = inttoptr i32 %and.i84.i.i to ptr
  %arrayidx.i.i.i = getelementptr i32, ptr %112, i32 3
  %113 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i91 = mul i32 %114, 1000
  %tcpm_vals.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 6
  %115 = ptrtoint ptr %tcpm_vals.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %mul.i.i91, ptr %tcpm_vals.i.i, align 8
  %116 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i86.i.i = and i32 %116, -4
  %117 = inttoptr i32 %and.i86.i.i to ptr
  %arrayidx.i87.i.i = getelementptr i32, ptr %117, i32 4
  %118 = ptrtoint ptr %arrayidx.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i87.i.i, align 4
  %mul23.i.i = mul i32 %119, 1000
  %arrayidx25.i.i = getelementptr %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 6, i32 1
  %120 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %mul23.i.i, ptr %arrayidx25.i.i, align 4
  %121 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i89.i.i = and i32 %121, -4
  %122 = inttoptr i32 %and.i89.i.i to ptr
  %arrayidx.i90.i.i = getelementptr i32, ptr %122, i32 5
  %123 = ptrtoint ptr %arrayidx.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i90.i.i, align 4
  %arrayidx28.i.i = getelementptr %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 6, i32 2
  %125 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx28.i.i, align 8
  %126 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i92.i.i = and i32 %126, -4
  %127 = inttoptr i32 %and.i92.i.i to ptr
  %arrayidx.i93.i.i = getelementptr i32, ptr %127, i32 6
  %128 = ptrtoint ptr %arrayidx.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i93.i.i, align 4
  %arrayidx31.i.i = getelementptr %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 6, i32 3
  %130 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %arrayidx31.i.i, align 4
  %131 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i95.i.i = and i32 %131, -4
  %132 = inttoptr i32 %and.i95.i.i to ptr
  %arrayidx.i96.i.i = getelementptr i32, ptr %132, i32 8
  %133 = ptrtoint ptr %arrayidx.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i96.i.i, align 4
  %arrayidx34.i.i = getelementptr %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 6, i32 4
  %135 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %arrayidx34.i.i, align 8
  %tcpm_fastopen.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 7
  %136 = ptrtoint ptr %tcpm_fastopen.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %tcpm_fastopen.i.i, align 8
  %syn_loss.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 7, i32 1
  %137 = ptrtoint ptr %syn_loss.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %bf.load.i.i = load i16, ptr %syn_loss.i.i, align 2
  %bf.clear40.i.i = and i16 %bf.load.i.i, 15
  store i16 %bf.clear40.i.i, ptr %syn_loss.i.i, align 2
  %exp.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 7, i32 3, i32 2
  %138 = ptrtoint ptr %exp.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %exp.i.i, align 1
  %len.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.2.i, i32 0, i32 7, i32 3, i32 1
  %139 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %len.i.i, align 8
  br i1 %cmp.i89, label %if.end52.i.tcpm_new.exit_crit_edge, label %if.then62.i, !prof !88

if.end52.i.tcpm_new.exit_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcpm_new.exit

if.then62.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  %140 = load ptr, ptr @tcp_metrics_hash, align 4
  %arrayidx63.i = getelementptr %struct.tcpm_hash_bucket, ptr %140, i32 %shr.i
  %141 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx63.i, align 4
  %143 = ptrtoint ptr %tm.2.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %tm.2.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !89
  %144 = load ptr, ptr @tcp_metrics_hash, align 4
  %arrayidx95.i = getelementptr %struct.tcpm_hash_bucket, ptr %144, i32 %shr.i
  %145 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %tm.2.i, ptr %arrayidx95.i, align 4
  br label %tcpm_new.exit

tcpm_new.exit:                                    ; preds = %if.then62.i, %if.end52.i.tcpm_new.exit_crit_edge, %if.else.i.tcpm_new.exit_crit_edge, %if.then.i.i, %land.lhs.true.i.i.tcpm_new.exit_crit_edge
  %tm.3.i = phi ptr [ %tm.2.i, %if.then62.i ], [ %tm.2.i, %if.end52.i.tcpm_new.exit_crit_edge ], [ null, %if.else.i.tcpm_new.exit_crit_edge ], [ %call1.i, %land.lhs.true.i.i.tcpm_new.exit_crit_edge ], [ %call1.i, %if.then.i.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @tcp_metrics_lock) #12
  br label %cleanup

if.else52:                                        ; preds = %if.end39
  br i1 %tobool.not, label %if.else52.cleanup_crit_edge, label %land.lhs.true.i95

if.else52.cleanup_crit_edge:                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i95:                                ; preds = %if.else52
  %tcpm_stamp.i92 = getelementptr inbounds %struct.tcp_metrics_block, ptr %spec.store.select, i32 0, i32 4
  %146 = ptrtoint ptr %tcpm_stamp.i92 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tcpm_stamp.i92, align 8
  %add.i = add i32 %147, 360000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %148 = load volatile i32, ptr @jiffies, align 128
  %sub.i93 = sub i32 %add.i, %148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i93)
  %cmp.i94 = icmp slt i32 %sub.i93, 0
  br i1 %cmp.i94, label %if.then.i, label %land.lhs.true.i95.cleanup_crit_edge, !prof !88

land.lhs.true.i95.cleanup_crit_edge:              ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %149 = load volatile i32, ptr @jiffies, align 128
  %150 = ptrtoint ptr %tcpm_stamp.i92 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %tcpm_stamp.i92, align 8
  %_metrics.i.i.i.i98 = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %151 = ptrtoint ptr %_metrics.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %_metrics.i.i.i.i98, align 4
  %and.i.i.i.i99 = and i32 %152, -4
  %153 = inttoptr i32 %and.i.i.i.i99 to ptr
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  %and.i.i100 = lshr i32 %155, 4
  %156 = and i32 %and.i.i100, 15
  %and.i83.i101 = lshr i32 %155, 5
  %157 = and i32 %and.i83.i101, 16
  %158 = or i32 %156, %157
  %tcpm_lock.i102 = getelementptr inbounds %struct.tcp_metrics_block, ptr %spec.store.select, i32 0, i32 5
  %159 = ptrtoint ptr %tcpm_lock.i102 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %tcpm_lock.i102, align 4
  %160 = load i32, ptr %_metrics.i.i.i.i98, align 4
  %and.i84.i103 = and i32 %160, -4
  %161 = inttoptr i32 %and.i84.i103 to ptr
  %arrayidx.i.i104 = getelementptr i32, ptr %161, i32 3
  %162 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i.i104, align 4
  %mul.i105 = mul i32 %163, 1000
  %tcpm_vals.i106 = getelementptr inbounds %struct.tcp_metrics_block, ptr %spec.store.select, i32 0, i32 6
  %164 = ptrtoint ptr %tcpm_vals.i106 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %mul.i105, ptr %tcpm_vals.i106, align 8
  %165 = load i32, ptr %_metrics.i.i.i.i98, align 4
  %and.i86.i107 = and i32 %165, -4
  %166 = inttoptr i32 %and.i86.i107 to ptr
  %arrayidx.i87.i108 = getelementptr i32, ptr %166, i32 4
  %167 = ptrtoint ptr %arrayidx.i87.i108 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx.i87.i108, align 4
  %mul23.i109 = mul i32 %168, 1000
  %arrayidx25.i110 = getelementptr %struct.tcp_metrics_block, ptr %spec.store.select, i32 0, i32 6, i32 1
  %169 = ptrtoint ptr %arrayidx25.i110 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %mul23.i109, ptr %arrayidx25.i110, align 4
  %170 = load i32, ptr %_metrics.i.i.i.i98, align 4
  %and.i89.i111 = and i32 %170, -4
  %171 = inttoptr i32 %and.i89.i111 to ptr
  %arrayidx.i90.i112 = getelementptr i32, ptr %171, i32 5
  %172 = ptrtoint ptr %arrayidx.i90.i112 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.i90.i112, align 4
  %arrayidx28.i113 = getelementptr %struct.tcp_metrics_block, ptr %spec.store.select, i32 0, i32 6, i32 2
  %174 = ptrtoint ptr %arrayidx28.i113 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %arrayidx28.i113, align 8
  %175 = load i32, ptr %_metrics.i.i.i.i98, align 4
  %and.i92.i114 = and i32 %175, -4
  %176 = inttoptr i32 %and.i92.i114 to ptr
  %arrayidx.i93.i115 = getelementptr i32, ptr %176, i32 6
  %177 = ptrtoint ptr %arrayidx.i93.i115 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx.i93.i115, align 4
  %arrayidx31.i116 = getelementptr %struct.tcp_metrics_block, ptr %spec.store.select, i32 0, i32 6, i32 3
  %179 = ptrtoint ptr %arrayidx31.i116 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %arrayidx31.i116, align 4
  %180 = load i32, ptr %_metrics.i.i.i.i98, align 4
  %and.i95.i117 = and i32 %180, -4
  %181 = inttoptr i32 %and.i95.i117 to ptr
  %arrayidx.i96.i118 = getelementptr i32, ptr %181, i32 8
  %182 = ptrtoint ptr %arrayidx.i96.i118 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx.i96.i118, align 4
  %arrayidx34.i119 = getelementptr %struct.tcp_metrics_block, ptr %spec.store.select, i32 0, i32 6, i32 4
  %184 = ptrtoint ptr %arrayidx34.i119 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx34.i119, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i95.cleanup_crit_edge, %if.else52.cleanup_crit_edge, %tcpm_new.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %tm.3.i, %tcpm_new.exit ], [ null, %if.else52.cleanup_crit_edge ], [ %call43, %land.lhs.true.i95.cleanup_crit_edge ], [ %call43, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %daddr) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %saddr) #12
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_init_metrics(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.__sk_dst_get.exit_crit_edge

entry.__sk_dst_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i91 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i91, label %land.lhs.true.i92, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

land.lhs.true.i92:                                ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i92.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i92.__sk_dst_get.exit_crit_edge:    ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i92
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i93

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

if.then.i93:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.3) #12
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i93, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i92.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %entry.__sk_dst_get.exit_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %4 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_dst_pending_confirm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i94 = icmp eq i32 %5, 0
  br i1 %tobool.not.i94, label %do.body4.i, label %__sk_dst_get.exit.sk_dst_confirm.exit_crit_edge

__sk_dst_get.exit.sk_dst_confirm.exit_crit_edge:  ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_dst_confirm.exit

do.body4.i:                                       ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %sk_dst_pending_confirm.i, align 8
  br label %sk_dst_confirm.exit

sk_dst_confirm.exit:                              ; preds = %do.body4.i, %__sk_dst_get.exit.sk_dst_confirm.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %sk_dst_confirm.exit.reset.thread_crit_edge, label %if.end

sk_dst_confirm.exit.reset.thread_crit_edge:       ; preds = %sk_dst_confirm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %reset.thread

if.end:                                           ; preds = %sk_dst_confirm.exit
  %7 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call3 = tail call fastcc ptr @tcp_get_metrics(ptr noundef %sk, ptr noundef nonnull %1, i1 noundef zeroext true)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %rcu_read_lock.exit
  %call.i95 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i95, label %if.then5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i98

if.then5.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i98:                                ; preds = %if.then5
  %call1.i96 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, label %if.then.i101

land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i101, %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, %if.then5.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %11 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i102 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i103, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %reset.thread

if.end6:                                          ; preds = %rcu_read_lock.exit
  %tcpm_lock.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %call3, i32 0, i32 5
  %15 = ptrtoint ptr %tcpm_lock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tcpm_lock.i, align 4
  %and.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.tcp_metrics_block, ptr %call3, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %snd_cwnd_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %19 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %snd_cwnd_clamp, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %sysctl_tcp_no_ssthresh_metrics_save = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 90
  %20 = ptrtoint ptr %sysctl_tcp_no_ssthresh_metrics_save to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sysctl_tcp_no_ssthresh_metrics_save, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool11.not = icmp eq i8 %21, 0
  br i1 %tobool11.not, label %cond.end, label %if.end10.if.else_crit_edge

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

cond.end:                                         ; preds = %if.end10
  %arrayidx.i104 = getelementptr %struct.tcp_metrics_block, ptr %call3, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not = icmp eq i32 %23, 0
  br i1 %tobool13.not, label %cond.end.if.else_crit_edge, label %if.then14

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then14:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %snd_ssthresh = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %snd_cwnd_clamp16 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %24 = ptrtoint ptr %snd_cwnd_clamp16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %snd_cwnd_clamp16, align 8
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25)
  %27 = ptrtoint ptr %snd_ssthresh to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %snd_ssthresh, align 4
  br label %if.end23

if.else:                                          ; preds = %cond.end.if.else_crit_edge, %if.end10.if.else_crit_edge
  %snd_ssthresh22 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %28 = ptrtoint ptr %snd_ssthresh22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2147483647, ptr %snd_ssthresh22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then14
  %arrayidx.i105 = getelementptr %struct.tcp_metrics_block, ptr %call3, i32 0, i32 6, i32 4
  %29 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25.not = icmp eq i32 %30, 0
  br i1 %tobool25.not, label %if.end23.if.end30_crit_edge, label %land.lhs.true

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end23
  %reordering = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 58
  %31 = ptrtoint ptr %reordering to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reordering, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp26.not = icmp eq i32 %32, %30
  br i1 %cmp26.not, label %land.lhs.true.if.end30_crit_edge, label %if.then28

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %reordering to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %reordering, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %arrayidx.i106 = getelementptr %struct.tcp_metrics_block, ptr %call3, i32 0, i32 6, i32 0
  %34 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i106, align 4
  %call.i107 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i107, label %if.end30.reset_crit_edge, label %land.lhs.true.i110

if.end30.reset_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %reset

land.lhs.true.i110:                               ; preds = %if.end30
  %call1.i108 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool.not.i109, label %land.lhs.true.i110.reset_crit_edge, label %land.lhs.true2.i112

land.lhs.true.i110.reset_crit_edge:               ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %reset

land.lhs.true2.i112:                              ; preds = %land.lhs.true.i110
  %.b4.i111 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111, label %land.lhs.true2.i112.reset_crit_edge, label %if.then.i113

land.lhs.true2.i112.reset_crit_edge:              ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #14
  br label %reset

if.then.i113:                                     ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.13) #12
  br label %reset

reset.thread:                                     ; preds = %rcu_read_unlock.exit, %sk_dst_confirm.exit.reset.thread_crit_edge
  %srtt_us125 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %36 = ptrtoint ptr %srtt_us125 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %srtt_us125, align 8
  br label %if.else43

reset:                                            ; preds = %if.then.i113, %land.lhs.true2.i112.reset_crit_edge, %land.lhs.true.i110.reset_crit_edge, %if.end30.reset_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %38 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i114 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i114 to ptr
  %preempt_count.i.i.i.i115 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i115, align 4
  %sub.i.i.i116 = add i32 %41, -1
  store volatile i32 %sub.i.i.i116, ptr %preempt_count.i.i.i.i115, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %srtt_us = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %42 = ptrtoint ptr %srtt_us to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %srtt_us, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %43)
  %cmp32 = icmp ugt i32 %35, %43
  br i1 %cmp32, label %if.then34, label %reset.if.else43_crit_edge

reset.if.else43_crit_edge:                        ; preds = %reset
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else43

if.then34:                                        ; preds = %reset
  %div = udiv i32 %35, 80000
  %mul = shl nuw nsw i32 %div, 1
  %44 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.then34.__sk_dst_get.exit.i_crit_edge

if.then34.__sk_dst_get.exit.i_crit_edge:          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit.i

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.then34
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %lor.lhs.false.i.i, label %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit.i

lor.lhs.false.i.i:                                ; preds = %lockdep_sock_is_held.exit.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i118 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i118, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge

lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.3) #12
  br label %__sk_dst_get.exit.i

__sk_dst_get.exit.i:                              ; preds = %if.then.i.i, %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge, %if.then34.__sk_dst_get.exit.i_crit_edge
  %icsk_rto_min.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 7
  %46 = ptrtoint ptr %icsk_rto_min.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %icsk_rto_min.i, align 8
  %tobool.not.i119 = icmp eq ptr %45, null
  br i1 %tobool.not.i119, label %__sk_dst_get.exit.i.tcp_rto_min.exit_crit_edge, label %land.lhs.true.i120

__sk_dst_get.exit.i.tcp_rto_min.exit_crit_edge:   ; preds = %__sk_dst_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcp_rto_min.exit

land.lhs.true.i120:                               ; preds = %__sk_dst_get.exit.i
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %49, -4
  %50 = inttoptr i32 %and.i.i.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %and.i.i = and i32 %52, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i120.tcp_rto_min.exit_crit_edge, label %if.else.i.i.i

land.lhs.true.i120.tcp_rto_min.exit_crit_edge:    ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcp_rto_min.exit

if.else.i.i.i:                                    ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr i32, ptr %50, i32 12
  %53 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %54) #12
  br label %tcp_rto_min.exit

tcp_rto_min.exit:                                 ; preds = %if.else.i.i.i, %land.lhs.true.i120.tcp_rto_min.exit_crit_edge, %__sk_dst_get.exit.i.tcp_rto_min.exit_crit_edge
  %rto_min.0.i = phi i32 [ %47, %land.lhs.true.i120.tcp_rto_min.exit_crit_edge ], [ %47, %__sk_dst_get.exit.i.tcp_rto_min.exit_crit_edge ], [ %call2.i.i.i, %if.else.i.i.i ]
  %55 = tail call i32 @llvm.umax.i32(i32 %mul, i32 %rto_min.0.i)
  %add = add i32 %55, %div
  br label %if.end53.sink.split

if.else43:                                        ; preds = %reset.if.else43_crit_edge, %reset.thread
  %56 = phi i32 [ %37, %reset.thread ], [ %43, %reset.if.else43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp45 = icmp eq i32 %56, 0
  br i1 %cmp45, label %if.then47, label %if.else43.if.end53_crit_edge

if.else43.if.end53_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then47:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = tail call i32 @jiffies_to_usecs(i32 noundef 300) #12
  %rttvar_us = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 48
  %57 = ptrtoint ptr %rttvar_us to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call48, ptr %rttvar_us, align 4
  %mdev_max_us = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 47
  %58 = ptrtoint ptr %mdev_max_us to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call48, ptr %mdev_max_us, align 8
  %mdev_us = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 46
  %59 = ptrtoint ptr %mdev_us to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call48, ptr %mdev_us, align 4
  br label %if.end53.sink.split

if.end53.sink.split:                              ; preds = %if.then47, %tcp_rto_min.exit
  %.sink = phi i32 [ 300, %if.then47 ], [ %add, %tcp_rto_min.exit ]
  %icsk_rto51 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %60 = ptrtoint ptr %icsk_rto51 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink, ptr %icsk_rto51, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %if.else43.if.end53_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_peer_is_proven(ptr nocapture noundef readonly %req, ptr noundef readonly %dst) local_unnamed_addr #0 align 64 {
entry:
  %saddr.i = alloca %struct.inetpeer_addr, align 4
  %daddr.i = alloca %struct.inetpeer_addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dst, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %saddr.i) #12
  %4 = call ptr @memset(ptr %saddr.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %daddr.i) #12
  %5 = call ptr @memset(ptr %daddr.i, i32 255, i32 20)
  %rsk_ops.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %6 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rsk_ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %conv.i = trunc i32 %9 to i16
  %family1.i = getelementptr inbounds %struct.inetpeer_addr, ptr %saddr.i, i32 0, i32 1
  %family5.i = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr.i, i32 0, i32 1
  %10 = zext i16 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %conv.i, label %rcu_read_lock.exit.__tcp_get_metrics_req.exit.thread_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb17.i
  ]

rcu_read_lock.exit.__tcp_get_metrics_req.exit.thread_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tcp_get_metrics_req.exit.thread

sw.bb.i:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %skc_rcv_saddr.i, align 4
  %13 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %saddr.i, align 4
  %vif.i.i = getelementptr inbounds %struct.ipv4_addr_key, ptr %saddr.i, i32 0, i32 1
  %14 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %vif.i.i, align 4
  %15 = ptrtoint ptr %family1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %family1.i, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %req, align 8
  %18 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %daddr.i, align 4
  %vif.i94.i = getelementptr inbounds %struct.ipv4_addr_key, ptr %daddr.i, i32 0, i32 1
  %19 = ptrtoint ptr %vif.i94.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %vif.i94.i, align 4
  %20 = ptrtoint ptr %family5.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %family5.i, align 4
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 11
  %21 = call ptr @memcpy(ptr %saddr.i, ptr %skc_v6_rcv_saddr.i, i32 16)
  %22 = ptrtoint ptr %family1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 10, ptr %family1.i, align 4
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 10
  %23 = call ptr @memcpy(ptr %daddr.i, ptr %skc_v6_daddr.i, i32 16)
  %24 = ptrtoint ptr %family5.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 10, ptr %family5.i, align 4
  %25 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %skc_v6_daddr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sock_common, ptr %req, i32 0, i32 10, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx2.i.i, align 4
  %xor.i.i = xor i32 %28, %26
  %arrayidx4.i.i = getelementptr %struct.sock_common, ptr %req, i32 0, i32 10, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4.i.i, align 4
  %xor5.i.i = xor i32 %xor.i.i, %30
  %arrayidx7.i.i = getelementptr %struct.sock_common, ptr %req, i32 0, i32 10, i32 0, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx7.i.i, align 4
  %xor8.i.i = xor i32 %xor5.i.i, %32
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb.i
  %hash.0.i = phi i32 [ %xor8.i.i, %sw.bb17.i ], [ %17, %sw.bb.i ]
  %33 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dst, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 127
  %35 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nd_net.i.i, align 4
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hash_mix.i.i, align 8
  %xor.i = xor i32 %38, %hash.0.i
  %39 = load i32, ptr @tcp_metrics_hash_log, align 4
  %mul.i.i.i = mul i32 %xor.i, 1640531527
  %sub.i.i = sub i32 32, %39
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %40 = load ptr, ptr @tcp_metrics_hash, align 4
  %arrayidx.i = getelementptr %struct.tcpm_hash_bucket, ptr %40, i32 %shr.i.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %arrayidx.i, align 4
  %call33.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool.not.i10 = icmp eq i32 %call33.i, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11, label %sw.epilog.i.do.end39.i_crit_edge

sw.epilog.i.do.end39.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39.i

land.lhs.true.i11:                                ; preds = %sw.epilog.i
  %call34.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true.i11.do.end39.i_crit_edge, label %land.lhs.true36.i

land.lhs.true.i11.do.end39.i_crit_edge:           ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39.i

land.lhs.true36.i:                                ; preds = %land.lhs.true.i11
  %.b93.i = load i1, ptr @__tcp_get_metrics_req.__warned, align 1
  br i1 %.b93.i, label %land.lhs.true36.i.do.end39.i_crit_edge, label %if.then.i12

land.lhs.true36.i.do.end39.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39.i

if.then.i12:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__tcp_get_metrics_req.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 260, ptr noundef nonnull @.str.3) #12
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then.i12, %land.lhs.true36.i.do.end39.i_crit_edge, %land.lhs.true.i11.do.end39.i_crit_edge, %sw.epilog.i.do.end39.i_crit_edge
  %tobool41.not115.i = icmp eq ptr %42, null
  br i1 %tobool41.not115.i, label %do.end39.i.__tcp_get_metrics_req.exit.thread_crit_edge, label %do.end39.i.for.body.i_crit_edge

do.end39.i.for.body.i_crit_edge:                  ; preds = %do.end39.i
  br label %for.body.i

do.end39.i.__tcp_get_metrics_req.exit.thread_crit_edge: ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tcp_get_metrics_req.exit.thread

for.body.i:                                       ; preds = %do.end68.i.for.body.i_crit_edge, %do.end39.i.for.body.i_crit_edge
  %tm.0116.i = phi ptr [ %58, %do.end68.i.for.body.i_crit_edge ], [ %42, %do.end39.i.for.body.i_crit_edge ]
  %tcpm_saddr.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0116.i, i32 0, i32 2
  %family.i.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0116.i, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %family.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %44)
  %cmp.i.i.i = icmp eq i16 %44, 2
  %..i.i.i = select i1 %cmp.i.i.i, i32 2, i32 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i
  %i.027.i.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr %tcpm_saddr.i, i32 0, i32 %i.027.i.i.i
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx4.i.i.i = getelementptr [4 x i32], ptr %saddr.i, i32 0, i32 %i.027.i.i.i
  %47 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx4.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp5.i.i.i = icmp eq i32 %46, %48
  %cmp5.i.not.i.i = xor i1 %cmp5.i.i.i, true
  %inc.i.i.i = add nuw nsw i32 %i.027.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %..i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %..i.i.i
  %or.cond.i.i = select i1 %cmp5.i.not.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i, label %addr_same.exit.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

addr_same.exit.i:                                 ; preds = %for.body.i.i.i
  br i1 %cmp5.i.i.i, label %land.lhs.true44.i, label %addr_same.exit.i.for.inc.i_crit_edge

addr_same.exit.i.for.inc.i_crit_edge:             ; preds = %addr_same.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true44.i:                                ; preds = %addr_same.exit.i
  %tcpm_daddr.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0116.i, i32 0, i32 3
  %family.i.i98.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0116.i, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %family.i.i98.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %family.i.i98.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %50)
  %cmp.i.i99.i = icmp eq i16 %50, 2
  %..i.i100.i = select i1 %cmp.i.i99.i, i32 2, i32 4
  br label %for.body.i.i109.i

for.body.i.i109.i:                                ; preds = %for.body.i.i109.i.for.body.i.i109.i_crit_edge, %land.lhs.true44.i
  %i.027.i.i101.i = phi i32 [ 0, %land.lhs.true44.i ], [ %inc.i.i106.i, %for.body.i.i109.i.for.body.i.i109.i_crit_edge ]
  %arrayidx.i.i102.i = getelementptr [4 x i32], ptr %tcpm_daddr.i, i32 0, i32 %i.027.i.i101.i
  %51 = ptrtoint ptr %arrayidx.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i102.i, align 4
  %arrayidx4.i.i103.i = getelementptr [4 x i32], ptr %daddr.i, i32 0, i32 %i.027.i.i101.i
  %53 = ptrtoint ptr %arrayidx4.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx4.i.i103.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp5.i.i104.i = icmp eq i32 %52, %54
  %cmp5.i.not.i105.i = xor i1 %cmp5.i.i104.i, true
  %inc.i.i106.i = add nuw nsw i32 %i.027.i.i101.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i106.i, i32 %..i.i100.i)
  %exitcond.not.i.i107.i = icmp eq i32 %inc.i.i106.i, %..i.i100.i
  %or.cond.i108.i = select i1 %cmp5.i.not.i105.i, i1 true, i1 %exitcond.not.i.i107.i
  br i1 %or.cond.i108.i, label %addr_same.exit110.i, label %for.body.i.i109.i.for.body.i.i109.i_crit_edge

for.body.i.i109.i.for.body.i.i109.i_crit_edge:    ; preds = %for.body.i.i109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i109.i

addr_same.exit110.i:                              ; preds = %for.body.i.i109.i
  br i1 %cmp5.i.i104.i, label %land.lhs.true47.i, label %addr_same.exit110.i.for.inc.i_crit_edge

addr_same.exit110.i.for.inc.i_crit_edge:          ; preds = %addr_same.exit110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true47.i:                                ; preds = %addr_same.exit110.i
  %tcpm_net.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0116.i, i32 0, i32 1
  %55 = ptrtoint ptr %tcpm_net.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tcpm_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %56, %36
  br i1 %cmp.i.not.i, label %land.lhs.true.i.i, label %land.lhs.true47.i.for.inc.i_crit_edge

land.lhs.true47.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true47.i.for.inc.i_crit_edge, %addr_same.exit110.i.for.inc.i_crit_edge, %addr_same.exit.i.for.inc.i_crit_edge
  %57 = ptrtoint ptr %tm.0116.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %tm.0116.i, align 8
  %call58.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %land.lhs.true60.i, label %for.inc.i.do.end68.i_crit_edge

for.inc.i.do.end68.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68.i

land.lhs.true60.i:                                ; preds = %for.inc.i
  %call61.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %land.lhs.true60.i.do.end68.i_crit_edge, label %land.lhs.true63.i

land.lhs.true60.i.do.end68.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68.i

land.lhs.true63.i:                                ; preds = %land.lhs.true60.i
  %.b9192.i = load i1, ptr @__tcp_get_metrics_req.__warned.14, align 1
  br i1 %.b9192.i, label %land.lhs.true63.i.do.end68.i_crit_edge, label %if.then65.i

land.lhs.true63.i.do.end68.i_crit_edge:           ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68.i

if.then65.i:                                      ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__tcp_get_metrics_req.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 261, ptr noundef nonnull @.str.3) #12
  br label %do.end68.i

do.end68.i:                                       ; preds = %if.then65.i, %land.lhs.true63.i.do.end68.i_crit_edge, %land.lhs.true60.i.do.end68.i_crit_edge, %for.inc.i.do.end68.i_crit_edge
  %tobool41.not.i = icmp eq ptr %58, null
  br i1 %tobool41.not.i, label %do.end68.i.__tcp_get_metrics_req.exit.thread_crit_edge, label %do.end68.i.for.body.i_crit_edge

do.end68.i.for.body.i_crit_edge:                  ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end68.i.__tcp_get_metrics_req.exit.thread_crit_edge: ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tcp_get_metrics_req.exit.thread

land.lhs.true.i.i:                                ; preds = %land.lhs.true47.i
  %tcpm_stamp.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0116.i, i32 0, i32 4
  %59 = ptrtoint ptr %tcpm_stamp.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tcpm_stamp.i.i, align 8
  %add.i.i = add i32 %60, 360000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub.i111.i = sub i32 %add.i.i, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i111.i)
  %cmp.i112.i = icmp slt i32 %sub.i111.i, 0
  br i1 %cmp.i112.i, label %if.then.i.i, label %land.lhs.true.i.i.__tcp_get_metrics_req.exit_crit_edge, !prof !88

land.lhs.true.i.i.__tcp_get_metrics_req.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tcp_get_metrics_req.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tcpm_suck_dst(ptr noundef nonnull %tm.0116.i, ptr noundef nonnull %dst, i1 noundef zeroext false) #12
  br label %__tcp_get_metrics_req.exit

__tcp_get_metrics_req.exit.thread:                ; preds = %do.end68.i.__tcp_get_metrics_req.exit.thread_crit_edge, %do.end39.i.__tcp_get_metrics_req.exit.thread_crit_edge, %rcu_read_lock.exit.__tcp_get_metrics_req.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %daddr.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %saddr.i) #12
  br label %if.else

__tcp_get_metrics_req.exit:                       ; preds = %if.then.i.i, %land.lhs.true.i.i.__tcp_get_metrics_req.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %daddr.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %saddr.i) #12
  %tobool1.not = icmp eq ptr %tm.0116.i, null
  br i1 %tobool1.not, label %__tcp_get_metrics_req.exit.if.else_crit_edge, label %land.lhs.true

__tcp_get_metrics_req.exit.if.else_crit_edge:     ; preds = %__tcp_get_metrics_req.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %__tcp_get_metrics_req.exit
  %arrayidx.i13 = getelementptr %struct.tcp_metrics_block, ptr %tm.0116.i, i32 0, i32 6, i32 0
  %62 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool3.not = icmp eq i32 %63, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %__tcp_get_metrics_req.exit.if.else_crit_edge, %__tcp_get_metrics_req.exit.thread
  br label %if.end5

if.end5:                                          ; preds = %if.else, %land.lhs.true.if.end5_crit_edge
  %ret.0.off0 = phi i1 [ false, %if.else ], [ true, %land.lhs.true.if.end5_crit_edge ]
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i14, label %if.end5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

if.end5.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %if.end5
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %if.end5.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %64 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i21 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_cache_get(ptr noundef %sk, ptr nocapture noundef writeonly %mss, ptr nocapture noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %4 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %rcu_read_lock.exit.__sk_dst_get.exit_crit_edge

rcu_read_lock.exit.__sk_dst_get.exit_crit_edge:   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %rcu_read_lock.exit
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i24 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

land.lhs.true.i25:                                ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i25.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i25.__sk_dst_get.exit_crit_edge:    ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i25
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i26

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

if.then.i26:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.3) #12
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i26, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i25.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %rcu_read_lock.exit.__sk_dst_get.exit_crit_edge
  %call1 = tail call fastcc ptr @tcp_get_metrics(ptr noundef %sk, ptr noundef %5, i1 noundef zeroext false)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %__sk_dst_get.exit.if.end16_crit_edge, label %if.then

__sk_dst_get.exit.if.end16_crit_edge:             ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then:                                          ; preds = %__sk_dst_get.exit
  %tcpm_fastopen = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1, i32 0, i32 7
  %cookie7 = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1, i32 0, i32 7, i32 3
  %len = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %cookie, i32 0, i32 1
  %try_exp = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1, i32 0, i32 7, i32 1
  %exp = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %cookie, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.then
  %call2 = tail call fastcc i32 @read_seqbegin()
  %6 = ptrtoint ptr %tcpm_fastopen to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tcpm_fastopen, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  br i1 %tobool4.not, label %do.body.if.end_crit_edge, label %if.then5

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %mss to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %mss, align 2
  br label %if.end

if.end:                                           ; preds = %if.then5, %do.body.if.end_crit_edge
  %9 = call ptr @memcpy(ptr %cookie, ptr %cookie7, i32 24)
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp slt i8 %11, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.do.cond_crit_edge

if.end.do.cond_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %try_exp to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %try_exp, align 2
  %13 = and i16 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %13)
  %cmp10 = icmp eq i16 %13, 16
  br i1 %cmp10, label %if.then12, label %land.lhs.true.do.cond_crit_edge

land.lhs.true.do.cond_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %exp to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %exp, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.then12, %land.lhs.true.do.cond_crit_edge, %if.end.do.cond_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  %15 = load volatile i32, ptr @fastopen_seqlock, align 4
  %cmp.i.i.i.not = icmp eq i32 %15, %call2
  br i1 %cmp.i.i.i.not, label %do.cond.if.end16_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond.if.end16_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %do.cond.if.end16_crit_edge, %__sk_dst_get.exit.if.end16_crit_edge
  %call.i27 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i27, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i30

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i30:                                ; preds = %if.end16
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %16 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i34 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i35, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_seqbegin() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !91
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @fastopen_seqlock, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @fastopen_seqlock, i32 0, i32 0, i32 0, i32 1), i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @fastopen_seqlock, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @fastopen_seqlock, i32 0, i32 0, i32 0, i32 1), i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !92
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !88

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !93
  %6 = load volatile i32, ptr @fastopen_seqlock, align 4
  %and1 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not2 = icmp eq i32 %and1, 0
  br i1 %tobool.not2, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !95
  %7 = load volatile i32, ptr @fastopen_seqlock, align 4
  %and = and i32 %7, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %6, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %7, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_cache_set(ptr noundef %sk, i16 noundef zeroext %mss, ptr noundef readonly %cookie, i1 noundef zeroext %syn_lost, i16 noundef zeroext %try_exp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.__sk_dst_get.exit_crit_edge

entry.__sk_dst_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i64 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

land.lhs.true.i65:                                ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i65.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i65.__sk_dst_get.exit_crit_edge:    ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i65
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i66

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__sk_dst_get.exit

if.then.i66:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.3) #12
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i66, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i65.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %entry.__sk_dst_get.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %__sk_dst_get.exit.cleanup_crit_edge, label %if.end

__sk_dst_get.exit.cleanup_crit_edge:              ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %__sk_dst_get.exit
  %2 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call fastcc ptr @tcp_get_metrics(ptr noundef %sk, ptr noundef nonnull %1, i1 noundef zeroext true)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %rcu_read_lock.exit.if.end47_crit_edge, label %if.then3

rcu_read_lock.exit.if.end47_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then3:                                         ; preds = %rcu_read_lock.exit
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @fastopen_seqlock, i32 0, i32 1)) #12
  %6 = load i32, ptr @fastopen_seqlock, align 4
  %inc.i.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i.i, ptr @fastopen_seqlock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !97
  %7 = tail call ptr @llvm.returnaddress(i32 0) #12
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @fastopen_seqlock, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mss)
  %tobool4.not = icmp eq i16 %mss, 0
  br i1 %tobool4.not, label %if.then3.if.end7_crit_edge, label %if.then5

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %tcpm_fastopen = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1, i32 0, i32 7
  %9 = ptrtoint ptr %tcpm_fastopen to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %mss, ptr %tcpm_fastopen, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %cookie, null
  br i1 %tobool8.not, label %if.end7.if.else_crit_edge, label %land.lhs.true

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end7
  %len = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %cookie, i32 0, i32 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp sgt i8 %11, 0
  br i1 %cmp, label %if.then10, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %cookie11 = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1, i32 0, i32 7, i32 3
  %12 = call ptr @memcpy(ptr %cookie11, ptr %cookie, i32 24)
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end7.if.else_crit_edge
  %try_exp13 = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %try_exp13 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %try_exp13, align 2
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear, i16 %try_exp)
  %cmp15 = icmp ult i16 %bf.clear, %try_exp
  br i1 %cmp15, label %land.lhs.true17, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.lhs.true17:                                  ; preds = %if.else
  %len19 = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1, i32 0, i32 7, i32 3, i32 1
  %14 = ptrtoint ptr %len19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp21 = icmp slt i8 %15, 1
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true17.if.end31_crit_edge

land.lhs.true17.if.end31_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.lhs.true23:                                  ; preds = %land.lhs.true17
  %exp = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1, i32 0, i32 7, i32 3, i32 2
  %16 = ptrtoint ptr %exp to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %exp, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true23.if.end31_crit_edge

land.lhs.true23.if.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  %bf.value = shl i16 %try_exp, 4
  %bf.shl = and i16 %bf.value, 48
  %bf.clear29 = and i16 %bf.load, -49
  %bf.set = or i16 %bf.clear29, %bf.shl
  %18 = ptrtoint ptr %try_exp13 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %bf.set, ptr %try_exp13, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %land.lhs.true23.if.end31_crit_edge, %land.lhs.true17.if.end31_crit_edge, %if.else.if.end31_crit_edge, %if.then10
  %syn_loss = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %syn_loss to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load34 = load i16, ptr %syn_loss, align 2
  br i1 %syn_lost, label %if.then33, label %if.else41

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %20 = add i16 %bf.load34, 64
  %21 = ptrtoint ptr %syn_loss to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %syn_loss, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %last_syn_loss = getelementptr inbounds %struct.tcp_metrics_block, ptr %call1, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %last_syn_loss to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_syn_loss, align 4
  br label %if.end46

if.else41:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear44 = and i16 %bf.load34, 63
  %24 = ptrtoint ptr %syn_loss to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %bf.clear44, ptr %syn_loss, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.else41, %if.then33
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @fastopen_seqlock, i32 0, i32 0, i32 0, i32 1), i32 noundef %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  %25 = load i32, ptr @fastopen_seqlock, align 4
  %inc.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i, ptr @fastopen_seqlock, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @fastopen_seqlock, i32 0, i32 1)) #12
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %rcu_read_lock.exit.if.end47_crit_edge
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i67, label %if.end47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i70

if.end47.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i70:                                ; preds = %if.end47
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, %if.end47.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i74 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %__sk_dst_get.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @set_tcpmhash_entries(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @kstrtouint(ptr noundef nonnull %str, i32 noundef 0, ptr noundef nonnull @tcpmhash_entries) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %. = zext i1 %tobool1.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_metrics_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @tcp_net_metrics_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #16
  unreachable

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @genl_register_family(ptr noundef nonnull @tcp_metrics_nl_family) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #16
  unreachable

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__tcp_get_metrics(ptr nocapture noundef readonly %saddr, ptr nocapture noundef readonly %daddr, ptr noundef readnone %net, i32 noundef %hash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tcp_metrics_hash, align 4
  %arrayidx = getelementptr %struct.tcpm_hash_bucket, ptr %0, i32 %hash
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b45 = load i1, ptr @__tcp_get_metrics.__warned, align 1
  br i1 %.b45, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__tcp_get_metrics.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 218, ptr noundef nonnull @.str.3) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not60 = icmp eq ptr %2, null
  br i1 %tobool9.not60, label %do.end7..thread_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7..thread_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %.thread

for.body:                                         ; preds = %do.end34.for.body_crit_edge, %do.end7.for.body_crit_edge
  %tm.063 = phi ptr [ %18, %do.end34.for.body_crit_edge ], [ %2, %do.end7.for.body_crit_edge ]
  %depth.061 = phi i32 [ %inc, %do.end34.for.body_crit_edge ], [ 0, %do.end7.for.body_crit_edge ]
  %tcpm_saddr = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.063, i32 0, i32 2
  %family.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.063, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cmp.i.i = icmp eq i16 %4, 2
  %..i.i = select i1 %cmp.i.i, i32 2, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body
  %i.027.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr %tcpm_saddr, i32 0, i32 %i.027.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 %i.027.i.i
  %7 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp5.i.i = icmp eq i32 %6, %8
  %cmp5.i.not.i = xor i1 %cmp5.i.i, true
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %..i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %..i.i
  %or.cond.i = select i1 %cmp5.i.not.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %addr_same.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

addr_same.exit:                                   ; preds = %for.body.i.i
  br i1 %cmp5.i.i, label %land.lhs.true11, label %addr_same.exit.if.end18_crit_edge

addr_same.exit.if.end18_crit_edge:                ; preds = %addr_same.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true11:                                  ; preds = %addr_same.exit
  %tcpm_daddr = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.063, i32 0, i32 3
  %family.i.i46 = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.063, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %family.i.i46 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %family.i.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp.i.i47 = icmp eq i16 %10, 2
  %..i.i48 = select i1 %cmp.i.i47, i32 2, i32 4
  br label %for.body.i.i57

for.body.i.i57:                                   ; preds = %for.body.i.i57.for.body.i.i57_crit_edge, %land.lhs.true11
  %i.027.i.i49 = phi i32 [ 0, %land.lhs.true11 ], [ %inc.i.i54, %for.body.i.i57.for.body.i.i57_crit_edge ]
  %arrayidx.i.i50 = getelementptr [4 x i32], ptr %tcpm_daddr, i32 0, i32 %i.027.i.i49
  %11 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i50, align 4
  %arrayidx4.i.i51 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 %i.027.i.i49
  %13 = ptrtoint ptr %arrayidx4.i.i51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i.i51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5.i.i52 = icmp eq i32 %12, %14
  %cmp5.i.not.i53 = xor i1 %cmp5.i.i52, true
  %inc.i.i54 = add nuw nsw i32 %i.027.i.i49, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i54, i32 %..i.i48)
  %exitcond.not.i.i55 = icmp eq i32 %inc.i.i54, %..i.i48
  %or.cond.i56 = select i1 %cmp5.i.not.i53, i1 true, i1 %exitcond.not.i.i55
  br i1 %or.cond.i56, label %addr_same.exit58, label %for.body.i.i57.for.body.i.i57_crit_edge

for.body.i.i57.for.body.i.i57_crit_edge:          ; preds = %for.body.i.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i57

addr_same.exit58:                                 ; preds = %for.body.i.i57
  br i1 %cmp5.i.i52, label %land.lhs.true13, label %addr_same.exit58.if.end18_crit_edge

addr_same.exit58.if.end18_crit_edge:              ; preds = %addr_same.exit58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true13:                                  ; preds = %addr_same.exit58
  %tcpm_net.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.063, i32 0, i32 1
  %15 = ptrtoint ptr %tcpm_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tcpm_net.i, align 4
  %cmp.i.not = icmp eq ptr %16, %net
  br i1 %cmp.i.not, label %land.lhs.true13..thread_crit_edge, label %land.lhs.true13.if.end18_crit_edge

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true13..thread_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %.thread

if.end18:                                         ; preds = %land.lhs.true13.if.end18_crit_edge, %addr_same.exit58.if.end18_crit_edge, %addr_same.exit.if.end18_crit_edge
  %inc = add i32 %depth.061, 1
  %17 = ptrtoint ptr %tm.063 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %tm.063, align 8
  %call24 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %if.end18.do.end34_crit_edge

if.end18.do.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

land.lhs.true26:                                  ; preds = %if.end18
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.do.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b4344 = load i1, ptr @__tcp_get_metrics.__warned.7, align 1
  br i1 %.b4344, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__tcp_get_metrics.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 219, ptr noundef nonnull @.str.3) #12
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true26.do.end34_crit_edge, %if.end18.do.end34_crit_edge
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %for.end, label %do.end34.for.body_crit_edge

do.end34.for.body_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp.i59 = icmp sgt i32 %inc, 5
  %spec.select = select i1 %cmp.i59, ptr inttoptr (i32 1 to ptr), ptr null
  br label %.thread

.thread:                                          ; preds = %for.end, %land.lhs.true13..thread_crit_edge, %do.end7..thread_crit_edge
  %19 = phi ptr [ null, %do.end7..thread_crit_edge ], [ %spec.select, %for.end ], [ %tm.063, %land.lhs.true13..thread_crit_edge ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @tcpm_suck_dst(ptr nocapture noundef %tm, ptr nocapture noundef readonly %dst, i1 noundef zeroext %fastopen_clear) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %tcpm_stamp = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 4
  %1 = ptrtoint ptr %tcpm_stamp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %tcpm_stamp, align 8
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %2 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i = and i32 %3, -4
  %4 = inttoptr i32 %and.i.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i = lshr i32 %6, 4
  %7 = and i32 %and.i, 15
  %and.i83 = lshr i32 %6, 5
  %8 = and i32 %and.i83, 16
  %9 = or i32 %7, %8
  %tcpm_lock = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 5
  %10 = ptrtoint ptr %tcpm_lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tcpm_lock, align 4
  %11 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i84 = and i32 %11, -4
  %12 = inttoptr i32 %and.i84 to ptr
  %arrayidx.i = getelementptr i32, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %mul = mul i32 %14, 1000
  %tcpm_vals = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 6
  %15 = ptrtoint ptr %tcpm_vals to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %tcpm_vals, align 8
  %16 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i86 = and i32 %16, -4
  %17 = inttoptr i32 %and.i86 to ptr
  %arrayidx.i87 = getelementptr i32, ptr %17, i32 4
  %18 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i87, align 4
  %mul23 = mul i32 %19, 1000
  %arrayidx25 = getelementptr %struct.tcp_metrics_block, ptr %tm, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul23, ptr %arrayidx25, align 4
  %21 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i89 = and i32 %21, -4
  %22 = inttoptr i32 %and.i89 to ptr
  %arrayidx.i90 = getelementptr i32, ptr %22, i32 5
  %23 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i90, align 4
  %arrayidx28 = getelementptr %struct.tcp_metrics_block, ptr %tm, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx28, align 8
  %26 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i92 = and i32 %26, -4
  %27 = inttoptr i32 %and.i92 to ptr
  %arrayidx.i93 = getelementptr i32, ptr %27, i32 6
  %28 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i93, align 4
  %arrayidx31 = getelementptr %struct.tcp_metrics_block, ptr %tm, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx31, align 4
  %31 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i95 = and i32 %31, -4
  %32 = inttoptr i32 %and.i95 to ptr
  %arrayidx.i96 = getelementptr i32, ptr %32, i32 8
  %33 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i96, align 4
  %arrayidx34 = getelementptr %struct.tcp_metrics_block, ptr %tm, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx34, align 8
  br i1 %fastopen_clear, label %if.then36, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tcpm_fastopen = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 7
  %36 = ptrtoint ptr %tcpm_fastopen to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %tcpm_fastopen, align 8
  %syn_loss = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %syn_loss to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load = load i16, ptr %syn_loss, align 2
  %bf.clear40 = and i16 %bf.load, 15
  store i16 %bf.clear40, ptr %syn_loss, align 2
  %exp = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 7, i32 3, i32 2
  %38 = ptrtoint ptr %exp to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %exp, align 1
  %len = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 7, i32 3, i32 1
  %39 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %len, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %entry.if.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_net_metrics_init(ptr noundef readnone %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @tcpmhash_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.cond.false24_crit_edge

if.end.cond.false24_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false24

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %1)
  %cmp = icmp ugt i32 %1, 131071
  %. = select i1 %cmp, i32 16384, i32 8192
  br label %cond.false24

cond.false24:                                     ; preds = %if.then2, %if.end.cond.false24_crit_edge
  %slots.0 = phi i32 [ %0, %if.end.cond.false24_crit_edge ], [ %., %if.then2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slots.0)
  %cmp.i42 = icmp ugt i32 %slots.0, 1
  %sub.i43 = add i32 %slots.0, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i43, i1 false) #12, !range !100
  %add.i = sub nuw nsw i32 32, %2
  %cond27 = select i1 %cmp.i42, i32 %add.i, i32 0
  store i32 %cond27, ptr @tcp_metrics_hash_log, align 4
  %shl = shl i32 4, %cond27
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %shl, i32 noundef 3520, i32 noundef -1) #17
  store ptr %call.i.i, ptr @tcp_metrics_hash, align 4
  %tobool29.not = icmp eq ptr %call.i.i, null
  %.41 = select i1 %tobool29.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %cond.false24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %.41, %cond.false24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_net_metrics_exit_batch(ptr nocapture noundef readnone %net_exit_list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tcp_metrics_flush_all(ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_metrics_flush_all(ptr noundef readnone %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tcp_metrics_hash_log, align 4
  %1 = load ptr, ptr @tcp_metrics_hash, align 4
  %tobool8.not = icmp eq ptr %net, null
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %hb.065 = phi ptr [ %1, %entry ], [ %incdec.ptr, %for.end.for.body_crit_edge ]
  %row.064 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @tcp_metrics_lock) #12
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @tcp_metrics_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @tcp_metrics_flush_all.__warned, align 1
  br i1 %.b56, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcp_metrics_flush_all.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 888, ptr noundef nonnull @.str.8) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %2 = ptrtoint ptr %hb.065 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tm.059 = load ptr, ptr %hb.065, align 4
  %tobool6.not60 = icmp eq ptr %tm.059, null
  br i1 %tobool6.not60, label %do.end.for.end_crit_edge, label %do.end.for.body7_crit_edge

do.end.for.body7_crit_edge:                       ; preds = %do.end
  br label %for.body7

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body7:                                        ; preds = %do.end39.for.body7_crit_edge, %do.end.for.body7_crit_edge
  %tm.062 = phi ptr [ %tm.0, %do.end39.for.body7_crit_edge ], [ %tm.059, %do.end.for.body7_crit_edge ]
  %pp.061 = phi ptr [ %pp.1, %do.end39.for.body7_crit_edge ], [ %hb.065, %do.end.for.body7_crit_edge ]
  %tcpm_net.i57 = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.062, i32 0, i32 1
  %3 = ptrtoint ptr %tcpm_net.i57 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcpm_net.i57, align 4
  br i1 %tobool8.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body7
  %cmp.i = icmp eq ptr %4, %net
  br i1 %cmp.i, label %cond.true.if.then16_crit_edge, label %cond.true.do.body28_crit_edge

cond.true.do.body28_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

cond.true.if.then16_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

cond.end:                                         ; preds = %for.body7
  %count = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 14, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #12
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %cond.end.if.then16_crit_edge, label %cond.end.do.body28_crit_edge

cond.end.do.body28_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

cond.end.if.then16_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %cond.end.if.then16_crit_edge, %cond.true.if.then16_crit_edge
  %7 = ptrtoint ptr %tm.062 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tm.062, align 8
  %9 = ptrtoint ptr %pp.061 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pp.061, align 4
  %callback_head = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.062, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 112 to ptr)) #12
  br label %do.body28

do.body28:                                        ; preds = %if.then16, %cond.end.do.body28_crit_edge, %cond.true.do.body28_crit_edge
  %pp.1 = phi ptr [ %pp.061, %if.then16 ], [ %tm.062, %cond.end.do.body28_crit_edge ], [ %tm.062, %cond.true.do.body28_crit_edge ]
  %call.i58 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @tcp_metrics_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool30.not = icmp eq i32 %call.i58, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %do.body28.do.end39_crit_edge

do.body28.do.end39_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

land.lhs.true31:                                  ; preds = %do.body28
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b5455 = load i1, ptr @tcp_metrics_flush_all.__warned.17, align 1
  br i1 %.b5455, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcp_metrics_flush_all.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 888, ptr noundef nonnull @.str.8) #12
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %do.body28.do.end39_crit_edge
  %10 = ptrtoint ptr %pp.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tm.0 = load ptr, ptr %pp.1, align 4
  %tobool6.not = icmp eq ptr %tm.0, null
  br i1 %tobool6.not, label %do.end39.for.end_crit_edge, label %do.end39.for.body7_crit_edge

do.end39.for.body7_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7

do.end39.for.end_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end39.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @tcp_metrics_lock) #12
  %inc = add i32 %row.064, 1
  %incdec.ptr = getelementptr %struct.tcpm_hash_bucket, ptr %hb.065, i32 1
  %row.0.highbits = lshr i32 %inc, %0
  %cmp = icmp eq i32 %row.0.highbits, 0
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end42

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_metrics_nl_cmd_get(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i.i92 = alloca %struct.in6_addr, align 4
  %tmp.i.i = alloca %struct.in6_addr, align 4
  %saddr = alloca %struct.inetpeer_addr, align 4
  %daddr = alloca %struct.inetpeer_addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %saddr) #12
  %0 = call ptr @memset(ptr %saddr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %daddr) #12
  %1 = call ptr @memset(ptr %daddr, i32 255, i32 20)
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_net.i, align 4
  %attrs.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %daddr, align 4
  %vif.i.i.i = getelementptr inbounds %struct.ipv4_addr_key, ptr %daddr, i32 0, i32 1
  %11 = ptrtoint ptr %vif.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %vif.i.i.i, align 4
  %family.i.i.i = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr, i32 0, i32 1
  %12 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %family.i.i.i, align 4
  br label %if.end

if.end5.i.i:                                      ; preds = %entry
  %arrayidx7.i.i = getelementptr ptr, ptr %5, i32 2
  %13 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %14, null
  br i1 %tobool8.not.i.i, label %if.end5.i.i.cleanup_crit_edge, label %if.then9.i.i

if.end5.i.i.cleanup_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9.i.i:                                     ; preds = %if.end5.i.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %16)
  %cmp.not.i.i = icmp eq i16 %16, 20
  br i1 %cmp.not.i.i, label %if.end12.i.i, label %if.then9.i.i.cleanup_crit_edge

if.then9.i.i.cleanup_crit_edge:                   ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #12
  %17 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 16)
  %call.i.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %14, i32 noundef 16) #12
  %18 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %in6.sroa.0.0.copyload.i.i = load i32, ptr %tmp.i.i, align 4
  %in6.sroa.5.0.tmp.sroa_idx.i.i = getelementptr inbounds i8, ptr %tmp.i.i, i32 4
  %19 = ptrtoint ptr %in6.sroa.5.0.tmp.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %in6.sroa.5.0.copyload.i.i = load i32, ptr %in6.sroa.5.0.tmp.sroa_idx.i.i, align 4
  %in6.sroa.6.0.tmp.sroa_idx.i.i = getelementptr inbounds i8, ptr %tmp.i.i, i32 8
  %20 = ptrtoint ptr %in6.sroa.6.0.tmp.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %in6.sroa.6.0.copyload.i.i = load i32, ptr %in6.sroa.6.0.tmp.sroa_idx.i.i, align 4
  %in6.sroa.7.0.tmp.sroa_idx.i.i = getelementptr inbounds i8, ptr %tmp.i.i, i32 12
  %21 = ptrtoint ptr %in6.sroa.7.0.tmp.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %in6.sroa.7.0.copyload.i.i = load i32, ptr %in6.sroa.7.0.tmp.sroa_idx.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #12
  %22 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %in6.sroa.0.0.copyload.i.i, ptr %daddr, align 4
  %in6.sroa.5.0.addr.sroa_idx.i.i = getelementptr inbounds i8, ptr %daddr, i32 4
  %23 = ptrtoint ptr %in6.sroa.5.0.addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %in6.sroa.5.0.copyload.i.i, ptr %in6.sroa.5.0.addr.sroa_idx.i.i, align 4
  %in6.sroa.6.0.addr.sroa_idx.i.i = getelementptr inbounds i8, ptr %daddr, i32 8
  %24 = ptrtoint ptr %in6.sroa.6.0.addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %in6.sroa.6.0.copyload.i.i, ptr %in6.sroa.6.0.addr.sroa_idx.i.i, align 4
  %in6.sroa.7.0.addr.sroa_idx.i.i = getelementptr inbounds i8, ptr %daddr, i32 12
  %25 = ptrtoint ptr %in6.sroa.7.0.addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %in6.sroa.7.0.copyload.i.i, ptr %in6.sroa.7.0.addr.sroa_idx.i.i, align 4
  %family.i33.i.i = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr, i32 0, i32 1
  %26 = ptrtoint ptr %family.i33.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 10, ptr %family.i33.i.i, align 4
  %xor.i.i.i = xor i32 %in6.sroa.5.0.copyload.i.i, %in6.sroa.0.0.copyload.i.i
  %xor5.i.i.i = xor i32 %xor.i.i.i, %in6.sroa.6.0.copyload.i.i
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %in6.sroa.7.0.copyload.i.i
  br label %if.end

if.end:                                           ; preds = %if.end12.i.i, %if.then.i.i
  %hash.0 = phi i32 [ %xor8.i.i.i, %if.end12.i.i ], [ %9, %if.then.i.i ]
  %27 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx.i.i94 = getelementptr ptr, ptr %28, i32 11
  %29 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i94, align 4
  %tobool.not.i.i95 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i95, label %if.end5.i.i101, label %if.then.i.i98

if.then.i.i98:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i96 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.i.i96, align 4
  %33 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %saddr, align 4
  %vif.i.i.i97 = getelementptr inbounds %struct.ipv4_addr_key, ptr %saddr, i32 0, i32 1
  %34 = ptrtoint ptr %vif.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %vif.i.i.i97, align 4
  br label %__parse_nl_addr.exit.sink.split.i

if.end5.i.i101:                                   ; preds = %if.end
  %arrayidx7.i.i99 = getelementptr ptr, ptr %28, i32 12
  %35 = ptrtoint ptr %arrayidx7.i.i99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx7.i.i99, align 4
  %tobool8.not.i.i100 = icmp eq ptr %36, null
  br i1 %tobool8.not.i.i100, label %if.end5.i.i101.parse_nl_saddr.exit_crit_edge, label %if.then9.i.i103

if.end5.i.i101.parse_nl_saddr.exit_crit_edge:     ; preds = %if.end5.i.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_nl_saddr.exit

if.then9.i.i103:                                  ; preds = %if.end5.i.i101
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %38)
  %cmp.not.i.i102 = icmp eq i16 %38, 20
  br i1 %cmp.not.i.i102, label %if.end12.i.i115, label %if.then9.i.i103.parse_nl_saddr.exit_crit_edge

if.then9.i.i103.parse_nl_saddr.exit_crit_edge:    ; preds = %if.then9.i.i103
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_nl_saddr.exit

if.end12.i.i115:                                  ; preds = %if.then9.i.i103
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i92) #12
  %39 = call ptr @memset(ptr %tmp.i.i92, i32 255, i32 16)
  %call.i.i.i104 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i92, ptr noundef nonnull %36, i32 noundef 16) #12
  %40 = ptrtoint ptr %tmp.i.i92 to i32
  call void @__asan_load4_noabort(i32 %40)
  %in6.sroa.0.0.copyload.i.i105 = load i32, ptr %tmp.i.i92, align 4
  %in6.sroa.5.0.tmp.sroa_idx.i.i106 = getelementptr inbounds i8, ptr %tmp.i.i92, i32 4
  %41 = ptrtoint ptr %in6.sroa.5.0.tmp.sroa_idx.i.i106 to i32
  call void @__asan_load4_noabort(i32 %41)
  %in6.sroa.5.0.copyload.i.i107 = load i32, ptr %in6.sroa.5.0.tmp.sroa_idx.i.i106, align 4
  %in6.sroa.6.0.tmp.sroa_idx.i.i108 = getelementptr inbounds i8, ptr %tmp.i.i92, i32 8
  %42 = ptrtoint ptr %in6.sroa.6.0.tmp.sroa_idx.i.i108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %in6.sroa.6.0.copyload.i.i109 = load i32, ptr %in6.sroa.6.0.tmp.sroa_idx.i.i108, align 4
  %in6.sroa.7.0.tmp.sroa_idx.i.i110 = getelementptr inbounds i8, ptr %tmp.i.i92, i32 12
  %43 = ptrtoint ptr %in6.sroa.7.0.tmp.sroa_idx.i.i110 to i32
  call void @__asan_load4_noabort(i32 %43)
  %in6.sroa.7.0.copyload.i.i111 = load i32, ptr %in6.sroa.7.0.tmp.sroa_idx.i.i110, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i92) #12
  %44 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %in6.sroa.0.0.copyload.i.i105, ptr %saddr, align 4
  %in6.sroa.5.0.addr.sroa_idx.i.i112 = getelementptr inbounds i8, ptr %saddr, i32 4
  %45 = ptrtoint ptr %in6.sroa.5.0.addr.sroa_idx.i.i112 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %in6.sroa.5.0.copyload.i.i107, ptr %in6.sroa.5.0.addr.sroa_idx.i.i112, align 4
  %in6.sroa.6.0.addr.sroa_idx.i.i113 = getelementptr inbounds i8, ptr %saddr, i32 8
  %46 = ptrtoint ptr %in6.sroa.6.0.addr.sroa_idx.i.i113 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %in6.sroa.6.0.copyload.i.i109, ptr %in6.sroa.6.0.addr.sroa_idx.i.i113, align 4
  %in6.sroa.7.0.addr.sroa_idx.i.i114 = getelementptr inbounds i8, ptr %saddr, i32 12
  %47 = ptrtoint ptr %in6.sroa.7.0.addr.sroa_idx.i.i114 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %in6.sroa.7.0.copyload.i.i111, ptr %in6.sroa.7.0.addr.sroa_idx.i.i114, align 4
  br label %__parse_nl_addr.exit.sink.split.i

__parse_nl_addr.exit.sink.split.i:                ; preds = %if.end12.i.i115, %if.then.i.i98
  %.sink.i = phi i16 [ 2, %if.then.i.i98 ], [ 10, %if.end12.i.i115 ]
  %family.i.i.i116 = getelementptr inbounds %struct.inetpeer_addr, ptr %saddr, i32 0, i32 1
  %48 = ptrtoint ptr %family.i.i.i116 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %.sink.i, ptr %family.i.i.i116, align 4
  br label %parse_nl_saddr.exit

parse_nl_saddr.exit:                              ; preds = %__parse_nl_addr.exit.sink.split.i, %if.then9.i.i103.parse_nl_saddr.exit_crit_edge, %if.end5.i.i101.parse_nl_saddr.exit_crit_edge
  %cmp3 = phi i1 [ true, %if.end5.i.i101.parse_nl_saddr.exit_crit_edge ], [ true, %if.then9.i.i103.parse_nl_saddr.exit_crit_edge ], [ false, %__parse_nl_addr.exit.sink.split.i ]
  %call.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %parse_nl_saddr.exit.cleanup_crit_edge, label %if.end8

parse_nl_saddr.exit.cleanup_crit_edge:            ; preds = %parse_nl_saddr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %parse_nl_saddr.exit
  %genlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %49 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %genlhdr, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 2
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %53 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %snd_portid.i, align 4
  %55 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %info, align 4
  %call.i118 = call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %54, i32 noundef %56, ptr noundef nonnull @tcp_metrics_nl_family, i32 noundef 0, i8 noundef zeroext %52) #12
  %tobool10.not = icmp eq ptr %call.i118, null
  br i1 %tobool10.not, label %if.end8.out_free_crit_edge, label %if.end12

if.end8.out_free_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end12:                                         ; preds = %if.end8
  %hash_mix.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 26
  %57 = ptrtoint ptr %hash_mix.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hash_mix.i, align 8
  %xor = xor i32 %58, %hash.0
  %59 = load i32, ptr @tcp_metrics_hash_log, align 4
  %mul.i.i = mul i32 %xor, 1640531527
  %sub.i = sub i32 32, %59
  %shr.i = lshr i32 %mul.i.i, %sub.i
  %60 = call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %63, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end12.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end12.rcu_read_lock.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end12
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end12.rcu_read_lock.exit_crit_edge
  %64 = load ptr, ptr @tcp_metrics_hash, align 4
  %arrayidx = getelementptr %struct.tcpm_hash_bucket, ptr %64, i32 %shr.i
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %arrayidx, align 4
  %call16 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end25_crit_edge

rcu_read_lock.exit.do.end25_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call18 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b91 = load i1, ptr @tcp_metrics_nl_cmd_get.__warned, align 1
  br i1 %.b91, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcp_metrics_nl_cmd_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 851, ptr noundef nonnull @.str.3) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true.do.end25_crit_edge, %rcu_read_lock.exit.do.end25_crit_edge
  %tobool27.not149 = icmp eq ptr %66, null
  br i1 %tobool27.not149, label %do.end25.for.end_crit_edge, label %do.end25.for.body_crit_edge

do.end25.for.body_crit_edge:                      ; preds = %do.end25
  br label %for.body

do.end25.for.end_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %do.end54.for.body_crit_edge, %do.end25.for.body_crit_edge
  %tm.0150 = phi ptr [ %82, %do.end54.for.body_crit_edge ], [ %66, %do.end25.for.body_crit_edge ]
  %tcpm_daddr = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0150, i32 0, i32 3
  %family.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0150, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %68)
  %cmp.i.i = icmp eq i16 %68, 2
  %..i.i = select i1 %cmp.i.i, i32 2, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body
  %i.027.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i119 = getelementptr [4 x i32], ptr %tcpm_daddr, i32 0, i32 %i.027.i.i
  %69 = ptrtoint ptr %arrayidx.i.i119 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i119, align 4
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 %i.027.i.i
  %71 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp5.i.i = icmp eq i32 %70, %72
  %cmp5.i.not.i = xor i1 %cmp5.i.i, true
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %..i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %..i.i
  %or.cond.i = select i1 %cmp5.i.not.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %addr_same.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

addr_same.exit:                                   ; preds = %for.body.i.i
  br i1 %cmp5.i.i, label %land.lhs.true29, label %addr_same.exit.for.inc_crit_edge

addr_same.exit.for.inc_crit_edge:                 ; preds = %addr_same.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true29:                                  ; preds = %addr_same.exit
  br i1 %cmp3, label %land.lhs.true29.land.lhs.true32_crit_edge, label %lor.lhs.false

land.lhs.true29.land.lhs.true32_crit_edge:        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true32

lor.lhs.false:                                    ; preds = %land.lhs.true29
  %tcpm_saddr = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0150, i32 0, i32 2
  %family.i.i120 = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0150, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %family.i.i120 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %family.i.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %74)
  %cmp.i.i121 = icmp eq i16 %74, 2
  %..i.i122 = select i1 %cmp.i.i121, i32 2, i32 4
  br label %for.body.i.i131

for.body.i.i131:                                  ; preds = %for.body.i.i131.for.body.i.i131_crit_edge, %lor.lhs.false
  %i.027.i.i123 = phi i32 [ 0, %lor.lhs.false ], [ %inc.i.i128, %for.body.i.i131.for.body.i.i131_crit_edge ]
  %arrayidx.i.i124 = getelementptr [4 x i32], ptr %tcpm_saddr, i32 0, i32 %i.027.i.i123
  %75 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i124, align 4
  %arrayidx4.i.i125 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 %i.027.i.i123
  %77 = ptrtoint ptr %arrayidx4.i.i125 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx4.i.i125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp5.i.i126 = icmp eq i32 %76, %78
  %cmp5.i.not.i127 = xor i1 %cmp5.i.i126, true
  %inc.i.i128 = add nuw nsw i32 %i.027.i.i123, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i128, i32 %..i.i122)
  %exitcond.not.i.i129 = icmp eq i32 %inc.i.i128, %..i.i122
  %or.cond.i130 = select i1 %cmp5.i.not.i127, i1 true, i1 %exitcond.not.i.i129
  br i1 %or.cond.i130, label %addr_same.exit132, label %for.body.i.i131.for.body.i.i131_crit_edge

for.body.i.i131.for.body.i.i131_crit_edge:        ; preds = %for.body.i.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i131

addr_same.exit132:                                ; preds = %for.body.i.i131
  br i1 %cmp5.i.i126, label %addr_same.exit132.land.lhs.true32_crit_edge, label %addr_same.exit132.for.inc_crit_edge

addr_same.exit132.for.inc_crit_edge:              ; preds = %addr_same.exit132
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

addr_same.exit132.land.lhs.true32_crit_edge:      ; preds = %addr_same.exit132
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true32

land.lhs.true32:                                  ; preds = %addr_same.exit132.land.lhs.true32_crit_edge, %land.lhs.true29.land.lhs.true32_crit_edge
  %tcpm_net.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0150, i32 0, i32 1
  %79 = ptrtoint ptr %tcpm_net.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tcpm_net.i, align 4
  %cmp.i.not = icmp eq ptr %80, %3
  br i1 %cmp.i.not, label %if.then36, label %land.lhs.true32.for.inc_crit_edge

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then36:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  %call37 = call fastcc i32 @tcp_metrics_fill_info(ptr noundef nonnull %call.i.i, ptr noundef nonnull %tm.0150)
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true32.for.inc_crit_edge, %addr_same.exit132.for.inc_crit_edge, %addr_same.exit.for.inc_crit_edge
  %81 = ptrtoint ptr %tm.0150 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %tm.0150, align 8
  %call44 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %for.inc.do.end54_crit_edge

for.inc.do.end54_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

land.lhs.true46:                                  ; preds = %for.inc
  %call47 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true46.do.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %.b8990 = load i1, ptr @tcp_metrics_nl_cmd_get.__warned.19, align 1
  br i1 %.b8990, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcp_metrics_nl_cmd_get.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 852, ptr noundef nonnull @.str.3) #12
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true46.do.end54_crit_edge, %for.inc.do.end54_crit_edge
  %tobool27.not = icmp eq ptr %82, null
  br i1 %tobool27.not, label %do.end54.for.end_crit_edge, label %do.end54.for.body_crit_edge

do.end54.for.body_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end54.for.end_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end54.for.end_crit_edge, %if.then36, %do.end25.for.end_crit_edge
  %ret.0 = phi i32 [ %call37, %if.then36 ], [ -3, %do.end25.for.end_crit_edge ], [ -3, %do.end54.for.end_crit_edge ]
  %call.i133 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i133, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i136

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i136:                               ; preds = %for.end
  %call1.i134 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %tobool.not.i135 = icmp eq i32 %call1.i134, 0
  br i1 %tobool.not.i135, label %land.lhs.true.i136.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i138

land.lhs.true.i136.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i138:                              ; preds = %land.lhs.true.i136
  %.b4.i137 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i137, label %land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge, label %if.then.i139

land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i138
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i139:                                     ; preds = %land.lhs.true2.i138
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i139, %land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i136.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %83 = call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i140 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i140 to ptr
  %preempt_count.i.i.i.i141 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i141, align 4
  %sub.i.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i141, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp56 = icmp slt i32 %ret.0, 0
  br i1 %cmp56, label %rcu_read_unlock.exit.out_free_crit_edge, label %if.end58

rcu_read_unlock.exit.out_free_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end58:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr1.i = getelementptr i8, ptr %call.i118, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %87 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %88 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %89 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %90 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %_net.i, align 4
  %92 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %91, i32 0, i32 21
  %94 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i143 = call i32 @netlink_unicast(ptr noundef %95, ptr noundef nonnull %call.i.i, i32 noundef %93, i32 noundef 64) #12
  %96 = call i32 @llvm.smin.i32(i32 %call.i.i.i143, i32 0) #12
  br label %cleanup

out_free:                                         ; preds = %rcu_read_unlock.exit.out_free_crit_edge, %if.end8.out_free_crit_edge
  %ret.1 = phi i32 [ %ret.0, %rcu_read_unlock.exit.out_free_crit_edge ], [ -90, %if.end8.out_free_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end58, %parse_nl_saddr.exit.cleanup_crit_edge, %if.then9.i.i.cleanup_crit_edge, %if.end5.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free ], [ %96, %if.end58 ], [ -12, %parse_nl_saddr.exit.cleanup_crit_edge ], [ -97, %if.end5.i.i.cleanup_crit_edge ], [ -22, %if.then9.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %daddr) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %saddr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_metrics_nl_dump(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = load i32, ptr @tcp_metrics_hash_log, align 4
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1, align 4
  %row.0.highbits113 = lshr i32 %8, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %row.0.highbits113)
  %cmp114 = icmp eq i32 %row.0.highbits113, 0
  br i1 %cmp114, label %for.body.lr.ph, label %entry.cleanup49_crit_edge

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

for.body.lr.ph:                                   ; preds = %entry
  %nlh.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc44.for.body_crit_edge, %for.body.lr.ph
  %row.0116 = phi i32 [ %8, %for.body.lr.ph ], [ %inc45, %for.inc44.for.body_crit_edge ]
  %s_col.0115 = phi i32 [ %10, %for.body.lr.ph ], [ 0, %for.inc44.for.body_crit_edge ]
  %11 = load ptr, ptr @tcp_metrics_hash, align 4
  %add.ptr = getelementptr %struct.tcpm_hash_bucket, ptr %11, i32 %row.0116
  %12 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %add.ptr, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b72 = load i1, ptr @tcp_metrics_nl_dump.__warned, align 1
  br i1 %.b72, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcp_metrics_nl_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 757, ptr noundef nonnull @.str.3) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool12.not108 = icmp eq ptr %17, null
  br i1 %tobool12.not108, label %do.end9.for.end_crit_edge, label %do.end9.for.body13_crit_edge

do.end9.for.body13_crit_edge:                     ; preds = %do.end9
  br label %for.body13

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body13:                                       ; preds = %do.end41.for.body13_crit_edge, %do.end9.for.body13_crit_edge
  %tm.0111 = phi ptr [ %36, %do.end41.for.body13_crit_edge ], [ %17, %do.end9.for.body13_crit_edge ]
  %col.1109 = phi i32 [ %inc, %do.end41.for.body13_crit_edge ], [ 0, %do.end9.for.body13_crit_edge ]
  %tcpm_net.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0111, i32 0, i32 1
  %18 = ptrtoint ptr %tcpm_net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tcpm_net.i, align 4
  %cmp.i = icmp ne ptr %19, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %col.1109, i32 %s_col.0115)
  %cmp19 = icmp slt i32 %col.1109, %s_col.0115
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp19
  br i1 %or.cond, label %for.body13.for.inc_crit_edge, label %if.end21

for.body13.for.inc_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end21:                                         ; preds = %for.body13
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb, align 4
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %portid.i, align 4
  %24 = ptrtoint ptr %nlh.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nlh.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nlmsg_seq.i, align 4
  %call.i73 = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %23, i32 noundef %27, ptr noundef nonnull @tcp_metrics_nl_family, i32 noundef 2, i8 noundef zeroext 1) #12
  %tobool.not.i74 = icmp eq ptr %call.i73, null
  br i1 %tobool.not.i74, label %if.end21.if.then24_crit_edge, label %if.end.i

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.end.i:                                         ; preds = %if.end21
  %call3.i = tail call fastcc i32 @tcp_metrics_fill_info(ptr noundef %skb, ptr noundef nonnull %tm.0111) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i75 = icmp slt i32 %call3.i, 0
  %add.ptr1.i12.i = getelementptr i8, ptr %call.i73, i32 -20
  br i1 %cmp.i75, label %if.then.i.i, label %tcp_metrics_dump_info.exit

if.then.i.i:                                      ; preds = %if.end.i
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i12.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then24_crit_edge, label %if.then.i.i.i.i

if.then.i.i.if.then24_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %29, %add.ptr1.i12.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !88

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %30 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i12.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #12
  br label %if.then24

tcp_metrics_dump_info.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i12.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %34 = ptrtoint ptr %add.ptr1.i12.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i12.i, align 4
  br label %for.inc

if.then24:                                        ; preds = %if.end.i.i.i.i, %if.then.i.i.if.then24_crit_edge, %if.end21.if.then24_crit_edge
  %call.i76 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i76, label %if.then24.cleanup_crit_edge, label %land.lhs.true.i79

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i79:                                ; preds = %if.then24
  %call1.i77 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.cleanup_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.cleanup_crit_edge:              ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.cleanup_crit_edge, label %if.then.i82

land.lhs.true2.i81.cleanup_crit_edge:             ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.13) #12
  br label %cleanup

for.inc:                                          ; preds = %tcp_metrics_dump_info.exit, %for.body13.for.inc_crit_edge
  %35 = ptrtoint ptr %tm.0111 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %tm.0111, align 8
  %call31 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %for.inc.do.end41_crit_edge

for.inc.do.end41_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

land.lhs.true33:                                  ; preds = %for.inc
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true33.do.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %.b7071 = load i1, ptr @tcp_metrics_nl_dump.__warned.21, align 1
  br i1 %.b7071, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcp_metrics_nl_dump.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 758, ptr noundef nonnull @.str.3) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true33.do.end41_crit_edge, %for.inc.do.end41_crit_edge
  %inc = add i32 %col.1109, 1
  %tobool12.not = icmp eq ptr %36, null
  br i1 %tobool12.not, label %do.end41.for.end_crit_edge, label %do.end41.for.body13_crit_edge

do.end41.for.body13_crit_edge:                    ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

do.end41.for.end_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end41.for.end_crit_edge, %do.end9.for.end_crit_edge
  %col.1.lcssa = phi i32 [ 0, %do.end9.for.end_crit_edge ], [ %inc, %do.end41.for.end_crit_edge ]
  %call.i85 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i85, label %for.end.for.inc44_crit_edge, label %land.lhs.true.i88

for.end.for.inc44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44

land.lhs.true.i88:                                ; preds = %for.end
  %call1.i86 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool.not.i87, label %land.lhs.true.i88.for.inc44_crit_edge, label %land.lhs.true2.i90

land.lhs.true.i88.for.inc44_crit_edge:            ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44

land.lhs.true2.i90:                               ; preds = %land.lhs.true.i88
  %.b4.i89 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89, label %land.lhs.true2.i90.for.inc44_crit_edge, label %if.then.i91

land.lhs.true2.i90.for.inc44_crit_edge:           ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44

if.then.i91:                                      ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.13) #12
  br label %for.inc44

cleanup:                                          ; preds = %if.then.i82, %land.lhs.true2.i81.cleanup_crit_edge, %land.lhs.true.i79.cleanup_crit_edge, %if.then24.cleanup_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %37 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i83 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i84, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup49

for.inc44:                                        ; preds = %if.then.i91, %land.lhs.true2.i90.for.inc44_crit_edge, %land.lhs.true.i88.for.inc44_crit_edge, %for.end.for.inc44_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %41 = tail call i32 @llvm.read_register.i32(metadata !76) #12
  %and.i.i.i.i.i92 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i92 to ptr
  %preempt_count.i.i.i.i93 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i93, align 4
  %sub.i.i.i94 = add i32 %44, -1
  store volatile i32 %sub.i.i.i94, ptr %preempt_count.i.i.i.i93, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %inc45 = add i32 %row.0116, 1
  %row.0.highbits = lshr i32 %inc45, %5
  %cmp = icmp eq i32 %row.0.highbits, 0
  br i1 %cmp, label %for.inc44.for.body_crit_edge, label %for.inc44.cleanup49_crit_edge

for.inc44.cleanup49_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

for.inc44.for.body_crit_edge:                     ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup49:                                        ; preds = %for.inc44.cleanup49_crit_edge, %cleanup, %entry.cleanup49_crit_edge
  %row.0104 = phi i32 [ %row.0116, %cleanup ], [ %8, %entry.cleanup49_crit_edge ], [ %inc45, %for.inc44.cleanup49_crit_edge ]
  %col.2 = phi i32 [ %col.1109, %cleanup ], [ %10, %entry.cleanup49_crit_edge ], [ %col.1.lcssa, %for.inc44.cleanup49_crit_edge ]
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %row.0104, ptr %6, align 4
  %46 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %col.2, ptr %arrayidx1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_metrics_nl_cmd_del(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i.i84 = alloca %struct.in6_addr, align 4
  %tmp.i.i = alloca %struct.in6_addr, align 4
  %saddr = alloca %struct.inetpeer_addr, align 4
  %daddr = alloca %struct.inetpeer_addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %saddr) #12
  %0 = call ptr @memset(ptr %saddr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %daddr) #12
  %1 = call ptr @memset(ptr %daddr, i32 255, i32 20)
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_net.i, align 4
  %attrs.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %daddr, align 4
  %vif.i.i.i = getelementptr inbounds %struct.ipv4_addr_key, ptr %daddr, i32 0, i32 1
  %11 = ptrtoint ptr %vif.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %vif.i.i.i, align 4
  %family.i.i.i = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr, i32 0, i32 1
  %12 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %family.i.i.i, align 4
  br label %if.end4

if.end5.i.i:                                      ; preds = %entry
  %arrayidx7.i.i = getelementptr ptr, ptr %5, i32 2
  %13 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %14, null
  br i1 %tobool8.not.i.i, label %if.then3, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end5.i.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %16)
  %cmp.not.i.i = icmp eq i16 %16, 20
  br i1 %cmp.not.i.i, label %if.end12.i.i, label %if.then9.i.i.cleanup_crit_edge

if.then9.i.i.cleanup_crit_edge:                   ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #12
  %17 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 16)
  %call.i.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %14, i32 noundef 16) #12
  %18 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %in6.sroa.0.0.copyload.i.i = load i32, ptr %tmp.i.i, align 4
  %in6.sroa.5.0.tmp.sroa_idx.i.i = getelementptr inbounds i8, ptr %tmp.i.i, i32 4
  %19 = ptrtoint ptr %in6.sroa.5.0.tmp.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %in6.sroa.5.0.copyload.i.i = load i32, ptr %in6.sroa.5.0.tmp.sroa_idx.i.i, align 4
  %in6.sroa.6.0.tmp.sroa_idx.i.i = getelementptr inbounds i8, ptr %tmp.i.i, i32 8
  %20 = ptrtoint ptr %in6.sroa.6.0.tmp.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %in6.sroa.6.0.copyload.i.i = load i32, ptr %in6.sroa.6.0.tmp.sroa_idx.i.i, align 4
  %in6.sroa.7.0.tmp.sroa_idx.i.i = getelementptr inbounds i8, ptr %tmp.i.i, i32 12
  %21 = ptrtoint ptr %in6.sroa.7.0.tmp.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %in6.sroa.7.0.copyload.i.i = load i32, ptr %in6.sroa.7.0.tmp.sroa_idx.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #12
  %22 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %in6.sroa.0.0.copyload.i.i, ptr %daddr, align 4
  %in6.sroa.5.0.addr.sroa_idx.i.i = getelementptr inbounds i8, ptr %daddr, i32 4
  %23 = ptrtoint ptr %in6.sroa.5.0.addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %in6.sroa.5.0.copyload.i.i, ptr %in6.sroa.5.0.addr.sroa_idx.i.i, align 4
  %in6.sroa.6.0.addr.sroa_idx.i.i = getelementptr inbounds i8, ptr %daddr, i32 8
  %24 = ptrtoint ptr %in6.sroa.6.0.addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %in6.sroa.6.0.copyload.i.i, ptr %in6.sroa.6.0.addr.sroa_idx.i.i, align 4
  %in6.sroa.7.0.addr.sroa_idx.i.i = getelementptr inbounds i8, ptr %daddr, i32 12
  %25 = ptrtoint ptr %in6.sroa.7.0.addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %in6.sroa.7.0.copyload.i.i, ptr %in6.sroa.7.0.addr.sroa_idx.i.i, align 4
  %family.i33.i.i = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr, i32 0, i32 1
  %26 = ptrtoint ptr %family.i33.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 10, ptr %family.i33.i.i, align 4
  %xor.i.i.i = xor i32 %in6.sroa.5.0.copyload.i.i, %in6.sroa.0.0.copyload.i.i
  %xor5.i.i.i = xor i32 %xor.i.i.i, %in6.sroa.6.0.copyload.i.i
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %in6.sroa.7.0.copyload.i.i
  br label %if.end4

if.then3:                                         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tcp_metrics_flush_all(ptr noundef %3)
  br label %cleanup

if.end4:                                          ; preds = %if.end12.i.i, %if.then.i.i
  %hash.0.ph.ph = phi i32 [ %xor8.i.i.i, %if.end12.i.i ], [ %9, %if.then.i.i ]
  %27 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx.i.i86 = getelementptr ptr, ptr %28, i32 11
  %29 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i86, align 4
  %tobool.not.i.i87 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i87, label %if.end5.i.i93, label %if.then.i.i90

if.then.i.i90:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i88 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.i.i88, align 4
  %33 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %saddr, align 4
  %vif.i.i.i89 = getelementptr inbounds %struct.ipv4_addr_key, ptr %saddr, i32 0, i32 1
  %34 = ptrtoint ptr %vif.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %vif.i.i.i89, align 4
  br label %__parse_nl_addr.exit.sink.split.i

if.end5.i.i93:                                    ; preds = %if.end4
  %arrayidx7.i.i91 = getelementptr ptr, ptr %28, i32 12
  %35 = ptrtoint ptr %arrayidx7.i.i91 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx7.i.i91, align 4
  %tobool8.not.i.i92 = icmp eq ptr %36, null
  br i1 %tobool8.not.i.i92, label %if.end5.i.i93.parse_nl_saddr.exit_crit_edge, label %if.then9.i.i95

if.end5.i.i93.parse_nl_saddr.exit_crit_edge:      ; preds = %if.end5.i.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_nl_saddr.exit

if.then9.i.i95:                                   ; preds = %if.end5.i.i93
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %38)
  %cmp.not.i.i94 = icmp eq i16 %38, 20
  br i1 %cmp.not.i.i94, label %if.end12.i.i107, label %if.then9.i.i95.parse_nl_saddr.exit_crit_edge

if.then9.i.i95.parse_nl_saddr.exit_crit_edge:     ; preds = %if.then9.i.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_nl_saddr.exit

if.end12.i.i107:                                  ; preds = %if.then9.i.i95
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i84) #12
  %39 = call ptr @memset(ptr %tmp.i.i84, i32 255, i32 16)
  %call.i.i.i96 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i84, ptr noundef nonnull %36, i32 noundef 16) #12
  %40 = ptrtoint ptr %tmp.i.i84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %in6.sroa.0.0.copyload.i.i97 = load i32, ptr %tmp.i.i84, align 4
  %in6.sroa.5.0.tmp.sroa_idx.i.i98 = getelementptr inbounds i8, ptr %tmp.i.i84, i32 4
  %41 = ptrtoint ptr %in6.sroa.5.0.tmp.sroa_idx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %in6.sroa.5.0.copyload.i.i99 = load i32, ptr %in6.sroa.5.0.tmp.sroa_idx.i.i98, align 4
  %in6.sroa.6.0.tmp.sroa_idx.i.i100 = getelementptr inbounds i8, ptr %tmp.i.i84, i32 8
  %42 = ptrtoint ptr %in6.sroa.6.0.tmp.sroa_idx.i.i100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %in6.sroa.6.0.copyload.i.i101 = load i32, ptr %in6.sroa.6.0.tmp.sroa_idx.i.i100, align 4
  %in6.sroa.7.0.tmp.sroa_idx.i.i102 = getelementptr inbounds i8, ptr %tmp.i.i84, i32 12
  %43 = ptrtoint ptr %in6.sroa.7.0.tmp.sroa_idx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %43)
  %in6.sroa.7.0.copyload.i.i103 = load i32, ptr %in6.sroa.7.0.tmp.sroa_idx.i.i102, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i84) #12
  %44 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %in6.sroa.0.0.copyload.i.i97, ptr %saddr, align 4
  %in6.sroa.5.0.addr.sroa_idx.i.i104 = getelementptr inbounds i8, ptr %saddr, i32 4
  %45 = ptrtoint ptr %in6.sroa.5.0.addr.sroa_idx.i.i104 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %in6.sroa.5.0.copyload.i.i99, ptr %in6.sroa.5.0.addr.sroa_idx.i.i104, align 4
  %in6.sroa.6.0.addr.sroa_idx.i.i105 = getelementptr inbounds i8, ptr %saddr, i32 8
  %46 = ptrtoint ptr %in6.sroa.6.0.addr.sroa_idx.i.i105 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %in6.sroa.6.0.copyload.i.i101, ptr %in6.sroa.6.0.addr.sroa_idx.i.i105, align 4
  %in6.sroa.7.0.addr.sroa_idx.i.i106 = getelementptr inbounds i8, ptr %saddr, i32 12
  %47 = ptrtoint ptr %in6.sroa.7.0.addr.sroa_idx.i.i106 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %in6.sroa.7.0.copyload.i.i103, ptr %in6.sroa.7.0.addr.sroa_idx.i.i106, align 4
  br label %__parse_nl_addr.exit.sink.split.i

__parse_nl_addr.exit.sink.split.i:                ; preds = %if.end12.i.i107, %if.then.i.i90
  %.sink.i = phi i16 [ 2, %if.then.i.i90 ], [ 10, %if.end12.i.i107 ]
  %family.i.i.i108 = getelementptr inbounds %struct.inetpeer_addr, ptr %saddr, i32 0, i32 1
  %48 = ptrtoint ptr %family.i.i.i108 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %.sink.i, ptr %family.i.i.i108, align 4
  br label %parse_nl_saddr.exit

parse_nl_saddr.exit:                              ; preds = %__parse_nl_addr.exit.sink.split.i, %if.then9.i.i95.parse_nl_saddr.exit_crit_edge, %if.end5.i.i93.parse_nl_saddr.exit_crit_edge
  %cmp6 = phi i1 [ true, %if.end5.i.i93.parse_nl_saddr.exit_crit_edge ], [ true, %if.then9.i.i95.parse_nl_saddr.exit_crit_edge ], [ false, %__parse_nl_addr.exit.sink.split.i ]
  %hash_mix.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 26
  %49 = ptrtoint ptr %hash_mix.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hash_mix.i, align 8
  %xor = xor i32 %50, %hash.0.ph.ph
  %51 = load i32, ptr @tcp_metrics_hash_log, align 4
  %mul.i.i = mul i32 %xor, 1640531527
  %sub.i = sub i32 32, %51
  %shr.i = lshr i32 %mul.i.i, %sub.i
  %52 = load ptr, ptr @tcp_metrics_hash, align 4
  %add.ptr = getelementptr %struct.tcpm_hash_bucket, ptr %52, i32 %shr.i
  call void @_raw_spin_lock_bh(ptr noundef nonnull @tcp_metrics_lock) #12
  %call.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @tcp_metrics_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %parse_nl_saddr.exit.do.end_crit_edge

parse_nl_saddr.exit.do.end_crit_edge:             ; preds = %parse_nl_saddr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %parse_nl_saddr.exit
  %call12 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true14

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b83 = load i1, ptr @tcp_metrics_nl_cmd_del.__warned, align 1
  br i1 %.b83, label %land.lhs.true14.do.end_crit_edge, label %if.then16

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcp_metrics_nl_cmd_del.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 929, ptr noundef nonnull @.str.8) #12
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true14.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %parse_nl_saddr.exit.do.end_crit_edge
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %tm.0134 = load ptr, ptr %add.ptr, align 4
  %tobool18.not135 = icmp eq ptr %tm.0134, null
  br i1 %tobool18.not135, label %for.end.thread, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.end.thread:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @tcp_metrics_lock) #12
  br label %cleanup

for.body:                                         ; preds = %do.end50.for.body_crit_edge, %do.end.for.body_crit_edge
  %tm.0139 = phi ptr [ %tm.0, %do.end50.for.body_crit_edge ], [ %tm.0134, %do.end.for.body_crit_edge ]
  %found.0.off0137 = phi i1 [ %found.1.off0, %do.end50.for.body_crit_edge ], [ false, %do.end.for.body_crit_edge ]
  %pp.0136 = phi ptr [ %pp.1, %do.end50.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %tcpm_daddr = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0139, i32 0, i32 3
  %family.i.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0139, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %55)
  %cmp.i.i = icmp eq i16 %55, 2
  %..i.i = select i1 %cmp.i.i, i32 2, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body
  %i.027.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i110 = getelementptr [4 x i32], ptr %tcpm_daddr, i32 0, i32 %i.027.i.i
  %56 = ptrtoint ptr %arrayidx.i.i110 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i110, align 4
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 %i.027.i.i
  %58 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp5.i.i = icmp eq i32 %57, %59
  %cmp5.i.not.i = xor i1 %cmp5.i.i, true
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %..i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %..i.i
  %or.cond.i = select i1 %cmp5.i.not.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %addr_same.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

addr_same.exit:                                   ; preds = %for.body.i.i
  br i1 %cmp5.i.i, label %land.lhs.true20, label %addr_same.exit.do.body39_crit_edge

addr_same.exit.do.body39_crit_edge:               ; preds = %addr_same.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

land.lhs.true20:                                  ; preds = %addr_same.exit
  br i1 %cmp6, label %land.lhs.true20.land.lhs.true23_crit_edge, label %lor.lhs.false

land.lhs.true20.land.lhs.true23_crit_edge:        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true23

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %tcpm_saddr = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0139, i32 0, i32 2
  %family.i.i111 = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0139, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %family.i.i111 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %family.i.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %61)
  %cmp.i.i112 = icmp eq i16 %61, 2
  %..i.i113 = select i1 %cmp.i.i112, i32 2, i32 4
  br label %for.body.i.i122

for.body.i.i122:                                  ; preds = %for.body.i.i122.for.body.i.i122_crit_edge, %lor.lhs.false
  %i.027.i.i114 = phi i32 [ 0, %lor.lhs.false ], [ %inc.i.i119, %for.body.i.i122.for.body.i.i122_crit_edge ]
  %arrayidx.i.i115 = getelementptr [4 x i32], ptr %tcpm_saddr, i32 0, i32 %i.027.i.i114
  %62 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i115, align 4
  %arrayidx4.i.i116 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 %i.027.i.i114
  %64 = ptrtoint ptr %arrayidx4.i.i116 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx4.i.i116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp5.i.i117 = icmp eq i32 %63, %65
  %cmp5.i.not.i118 = xor i1 %cmp5.i.i117, true
  %inc.i.i119 = add nuw nsw i32 %i.027.i.i114, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i119, i32 %..i.i113)
  %exitcond.not.i.i120 = icmp eq i32 %inc.i.i119, %..i.i113
  %or.cond.i121 = select i1 %cmp5.i.not.i118, i1 true, i1 %exitcond.not.i.i120
  br i1 %or.cond.i121, label %addr_same.exit123, label %for.body.i.i122.for.body.i.i122_crit_edge

for.body.i.i122.for.body.i.i122_crit_edge:        ; preds = %for.body.i.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i122

addr_same.exit123:                                ; preds = %for.body.i.i122
  br i1 %cmp5.i.i117, label %addr_same.exit123.land.lhs.true23_crit_edge, label %addr_same.exit123.do.body39_crit_edge

addr_same.exit123.do.body39_crit_edge:            ; preds = %addr_same.exit123
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

addr_same.exit123.land.lhs.true23_crit_edge:      ; preds = %addr_same.exit123
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true23

land.lhs.true23:                                  ; preds = %addr_same.exit123.land.lhs.true23_crit_edge, %land.lhs.true20.land.lhs.true23_crit_edge
  %tcpm_net.i = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0139, i32 0, i32 1
  %66 = ptrtoint ptr %tcpm_net.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tcpm_net.i, align 4
  %cmp.i.not = icmp eq ptr %67, %3
  br i1 %cmp.i.not, label %if.then27, label %land.lhs.true23.do.body39_crit_edge

land.lhs.true23.do.body39_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %tm.0139 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tm.0139, align 8
  %70 = ptrtoint ptr %pp.0136 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %pp.0136, align 4
  %callback_head = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm.0139, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 112 to ptr)) #12
  br label %do.body39

do.body39:                                        ; preds = %if.then27, %land.lhs.true23.do.body39_crit_edge, %addr_same.exit123.do.body39_crit_edge, %addr_same.exit.do.body39_crit_edge
  %pp.1 = phi ptr [ %pp.0136, %if.then27 ], [ %tm.0139, %land.lhs.true23.do.body39_crit_edge ], [ %tm.0139, %addr_same.exit123.do.body39_crit_edge ], [ %tm.0139, %addr_same.exit.do.body39_crit_edge ]
  %found.1.off0 = phi i1 [ true, %if.then27 ], [ %found.0.off0137, %land.lhs.true23.do.body39_crit_edge ], [ %found.0.off0137, %addr_same.exit123.do.body39_crit_edge ], [ %found.0.off0137, %addr_same.exit.do.body39_crit_edge ]
  %call.i124 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @tcp_metrics_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool41.not = icmp eq i32 %call.i124, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %do.body39.do.end50_crit_edge

do.body39.do.end50_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

land.lhs.true42:                                  ; preds = %do.body39
  %call43 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.do.end50_crit_edge, label %land.lhs.true45

land.lhs.true42.do.end50_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

land.lhs.true45:                                  ; preds = %land.lhs.true42
  %.b8082 = load i1, ptr @tcp_metrics_nl_cmd_del.__warned.22, align 1
  br i1 %.b8082, label %land.lhs.true45.do.end50_crit_edge, label %if.then47

land.lhs.true45.do.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcp_metrics_nl_cmd_del.__warned.22, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 929, ptr noundef nonnull @.str.8) #12
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %land.lhs.true45.do.end50_crit_edge, %land.lhs.true42.do.end50_crit_edge, %do.body39.do.end50_crit_edge
  %71 = ptrtoint ptr %pp.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %tm.0 = load ptr, ptr %pp.1, align 4
  %tobool18.not = icmp eq ptr %tm.0, null
  br i1 %tobool18.not, label %for.end, label %do.end50.for.body_crit_edge

do.end50.for.body_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @tcp_metrics_lock) #12
  %spec.select = select i1 %found.1.off0, i32 0, i32 -3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.end.thread, %if.then3, %if.then9.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -22, %if.then9.i.i.cleanup_crit_edge ], [ -3, %for.end.thread ], [ %spec.select, %for.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %daddr) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %saddr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcp_metrics_fill_info(ptr noundef %msg, ptr noundef %tm) unnamed_addr #0 align 64 {
entry:
  %tmp.i198 = alloca i16, align 2
  %tmp.i196 = alloca i16, align 2
  %tmp.i192 = alloca i32, align 4
  %tmp.i190 = alloca i32, align 4
  %tmp.i188 = alloca i32, align 4
  %tmp.i = alloca i64, align 8
  %tmp.i.i183 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tfom_copy = alloca [1 x %struct.tcp_fastopen_metrics], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tcpm_daddr = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 3
  %family = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %family, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %1, label %entry.cleanup128_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb10
  ]

entry.cleanup128_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %tcpm_daddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tcpm_daddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %sw.bb.cleanup128_crit_edge, label %if.end

sw.bb.cleanup128_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end:                                           ; preds = %sw.bb
  %tcpm_saddr = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 2
  %6 = ptrtoint ptr %tcpm_saddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tcpm_saddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i183) #12
  %8 = ptrtoint ptr %tmp.i.i183 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i.i183, align 4
  %call.i.i184 = call i32 @nla_put(ptr noundef %msg, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i.i183) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i183) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %cmp6 = icmp slt i32 %call.i.i184, 0
  br i1 %cmp6, label %if.end.cleanup128_crit_edge, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.cleanup128_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

sw.bb10:                                          ; preds = %entry
  %call.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 16, ptr noundef %tcpm_daddr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  br i1 %cmp14, label %sw.bb10.cleanup128_crit_edge, label %if.end17

sw.bb10.cleanup128_crit_edge:                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end17:                                         ; preds = %sw.bb10
  %tcpm_saddr18 = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 2
  %call.i185 = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 12, i32 noundef 16, ptr noundef %tcpm_saddr18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp21 = icmp slt i32 %call.i185, 0
  br i1 %cmp21, label %if.end17.cleanup128_crit_edge, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end17.cleanup128_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

sw.epilog:                                        ; preds = %if.end17.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %tcpm_stamp = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 4
  %10 = ptrtoint ptr %tcpm_stamp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tcpm_stamp, align 8
  %sub = sub i32 %9, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #12
  %call.i186 = call i32 @jiffies_to_msecs(i32 noundef %sub) #12
  %conv.i = zext i32 %call.i186 to i64
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv.i, ptr %tmp.i, align 8
  %call1.i = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp26 = icmp slt i32 %call1.i, 0
  br i1 %cmp26, label %sw.epilog.cleanup128_crit_edge, label %if.end29

sw.epilog.cleanup128_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end29:                                         ; preds = %sw.epilog
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %call1.i187 = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i187)
  %cmp.i = icmp slt i32 %call1.i187, 0
  %tobool.not215 = icmp eq ptr %14, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not215
  br i1 %tobool.not, label %if.end29.cleanup128_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.cleanup128_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %n.0214 = phi i32 [ %n.3, %for.inc.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %i.0212 = phi i32 [ %inc73.pre-phi, %for.inc.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tcp_metrics_block, ptr %tm, i32 0, i32 6, i32 %i.0212
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool35.not = icmp eq i32 %16, 0
  br i1 %tobool35.not, label %for.body.for.inc_crit_edge, label %if.end37

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = add nuw nsw i32 %i.0212, 1
  br label %for.inc

if.end37:                                         ; preds = %for.body
  %17 = zext i32 %i.0212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %i.0212, label %if.end37.if.end66_crit_edge [
    i32 0, label %if.then40
    i32 1, label %if.then51
  ]

if.end37.if.end66_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then40:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i188) #12
  %18 = ptrtoint ptr %tmp.i188 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %tmp.i188, align 4
  %call.i189 = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i188) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i188) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %cmp42 = icmp slt i32 %call.i189, 0
  br i1 %cmp42, label %if.then40.cleanup128_crit_edge, label %if.end48.thread

if.then40.cleanup128_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end48.thread:                                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %n.0214, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %16)
  %cmp46 = icmp ugt i32 %16, 1999
  %div = udiv i32 %16, 1000
  %cond = select i1 %cmp46, i32 %div, i32 1
  br label %if.end66

if.then51:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i190) #12
  %19 = ptrtoint ptr %tmp.i190 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %tmp.i190, align 4
  %call.i191 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i190) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i190) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %cmp53 = icmp slt i32 %call.i191, 0
  br i1 %cmp53, label %if.then51.cleanup128_crit_edge, label %if.end56

if.then51.cleanup128_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end56:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %inc57 = add i32 %n.0214, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %16)
  %cmp60 = icmp ugt i32 %16, 1999
  %div58 = udiv i32 %16, 1000
  %cond65 = select i1 %cmp60, i32 %div58, i32 1
  br label %if.end66

if.end66:                                         ; preds = %if.end56, %if.end48.thread, %if.end37.if.end66_crit_edge
  %n.2 = phi i32 [ %inc57, %if.end56 ], [ %inc, %if.end48.thread ], [ %n.0214, %if.end37.if.end66_crit_edge ]
  %val.1 = phi i32 [ %cond65, %if.end56 ], [ %cond, %if.end48.thread ], [ %16, %if.end37.if.end66_crit_edge ]
  %add = add nuw nsw i32 %i.0212, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i192) #12
  %20 = ptrtoint ptr %tmp.i192 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %val.1, ptr %tmp.i192, align 4
  %call.i193 = call i32 @nla_put(ptr noundef %msg, i32 noundef %add, i32 noundef 4, ptr noundef nonnull %tmp.i192) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i192) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %cmp68 = icmp slt i32 %call.i193, 0
  %inc72 = add i32 %n.2, 1
  br i1 %cmp68, label %if.end66.cleanup128_crit_edge, label %if.end66.for.inc_crit_edge

if.end66.for.inc_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end66.cleanup128_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

for.inc:                                          ; preds = %if.end66.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc73.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %if.end66.for.inc_crit_edge ]
  %n.3 = phi i32 [ %n.0214, %for.body.for.inc_crit_edge ], [ %inc72, %if.end66.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %inc73.pre-phi, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.3)
  %tobool74.not = icmp eq i32 %n.3, 0
  br i1 %tobool74.not, label %if.then.i.i, label %if.then75

if.then75:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i195 = trunc i32 %sub.ptr.sub.i to i16
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i195, ptr %14, align 2
  br label %cleanup.cont80

if.then.i.i:                                      ; preds = %for.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %25, %14
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !88

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i) #12
  br label %cleanup.cont80

cleanup.cont80:                                   ; preds = %nla_nest_cancel.exit, %if.then75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tfom_copy) #12
  %tcpm_fastopen = getelementptr inbounds %struct.tcp_metrics_block, ptr %tm, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %cleanup.cont80
  %call81 = call fastcc i32 @read_seqbegin()
  %28 = call ptr @memcpy(ptr %tfom_copy, ptr %tcpm_fastopen, i32 32)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  %29 = load volatile i32, ptr @fastopen_seqlock, align 4
  %cmp.i.i.i.not = icmp eq i32 %29, %call81
  br i1 %cmp.i.i.i.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  %30 = ptrtoint ptr %tfom_copy to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tfom_copy, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool86.not = icmp eq i16 %31, 0
  br i1 %tobool86.not, label %do.end.if.end92_crit_edge, label %land.lhs.true

do.end.if.end92_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

land.lhs.true:                                    ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i196) #12
  %32 = ptrtoint ptr %tmp.i196 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %tmp.i196, align 2
  %call.i197 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef 2, ptr noundef nonnull %tmp.i196) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i196) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %cmp89 = icmp slt i32 %call.i197, 0
  br i1 %cmp89, label %land.lhs.true.cleanup123.thread_crit_edge, label %land.lhs.true.if.end92_crit_edge

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

land.lhs.true.cleanup123.thread_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup123.thread

if.end92:                                         ; preds = %land.lhs.true.if.end92_crit_edge, %do.end.if.end92_crit_edge
  %syn_loss = getelementptr inbounds %struct.tcp_fastopen_metrics, ptr %tfom_copy, i32 0, i32 1
  %33 = ptrtoint ptr %syn_loss to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load = load i16, ptr %syn_loss, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %bf.load)
  %tobool94.not = icmp ult i16 %bf.load, 64
  br i1 %tobool94.not, label %if.end92.if.end107_crit_edge, label %land.lhs.true95

if.end92.if.end107_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

land.lhs.true95:                                  ; preds = %if.end92
  %bf.lshr = lshr i16 %bf.load, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i198) #12
  %34 = ptrtoint ptr %tmp.i198 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %bf.lshr, ptr %tmp.i198, align 2
  %call.i199 = call i32 @nla_put(ptr noundef %msg, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %tmp.i198) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i198) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %cmp100 = icmp slt i32 %call.i199, 0
  br i1 %cmp100, label %land.lhs.true95.cleanup123.thread_crit_edge, label %lor.lhs.false

land.lhs.true95.cleanup123.thread_crit_edge:      ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup123.thread

lor.lhs.false:                                    ; preds = %land.lhs.true95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %last_syn_loss = getelementptr inbounds %struct.tcp_fastopen_metrics, ptr %tfom_copy, i32 0, i32 2
  %36 = ptrtoint ptr %last_syn_loss to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %last_syn_loss, align 4
  %sub102 = sub i32 %35, %37
  %call103 = call fastcc i32 @nla_put_msecs(ptr noundef %msg, i32 noundef 9, i32 noundef %sub102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %lor.lhs.false.cleanup123.thread_crit_edge, label %lor.lhs.false.if.end107_crit_edge

lor.lhs.false.if.end107_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

lor.lhs.false.cleanup123.thread_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup123.thread

if.end107:                                        ; preds = %lor.lhs.false.if.end107_crit_edge, %if.end92.if.end107_crit_edge
  %len = getelementptr inbounds %struct.tcp_fastopen_metrics, ptr %tfom_copy, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp109 = icmp sgt i8 %39, 0
  br i1 %cmp109, label %land.lhs.true111, label %if.end107._crit_edge

if.end107._crit_edge:                             ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %40

land.lhs.true111:                                 ; preds = %if.end107
  %conv108210 = zext i8 %39 to i32
  %cookie = getelementptr inbounds %struct.tcp_fastopen_metrics, ptr %tfom_copy, i32 0, i32 3
  %call118 = call i32 @nla_put(ptr noundef %msg, i32 noundef 10, i32 noundef %conv108210, ptr noundef %cookie) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %land.lhs.true111.cleanup123.thread_crit_edge, label %land.lhs.true111._crit_edge

land.lhs.true111._crit_edge:                      ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #14
  br label %40

land.lhs.true111.cleanup123.thread_crit_edge:     ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup123.thread

cleanup123.thread:                                ; preds = %land.lhs.true111.cleanup123.thread_crit_edge, %lor.lhs.false.cleanup123.thread_crit_edge, %land.lhs.true95.cleanup123.thread_crit_edge, %land.lhs.true.cleanup123.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tfom_copy) #12
  br label %cleanup128

40:                                               ; preds = %land.lhs.true111._crit_edge, %if.end107._crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tfom_copy) #12
  br label %cleanup128

cleanup128:                                       ; preds = %40, %cleanup123.thread, %if.end66.cleanup128_crit_edge, %if.then51.cleanup128_crit_edge, %if.then40.cleanup128_crit_edge, %if.end29.cleanup128_crit_edge, %sw.epilog.cleanup128_crit_edge, %if.end17.cleanup128_crit_edge, %sw.bb10.cleanup128_crit_edge, %if.end.cleanup128_crit_edge, %sw.bb.cleanup128_crit_edge, %entry.cleanup128_crit_edge
  %retval.0 = phi i32 [ -97, %entry.cleanup128_crit_edge ], [ -90, %sw.epilog.cleanup128_crit_edge ], [ -90, %if.end17.cleanup128_crit_edge ], [ -90, %sw.bb10.cleanup128_crit_edge ], [ -90, %if.end.cleanup128_crit_edge ], [ -90, %sw.bb.cleanup128_crit_edge ], [ -90, %if.end29.cleanup128_crit_edge ], [ 0, %40 ], [ -90, %cleanup123.thread ], [ -90, %if.then40.cleanup128_crit_edge ], [ -90, %if.then51.cleanup128_crit_edge ], [ -90, %if.end66.cleanup128_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_msecs(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %njiffies) unnamed_addr #3 align 64 {
entry:
  %tmp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #12
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %njiffies) #12
  %conv = zext i32 %call to i64
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %tmp, align 8
  %call1 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef %attrtype, i32 noundef 8, ptr noundef nonnull %tmp, i32 noundef 13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !21, !23, !25, !26, !28, !30, !32, !33, !35, !36, !38, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__setup_set_tcpmhash_entries, !1, !"__setup_set_tcpmhash_entries", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_metrics.c", i32 987, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_metrics.c", i32 1031, i32 9}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_metrics.c", i32 1035, i32 9}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/net/sock.h", i32 2067, i32 9}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tcp_metrics_hash_log, !15, !"tcp_metrics_hash_log", i1 false, i1 false}
!15 = !{!"../net/ipv4/tcp_metrics.c", i32 89, i32 22}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/ipv4/tcp_metrics.c", i32 218, i32 12}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/ipv4/tcp_metrics.c", i32 219, i32 12}
!21 = !{ptr @tcp_metrics_hash, !22, !"tcp_metrics_hash", i1 false, i1 false}
!22 = !{!"../net/ipv4/tcp_metrics.c", i32 88, i32 33}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/ipv4/tcp_metrics.c", i32 174, i32 12}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/ipv4/tcp_metrics.c", i32 175, i32 13}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/ipv4/tcp_metrics.c", i32 176, i32 13}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ipv4/tcp_metrics.c", i32 91, i32 8}
!32 = !{ptr @tcp_metrics_lock, !31, !"tcp_metrics_lock", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/net/dst.h", i32 161, i32 2}
!35 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../net/ipv4/tcp_metrics.c", i32 260, i32 12}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/ipv4/tcp_metrics.c", i32 261, i32 12}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/ipv4/tcp_metrics.c", i32 541, i32 8}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fastopen_seqlock, !44, !"fastopen_seqlock", i1 false, i1 false}
!47 = !{ptr @__setup_str_set_tcpmhash_entries, !1, !"__setup_str_set_tcpmhash_entries", i1 false, i1 false}
!48 = !{ptr @tcpmhash_entries, !49, !"tcpmhash_entries", i1 false, i1 false}
!49 = !{!"../net/ipv4/tcp_metrics.c", i32 973, i32 21}
!50 = !{ptr @tcp_net_metrics_ops, !51, !"tcp_net_metrics_ops", i1 false, i1 false}
!51 = !{!"../net/ipv4/tcp_metrics.c", i32 1020, i32 48}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/ipv4/tcp_metrics.c", i32 888, i32 13}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/ipv4/tcp_metrics.c", i32 888, i32 41}
!56 = !{ptr @tcp_metrics_nl_family, !57, !"tcp_metrics_nl_family", i1 false, i1 false}
!57 = !{!"../net/ipv4/tcp_metrics.c", i32 961, i32 27}
!58 = !{ptr @tcp_metrics_nl_policy, !59, !"tcp_metrics_nl_policy", i1 false, i1 false}
!59 = !{!"../net/ipv4/tcp_metrics.c", i32 600, i32 32}
!60 = !{ptr @tcp_metrics_nl_ops, !61, !"tcp_metrics_nl_ops", i1 false, i1 false}
!61 = !{!"../net/ipv4/tcp_metrics.c", i32 946, i32 36}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/ipv4/tcp_metrics.c", i32 851, i32 12}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/ipv4/tcp_metrics.c", i32 852, i32 12}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/net/netlink.h", i32 991, i32 3}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../net/ipv4/tcp_metrics.c", i32 757, i32 22}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/ipv4/tcp_metrics.c", i32 758, i32 13}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../net/ipv4/tcp_metrics.c", i32 929, i32 12}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../net/ipv4/tcp_metrics.c", i32 929, i32 40}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2149160085}
!87 = !{i64 2149160351}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2158639979}
!90 = !{i64 2149997380}
!91 = !{i64 634757, i64 634818}
!92 = !{i64 637489}
!93 = !{i64 637774}
!94 = !{i64 2150012133}
!95 = !{i64 2150011975}
!96 = !{i64 2150012303}
!97 = !{i64 2149997705}
!98 = !{i8 0, i8 2}
!99 = !{i64 2149998030}
!100 = !{i32 0, i32 33}
