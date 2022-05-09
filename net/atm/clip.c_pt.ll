; ModuleID = '/llk/IR_all_yes/net/atm/clip.c_pt.bc'
source_filename = "../net/atm/clip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atm_ioctl = type { ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.54, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.54 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.neigh_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.140 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.atmarp_ctrl = type { i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.111, [48 x i8], %union.anon.112, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.114, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, ptr }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.116, i32, i32, i32, i16, i16, %union.anon.118, i32, %union.anon.119, %union.anon.120, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.116 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.105, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.106, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.107, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.101, [0 x i32], %union.anon.102, i16, i16, %union.anon.103, %struct.refcount_struct, [0 x i32], %union.anon.104 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%union.anon.103 = type { i32 }
%union.anon.104 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.105 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.106 = type { ptr }
%union.anon.107 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.154, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.154 = type { %struct.in6_addr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.atmarp_entry = type { ptr, i32, ptr }
%struct.clip_vcc = type { ptr, ptr, i32, i8, i32, i32, ptr, ptr, ptr }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.147, i8, %union.anon.149 }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { i8, i8 }
%union.anon.149 = type { %struct.anon.152 }
%struct.anon.152 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.153 }
%struct.anon.153 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.neigh_seq_state = type { %struct.seq_net_private, ptr, ptr, ptr, i32, i32 }
%struct.seq_net_private = type { ptr, ptr }
%struct.clip_seq_state = type { %struct.neigh_seq_state, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arp\00", [28 x i8] zeroinitializer }, align 32
@atm_proc_root = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_clip__522_925_atm_clip_init6 = internal global ptr @atm_clip_init, section ".initcall6.init", align 4
@__exitcall_atm_clip_exit = internal global ptr @atm_clip_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author523 = internal constant [31 x i8] c"clip.author=Werner Almesberger\00", section ".modinfo", align 1
@__UNIQUE_ID_description524 = internal constant [49 x i8] c"clip.description=Classical/IP over ATM interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file525 = internal constant [23 x i8] c"clip.file=net/atm/clip\00", section ".modinfo", align 1
@__UNIQUE_ID_license526 = internal constant [17 x i8] c"clip.license=GPL\00", section ".modinfo", align 1
@clip_inet_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @clip_inet_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@clip_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @clip_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@clip_ioctl_ops = internal global { %struct.atm_ioctl, [16 x i8] } { %struct.atm_ioctl { ptr null, ptr @clip_ioctl, %struct.list_head zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@idle_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@clip_devs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_net = external dso_local global %struct.net, align 128
@clip_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @clip_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clip_constructor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@clip_device_event.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clip\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clip_device_event\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/atm/clip.c\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NETDEV_UP\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clip:%s: NETDEV_UP\0A\00", [44 x i8] zeroinitializer }, align 32
@clip_device_event.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NETDEV_DOWN\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clip:%s: NETDEV_DOWN\0A\00", [42 x i8] zeroinitializer }, align 32
@clip_device_event.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NETDEV_CHANGE*\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clip:%s: NETDEV_CHANGE*\0A\00", [39 x i8] zeroinitializer }, align 32
@clip_start_xmit.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clip_start_xmit\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(skb %p)\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clip:%s: (skb %p)\0A\00", [45 x i8] zeroinitializer }, align 32
@clip_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013clip:%s: skb_dst(skb) == NULL\0A\00", [63 x i8] zeroinitializer }, align 32
@clip_start_xmit._entry_ptr = internal global ptr @clip_start_xmit._entry, section ".printk_index", align 4
@clip_start_xmit._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013clip:%s: NO NEIGHBOUR !\0A\00", [37 x i8] zeroinitializer }, align 32
@clip_start_xmit._entry_ptr.16 = internal global ptr @clip_start_xmit._entry.14, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@clip_start_xmit.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.17, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"neigh %p, vccs %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clip:%s: neigh %p, vccs %p\0A\00", [36 x i8] zeroinitializer }, align 32
@clip_start_xmit.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.19, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"using neighbour %p, vcc %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"clip:%s: using neighbour %p, vcc %p\0A\00", [59 x i8] zeroinitializer }, align 32
@llc_oui = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\00", [26 x i8] zeroinitializer }, align 32
@clip_start_xmit.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.21, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atm_skb(%p)->vcc(%p)->dev(%p)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"clip:%s: atm_skb(%p)->vcc(%p)->dev(%p)\0A\00", [56 x i8] zeroinitializer }, align 32
@clip_start_xmit._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.3, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014clip:%s: XOFF->XOFF transition\0A\00", [62 x i8] zeroinitializer }, align 32
@clip_start_xmit._entry_ptr.25 = internal global ptr @clip_start_xmit._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@clip_neigh_ops = internal constant { %struct.neigh_ops, [44 x i8] } { %struct.neigh_ops { i32 2, ptr @clip_neigh_solicit, ptr @clip_neigh_error, ptr @neigh_direct_output, ptr @neigh_direct_output }, [44 x i8] zeroinitializer }, align 32
@clip_neigh_solicit.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clip_neigh_solicit\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(neigh %p, skb %p)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clip:%s: (neigh %p, skb %p)\0A\00", [35 x i8] zeroinitializer }, align 32
@to_atmarpd.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"to_atmarpd\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(%d)\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clip:%s: (%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@atmarpd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atm%d\00", [26 x i8] zeroinitializer }, align 32
@clip_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&clip_priv->xoff_lock\00", [42 x i8] zeroinitializer }, align 32
@clip_create.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clip_create\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"registered (net:%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clip:%s: registered (net:%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@atmarpd_dev = internal global { %struct.atm_dev, [264 x i8] } { %struct.atm_dev { ptr @atmarpd_dev_ops, ptr null, ptr @.str.39, i32 999, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [6 x i8] zeroinitializer, %struct.atm_cirange zeroinitializer, %struct.k_atm_dev_stats zeroinitializer, i8 0, i32 0, %struct.refcount_struct zeroinitializer, %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null, ptr null, %struct.device zeroinitializer, %struct.list_head zeroinitializer }, [264 x i8] zeroinitializer }, align 32
@atmarpd_dev_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr null, ptr null, ptr @atmarpd_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arpd\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmarpd_dev.lock\00", [47 x i8] zeroinitializer }, align 32
@atmarpd_close.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmarpd_close\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clip:%s: \0A\00", [21 x i8] zeroinitializer }, align 32
@atmarpd_close.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.44, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(done)\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clip:%s: (done)\0A\00", [47 x i8] zeroinitializer }, align 32
@clip_mkip.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clip_mkip\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%p vcc %p\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clip:%s: %p vcc %p\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clip_push.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.42, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clip_push\00", [22 x i8] zeroinitializer }, align 32
@clip_push.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"removing VCC %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clip:%s: removing VCC %p\0A\00", [38 x i8] zeroinitializer }, align 32
@unlink_clip_vcc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013clip:%s: !clip_vcc->entry (clip_vcc %p)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unlink_clip_vcc\00", [16 x i8] zeroinitializer }, align 32
@unlink_clip_vcc._entry_ptr = internal global ptr @unlink_clip_vcc._entry, section ".printk_index", align 4
@unlink_clip_vcc._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013clip:%s: neigh_update failed with %d\0A\00", [56 x i8] zeroinitializer }, align 32
@unlink_clip_vcc._entry_ptr.56 = internal global ptr @unlink_clip_vcc._entry.54, section ".printk_index", align 4
@unlink_clip_vcc._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.3, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013clip:%s: ATMARP: failed (entry %p, vcc 0x%p)\0A\00", [48 x i8] zeroinitializer }, align 32
@unlink_clip_vcc._entry_ptr.59 = internal global ptr @unlink_clip_vcc._entry.57, section ".printk_index", align 4
@clip_arp_rcv.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.3, ptr @.str.42, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clip_arp_rcv\00", [19 x i8] zeroinitializer }, align 32
@clip_arp_rcv.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pushing to %p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clip:%s: pushing to %p\0A\00", [40 x i8] zeroinitializer }, align 32
@clip_arp_rcv.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.3, ptr @.str.63, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"using %p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clip:%s: using %p\0A\00", [45 x i8] zeroinitializer }, align 32
@clip_pop.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clip_pop\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(vcc %p)\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clip:%s: (vcc %p)\0A\00", [45 x i8] zeroinitializer }, align 32
@clip_setentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014clip:%s: non-CLIP VCC\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clip_setentry\00", [18 x i8] zeroinitializer }, align 32
@clip_setentry._entry_ptr = internal global ptr @clip_setentry._entry, section ".printk_index", align 4
@clip_setentry._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013clip:%s: hiding hidden ATMARP entry\0A\00", [57 x i8] zeroinitializer }, align 32
@clip_setentry._entry_ptr.72 = internal global ptr @clip_setentry._entry.70, section ".printk_index", align 4
@clip_setentry.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.3, ptr @.str.73, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remove\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clip:%s: remove\0A\00", [47 x i8] zeroinitializer }, align 32
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@clip_setentry.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.3, ptr @.str.75, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"add\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clip:%s: add\0A\00", [18 x i8] zeroinitializer }, align 32
@clip_setentry.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.3, ptr @.str.77, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"update\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clip:%s: update\0A\00", [47 x i8] zeroinitializer }, align 32
@link_vcc.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link_vcc\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%p to entry %p (neigh %p)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clip:%s: %p to entry %p (neigh %p)\0A\00", [60 x i8] zeroinitializer }, align 32
@atm_clip_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&idle_timer)\00", [18 x i8] zeroinitializer }, align 32
@arp_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @clip_seq_start, ptr @neigh_seq_stop, ptr @neigh_seq_next, ptr @clip_seq_show }, [16 x i8] zeroinitializer }, align 32
@atm_clip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013clip:%s: Unable to initialize /proc/net/atm/arp\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atm_clip_init\00", [18 x i8] zeroinitializer }, align 32
@atm_clip_init._entry_ptr = internal global ptr @atm_clip_init._entry, section ".printk_index", align 4
@neigh_check_cb.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"neigh_check_cb\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"releasing vcc %p->%p of entry %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"clip:%s: releasing vcc %p->%p of entry %p\0A\00", [53 x i8] zeroinitializer }, align 32
@neigh_check_cb.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.3, ptr @.str.88, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"destruction postponed with ref %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"clip:%s: destruction postponed with ref %d\0A\00", [52 x i8] zeroinitializer }, align 32
@neigh_check_cb.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.3, ptr @.str.90, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"expired neigh %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clip:%s: expired neigh %p\0A\00", [37 x i8] zeroinitializer }, align 32
@clip_seq_show.atm_arp_banner = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"IPitf TypeEncp Idle IP address      ATM address\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%-6s%-4s%-4s%5ld \00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SVC\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PVC\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LLC\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(resolving)\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(expired, ref %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d.%d.%d\0A\00", [22 x i8] zeroinitializer }, align 32
@svc_addr.code = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 10, i32 6, i32 1, i32 0], [40 x i8] zeroinitializer }, align 32
@svc_addr.e164 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 8, i32 4, i32 6, i32 1, i32 0], [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02X\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 7, i64 10]
@__sancov_gen_cov_switch_values.104 = internal global [7 x i64] [i64 5, i64 32, i64 25056, i64 25057, i64 25058, i64 25059, i64 25061]
@__sancov_gen_cov_switch_values.105 = internal global [7 x i64] [i64 5, i64 32, i64 25056, i64 25057, i64 25058, i64 25059, i64 25061]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 920, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"clip_inet_notifier\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 601, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"clip_dev_notifier\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 595, i32 30 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"clip_ioctl_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 698, i32 25 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"idle_timer\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 49, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"clip_devs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 47, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"clip_netdev_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 489, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 562, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 566, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 571, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 341, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 343, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 355, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 375, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 377, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [8 x i8] c"llc_oui\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 181, i32 28 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 387, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 390, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1011, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [15 x i8] c"clip_neigh_ops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 282, i32 31 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 270, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 58, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [8 x i8] c"atmarpd\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 48, i32 24 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 526, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 531, i32 21 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 532, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 541, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [12 x i8] c"atmarpd_dev\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 625, i32 23 }
@___asan_gen_.255 = private unnamed_addr constant [16 x i8] c"atmarpd_dev_ops\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 620, i32 32 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 627, i32 12 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 629, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 609, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 616, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 424, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 194, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 203, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 92, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 112, i32 5 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 115, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 169, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 175, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 176, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 252, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 453, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 459, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 462, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 476, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 478, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 78, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 876, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [12 x i8] c"arp_seq_ops\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 860, i32 36 }
@___asan_gen_.393 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 885, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 132, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 144, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 153, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [15 x i8] c"atm_arp_banner\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 845, i32 14 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 756, i32 18 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 757, i32 23 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 757, i32 31 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 757, i32 44 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 757, i32 52 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 759, i32 40 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 763, i32 18 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 767, i32 20 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 769, i32 20 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 772, i32 19 }
@___asan_gen_.456 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 707, i32 13 }
@___asan_gen_.459 = private unnamed_addr constant [5 x i8] c"e164\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 708, i32 13 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 715, i32 25 }
@___asan_gen_.465 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.466 = private constant [18 x i8] c"../net/atm/clip.c\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 726, i32 21 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_author523, ptr @__UNIQUE_ID_description524, ptr @__UNIQUE_ID_file525, ptr @__UNIQUE_ID_license526, ptr @__exitcall_atm_clip_exit, ptr @__initcall__kmod_clip__522_925_atm_clip_init6, ptr @atm_clip_exit, ptr @atm_clip_init._entry, ptr @atm_clip_init._entry_ptr, ptr @clip_setentry._entry, ptr @clip_setentry._entry.70, ptr @clip_setentry._entry_ptr, ptr @clip_setentry._entry_ptr.72, ptr @clip_start_xmit._entry, ptr @clip_start_xmit._entry.14, ptr @clip_start_xmit._entry.23, ptr @clip_start_xmit._entry_ptr, ptr @clip_start_xmit._entry_ptr.16, ptr @clip_start_xmit._entry_ptr.25, ptr @unlink_clip_vcc._entry, ptr @unlink_clip_vcc._entry.54, ptr @unlink_clip_vcc._entry.57, ptr @unlink_clip_vcc._entry_ptr, ptr @unlink_clip_vcc._entry_ptr.56, ptr @unlink_clip_vcc._entry_ptr.59, ptr @.str, ptr @clip_inet_notifier, ptr @clip_dev_notifier, ptr @clip_ioctl_ops, ptr @idle_timer, ptr @clip_devs, ptr @clip_netdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @llc_oui, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @clip_neigh_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @atmarpd, ptr @.str.33, ptr @.str.34, ptr @clip_create.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @atmarpd_dev, ptr @atmarpd_dev_ops, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @atm_clip_init.__key, ptr @.str.82, ptr @arp_seq_ops, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @clip_seq_show.atm_arp_banner, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @svc_addr.code, ptr @svc_addr.e164, ptr @.str.102, ptr @.str.103], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_inet_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_ioctl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_start_xmit._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_oui to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_start_xmit._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_neigh_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmarpd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmarpd_dev to i32), i32 1112, i32 1376, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmarpd_dev_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unlink_clip_vcc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unlink_clip_vcc._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unlink_clip_vcc._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_setentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_setentry._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_clip_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arp_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_clip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clip_seq_show.atm_arp_banner to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_addr.code to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_addr.e164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atm_clip_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atm_proc_root to i32))
  %0 = load ptr, ptr @atm_proc_root, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %0) #13
  tail call fastcc void @atm_clip_exit_noproc()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atm_clip_exit_noproc() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @clip_inet_notifier) #13
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @clip_dev_notifier) #13
  tail call void @deregister_atm_ioctl(ptr noundef nonnull @clip_ioctl_ops) #13
  %call2 = tail call i32 @del_timer_sync(ptr noundef nonnull @idle_timer) #13
  %0 = load ptr, ptr @clip_devs, align 4
  %tobool.not8 = icmp eq ptr %0, null
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dev.09 = phi ptr [ %2, %while.body.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %next4 = getelementptr i8, ptr %dev.09, i32 2352
  %1 = ptrtoint ptr %next4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %next4, align 4
  tail call void @unregister_netdev(ptr noundef nonnull %dev.09) #13
  tail call void @free_netdev(ptr noundef nonnull %dev.09) #13
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_clip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_atm_ioctl(ptr noundef nonnull @clip_ioctl_ops) #13
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @clip_dev_notifier) #13
  %call1 = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @clip_inet_notifier) #13
  tail call void @init_timer_key(ptr noundef nonnull @idle_timer, ptr noundef nonnull @idle_timer_check, i32 noundef 0, ptr noundef nonnull @.str.82, ptr noundef nonnull @atm_clip_init.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atm_proc_root to i32))
  %0 = load ptr, ptr @atm_proc_root, align 4
  %call2 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %0, ptr noundef nonnull @arp_seq_ops, i32 noundef 32, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #16
  tail call fastcc void @atm_clip_exit_noproc()
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %entry.cleanup_crit_edge
  %spec.select = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %do.end4 ]
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_atm_ioctl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clip_inet_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ifa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp.not = icmp eq i32 %event, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ifa, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i.i, align 4
  %cmp.i.i.not = icmp eq ptr %5, @init_net
  br i1 %cmp.i.i.not, label %if.end4.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.i:                                        ; preds = %if.end
  %type.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 32
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %7)
  %cmp5.not.i = icmp eq i16 %7, 19
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev_ops.i, align 8
  %cmp7.not.i = icmp eq ptr %9, @clip_netdev_ops
  br i1 %cmp7.not.i, label %if.end10.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.i:                                       ; preds = %lor.lhs.false.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_device_event.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_inet_event, %if.then52.i)) #13
          to label %cleanup.sink.split.i [label %if.then52.i], !srcloc !245

