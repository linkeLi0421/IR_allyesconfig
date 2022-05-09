; ModuleID = '/llk/IR_all_yes/net/sctp/protocol.c_pt.bc'
source_filename = "../net/sctp/protocol.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.in6_addr = type { %union.anon.106 }
%union.anon.106 = type { [4 x i32] }
%struct.sctp_globals = type { %struct.list_head, ptr, ptr, %struct.rhltable, i32, i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.137, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.137 = type { ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }
%struct.sctp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.151, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.151 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.92, i32, %struct.spinlock }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sctp_sockaddr_entry = type { %struct.list_head, %struct.callback_head, %union.sctp_addr, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.udp_tunnel_sock_cfg = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.udp_port_cfg = type { i8, %union.anon.160, %union.anon.161, i16, i16, i32, i8 }
%union.anon.160 = type { %struct.in6_addr }
%union.anon.161 = type { %struct.in6_addr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.142, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.143, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.144, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.138, [0 x i32], %union.anon.139, i16, i16, %union.anon.140, %struct.refcount_struct, [0 x i32], %union.anon.141 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { %struct.hlist_node }
%union.anon.140 = type { i32 }
%union.anon.141 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.142 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.143 = type { ptr }
%union.anon.144 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.sk_buff = type { %union.anon.85, %union.anon.120, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, ptr, %union.anon.87 }
%union.anon.87 = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.sctp_hashbucket = type { %struct.rwlock_t, %struct.hlist_head }
%struct.sctp_bind_hashbucket = type { %struct.spinlock, %struct.hlist_head }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.88, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.119, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.88 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.119 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.181, %struct.anon.182, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.flowi = type { %union.anon.149 }
%union.anon.149 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.181 = type { i32, i8, i8, i8 }
%struct.anon.182 = type { i16, i16, i16, i8, i8 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.__kernel_sockaddr_storage = type { %union.anon.179 }
%union.anon.179 = type { ptr, [124 x i8] }
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.115, i32, %struct.list_head, ptr }
%union.anon.115 = type { %struct.in6_addr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.anon.107 = type { i16, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.166, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.166 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.sctp_stream = type { %struct.anon.167, %struct.anon.172, i16, i16, ptr, %union.anon.174, ptr }
%struct.anon.167 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.168, i32, ptr, i8 }
%union.anon.168 = type { i32 }
%struct.anon.172 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.173, i32, i32, i32, i8, i8 }
%union.anon.173 = type { i32 }
%union.anon.174 = type { %struct.anon.176 }
%struct.anon.176 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.anon.15 = type { i32, i32 }
%struct.sctp_paramhdr = type { i16, i16 }
%struct.sctp_ipv4addr_param = type { %struct.sctp_paramhdr, %struct.in_addr }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.183, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.183 = type { %struct.anon.184 }
%struct.anon.184 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_assocs_id_lock\00", [44 x i8] zeroinitializer }, align 32
@sctp_assocs_id_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sctp_copy_local_addr_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sctp/protocol.c\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@sctp_addr_wq_mgmt.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.5, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sctp_addr_wq_mgmt\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: offsets existing entry for %d, addr:%pISc in wq:%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"sctp: %s: offsets existing entry for %d, addr:%pISc in wq:%p\0A\00", [34 x i8] zeroinitializer }, align 32
@sctp_addr_wq_mgmt.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.7, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: add new entry for cmd:%d, addr:%pISc in wq:%p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sctp: %s: add new entry for cmd:%d, addr:%pISc in wq:%p\0A\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sctp_udp_sock_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.1, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013sctp: Failed to create the SCTP UDP tunneling v4 sock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_udp_sock_start\00", [44 x i8] zeroinitializer }, align 32
@sctp_udp_sock_start._entry_ptr = internal global ptr @sctp_udp_sock_start._entry, section ".printk_index", align 4
@in6addr_any = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@sctp_udp_sock_start._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.1, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013sctp: Failed to create the SCTP UDP tunneling v6 sock\0A\00", [39 x i8] zeroinitializer }, align 32
@sctp_udp_sock_start._entry_ptr.13 = internal global ptr @sctp_udp_sock_start._entry.11, section ".printk_index", align 4
@sctp_af_v4_specific = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sctp_af_v6_specific = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sctp_globals = dso_local global %struct.sctp_globals zeroinitializer, section ".data..read_mostly", align 4
@sctp_pf_inet_specific = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sctp_pf_inet6_specific = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sctp_ctrlsock_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @sctp_ctrlsock_init, ptr null, ptr @sctp_ctrlsock_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sctp_defaults_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @sctp_defaults_init, ptr null, ptr @sctp_defaults_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sctp_sockets_allocated = external dso_local global %struct.percpu_counter, align 8
@sctp_chunk_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@sctp_bucket_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_sctp__613_1716_sctp_init6 = internal global ptr @sctp_init, section ".initcall6.init", align 4
@__exitcall_sctp_exit = internal global ptr @sctp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias614 = internal constant [30 x i8] c"sctp.alias=net-pf-2-proto-132\00", section ".modinfo", align 1
@__UNIQUE_ID_alias615 = internal constant [31 x i8] c"sctp.alias=net-pf-10-proto-132\00", section ".modinfo", align 1
@__UNIQUE_ID_author616 = internal constant [70 x i8] c"sctp.author=Linux Kernel SCTP developers <linux-sctp@vger.kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description617 = internal constant [57 x i8] c"sctp.description=Support for the SCTP protocol (RFC2960)\00", section ".modinfo", align 1
@__param_str_no_checksums = internal constant [18 x i8] c"sctp.no_checksums\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_no_checksums = internal constant %struct.kernel_param { ptr @__param_str_no_checksums, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @sctp_globals, i64 256) } }, section "__param", align 4
@__UNIQUE_ID_no_checksumstype618 = internal constant [32 x i8] c"sctp.parmtype=no_checksums:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_no_checksums619 = internal constant [68 x i8] c"sctp.parm=no_checksums:Disable checksums computing and verification\00", section ".modinfo", align 1
@__UNIQUE_ID_file620 = internal constant [24 x i8] c"sctp.file=net/sctp/sctp\00", section ".modinfo", align 1
@__UNIQUE_ID_license621 = internal constant [17 x i8] c"sctp.license=GPL\00", section ".modinfo", align 1
@sctp_assocs_id = dso_local global { %struct.idr, [36 x i8] } zeroinitializer, align 32
@sysctl_sctp_mem = dso_local global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@sysctl_sctp_rmem = dso_local global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@sysctl_sctp_wmem = dso_local global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@sctp_protocol = internal constant { %struct.net_protocol, [44 x i8] } { %struct.net_protocol { ptr null, ptr null, ptr @sctp4_rcv, ptr @sctp_v4_err, i8 -64 }, [44 x i8] zeroinitializer }, align 32
@sctp_inetaddr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @sctp_inetaddr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sctp_ctrlsock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.1, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013sctp: Failed to initialize the SCTP control sock\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_ctrlsock_init\00", [45 x i8] zeroinitializer }, align 32
@sctp_ctrlsock_init._entry_ptr = internal global ptr @sctp_ctrlsock_init._entry, section ".printk_index", align 4
@sctp_ctl_sock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.1, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013sctp: Failed to create the SCTP control socket\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_ctl_sock_init\00", [45 x i8] zeroinitializer }, align 32
@sctp_ctl_sock_init._entry_ptr = internal global ptr @sctp_ctl_sock_init._entry, section ".printk_index", align 4
@sctp_stream_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 1, i16 132, ptr @sctp_prot, ptr @inet_seqpacket_ops, i8 2 }, [40 x i8] zeroinitializer }, align 32
@sctp_seqpacket_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 5, i16 132, ptr @sctp_prot, ptr @inet_seqpacket_ops, i8 2 }, [40 x i8] zeroinitializer }, align 32
@sctp_prot = external dso_local global %struct.proto, align 4
@inet_seqpacket_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 2, ptr null, ptr @inet_release, ptr @inet_bind, ptr @sctp_inet_connect, ptr @sock_no_socketpair, ptr @inet_accept, ptr @inet_getname, ptr @sctp_poll, ptr @inet_ioctl, ptr @sock_gettstamp, ptr @sctp_inet_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet_sendmsg, ptr @inet_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@sctp_defaults_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&net->sctp.local_addr_lock\00", [37 x i8] zeroinitializer }, align 32
@sctp_defaults_init.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&net->sctp.addr_wq_lock\00", [40 x i8] zeroinitializer }, align 32
@sctp_defaults_init.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&net->sctp.addr_wq_timer)\00", [37 x i8] zeroinitializer }, align 32
@sctp_get_local_addr_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug595 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.1, ptr @.str.28, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sctp_addr_wq_timeout_handler\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: the first ent in wq:%p is addr:%pISc for cmd:%d at entry:%p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"sctp: %s: the first ent in wq:%p is addr:%pISc for cmd:%d at entry:%p\0A\00", [57 x i8] zeroinitializer }, align 32
@sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.1, ptr @.str.30, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: this is on DAD, trying %d sec later\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sctp: %s: this is on DAD, trying %d sec later\0A\00", [49 x i8] zeroinitializer }, align 32
@sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.1, ptr @.str.32, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: sctp_asconf_mgmt failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sctp: %s: sctp_asconf_mgmt failed\0A\00", [61 x i8] zeroinitializer }, align 32
@sctp_af_inet = internal global { %struct.sctp_af, [52 x i8] } { %struct.sctp_af { ptr @sctp_v4_xmit, ptr @ip_setsockopt, ptr @ip_getsockopt, ptr @sctp_v4_get_dst, ptr @sctp_v4_get_saddr, ptr @sctp_v4_copy_addrlist, ptr @sctp_v4_cmp_addr, ptr null, ptr @sctp_v4_from_skb, ptr @sctp_v4_from_sk, ptr @sctp_v4_from_addr_param, ptr @sctp_v4_to_addr_param, ptr @sctp_v4_addr_valid, ptr @sctp_v4_scope, ptr @sctp_v4_inaddr_any, ptr @sctp_v4_is_any, ptr @sctp_v4_available, ptr @sctp_v4_skb_iif, ptr @sctp_v4_is_ce, ptr @sctp_v4_seq_dump_addr, ptr @sctp_v4_ecn_capable, i16 20, i32 16, ptr @sctp_v4_ip_options_len, i16 2, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@sctp_v4_xmit.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.34, ptr @.str.1, ptr @.str.35, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sctp_v4_xmit\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: skb:%p, len:%d, src:%pI4, dst:%pI4\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sctp: %s: skb:%p, len:%d, src:%pI4, dst:%pI4\0A\00", [50 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@sctp_v4_get_dst.__UNIQUE_ID_ddebug588 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.38, ptr @.str.1, ptr @.str.39, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sctp_v4_get_dst\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: dst:%pI4, src:%pI4 - \00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sctp: %s: dst:%pI4, src:%pI4 - \00", [32 x i8] zeroinitializer }, align 32
@sctp_v4_get_dst.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_v4_get_dst.__warned.41 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_v4_get_dst.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.38, ptr @.str.1, ptr @.str.42, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt_dst:%pI4, rt_src:%pI4\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sctp: rt_dst:%pI4, rt_src:%pI4\0A\00", [32 x i8] zeroinitializer }, align 32
@sctp_v4_get_dst.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.38, ptr @.str.1, ptr @.str.44, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no route\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sctp: no route\0A\00", [16 x i8] zeroinitializer }, align 32
@sctp_v4_copy_addrlist.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@sctp_v4_copy_addrlist.__warned.47 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI4 \00", [26 x i8] zeroinitializer }, align 32
@sctp_v4_ip_options_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sctp_bind_bucket\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sctp_chunk\00", [21 x i8] zeroinitializer }, align 32
@sctp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sctp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.1, i32 1560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013sctp: Failed endpoint_hash alloc\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sctp_init\00", [22 x i8] zeroinitializer }, align 32
@sctp_init._entry_ptr = internal global ptr @sctp_init._entry, section ".printk_index", align 4
@sctp_init.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&sctp_ep_hashtable[i].lock\00", [37 x i8] zeroinitializer }, align 32
@sctp_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.1, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013sctp: Failed bind hash alloc\0A\00", [32 x i8] zeroinitializer }, align 32
@sctp_init._entry_ptr.59 = internal global ptr @sctp_init._entry.57, section ".printk_index", align 4
@sctp_init.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&sctp_port_hashtable[i].lock\00", [35 x i8] zeroinitializer }, align 32
@sctp_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.54, ptr @.str.1, i32 1608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016sctp: Hash tables configured (bind %d/%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@sctp_init._entry_ptr.64 = internal global ptr @sctp_init._entry.62, section ".printk_index", align 4
@sctp_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.54, ptr @.str.1, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012sctp: %s: Cannot add SCTP protocol offload\0A\00", [50 x i8] zeroinitializer }, align 32
@sctp_init._entry_ptr.67 = internal global ptr @sctp_init._entry.65, section ".printk_index", align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@sctp_pf_inet = internal global { %struct.sctp_pf, [44 x i8] } { %struct.sctp_pf { ptr @sctp_inet_event_msgname, ptr @sctp_inet_skb_msgname, ptr @sctp_inet_af_supported, ptr @sctp_inet_cmp_addr, ptr @sctp_inet_bind_verify, ptr @sctp_inet_send_verify, ptr @sctp_inet_supported_addrs, ptr @sctp_v4_create_accept_sk, ptr @sctp_v4_addr_to_user, ptr @sctp_v4_to_sk_saddr, ptr @sctp_v4_to_sk_daddr, ptr @sctp_v4_copy_ip_options, ptr @sctp_af_inet }, [44 x i8] zeroinitializer }, align 32
@sctp_v4_copy_ip_options.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_v4_copy_ip_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.1, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013sctp: %s: Failed to copy ip options\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sctp_v4_copy_ip_options\00", [40 x i8] zeroinitializer }, align 32
@sctp_v4_copy_ip_options._entry_ptr = internal global ptr @sctp_v4_copy_ip_options._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"sctp_assocs_id_lock\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 54, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 140, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 739, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 759, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 870, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 890, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c"sctp_af_v4_specific\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 58, i32 24 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c"sctp_af_v6_specific\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 59, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant [22 x i8] c"sctp_pf_inet_specific\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 57, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"sctp_pf_inet6_specific\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 56, i32 24 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"sctp_ctrlsock_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1467, i32 33 }
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"sctp_defaults_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1444, i32 33 }
@___asan_gen_.143 = private unnamed_addr constant [15 x i8] c"sctp_assocs_id\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 53, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant [16 x i8] c"sysctl_sctp_mem\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 64, i32 6 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"sysctl_sctp_rmem\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 65, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"sysctl_sctp_wmem\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 66, i32 5 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 695, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 723, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"sctp_protocol\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1158, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant [23 x i8] c"sctp_inetaddr_notifier\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1108, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1456, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 843, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"sctp_stream_protosw\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1143, i32 28 }
@___asan_gen_.191 = private unnamed_addr constant [23 x i8] c"sctp_seqpacket_protosw\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1136, i32 28 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"inet_seqpacket_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1113, i32 31 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1317, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1408, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1414, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1416, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 634, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 653, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 673, i32 5 }
@___asan_gen_.239 = private unnamed_addr constant [13 x i8] c"sctp_af_inet\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1166, i32 23 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1058, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 231, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 445, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 537, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 541, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 84, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 232, i32 9 }
@___asan_gen_.282 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1011, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 617, i32 18 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1489, i32 41 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1496, i32 40 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1503, i32 11 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1560, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1565, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1580, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1599, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1607, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1643, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 378, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [13 x i8] c"sctp_pf_inet\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1091, i32 23 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private constant [23 x i8] c"../net/sctp/protocol.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 192, i32 4 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_alias614, ptr @__UNIQUE_ID_alias615, ptr @__UNIQUE_ID_author616, ptr @__UNIQUE_ID_description617, ptr @__UNIQUE_ID_file620, ptr @__UNIQUE_ID_license621, ptr @__UNIQUE_ID_no_checksums619, ptr @__UNIQUE_ID_no_checksumstype618, ptr @__exitcall_sctp_exit, ptr @__initcall__kmod_sctp__613_1716_sctp_init6, ptr @__param_no_checksums, ptr @sctp_ctl_sock_init._entry, ptr @sctp_ctl_sock_init._entry_ptr, ptr @sctp_ctrlsock_init._entry, ptr @sctp_ctrlsock_init._entry_ptr, ptr @sctp_exit, ptr @sctp_init._entry, ptr @sctp_init._entry.57, ptr @sctp_init._entry.62, ptr @sctp_init._entry.65, ptr @sctp_init._entry_ptr, ptr @sctp_init._entry_ptr.59, ptr @sctp_init._entry_ptr.64, ptr @sctp_init._entry_ptr.67, ptr @sctp_udp_sock_start._entry, ptr @sctp_udp_sock_start._entry.11, ptr @sctp_udp_sock_start._entry_ptr, ptr @sctp_udp_sock_start._entry_ptr.13, ptr @sctp_v4_copy_ip_options._entry, ptr @sctp_v4_copy_ip_options._entry_ptr, ptr @.str, ptr @sctp_assocs_id_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @sctp_af_v4_specific, ptr @sctp_af_v6_specific, ptr @sctp_pf_inet_specific, ptr @sctp_pf_inet6_specific, ptr @sctp_ctrlsock_ops, ptr @sctp_defaults_ops, ptr @sctp_assocs_id, ptr @sysctl_sctp_mem, ptr @sysctl_sctp_rmem, ptr @sysctl_sctp_wmem, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @sctp_protocol, ptr @sctp_inetaddr_notifier, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @sctp_stream_protosw, ptr @sctp_seqpacket_protosw, ptr @inet_seqpacket_ops, ptr @.str.21, ptr @sctp_defaults_init.__key, ptr @.str.22, ptr @sctp_defaults_init.__key.23, ptr @.str.24, ptr @sctp_defaults_init.__key.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @sctp_af_inet, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @sctp_init.__key, ptr @.str.53, ptr @.str.54, ptr @sctp_init.__key.55, ptr @.str.56, ptr @.str.58, ptr @sctp_init.__key.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @xa_init_flags.__key, ptr @.str.68, ptr @sctp_pf_inet, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_assocs_id_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_udp_sock_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_udp_sock_start._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_af_v4_specific to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_af_v6_specific to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_pf_inet_specific to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_pf_inet6_specific to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_ctrlsock_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_defaults_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_assocs_id to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_sctp_mem to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_sctp_rmem to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_sctp_wmem to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_inetaddr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_ctrlsock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_ctl_sock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_stream_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_seqpacket_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet_seqpacket_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_defaults_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_defaults_init.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_defaults_init.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_af_inet to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_init.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_init.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_pf_inet to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_v4_copy_ip_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_copy_local_addr_list(ptr noundef %net, ptr noundef %bp, i32 noundef %scope, i32 noundef %gfp, i32 noundef %copy_flags) local_unnamed_addr #0 align 64 {
entry:
  %laddr = alloca %union.sctp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %laddr) #18
  %0 = getelementptr inbounds %struct.sockaddr_in6, ptr %laddr, i32 0, i32 1
  %1 = call ptr @memset(ptr %laddr, i32 255, i32 28)
  %2 = tail call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !218
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b75 = load i1, ptr @sctp_copy_local_addr_list.__warned, align 1
  br i1 %.b75, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @sctp_copy_local_addr_list.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 140, ptr noundef nonnull @.str.2) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %local_addr_list = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 8
  %6 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %addr.088 = load volatile ptr, ptr %local_addr_list, align 4
  %cmp.not89 = icmp eq ptr %addr.088, %local_addr_list
  br i1 %cmp.not89, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %7 = and i32 %copy_flags, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %.not = icmp eq i32 %7, 10
  %8 = and i32 %copy_flags, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %.not87 = icmp eq i32 %8, 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.090 = phi ptr [ %addr.088, %for.body.lr.ph ], [ %addr.0, %for.inc.for.body_crit_edge ]
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.090, i32 0, i32 4
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.end13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.090, i32 0, i32 2
  %call14 = call i32 @sctp_in_scope(ptr noundef %net, ptr noundef %a, i32 noundef %scope) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.for.inc_crit_edge, label %if.end17

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end17:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %a, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %if.end17.if.end39_crit_edge [
    i16 2, label %land.lhs.true21
    i16 10, label %land.lhs.true32
  ]