if.then52.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_device_event.__UNIQUE_ID_ddebug519, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2) #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then52.i, %if.end10.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  tail call fastcc void @to_atmarpd(i32 noundef 4, i32 noundef %11, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clip_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i = icmp ne ptr %3, @init_net
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp = icmp eq i32 %event, 6
  %or.cond = or i1 %cmp, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %5)
  %cmp5.not = icmp eq i16 %5, 19
  br i1 %cmp5.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev_ops, align 8
  %cmp7.not = icmp eq ptr %7, @clip_netdev_ops
  br i1 %cmp7.not, label %if.end10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end10.cleanup_crit_edge [
    i32 1, label %do.body
    i32 10, label %do.body20
    i32 4, label %if.end10.do.body40_crit_edge
    i32 7, label %if.end10.do.body40_crit_edge77
  ]

if.end10.do.body40_crit_edge77:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body40

if.end10.do.body40_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body40

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_device_event.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_device_event, %if.then15)) #13
          to label %cleanup.sink.split [label %if.then15], !srcloc !245

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_device_event.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #13
  br label %cleanup.sink.split

do.body20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_device_event.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_device_event, %if.then32)) #13
          to label %cleanup.sink.split [label %if.then32], !srcloc !245

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_device_event.__UNIQUE_ID_ddebug518, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #13
  br label %cleanup.sink.split

do.body40:                                        ; preds = %if.end10.do.body40_crit_edge, %if.end10.do.body40_crit_edge77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_device_event.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_device_event, %if.then52)) #13
          to label %cleanup.sink.split [label %if.then52], !srcloc !245

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_device_event.__UNIQUE_ID_ddebug519, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then52, %do.body40, %if.then32, %do.body20, %if.then15, %do.body
  %.sink = phi i32 [ 2, %do.body ], [ 2, %if.then15 ], [ 3, %do.body20 ], [ 3, %if.then32 ], [ 4, %do.body40 ], [ 4, %if.then52 ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  tail call fastcc void @to_atmarpd(i32 noundef %.sink, i32 noundef %10, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @to_atmarpd(i32 noundef %type, i32 noundef %itf, i32 noundef %ip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @to_atmarpd.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@to_atmarpd, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @to_atmarpd.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %type) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @atmarpd, align 4
  %tobool3.not = icmp eq ptr %0, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %call.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 12) #13
  %1 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %type, ptr %call10, align 4
  %itf_num = getelementptr inbounds %struct.atmarp_ctrl, ptr %call10, i32 0, i32 1
  %2 = ptrtoint ptr %itf_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %itf, ptr %itf_num, align 4
  %ip12 = getelementptr inbounds %struct.atmarp_ctrl, ptr %call10, i32 0, i32 2
  %3 = ptrtoint ptr %ip12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ip, ptr %ip12, align 4
  %4 = load ptr, ptr @atmarpd, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %5 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %6, ptr elementtype(i32) %sk_backlog.i) #13, !srcloc !246
  %8 = load ptr, ptr @atmarpd, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %call.i) #13
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 77
  %9 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_data_ready, align 8
  tail call void %10(ptr noundef %8) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clip_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
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
  %call.i234 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool1.not.i = icmp eq i32 %call.i234, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !247

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_start_xmit.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_start_xmit, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_start_xmit.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %skb) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %skb_dst.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool6.not = icmp eq i32 %and25.i, 0
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10) #16
  tail call void @consume_skb(ptr noundef %skb) #13
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %6 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %rt_gw_family = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %rt_gw_family to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rt_gw_family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp eq i8 %9, 2
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %10 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 8
  br label %if.end18

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %daddr17 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  %daddr.0 = phi ptr [ %10, %if.then15 ], [ %daddr17, %if.else ]
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i235 = tail call ptr %18(ptr noundef nonnull %5, ptr noundef null, ptr noundef %daddr.0) #13
  %cmp.i.i = icmp ugt ptr %call.i235, inttoptr (i32 -4096 to ptr)
  %tobool20.not245 = icmp eq ptr %call.i235, null
  %tobool20.not = or i1 %cmp.i.i, %tobool20.not245
  br i1 %tobool20.not, label %do.end24, label %if.end30

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10) #16
  tail call void @consume_skb(ptr noundef %skb) #13
  %tx_dropped28 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %19 = ptrtoint ptr %tx_dropped28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_dropped28, align 4
  %inc29 = add i32 %20, 1
  store i32 %inc29, ptr %tx_dropped28, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %tbl.i = getelementptr inbounds %struct.neighbour, ptr %call.i235, i32 0, i32 1
  %21 = ptrtoint ptr %tbl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tbl.i, align 4
  %entry_size.i = getelementptr inbounds %struct.neigh_table, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entry_size.i, align 4
  %add.ptr.i236 = getelementptr i8, ptr %call.i235, i32 %24
  %25 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i236, align 4
  %tobool32.not = icmp eq ptr %26, null
  br i1 %tobool32.not, label %if.then33, label %do.body52

if.then33:                                        ; preds = %if.end30
  %expires = getelementptr inbounds %struct.atmarp_entry, ptr %add.ptr.i236, i32 0, i32 1
  %27 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp34 = icmp slt i32 %sub, 0
  br i1 %cmp34, label %if.then36, label %if.then33.if.end40_crit_edge

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %30, 3000
  %31 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %expires, align 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 4
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %call.i235, i32 0, i32 27
  %34 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %primary_key, align 4
  tail call fastcc void @to_atmarpd(i32 noundef 1, i32 noundef %33, i32 noundef %35)
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.then33.if.end40_crit_edge
  %neigh = getelementptr inbounds %struct.atmarp_entry, ptr %add.ptr.i236, i32 0, i32 2
  %36 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %neigh, align 4
  %qlen = getelementptr inbounds %struct.neighbour, ptr %37, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %39)
  %cmp41 = icmp ult i32 %39, 5
  br i1 %cmp41, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %arp_queue = getelementptr inbounds %struct.neighbour, ptr %37, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %arp_queue, ptr noundef %skb) #13
  br label %out_release_neigh

if.else46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef %skb) #13
  %tx_dropped48 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %40 = ptrtoint ptr %tx_dropped48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_dropped48, align 4
  %inc49 = add i32 %41, 1
  store i32 %inc49, ptr %tx_dropped48, align 4
  br label %out_release_neigh

do.body52:                                        ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_start_xmit.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_start_xmit, %if.then64)) #13
          to label %do.end68 [label %if.then64], !srcloc !245

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i236, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_start_xmit.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10, ptr noundef %add.ptr.i236, ptr noundef %43) #13
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body52
  %44 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i236, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %48 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %cb, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_start_xmit.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_start_xmit, %if.then85)) #13
          to label %do.end88 [label %if.then85], !srcloc !245

if.then85:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_start_xmit.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i235, ptr noundef %47) #13
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %do.end68
  %49 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i236, align 4
  %encap = getelementptr inbounds %struct.clip_vcc, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %encap to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %encap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool90.not = icmp eq i8 %52, 0
  br i1 %tobool90.not, label %do.end88.if.end93_crit_edge, label %if.then91

do.end88.if.end93_crit_edge:                      ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then91:                                        ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #15
  %call92 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #13
  %53 = call ptr @memcpy(ptr %call92, ptr @llc_oui, i32 6)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %54 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %protocol, align 8
  %arrayidx = getelementptr i16, ptr %call92, i32 3
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %arrayidx, align 2
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %do.end88.if.end93_crit_edge
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %57 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %truesize.i, align 8
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %47, i32 0, i32 23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc.i, i32 1, i32 3, i32 1) #13
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc.i, ptr %sk_wmem_alloc.i, i32 %58, ptr elementtype(i32) %sk_wmem_alloc.i) #13, !srcloc !248
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end93.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !247

if.end93.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end93
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, %58
  %60 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %.not.i.i.i = icmp sgt i32 %60, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.atm_account_tx.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !249

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.atm_account_tx.exit_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %atm_account_tx.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end93.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end93.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc.i, i32 noundef %.sink.i.i.i) #13
  br label %atm_account_tx.exit

atm_account_tx.exit:                              ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.atm_account_tx.exit_crit_edge
  %61 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %truesize.i, align 8
  %acct_truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %63 = ptrtoint ptr %acct_truesize.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %acct_truesize.i, align 8
  %atm_options.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 5
  %64 = ptrtoint ptr %atm_options.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %atm_options.i, align 8
  %atm_options4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %66 = ptrtoint ptr %atm_options4.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %atm_options4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %68 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i236, align 4
  %last_use = getelementptr inbounds %struct.clip_vcc, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %last_use to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %last_use, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_start_xmit.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_start_xmit, %if.then107)) #13
          to label %do.end111 [label %if.then107], !srcloc !245

if.then107:                                       ; preds = %atm_account_tx.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev108 = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 6
  %71 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev108, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_start_xmit.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, ptr noundef %skb, ptr noundef %47, ptr noundef %72) #13
  br label %do.end111

do.end111:                                        ; preds = %if.then107, %atm_account_tx.exit
  %73 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i236, align 4
  %xoff = getelementptr inbounds %struct.clip_vcc, ptr %74, i32 0, i32 2
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xoff, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !250
  tail call void @llvm.prefetch.p0(ptr %xoff, i32 1, i32 3, i32 1) #13
  %75 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %xoff) #13, !srcloc !251
  %asmresult.i = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool132.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool132.not, label %if.end139, label %do.end136

do.end136:                                        ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #15
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10) #16
  br label %out_release_neigh

if.end139:                                        ; preds = %do.end111
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %76 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_packets, align 4
  %inc141 = add i32 %77, 1
  store i32 %inc141, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %80 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_bytes, align 4
  %add143 = add i32 %81, %79
  store i32 %add143, ptr %tx_bytes, align 4
  %send = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 13
  %82 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %send, align 4
  %call144 = tail call i32 %83(ptr noundef %47, ptr noundef %skb) #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #13
  %84 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %47, i32 0, i32 21
  %86 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sk_sndbuf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp.i.not = icmp ult i32 %85, %87
  br i1 %cmp.i.not, label %if.then147, label %do.body152

if.then147:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i236, align 4
  %xoff149 = getelementptr inbounds %struct.clip_vcc, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %xoff149 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %xoff149, align 4
  br label %out_release_neigh

do.body152:                                       ; preds = %if.end139
  %xoff_lock = getelementptr i8, ptr %dev, i32 2308
  %call157 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xoff_lock) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %91 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %92, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !253
  %93 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i236, align 4
  %xoff163 = getelementptr inbounds %struct.clip_vcc, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %xoff163 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %xoff163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool164.not = icmp eq i32 %96, 0
  br i1 %tobool164.not, label %if.then165, label %do.body152.if.end166_crit_edge

do.body152.if.end166_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end166

if.then165:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #15
  %97 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i240 = getelementptr inbounds %struct.netdev_queue, ptr %98, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i240) #13
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %do.body152.if.end166_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xoff_lock, i32 noundef %call157) #13
  br label %out_release_neigh

out_release_neigh:                                ; preds = %if.end166, %if.then147, %do.end136, %if.else46, %if.then43
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call.i235, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %99 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_release_neigh
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !249

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %out_release_neigh
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  tail call void @neigh_destroy(ptr noundef nonnull %call.i235) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end24, %do.end10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clip_constructor(ptr nocapture noundef readnone %dev, ptr noundef %neigh) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tbl.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 1
  %0 = ptrtoint ptr %tbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl.i, align 4
  %entry_size.i = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %neigh, i32 %3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 13
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp2.not = icmp eq i8 %7, 1
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %8 = ptrtoint ptr %nud_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %nud_state, align 8
  %ops = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 21
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @clip_neigh_ops, ptr %ops, align 8
  %output7 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 20
  %10 = ptrtoint ptr %output7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @neigh_direct_output, ptr %output7, align 4
  %neigh8 = getelementptr inbounds %struct.atmarp_entry, ptr %add.ptr.i, i32 0, i32 2
  %11 = ptrtoint ptr %neigh8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %neigh, ptr %neigh8, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %add.ptr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %13, -1
  %expires = getelementptr inbounds %struct.atmarp_entry, ptr %add.ptr.i, i32 0, i32 1
  %14 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %expires, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clip_neigh_solicit(ptr noundef %neigh, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_neigh_solicit.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_neigh_solicit, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_neigh_solicit.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef %neigh, ptr noundef %skb) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %dev = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %primary_key, align 4
  tail call fastcc void @to_atmarpd(i32 noundef 1, i32 noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clip_neigh_error(ptr nocapture noundef readnone %neigh, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_direct_output(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clip_ioctl(ptr nocapture noundef %sock, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk.i, align 16
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 25056, label %entry.sw.bb_crit_edge
    i32 25057, label %entry.sw.bb_crit_edge30
    i32 25058, label %entry.sw.bb_crit_edge31
    i32 25059, label %entry.sw.bb_crit_edge32
    i32 25061, label %entry.sw.bb_crit_edge33
  ]

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge30, %entry.sw.bb_crit_edge31, %entry.sw.bb_crit_edge32, %entry.sw.bb_crit_edge33
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call1, label %sw.epilog, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %cmd, label %sw.epilog.cleanup_crit_edge [
    i32 25056, label %sw.bb2
    i32 25057, label %sw.bb4
    i32 25058, label %sw.bb8
    i32 25059, label %sw.bb10
    i32 25061, label %sw.bb12
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call fastcc i32 @clip_create(i32 noundef %arg)
  br label %cleanup

sw.bb4:                                           ; preds = %sw.epilog
  tail call void @rtnl_lock() #13
  %4 = load ptr, ptr @atmarpd, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then6, label %atm_init_atmarp.exit

atm_init_atmarp.exit:                             ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rtnl_unlock() #13
  br label %cleanup

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %5, 1000
  %call.i = tail call i32 @mod_timer(ptr noundef nonnull @idle_timer, i32 noundef %add.i) #13
  store ptr %1, ptr @atmarpd, align 4
  %flags.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags.i) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #13
  %dev.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @atmarpd_dev, ptr %dev.i, align 4
  tail call void @vcc_insert_socket(ptr noundef %1) #13
  %push.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %push.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %push.i, align 8
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pop.i, align 4
  %push_oam.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %push_oam.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %push_oam.i, align 8
  tail call void @rtnl_unlock() #13
  %10 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %sock, align 128
  tail call void @__module_get(ptr noundef null) #13
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call fastcc i32 @clip_mkip(ptr noundef %1, i32 noundef %arg)
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call fastcc i32 @clip_setentry(ptr noundef %1, i32 noundef %arg)
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog
  %user_back.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %user_back.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_back.i, align 8
  %tobool.not.i25 = icmp eq ptr %12, null
  br i1 %tobool.not.i25, label %sw.bb12.cleanup_crit_edge, label %if.end.i26

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i26:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = trunc i32 %arg to i8
  %encap.i = getelementptr inbounds %struct.clip_vcc, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %encap.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %encap.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i26, %sw.bb12.cleanup_crit_edge, %sw.bb10, %sw.bb8, %if.then6, %atm_init_atmarp.exit, %sw.bb2, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ -98, %atm_init_atmarp.exit ], [ 0, %if.then6 ], [ %call3, %sw.bb2 ], [ 0, %if.end.i26 ], [ -77, %sw.bb12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clip_create(i32 noundef %number) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %number)
  %cmp.not = icmp eq i32 %number, -1
  %dev.177 = load ptr, ptr @clip_devs, align 4
  %tobool6.not78 = icmp eq ptr %dev.177, null
  br i1 %cmp.not, label %for.cond5.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %tobool6.not78, label %for.cond.preheader.if.end19_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end19_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

for.cond5.preheader:                              ; preds = %entry
  br i1 %tobool6.not78, label %for.cond5.preheader.if.end19_crit_edge, label %for.cond5.preheader.for.body7_crit_edge

for.cond5.preheader.for.body7_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body7

for.cond5.preheader.if.end19_crit_edge:           ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

for.cond:                                         ; preds = %for.body
  %next = getelementptr i8, ptr %dev.076, i32 2352
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %dev.0, null
  br i1 %tobool.not, label %for.cond.if.end19_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.if.end19_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %dev.076 = phi ptr [ %dev.0, %for.cond.for.body_crit_edge ], [ %dev.177, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %dev.076, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %number)
  %cmp2 = icmp eq i32 %2, %number
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond5.preheader.for.body7_crit_edge
  %dev.180 = phi ptr [ %dev.1, %for.body7.for.body7_crit_edge ], [ %dev.177, %for.cond5.preheader.for.body7_crit_edge ]
  %number.addr.079 = phi i32 [ %spec.select, %for.body7.for.body7_crit_edge ], [ 0, %for.cond5.preheader.for.body7_crit_edge ]
  %add.ptr.i68 = getelementptr i8, ptr %dev.180, i32 2304
  %3 = ptrtoint ptr %add.ptr.i68 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %number.addr.079)
  %cmp10.not = icmp slt i32 %4, %number.addr.079
  %add = add i32 %4, 1
  %spec.select = select i1 %cmp10.not, i32 %number.addr.079, i32 %add
  %next17 = getelementptr i8, ptr %dev.180, i32 2352
  %5 = ptrtoint ptr %next17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %dev.1 = load ptr, ptr %next17, align 4
  %tobool6.not = icmp eq ptr %dev.1, null
  br i1 %tobool6.not, label %for.body7.if.end19_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

for.body7.if.end19_crit_edge:                     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end19:                                         ; preds = %for.body7.if.end19_crit_edge, %for.cond.if.end19_crit_edge, %for.cond5.preheader.if.end19_crit_edge, %for.cond.preheader.if.end19_crit_edge
  %number.addr.2 = phi i32 [ 0, %for.cond5.preheader.if.end19_crit_edge ], [ %number, %for.cond.preheader.if.end19_crit_edge ], [ %spec.select, %for.body7.if.end19_crit_edge ], [ %number, %for.cond.if.end19_crit_edge ]
  %call20 = tail call ptr @alloc_netdev_mqs(i32 noundef 52, ptr noundef nonnull @.str.33, i8 noundef zeroext 0, ptr noundef nonnull @clip_setup, i32 noundef 1, i32 noundef 1) #13
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %add.ptr.i71 = getelementptr i8, ptr %call20, i32 2304
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call20, ptr noundef nonnull @.str.34, i32 noundef %number.addr.2)
  %xoff_lock = getelementptr i8, ptr %call20, i32 2308
  tail call void @__raw_spin_lock_init(ptr noundef %xoff_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @clip_create.__key, i16 noundef signext 3) #13
  %6 = ptrtoint ptr %add.ptr.i71 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %number.addr.2, ptr %add.ptr.i71, align 4
  %call28 = tail call i32 @register_netdev(ptr noundef nonnull %call20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @free_netdev(ptr noundef nonnull %call20) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %7 = load ptr, ptr @clip_devs, align 4
  %next32 = getelementptr i8, ptr %call20, i32 2352
  %8 = ptrtoint ptr %next32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %next32, align 4
  store ptr %call20, ptr @clip_devs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_create.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_create, %if.then38)) #13
          to label %cleanup [label %if.then38], !srcloc !245

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_create.__UNIQUE_ID_ddebug516, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, ptr noundef nonnull %call20) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end31, %if.then30, %if.end19.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then30 ], [ -12, %if.end19.cleanup_crit_edge ], [ %number.addr.2, %if.then38 ], [ %number.addr.2, %if.end31 ], [ -17, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clip_mkip(ptr noundef %vcc, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %push = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 10
  %0 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 36) #17
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_mkip.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_mkip, %if.then8)) #13
          to label %do.end [label %if.then8], !srcloc !245

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_mkip.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, ptr noundef nonnull %call7.i, ptr noundef %vcc) #13
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vcc, ptr %call7.i, align 8
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 22
  %4 = ptrtoint ptr %user_back to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %user_back, align 8
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #13
  %entry11 = getelementptr inbounds %struct.clip_vcc, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %entry11, align 4
  %xoff = getelementptr inbounds %struct.clip_vcc, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %xoff to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %xoff, align 8
  %encap = getelementptr inbounds %struct.clip_vcc, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %encap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %encap, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_use = getelementptr inbounds %struct.clip_vcc, ptr %call7.i, i32 0, i32 4
  %9 = ptrtoint ptr %last_use to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_use, align 8
  %mul = mul i32 %timeout, 100
  %idle_timeout = getelementptr inbounds %struct.clip_vcc, ptr %call7.i, i32 0, i32 5
  %10 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %idle_timeout, align 4
  %11 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %push, align 8
  %old_push = getelementptr inbounds %struct.clip_vcc, ptr %call7.i, i32 0, i32 6
  %13 = ptrtoint ptr %old_push to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %old_push, align 8
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %14 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pop, align 4
  %old_pop = getelementptr inbounds %struct.clip_vcc, ptr %call7.i, i32 0, i32 7
  %16 = ptrtoint ptr %old_pop to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %old_pop, align 4
  store ptr @clip_push, ptr %push, align 8
  store ptr @clip_pop, ptr %pop, align 4
  tail call void @vcc_process_recv_queue(ptr noundef %vcc) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -77, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clip_setentry(ptr nocapture noundef readonly %vcc, i32 noundef %ip) unnamed_addr #2 align 64 {