if.end17.if.end39_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39

land.lhs.true21:                                  ; preds = %if.end17
  br i1 %.not87, label %land.lhs.true21.if.end39_crit_edge, label %land.lhs.true21.for.inc_crit_edge

land.lhs.true21.for.inc_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true21.if.end39_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39

land.lhs.true32:                                  ; preds = %if.end17
  br i1 %.not, label %land.lhs.true32.if.end39_crit_edge, label %land.lhs.true32.for.inc_crit_edge

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true32.if.end39_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true32.if.end39_crit_edge, %land.lhs.true21.if.end39_crit_edge, %if.end17.if.end39_crit_edge
  %14 = call ptr @memcpy(ptr %laddr, ptr %a, i32 28)
  %15 = ptrtoint ptr %bp to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bp, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %0, align 2
  %call41 = call i32 @sctp_bind_addr_state(ptr noundef %bp, ptr noundef nonnull %laddr) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, -1
  br i1 %cmp42.not, label %if.end45, label %if.end39.for.inc_crit_edge

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end45:                                         ; preds = %if.end39
  %call47 = call i32 @sctp_add_bind_addr(ptr noundef %bp, ptr noundef %a, i32 noundef 28, i8 noundef zeroext 1, i32 noundef 2592) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end45.for.inc_crit_edge, label %if.end45.for.end_crit_edge

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.inc:                                          ; preds = %if.end45.for.inc_crit_edge, %if.end39.for.inc_crit_edge, %land.lhs.true32.for.inc_crit_edge, %land.lhs.true21.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %addr.090 to i32
  call void @__asan_load4_noabort(i32 %18)
  %addr.0 = load volatile ptr, ptr %addr.090, align 4
  %cmp.not = icmp eq ptr %addr.0, %local_addr_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end45.for.end_crit_edge, %do.end.for.end_crit_edge
  %error.2 = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %call47, %if.end45.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %call.i77 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i77, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i80

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i80:                                ; preds = %for.end
  %call1.i78 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %tobool.not.i79 = icmp eq i32 %call1.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i82

land.lhs.true.i80.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i82:                               ; preds = %land.lhs.true.i80
  %.b4.i81 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i81, label %land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge, label %if.then.i83

land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i83:                                      ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i83, %land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i80.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !219
  %19 = call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i84 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i84 to ptr
  %preempt_count.i.i.i.i85 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i85, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i85, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %laddr) #18
  ret i32 %error.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_in_scope(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_bind_addr_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_add_bind_addr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_addr_wq_mgmt(ptr noundef %net, ptr noundef %addr, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_wq_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %addr_wq_lock) #18
  %addr_waitq.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 9
  %0 = ptrtoint ptr %addr_waitq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %addrw.051.i = load ptr, ptr %addr_waitq.i, align 4
  %cmp.not52.i = icmp eq ptr %addrw.051.i, %addr_waitq.i
  br i1 %cmp.not52.i, label %entry.if.end14_crit_edge, label %for.body.lr.ph.i

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

for.body.lr.ph.i:                                 ; preds = %entry
  %a3.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr, i32 0, i32 2
  %1 = ptrtoint ptr %a3.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %a3.i, align 4
  %sin6_addr30.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr, i32 0, i32 2, i32 0, i32 3
  %arrayidx6.i.i = getelementptr %struct.sctp_sockaddr_entry, ptr %addr, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx11.i.i = getelementptr %struct.sctp_sockaddr_entry, ptr %addr, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx17.i.i = getelementptr %struct.sctp_sockaddr_entry, ptr %addr, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 3
  %sin_addr16.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr, i32 0, i32 2, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %addrw.053.i = phi ptr [ %addrw.051.i, %for.body.lr.ph.i ], [ %addrw.0.i, %for.inc.i.for.body.i_crit_edge ]
  %a.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addrw.053.i, i32 0, i32 2
  %3 = ptrtoint ptr %a.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %a.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %2)
  %cmp6.not.i = icmp eq i16 %4, %2
  br i1 %cmp6.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %5 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %2, label %if.end.i.for.inc.i_crit_edge [
    i16 2, label %if.then13.i
    i16 10, label %if.then27.i
  ]

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then13.i:                                      ; preds = %if.end.i
  %sin_addr.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addrw.053.i, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sin_addr.i, align 4
  %8 = ptrtoint ptr %sin_addr16.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp18.i = icmp eq i32 %7, %9
  br i1 %cmp18.i, label %if.then13.i.sctp_addr_wq_lookup.exit_crit_edge, label %if.then13.i.for.inc.i_crit_edge

if.then13.i.for.inc.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then13.i.sctp_addr_wq_lookup.exit_crit_edge:   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_addr_wq_lookup.exit

if.then27.i:                                      ; preds = %if.end.i
  %sin6_addr.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addrw.053.i, i32 0, i32 2, i32 0, i32 3
  %10 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sin6_addr.i, align 4
  %12 = ptrtoint ptr %sin6_addr30.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sin6_addr30.i, align 4
  %xor.i.i = xor i32 %13, %11
  %arrayidx4.i.i = getelementptr %struct.sctp_sockaddr_entry, ptr %addrw.053.i, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i.i, align 4
  %16 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %17, %15
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr %struct.sctp_sockaddr_entry, ptr %addrw.053.i, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i.i, align 4
  %20 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %21, %19
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.sctp_sockaddr_entry, ptr %addrw.053.i, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.i.i, align 4
  %24 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %25, %23
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %if.then27.i.sctp_addr_wq_lookup.exit_crit_edge, label %if.then27.i.for.inc.i_crit_edge

if.then27.i.for.inc.i_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then27.i.sctp_addr_wq_lookup.exit_crit_edge:   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_addr_wq_lookup.exit

for.inc.i:                                        ; preds = %if.then27.i.for.inc.i_crit_edge, %if.then13.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %addrw.053.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %addrw.0.i = load ptr, ptr %addrw.053.i, align 4
  %cmp.not.i = icmp eq ptr %addrw.0.i, %addr_waitq.i
  br i1 %cmp.not.i, label %for.inc.i.if.end14_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

sctp_addr_wq_lookup.exit:                         ; preds = %if.then27.i.sctp_addr_wq_lookup.exit_crit_edge, %if.then13.i.sctp_addr_wq_lookup.exit_crit_edge
  %tobool.not = icmp eq ptr %addrw.053.i, null
  br i1 %tobool.not, label %sctp_addr_wq_lookup.exit.if.end14_crit_edge, label %if.then

sctp_addr_wq_lookup.exit.if.end14_crit_edge:      ; preds = %sctp_addr_wq_lookup.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then:                                          ; preds = %sctp_addr_wq_lookup.exit
  %state = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addrw.053.i, i32 0, i32 3
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %state, align 4
  %conv = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %cmd)
  %cmp.not = icmp eq i32 %conv, %cmd
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_addr_wq_mgmt.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_addr_wq_mgmt, %if.then7)) #18
          to label %do.end [label %if.then7], !srcloc !220

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %state, align 4
  %conv9 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_addr_wq_mgmt.__UNIQUE_ID_ddebug598, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %conv9, ptr noundef %a.i, ptr noundef %addr_waitq.i) #18
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %addrw.053.i) #18
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %addrw.053.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %addrw.053.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %addrw.053.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %37 = ptrtoint ptr %addrw.053.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %addrw.053.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %addrw.053.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %addrw.053.i) #18
  br label %cleanup

if.end14:                                         ; preds = %sctp_addr_wq_lookup.exit.if.end14_crit_edge, %for.inc.i.if.end14_crit_edge, %entry.if.end14_crit_edge
  %call15 = tail call ptr @kmemdup(ptr noundef %addr, i32 noundef 48, i32 noundef 2592) #18
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %conv22 = trunc i32 %cmd to i8
  %state23 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call15, i32 0, i32 3
  %39 = ptrtoint ptr %state23 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv22, ptr %state23, align 4
  %prev.i86 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 9, i32 1
  %40 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i86, align 4
  %call.i.i87 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call15, ptr noundef %41, ptr noundef %addr_waitq.i) #18
  br i1 %call.i.i87, label %if.end.i.i88, label %if.end21.list_add_tail.exit_crit_edge

if.end21.list_add_tail.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail.exit

if.end.i.i88:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  %42 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call15, ptr %prev.i86, align 4
  %43 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %addr_waitq.i, ptr %call15, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call15, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call15, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i88, %if.end21.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_addr_wq_mgmt.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_addr_wq_mgmt, %if.then39)) #18
          to label %do.end47 [label %if.then39], !srcloc !220

if.then39:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #20
  %46 = ptrtoint ptr %state23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %state23, align 4
  %conv41 = zext i8 %47 to i32
  %a42 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call15, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_addr_wq_mgmt.__UNIQUE_ID_ddebug599, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef %conv41, ptr noundef %a42, ptr noundef %addr_waitq.i) #18
  br label %do.end47

do.end47:                                         ; preds = %if.then39, %list_add_tail.exit
  %pprev.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 10, i32 0, i32 1
  %48 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %49, null
  br i1 %tobool.not.i.i.not, label %if.then51, label %do.end47.cleanup_crit_edge

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then51:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #20
  %addr_wq_timer = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %50, 50
  %call55 = tail call i32 @mod_timer(ptr noundef %addr_wq_timer, i32 noundef %add) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.end47.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %list_del.exit, %if.then.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_wq_lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_udp_sock_start(ptr noundef %net) local_unnamed_addr #0 align 64 {
udp_sock_create.exit:
  %tuncfg = alloca %struct.udp_tunnel_sock_cfg, align 4
  %udp_conf = alloca %struct.udp_port_cfg, align 4
  %sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tuncfg) #18
  %0 = call ptr @memset(ptr %tuncfg, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %udp_conf) #18
  %1 = call ptr @memset(ptr %udp_conf, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #18
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !221
  %3 = ptrtoint ptr %udp_conf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %udp_conf, align 4
  %4 = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  %udp_port = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 6
  %6 = ptrtoint ptr %udp_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %udp_port, align 8
  %conv = trunc i32 %7 to i16
  %local_udp_port = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf, i32 0, i32 3
  %8 = ptrtoint ptr %local_udp_port to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %local_udp_port, align 4
  %call.i = call i32 @udp_sock_create4(ptr noundef %net, ptr noundef nonnull %udp_conf, ptr noundef nonnull %sock) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %udp_sock_create.exit49, label %do.end

do.end:                                           ; preds = %udp_sock_create.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #21
  br label %cleanup

udp_sock_create.exit49:                           ; preds = %udp_sock_create.exit
  %encap_type = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tuncfg, i32 0, i32 1
  %9 = ptrtoint ptr %encap_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %encap_type, align 4
  %encap_rcv = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tuncfg, i32 0, i32 2
  %10 = ptrtoint ptr %encap_rcv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sctp_udp_rcv, ptr %encap_rcv, align 4
  %encap_err_lookup = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tuncfg, i32 0, i32 3
  %11 = ptrtoint ptr %encap_err_lookup to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sctp_udp_v4_err, ptr %encap_err_lookup, align 4
  %12 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sock, align 4
  call void @setup_udp_tunnel_sock(ptr noundef %net, ptr noundef %13, ptr noundef nonnull %tuncfg) #18
  %14 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 16
  %udp4_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 4
  %18 = ptrtoint ptr %udp4_sock to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %udp4_sock, align 8
  %19 = call ptr @memset(ptr %udp_conf, i32 0, i32 48)
  %20 = ptrtoint ptr %udp_conf to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %udp_conf, align 4
  %21 = call ptr @memcpy(ptr %4, ptr @in6addr_any, i32 16)
  %22 = ptrtoint ptr %udp_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %udp_port, align 8
  %conv6 = trunc i32 %23 to i16
  %24 = ptrtoint ptr %local_udp_port to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv6, ptr %local_udp_port, align 4
  %use_udp6_rx_checksums = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf, i32 0, i32 6
  %25 = ptrtoint ptr %use_udp6_rx_checksums to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 48, ptr %use_udp6_rx_checksums, align 4
  %call7.i46 = call i32 @udp_sock_create6(ptr noundef %net, ptr noundef nonnull %udp_conf, ptr noundef nonnull %sock) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i46)
  %tobool12.not = icmp eq i32 %call7.i46, 0
  br i1 %tobool12.not, label %if.end23, label %do.end16

do.end16:                                         ; preds = %udp_sock_create.exit49
  call void @__sanitizer_cov_trace_pc() #20
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #21
  %26 = ptrtoint ptr %udp4_sock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udp4_sock, align 8
  %sk_socket = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 71
  %28 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_socket, align 8
  call void @udp_tunnel_sock_release(ptr noundef %29) #18
  %30 = ptrtoint ptr %udp4_sock to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %udp4_sock, align 8
  br label %cleanup

if.end23:                                         ; preds = %udp_sock_create.exit49
  call void @__sanitizer_cov_trace_pc() #20
  %31 = ptrtoint ptr %encap_type to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %encap_type, align 4
  %32 = ptrtoint ptr %encap_rcv to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sctp_udp_rcv, ptr %encap_rcv, align 4
  %33 = ptrtoint ptr %encap_err_lookup to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sctp_udp_v6_err, ptr %encap_err_lookup, align 4
  %34 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sock, align 4
  call void @setup_udp_tunnel_sock(ptr noundef %net, ptr noundef %35, ptr noundef nonnull %tuncfg) #18
  %36 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sock, align 4
  %sk27 = getelementptr inbounds %struct.socket, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %sk27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk27, align 16
  %udp6_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 5
  %40 = ptrtoint ptr %udp6_sock to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %udp6_sock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end16, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call7.i46, %do.end16 ], [ 0, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %udp_conf) #18
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tuncfg) #18
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_udp_rcv(ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %encap_port = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %6 = ptrtoint ptr %encap_port to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %encap_port, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i6 = trunc i32 %sub.ptr.sub.i.i to i16
  %add.i = add i16 %conv.i.i6, 8
  store i16 %add.i, ptr %transport_header.i.i, align 2
  %call1 = tail call i32 @sctp_rcv(ptr noundef %skb) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_udp_v4_err(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_udp_tunnel_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_udp_v6_err(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_udp_sock_stop(ptr nocapture noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %udp4_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 4
  %0 = ptrtoint ptr %udp4_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp4_sock, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %2 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_socket, align 8
  tail call void @udp_tunnel_sock_release(ptr noundef %3) #18
  %4 = ptrtoint ptr %udp4_sock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %udp4_sock, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %udp6_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 5
  %5 = ptrtoint ptr %udp6_sock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udp6_sock, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %sk_socket10 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 71
  %7 = ptrtoint ptr %sk_socket10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_socket10, align 8
  tail call void @udp_tunnel_sock_release(ptr noundef %8) #18
  %9 = ptrtoint ptr %udp6_sock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %udp6_sock, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_register_af(ptr noundef %af) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_family = getelementptr inbounds %struct.sctp_af, ptr %af, i32 0, i32 24
  %0 = ptrtoint ptr %sa_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sa_family, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %1, label %entry.return_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr @sctp_af_v4_specific, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr @sctp_af_v6_specific, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %sctp_af_v6_specific.sink = phi ptr [ @sctp_af_v4_specific, %sw.bb.sw.epilog_crit_edge ], [ @sctp_af_v6_specific, %sw.bb1.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %sctp_af_v6_specific.sink to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %af, ptr %sctp_af_v6_specific.sink, align 4
  %list = getelementptr inbounds %struct.sctp_af, ptr %af, i32 0, i32 25
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.sctp_af, ptr %af, i32 0, i32 25, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %8, ptr noundef nonnull @sctp_globals) #18
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.return_crit_edge

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  store ptr %list, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sctp_globals, ptr %list, align 4
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %8, align 4
  br label %return

return:                                           ; preds = %if.end.i.i, %sw.epilog.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.return_crit_edge ], [ 0, %sw.bb1.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 1, %sw.epilog.return_crit_edge ], [ 1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @sctp_get_af_specific(i16 noundef zeroext %family) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %family, label %entry.return_crit_edge [
    i16 2, label %entry.return.sink.split_crit_edge
    i16 10, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %sctp_af_v6_specific.sink = phi ptr [ @sctp_af_v6_specific, %sw.bb1 ], [ @sctp_af_v4_specific, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %sctp_af_v6_specific.sink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sctp_af_v6_specific.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %2, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @sctp_get_pf_specific(i16 noundef zeroext %family) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %family, label %entry.return_crit_edge [
    i16 2, label %entry.return.sink.split_crit_edge
    i16 10, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %sctp_pf_inet6_specific.sink = phi ptr [ @sctp_pf_inet6_specific, %sw.bb1 ], [ @sctp_pf_inet_specific, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %sctp_pf_inet6_specific.sink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sctp_pf_inet6_specific.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %2, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sctp_register_pf(ptr noundef %pf, i16 noundef zeroext %family) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %family, label %entry.return_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr @sctp_pf_inet_specific, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %sw.bb.return.sink.split_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr @sctp_pf_inet6_specific, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %sw.bb1.return.sink.split_crit_edge, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb1.return.sink.split_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #20
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1.return.sink.split_crit_edge, %sw.bb.return.sink.split_crit_edge
  %sctp_pf_inet_specific.sink = phi ptr [ @sctp_pf_inet_specific, %sw.bb.return.sink.split_crit_edge ], [ @sctp_pf_inet6_specific, %sw.bb1.return.sink.split_crit_edge ]
  %3 = ptrtoint ptr %sctp_pf_inet_specific.sink to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pf, ptr %sctp_pf_inet_specific.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.return_crit_edge ], [ 0, %sw.bb1.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sctp_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @sctp_v6_del_protocol() #18
  %call.i = tail call i32 @inet_del_protocol(ptr noundef nonnull @sctp_protocol, i8 noundef zeroext -124) #18
  %call1.i = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @sctp_inetaddr_notifier) #18
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @sctp_ctrlsock_ops) #18
  tail call void @sctp_v6_protosw_exit() #18
  tail call fastcc void @sctp_v4_protosw_exit()
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @sctp_defaults_ops) #18
  tail call void @sctp_v6_pf_exit() #18
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25)) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.sctp_v4_pf_exit.exit_crit_edge

entry.sctp_v4_pf_exit.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_v4_pf_exit.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = load ptr, ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25, i32 1), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev1.i.i.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %1, ptr %0, align 4
  br label %sctp_v4_pf_exit.exit

sctp_v4_pf_exit.exit:                             ; preds = %if.end.i.i.i, %entry.sctp_v4_pf_exit.exit_crit_edge
  store ptr inttoptr (i32 256 to ptr), ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), align 4
  store ptr inttoptr (i32 290 to ptr), ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25, i32 1), align 4
  tail call void @sctp_sysctl_unregister() #18
  %4 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 2), align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 5), align 4
  %mul = mul i32 %5, 48
  %dec.i = add i32 %mul, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %6 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #18, !range !222
  %sub.i.i = sub nuw nsw i32 32, %6
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %7 = ptrtoint ptr %4 to i32
  tail call void @free_pages(i32 noundef %7, i32 noundef %cond.i.i) #18
  %8 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1), align 4
  tail call void @kfree(ptr noundef %8) #18
  tail call void @sctp_transport_hashtable_destroy() #18
  tail call void @percpu_counter_destroy(ptr noundef nonnull @sctp_sockets_allocated) #18
  tail call void @rcu_barrier() #18
  %9 = load ptr, ptr @sctp_chunk_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %9) #18
  %10 = load ptr, ptr @sctp_bucket_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_v6_del_protocol() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_v4_del_protocol() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_del_protocol(ptr noundef nonnull @sctp_protocol, i8 noundef zeroext -124) #18
  %call1 = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @sctp_inetaddr_notifier) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_v6_protosw_exit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_v4_protosw_exit() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inet_unregister_protosw(ptr noundef nonnull @sctp_stream_protosw) #18
  tail call void @inet_unregister_protosw(ptr noundef nonnull @sctp_seqpacket_protosw) #18
  tail call void @proto_unregister(ptr noundef nonnull @sctp_prot) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_v6_pf_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sysctl_unregister() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_hashtable_destroy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.51, i32 noundef 24, i32 noundef 0, i32 noundef 8192, ptr noundef null) #18
  store ptr %call1, ptr @sctp_bucket_cachep, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.52, i32 noundef 176, i32 noundef 0, i32 noundef 8192, ptr noundef null) #18
  store ptr %call2, ptr @sctp_chunk_cachep, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_chunk_cachep_crit_edge, label %if.end5