entry:
  %fl4.i = alloca %struct.flowi4, align 8
  %ip.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ip, ptr %ip.addr, align 4
  %push = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 10
  %1 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %push, align 8
  %cmp.not = icmp eq ptr %2, @clip_push
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 22
  %3 = ptrtoint ptr %user_back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_back, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ip)
  %tobool.not = icmp eq i32 %ip, 0
  br i1 %tobool.not, label %if.then2, label %if.end22

if.then2:                                         ; preds = %if.end
  %entry3 = getelementptr inbounds %struct.clip_vcc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %entry3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry3, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end8, label %do.body12

do.end8:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69) #16
  br label %cleanup

do.body12:                                        ; preds = %if.then2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_setentry.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_setentry, %if.then18)) #13
          to label %do.end21 [label %if.then18], !srcloc !245

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_setentry.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.69) #13
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body12
  tail call fastcc void @unlink_clip_vcc(ptr noundef %4)
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #13
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 3
  %7 = call ptr @memset(ptr %fl4.i, i32 0, i32 56)
  %8 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %flowic_tos.i, align 4
  %daddr2.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %9 = ptrtoint ptr %daddr2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ip, ptr %daddr2.i, align 4
  %call.i.i = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %fl4.i, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #13
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %call.i = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %ip.addr, ptr noundef %12) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %__neigh_lookup.exit.thread104

__neigh_lookup.exit.thread104:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  call void @dst_release(ptr noundef %call.i.i) #13
  br label %if.end31

if.end.i:                                         ; preds = %if.end27
  %call.i.i97 = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %ip.addr, ptr noundef %12, i1 noundef zeroext true) #13
  %cmp.i.i = icmp ugt ptr %call.i.i97, inttoptr (i32 -4096 to ptr)
  call void @dst_release(ptr noundef %call.i.i) #13
  %tobool29.not = icmp eq ptr %call.i.i97, null
  %or.cond = or i1 %cmp.i.i, %tobool29.not
  br i1 %or.cond, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end31_crit_edge

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.end.i.if.end31_crit_edge, %__neigh_lookup.exit.thread104
  %retval.0.i98107 = phi ptr [ %call.i, %__neigh_lookup.exit.thread104 ], [ %call.i.i97, %if.end.i.if.end31_crit_edge ]
  %tbl.i = getelementptr inbounds %struct.neighbour, ptr %retval.0.i98107, i32 0, i32 1
  %13 = ptrtoint ptr %tbl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tbl.i, align 4
  %entry_size.i = getelementptr inbounds %struct.neigh_table, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %entry_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i98107, i32 %16
  %entry33 = getelementptr inbounds %struct.clip_vcc, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %entry33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entry33, align 4
  %cmp34.not = icmp eq ptr %add.ptr.i, %18
  br i1 %cmp34.not, label %if.end31.if.end72_crit_edge, label %if.then35

if.end31.if.end72_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then35:                                        ; preds = %if.end31
  %tobool37.not = icmp eq ptr %18, null
  br i1 %tobool37.not, label %do.body39, label %do.body55

do.body39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_setentry.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_setentry, %if.then51)) #13
          to label %if.end71 [label %if.then51], !srcloc !245

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_setentry.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.69) #13
  br label %if.end71

do.body55:                                        ; preds = %if.then35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_setentry.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_setentry, %if.then67)) #13
          to label %do.end70 [label %if.then67], !srcloc !245

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_setentry.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.69) #13
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %do.body55
  call fastcc void @unlink_clip_vcc(ptr noundef %4)
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %if.then51, %do.body39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @link_vcc.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_setentry, %if.then.i)) #13
          to label %link_vcc.exit [label %if.then.i], !srcloc !245

if.then.i:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %neigh.i = getelementptr inbounds %struct.atmarp_entry, ptr %add.ptr.i, i32 0, i32 2
  %19 = ptrtoint ptr %neigh.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %neigh.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @link_vcc.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, ptr noundef %4, ptr noundef %add.ptr.i, ptr noundef %20) #13
  br label %link_vcc.exit

link_vcc.exit:                                    ; preds = %if.then.i, %if.end71
  %21 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %entry33, align 4
  %xoff.i = getelementptr inbounds %struct.clip_vcc, ptr %4, i32 0, i32 2
  %22 = ptrtoint ptr %xoff.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %xoff.i, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %next.i = getelementptr inbounds %struct.clip_vcc, ptr %4, i32 0, i32 8
  %25 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %next.i, align 4
  store ptr %4, ptr %add.ptr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %neigh6.i = getelementptr inbounds %struct.atmarp_entry, ptr %add.ptr.i, i32 0, i32 2
  %27 = ptrtoint ptr %neigh6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %neigh6.i, align 4
  %used.i = getelementptr inbounds %struct.neighbour, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %used.i, align 8
  br label %if.end72

if.end72:                                         ; preds = %link_vcc.exit, %if.end31.if.end72_crit_edge
  %call73 = call i32 @neigh_update(ptr noundef nonnull %retval.0.i98107, ptr noundef nonnull @llc_oui, i8 noundef zeroext -128, i32 noundef 129, i32 noundef 0) #13
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %retval.0.i98107, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !254
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !255
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i99, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !249

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %cleanup

if.then.i99:                                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !256
  call void @neigh_destroy(ptr noundef nonnull %retval.0.i98107) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i99, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then25, %do.end21, %do.end8, %do.end
  %retval.0 = phi i32 [ -9, %do.end ], [ %10, %if.then25 ], [ 0, %do.end21 ], [ 0, %do.end8 ], [ %call73, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call73, %if.then10.i.i.i.i ], [ %call73, %if.then.i99 ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @clip_setup(ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @clip_netdev_ops, ptr %netdev_ops, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 19, ptr %type, align 16
  %neigh_priv_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 59
  %2 = ptrtoint ptr %neigh_priv_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 12, ptr %neigh_priv_len, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 8, ptr %hard_header_len, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9180, ptr %mtu, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %5 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100, ptr %tx_queue_len, align 16
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %7, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_insert_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmarpd_close(ptr noundef %vcc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmarpd_close.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmarpd_close, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmarpd_close.__UNIQUE_ID_ddebug520, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @rtnl_lock() #13
  store ptr null, ptr @atmarpd, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #13
  tail call void @rtnl_unlock() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmarpd_close.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmarpd_close, %if.then16)) #13
          to label %do.end18 [label %if.then16], !srcloc !245

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmarpd_close.__UNIQUE_ID_ddebug521, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41) #13
  br label %do.end18

do.end18:                                         ; preds = %if.then16, %do.end
  tail call void @module_put(ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clip_push(ptr noundef %vcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 22
  %0 = ptrtoint ptr %user_back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_back, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_push.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_push, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_push.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr @clip_devs, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %3 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %4, ptr elementtype(i32) %sk_backlog.i) #13, !srcloc !257
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %tobool6.not = icmp eq ptr %skb, null
  br i1 %tobool6.not, label %do.body8, label %if.end28

do.body8:                                         ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_push.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_push, %if.then20)) #13
          to label %do.end23 [label %if.then20], !srcloc !245

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_push.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, ptr noundef %1) #13
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body8
  %entry24 = getelementptr inbounds %struct.clip_vcc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %entry24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry24, align 4
  %tobool25.not = icmp eq ptr %7, null
  br i1 %tobool25.not, label %do.end23.if.end27_crit_edge, label %if.then26

do.end23.if.end27_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then26:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @unlink_clip_vcc(ptr noundef %1)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %do.end23.if.end27_crit_edge
  %old_push = getelementptr inbounds %struct.clip_vcc, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %old_push to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_push, align 4
  tail call void %9(ptr noundef %vcc, ptr noundef null) #13
  tail call void @kfree(ptr noundef %1) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end5
  %truesize29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %10 = ptrtoint ptr %truesize29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %truesize29, align 8
  %sk_backlog.i103 = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  %call.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i103, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i103, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i103, ptr %sk_backlog.i103, i32 %11, ptr elementtype(i32) %sk_backlog.i103) #13, !srcloc !257
  %entry30 = getelementptr inbounds %struct.clip_vcc, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %entry30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entry30, align 4
  %tobool31.not = icmp eq ptr %14, null
  br i1 %tobool31.not, label %if.end28.cond.end_crit_edge, label %cond.true

if.end28.cond.end_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %neigh = getelementptr inbounds %struct.atmarp_entry, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %neigh, align 4
  %dev = getelementptr inbounds %struct.neighbour, ptr %16, i32 0, i32 25
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end28.cond.end_crit_edge
  %cond.in = phi ptr [ %dev, %cond.true ], [ @clip_devs, %if.end28.cond.end_crit_edge ]
  %17 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond = load ptr, ptr %cond.in, align 4
  %18 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cond, ptr %18, align 8
  %tobool33.not = icmp eq ptr %cond, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #13
  br label %cleanup

if.end35:                                         ; preds = %cond.end
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %vcc, ptr %cb, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %25 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %encap = getelementptr inbounds %struct.clip_vcc, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %encap to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %encap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool37.not = icmp eq i8 %27, 0
  br i1 %tobool37.not, label %if.end35.if.then41_crit_edge, label %lor.lhs.false

if.end35.if.then41_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

lor.lhs.false:                                    ; preds = %if.end35
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp = icmp ult i32 %29, 8
  br i1 %cmp, label %lor.lhs.false.if.then41_crit_edge, label %lor.lhs.false38

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %22, ptr noundef nonnull dereferenceable(6) @llc_oui, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool40.not = icmp eq i32 %bcmp, 0
  br i1 %tobool40.not, label %if.else, label %lor.lhs.false38.if.then41_crit_edge

lor.lhs.false38.if.then41_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

if.then41:                                        ; preds = %lor.lhs.false38.if.then41_crit_edge, %lor.lhs.false.if.then41_crit_edge, %if.end35.if.then41_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2048, ptr %protocol, align 8
  br label %if.end53

if.else:                                          ; preds = %lor.lhs.false38
  %arrayidx = getelementptr i16, ptr %22, i32 3
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 2
  %protocol43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %33 = ptrtoint ptr %protocol43 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %protocol43, align 8
  %call44 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 8) #13
  %34 = ptrtoint ptr %protocol43 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %protocol43, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %35)
  %cmp46 = icmp eq i16 %35, 2054
  br i1 %cmp46, label %if.then48, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %18, align 8
  %stats = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36
  %38 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stats, align 8
  %inc = add i32 %39, 1
  store i32 %inc, ptr %stats, align 8
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %42 = load ptr, ptr %18, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 2
  %43 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %44, %41
  store i32 %add, ptr %rx_bytes, align 8
  tail call fastcc void @clip_arp_rcv(ptr noundef nonnull %skb)
  br label %cleanup

if.end53:                                         ; preds = %if.else.if.end53_crit_edge, %if.then41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %last_use = getelementptr inbounds %struct.clip_vcc, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %last_use to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %last_use, align 4
  %47 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %18, align 8
  %stats54 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 36
  %49 = ptrtoint ptr %stats54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stats54, align 8
  %inc56 = add i32 %50, 1
  store i32 %inc56, ptr %stats54, align 8
  %len57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %51 = ptrtoint ptr %len57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len57, align 4
  %53 = load ptr, ptr %18, align 8
  %rx_bytes59 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 36, i32 2
  %54 = ptrtoint ptr %rx_bytes59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_bytes59, align 8
  %add60 = add i32 %55, %52
  store i32 %add60, ptr %rx_bytes59, align 8
  %56 = call ptr @memset(ptr %cb, i32 0, i32 12)
  %call63 = tail call i32 @netif_rx(ptr noundef nonnull %skb) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then48, %if.then34, %if.end27, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clip_pop(ptr noundef %vcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 22
  %0 = ptrtoint ptr %user_back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_back, align 8
  %2 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_pop.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_pop, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_pop.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, ptr noundef %vcc) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %old_pop = getelementptr inbounds %struct.clip_vcc, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %old_pop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %old_pop, align 4
  tail call void %6(ptr noundef %vcc, ptr noundef %skb) #13
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %do.body7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body7:                                         ; preds = %do.end
  %xoff_lock = getelementptr i8, ptr %4, i32 2308
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xoff_lock) #13
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #13
  %7 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 21
  %9 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_sndbuf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i.not = icmp ult i32 %8, %10
  br i1 %cmp.i.not, label %if.then18, label %do.body7.if.end41_crit_edge

do.body7.if.end41_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then18:                                        ; preds = %do.body7
  %xoff = getelementptr inbounds %struct.clip_vcc, ptr %1, i32 0, i32 2
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xoff, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !258
  tail call void @llvm.prefetch.p0(ptr %xoff, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %xoff) #13, !srcloc !251
  %asmresult.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool38.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool38.not, label %if.then18.if.end41_crit_edge, label %if.then39

if.then18.if.end41_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then39:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #13
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then18.if.end41_crit_edge, %do.body7.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xoff_lock, i32 noundef %call11) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_process_recv_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unlink_clip_vcc(ptr noundef %clip_vcc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %entry2 = getelementptr inbounds %struct.clip_vcc, ptr %clip_vcc, i32 0, i32 1
  %0 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef %clip_vcc) #16
  br label %cleanup35

if.end:                                           ; preds = %entry
  %neigh = getelementptr inbounds %struct.atmarp_entry, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %neigh, align 4
  %dev = getelementptr inbounds %struct.neighbour, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call fastcc void @local_bh_disable() #13
  tail call void @netif_tx_lock(ptr noundef %5) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %neigh, align 4
  %used = getelementptr inbounds %struct.neighbour, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %used, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %tobool4.not59 = icmp eq ptr %11, null
  br i1 %tobool4.not59, label %if.end.do.end30_crit_edge, label %for.body.preheader

if.end.do.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

for.body.preheader:                               ; preds = %if.end
  %cmp64 = icmp eq ptr %11, %clip_vcc
  br i1 %cmp64, label %for.body.preheader.if.then5_crit_edge, label %for.body.preheader.for.cond_crit_edge

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.body.preheader.if.then5_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %12 = phi ptr [ %14, %for.body.for.cond_crit_edge ], [ %11, %for.body.preheader.for.cond_crit_edge ]
  %next27 = getelementptr inbounds %struct.clip_vcc, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %next27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next27, align 4
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %for.cond.do.end30_crit_edge, label %for.body

for.cond.do.end30_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

for.body:                                         ; preds = %for.cond
  %cmp = icmp eq ptr %14, %clip_vcc
  br i1 %cmp, label %if.then5.loopexit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then5.loopexit:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %next27.le = getelementptr inbounds %struct.clip_vcc, ptr %12, i32 0, i32 8
  br label %if.then5

if.then5:                                         ; preds = %if.then5.loopexit, %for.body.preheader.if.then5_crit_edge
  %walk.060.lcssa = phi ptr [ %1, %for.body.preheader.if.then5_crit_edge ], [ %next27.le, %if.then5.loopexit ]
  %next = getelementptr inbounds %struct.clip_vcc, ptr %clip_vcc, i32 0, i32 8
  %15 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next, align 4
  %17 = ptrtoint ptr %walk.060.lcssa to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %walk.060.lcssa, align 4
  %18 = ptrtoint ptr %entry2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %entry2, align 4
  %xoff = getelementptr inbounds %struct.clip_vcc, ptr %clip_vcc, i32 0, i32 2
  %19 = ptrtoint ptr %xoff to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7.not = icmp eq i32 %20, 0
  br i1 %tobool7.not, label %if.then5.if.end11_crit_edge, label %if.then8

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %neigh, align 4
  %dev10 = getelementptr inbounds %struct.neighbour, ptr %22, i32 0, i32 25
  %23 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev10, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %26) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then5.if.end11_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %tobool13.not = icmp eq ptr %28, null
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end15:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %29, -1
  %expires = getelementptr inbounds %struct.atmarp_entry, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %expires, align 4
  %31 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %neigh, align 4
  %call17 = tail call i32 @neigh_update(ptr noundef %32, ptr noundef null, i8 noundef zeroext 0, i32 noundef 128, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.out_crit_edge, label %do.end22

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %call17) #16
  br label %out

do.end30:                                         ; preds = %for.cond.do.end30_crit_edge, %if.end.do.end30_crit_edge
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, ptr noundef nonnull %1, ptr noundef %clip_vcc) #16
  br label %out

out:                                              ; preds = %do.end30, %do.end22, %if.end15.out_crit_edge, %if.end11.out_crit_edge
  %33 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %neigh, align 4
  %dev34 = getelementptr inbounds %struct.neighbour, ptr %34, i32 0, i32 25
  %35 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev34, align 4
  tail call void @netif_tx_unlock(ptr noundef %36) #13
  tail call fastcc void @local_bh_enable() #13
  br label %cleanup35

cleanup35:                                        ; preds = %out, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clip_arp_rcv(ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_arp_rcv.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_arp_rcv, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_arp_rcv.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.60) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 8
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.if.then7_crit_edge, label %lor.lhs.false

do.end.if.then7_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

lor.lhs.false:                                    ; preds = %do.end
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %2 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %truesize, align 8
  %call5 = tail call i32 @atm_charge(ptr noundef nonnull %1, i32 noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then7_crit_edge, label %do.body9

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %do.end.if.then7_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup

do.body9:                                         ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_arp_rcv.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_arp_rcv, %if.then21)) #13
          to label %do.body25 [label %if.then21], !srcloc !245

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_arp_rcv.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, ptr noundef nonnull %1) #13
  br label %do.body25