if.end.err_chunk_cachep_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_chunk_cachep

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @__percpu_counter_init(ptr noundef nonnull @sctp_sockets_allocated, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @sctp_init.__key) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_percpu_counter_init_crit_edge

if.end5.err_percpu_counter_init_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_percpu_counter_init

if.end9:                                          ; preds = %if.end5
  store i16 -1, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 6), align 4
  store i16 10, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 7), align 2
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @sctp_assocs_id, ptr noundef nonnull @.str.68, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #18
  store i32 67108868, ptr getelementptr inbounds (%struct.idr, ptr @sctp_assocs_id, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.idr, ptr @sctp_assocs_id, i32 0, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.idr, ptr @sctp_assocs_id, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.idr, ptr @sctp_assocs_id, i32 0, i32 2), align 4
  %call10 = tail call i32 @nr_free_buffer_pages() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1031, i32 %call10)
  %cmp = icmp ugt i32 %call10, 1031
  %div192 = lshr i32 %call10, 3
  %cond = select i1 %cmp, i32 %div192, i32 128
  %div12193 = lshr i32 %cond, 2
  %mul = mul nuw nsw i32 %div12193, 3
  store i32 %mul, ptr @sysctl_sctp_mem, align 4
  store i32 %cond, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_sctp_mem, i32 0, i32 1), align 4
  %mul13 = mul nuw nsw i32 %div12193, 6
  store i32 %mul13, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_sctp_mem, i32 0, i32 2), align 4
  %shl = shl i32 %cond, 5
  %1 = tail call i32 @llvm.umin.i32(i32 %shl, i32 4194304)
  store i32 4096, ptr @sysctl_sctp_rmem, align 4
  store i32 769500, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_sctp_rmem, i32 0, i32 1), align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 769500)
  store i32 %2, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_sctp_rmem, i32 0, i32 2), align 4
  store i32 4096, ptr @sysctl_sctp_wmem, align 4
  store i32 16384, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_sctp_wmem, i32 0, i32 1), align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %1, i32 65536)
  store i32 %3, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_sctp_wmem, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %0)
  %cmp32 = icmp ugt i32 %0, 131071
  %goal.0.v = select i1 %cmp32, i32 10, i32 12
  %goal.0 = lshr i32 %0, %goal.0.v
  %dec.i = add nsw i32 %goal.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  br i1 %tobool.not.i.i, label %if.end9.get_order.exit.thread_crit_edge, label %get_order.exit

if.end9.get_order.exit.thread_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_order.exit.thread

get_order.exit:                                   ; preds = %if.end9
  %shr.i = lshr i32 %dec.i, 12
  %4 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #18, !range !222
  %sub.i.i = sub nuw nsw i32 32, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %dec.i)
  %cmp39 = icmp ult i32 %dec.i, 2097152
  br i1 %cmp39, label %get_order.exit.get_order.exit.thread_crit_edge, label %get_order.exit.get_order.exit.thread220_crit_edge

get_order.exit.get_order.exit.thread220_crit_edge: ; preds = %get_order.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_order.exit.thread220

get_order.exit.get_order.exit.thread_crit_edge:   ; preds = %get_order.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_order.exit.thread

get_order.exit.thread:                            ; preds = %get_order.exit.get_order.exit.thread_crit_edge, %if.end9.get_order.exit.thread_crit_edge
  %retval.0.i219 = phi i32 [ %sub.i.i, %get_order.exit.get_order.exit.thread_crit_edge ], [ 0, %if.end9.get_order.exit.thread_crit_edge ]
  br label %get_order.exit.thread220

get_order.exit.thread220:                         ; preds = %get_order.exit.thread, %get_order.exit.get_order.exit.thread220_crit_edge
  %5 = phi i32 [ %retval.0.i219, %get_order.exit.thread ], [ 10, %get_order.exit.get_order.exit.thread220_crit_edge ]
  store i32 64, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 3072) #22
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1), align 4
  %tobool45.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not, label %do.end49, label %for.cond.preheader

for.cond.preheader:                               ; preds = %get_order.exit.thread220
  %7 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp53223 = icmp sgt i32 %7, 0
  br i1 %cmp53223, label %for.cond.preheader.do.body54_crit_edge, label %for.cond.preheader.do.body58.preheader_crit_edge

for.cond.preheader.do.body58.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body58.preheader

for.cond.preheader.do.body54_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body54

do.end49:                                         ; preds = %get_order.exit.thread220
  call void @__sanitizer_cov_trace_pc() #20
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #21
  br label %err_ehash_alloc

do.body54:                                        ; preds = %do.body54.do.body54_crit_edge, %for.cond.preheader.do.body54_crit_edge
  %i.0224 = phi i32 [ %inc, %do.body54.do.body54_crit_edge ], [ 0, %for.cond.preheader.do.body54_crit_edge ]
  %8 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1), align 4
  %arrayidx = getelementptr %struct.sctp_hashbucket, ptr %8, i32 %i.0224
  tail call void @__rwlock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.56, ptr noundef nonnull @sctp_init.__key.55) #18
  %9 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1), align 4
  %chain = getelementptr %struct.sctp_hashbucket, ptr %9, i32 %i.0224, i32 1
  %10 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %chain, align 4
  %inc = add nuw nsw i32 %i.0224, 1
  %11 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 4), align 4
  %cmp53 = icmp slt i32 %inc, %11
  br i1 %cmp53, label %do.body54.do.body54_crit_edge, label %do.body54.do.body58.preheader_crit_edge

do.body54.do.body58.preheader_crit_edge:          ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body58.preheader

do.body54.do.body54_crit_edge:                    ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body54

do.body58.preheader:                              ; preds = %do.body54.do.body58.preheader_crit_edge, %for.cond.preheader.do.body58.preheader_crit_edge
  br label %do.body58

do.body58:                                        ; preds = %land.rhs.do.body58_crit_edge, %do.body58.preheader
  %order.0 = phi i32 [ %dec, %land.rhs.do.body58_crit_edge ], [ %5, %do.body58.preheader ]
  %call59 = tail call i32 @__get_free_pages(i32 noundef 11456, i32 noundef %order.0) #18
  %12 = inttoptr i32 %call59 to ptr
  store ptr %12, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool61.not = icmp eq i32 %call59, 0
  br i1 %tobool61.not, label %land.rhs, label %if.end71

land.rhs:                                         ; preds = %do.body58
  %dec = add nsw i32 %order.0, -1
  %cmp62 = icmp sgt i32 %order.0, 1
  br i1 %cmp62, label %land.rhs.do.body58_crit_edge, label %do.end68

land.rhs.do.body58_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body58

do.end68:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #21
  br label %err_bhash_alloc

if.end71:                                         ; preds = %do.body58
  %mul73 = shl i32 4096, %order.0
  %div74 = udiv i32 %mul73, 48
  %13 = tail call i32 @llvm.ctlz.i32(i32 %div74, i1 true) #18, !range !222
  %sub.i.i.op.i = xor i32 %13, 31
  %cond90 = shl nuw i32 1, %sub.i.i.op.i
  store i32 %cond90, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp92225.not = icmp eq i32 %13, 0
  br i1 %cmp92225.not, label %if.end71.for.end106_crit_edge, label %if.end71.do.body95_crit_edge

if.end71.do.body95_crit_edge:                     ; preds = %if.end71
  br label %do.body95

if.end71.for.end106_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end106

do.body95:                                        ; preds = %do.body95.do.body95_crit_edge, %if.end71.do.body95_crit_edge
  %i.1226 = phi i32 [ %inc105, %do.body95.do.body95_crit_edge ], [ 0, %if.end71.do.body95_crit_edge ]
  %14 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 2), align 4
  %arrayidx96 = getelementptr %struct.sctp_bind_hashbucket, ptr %14, i32 %i.1226
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx96, ptr noundef nonnull @.str.61, ptr noundef nonnull @sctp_init.__key.60, i16 noundef signext 3) #18
  %15 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 2), align 4
  %chain102 = getelementptr %struct.sctp_bind_hashbucket, ptr %15, i32 %i.1226, i32 1
  %16 = ptrtoint ptr %chain102 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %chain102, align 4
  %inc105 = add nuw nsw i32 %i.1226, 1
  %17 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 5), align 4
  %cmp92 = icmp slt i32 %inc105, %17
  br i1 %cmp92, label %do.body95.do.body95_crit_edge, label %do.body95.for.end106_crit_edge

do.body95.for.end106_crit_edge:                   ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end106

do.body95.do.body95_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body95

for.end106:                                       ; preds = %do.body95.for.end106_crit_edge, %if.end71.for.end106_crit_edge
  %call107 = tail call i32 @sctp_transport_hashtable_init() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %do.end113, label %for.end106.err_thash_alloc_crit_edge

for.end106.err_thash_alloc_crit_edge:             ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_thash_alloc

do.end113:                                        ; preds = %for.end106
  %18 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 5), align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %18, i32 noundef %div74) #21
  tail call void @sctp_sysctl_register() #18
  store volatile ptr @sctp_globals, ptr @sctp_globals, align 4
  store ptr @sctp_globals, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 0, i32 1), align 4
  tail call fastcc void @sctp_v4_pf_init()
  tail call void @sctp_v6_pf_init() #18
  tail call void @sctp_sched_ops_init() #18
  %call116 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @sctp_defaults_ops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %do.end113.err_register_defaults_crit_edge

do.end113.err_register_defaults_crit_edge:        ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_register_defaults

if.end119:                                        ; preds = %do.end113
  %call120 = tail call fastcc i32 @sctp_v4_protosw_init()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end119.err_protosw_init_crit_edge

if.end119.err_protosw_init_crit_edge:             ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_protosw_init

if.end123:                                        ; preds = %if.end119
  %call124 = tail call i32 @sctp_v6_protosw_init() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.err_v6_protosw_init_crit_edge

if.end123.err_v6_protosw_init_crit_edge:          ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_v6_protosw_init

if.end127:                                        ; preds = %if.end123
  %call128 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @sctp_ctrlsock_ops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.err_register_ctrlsock_crit_edge

if.end127.err_register_ctrlsock_crit_edge:        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_register_ctrlsock

if.end131:                                        ; preds = %if.end127
  %call132 = tail call fastcc i32 @sctp_v4_add_protocol()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end131.err_add_protocol_crit_edge

if.end131.err_add_protocol_crit_edge:             ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_add_protocol

if.end135:                                        ; preds = %if.end131
  %call136 = tail call i32 @sctp_v6_add_protocol() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %err_v6_add_protocol

if.end139:                                        ; preds = %if.end135
  %call140 = tail call i32 @sctp_offload_init() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %do.end146, label %if.end139.out_crit_edge

if.end139.out_crit_edge:                          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

do.end146:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #20
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.54) #21
  br label %out

out:                                              ; preds = %err_chunk_cachep, %do.end146, %if.end139.out_crit_edge, %entry.out_crit_edge
  %status.0 = phi i32 [ %status.10, %err_chunk_cachep ], [ 0, %do.end146 ], [ 0, %if.end139.out_crit_edge ], [ -105, %entry.out_crit_edge ]
  ret i32 %status.0

err_v6_add_protocol:                              ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @sctp_v4_del_protocol()
  br label %err_add_protocol

err_add_protocol:                                 ; preds = %err_v6_add_protocol, %if.end131.err_add_protocol_crit_edge
  %status.1 = phi i32 [ %call132, %if.end131.err_add_protocol_crit_edge ], [ %call136, %err_v6_add_protocol ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @sctp_ctrlsock_ops) #18
  br label %err_register_ctrlsock

err_register_ctrlsock:                            ; preds = %err_add_protocol, %if.end127.err_register_ctrlsock_crit_edge
  %status.2 = phi i32 [ %call128, %if.end127.err_register_ctrlsock_crit_edge ], [ %status.1, %err_add_protocol ]
  tail call void @sctp_v6_protosw_exit() #18
  br label %err_v6_protosw_init

err_v6_protosw_init:                              ; preds = %err_register_ctrlsock, %if.end123.err_v6_protosw_init_crit_edge
  %status.3 = phi i32 [ %call124, %if.end123.err_v6_protosw_init_crit_edge ], [ %status.2, %err_register_ctrlsock ]
  tail call fastcc void @sctp_v4_protosw_exit()
  br label %err_protosw_init

err_protosw_init:                                 ; preds = %err_v6_protosw_init, %if.end119.err_protosw_init_crit_edge
  %status.4 = phi i32 [ %call120, %if.end119.err_protosw_init_crit_edge ], [ %status.3, %err_v6_protosw_init ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @sctp_defaults_ops) #18
  br label %err_register_defaults

err_register_defaults:                            ; preds = %err_protosw_init, %do.end113.err_register_defaults_crit_edge
  %status.5 = phi i32 [ %call116, %do.end113.err_register_defaults_crit_edge ], [ %status.4, %err_protosw_init ]
  %call.i.i.i216 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25)) #18
  br i1 %call.i.i.i216, label %if.end.i.i.i, label %err_register_defaults.sctp_v4_pf_exit.exit_crit_edge

err_register_defaults.sctp_v4_pf_exit.exit_crit_edge: ; preds = %err_register_defaults
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_v4_pf_exit.exit

if.end.i.i.i:                                     ; preds = %err_register_defaults
  call void @__sanitizer_cov_trace_pc() #20
  %19 = load ptr, ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25, i32 1), align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %19, align 4
  br label %sctp_v4_pf_exit.exit

sctp_v4_pf_exit.exit:                             ; preds = %if.end.i.i.i, %err_register_defaults.sctp_v4_pf_exit.exit_crit_edge
  store ptr inttoptr (i32 256 to ptr), ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), align 4
  store ptr inttoptr (i32 290 to ptr), ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25, i32 1), align 4
  tail call void @sctp_v6_pf_exit() #18
  tail call void @sctp_sysctl_unregister() #18
  %23 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 2), align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = load i32, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 5), align 4
  %mul150 = mul i32 %25, 48
  %dec.i208 = add i32 %mul150, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i208)
  %tobool.not.i.i210 = icmp ult i32 %dec.i208, 4096
  %shr.i209 = lshr i32 %dec.i208, 12
  %26 = tail call i32 @llvm.ctlz.i32(i32 %shr.i209, i1 true) #18, !range !222
  %sub.i.i211 = sub nuw nsw i32 32, %26
  %cond.i.i212 = select i1 %tobool.not.i.i210, i32 0, i32 %sub.i.i211
  tail call void @free_pages(i32 noundef %24, i32 noundef %cond.i.i212) #18
  br label %err_bhash_alloc

err_bhash_alloc:                                  ; preds = %sctp_v4_pf_exit.exit, %do.end68
  %status.6 = phi i32 [ %status.5, %sctp_v4_pf_exit.exit ], [ -12, %do.end68 ]
  tail call void @sctp_transport_hashtable_destroy() #18
  br label %err_thash_alloc

err_thash_alloc:                                  ; preds = %err_bhash_alloc, %for.end106.err_thash_alloc_crit_edge
  %status.7 = phi i32 [ %call107, %for.end106.err_thash_alloc_crit_edge ], [ %status.6, %err_bhash_alloc ]
  %27 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 1), align 4
  tail call void @kfree(ptr noundef %27) #18
  br label %err_ehash_alloc

err_ehash_alloc:                                  ; preds = %err_thash_alloc, %do.end49
  %status.8 = phi i32 [ %status.7, %err_thash_alloc ], [ -12, %do.end49 ]
  tail call void @percpu_counter_destroy(ptr noundef nonnull @sctp_sockets_allocated) #18
  br label %err_percpu_counter_init

err_percpu_counter_init:                          ; preds = %err_ehash_alloc, %if.end5.err_percpu_counter_init_crit_edge
  %status.9 = phi i32 [ %call6, %if.end5.err_percpu_counter_init_crit_edge ], [ %status.8, %err_ehash_alloc ]
  %28 = load ptr, ptr @sctp_chunk_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %28) #18
  br label %err_chunk_cachep

err_chunk_cachep:                                 ; preds = %err_percpu_counter_init, %if.end.err_chunk_cachep_crit_edge
  %status.10 = phi i32 [ %status.9, %err_percpu_counter_init ], [ -105, %if.end.err_chunk_cachep_crit_edge ]
  %29 = load ptr, ptr @sctp_bucket_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %29) #18
  br label %out
}

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_rcv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp4_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %encap_port = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %encap_port to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %encap_port, align 8
  %call = tail call i32 @sctp_rcv(ptr noundef %skb) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_v4_err(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_inetaddr_event(ptr nocapture noundef readnone %this, i32 noundef %ev, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %6 = zext i32 %ev to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %ev, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2848, i32 noundef 48) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %a to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %a, align 8
  %ifa_local = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 4
  %9 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifa_local, align 4
  %sin_addr = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sin_addr, align 4
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %valid, align 1
  %local_addr_lock = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 38, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %local_addr_lock) #18
  %local_addr_list = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 38, i32 8
  %prev.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 38, i32 8, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %14, ptr noundef %local_addr_list) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail_rcu.exit_crit_edge

if.then.list_add_tail_rcu.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %local_addr_list, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !223
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %14, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.then.list_add_tail_rcu.exit_crit_edge
  tail call void @sctp_addr_wq_mgmt(ptr noundef %5, ptr noundef nonnull %call7.i.i, i32 noundef 0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %local_addr_lock) #18
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %local_addr_lock8 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 38, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %local_addr_lock8) #18
  %local_addr_list10 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 38, i32 8
  %19 = ptrtoint ptr %local_addr_list10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %local_addr_list10, align 8
  %cmp.not79 = icmp eq ptr %20, %local_addr_list10
  br i1 %cmp.not79, label %sw.bb6.sw.epilog.critedge_crit_edge, label %for.body.lr.ph

sw.bb6.sw.epilog.critedge_crit_edge:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.critedge

for.body.lr.ph:                                   ; preds = %sw.bb6
  %ifa_local25 = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.080 = phi ptr [ %20, %for.body.lr.ph ], [ %temp.081, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %addr.080 to i32
  call void @__asan_load4_noabort(i32 %21)
  %temp.081 = load ptr, ptr %addr.080, align 4
  %a19 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.080, i32 0, i32 2
  %22 = ptrtoint ptr %a19 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %a19, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %23)
  %cmp20 = icmp eq i16 %23, 2
  br i1 %cmp20, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %sin_addr23 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.080, i32 0, i32 2, i32 0, i32 2
  %24 = ptrtoint ptr %sin_addr23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sin_addr23, align 4
  %26 = ptrtoint ptr %ifa_local25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifa_local25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp26 = icmp eq i32 %25, %27
  br i1 %cmp26, label %if.then28, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then28:                                        ; preds = %land.lhs.true
  tail call void @sctp_addr_wq_mgmt(ptr noundef %5, ptr noundef %addr.080, i32 noundef 2)
  %valid29 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.080, i32 0, i32 4
  %28 = ptrtoint ptr %valid29 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %valid29, align 1
  %call.i.i73 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %addr.080) #18
  br i1 %call.i.i73, label %if.end.i.i74, label %if.then28.list_del_rcu.exit_crit_edge