do.body25:                                        ; preds = %if.then21, %do.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clip_arp_rcv.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clip_arp_rcv, %if.then37)) #13
          to label %do.end40 [label %if.then37], !srcloc !245

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %user_back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_back, align 8
  %old_push = getelementptr inbounds %struct.clip_vcc, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %old_push to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_push, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clip_arp_rcv.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.60, ptr noundef %7) #13
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25
  %user_back41 = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %user_back41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_back41, align 8
  %old_push42 = getelementptr inbounds %struct.clip_vcc, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %old_push42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_push42, align 4
  tail call void %11(ptr noundef nonnull %1, ptr noundef %skb) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_update(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_charge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_atm_ioctl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idle_timer_check(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 28)) #13
  tail call void @__neigh_for_each_release(ptr noundef nonnull @arp_tbl, ptr noundef nonnull @neigh_check_cb) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1000
  %call = tail call i32 @mod_timer(ptr noundef nonnull @idle_timer, i32 noundef %add) #13
  tail call void @_raw_write_unlock(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 28)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__neigh_for_each_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neigh_check_cb(ptr noundef %n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tbl.i = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 1
  %0 = ptrtoint ptr %tbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl.i, align 4
  %entry_size.i = getelementptr inbounds %struct.neigh_table, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %n, i32 %3
  %ops = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 21
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %cmp.not = icmp eq ptr %5, @clip_neigh_ops
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cv.086 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not87 = icmp eq ptr %cv.086, null
  br i1 %tobool.not87, label %for.cond.preheader.lor.lhs.false_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.lor.lhs.false_crit_edge:       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cv.088 = phi ptr [ %cv.0, %if.end13.for.body_crit_edge ], [ %cv.086, %for.cond.preheader.for.body_crit_edge ]
  %idle_timeout = getelementptr inbounds %struct.clip_vcc, ptr %cv.088, i32 0, i32 5
  %7 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idle_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %for.body.if.end13_crit_edge, label %land.lhs.true

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %last_use = getelementptr inbounds %struct.clip_vcc, ptr %cv.088, i32 0, i32 4
  %9 = ptrtoint ptr %last_use to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_use, align 4
  %add = add i32 %10, %8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %do.body, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neigh_check_cb.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neigh_check_cb, %if.then10)) #13
          to label %do.end [label %if.then10], !srcloc !245

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %cv.088 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cv.088, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @neigh_check_cb.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, ptr noundef nonnull %cv.088, ptr noundef %13, ptr noundef %add.ptr.i) #13
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %14 = ptrtoint ptr %cv.088 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cv.088, align 4
  tail call void @vcc_release_async(ptr noundef %15, i32 noundef -110) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %land.lhs.true.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %next = getelementptr inbounds %struct.clip_vcc, ptr %cv.088, i32 0, i32 8
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %16)
  %cv.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %cv.0, null
  br i1 %tobool.not, label %for.end, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end13
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %add.ptr.i, align 4
  %tobool15.not = icmp eq ptr %.pr, null
  br i1 %tobool15.not, label %for.end.lor.lhs.false_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end.lor.lhs.false_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.lor.lhs.false_crit_edge, %for.cond.preheader.lor.lhs.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %expires = getelementptr inbounds %struct.atmarp_entry, ptr %add.ptr.i, i32 0, i32 1
  %19 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %expires, align 4
  %sub16 = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16)
  %cmp17 = icmp slt i32 %sub16, 0
  br i1 %cmp17, label %lor.lhs.false.cleanup_crit_edge, label %if.end19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %refcnt = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %21 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp21 = icmp ugt i32 %22, 1
  br i1 %cmp21, label %if.then22, label %do.body44

if.then22:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neigh_check_cb.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neigh_check_cb, %if.then35)) #13
          to label %do.end40 [label %if.then35], !srcloc !245

if.then35:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i82 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %23 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %refcnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @neigh_check_cb.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.85, i32 noundef %24) #13
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %if.then22
  %arp_queue = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 8
  %call4189 = tail call ptr @skb_dequeue(ptr noundef %arp_queue) #13
  %cmp42.not90 = icmp eq ptr %call4189, null
  br i1 %cmp42.not90, label %do.end40.cleanup_crit_edge, label %do.end40.while.body_crit_edge

do.end40.while.body_crit_edge:                    ; preds = %do.end40
  br label %while.body

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end40.while.body_crit_edge
  %call4191 = phi ptr [ %call41, %while.body.while.body_crit_edge ], [ %call4189, %do.end40.while.body_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call4191) #13
  %call41 = tail call ptr @skb_dequeue(ptr noundef %arp_queue) #13
  %cmp42.not = icmp eq ptr %call41, null
  br i1 %cmp42.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body44:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @neigh_check_cb.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@neigh_check_cb, %if.then56)) #13
          to label %cleanup [label %if.then56], !srcloc !245

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @neigh_check_cb.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.85, ptr noundef %n) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.body44, %while.body.cleanup_crit_edge, %do.end40.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 1, %if.then56 ], [ 1, %do.body44 ], [ 0, %do.end40.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_release_async(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @clip_seq_start(ptr noundef %seq, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %neigh_sub_iter = getelementptr inbounds %struct.neigh_seq_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %neigh_sub_iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @clip_seq_sub_iter, ptr %neigh_sub_iter, align 4
  %call = tail call ptr @neigh_seq_start(ptr noundef %seq, ptr noundef %pos, ptr noundef nonnull @arp_tbl, i32 noundef 1) #13
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_seq_stop(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_seq_next(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clip_seq_show(ptr noundef %seq, ptr noundef %v) #2 align 64 {
entry:
  %buf.i = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @clip_seq_show.atm_arp_banner) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %vcc1 = getelementptr inbounds %struct.clip_seq_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vcc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcc1, align 4
  %tbl.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 1
  %4 = ptrtoint ptr %tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tbl.i, align 4
  %entry_size.i = getelementptr inbounds %struct.neigh_table, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %v, i32 %7
  %dev2.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 25
  %8 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buf.i) #13
  %cmp.i = icmp eq ptr %3, inttoptr (i32 2 to ptr)
  %10 = call ptr @memset(ptr %buf.i, i32 255, i32 17)
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %neigh.i = getelementptr inbounds %struct.atmarp_entry, ptr %add.ptr.i, i32 0, i32 2
  %11 = ptrtoint ptr %neigh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %neigh.i, align 4
  %used.i = getelementptr inbounds %struct.neighbour, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %exp.070.i = load i32, ptr %used.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub71.i = sub i32 %14, %exp.070.i
  %div72.i = udiv i32 %sub71.i, 100
  br label %23

if.end.i:                                         ; preds = %if.else
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %18)
  %cmp3.i = icmp eq i16 %18, 20
  %encap.i = getelementptr inbounds %struct.clip_vcc, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %encap.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %encap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %phi.sel.i = select i1 %tobool.not.i, ptr @.str.96, ptr @.str.95
  %last_use.i = getelementptr inbounds %struct.clip_vcc, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %last_use.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %exp.0.i = load i32, ptr %last_use.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %22, %exp.0.i
  %div.i = udiv i32 %sub.i, 100
  br i1 %cmp3.i, label %if.end.i._crit_edge, label %if.end.i._crit_edge6

if.end.i._crit_edge6:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %25

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %23

23:                                               ; preds = %if.end.i._crit_edge, %if.end.thread.i
  %div74.i = phi i32 [ %div72.i, %if.end.thread.i ], [ %div.i, %if.end.i._crit_edge ]
  %24 = phi ptr [ @.str.95, %if.end.thread.i ], [ %phi.sel.i, %if.end.i._crit_edge ]
  br label %25

25:                                               ; preds = %23, %if.end.i._crit_edge6
  %div73.i = phi i32 [ %div74.i, %23 ], [ %div.i, %if.end.i._crit_edge6 ]
  %26 = phi i1 [ true, %23 ], [ false, %if.end.i._crit_edge6 ]
  %27 = phi ptr [ %24, %23 ], [ %phi.sel.i, %if.end.i._crit_edge6 ]
  %28 = phi ptr [ @.str.93, %23 ], [ @.str.94, %if.end.i._crit_edge6 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.92, ptr noundef %9, ptr noundef nonnull %28, ptr noundef nonnull %27, i32 noundef %div73.i) #13
  %primary_key.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 27
  %call18.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 16, ptr noundef nonnull @.str.97, ptr noundef %primary_key.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call18.i)
  %cmp1975.i = icmp slt i32 %call18.i, 16
  br i1 %cmp1975.i, label %while.body.preheader.i, label %.while.end.i_crit_edge

.while.end.i_crit_edge:                           ; preds = %25
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.preheader.i:                           ; preds = %25
  call void @__sanitizer_cov_trace_pc() #15
  %uglygep.i = getelementptr i8, ptr %buf.i, i32 %call18.i
  %29 = sub i32 16, %call18.i
  %30 = call ptr @memset(ptr %uglygep.i, i32 32, i32 %29)
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.preheader.i, %.while.end.i_crit_edge
  %off.0.lcssa.i = phi i32 [ %call18.i, %.while.end.i_crit_edge ], [ 16, %while.body.preheader.i ]
  %arrayidx21.i = getelementptr [17 x i8], ptr %buf.i, i32 0, i32 %off.0.lcssa.i
  %31 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx21.i, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.98, ptr noundef nonnull %buf.i) #13
  br i1 %cmp.i, label %if.then25.i, label %if.else34.i

if.then25.i:                                      ; preds = %while.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %expires.i = getelementptr inbounds %struct.atmarp_entry, ptr %add.ptr.i, i32 0, i32 1
  %33 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %expires.i, align 4
  %sub26.i = sub i32 %32, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26.i)
  %cmp27.i = icmp slt i32 %sub26.i, 0
  br i1 %cmp27.i, label %if.then29.i, label %if.else30.i

if.then29.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.99) #13
  br label %atmarp_info.exit

if.else30.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #15
  %neigh31.i = getelementptr inbounds %struct.atmarp_entry, ptr %add.ptr.i, i32 0, i32 2
  %35 = ptrtoint ptr %neigh31.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %neigh31.i, align 4
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %36, i32 0, i32 6
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #13
  %37 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %refcnt.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.100, i32 noundef %38) #13
  br label %atmarp_info.exit

if.else34.i:                                      ; preds = %while.end.i
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  br i1 %26, label %if.else42.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev38.i = getelementptr inbounds %struct.atm_vcc, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev38.i, align 4
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %number.i, align 4
  %vpi.i = getelementptr inbounds %struct.atm_vcc, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vpi.i, align 4
  %conv40.i = sext i16 %46 to i32
  %vci.i = getelementptr inbounds %struct.atm_vcc, ptr %40, i32 0, i32 3
  %47 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vci.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.101, i32 noundef %44, i32 noundef %conv40.i, i32 noundef %48) #13
  br label %atmarp_info.exit

if.else42.i:                                      ; preds = %if.else34.i
  %sas_addr.i.i = getelementptr inbounds %struct.atm_vcc, ptr %40, i32 0, i32 20, i32 1
  %pub.i.i = getelementptr inbounds %struct.atm_vcc, ptr %40, i32 0, i32 20, i32 1, i32 1
  %49 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pub.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else42.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.98, ptr noundef %pub.i.i) #13
  %51 = ptrtoint ptr %sas_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sas_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool6.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool6.not.i.i, label %if.then.i.i.svc_addr.exit.i_crit_edge, label %if.end14.i.i

if.then.i.i.svc_addr.exit.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %svc_addr.exit.i

if.else.i.i:                                      ; preds = %if.else42.i
  %53 = ptrtoint ptr %sas_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sas_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool11.not.i.i = icmp eq i8 %54, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.else.i.i.if.then19.i.i_crit_edge

if.else.i.i.if.then19.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19.i.i

if.then12.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.102) #13
  br label %svc_addr.exit.i

if.end14.i.i:                                     ; preds = %if.then.i.i
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 43) #13
  %55 = ptrtoint ptr %sas_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr.i.i = load i8, ptr %sas_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool18.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end14.i.i.svc_addr.exit.i_crit_edge, label %if.end14.i.i.if.then19.i.i_crit_edge

if.end14.i.i.if.then19.i.i_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19.i.i

if.end14.i.i.svc_addr.exit.i_crit_edge:           ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %svc_addr.exit.i

if.then19.i.i:                                    ; preds = %if.end14.i.i.if.then19.i.i_crit_edge, %if.else.i.i.if.then19.i.i_crit_edge
  %56 = phi i8 [ %.pr.i.i, %if.end14.i.i.if.then19.i.i_crit_edge ], [ %54, %if.else.i.i.if.then19.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %56)
  %cmp.i.i = icmp eq i8 %56, 69
  %cond.i.i = select i1 %cmp.i.i, ptr @svc_addr.e164, ptr @svc_addr.code
  %57 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cond.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool25.not61.i.i = icmp eq i32 %58, 0
  br i1 %tobool25.not61.i.i, label %if.then19.i.i.svc_addr.exit.i_crit_edge, label %if.then19.i.i.for.cond27.preheader.i.i_crit_edge

if.then19.i.i.for.cond27.preheader.i.i_crit_edge: ; preds = %if.then19.i.i
  br label %for.cond27.preheader.i.i

if.then19.i.i.svc_addr.exit.i_crit_edge:          ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %svc_addr.exit.i

for.cond27.preheader.i.i:                         ; preds = %for.inc35.i.i, %if.then19.i.i.for.cond27.preheader.i.i_crit_edge
  %59 = phi i32 [ %63, %for.inc35.i.i ], [ %58, %if.then19.i.i.for.cond27.preheader.i.i_crit_edge ]
  %i.063.i.i = phi i32 [ %add.i.i, %for.inc35.i.i ], [ 0, %if.then19.i.i.for.cond27.preheader.i.i_crit_edge ]
  %prv20.062.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc35.i.i ], [ %sas_addr.i.i, %if.then19.i.i.for.cond27.preheader.i.i_crit_edge ]
  br label %for.body29.i.i

for.body29.i.i:                                   ; preds = %for.body29.i.i.for.body29.i.i_crit_edge, %for.cond27.preheader.i.i
  %j.060.i.i = phi i32 [ %59, %for.cond27.preheader.i.i ], [ %dec.i.i, %for.body29.i.i.for.body29.i.i_crit_edge ]
  %prv20.159.i.i = phi ptr [ %prv20.062.i.i, %for.cond27.preheader.i.i ], [ %incdec.ptr.i.i, %for.body29.i.i.for.body29.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %prv20.159.i.i, i32 1
  %60 = ptrtoint ptr %prv20.159.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %prv20.159.i.i, align 1
  %conv30.i.i = zext i8 %61 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.103, i32 noundef %conv30.i.i) #13
  %dec.i.i = add i32 %j.060.i.i, -1
  %tobool28.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool28.not.i.i, label %for.cond27.for.end_crit_edge.i.i, label %for.body29.i.i.for.body29.i.i_crit_edge

for.body29.i.i.for.body29.i.i_crit_edge:          ; preds = %for.body29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body29.i.i

for.cond27.for.end_crit_edge.i.i:                 ; preds = %for.body29.i.i
  %add.i.i = add i32 %i.063.i.i, 1
  %arrayidx31.i.i = getelementptr i32, ptr %cond.i.i, i32 %add.i.i
  %62 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx31.i.i, align 4
  %tobool32.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool32.not.i.i, label %for.cond27.for.end_crit_edge.i.i.svc_addr.exit.i_crit_edge, label %for.inc35.i.i

for.cond27.for.end_crit_edge.i.i.svc_addr.exit.i_crit_edge: ; preds = %for.cond27.for.end_crit_edge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %svc_addr.exit.i

for.inc35.i.i:                                    ; preds = %for.cond27.for.end_crit_edge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 46) #13
  br label %for.cond27.preheader.i.i

svc_addr.exit.i:                                  ; preds = %for.cond27.for.end_crit_edge.i.i.svc_addr.exit.i_crit_edge, %if.then19.i.i.svc_addr.exit.i_crit_edge, %if.end14.i.i.svc_addr.exit.i_crit_edge, %if.then12.i.i, %if.then.i.i.svc_addr.exit.i_crit_edge
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #13
  br label %atmarp_info.exit

atmarp_info.exit:                                 ; preds = %svc_addr.exit.i, %if.then36.i, %if.else30.i, %if.then29.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buf.i) #13
  br label %if.end

if.end:                                           ; preds = %atmarp_info.exit, %if.then
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @clip_seq_sub_iter(ptr nocapture noundef %_state, ptr nocapture noundef readonly %n, ptr noundef %pos) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 25
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %3)
  %cmp.not = icmp eq i16 %3, 19
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tbl.i = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 1
  %4 = ptrtoint ptr %tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tbl.i, align 4
  %entry_size.i = getelementptr inbounds %struct.neigh_table, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %n, i32 %7
  %vcc1.i = getelementptr inbounds %struct.clip_seq_state, ptr %_state, i32 0, i32 1
  %8 = ptrtoint ptr %vcc1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vcc1.i, align 4
  %magicptr.i.i = ptrtoint ptr %9 to i32
  %10 = zext i32 %magicptr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %magicptr.i.i, label %clip_seq_next_vcc.exit.i [
    i32 0, label %if.then.i.i
    i32 2, label %if.end.clip_seq_vcc_walk.exit_crit_edge
  ]

if.end.clip_seq_vcc_walk.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %clip_seq_vcc_walk.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %tobool1.not.i.i = icmp eq ptr %12, null
  %spec.select.i = select i1 %tobool1.not.i.i, ptr inttoptr (i32 2 to ptr), ptr %12
  br label %land.lhs.true.i

clip_seq_next_vcc.exit.i:                         ; preds = %if.end
  %next.i.i = getelementptr inbounds %struct.clip_vcc, ptr %9, i32 0, i32 8
  %13 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next.i.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %clip_seq_next_vcc.exit.i.clip_seq_vcc_walk.exit_crit_edge, label %clip_seq_next_vcc.exit.i.land.lhs.true.i_crit_edge

clip_seq_next_vcc.exit.i.land.lhs.true.i_crit_edge: ; preds = %clip_seq_next_vcc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

clip_seq_next_vcc.exit.i.clip_seq_vcc_walk.exit_crit_edge: ; preds = %clip_seq_next_vcc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clip_seq_vcc_walk.exit

land.lhs.true.i:                                  ; preds = %clip_seq_next_vcc.exit.i.land.lhs.true.i_crit_edge, %if.then.i.i
  %retval.0.i27.i = phi ptr [ %14, %clip_seq_next_vcc.exit.i.land.lhs.true.i_crit_edge ], [ %spec.select.i, %if.then.i.i ]
  %cmp.not.i = icmp eq ptr %pos, null
  br i1 %cmp.not.i, label %land.lhs.true.i.clip_seq_vcc_walk.exit_crit_edge, label %while.condthread-pre-split.i

land.lhs.true.i.clip_seq_vcc_walk.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clip_seq_vcc_walk.exit

while.condthread-pre-split.i:                     ; preds = %land.lhs.true.i
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %.pr.i = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr.i)
  %tobool2.not39.i = icmp eq i64 %.pr.i, 0
  br i1 %tobool2.not39.i, label %while.condthread-pre-split.i.clip_seq_vcc_walk.exit_crit_edge, label %while.condthread-pre-split.i.while.body.i_crit_edge

while.condthread-pre-split.i.while.body.i_crit_edge: ; preds = %while.condthread-pre-split.i
  br label %while.body.i

while.condthread-pre-split.i.clip_seq_vcc_walk.exit_crit_edge: ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clip_seq_vcc_walk.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.condthread-pre-split.i.while.body.i_crit_edge
  %vcc.040.i = phi ptr [ %retval.0.i2334.i, %if.end.i.while.body.i_crit_edge ], [ %retval.0.i27.i, %while.condthread-pre-split.i.while.body.i_crit_edge ]
  %16 = phi i64 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ %.pr.i, %while.condthread-pre-split.i.while.body.i_crit_edge ]
  %magicptr.i17.i = ptrtoint ptr %vcc.040.i to i32
  %17 = zext i32 %magicptr.i17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %magicptr.i17.i, label %clip_seq_next_vcc.exit24.i [
    i32 0, label %if.then.i20.i
    i32 2, label %while.body.i.clip_seq_vcc_walk.exit_crit_edge
  ]

while.body.i.clip_seq_vcc_walk.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clip_seq_vcc_walk.exit

if.then.i20.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %tobool1.not.i18.i = icmp eq ptr %19, null
  %spec.select38.i = select i1 %tobool1.not.i18.i, ptr inttoptr (i32 2 to ptr), ptr %19
  br label %if.end.i

clip_seq_next_vcc.exit24.i:                       ; preds = %while.body.i
  %next.i21.i = getelementptr inbounds %struct.clip_vcc, ptr %vcc.040.i, i32 0, i32 8
  %20 = ptrtoint ptr %next.i21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next.i21.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i, label %clip_seq_next_vcc.exit24.i.clip_seq_vcc_walk.exit_crit_edge, label %clip_seq_next_vcc.exit24.i.if.end.i_crit_edge

clip_seq_next_vcc.exit24.i.if.end.i_crit_edge:    ; preds = %clip_seq_next_vcc.exit24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

clip_seq_next_vcc.exit24.i.clip_seq_vcc_walk.exit_crit_edge: ; preds = %clip_seq_next_vcc.exit24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clip_seq_vcc_walk.exit

if.end.i:                                         ; preds = %clip_seq_next_vcc.exit24.i.if.end.i_crit_edge, %if.then.i20.i
  %retval.0.i2334.i = phi ptr [ %21, %clip_seq_next_vcc.exit24.i.if.end.i_crit_edge ], [ %spec.select38.i, %if.then.i20.i ]
  %dec.i = add i64 %16, -1
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %dec.i, ptr %pos, align 8
  %tobool2.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clip_seq_vcc_walk.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.clip_seq_vcc_walk.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clip_seq_vcc_walk.exit

clip_seq_vcc_walk.exit:                           ; preds = %if.end.i.clip_seq_vcc_walk.exit_crit_edge, %clip_seq_next_vcc.exit24.i.clip_seq_vcc_walk.exit_crit_edge, %while.body.i.clip_seq_vcc_walk.exit_crit_edge, %while.condthread-pre-split.i.clip_seq_vcc_walk.exit_crit_edge, %land.lhs.true.i.clip_seq_vcc_walk.exit_crit_edge, %clip_seq_next_vcc.exit.i.clip_seq_vcc_walk.exit_crit_edge, %if.end.clip_seq_vcc_walk.exit_crit_edge
  %vcc.1.i = phi ptr [ %retval.0.i27.i, %land.lhs.true.i.clip_seq_vcc_walk.exit_crit_edge ], [ null, %clip_seq_next_vcc.exit.i.clip_seq_vcc_walk.exit_crit_edge ], [ null, %if.end.clip_seq_vcc_walk.exit_crit_edge ], [ %retval.0.i27.i, %while.condthread-pre-split.i.clip_seq_vcc_walk.exit_crit_edge ], [ null, %while.body.i.clip_seq_vcc_walk.exit_crit_edge ], [ %retval.0.i2334.i, %if.end.i.clip_seq_vcc_walk.exit_crit_edge ], [ null, %clip_seq_next_vcc.exit24.i.clip_seq_vcc_walk.exit_crit_edge ]
  %23 = ptrtoint ptr %vcc1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %vcc.1.i, ptr %vcc1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %clip_seq_vcc_walk.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vcc.1.i, %clip_seq_vcc_walk.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_seq_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !89, !90, !92, !93, !94, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !183, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/atm/clip.c", i32 920, i32 20}