if.then28.list_del_rcu.exit_crit_edge:            ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_rcu.exit

if.end.i.i74:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %addr.080, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %addr.080 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr.080, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i74, %if.then28.list_del_rcu.exit_crit_edge
  %prev.i75 = getelementptr inbounds %struct.list_head, ptr %addr.080, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i75, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %local_addr_lock8) #18
  %tobool41.not = icmp eq ptr %addr.080, null
  br i1 %tobool41.not, label %list_del_rcu.exit.sw.epilog_crit_edge, label %do.end

list_del_rcu.exit.sw.epilog_crit_edge:            ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %temp.081, %local_addr_list10
  br i1 %cmp.not, label %for.inc.sw.epilog.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.sw.epilog.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.critedge

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #20
  %rcu = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.080, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #18
  br label %sw.epilog

sw.epilog.critedge:                               ; preds = %for.inc.sw.epilog.critedge_crit_edge, %sw.bb6.sw.epilog.critedge_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %local_addr_lock8) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.critedge, %do.end, %list_del_rcu.exit.sw.epilog_crit_edge, %list_add_tail_rcu.exit, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_ctrlsock_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sctp_pf_inet6_specific, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %spec.select.i = select i1 %tobool.not.i, i16 2, i16 10
  %ctl_sock.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 3
  %call1.i = tail call i32 @inet_ctl_sock_create(ptr noundef %ctl_sock.i, i16 noundef zeroext %spec.select.i, i16 noundef zeroext 5, i8 noundef zeroext -124, ptr noundef %net) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  %brmerge.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %brmerge.i, label %entry.if.end8.i_crit_edge, label %if.then4.i

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call7.i = tail call i32 @inet_ctl_sock_create(ptr noundef %ctl_sock.i, i16 noundef zeroext 2, i16 noundef zeroext 5, i8 noundef zeroext -124, ptr noundef %net) #18
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %entry.if.end8.i_crit_edge
  %err.0.i = phi i32 [ %call7.i, %if.then4.i ], [ %call1.i, %entry.if.end8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp9.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp9.i, label %do.end, label %if.end8.i.if.end_crit_edge

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #21
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end8.i.if.end_crit_edge
  %retval.0.i5 = phi i32 [ %err.0.i, %do.end ], [ 0, %if.end8.i.if.end_crit_edge ]
  ret i32 %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_ctrlsock_exit(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 3
  %0 = ptrtoint ptr %ctl_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_sock, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.inet_ctl_sock_destroy.exit_crit_edge, label %if.then.i

entry.inet_ctl_sock_destroy.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %inet_ctl_sock_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %2 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_socket.i, align 8
  tail call void @sock_release(ptr noundef %3) #18
  br label %inet_ctl_sock_destroy.exit

inet_ctl_sock_destroy.exit:                       ; preds = %if.then.i, %entry.inet_ctl_sock_destroy.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_unregister_protosw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_inet_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

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
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_defaults_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rto_initial = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 14
  %0 = ptrtoint ptr %rto_initial to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3000, ptr %rto_initial, align 8
  %rto_min = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 15
  %1 = ptrtoint ptr %rto_min to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1000, ptr %rto_min, align 4
  %rto_max = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 16
  %2 = ptrtoint ptr %rto_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 60000, ptr %rto_max, align 8
  %rto_alpha = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 17
  %3 = ptrtoint ptr %rto_alpha to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %rto_alpha, align 4
  %rto_beta = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 18
  %4 = ptrtoint ptr %rto_beta to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %rto_beta, align 8
  %valid_cookie_life = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 22
  %5 = ptrtoint ptr %valid_cookie_life to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 60000, ptr %valid_cookie_life, align 8
  %cookie_preserve_enable = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 20
  %6 = ptrtoint ptr %cookie_preserve_enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %cookie_preserve_enable, align 8
  %sctp_hmac_alg = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 21
  %7 = ptrtoint ptr %sctp_hmac_alg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.21, ptr %sctp_hmac_alg, align 4
  %max_burst = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 19
  %8 = ptrtoint ptr %max_burst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %max_burst, align 4
  %ps_retrans = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 30
  %9 = ptrtoint ptr %ps_retrans to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65535, ptr %ps_retrans, align 8
  %pf_enable = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 31
  %10 = ptrtoint ptr %pf_enable to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %pf_enable, align 4
  %pf_expose = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 32
  %11 = ptrtoint ptr %pf_expose to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pf_expose, align 8
  %max_retrans_association = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 26
  %12 = ptrtoint ptr %max_retrans_association to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %max_retrans_association, align 8
  %max_retrans_path = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 27
  %13 = ptrtoint ptr %max_retrans_path to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %max_retrans_path, align 4
  %max_retrans_init = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 28
  %14 = ptrtoint ptr %max_retrans_init to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %max_retrans_init, align 8
  %sndbuf_policy = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 33
  %15 = ptrtoint ptr %sndbuf_policy to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sndbuf_policy, align 4
  %rcvbuf_policy = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 34
  %16 = ptrtoint ptr %rcvbuf_policy to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rcvbuf_policy, align 8
  %hb_interval = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 24
  %17 = ptrtoint ptr %hb_interval to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 30000, ptr %hb_interval, align 8
  %sack_timeout = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 23
  %18 = ptrtoint ptr %sack_timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 200, ptr %sack_timeout, align 4
  %addip_enable = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 36
  %19 = ptrtoint ptr %addip_enable to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %addip_enable, align 8
  %addip_noauth = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 37
  %20 = ptrtoint ptr %addip_noauth to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %addip_noauth, align 4
  %default_auto_asconf = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 35
  %21 = ptrtoint ptr %default_auto_asconf to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %default_auto_asconf, align 4
  %prsctp_enable = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 38
  %22 = ptrtoint ptr %prsctp_enable to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %prsctp_enable, align 8
  %reconf_enable = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 39
  %23 = ptrtoint ptr %reconf_enable to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %reconf_enable, align 4
  %auth_enable = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 40
  %24 = ptrtoint ptr %auth_enable to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %auth_enable, align 8
  %ecn_enable = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 42
  %25 = ptrtoint ptr %ecn_enable to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %ecn_enable, align 8
  %udp_port = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 6
  %26 = ptrtoint ptr %udp_port to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %udp_port, align 8
  %encap_port = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 7
  %27 = ptrtoint ptr %encap_port to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %encap_port, align 4
  %scope_policy = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 43
  %28 = ptrtoint ptr %scope_policy to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %scope_policy, align 4
  %rwnd_upd_shift = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 44
  %29 = ptrtoint ptr %rwnd_upd_shift to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %rwnd_upd_shift, align 8
  %max_autoclose = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 45
  %30 = ptrtoint ptr %max_autoclose to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 21474836, ptr %max_autoclose, align 4
  %call = tail call i32 @sctp_sysctl_net_register(ptr noundef %net) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @__alloc_percpu(i32 noundef 136, i32 noundef 4) #23
  %sctp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38
  %31 = ptrtoint ptr %sctp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %sctp.i, align 8
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %if.end.err_init_mibs_crit_edge, label %if.end34

if.end.err_init_mibs_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_init_mibs

if.end34:                                         ; preds = %if.end
  %call35 = tail call i32 @sctp_proc_init(ptr noundef %net) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %err_init_proc

if.end38:                                         ; preds = %if.end34
  tail call void @sctp_dbg_objcnt_init(ptr noundef %net) #18
  %local_addr_list = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 8
  %32 = ptrtoint ptr %local_addr_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %local_addr_list, ptr %local_addr_list, align 4
  %prev.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 8, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %local_addr_list, ptr %prev.i, align 4
  %local_addr_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %local_addr_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @sctp_defaults_init.__key, i16 noundef signext 3) #18
  %34 = tail call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %37, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i, label %if.end38.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end38.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end38
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end38.rcu_read_lock.exit.i_crit_edge
  %call.i102 = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i103 = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b35.i = load i1, ptr @sctp_get_local_addr_list.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @sctp_get_local_addr_list.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 109, ptr noundef nonnull @.str.2) #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %dev_base_head.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 16
  %38 = ptrtoint ptr %dev_base_head.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn48.i = load volatile ptr, ptr %dev_base_head.i, align 4
  %cmp.not50.i = icmp eq ptr %.pn48.i, %dev_base_head.i
  br i1 %cmp.not50.i, label %do.end.i.for.end28.i_crit_edge, label %do.end.i.for.cond10.preheader.i_crit_edge

do.end.i.for.cond10.preheader.i_crit_edge:        ; preds = %do.end.i
  br label %for.cond10.preheader.i

do.end.i.for.end28.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end28.i

for.cond.loopexit.i:                              ; preds = %for.body13.i.for.cond.loopexit.i_crit_edge, %for.cond10.preheader.i.for.cond.loopexit.i_crit_edge
  %39 = ptrtoint ptr %.pn51.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load volatile ptr, ptr %.pn51.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dev_base_head.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.for.end28.i_crit_edge, label %for.cond.loopexit.i.for.cond10.preheader.i_crit_edge

for.cond.loopexit.i.for.cond10.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond10.preheader.i

for.cond.loopexit.i.for.end28.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end28.i

for.cond10.preheader.i:                           ; preds = %for.cond.loopexit.i.for.cond10.preheader.i_crit_edge, %do.end.i.for.cond10.preheader.i_crit_edge
  %.pn51.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.cond10.preheader.i_crit_edge ], [ %.pn48.i, %do.end.i.for.cond10.preheader.i_crit_edge ]
  %dev.052.i = getelementptr i8, ptr %.pn51.i, i32 -40
  %pos.045.i = load ptr, ptr @sctp_globals, align 4
  %cmp.i.not46.i = icmp eq ptr %pos.045.i, @sctp_globals
  br i1 %cmp.i.not46.i, label %for.cond10.preheader.i.for.cond.loopexit.i_crit_edge, label %for.cond10.preheader.i.for.body13.i_crit_edge

for.cond10.preheader.i.for.body13.i_crit_edge:    ; preds = %for.cond10.preheader.i
  br label %for.body13.i

for.cond10.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.loopexit.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.cond10.preheader.i.for.body13.i_crit_edge
  %pos.047.i = phi ptr [ %pos.0.i, %for.body13.i.for.body13.i_crit_edge ], [ %pos.045.i, %for.cond10.preheader.i.for.body13.i_crit_edge ]
  %copy_addrlist.i = getelementptr i8, ptr %pos.047.i, i32 -80
  %40 = ptrtoint ptr %copy_addrlist.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %copy_addrlist.i, align 4
  tail call void %41(ptr noundef %local_addr_list, ptr noundef %dev.052.i) #18
  %42 = ptrtoint ptr %pos.047.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %pos.0.i = load ptr, ptr %pos.047.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, @sctp_globals
  br i1 %cmp.i.not.i, label %for.body13.i.for.cond.loopexit.i_crit_edge, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body13.i

for.body13.i.for.cond.loopexit.i_crit_edge:       ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.loopexit.i

for.end28.i:                                      ; preds = %for.cond.loopexit.i.for.end28.i_crit_edge, %do.end.i.for.end28.i_crit_edge
  %call.i36.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i36.i, label %for.end28.i.sctp_get_local_addr_list.exit_crit_edge, label %land.lhs.true.i39.i

for.end28.i.sctp_get_local_addr_list.exit_crit_edge: ; preds = %for.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_get_local_addr_list.exit

land.lhs.true.i39.i:                              ; preds = %for.end28.i
  %call1.i37.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call1.i37.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i39.i.sctp_get_local_addr_list.exit_crit_edge, label %land.lhs.true2.i41.i

land.lhs.true.i39.i.sctp_get_local_addr_list.exit_crit_edge: ; preds = %land.lhs.true.i39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_get_local_addr_list.exit

land.lhs.true2.i41.i:                             ; preds = %land.lhs.true.i39.i
  %.b4.i40.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40.i, label %land.lhs.true2.i41.i.sctp_get_local_addr_list.exit_crit_edge, label %if.then.i42.i

land.lhs.true2.i41.i.sctp_get_local_addr_list.exit_crit_edge: ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_get_local_addr_list.exit

if.then.i42.i:                                    ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %sctp_get_local_addr_list.exit

sctp_get_local_addr_list.exit:                    ; preds = %if.then.i42.i, %land.lhs.true2.i41.i.sctp_get_local_addr_list.exit_crit_edge, %land.lhs.true.i39.i.sctp_get_local_addr_list.exit_crit_edge, %for.end28.i.sctp_get_local_addr_list.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !219
  %43 = tail call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i43.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i43.i to ptr
  %preempt_count.i.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i44.i, align 4
  %sub.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i44.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %addr_waitq = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 9
  %47 = ptrtoint ptr %addr_waitq to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %addr_waitq, ptr %addr_waitq, align 4
  %prev.i104 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 9, i32 1
  %48 = ptrtoint ptr %prev.i104 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %addr_waitq, ptr %prev.i104, align 4
  %auto_asconf_splist = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 11
  %49 = ptrtoint ptr %auto_asconf_splist to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %auto_asconf_splist, ptr %auto_asconf_splist, align 4
  %prev.i105 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 11, i32 1
  %50 = ptrtoint ptr %prev.i105 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %auto_asconf_splist, ptr %prev.i105, align 4
  %addr_wq_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %addr_wq_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @sctp_defaults_init.__key.23, i16 noundef signext 3) #18
  %addr_wq_timer = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 10
  %expires = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 10, i32 1
  %51 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %expires, align 8
  tail call void @init_timer_key(ptr noundef %addr_wq_timer, ptr noundef nonnull @sctp_addr_wq_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @sctp_defaults_init.__key.25) #18
  br label %cleanup

err_init_proc:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  %52 = ptrtoint ptr %sctp.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sctp.i, align 8
  tail call void @free_percpu(ptr noundef %53) #18
  br label %err_init_mibs

err_init_mibs:                                    ; preds = %err_init_proc, %if.end.err_init_mibs_crit_edge
  %status.0 = phi i32 [ -12, %if.end.err_init_mibs_crit_edge ], [ %call35, %err_init_proc ]
  tail call void @sctp_sysctl_net_unregister(ptr noundef %net) #18
  br label %cleanup

cleanup:                                          ; preds = %err_init_mibs, %sctp_get_local_addr_list.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sctp_get_local_addr_list.exit ], [ %call, %entry.cleanup_crit_edge ], [ %status.0, %err_init_mibs ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_defaults_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_wq_lock.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %addr_wq_lock.i) #18
  %addr_wq_timer.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 10
  %call.i = tail call i32 @del_timer(ptr noundef %addr_wq_timer.i) #18
  %addr_waitq.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 9
  %0 = ptrtoint ptr %addr_waitq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_waitq.i, align 8
  %cmp.not26.i = icmp eq ptr %1, %addr_waitq.i
  br i1 %cmp.not26.i, label %entry.sctp_free_addr_wq.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sctp_free_addr_wq.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_free_addr_wq.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %addrw.027.i = phi ptr [ %temp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %addrw.027.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.0.i = load ptr, ptr %addrw.027.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %addrw.027.i) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %addrw.027.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %addrw.027.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addrw.027.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %addrw.027.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %addrw.027.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %addrw.027.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %addrw.027.i) #18
  %cmp.not.i = icmp eq ptr %temp.0.i, %addr_waitq.i
  br i1 %cmp.not.i, label %list_del.exit.i.sctp_free_addr_wq.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

list_del.exit.i.sctp_free_addr_wq.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_free_addr_wq.exit

sctp_free_addr_wq.exit:                           ; preds = %list_del.exit.i.sctp_free_addr_wq.exit_crit_edge, %entry.sctp_free_addr_wq.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_wq_lock.i) #18
  %local_addr_list.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 8
  %11 = ptrtoint ptr %local_addr_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %local_addr_list.i, align 8
  %cmp.i.not11.i = icmp eq ptr %12, %local_addr_list.i
  br i1 %cmp.i.not11.i, label %sctp_free_addr_wq.exit.sctp_free_local_addr_list.exit_crit_edge, label %sctp_free_addr_wq.exit.for.body.i7_crit_edge

sctp_free_addr_wq.exit.for.body.i7_crit_edge:     ; preds = %sctp_free_addr_wq.exit
  br label %for.body.i7

sctp_free_addr_wq.exit.sctp_free_local_addr_list.exit_crit_edge: ; preds = %sctp_free_addr_wq.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_free_local_addr_list.exit

for.body.i7:                                      ; preds = %list_del.exit.i12.for.body.i7_crit_edge, %sctp_free_addr_wq.exit.for.body.i7_crit_edge
  %pos.012.i = phi ptr [ %temp.014.i, %list_del.exit.i12.for.body.i7_crit_edge ], [ %12, %sctp_free_addr_wq.exit.for.body.i7_crit_edge ]
  %13 = ptrtoint ptr %pos.012.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %temp.014.i = load ptr, ptr %pos.012.i, align 4
  %call.i.i.i6 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.012.i) #18
  br i1 %call.i.i.i6, label %if.end.i.i.i10, label %for.body.i7.list_del.exit.i12_crit_edge

for.body.i7.list_del.exit.i12_crit_edge:          ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit.i12

if.end.i.i.i10:                                   ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i8 = getelementptr inbounds %struct.list_head, ptr %pos.012.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i8, align 4
  %16 = ptrtoint ptr %pos.012.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pos.012.i, align 4
  %prev1.i.i.i.i9 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i9, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i12

list_del.exit.i12:                                ; preds = %if.end.i.i.i10, %for.body.i7.list_del.exit.i12_crit_edge
  %20 = ptrtoint ptr %pos.012.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.012.i, align 4
  %prev.i.i11 = getelementptr inbounds %struct.list_head, ptr %pos.012.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i11, align 4
  tail call void @kfree(ptr noundef %pos.012.i) #18
  %cmp.i.not.i = icmp eq ptr %temp.014.i, %local_addr_list.i
  br i1 %cmp.i.not.i, label %list_del.exit.i12.sctp_free_local_addr_list.exit_crit_edge, label %list_del.exit.i12.for.body.i7_crit_edge

list_del.exit.i12.for.body.i7_crit_edge:          ; preds = %list_del.exit.i12
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i7

list_del.exit.i12.sctp_free_local_addr_list.exit_crit_edge: ; preds = %list_del.exit.i12
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_free_local_addr_list.exit

sctp_free_local_addr_list.exit:                   ; preds = %list_del.exit.i12.sctp_free_local_addr_list.exit_crit_edge, %sctp_free_addr_wq.exit.sctp_free_local_addr_list.exit_crit_edge
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %22 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %proc_net, align 4
  %call = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str.3, ptr noundef %23) #18
  %proc_net_sctp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 1
  %24 = ptrtoint ptr %proc_net_sctp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %proc_net_sctp, align 4
  %sctp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38
  %25 = ptrtoint ptr %sctp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sctp.i, align 8
  tail call void @free_percpu(ptr noundef %26) #18
  tail call void @sctp_sysctl_net_unregister(ptr noundef %net) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sysctl_net_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_proc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_dbg_objcnt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_addr_wq_timeout_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2488
  %addr_wq_lock = getelementptr i8, ptr %t, i32 56
  tail call void @_raw_spin_lock_bh(ptr noundef %addr_wq_lock) #18
  %addr_waitq = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %addr_waitq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_waitq, align 8
  %cmp.not162 = icmp eq ptr %1, %addr_waitq
  br i1 %cmp.not162, label %entry.for.end115_crit_edge, label %do.body.lr.ph

entry.for.end115_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end115

do.body.lr.ph:                                    ; preds = %entry
  %auto_asconf_splist = getelementptr i8, ptr %t, i32 48
  br label %do.body

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %do.body.lr.ph
  %addrw.0163 = phi ptr [ %1, %do.body.lr.ph ], [ %temp.0165, %list_del.exit.do.body_crit_edge ]
  %2 = ptrtoint ptr %addrw.0163 to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.0165 = load ptr, ptr %addrw.0163, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug595, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_addr_wq_timeout_handler, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !220

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addrw.0163, i32 0, i32 2
  %state = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addrw.0163, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 4
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug595, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef %addr_waitq, ptr noundef %a, i32 noundef %conv, ptr noundef %addrw.0163) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %a18 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addrw.0163, i32 0, i32 2
  %5 = ptrtoint ptr %a18 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %a18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %6)
  %cmp20 = icmp eq i16 %6, 10
  br i1 %cmp20, label %if.then22, label %do.end.if.end58_crit_edge

do.end.if.end58_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.then22:                                        ; preds = %do.end
  %sin6_addr = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addrw.0163, i32 0, i32 2, i32 0, i32 3
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #18
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end27, label %if.then22.free_next_crit_edge

if.then22.free_next_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_next

if.end27:                                         ; preds = %if.then22
  %call30 = tail call i32 @ipv6_chk_addr(ptr noundef %add.ptr, ptr noundef %sin6_addr, ptr noundef null, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end27.if.end58_crit_edge

if.end27.if.end58_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end27
  %state33 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addrw.0163, i32 0, i32 3
  %7 = ptrtoint ptr %state33 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp35 = icmp eq i8 %8, 0
  br i1 %cmp35, label %if.then37, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.then37:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_addr_wq_timeout_handler, %if.then50)) #18
          to label %cleanup.thread153 [label %if.then50], !srcloc !220

if.then50:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug596, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27, i32 noundef 500) #18
  br label %cleanup.thread153

cleanup.thread153:                                ; preds = %if.then50, %if.then37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 50
  %call56 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #18
  br label %for.end115

if.end58:                                         ; preds = %land.lhs.true.if.end58_crit_edge, %if.end27.if.end58_crit_edge, %do.end.if.end58_crit_edge
  %10 = ptrtoint ptr %auto_asconf_splist to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn156 = load ptr, ptr %auto_asconf_splist, align 8
  %cmp67.not158 = icmp eq ptr %.pn156, %auto_asconf_splist
  br i1 %cmp67.not158, label %if.end58.free_next_crit_edge, label %if.end58.for.body71_crit_edge

if.end58.for.body71_crit_edge:                    ; preds = %if.end58
  br label %for.body71

if.end58.free_next_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_next

for.body71:                                       ; preds = %cleanup100.for.body71_crit_edge, %if.end58.for.body71_crit_edge
  %.pn159 = phi ptr [ %.pn, %cleanup100.for.body71_crit_edge ], [ %.pn156, %if.end58.for.body71_crit_edge ]
  %sp.0160 = getelementptr i8, ptr %.pn159, i32 -1528
  %call73 = tail call i32 @sctp_is_ep_boundall(ptr noundef %sp.0160) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %for.body71.cleanup100_crit_edge, label %if.end76

for.body71.cleanup100_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup100

if.end76:                                         ; preds = %for.body71
  %sk_lock = getelementptr i8, ptr %.pn159, i32 -1404
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #18
  %call77 = tail call i32 @sctp_asconf_mgmt(ptr noundef %sp.0160, ptr noundef %addrw.0163) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.body81, label %if.end76.if.end97_crit_edge

if.end76.if.end97_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end97

do.body81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_addr_wq_timeout_handler, %if.then93)) #18
          to label %if.end97 [label %if.then93], !srcloc !220

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug597, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27) #18
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %do.body81, %if.end76.if.end97_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #18
  br label %cleanup100

cleanup100:                                       ; preds = %if.end97, %for.body71.cleanup100_crit_edge
  %11 = ptrtoint ptr %.pn159 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn159, align 8
  %cmp67.not = icmp eq ptr %.pn, %auto_asconf_splist
  br i1 %cmp67.not, label %cleanup100.free_next_crit_edge, label %cleanup100.for.body71_crit_edge

cleanup100.for.body71_crit_edge:                  ; preds = %cleanup100
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body71

cleanup100.free_next_crit_edge:                   ; preds = %cleanup100
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_next

free_next:                                        ; preds = %cleanup100.free_next_crit_edge, %if.end58.free_next_crit_edge, %if.then22.free_next_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %addrw.0163) #18
  br i1 %call.i.i, label %if.end.i.i, label %free_next.list_del.exit_crit_edge

free_next.list_del.exit_crit_edge:                ; preds = %free_next
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %free_next
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %addrw.0163, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %addrw.0163 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addrw.0163, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %free_next.list_del.exit_crit_edge
  %18 = ptrtoint ptr %addrw.0163 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %addrw.0163, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %addrw.0163, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %addrw.0163) #18
  %cmp.not = icmp eq ptr %temp.0165, %addr_waitq
  br i1 %cmp.not, label %list_del.exit.for.end115_crit_edge, label %list_del.exit.do.body_crit_edge

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

list_del.exit.for.end115_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end115

for.end115:                                       ; preds = %list_del.exit.for.end115_crit_edge, %cleanup.thread153, %entry.for.end115_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_wq_lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sysctl_net_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_is_ep_boundall(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_asconf_mgmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v4_xmit(ptr noundef %skb, ptr noundef %t) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %dst1 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %0 = ptrtoint ptr %dst1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dst_clone.exit_crit_edge, label %if.then.i

entry.dst_clone.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %dst_clone.exit

if.then.i:                                        ; preds = %entry
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !224
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #18
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #18, !srcloc !225
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !226
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 231, i32 noundef 9, ptr noundef null) #18
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %entry.dst_clone.exit_crit_edge
  %fl = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tos = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tos, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_v4_xmit.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_v4_xmit, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !220

if.then:                                          ; preds = %dst_clone.exit
  call void @__sanitizer_cov_trace_pc() #20
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %saddr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 1
  %daddr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_v4_xmit.__UNIQUE_ID_ddebug601, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef %skb, i32 noundef %9, ptr noundef %saddr, ptr noundef %daddr) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %dst_clone.exit
  %dscp6 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 31
  %10 = ptrtoint ptr %dscp6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dscp6, align 8
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  %and11 = and i8 %11, -4
  %spec.select = select i1 %tobool7.not, i8 %7, i8 %and11
  %param_flags = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 35
  %13 = ptrtoint ptr %param_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %param_flags, align 4
  %15 = trunc i32 %14 to i8
  %16 = lshr i8 %15, 2
  %conv16 = and i8 %16, 2
  %pmtudisc = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 11
  %17 = ptrtoint ptr %pmtudisc to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv16, ptr %pmtudisc, align 1
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !227
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %19 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_net.i, align 4
  %sctp = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 38
  %21 = ptrtoint ptr %sctp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sctp, align 8
  %arrayidx = getelementptr [34 x i32], ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %arrayidx to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %arrayidx37 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx37, align 4
  %add = add i32 %29, %23
  %30 = inttoptr i32 %add to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add38 = add i32 %32, 1
  store i32 %add38, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !228
  %and.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool49.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool49.not, label %if.then58, label %do.end.do.end61_crit_edge, !prof !229

do.end.do.end61_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end61

if.then58:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.end.do.end61_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #18, !srcloc !230
  %encap_port = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 28
  %34 = ptrtoint ptr %encap_port to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %encap_port, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool68.not = icmp eq i16 %35, 0
  br i1 %tobool68.not, label %do.end61.if.then71_crit_edge, label %lor.lhs.false

do.end61.if.then71_crit_edge:                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then71

lor.lhs.false:                                    ; preds = %do.end61
  %udp_port = getelementptr inbounds %struct.sctp_sock, ptr %5, i32 0, i32 16
  %36 = ptrtoint ptr %udp_port to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %udp_port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool70.not = icmp eq i16 %37, 0
  br i1 %tobool70.not, label %lor.lhs.false.if.then71_crit_edge, label %if.end74

lor.lhs.false.if.then71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then71

if.then71:                                        ; preds = %lor.lhs.false.if.then71_crit_edge, %do.end61.if.then71_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %38 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %39 = ptrtoint ptr %1 to i32
  %40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %40, align 8
  %call73 = tail call i32 @__ip_queue_xmit(ptr noundef %5, ptr noundef %skb, ptr noundef %fl, i8 noundef zeroext %spec.select) #18
  br label %cleanup

if.end74:                                         ; preds = %lor.lhs.false
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %42 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.i.not = icmp eq i16 %45, 0
  br i1 %tobool.i.not, label %if.end74.if.end78_crit_edge, label %if.then76

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end78

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 8
  %46 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gso_type, align 8
  %or = or i32 %47, 2048
  store i32 %or, ptr %gso_type, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end74.if.end78_crit_edge
  %48 = ptrtoint ptr %pmtudisc to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %pmtudisc, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %49, label %if.end78.if.end83_crit_edge [
    i8 2, label %if.end78.land.lhs.true_crit_edge
    i8 1, label %land.rhs.i
  ]

if.end78.land.lhs.true_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end83

land.rhs.i:                                       ; preds = %if.end78
  %rt_mtu_locked.i.i = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 9
  %51 = ptrtoint ptr %rt_mtu_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i.i = load i32, ptr %rt_mtu_locked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %ip_dont_fragment.exit, label %land.rhs.i.if.end83_crit_edge

land.rhs.i.if.end83_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end83

ip_dont_fragment.exit:                            ; preds = %land.rhs.i
  %_metrics.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %_metrics.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %53, -4
  %54 = inttoptr i32 %and.i.i.i.i.i to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %57 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool80.not.not = icmp eq i32 %57, 0
  br i1 %tobool80.not.not, label %ip_dont_fragment.exit.land.lhs.true_crit_edge, label %ip_dont_fragment.exit.if.end83_crit_edge

ip_dont_fragment.exit.if.end83_crit_edge:         ; preds = %ip_dont_fragment.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end83

ip_dont_fragment.exit.land.lhs.true_crit_edge:    ; preds = %ip_dont_fragment.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %ip_dont_fragment.exit.land.lhs.true_crit_edge, %if.end78.land.lhs.true_crit_edge
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %58 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load = load i16, ptr %ignore_df, align 8
  %59 = shl i16 %bf.load, 2
  %60 = and i16 %59, 16384
  %61 = xor i16 %60, 16384
  br label %if.end83

if.end83:                                         ; preds = %land.lhs.true, %ip_dont_fragment.exit.if.end83_crit_edge, %land.rhs.i.if.end83_crit_edge, %if.end78.if.end83_crit_edge
  %df.0 = phi i16 [ 0, %ip_dont_fragment.exit.if.end83_crit_edge ], [ %61, %land.lhs.true ], [ 0, %land.rhs.i.if.end83_crit_edge ], [ 0, %if.end78.if.end83_crit_edge ]
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %62 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load84 = load i16, ptr %encapsulation, align 8
  %bf.set = or i16 %bf.load84, 4
  store i16 %bf.set, ptr %encapsulation, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %65 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %66 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %inner_mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %67 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i, ptr %inner_mac_header.i, align 2
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %68 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i, ptr %inner_transport_header.i, align 2
  %69 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -124, ptr %69, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %71 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %bf.load.i140 = load i32, ptr %inner_protocol_type.i, align 2
  %bf.set.i141 = or i32 %bf.load.i140, 4194304
  store i32 %bf.set.i141, ptr %inner_protocol_type.i, align 2
  %saddr86 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 1
  %72 = ptrtoint ptr %saddr86 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %saddr86, align 8
  %daddr87 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 5, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %daddr87 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %daddr87, align 4
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %76 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i142 = and i32 %77, -4
  %78 = inttoptr i32 %and.i.i142 to ptr
  %arrayidx.i.i = getelementptr i32, ptr %78, i32 9
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i = icmp eq i32 %80, 0
  br i1 %cmp.i, label %if.then.i144, label %if.end83.ip4_dst_hoplimit.exit_crit_edge

if.end83.ip4_dst_hoplimit.exit_crit_edge:         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #20
  br label %ip4_dst_hoplimit.exit

if.then.i144:                                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #20
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 127
  %83 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nd_net.i.i, align 4
  %sysctl_ip_default_ttl.i = getelementptr inbounds %struct.net, ptr %84, i32 0, i32 35, i32 37
  %85 = ptrtoint ptr %sysctl_ip_default_ttl.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %sysctl_ip_default_ttl.i, align 2
  %conv.i143 = zext i8 %86 to i32
  br label %ip4_dst_hoplimit.exit

ip4_dst_hoplimit.exit:                            ; preds = %if.then.i144, %if.end83.ip4_dst_hoplimit.exit_crit_edge
  %hoplimit.0.i = phi i32 [ %conv.i143, %if.then.i144 ], [ %80, %if.end83.ip4_dst_hoplimit.exit_crit_edge ]
  %conv89 = trunc i32 %hoplimit.0.i to i8
  %87 = ptrtoint ptr %udp_port to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %udp_port, align 4
  %89 = ptrtoint ptr %encap_port to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %encap_port, align 8
  tail call void @udp_tunnel_xmit_skb(ptr noundef %1, ptr noundef %5, ptr noundef %skb, i32 noundef %73, i32 noundef %75, i8 noundef zeroext %spec.select, i8 noundef zeroext %conv89, i16 noundef zeroext %df.0, i16 noundef zeroext %88, i16 noundef zeroext %90, i1 noundef zeroext false, i1 noundef zeroext false) #18
  br label %cleanup

cleanup:                                          ; preds = %ip4_dst_hoplimit.exit, %if.then71
  %retval.0 = phi i32 [ 0, %ip4_dst_hoplimit.exit ], [ %call73, %if.then71 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_v4_get_dst(ptr nocapture noundef %t, ptr noundef readonly %saddr, ptr noundef %fl, ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  %_fl = alloca %struct.flowi, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %_fl) #18
  %tos2 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %2 = ptrtoint ptr %tos2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tos2, align 4
  %dscp = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 31
  %4 = ptrtoint ptr %dscp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dscp, align 8
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %and5 = and i8 %5, -4
  %spec.select = select i1 %tobool.not, i8 %3, i8 %and5
  %7 = call ptr @memset(ptr %_fl, i32 0, i32 88)
  %sin_addr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 6, i32 0, i32 2
  %8 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr, align 4
  %daddr7 = getelementptr inbounds %struct.flowi4, ptr %_fl, i32 0, i32 2
  %10 = ptrtoint ptr %daddr7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %daddr7, align 4
  %sin_port = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 6, i32 0, i32 1
  %11 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sin_port, align 2
  %uli = getelementptr inbounds %struct.flowi4, ptr %_fl, i32 0, i32 3
  %13 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %uli, align 8
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %_fl, i32 0, i32 5
  %14 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -124, ptr %flowic_proto, align 2
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %entry.if.end22_crit_edge, label %if.then9

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %15 = and i8 %spec.select, 30
  %sk12 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %sk12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk12, align 4
  %18 = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %21 = lshr i32 %20, 13
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %or = or i8 %23, %15
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %_fl, i32 0, i32 3
  %24 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or, ptr %flowic_tos, align 4
  %25 = load ptr, ptr %sk12, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %skc_bound_dev_if, align 4
  %28 = ptrtoint ptr %_fl to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %_fl, align 8
  %bind_addr = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %bind_addr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bind_addr, align 4
  %sport = getelementptr inbounds %struct.anon.107, ptr %uli, i32 0, i32 1
  %31 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %sport, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then9, %entry.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %saddr, null
  br i1 %tobool23.not, label %if.end22.do.body_crit_edge, label %if.then24

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then24:                                        ; preds = %if.end22
  %sin_addr25 = getelementptr inbounds %struct.sockaddr_in, ptr %saddr, i32 0, i32 2
  %32 = ptrtoint ptr %sin_addr25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sin_addr25, align 4
  %saddr27 = getelementptr inbounds %struct.flowi4, ptr %_fl, i32 0, i32 1
  %34 = ptrtoint ptr %saddr27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %saddr27, align 8
  %sport29 = getelementptr inbounds %struct.anon.107, ptr %uli, i32 0, i32 1
  %35 = ptrtoint ptr %sport29 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sport29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool30.not = icmp eq i16 %36, 0
  br i1 %tobool30.not, label %if.then31, label %if.then24.do.body_crit_edge

if.then24.do.body_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  %sin_port32 = getelementptr inbounds %struct.sockaddr_in, ptr %saddr, i32 0, i32 1
  %37 = ptrtoint ptr %sin_port32 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sin_port32, align 2
  %39 = ptrtoint ptr %sport29 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %sport29, align 2
  br label %do.body

do.body:                                          ; preds = %if.then31, %if.then24.do.body_crit_edge, %if.end22.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_v4_get_dst.__UNIQUE_ID_ddebug588, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_v4_get_dst, %if.then41)) #18
          to label %do.end [label %if.then41], !srcloc !220

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %saddr43 = getelementptr inbounds %struct.flowi4, ptr %_fl, i32 0, i32 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_v4_get_dst.__UNIQUE_ID_ddebug588, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, ptr noundef %daddr7, ptr noundef %saddr43) #18
  br label %do.end

do.end:                                           ; preds = %if.then41, %do.body
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %40 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skc_net.i, align 4
  %call.i342 = call ptr @ip_route_output_flow(ptr noundef %41, ptr noundef nonnull %_fl, ptr noundef null) #18
  %cmp.i = icmp ugt ptr %call.i342, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end51.thread, label %if.end51

if.end51:                                         ; preds = %do.end
  %dst50 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %42 = ptrtoint ptr %dst50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i342, ptr %dst50, align 8
  %43 = call ptr @memcpy(ptr %fl, ptr %_fl, i32 88)
  %tobool23.not.not = xor i1 %tobool23.not, true
  %brmerge = or i1 %tobool8.not, %tobool23.not.not
  br i1 %brmerge, label %if.end51.out_crit_edge, label %if.end55

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end51.thread:                                  ; preds = %do.end
  %tobool23.not.not373 = xor i1 %tobool23.not, true
  %brmerge374 = or i1 %tobool8.not, %tobool23.not.not373
  br i1 %brmerge374, label %if.end51.thread.if.else229_crit_edge, label %if.end51.thread.if.end106_crit_edge

if.end51.thread.if.end106_crit_edge:              ; preds = %if.end51.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

if.end51.thread.if.else229_crit_edge:             ; preds = %if.end51.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else229

if.end55:                                         ; preds = %if.end51
  %tobool58.not = icmp eq ptr %call.i342, null
  br i1 %tobool58.not, label %if.end55.if.end106_crit_edge, label %if.then59

if.end55.if.end106_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

if.then59:                                        ; preds = %if.end55
  %bind_addr57 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %bind_addr57 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %bind_addr57, align 4
  %saddr1.i = getelementptr inbounds %struct.flowi4, ptr %_fl, i32 0, i32 1
  %46 = ptrtoint ptr %saddr1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %saddr1.i, align 8
  %48 = call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !218
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.then59.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then59.rcu_read_lock.exit_crit_edge:           ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then59
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #18
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then59.rcu_read_lock.exit_crit_edge
  %call62 = call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end71_crit_edge

rcu_read_lock.exit.do.end71_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end71

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call64 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true.do.end71_crit_edge, label %land.lhs.true66

land.lhs.true.do.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end71