!2 = !{ptr @__initcall__kmod_clip__522_925_atm_clip_init6, !3, !"__initcall__kmod_clip__522_925_atm_clip_init6", i1 false, i1 false}
!3 = !{!"../net/atm/clip.c", i32 925, i32 1}
!4 = !{ptr @__exitcall_atm_clip_exit, !5, !"__exitcall_atm_clip_exit", i1 false, i1 false}
!5 = !{!"../net/atm/clip.c", i32 926, i32 1}
!6 = !{ptr @__UNIQUE_ID_author523, !7, !"__UNIQUE_ID_author523", i1 false, i1 false}
!7 = !{!"../net/atm/clip.c", i32 927, i32 1}
!8 = !{ptr @__UNIQUE_ID_description524, !9, !"__UNIQUE_ID_description524", i1 false, i1 false}
!9 = !{!"../net/atm/clip.c", i32 928, i32 1}
!10 = !{ptr @__UNIQUE_ID_file525, !11, !"__UNIQUE_ID_file525", i1 false, i1 false}
!11 = !{!"../net/atm/clip.c", i32 929, i32 1}
!12 = !{ptr @__UNIQUE_ID_license526, !11, !"__UNIQUE_ID_license526", i1 false, i1 false}
!13 = !{ptr @clip_inet_notifier, !14, !"clip_inet_notifier", i1 false, i1 false}
!14 = !{!"../net/atm/clip.c", i32 601, i32 30}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/atm/clip.c", i32 562, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @clip_device_event.__UNIQUE_ID_ddebug517, !16, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!21 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/atm/clip.c", i32 566, i32 3}
!24 = !{ptr @clip_device_event.__UNIQUE_ID_ddebug518, !23, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/atm/clip.c", i32 571, i32 3}
!28 = !{ptr @clip_device_event.__UNIQUE_ID_ddebug519, !27, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @clip_netdev_ops, !31, !"clip_netdev_ops", i1 false, i1 false}
!31 = !{!"../net/atm/clip.c", i32 489, i32 36}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/atm/clip.c", i32 341, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @clip_start_xmit.__UNIQUE_ID_ddebug508, !33, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!36 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/atm/clip.c", i32 343, i32 3}
!39 = !{ptr @clip_start_xmit._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @clip_start_xmit._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/atm/clip.c", i32 355, i32 3}
!43 = !{ptr @clip_start_xmit._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @clip_start_xmit._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/atm/clip.c", i32 375, i32 2}
!47 = !{ptr @clip_start_xmit.__UNIQUE_ID_ddebug509, !46, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!48 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/atm/clip.c", i32 377, i32 2}
!51 = !{ptr @clip_start_xmit.__UNIQUE_ID_ddebug510, !50, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!52 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/atm/clip.c", i32 387, i32 2}
!55 = !{ptr @clip_start_xmit.__UNIQUE_ID_ddebug511, !54, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!56 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/atm/clip.c", i32 390, i32 3}
!59 = !{ptr @clip_start_xmit._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @clip_start_xmit._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!63 = !{ptr @llc_oui, !64, !"llc_oui", i1 false, i1 false}
!64 = !{!"../net/atm/clip.c", i32 181, i32 28}
!65 = !{ptr @clip_neigh_ops, !66, !"clip_neigh_ops", i1 false, i1 false}
!66 = !{!"../net/atm/clip.c", i32 282, i32 31}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/atm/clip.c", i32 270, i32 2}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @clip_neigh_solicit.__UNIQUE_ID_ddebug507, !68, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!71 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/atm/clip.c", i32 58, i32 2}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @to_atmarpd.__UNIQUE_ID_ddebug496, !73, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!76 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @atmarpd, !78, !"atmarpd", i1 false, i1 false}
!78 = !{!"../net/atm/clip.c", i32 48, i32 24}
!79 = !{ptr @clip_dev_notifier, !80, !"clip_dev_notifier", i1 false, i1 false}
!80 = !{!"../net/atm/clip.c", i32 595, i32 30}
!81 = !{ptr @clip_ioctl_ops, !82, !"clip_ioctl_ops", i1 false, i1 false}
!82 = !{!"../net/atm/clip.c", i32 698, i32 25}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/atm/clip.c", i32 526, i32 8}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/atm/clip.c", i32 531, i32 21}
!87 = !{ptr @clip_create.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../net/atm/clip.c", i32 532, i32 2}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/atm/clip.c", i32 541, i32 2}
!92 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @clip_create.__UNIQUE_ID_ddebug516, !91, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!94 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/atm/clip.c", i32 627, i32 12}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/atm/clip.c", i32 629, i32 12}
!99 = !{ptr @atmarpd_dev, !100, !"atmarpd_dev", i1 false, i1 false}
!100 = !{!"../net/atm/clip.c", i32 625, i32 23}
!101 = !{ptr @atmarpd_dev_ops, !102, !"atmarpd_dev_ops", i1 false, i1 false}
!102 = !{!"../net/atm/clip.c", i32 620, i32 32}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/atm/clip.c", i32 609, i32 2}
!105 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @atmarpd_close.__UNIQUE_ID_ddebug520, !104, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!107 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/atm/clip.c", i32 616, i32 2}
!110 = !{ptr @atmarpd_close.__UNIQUE_ID_ddebug521, !109, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!111 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/atm/clip.c", i32 424, i32 2}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @clip_mkip.__UNIQUE_ID_ddebug512, !113, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!116 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/atm/clip.c", i32 194, i32 2}
!119 = !{ptr @clip_push.__UNIQUE_ID_ddebug504, !118, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/atm/clip.c", i32 203, i32 3}
!122 = !{ptr @clip_push.__UNIQUE_ID_ddebug505, !121, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!123 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/atm/clip.c", i32 92, i32 3}
!126 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @unlink_clip_vcc._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @unlink_clip_vcc._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/atm/clip.c", i32 112, i32 5}
!131 = !{ptr @unlink_clip_vcc._entry.54, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @unlink_clip_vcc._entry_ptr.56, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/atm/clip.c", i32 115, i32 2}
!135 = !{ptr @unlink_clip_vcc._entry.57, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @unlink_clip_vcc._entry_ptr.59, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/atm/clip.c", i32 169, i32 2}
!139 = !{ptr @clip_arp_rcv.__UNIQUE_ID_ddebug501, !138, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/atm/clip.c", i32 175, i32 2}
!142 = !{ptr @clip_arp_rcv.__UNIQUE_ID_ddebug502, !141, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!143 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/atm/clip.c", i32 176, i32 2}
!146 = !{ptr @clip_arp_rcv.__UNIQUE_ID_ddebug503, !145, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!147 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/atm/clip.c", i32 252, i32 2}
!150 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @clip_pop.__UNIQUE_ID_ddebug506, !149, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!152 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/atm/clip.c", i32 453, i32 3}
!155 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @clip_setentry._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @clip_setentry._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/atm/clip.c", i32 459, i32 4}
!160 = !{ptr @clip_setentry._entry.70, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @clip_setentry._entry_ptr.72, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/atm/clip.c", i32 462, i32 3}
!164 = !{ptr @clip_setentry.__UNIQUE_ID_ddebug513, !163, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!165 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/atm/clip.c", i32 476, i32 4}
!168 = !{ptr @clip_setentry.__UNIQUE_ID_ddebug514, !167, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!169 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/atm/clip.c", i32 478, i32 4}
!172 = !{ptr @clip_setentry.__UNIQUE_ID_ddebug515, !171, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!173 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/atm/clip.c", i32 78, i32 2}
!176 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @link_vcc.__UNIQUE_ID_ddebug497, !175, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!178 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @idle_timer, !180, !"idle_timer", i1 false, i1 false}
!180 = !{!"../net/atm/clip.c", i32 49, i32 26}
!181 = !{ptr @clip_devs, !182, !"clip_devs", i1 false, i1 false}
!182 = !{!"../net/atm/clip.c", i32 47, i32 27}
!183 = !{ptr @atm_clip_init.__key, !184, !"__key", i1 false, i1 false}
!184 = !{!"../net/atm/clip.c", i32 876, i32 2}
!185 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../net/atm/clip.c", i32 885, i32 4}
!188 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @atm_clip_init._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @atm_clip_init._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/atm/clip.c", i32 132, i32 4}
!193 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @neigh_check_cb.__UNIQUE_ID_ddebug498, !192, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!195 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/atm/clip.c", i32 144, i32 3}
!198 = !{ptr @neigh_check_cb.__UNIQUE_ID_ddebug499, !197, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!199 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.90, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../net/atm/clip.c", i32 153, i32 2}
!202 = !{ptr @neigh_check_cb.__UNIQUE_ID_ddebug500, !201, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!203 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @arp_seq_ops, !205, !"arp_seq_ops", i1 false, i1 false}
!205 = !{!"../net/atm/clip.c", i32 860, i32 36}
!206 = !{ptr @clip_seq_show.atm_arp_banner, !207, !"atm_arp_banner", i1 false, i1 false}
!207 = !{!"../net/atm/clip.c", i32 845, i32 14}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../net/atm/clip.c", i32 756, i32 18}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/atm/clip.c", i32 757, i32 23}
!212 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../net/atm/clip.c", i32 757, i32 31}
!214 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../net/atm/clip.c", i32 757, i32 44}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/atm/clip.c", i32 757, i32 52}
!218 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../net/atm/clip.c", i32 759, i32 40}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/atm/clip.c", i32 763, i32 18}
!222 = !{ptr @.str.99, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../net/atm/clip.c", i32 767, i32 20}
!224 = !{ptr @.str.100, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../net/atm/clip.c", i32 769, i32 20}
!226 = !{ptr @.str.101, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../net/atm/clip.c", i32 772, i32 19}
!228 = !{ptr @svc_addr.code, !229, !"code", i1 false, i1 false}
!229 = !{!"../net/atm/clip.c", i32 707, i32 13}
!230 = !{ptr @svc_addr.e164, !231, !"e164", i1 false, i1 false}
!231 = !{!"../net/atm/clip.c", i32 708, i32 13}
!232 = !{ptr @.str.102, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../net/atm/clip.c", i32 715, i32 25}
!234 = !{ptr @.str.103, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../net/atm/clip.c", i32 726, i32 21}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{i64 2148727482, i64 2148727487, i64 2148727500, i64 2148727544, i64 2148727578, i64 2148727599}
!246 = !{i64 2148245667, i64 2148245693, i64 2148245722, i64 2148245756, i64 2148245787, i64 2148245810}
!247 = !{!"branch_weights", i32 1, i32 2000}
!248 = !{i64 2148247197, i64 2148247229, i64 2148247258, i64 2148247292, i64 2148247323, i64 2148247346}
!249 = !{!"branch_weights", i32 2000, i32 1}
!250 = !{i64 2157378309}
!251 = !{i64 752435, i64 752452, i64 752476, i64 752502, i64 752520}
!252 = !{i64 2157378652}
!253 = !{i64 2157380757}
!254 = !{i64 2148335198}
!255 = !{i64 2148249662, i64 2148249694, i64 2148249723, i64 2148249757, i64 2148249788, i64 2148249811}
!256 = !{i64 2149326297}
!257 = !{i64 2148248132, i64 2148248158, i64 2148248187, i64 2148248221, i64 2148248252, i64 2148248275}
!258 = !{i64 2157361764}
!259 = !{i64 2157362107}