land.lhs.true66:                                  ; preds = %land.lhs.true
  %.b324 = load i1, ptr @sctp_v4_get_dst.__warned, align 1
  br i1 %.b324, label %land.lhs.true66.do.end71_crit_edge, label %if.then68

land.lhs.true66.do.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end71

if.then68:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @sctp_v4_get_dst.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 469, ptr noundef nonnull @.str.2) #18
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %land.lhs.true66.do.end71_crit_edge, %land.lhs.true.do.end71_crit_edge, %rcu_read_lock.exit.do.end71_crit_edge
  %address_list = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %laddr.0390 = load volatile ptr, ptr %address_list, align 4
  %cmp.not391 = icmp eq ptr %laddr.0390, %address_list
  br i1 %cmp.not391, label %do.end71.for.end_crit_edge, label %for.body.lr.ph

do.end71.for.end_crit_edge:                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end71
  %src_out_of_asoc_ok = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 70
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %laddr.0392 = phi ptr [ %laddr.0390, %for.body.lr.ph ], [ %laddr.0, %for.inc.for.body_crit_edge ]
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0392, i32 0, i32 4
  %53 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool79.not = icmp eq i8 %54, 0
  br i1 %tobool79.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false80

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

lor.lhs.false80:                                  ; preds = %for.body
  %state = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0392, i32 0, i32 3
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %state, align 4
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %56, label %land.lhs.true89 [
    i8 2, label %lor.lhs.false80.for.inc_crit_edge
    i8 1, label %lor.lhs.false80.if.end92_crit_edge
  ]

lor.lhs.false80.if.end92_crit_edge:               ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92

lor.lhs.false80.for.inc_crit_edge:                ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true89:                                  ; preds = %lor.lhs.false80
  %58 = ptrtoint ptr %src_out_of_asoc_ok to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %src_out_of_asoc_ok, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool90.not = icmp eq i32 %59, 0
  br i1 %tobool90.not, label %land.lhs.true89.for.inc_crit_edge, label %land.lhs.true89.if.end92_crit_edge

land.lhs.true89.if.end92_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92

land.lhs.true89.for.inc_crit_edge:                ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end92:                                         ; preds = %land.lhs.true89.if.end92_crit_edge, %lor.lhs.false80.if.end92_crit_edge
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0392, i32 0, i32 2
  %60 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %61)
  %cmp.not.i = icmp eq i16 %61, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end92.for.inc_crit_edge

if.end92.for.inc_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end.i:                                         ; preds = %if.end92
  %sin_port5.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0392, i32 0, i32 2, i32 0, i32 1
  %62 = ptrtoint ptr %sin_port5.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sin_port5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %63)
  %cmp7.not.i = icmp eq i16 %45, %63
  br i1 %cmp7.not.i, label %sctp_v4_cmp_addr.exit, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

sctp_v4_cmp_addr.exit:                            ; preds = %if.end.i
  %sin_addr11.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0392, i32 0, i32 2, i32 0, i32 2
  %64 = ptrtoint ptr %sin_addr11.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sin_addr11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %65)
  %cmp13.not.i.not = icmp eq i32 %47, %65
  br i1 %cmp13.not.i.not, label %sctp_v4_cmp_addr.exit.out_unlock_crit_edge, label %sctp_v4_cmp_addr.exit.for.inc_crit_edge

sctp_v4_cmp_addr.exit.for.inc_crit_edge:          ; preds = %sctp_v4_cmp_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

sctp_v4_cmp_addr.exit.out_unlock_crit_edge:       ; preds = %sctp_v4_cmp_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

for.inc:                                          ; preds = %sctp_v4_cmp_addr.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.end92.for.inc_crit_edge, %land.lhs.true89.for.inc_crit_edge, %lor.lhs.false80.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %66 = ptrtoint ptr %laddr.0392 to i32
  call void @__asan_load4_noabort(i32 %66)
  %laddr.0 = load volatile ptr, ptr %laddr.0392, align 4
  %cmp.not = icmp eq ptr %laddr.0, %address_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end71.for.end_crit_edge
  %call.i346 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i346, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i349

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i349:                               ; preds = %for.end
  %call1.i347 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i347)
  %tobool.not.i348 = icmp eq i32 %call1.i347, 0
  br i1 %tobool.not.i348, label %land.lhs.true.i349.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i351

land.lhs.true.i349.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i349
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i351:                              ; preds = %land.lhs.true.i349
  %.b4.i350 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i350, label %land.lhs.true2.i351.rcu_read_unlock.exit_crit_edge, label %if.then.i352

land.lhs.true2.i351.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i351
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i352:                                     ; preds = %land.lhs.true2.i351
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i352, %land.lhs.true2.i351.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i349.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !219
  %67 = call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i353 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i353 to ptr
  %preempt_count.i.i.i.i354 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i354 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i354, align 4
  %sub.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i354, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @dst_release(ptr noundef nonnull %call.i342) #18
  br label %if.end106

if.end106:                                        ; preds = %rcu_read_unlock.exit, %if.end55.if.end106_crit_edge, %if.end51.thread.if.end106_crit_edge
  %71 = call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i325 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i325 to ptr
  %preempt_count.i.i.i.i326 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i326 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i326, align 4
  %add.i.i.i327 = add i32 %74, 1
  store volatile i32 %add.i.i.i327, ptr %preempt_count.i.i.i.i326, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !218
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i328 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i328, label %if.end106.rcu_read_lock.exit335_crit_edge, label %land.lhs.true.i331

if.end106.rcu_read_lock.exit335_crit_edge:        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit335

land.lhs.true.i331:                               ; preds = %if.end106
  %call1.i329 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i329)
  %tobool.not.i330 = icmp eq i32 %call1.i329, 0
  br i1 %tobool.not.i330, label %land.lhs.true.i331.rcu_read_lock.exit335_crit_edge, label %land.lhs.true2.i333

land.lhs.true.i331.rcu_read_lock.exit335_crit_edge: ; preds = %land.lhs.true.i331
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit335

land.lhs.true2.i333:                              ; preds = %land.lhs.true.i331
  %.b4.i332 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i332, label %land.lhs.true2.i333.rcu_read_lock.exit335_crit_edge, label %if.then.i334

land.lhs.true2.i333.rcu_read_lock.exit335_crit_edge: ; preds = %land.lhs.true2.i333
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit335

if.then.i334:                                     ; preds = %land.lhs.true2.i333
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit335

rcu_read_lock.exit335:                            ; preds = %if.then.i334, %land.lhs.true2.i333.rcu_read_lock.exit335_crit_edge, %land.lhs.true.i331.rcu_read_lock.exit335_crit_edge, %if.end106.rcu_read_lock.exit335_crit_edge
  %call108 = call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %land.lhs.true110, label %rcu_read_lock.exit335.do.end118_crit_edge

rcu_read_lock.exit335.do.end118_crit_edge:        ; preds = %rcu_read_lock.exit335
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end118

land.lhs.true110:                                 ; preds = %rcu_read_lock.exit335
  %call111 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %land.lhs.true110.do.end118_crit_edge, label %land.lhs.true113

land.lhs.true110.do.end118_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end118

land.lhs.true113:                                 ; preds = %land.lhs.true110
  %.b322323 = load i1, ptr @sctp_v4_get_dst.__warned.41, align 1
  br i1 %.b322323, label %land.lhs.true113.do.end118_crit_edge, label %if.then115

land.lhs.true113.do.end118_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end118

if.then115:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @sctp_v4_get_dst.__warned.41, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 490, ptr noundef nonnull @.str.2) #18
  br label %do.end118

do.end118:                                        ; preds = %if.then115, %land.lhs.true113.do.end118_crit_edge, %land.lhs.true110.do.end118_crit_edge, %rcu_read_lock.exit335.do.end118_crit_edge
  %address_list124 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6, i32 1
  %75 = ptrtoint ptr %address_list124 to i32
  call void @__asan_load4_noabort(i32 %75)
  %laddr.1393 = load volatile ptr, ptr %address_list124, align 4
  %cmp131.not394 = icmp eq ptr %laddr.1393, %address_list124
  br i1 %cmp131.not394, label %do.end118.out_unlock_crit_edge, label %for.body133.lr.ph

do.end118.out_unlock_crit_edge:                   ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

for.body133.lr.ph:                                ; preds = %do.end118
  %sport152 = getelementptr inbounds %struct.anon.107, ptr %uli, i32 0, i32 1
  %sk154 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %76 = and i8 %spec.select, 30
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %_fl, i32 0, i32 3
  %saddr3.i = getelementptr inbounds %struct.flowi4, ptr %_fl, i32 0, i32 1
  %dst190 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  br label %for.body133

for.body133:                                      ; preds = %cleanup.for.body133_crit_edge, %for.body133.lr.ph
  %laddr.1397 = phi ptr [ %laddr.1393, %for.body133.lr.ph ], [ %laddr.1, %cleanup.for.body133_crit_edge ]
  %dst.2395 = phi ptr [ null, %for.body133.lr.ph ], [ %dst.4, %cleanup.for.body133_crit_edge ]
  %valid134 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.1397, i32 0, i32 4
  %77 = ptrtoint ptr %valid134 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %valid134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool135.not = icmp eq i8 %78, 0
  br i1 %tobool135.not, label %for.body133.cleanup_crit_edge, label %if.end137

for.body133.cleanup_crit_edge:                    ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end137:                                        ; preds = %for.body133
  %state138 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.1397, i32 0, i32 3
  %79 = ptrtoint ptr %state138 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %state138, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %80)
  %cmp140.not = icmp eq i8 %80, 1
  br i1 %cmp140.not, label %lor.lhs.false142, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false142:                                 ; preds = %if.end137
  %a143 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.1397, i32 0, i32 2
  %81 = ptrtoint ptr %a143 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %a143, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %82)
  %cmp145.not = icmp eq i16 %82, 2
  br i1 %cmp145.not, label %if.end148, label %lor.lhs.false142.cleanup_crit_edge

lor.lhs.false142.cleanup_crit_edge:               ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end148:                                        ; preds = %lor.lhs.false142
  %sin_port150 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.1397, i32 0, i32 2, i32 0, i32 1
  %83 = ptrtoint ptr %sin_port150 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %sin_port150, align 2
  %85 = ptrtoint ptr %sport152 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %sport152, align 2
  %86 = ptrtoint ptr %sk154 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sk154, align 4
  %skc_bound_dev_if156 = getelementptr inbounds %struct.sock_common, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %skc_bound_dev_if156 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %skc_bound_dev_if156, align 4
  %90 = getelementptr inbounds %struct.sock_common, ptr %87, i32 0, i32 13
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %93 = lshr i32 %92, 13
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %or163 = or i8 %95, %76
  %96 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sin_addr, align 4
  %sin_addr168 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.1397, i32 0, i32 2, i32 0, i32 2
  %98 = ptrtoint ptr %sin_addr168 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sin_addr168, align 4
  %100 = ptrtoint ptr %_fl to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %89, ptr %_fl, align 8
  %101 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %or163, ptr %flowic_tos.i, align 4
  %102 = ptrtoint ptr %daddr7 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %97, ptr %daddr7, align 4
  %103 = ptrtoint ptr %saddr3.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %99, ptr %saddr3.i, align 8
  %104 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %skc_net.i, align 4
  %call.i357 = call ptr @ip_route_output_flow(ptr noundef %105, ptr noundef nonnull %_fl, ptr noundef null) #18
  %cmp.i358 = icmp ugt ptr %call.i357, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i358, label %if.end148.cleanup_crit_edge, label %if.end174

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end174:                                        ; preds = %if.end148
  %106 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %skc_net.i, align 4
  %108 = ptrtoint ptr %sin_addr168 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sin_addr168, align 4
  %call179 = call ptr @__ip_dev_find(ptr noundef %107, i32 noundef %109, i1 noundef zeroext false) #18
  %tobool180.not = icmp eq ptr %call179, null
  br i1 %tobool180.not, label %if.end174.if.then186_crit_edge, label %lor.lhs.false181

if.end174.if.then186_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then186

lor.lhs.false181:                                 ; preds = %if.end174
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call179, i32 0, i32 17
  %110 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ifindex, align 4
  %112 = ptrtoint ptr %_fl to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %_fl, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %113)
  %cmp184.not = icmp eq i32 %111, %113
  br i1 %cmp184.not, label %cleanup.thread, label %lor.lhs.false181.if.then186_crit_edge

lor.lhs.false181.if.then186_crit_edge:            ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then186

if.then186:                                       ; preds = %lor.lhs.false181.if.then186_crit_edge, %if.end174.if.then186_crit_edge
  %tobool187.not = icmp eq ptr %dst.2395, null
  br i1 %tobool187.not, label %if.then188, label %if.else

if.then188:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #20
  %114 = ptrtoint ptr %dst190 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i357, ptr %dst190, align 8
  %115 = call ptr @memcpy(ptr %fl, ptr %_fl, i32 88)
  br label %cleanup

if.else:                                          ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #20
  call void @dst_release(ptr noundef %call.i357) #18
  br label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #20
  call void @dst_release(ptr noundef %dst.2395) #18
  %116 = ptrtoint ptr %dst190 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i357, ptr %dst190, align 8
  %117 = call ptr @memcpy(ptr %fl, ptr %_fl, i32 88)
  br label %out_unlock

cleanup:                                          ; preds = %if.else, %if.then188, %if.end148.cleanup_crit_edge, %lor.lhs.false142.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %for.body133.cleanup_crit_edge
  %dst.4 = phi ptr [ %dst.2395, %for.body133.cleanup_crit_edge ], [ %dst.2395, %lor.lhs.false142.cleanup_crit_edge ], [ %dst.2395, %if.end137.cleanup_crit_edge ], [ %dst.2395, %if.end148.cleanup_crit_edge ], [ %dst.2395, %if.else ], [ %call.i357, %if.then188 ]
  %118 = ptrtoint ptr %laddr.1397 to i32
  call void @__asan_load4_noabort(i32 %118)
  %laddr.1 = load volatile ptr, ptr %laddr.1397, align 4
  %cmp131.not = icmp eq ptr %laddr.1, %address_list124
  br i1 %cmp131.not, label %cleanup.out_unlock_crit_edge, label %cleanup.for.body133_crit_edge

cleanup.for.body133_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body133

cleanup.out_unlock_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

out_unlock:                                       ; preds = %cleanup.out_unlock_crit_edge, %cleanup.thread, %do.end118.out_unlock_crit_edge, %sctp_v4_cmp_addr.exit.out_unlock_crit_edge
  %dst.5 = phi ptr [ %call.i357, %cleanup.thread ], [ null, %do.end118.out_unlock_crit_edge ], [ %dst.4, %cleanup.out_unlock_crit_edge ], [ %call.i342, %sctp_v4_cmp_addr.exit.out_unlock_crit_edge ]
  %call.i360 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i360, label %out_unlock.rcu_read_unlock.exit370_crit_edge, label %land.lhs.true.i363

out_unlock.rcu_read_unlock.exit370_crit_edge:     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit370

land.lhs.true.i363:                               ; preds = %out_unlock
  %call1.i361 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i361)
  %tobool.not.i362 = icmp eq i32 %call1.i361, 0
  br i1 %tobool.not.i362, label %land.lhs.true.i363.rcu_read_unlock.exit370_crit_edge, label %land.lhs.true2.i365

land.lhs.true.i363.rcu_read_unlock.exit370_crit_edge: ; preds = %land.lhs.true.i363
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit370

land.lhs.true2.i365:                              ; preds = %land.lhs.true.i363
  %.b4.i364 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i364, label %land.lhs.true2.i365.rcu_read_unlock.exit370_crit_edge, label %if.then.i366

land.lhs.true2.i365.rcu_read_unlock.exit370_crit_edge: ; preds = %land.lhs.true2.i365
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit370

if.then.i366:                                     ; preds = %land.lhs.true2.i365
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit370

rcu_read_unlock.exit370:                          ; preds = %if.then.i366, %land.lhs.true2.i365.rcu_read_unlock.exit370_crit_edge, %land.lhs.true.i363.rcu_read_unlock.exit370_crit_edge, %out_unlock.rcu_read_unlock.exit370_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !219
  %119 = call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i367 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i.i.i367 to ptr
  %preempt_count.i.i.i.i368 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %preempt_count.i.i.i.i368 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %preempt_count.i.i.i.i368, align 4
  %sub.i.i.i369 = add i32 %122, -1
  store volatile i32 %sub.i.i.i369, ptr %preempt_count.i.i.i.i368, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit370, %if.end51.out_crit_edge
  %dst.6 = phi ptr [ %dst.5, %rcu_read_unlock.exit370 ], [ %call.i342, %if.end51.out_crit_edge ]
  %tobool207.not = icmp eq ptr %dst.6, null
  br i1 %tobool207.not, label %out.if.else229_crit_edge, label %do.body209

out.if.else229_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else229

do.body209:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_v4_get_dst.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_v4_get_dst, %if.then221)) #18
          to label %if.end247 [label %if.then221], !srcloc !220

if.then221:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #20
  %daddr223 = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 2
  %saddr225 = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_v4_get_dst.__UNIQUE_ID_ddebug593, ptr noundef nonnull @.str.43, ptr noundef %daddr223, ptr noundef %saddr225) #18
  br label %if.end247

if.else229:                                       ; preds = %out.if.else229_crit_edge, %if.end51.thread.if.else229_crit_edge
  %dst230 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %123 = ptrtoint ptr %dst230 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %dst230, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_v4_get_dst.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_v4_get_dst, %if.then243)) #18
          to label %if.end247 [label %if.then243], !srcloc !220

if.then243:                                       ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_v4_get_dst.__UNIQUE_ID_ddebug594, ptr noundef nonnull @.str.45) #18
  br label %if.end247

if.end247:                                        ; preds = %if.then243, %if.else229, %if.then221, %do.body209
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %_fl) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v4_get_saddr(ptr nocapture noundef readnone %sk, ptr nocapture noundef %t, ptr nocapture noundef readonly %fl) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dst = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 18
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %saddr1 = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 19
  %2 = ptrtoint ptr %saddr1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2, ptr %saddr1, align 4
  %saddr2 = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 1
  %3 = ptrtoint ptr %saddr2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %saddr2, align 8
  %sin_addr = getelementptr inbounds %struct.sctp_transport, ptr %t, i32 0, i32 19, i32 0, i32 2
  %5 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sin_addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_v4_copy_addrlist(ptr noundef %addrlist, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !218
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %4 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i48 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50, label %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge

rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %__in_dev_get_rcu.exit

land.lhs.true.i50:                                ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i50.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i50.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #20
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i50
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i51

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__in_dev_get_rcu.exit

if.then.i51:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 232, ptr noundef nonnull @.str.46) #18
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i51, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i50.__in_dev_get_rcu.exit_crit_edge, %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %__in_dev_get_rcu.exit
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i52, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %if.then
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !219
  br label %cleanup

if.end:                                           ; preds = %__in_dev_get_rcu.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ifa_list, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end10_crit_edge

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @sctp_v4_copy_addrlist.__warned, align 1
  br i1 %.b47, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @sctp_v4_copy_addrlist.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 84, ptr noundef nonnull @.str.46) #18
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %tobool12.not73 = icmp eq ptr %7, null
  br i1 %tobool12.not73, label %do.end10.for.end_crit_edge, label %for.body.lr.ph

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end10
  %prev.i61 = getelementptr inbounds %struct.list_head, ptr %addrlist, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end34.for.body_crit_edge, %for.body.lr.ph
  %ifa.074 = phi ptr [ %7, %for.body.lr.ph ], [ %23, %do.end34.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 48) #22
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.then15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then15:                                        ; preds = %for.body
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %a to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %a, align 8
  %ifa_local = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.074, i32 0, i32 4
  %10 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifa_local, align 4
  %sin_addr = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sin_addr, align 4
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
  %16 = ptrtoint ptr %prev.i61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i61, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %17, ptr noundef %addrlist) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.for.inc_crit_edge

if.then15.for.inc_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %prev.i61 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %prev.i61, align 4
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

for.inc:                                          ; preds = %if.end.i.i, %if.then15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ifa_next = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.074, i32 0, i32 1
  %22 = ptrtoint ptr %ifa_next to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %ifa_next, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %for.inc.do.end34_crit_edge

for.inc.do.end34_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end34

land.lhs.true26:                                  ; preds = %for.inc
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.do.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b4546 = load i1, ptr @sctp_v4_copy_addrlist.__warned.47, align 1
  br i1 %.b4546, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @sctp_v4_copy_addrlist.__warned.47, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 84, ptr noundef nonnull @.str.46) #18
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true26.do.end34_crit_edge, %for.inc.do.end34_crit_edge
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %do.end34.for.end_crit_edge, label %do.end34.for.body_crit_edge

do.end34.for.body_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

do.end34.for.end_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %do.end34.for.end_crit_edge, %do.end10.for.end_crit_edge
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i62, label %for.end.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true.i65

for.end.rcu_read_unlock.exit72_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit72

land.lhs.true.i65:                                ; preds = %for.end
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit72

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit72

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit72

rcu_read_unlock.exit72:                           ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, %for.end.rcu_read_unlock.exit72_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !219
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit72, %rcu_read_unlock.exit
  %24 = tail call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i69 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i71 = add i32 %27, -1
  store volatile i32 %sub.i.i.i71, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_v4_cmp_addr(ptr nocapture noundef readonly %addr1, ptr nocapture noundef readonly %addr2) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr1, align 4
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not = icmp eq i16 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr1, i32 0, i32 1
  %4 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sin_port, align 2
  %sin_port5 = getelementptr inbounds %struct.sockaddr_in, ptr %addr2, i32 0, i32 1
  %6 = ptrtoint ptr %sin_port5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sin_port5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp7.not = icmp eq i16 %5, %7
  br i1 %cmp7.not, label %if.end10, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr1, i32 0, i32 2
  %8 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr, align 4
  %sin_addr11 = getelementptr inbounds %struct.sockaddr_in, ptr %addr2, i32 0, i32 2
  %10 = ptrtoint ptr %sin_addr11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sin_addr11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp13.not = icmp eq i32 %9, %11
  %. = zext i1 %cmp13.not to i32
  br label %return

return:                                           ; preds = %if.end10, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %., %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v4_from_skb(ptr nocapture noundef writeonly %addr, ptr nocapture noundef readonly %skb, i32 noundef %is_saddr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  store i16 2, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_saddr)
  %tobool.not = icmp eq i32 %is_saddr, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  %7 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %sin_port, align 2
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i15 = zext i16 %11 to i32
  %add.ptr.i.i16 = getelementptr i8, ptr %9, i32 %conv.i.i15
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i16, i32 0, i32 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dest = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dest, align 2
  %sin_port2 = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  %14 = ptrtoint ptr %sin_port2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %sin_port2, align 2
  %15 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i.i18 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i.i18, align 4
  %conv.i.i19 = zext i16 %18 to i32
  %add.ptr.i.i20 = getelementptr i8, ptr %16, i32 %conv.i.i19
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i20, i32 0, i32 9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink.in = phi ptr [ %daddr, %if.else ], [ %saddr, %if.then ]
  %19 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %.sink = load i32, ptr %.sink.in, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %20, align 4
  %__pad = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 3
  %22 = ptrtoint ptr %__pad to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 0, ptr %__pad, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v4_from_sk(ptr nocapture noundef writeonly %addr, ptr nocapture noundef readonly %sk) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 2, ptr %addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  %1 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %sin_port, align 2
  %skc_rcv_saddr = getelementptr inbounds %struct.anon.15, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %skc_rcv_saddr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %sin_addr, align 4
  %__pad = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 3
  %5 = ptrtoint ptr %__pad to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %__pad, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sctp_v4_from_addr_param(ptr nocapture noundef writeonly %addr, ptr nocapture noundef readonly %param, i16 noundef zeroext %port, i32 noundef %iif) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp = icmp ult i16 %1, 8
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2, ptr %addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  %3 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %port, ptr %sin_port, align 2
  %addr2 = getelementptr inbounds %struct.sctp_ipv4addr_param, ptr %param, i32 0, i32 1
  %4 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr2, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %6 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sin_addr, align 4
  %__pad = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 3
  %7 = ptrtoint ptr %__pad to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %__pad, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %8 = xor i1 %cmp, true
  ret i1 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_v4_to_addr_param(ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %param) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 5, ptr %param, align 4
  %length2 = getelementptr inbounds %struct.sctp_paramhdr, ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %length2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 8, ptr %length2, align 2
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %2 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sin_addr, align 4
  %addr3 = getelementptr inbounds %struct.sctp_ipv4addr_param, ptr %param, i32 0, i32 1
  %4 = ptrtoint ptr %addr3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %addr3, align 4
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v4_addr_valid(ptr nocapture noundef readonly %addr, ptr noundef readonly %sp, ptr noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sp, i32 0, i32 5
  %0 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %1 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %2 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sin_addr, align 4
  %and.i = and i32 %3, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  %4 = add i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  %6 = or i1 %5, %cmp.i
  %and.i31 = and i32 %3, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1067949312, i32 %and.i31)
  %cmp.i32 = icmp eq i32 %and.i31, -1067949312
  %or.cond34 = or i1 %cmp.i32, %6
  br i1 %or.cond34, label %if.end.return_crit_edge, label %if.end18

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end18:                                         ; preds = %if.end
  %tobool19.not = icmp eq ptr %skb, null
  br i1 %tobool19.not, label %if.end18.if.end24_crit_edge, label %land.lhs.true20

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

land.lhs.true20:                                  ; preds = %if.end18
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true20.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

land.lhs.true20.skb_rtable.exit_crit_edge:        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %land.lhs.true20
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !229

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %land.lhs.true20.skb_rtable.exit_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %and25.i.i = and i32 %11, -2
  %12 = inttoptr i32 %and25.i.i to ptr
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rt_flags, align 4
  %and = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %skb_rtable.exit.if.end24_crit_edge, label %skb_rtable.exit.return_crit_edge

skb_rtable.exit.return_crit_edge:                 ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

skb_rtable.exit.if.end24_crit_edge:               ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.end24:                                         ; preds = %skb_rtable.exit.if.end24_crit_edge, %if.end18.if.end24_crit_edge
  br label %return

return:                                           ; preds = %if.end24, %skb_rtable.exit.return_crit_edge, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %skb_rtable.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_v4_scope(ptr nocapture noundef readonly %addr) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin_addr, align 4
  %and.i = and i32 %1, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  %2 = add i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp ult i32 %2, 2
  %4 = or i1 %3, %cmp.i
  %and.i52 = and i32 %1, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1067949312, i32 %and.i52)
  %cmp.i53 = icmp eq i32 %and.i52, -1067949312
  %or.cond67 = or i1 %cmp.i53, %4
  br i1 %or.cond67, label %entry.if.end41_crit_edge, label %if.else

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.else:                                          ; preds = %entry
  %and.i54 = and i32 %1, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i54)
  %cmp.i55 = icmp eq i32 %and.i54, 2130706432
  br i1 %cmp.i55, label %if.else.if.end41_crit_edge, label %if.else16

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.else16:                                        ; preds = %if.else
  %and.i56 = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1442971648, i32 %and.i56)
  %cmp.i57 = icmp eq i32 %and.i56, -1442971648
  br i1 %cmp.i57, label %if.else16.if.end41_crit_edge, label %if.else21

if.else16.if.end41_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.else21:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %and.i54)
  %cmp.i59 = icmp eq i32 %and.i54, 167772160
  %and.i60 = and i32 %1, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1408237568, i32 %and.i60)
  %cmp.i61 = icmp eq i32 %and.i60, -1408237568
  %or.cond68 = or i1 %cmp.i59, %cmp.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1062731776, i32 %and.i56)
  %cmp.i63 = icmp eq i32 %and.i56, -1062731776
  %or.cond69 = select i1 %or.cond68, i1 true, i1 %cmp.i63
  br i1 %or.cond69, label %if.else21.if.end41_crit_edge, label %lor.lhs.false33

if.else21.if.end41_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

lor.lhs.false33:                                  ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #20
  %and.i64 = and i32 %1, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 -971898880, i32 %and.i64)
  %cmp.i65 = icmp eq i32 %and.i64, -971898880
  %spec.select = zext i1 %cmp.i65 to i32
  br label %if.end41

if.end41:                                         ; preds = %lor.lhs.false33, %if.else21.if.end41_crit_edge, %if.else16.if.end41_crit_edge, %if.else.if.end41_crit_edge, %entry.if.end41_crit_edge
  %retval1.0 = phi i32 [ 4, %entry.if.end41_crit_edge ], [ 3, %if.else.if.end41_crit_edge ], [ 2, %if.else16.if.end41_crit_edge ], [ 1, %if.else21.if.end41_crit_edge ], [ %spec.select, %lor.lhs.false33 ]
  ret i32 %retval1.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sctp_v4_inaddr_any(ptr nocapture noundef writeonly %addr, i16 noundef zeroext %port) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 2, ptr %addr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %1 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sin_addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %port, ptr %sin_port, align 2
  %__pad = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 3
  %3 = ptrtoint ptr %__pad to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %__pad, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_v4_is_any(ptr nocapture noundef readonly %addr) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v4_available(ptr nocapture noundef readonly %addr, ptr nocapture noundef readonly %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sp, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %2 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sin_addr, align 4
  %call1 = tail call i32 @inet_addr_type(ptr noundef %1, i32 noundef %3) #18
  %4 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sin_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp4.not = icmp eq i32 %call1, 2
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true5

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true5:                                   ; preds = %entry
  %freebind = getelementptr inbounds %struct.inet_sock, ptr %sp, i32 0, i32 12
  %6 = ptrtoint ptr %freebind to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %freebind, align 8
  %7 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %land.lhs.true7, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %sysctl_ip_nonlocal_bind = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 41
  %8 = ptrtoint ptr %sysctl_ip_nonlocal_bind to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sysctl_ip_nonlocal_bind, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true5.if.end_crit_edge, %entry.if.end_crit_edge
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sp, i32 0, i32 5
  %10 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load10 = load i8, ptr %skc_ipv6only, align 1
  %11 = lshr i8 %bf.load10, 2
  %.lobit = and i8 %11, 1
  %12 = xor i8 %.lobit, 1
  %13 = zext i8 %12 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true7.cleanup_crit_edge ], [ %13, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v4_skb_iif(ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.skb_rtable.exit.i_crit_edge, label %land.lhs.true.i.i.i

entry.skb_rtable.exit.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_rtable.exit.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge

land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_rtable.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, !prof !229

land.rhs.i.i.i.skb_rtable.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_rtable.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_rtable.exit.i

skb_rtable.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge, %entry.skb_rtable.exit.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i, label %skb_rtable.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

skb_rtable.exit.i.if.end.i_crit_edge:             ; preds = %skb_rtable.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %skb_rtable.exit.i
  %5 = inttoptr i32 %and25.i.i.i to ptr
  %rt_iif.i = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rt_iif.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rt_iif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.inet_iif.exit_crit_edge

land.lhs.true.i.inet_iif.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %inet_iif.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %skb_rtable.exit.i.if.end.i_crit_edge
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %8 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skb_iif.i, align 8
  br label %inet_iif.exit

inet_iif.exit:                                    ; preds = %if.end.i, %land.lhs.true.i.inet_iif.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.end.i ], [ %7, %land.lhs.true.i.inet_iif.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_v4_is_ce(ptr nocapture noundef readonly %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tos, align 1
  %6 = and i8 %5, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp.i = icmp eq i8 %6, 3
  %conv1.i = zext i1 %cmp.i to i32
  ret i32 %conv1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_v4_seq_dump_addr(ptr noundef %seq, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.50, ptr noundef %sin_addr) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v4_ecn_capable(ptr noundef %sk) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tos.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tos.i, align 4
  %2 = or i8 %1, 2
  store i8 %2, ptr %tos.i, align 4
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %4 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %entry.INET_ECN_xmit.exit_crit_edge, label %inet6_sk.exit.i

entry.INET_ECN_xmit.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %INET_ECN_xmit.exit

inet6_sk.exit.i:                                  ; preds = %entry
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %5 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pinet6.i.i, align 8
  %cmp.not.i = icmp eq ptr %6, null
  br i1 %cmp.not.i, label %inet6_sk.exit.i.INET_ECN_xmit.exit_crit_edge, label %if.then.i

inet6_sk.exit.i.INET_ECN_xmit.exit_crit_edge:     ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %INET_ECN_xmit.exit

if.then.i:                                        ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i11.i = zext i8 %8 to i32
  %shl.i.i12.i = shl nuw i32 1, %conv.i.i11.i
  %and.i.i13.i = and i32 %shl.i.i12.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13.i)
  %tobool.i.not.i14.i = icmp eq i32 %and.i.i13.i, 0
  %spec.select = select i1 %tobool.i.not.i14.i, ptr null, ptr %6
  %tclass.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select, i32 0, i32 12
  %9 = ptrtoint ptr %tclass.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tclass.i, align 1
  %11 = or i8 %10, 2
  store i8 %11, ptr %tclass.i, align 1
  br label %INET_ECN_xmit.exit

INET_ECN_xmit.exit:                               ; preds = %if.then.i, %inet6_sk.exit.i.INET_ECN_xmit.exit_crit_edge, %entry.INET_ECN_xmit.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_v4_ip_options_len(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !218
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %inet_opt1 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 5
  %4 = ptrtoint ptr %inet_opt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %inet_opt1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @sctp_v4_ip_options_len.__warned, align 1
  br i1 %.b15, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @sctp_v4_ip_options_len.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @.str.46) #18
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end9.if.end13_crit_edge, label %if.then12

do.end9.if.end13_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #20
  %optlen = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %optlen, align 4
  %conv = zext i8 %7 to i32
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end9.if.end13_crit_edge
  %len.0 = phi i32 [ %conv, %if.then12 ], [ 0, %do.end9.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !219
  %8 = tail call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret i32 %len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_queue_xmit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_xmit_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_free_buffer_pages() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_transport_hashtable_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sysctl_register() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_v4_pf_init() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sctp_pf_inet_specific, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %return.sink.split.i, label %entry.sctp_register_pf.exit_crit_edge

entry.sctp_register_pf.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_register_pf.exit

return.sink.split.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  store ptr @sctp_pf_inet, ptr @sctp_pf_inet_specific, align 4
  br label %sctp_register_pf.exit

sctp_register_pf.exit:                            ; preds = %return.sink.split.i, %entry.sctp_register_pf.exit_crit_edge
  %1 = load i16, ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 24), align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %1, label %sctp_register_pf.exit.sctp_register_af.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

sctp_register_pf.exit.sctp_register_af.exit_crit_edge: ; preds = %sctp_register_pf.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_register_af.exit

sw.bb.i:                                          ; preds = %sctp_register_pf.exit
  %3 = load ptr, ptr @sctp_af_v4_specific, align 4
  %tobool.not.i2 = icmp eq ptr %3, null
  br i1 %tobool.not.i2, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.sctp_register_af.exit_crit_edge

sw.bb.i.sctp_register_af.exit_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_register_af.exit

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sctp_register_pf.exit
  %4 = load ptr, ptr @sctp_af_v6_specific, align 4
  %tobool2.not.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i, label %sw.bb1.i.sw.epilog.i_crit_edge, label %sw.bb1.i.sctp_register_af.exit_crit_edge

sw.bb1.i.sctp_register_af.exit_crit_edge:         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_register_af.exit

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %sctp_af_v6_specific.sink.i = phi ptr [ @sctp_af_v4_specific, %sw.bb.i.sw.epilog.i_crit_edge ], [ @sctp_af_v6_specific, %sw.bb1.i.sw.epilog.i_crit_edge ]
  %5 = ptrtoint ptr %sctp_af_v6_specific.sink.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sctp_af_inet, ptr %sctp_af_v6_specific.sink.i, align 4
  store volatile ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), align 4
  store ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25, i32 1), align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), ptr noundef %6, ptr noundef nonnull @sctp_globals) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.epilog.i.sctp_register_af.exit_crit_edge

sw.epilog.i.sctp_register_af.exit_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_register_af.exit

if.end.i.i.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  store ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), ptr getelementptr inbounds (%struct.sctp_globals, ptr @sctp_globals, i32 0, i32 0, i32 1), align 4
  store ptr @sctp_globals, ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25, i32 1), align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr getelementptr inbounds (%struct.sctp_af, ptr @sctp_af_inet, i32 0, i32 25), ptr %6, align 4
  br label %sctp_register_af.exit

sctp_register_af.exit:                            ; preds = %if.end.i.i.i, %sw.epilog.i.sctp_register_af.exit_crit_edge, %sw.bb1.i.sctp_register_af.exit_crit_edge, %sw.bb.i.sctp_register_af.exit_crit_edge, %sctp_register_pf.exit.sctp_register_af.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_v6_pf_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sched_ops_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_v4_protosw_init() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @sctp_prot, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @inet_register_protosw(ptr noundef nonnull @sctp_seqpacket_protosw) #18
  tail call void @inet_register_protosw(ptr noundef nonnull @sctp_stream_protosw) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_v6_protosw_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_v4_add_protocol() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @sctp_inetaddr_notifier) #18
  %call1 = tail call i32 @inet_add_protocol(ptr noundef nonnull @sctp_protocol, i8 noundef zeroext -124) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %. = select i1 %cmp, i32 -11, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_v6_add_protocol() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_offload_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_inet_event_msgname(ptr nocapture noundef readonly %event, ptr noundef writeonly %msgname, ptr nocapture noundef writeonly %addr_len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msgname, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %event, align 1
  %2 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %addr_len, align 4
  %3 = ptrtoint ptr %msgname to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2, ptr %msgname, align 4
  %__pad.i = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 3
  %4 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %__pad.i, align 4
  %port = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %port, align 2
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 1
  %7 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %sin_port, align 2
  %sin_addr = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 5, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr, align 4
  %sin_addr3 = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 2
  %10 = ptrtoint ptr %sin_addr3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sin_addr3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_inet_skb_msgname(ptr nocapture noundef readonly %skb, ptr noundef writeonly %msgname, ptr nocapture noundef writeonly %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msgname, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %len, align 4
  %5 = ptrtoint ptr %msgname to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %msgname, align 4
  %__pad.i = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 3
  %6 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %__pad.i, align 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 1
  %9 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %sin_port, align 2
  %10 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i7 = zext i16 %12 to i32
  %add.ptr.i.i8 = getelementptr i8, ptr %10, i32 %conv.i.i7
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i8, i32 0, i32 8
  %13 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %saddr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %msgname, i32 0, i32 2
  %15 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sin_addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_inet_af_supported(i16 noundef zeroext %family, ptr nocapture noundef readnone %sp) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %family)
  %cmp = icmp eq i16 %family, 2
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_inet_cmp_addr(ptr nocapture noundef readonly %addr1, ptr nocapture noundef readonly %addr2, ptr nocapture noundef readnone %opt) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr1, align 4
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not = icmp eq i16 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr1, i32 0, i32 2
  %4 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sin_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %sin_addr6 = getelementptr inbounds %struct.sockaddr_in, ptr %addr2, i32 0, i32 2
  %6 = ptrtoint ptr %sin_addr6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sin_addr6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %lor.lhs.false.return_crit_edge, label %if.end11

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp16 = icmp eq i32 %5, %7
  %. = zext i1 %cmp16 to i32
  br label %return

return:                                           ; preds = %if.end11, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %lor.lhs.false.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ %., %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_inet_bind_verify(ptr nocapture noundef readonly %opt, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %opt, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i.i, align 4
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %2 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sin_addr.i, align 4
  %call1.i = tail call i32 @inet_addr_type(ptr noundef %1, i32 noundef %3) #18
  %4 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sin_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i)
  %cmp4.not.i = icmp eq i32 %call1.i, 2
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %entry.if.end.i_crit_edge, label %land.lhs.true5.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true5.i:                                 ; preds = %entry
  %freebind.i = getelementptr inbounds %struct.inet_sock, ptr %opt, i32 0, i32 12
  %6 = ptrtoint ptr %freebind.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %freebind.i, align 8
  %7 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true7.i, label %land.lhs.true5.i.if.end.i_crit_edge

land.lhs.true5.i.if.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true5.i
  %sysctl_ip_nonlocal_bind.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 41
  %8 = ptrtoint ptr %sysctl_ip_nonlocal_bind.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sysctl_ip_nonlocal_bind.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %land.lhs.true7.i.sctp_v4_available.exit_crit_edge, label %land.lhs.true7.i.if.end.i_crit_edge

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true7.i.sctp_v4_available.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sctp_v4_available.exit

if.end.i:                                         ; preds = %land.lhs.true7.i.if.end.i_crit_edge, %land.lhs.true5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %skc_ipv6only.i = getelementptr inbounds %struct.sock_common, ptr %opt, i32 0, i32 5
  %10 = ptrtoint ptr %skc_ipv6only.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load10.i = load i8, ptr %skc_ipv6only.i, align 1
  %11 = lshr i8 %bf.load10.i, 2
  %.lobit.i = and i8 %11, 1
  %12 = xor i8 %.lobit.i, 1
  %13 = zext i8 %12 to i32
  br label %sctp_v4_available.exit

sctp_v4_available.exit:                           ; preds = %if.end.i, %land.lhs.true7.i.sctp_v4_available.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %land.lhs.true7.i.sctp_v4_available.exit_crit_edge ], [ %13, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_inet_send_verify(ptr nocapture noundef readnone %opt, ptr nocapture noundef readnone %addr) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sctp_inet_supported_addrs(ptr nocapture noundef readnone %opt, ptr nocapture noundef writeonly %types) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %types to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 5, ptr %types, align 2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sctp_v4_create_accept_sk(ptr noundef %sk, ptr noundef %asoc, i1 noundef zeroext %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_prot, align 8
  %conv = zext i1 %kern to i32
  %call1 = tail call ptr @sk_alloc(ptr noundef %1, i32 noundef 2, i32 noundef 3264, ptr noundef %3, i32 noundef %conv) #18
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call1) #18
  tail call void @sctp_copy_sock(ptr noundef nonnull %call1, ptr noundef %sk, ptr noundef %asoc) #18
  %4 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i.i = and i32 %6, -257
  store i32 %and.i.i, ptr %4, align 4
  tail call void @sctp_v4_copy_ip_options(ptr noundef %sk, ptr noundef nonnull %call1)
  %sin_addr = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 5, i32 0, i32 2
  %7 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sin_addr, align 4
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call1, align 8
  %skc_prot7 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 8
  %10 = ptrtoint ptr %skc_prot7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_prot7, align 8
  %init = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init, align 4
  %call8 = tail call i32 %13(ptr noundef nonnull %call1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.out_crit_edge, label %if.then10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @sk_common_release(ptr noundef nonnull %call1) #18
  br label %out

out:                                              ; preds = %if.then10, %if.end.out_crit_edge, %entry.out_crit_edge
  %newsk.0 = phi ptr [ null, %if.then10 ], [ %call1, %if.end.out_crit_edge ], [ null, %entry.out_crit_edge ]
  ret ptr %newsk.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sctp_v4_addr_to_user(ptr nocapture noundef readnone %sp, ptr nocapture noundef writeonly %addr) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %__pad = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 3
  %0 = ptrtoint ptr %__pad to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %__pad, align 4
  ret i32 16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v4_to_sk_saddr(ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %sk) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin_addr, align 4
  %skc_rcv_saddr = getelementptr inbounds %struct.anon.15, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %skc_rcv_saddr, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_v4_to_sk_daddr(ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %sk) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin_addr, align 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %sk, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_v4_copy_ip_options(ptr noundef %sk, ptr noundef %newsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !218
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %inet_opt2 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 5
  %4 = ptrtoint ptr %inet_opt2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %inet_opt2, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @sctp_v4_copy_ip_options.__warned, align 1
  br i1 %.b47, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @sctp_v4_copy_ip_options.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 184, ptr noundef nonnull @.str.46) #18
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %do.end10.do.body33_crit_edge, label %if.then13

do.end10.do.body33_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body33

if.then13:                                        ; preds = %do.end10
  %optlen = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %optlen, align 4
  %conv = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv, 24
  %call14 = tail call ptr @sock_kmalloc(ptr noundef %newsk, i32 noundef %add, i32 noundef 2592) #18
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end23, label %if.then16

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %optlen, align 4
  %conv19 = zext i8 %9 to i32
  %add20 = add nuw nsw i32 %conv19, 24
  %10 = call ptr @memcpy(ptr %call14, ptr %5, i32 %add20)
  br label %do.body33

do.end23:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #21
  br label %do.body33

do.body33:                                        ; preds = %do.end23, %if.then16, %do.end10.do.body33_crit_edge
  %newopt.0 = phi ptr [ %call14, %if.then16 ], [ null, %do.end23 ], [ null, %do.end10.do.body33_crit_edge ]
  %inet_opt34 = getelementptr inbounds %struct.inet_sock, ptr %newsk, i32 0, i32 5
  %11 = ptrtoint ptr %inet_opt34 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %newopt.0, ptr %inet_opt34, align 4
  %call.i48 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i48, label %do.body33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i51

do.body33.rcu_read_unlock.exit_crit_edge:         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i51:                                ; preds = %do.body33
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, %do.body33.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !219
  %12 = tail call i32 @llvm.read_register.i32(metadata !208) #18
  %and.i.i.i.i.i55 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i56, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_copy_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_register_protosw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !74, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !95, !97, !99, !101, !103, !104, !106, !107, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !130, !131, !132, !134, !136, !138, !139, !140, !141, !143, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !164, !166, !168, !170, !172, !174, !175, !176, !177, !179, !180, !182, !183, !184, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !200, !202, !204, !205, !206, !207}
!llvm.named.register.sp = !{!208}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/protocol.c", i32 54, i32 1}
!2 = !{ptr @sctp_assocs_id_lock, !1, !"sctp_assocs_id_lock", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../net/sctp/protocol.c", i32 140, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/sctp/protocol.c", i32 739, i32 4}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sctp_addr_wq_mgmt.__UNIQUE_ID_ddebug598, !8, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!12 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/sctp/protocol.c", i32 759, i32 2}
!15 = !{ptr @sctp_addr_wq_mgmt.__UNIQUE_ID_ddebug599, !14, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sctp/protocol.c", i32 870, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sctp_udp_sock_start._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @sctp_udp_sock_start._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sctp/protocol.c", i32 890, i32 3}
!24 = !{ptr @sctp_udp_sock_start._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sctp_udp_sock_start._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__initcall__kmod_sctp__613_1716_sctp_init6, !27, !"__initcall__kmod_sctp__613_1716_sctp_init6", i1 false, i1 false}
!27 = !{!"../net/sctp/protocol.c", i32 1716, i32 1}
!28 = !{ptr @__exitcall_sctp_exit, !29, !"__exitcall_sctp_exit", i1 false, i1 false}
!29 = !{!"../net/sctp/protocol.c", i32 1717, i32 1}
!30 = !{ptr @__UNIQUE_ID_alias614, !31, !"__UNIQUE_ID_alias614", i1 false, i1 false}
!31 = !{!"../net/sctp/protocol.c", i32 1722, i32 1}
!32 = !{ptr @__UNIQUE_ID_alias615, !33, !"__UNIQUE_ID_alias615", i1 false, i1 false}
!33 = !{!"../net/sctp/protocol.c", i32 1723, i32 1}
!34 = !{ptr @__UNIQUE_ID_author616, !35, !"__UNIQUE_ID_author616", i1 false, i1 false}
!35 = !{!"../net/sctp/protocol.c", i32 1724, i32 1}
!36 = !{ptr @__UNIQUE_ID_description617, !37, !"__UNIQUE_ID_description617", i1 false, i1 false}
!37 = !{!"../net/sctp/protocol.c", i32 1725, i32 1}
!38 = !{ptr @__param_no_checksums, !39, !"__param_no_checksums", i1 false, i1 false}
!39 = !{!"../net/sctp/protocol.c", i32 1726, i32 1}
!40 = !{ptr @__UNIQUE_ID_no_checksumstype618, !39, !"__UNIQUE_ID_no_checksumstype618", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_no_checksums619, !42, !"__UNIQUE_ID_no_checksums619", i1 false, i1 false}
!42 = !{!"../net/sctp/protocol.c", i32 1727, i32 1}
!43 = !{ptr @__UNIQUE_ID_file620, !44, !"__UNIQUE_ID_file620", i1 false, i1 false}
!44 = !{!"../net/sctp/protocol.c", i32 1728, i32 1}
!45 = !{ptr @__UNIQUE_ID_license621, !44, !"__UNIQUE_ID_license621", i1 false, i1 false}
!46 = !{ptr @sctp_globals, !47, !"sctp_globals", i1 false, i1 false}
!47 = !{!"../net/sctp/protocol.c", i32 51, i32 21}
!48 = !{ptr @sctp_assocs_id, !49, !"sctp_assocs_id", i1 false, i1 false}
!49 = !{!"../net/sctp/protocol.c", i32 53, i32 12}
!50 = !{ptr @sctp_pf_inet6_specific, !51, !"sctp_pf_inet6_specific", i1 false, i1 false}
!51 = !{!"../net/sctp/protocol.c", i32 56, i32 24}
!52 = !{ptr @sctp_pf_inet_specific, !53, !"sctp_pf_inet_specific", i1 false, i1 false}
!53 = !{!"../net/sctp/protocol.c", i32 57, i32 24}
!54 = !{ptr @sctp_af_v4_specific, !55, !"sctp_af_v4_specific", i1 false, i1 false}
!55 = !{!"../net/sctp/protocol.c", i32 58, i32 24}
!56 = !{ptr @sctp_af_v6_specific, !57, !"sctp_af_v6_specific", i1 false, i1 false}
!57 = !{!"../net/sctp/protocol.c", i32 59, i32 24}
!58 = !{ptr @sctp_chunk_cachep, !59, !"sctp_chunk_cachep", i1 false, i1 false}
!59 = !{!"../net/sctp/protocol.c", i32 61, i32 20}
!60 = !{ptr @sctp_bucket_cachep, !61, !"sctp_bucket_cachep", i1 false, i1 false}
!61 = !{!"../net/sctp/protocol.c", i32 62, i32 20}
!62 = !{ptr @sysctl_sctp_mem, !63, !"sysctl_sctp_mem", i1 false, i1 false}
!63 = !{!"../net/sctp/protocol.c", i32 64, i32 6}
!64 = !{ptr @sysctl_sctp_rmem, !65, !"sysctl_sctp_rmem", i1 false, i1 false}
!65 = !{!"../net/sctp/protocol.c", i32 65, i32 5}
!66 = !{ptr @sysctl_sctp_wmem, !67, !"sysctl_sctp_wmem", i1 false, i1 false}
!67 = !{!"../net/sctp/protocol.c", i32 66, i32 5}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!70 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!74 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sctp_protocol, !76, !"sctp_protocol", i1 false, i1 false}
!76 = !{!"../net/sctp/protocol.c", i32 1158, i32 34}
!77 = !{ptr @sctp_inetaddr_notifier, !78, !"sctp_inetaddr_notifier", i1 false, i1 false}
!78 = !{!"../net/sctp/protocol.c", i32 1108, i32 30}
!79 = !{ptr @sctp_ctrlsock_ops, !80, !"sctp_ctrlsock_ops", i1 false, i1 false}
!80 = !{!"../net/sctp/protocol.c", i32 1467, i32 33}
!81 = !{ptr @.str.17, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/sctp/protocol.c", i32 1456, i32 3}
!83 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @sctp_ctrlsock_init._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @sctp_ctrlsock_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/sctp/protocol.c", i32 843, i32 3}
!88 = !{ptr @.str.20, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sctp_ctl_sock_init._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @sctp_ctl_sock_init._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @sctp_stream_protosw, !92, !"sctp_stream_protosw", i1 false, i1 false}
!92 = !{!"../net/sctp/protocol.c", i32 1143, i32 28}
!93 = !{ptr @inet_seqpacket_ops, !94, !"inet_seqpacket_ops", i1 false, i1 false}
!94 = !{!"../net/sctp/protocol.c", i32 1113, i32 31}
!95 = !{ptr @sctp_seqpacket_protosw, !96, !"sctp_seqpacket_protosw", i1 false, i1 false}
!96 = !{!"../net/sctp/protocol.c", i32 1136, i32 28}
!97 = !{ptr @sctp_defaults_ops, !98, !"sctp_defaults_ops", i1 false, i1 false}
!98 = !{!"../net/sctp/protocol.c", i32 1444, i32 33}
!99 = !{ptr @.str.21, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/sctp/protocol.c", i32 1317, i32 30}
!101 = !{ptr @sctp_defaults_init.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../net/sctp/protocol.c", i32 1408, i32 2}
!103 = !{ptr @.str.22, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sctp_defaults_init.__key.23, !105, !"__key", i1 false, i1 false}
!105 = !{!"../net/sctp/protocol.c", i32 1414, i32 2}
!106 = !{ptr @.str.24, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @sctp_defaults_init.__key.25, !108, !"__key", i1 false, i1 false}
!108 = !{!"../net/sctp/protocol.c", i32 1416, i32 2}
!109 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../net/sctp/protocol.c", i32 109, i32 2}
!112 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/sctp/protocol.c", i32 634, i32 3}
!114 = !{ptr @.str.28, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug595, !113, !"__UNIQUE_ID_ddebug595", i1 false, i1 false}
!116 = !{ptr @.str.29, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/sctp/protocol.c", i32 653, i32 5}
!119 = !{ptr @sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug596, !118, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!120 = !{ptr @.str.31, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.32, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/sctp/protocol.c", i32 673, i32 5}
!123 = !{ptr @sctp_addr_wq_timeout_handler.__UNIQUE_ID_ddebug597, !122, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!124 = !{ptr @.str.33, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sctp_af_inet, !126, !"sctp_af_inet", i1 false, i1 false}
!126 = !{!"../net/sctp/protocol.c", i32 1166, i32 23}
!127 = !{ptr @.str.34, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/sctp/protocol.c", i32 1058, i32 2}
!129 = !{ptr @.str.35, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @sctp_v4_xmit.__UNIQUE_ID_ddebug601, !128, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!131 = !{ptr @.str.36, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.37, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/net/dst.h", i32 231, i32 2}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/net/dst.h", i32 161, i32 2}
!136 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/sctp/protocol.c", i32 445, i32 2}
!138 = !{ptr @.str.39, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @sctp_v4_get_dst.__UNIQUE_ID_ddebug588, !137, !"__UNIQUE_ID_ddebug588", i1 false, i1 false}
!140 = !{ptr @.str.40, !137, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../net/sctp/protocol.c", i32 469, i32 3}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../net/sctp/protocol.c", i32 490, i32 2}
!145 = !{ptr @.str.42, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/sctp/protocol.c", i32 537, i32 3}
!147 = !{ptr @sctp_v4_get_dst.__UNIQUE_ID_ddebug593, !146, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!148 = !{ptr @.str.43, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.44, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/sctp/protocol.c", i32 541, i32 3}
!151 = !{ptr @sctp_v4_get_dst.__UNIQUE_ID_ddebug594, !150, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!152 = !{ptr @.str.45, !150, !"<string literal>", i1 false, i1 false}
!153 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!154 = !{!"../net/sctp/protocol.c", i32 84, i32 2}
!155 = !{ptr @.str.46, !154, !"<string literal>", i1 false, i1 false}
!156 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!159 = !{ptr @.str.48, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.49, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!162 = !{ptr @.str.50, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/sctp/protocol.c", i32 617, i32 18}
!164 = distinct !{null, !165, !"__warned", i1 false, i1 false}
!165 = !{!"../net/sctp/protocol.c", i32 206, i32 13}
!166 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/sctp/protocol.c", i32 1489, i32 41}
!168 = !{ptr @.str.52, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/sctp/protocol.c", i32 1496, i32 40}
!170 = !{ptr @sctp_init.__key, !171, !"__key", i1 false, i1 false}
!171 = !{!"../net/sctp/protocol.c", i32 1503, i32 11}
!172 = !{ptr @.str.53, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/sctp/protocol.c", i32 1560, i32 3}
!174 = !{ptr @.str.54, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @sctp_init._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @sctp_init._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @sctp_init.__key.55, !178, !"__key", i1 false, i1 false}
!178 = !{!"../net/sctp/protocol.c", i32 1565, i32 3}
!179 = !{ptr @.str.56, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.58, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/sctp/protocol.c", i32 1580, i32 3}
!182 = !{ptr @sctp_init._entry.57, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @sctp_init._entry_ptr.59, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @sctp_init.__key.60, !185, !"__key", i1 false, i1 false}
!185 = !{!"../net/sctp/protocol.c", i32 1599, i32 3}
!186 = !{ptr @.str.61, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.63, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/sctp/protocol.c", i32 1607, i32 2}
!189 = !{ptr @sctp_init._entry.62, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @sctp_init._entry_ptr.64, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.66, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/sctp/protocol.c", i32 1643, i32 3}
!193 = !{ptr @sctp_init._entry.65, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @sctp_init._entry_ptr.67, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @xa_init_flags.__key, !196, !"__key", i1 false, i1 false}
!196 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!197 = !{ptr @.str.68, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @sctp_pf_inet, !199, !"sctp_pf_inet", i1 false, i1 false}
!199 = !{!"../net/sctp/protocol.c", i32 1091, i32 23}
!200 = distinct !{null, !201, !"__warned", i1 false, i1 false}
!201 = !{!"../net/sctp/protocol.c", i32 184, i32 13}
!202 = !{ptr @.str.69, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../net/sctp/protocol.c", i32 192, i32 4}
!204 = !{ptr @.str.70, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @sctp_v4_copy_ip_options._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @sctp_v4_copy_ip_options._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @__param_str_no_checksums, !39, !"__param_str_no_checksums", i1 false, i1 false}
!208 = !{!"sp"}
!209 = !{i32 1, !"wchar_size", i32 2}
!210 = !{i32 1, !"min_enum_size", i32 4}
!211 = !{i32 8, !"branch-target-enforcement", i32 0}
!212 = !{i32 8, !"sign-return-address", i32 0}
!213 = !{i32 8, !"sign-return-address-all", i32 0}
!214 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!215 = !{i32 7, !"uwtable", i32 1}
!216 = !{i32 7, !"frame-pointer", i32 2}
!217 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!218 = !{i64 2149401050}
!219 = !{i64 2149401316}
!220 = !{i64 2148998268, i64 2148998273, i64 2148998286, i64 2148998330, i64 2148998364, i64 2148998385}
!221 = !{!"auto-init"}
!222 = !{i32 0, i32 33}
!223 = !{i64 2151842487}
!224 = !{i64 2148384310}
!225 = !{i64 869930, i64 869955, i64 869977, i64 869993, i64 870005, i64 870025, i64 870049, i64 870065, i64 870077}
!226 = !{i64 2148384498}
!227 = !{i64 788591, i64 788652}
!228 = !{i64 791323}
!229 = !{!"branch_weights", i32 1, i32 2000}
!230 = !{i64 791608}
