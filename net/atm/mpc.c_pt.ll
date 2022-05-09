; ModuleID = '/llk/IR_all_yes/net/atm/mpc.c_pt.bc'
source_filename = "../net/atm/mpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atm_ioctl = type { ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.anon.153 = type { %struct.llc_snap_hdr, i32 }
%struct.llc_snap_hdr = type { i8, i8, i8, [3 x i8], [2 x i8] }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.154, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.anon.154 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atm_mpoa_qos = type { ptr, i32, %struct.atm_qos }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mpoa_client = type { ptr, ptr, i32, ptr, [20 x i8], [20 x i8], %struct.rwlock_t, ptr, ptr, %struct.rwlock_t, ptr, ptr, ptr, i32, %struct.mpc_parameters, ptr, %struct.net_device_ops }
%struct.mpc_parameters = type { i16, i16, [8 x i8], i16, i16, i16 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.139 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.lane2_ops = type { ptr, ptr, ptr }
%struct.in_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.eg_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.k_message = type { i16, i32, [20 x i8], %union.anon.147, %struct.atm_qos }
%union.anon.147 = type { %struct.eg_ctrl_info }
%struct.eg_ctrl_info = type { [256 x i8], i8, i32, i32, i32, i32, [20 x i8], i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.in_cache_entry = type { ptr, ptr, i64, i64, i64, i32, i16, i32, i32, i32, ptr, [20 x i8], %struct.in_ctrl_info, %struct.refcount_struct }
%struct.in_ctrl_info = type { i8, i8, [20 x i8], i32, i32, i16, i32 }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.140, i8, %union.anon.142 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i8, i8 }
%union.anon.142 = type { %struct.anon.145 }
%struct.anon.145 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.146 }
%struct.anon.146 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.atmmpc_ioc = type { i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.eg_cache_entry = type { ptr, ptr, i64, [20 x i8], ptr, i32, i16, i32, %struct.eg_ctrl_info, %struct.refcount_struct }

@mpcs = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@atm_mpoa_add_qos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016mpoa:%s: mpoa: out of memory\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atm_mpoa_add_qos\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/atm/mpc.c\00", [18 x i8] zeroinitializer }, align 32
@atm_mpoa_add_qos._entry_ptr = internal global ptr @atm_mpoa_add_qos._entry, section ".printk_index", align 4
@qos_head = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"QoS entries for shortcuts:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"IP address\0A  TX:max_pcr pcr     min_pcr max_cdv max_sdu\0A  RX:max_pcr pcr     min_pcr max_cdv max_sdu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%pI4\0A     %-7d %-7d %-7d %-7d %-7d\0A     %-7d %-7d %-7d %-7d %-7d\0A\00", [62 x i8] zeroinitializer }, align 32
@msg_to_mpoad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016mpoa:%s: mesg %d to a non-existent mpoad\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msg_to_mpoad\00", [19 x i8] zeroinitializer }, align 32
@msg_to_mpoad._entry_ptr = internal global ptr @msg_to_mpoad._entry, section ".printk_index", align 4
@mpc_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @mpc_cache_check, i32 0, %struct.lockdep_map { ptr @.str.8, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@mpoa_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mpoa_event_listener, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@atm_ioctl_ops = internal global { %struct.atm_ioctl, [16 x i8] } { %struct.atm_ioctl { ptr null, ptr @atm_mpoa_ioctl, %struct.list_head zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_mpoa__459_1532_atm_mpoa_init6 = internal global ptr @atm_mpoa_init, section ".initcall6.init", align 4
@__exitcall_atm_mpoa_cleanup = internal global ptr @atm_mpoa_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file460 = internal constant [23 x i8] c"mpoa.file=net/atm/mpoa\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [17 x i8] c"mpoa.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/atm/mpc.c:125\00", [46 x i8] zeroinitializer }, align 32
@mpc_cache_check.previous_resolving_check_time = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mpc_cache_check.previous_refresh_time = internal global { i32, [28 x i8] } zeroinitializer, align 32
@checking_time = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@init_net = external dso_local global %struct.net, align 128
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lec\00", [28 x i8] zeroinitializer }, align 32
@mpoa_event_listener._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016mpoa:%s: no new mpc\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mpoa_event_listener\00", [44 x i8] zeroinitializer }, align 32
@mpoa_event_listener._entry_ptr = internal global ptr @mpoa_event_listener._entry, section ".printk_index", align 4
@lane2_assoc_ind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016mpoa:%s: (%s) no mpc\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lane2_assoc_ind\00", [16 x i8] zeroinitializer }, align 32
@lane2_assoc_ind._entry_ptr = internal global ptr @lane2_assoc_ind._entry, section ".printk_index", align 4
@lane2_assoc_ind._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016mpoa:%s: TLV value extends past its buffer, aborting parse\0A\00", [34 x i8] zeroinitializer }, align 32
@lane2_assoc_ind._entry_ptr.16 = internal global ptr @lane2_assoc_ind._entry.14, section ".printk_index", align 4
@lane2_assoc_ind._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016mpoa:%s: mpoa: (%s) TLV type was 0, returning\0A\00", [47 x i8] zeroinitializer }, align 32
@lane2_assoc_ind._entry_ptr.19 = internal global ptr @lane2_assoc_ind._entry.17, section ".printk_index", align 4
@lane2_assoc_ind._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016mpoa:%s: (%s) short MPOA Device Type TLV\0A\00", [52 x i8] zeroinitializer }, align 32
@lane2_assoc_ind._entry_ptr.22 = internal global ptr @lane2_assoc_ind._entry.20, section ".printk_index", align 4
@lane2_assoc_ind._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lane2_assoc_ind._entry_ptr.24 = internal global ptr @lane2_assoc_ind._entry.23, section ".printk_index", align 4
@lane2_assoc_ind._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016mpoa:%s: (%s) MPS_AND_MPC has zero MACs\0A\00", [53 x i8] zeroinitializer }, align 32
@lane2_assoc_ind._entry_ptr.27 = internal global ptr @lane2_assoc_ind._entry.25, section ".printk_index", align 4
@lane2_assoc_ind._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016mpoa:%s: (%s) ignoring %zd bytes of trailing TLV garbage\0A\00", [36 x i8] zeroinitializer }, align 32
@lane2_assoc_ind._entry_ptr.30 = internal global ptr @lane2_assoc_ind._entry.28, section ".printk_index", align 4
@copy_macs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016mpoa:%s: (%s) out of mem\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"copy_macs\00", [22 x i8] zeroinitializer }, align 32
@copy_macs._entry_ptr = internal global ptr @copy_macs._entry, section ".printk_index", align 4
@alloc_mpc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&mpc->ingress_lock\00", [45 x i8] zeroinitializer }, align 32
@alloc_mpc.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mpc->egress_lock\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@start_mpc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016mpoa:%s: (%s) not starting\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start_mpc\00", [22 x i8] zeroinitializer }, align 32
@start_mpc._entry_ptr = internal global ptr @start_mpc._entry, section ".printk_index", align 4
@mpc_send_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016mpoa:%s: (%s) no MPC found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mpc_send_packet\00", [16 x i8] zeroinitializer }, align 32
@mpc_send_packet._entry_ptr = internal global ptr @mpc_send_packet._entry, section ".printk_index", align 4
@send_via_shortcut.tagged_llc_snap_hdr = internal global { %struct.anon.153, [20 x i8] } { %struct.anon.153 { %struct.llc_snap_hdr { i8 -86, i8 -86, i8 3, [3 x i8] zeroinitializer, [2 x i8] c"\88L" }, i32 0 }, [20 x i8] zeroinitializer }, align 32
@llc_snap_mpoa_data = internal global { %struct.llc_snap_hdr, [24 x i8] } { %struct.llc_snap_hdr { i8 -86, i8 -86, i8 3, [3 x i8] zeroinitializer, [2 x i8] c"\08\00" }, [24 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@atm_mpoa_mpoad_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016mpoa:%s: mpoad is already present for itf %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atm_mpoa_mpoad_attach\00", [42 x i8] zeroinitializer }, align 32
@atm_mpoa_mpoad_attach._entry_ptr = internal global ptr @atm_mpoa_mpoad_attach._entry, section ".printk_index", align 4
@mpc_dev = internal global { %struct.atm_dev, [264 x i8] } { %struct.atm_dev { ptr @mpc_ops, ptr null, ptr @.str.44, i32 42, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [6 x i8] zeroinitializer, %struct.atm_cirange zeroinitializer, %struct.k_atm_dev_stats zeroinitializer, i8 0, i32 0, %struct.refcount_struct zeroinitializer, %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null, ptr null, %struct.device zeroinitializer, %struct.list_head zeroinitializer }, [264 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lec%d\00", [26 x i8] zeroinitializer }, align 32
@mpc_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr null, ptr null, ptr @mpoad_close, ptr null, ptr @msg_from_mpoad, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpc\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpc_dev.lock\00", [19 x i8] zeroinitializer }, align 32
@mpoad_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016mpoa:%s: did not find MPC\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpoad_close\00", [20 x i8] zeroinitializer }, align 32
@mpoad_close._entry_ptr = internal global ptr @mpoad_close._entry, section ".printk_index", align 4
@mpoad_close._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016mpoa:%s: close for non-present mpoad\0A\00", [56 x i8] zeroinitializer }, align 32
@mpoad_close._entry_ptr.50 = internal global ptr @mpoad_close._entry.48, section ".printk_index", align 4
@mpoad_close._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016mpoa:%s: (%s) going down\0A\00", [36 x i8] zeroinitializer }, align 32
@mpoad_close._entry_ptr.53 = internal global ptr @mpoad_close._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@msg_from_mpoad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016mpoa:%s: no mpc found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msg_from_mpoad\00", [17 x i8] zeroinitializer }, align 32
@msg_from_mpoad._entry_ptr = internal global ptr @msg_from_mpoad._entry, section ".printk_index", align 4
@MPOA_res_reply_rcvd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016mpoa:%s: (%s) ARGH, received res. reply for an entry that doesn't exist.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MPOA_res_reply_rcvd\00", [44 x i8] zeroinitializer }, align 32
@MPOA_res_reply_rcvd._entry_ptr = internal global ptr @MPOA_res_reply_rcvd._entry, section ".printk_index", align 4
@MPOA_res_reply_rcvd._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016mpoa:%s: (%s) RESOLVED entry!\0A\00", [63 x i8] zeroinitializer }, align 32
@MPOA_res_reply_rcvd._entry_ptr.61 = internal global ptr @MPOA_res_reply_rcvd._entry.59, section ".printk_index", align 4
@MPOA_res_reply_rcvd._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016mpoa:%s: (%s) entry->shortcut != NULL, impossible!\0A\00", [42 x i8] zeroinitializer }, align 32
@MPOA_res_reply_rcvd._entry_ptr.64 = internal global ptr @MPOA_res_reply_rcvd._entry.62, section ".printk_index", align 4
@check_qos_and_open_shortcut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016mpoa:%s: (%s) trying to get a CBR shortcut\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"check_qos_and_open_shortcut\00", [36 x i8] zeroinitializer }, align 32
@check_qos_and_open_shortcut._entry_ptr = internal global ptr @check_qos_and_open_shortcut._entry, section ".printk_index", align 4
@MPOA_trigger_rcvd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016mpoa:%s: (%s) entry already in resolving state\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MPOA_trigger_rcvd\00", [46 x i8] zeroinitializer }, align 32
@MPOA_trigger_rcvd._entry_ptr = internal global ptr @MPOA_trigger_rcvd._entry, section ".printk_index", align 4
@ingress_purge_rcvd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016mpoa:%s: (%s) purge for a non-existing entry, ip = %pI4\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ingress_purge_rcvd\00", [45 x i8] zeroinitializer }, align 32
@ingress_purge_rcvd._entry_ptr = internal global ptr @ingress_purge_rcvd._entry, section ".printk_index", align 4
@mps_death._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016mpoa:%s: (%s) wrong MPS\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mps_death\00", [22 x i8] zeroinitializer }, align 32
@mps_death._entry_ptr = internal global ptr @mps_death._entry, section ".printk_index", align 4
@purge_egress_shortcut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016mpoa:%s: vcc == NULL\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"purge_egress_shortcut\00", [42 x i8] zeroinitializer }, align 32
@purge_egress_shortcut._entry_ptr = internal global ptr @purge_egress_shortcut._entry, section ".printk_index", align 4
@purge_egress_shortcut._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016mpoa:%s: out of memory\0A\00", [38 x i8] zeroinitializer }, align 32
@purge_egress_shortcut._entry_ptr.77 = internal global ptr @purge_egress_shortcut._entry.75, section ".printk_index", align 4
@set_mpc_ctrl_addr_rcvd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016mpoa:%s: (%s) MPOA device type TLV association failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set_mpc_ctrl_addr_rcvd\00", [41 x i8] zeroinitializer }, align 32
@set_mpc_ctrl_addr_rcvd._entry_ptr = internal global ptr @set_mpc_ctrl_addr_rcvd._entry, section ".printk_index", align 4
@set_mpc_ctrl_addr_rcvd._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016mpoa:%s: (%s) targetless LE_ARP request failed\0A\00", [46 x i8] zeroinitializer }, align 32
@set_mpc_ctrl_addr_rcvd._entry_ptr.82 = internal global ptr @set_mpc_ctrl_addr_rcvd._entry.80, section ".printk_index", align 4
@set_mps_mac_addr_rcvd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.83, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set_mps_mac_addr_rcvd\00", [42 x i8] zeroinitializer }, align 32
@set_mps_mac_addr_rcvd._entry_ptr = internal global ptr @set_mps_mac_addr_rcvd._entry, section ".printk_index", align 4
@atm_mpoa_vcc_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016mpoa:%s: mpoa:Short read (missed %d bytes) from userland\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atm_mpoa_vcc_attach\00", [44 x i8] zeroinitializer }, align 32
@atm_mpoa_vcc_attach._entry_ptr = internal global ptr @atm_mpoa_vcc_attach._entry, section ".printk_index", align 4
@atm_mpoa_vcc_attach._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016mpoa:%s: (%s) did not find RESOLVED entry from ingress cache\0A\00", [32 x i8] zeroinitializer }, align 32
@atm_mpoa_vcc_attach._entry_ptr.88 = internal global ptr @atm_mpoa_vcc_attach._entry.86, section ".printk_index", align 4
@atm_mpoa_vcc_attach._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016mpoa:%s: (%s) attaching ingress SVC, entry = %pI4\0A\00", [43 x i8] zeroinitializer }, align 32
@atm_mpoa_vcc_attach._entry_ptr.91 = internal global ptr @atm_mpoa_vcc_attach._entry.89, section ".printk_index", align 4
@atm_mpoa_vcc_attach._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mpoa:%s: (%s) attaching egress SVC\0A\00", [58 x i8] zeroinitializer }, align 32
@atm_mpoa_vcc_attach._entry_ptr.94 = internal global ptr @atm_mpoa_vcc_attach._entry.92, section ".printk_index", align 4
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@llc_snap_mpoa_ctrl = internal global { %struct.llc_snap_hdr, [24 x i8] } { %struct.llc_snap_hdr { i8 -86, i8 -86, i8 3, [3 x i8] c"\00\00^", [2 x i8] c"\00\03" }, [24 x i8] zeroinitializer }, align 32
@mpc_push._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016mpoa:%s: (%s) unknown MPC\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mpc_push\00", [23 x i8] zeroinitializer }, align 32
@mpc_push._entry_ptr = internal global ptr @mpc_push._entry, section ".printk_index", align 4
@llc_snap_mpoa_data_tagged = internal global { %struct.llc_snap_hdr, [24 x i8] } { %struct.llc_snap_hdr { i8 -86, i8 -86, i8 3, [3 x i8] zeroinitializer, [2 x i8] c"\88L" }, [24 x i8] zeroinitializer }, align 32
@mpc_push._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016mpoa:%s: (%s) Unsupported non-tagged data packet arrived.  Purging\0A\00", [58 x i8] zeroinitializer }, align 32
@mpc_push._entry_ptr.102 = internal global ptr @mpc_push._entry.100, section ".printk_index", align 4
@mpc_push._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016mpoa:%s: (%s) garbage arrived, purging\0A\00", [54 x i8] zeroinitializer }, align 32
@mpc_push._entry_ptr.105 = internal global ptr @mpc_push._entry.103, section ".printk_index", align 4
@mpc_push._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016mpoa:%s: mpoa: (%s) Didn't find egress cache entry, tag = %u\0A\00", [32 x i8] zeroinitializer }, align 32
@mpc_push._entry_ptr.108 = internal global ptr @mpc_push._entry.106, section ".printk_index", align 4
@mpc_push._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.99, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016mpoa:%s: (%s) egress SVC in use\0A\00", [61 x i8] zeroinitializer }, align 32
@mpc_push._entry_ptr.111 = internal global ptr @mpc_push._entry.109, section ".printk_index", align 4
@mpc_vcc_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016mpoa:%s: (%s) close for unknown MPC\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mpc_vcc_close\00", [18 x i8] zeroinitializer }, align 32
@mpc_vcc_close._entry_ptr = internal global ptr @mpc_vcc_close._entry, section ".printk_index", align 4
@atm_mpoa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 1481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016mpoa:%s: failed to initialize /proc/mpoa\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atm_mpoa_init\00", [18 x i8] zeroinitializer }, align 32
@atm_mpoa_init._entry_ptr = internal global ptr @atm_mpoa_init._entry, section ".printk_index", align 4
@atm_mpoa_init._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.2, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016mpoa:%s: mpc.c: initialized\0A\00", [33 x i8] zeroinitializer }, align 32
@atm_mpoa_init._entry_ptr.118 = internal global ptr @atm_mpoa_init._entry.116, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10501674]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 25048, i64 25049]
@__sancov_gen_cov_switch_values.122 = internal global [13 x i64] [i64 11, i64 16, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 301]
@___asan_gen_.123 = private unnamed_addr constant [5 x i8] c"mpcs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 123, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 189, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [9 x i8] c"qos_head\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 124, i32 29 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 250, i32 16 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 251, i32 16 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 254, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 981, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [10 x i8] c"mpc_timer\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [14 x i8] c"mpoa_notifier\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 117, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"atm_ioctl_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1471, i32 25 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 125, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant [30 x i8] c"previous_resolving_check_time\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1423, i32 23 }
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"previous_refresh_time\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1424, i32 23 }
@___asan_gen_.177 = private unnamed_addr constant [14 x i8] c"checking_time\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1411, i32 22 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1009, i32 25 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1023, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 388, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 399, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 404, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 419, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 425, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 437, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 455, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 478, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 288, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 289, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 317, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 579, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c"tagged_llc_snap_hdr\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 502, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"llc_snap_mpoa_data\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 106, i32 28 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 823, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [8 x i8] c"mpc_dev\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 787, i32 23 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 275, i32 16 }
@___asan_gen_.294 = private unnamed_addr constant [8 x i8] c"mpc_ops\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 782, i32 32 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 789, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 791, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 876, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 880, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 900, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 916, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1165, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1172, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1192, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1148, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1107, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1213, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1291, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1255, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1261, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1362, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1366, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1380, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 615, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 631, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 637, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 642, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 156, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [19 x i8] c"llc_snap_mpoa_ctrl\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 101, i32 28 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 718, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant [26 x i8] c"llc_snap_mpoa_data_tagged\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 111, i32 28 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 728, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 733, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 743, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 756, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 662, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1481, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.520 = private constant [17 x i8] c"../net/atm/mpc.c\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1483, i32 2 }
@llvm.compiler.used = appending global [180 x ptr] [ptr @MPOA_res_reply_rcvd._entry, ptr @MPOA_res_reply_rcvd._entry.59, ptr @MPOA_res_reply_rcvd._entry.62, ptr @MPOA_res_reply_rcvd._entry_ptr, ptr @MPOA_res_reply_rcvd._entry_ptr.61, ptr @MPOA_res_reply_rcvd._entry_ptr.64, ptr @MPOA_trigger_rcvd._entry, ptr @MPOA_trigger_rcvd._entry_ptr, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_license461, ptr @__exitcall_atm_mpoa_cleanup, ptr @__initcall__kmod_mpoa__459_1532_atm_mpoa_init6, ptr @atm_mpoa_add_qos._entry, ptr @atm_mpoa_add_qos._entry_ptr, ptr @atm_mpoa_cleanup, ptr @atm_mpoa_init._entry, ptr @atm_mpoa_init._entry.116, ptr @atm_mpoa_init._entry_ptr, ptr @atm_mpoa_init._entry_ptr.118, ptr @atm_mpoa_mpoad_attach._entry, ptr @atm_mpoa_mpoad_attach._entry_ptr, ptr @atm_mpoa_vcc_attach._entry, ptr @atm_mpoa_vcc_attach._entry.86, ptr @atm_mpoa_vcc_attach._entry.89, ptr @atm_mpoa_vcc_attach._entry.92, ptr @atm_mpoa_vcc_attach._entry_ptr, ptr @atm_mpoa_vcc_attach._entry_ptr.88, ptr @atm_mpoa_vcc_attach._entry_ptr.91, ptr @atm_mpoa_vcc_attach._entry_ptr.94, ptr @check_qos_and_open_shortcut._entry, ptr @check_qos_and_open_shortcut._entry_ptr, ptr @copy_macs._entry, ptr @copy_macs._entry_ptr, ptr @ingress_purge_rcvd._entry, ptr @ingress_purge_rcvd._entry_ptr, ptr @lane2_assoc_ind._entry, ptr @lane2_assoc_ind._entry.14, ptr @lane2_assoc_ind._entry.17, ptr @lane2_assoc_ind._entry.20, ptr @lane2_assoc_ind._entry.23, ptr @lane2_assoc_ind._entry.25, ptr @lane2_assoc_ind._entry.28, ptr @lane2_assoc_ind._entry_ptr, ptr @lane2_assoc_ind._entry_ptr.16, ptr @lane2_assoc_ind._entry_ptr.19, ptr @lane2_assoc_ind._entry_ptr.22, ptr @lane2_assoc_ind._entry_ptr.24, ptr @lane2_assoc_ind._entry_ptr.27, ptr @lane2_assoc_ind._entry_ptr.30, ptr @mpc_push._entry, ptr @mpc_push._entry.100, ptr @mpc_push._entry.103, ptr @mpc_push._entry.106, ptr @mpc_push._entry.109, ptr @mpc_push._entry_ptr, ptr @mpc_push._entry_ptr.102, ptr @mpc_push._entry_ptr.105, ptr @mpc_push._entry_ptr.108, ptr @mpc_push._entry_ptr.111, ptr @mpc_send_packet._entry, ptr @mpc_send_packet._entry_ptr, ptr @mpc_vcc_close._entry, ptr @mpc_vcc_close._entry_ptr, ptr @mpoa_event_listener._entry, ptr @mpoa_event_listener._entry_ptr, ptr @mpoad_close._entry, ptr @mpoad_close._entry.48, ptr @mpoad_close._entry.51, ptr @mpoad_close._entry_ptr, ptr @mpoad_close._entry_ptr.50, ptr @mpoad_close._entry_ptr.53, ptr @mps_death._entry, ptr @mps_death._entry_ptr, ptr @msg_from_mpoad._entry, ptr @msg_from_mpoad._entry_ptr, ptr @msg_to_mpoad._entry, ptr @msg_to_mpoad._entry_ptr, ptr @purge_egress_shortcut._entry, ptr @purge_egress_shortcut._entry.75, ptr @purge_egress_shortcut._entry_ptr, ptr @purge_egress_shortcut._entry_ptr.77, ptr @set_mpc_ctrl_addr_rcvd._entry, ptr @set_mpc_ctrl_addr_rcvd._entry.80, ptr @set_mpc_ctrl_addr_rcvd._entry_ptr, ptr @set_mpc_ctrl_addr_rcvd._entry_ptr.82, ptr @set_mps_mac_addr_rcvd._entry, ptr @set_mps_mac_addr_rcvd._entry_ptr, ptr @start_mpc._entry, ptr @start_mpc._entry_ptr, ptr @mpcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @qos_head, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mpc_timer, ptr @mpoa_notifier, ptr @atm_ioctl_ops, ptr @.str.8, ptr @mpc_cache_check.previous_resolving_check_time, ptr @mpc_cache_check.previous_refresh_time, ptr @checking_time, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @alloc_mpc.__key, ptr @.str.33, ptr @alloc_mpc.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @send_via_shortcut.tagged_llc_snap_hdr, ptr @llc_snap_mpoa_data, ptr @.str.41, ptr @.str.42, ptr @mpc_dev, ptr @.str.43, ptr @mpc_ops, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.97, ptr @llc_snap_mpoa_ctrl, ptr @.str.98, ptr @.str.99, ptr @llc_snap_mpoa_data_tagged, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_mpoa_add_qos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_head to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_to_mpoad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpoa_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_ioctl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_cache_check.previous_resolving_check_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_cache_check.previous_refresh_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checking_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpoa_event_listener._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane2_assoc_ind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane2_assoc_ind._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane2_assoc_ind._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane2_assoc_ind._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane2_assoc_ind._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane2_assoc_ind._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane2_assoc_ind._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_macs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_mpc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_mpc.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_mpc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_send_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_via_shortcut.tagged_llc_snap_hdr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_snap_mpoa_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_mpoa_mpoad_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_dev to i32), i32 1112, i32 1376, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpoad_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpoad_close._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpoad_close._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_from_mpoad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MPOA_res_reply_rcvd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MPOA_res_reply_rcvd._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MPOA_res_reply_rcvd._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_qos_and_open_shortcut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MPOA_trigger_rcvd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingress_purge_rcvd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps_death._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_egress_shortcut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_egress_shortcut._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_mpc_ctrl_addr_rcvd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_mpc_ctrl_addr_rcvd._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_mps_mac_addr_rcvd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_mpoa_vcc_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_mpoa_vcc_attach._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_mpoa_vcc_attach._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_mpoa_vcc_attach._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_snap_mpoa_ctrl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_push._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_snap_mpoa_data_tagged to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_push._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_push._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_push._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_push._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_vcc_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_mpoa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_mpoa_init._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @atm_mpoa_add_qos(i32 noundef %dst_ip, ptr nocapture noundef readonly %qos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %qos.0.in.i = phi ptr [ @qos_head, %entry ], [ %qos.0.i, %while.body.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %qos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %qos.0.i = load ptr, ptr %qos.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %qos.0.i, null
  br i1 %tobool.not.i, label %if.end, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %ipaddr.i = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %ipaddr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ipaddr.i, align 4
  %cmp.i = icmp eq i32 %2, %dst_ip
  br i1 %cmp.i, label %if.then, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

if.then:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %qos2 = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.0.i, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %qos2, ptr %qos, i32 84)
  br label %cleanup

if.end:                                           ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 92) #17
  %cmp4 = icmp eq ptr %call7.i, null
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %ipaddr = getelementptr inbounds %struct.atm_mpoa_qos, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dst_ip, ptr %ipaddr, align 4
  %qos8 = getelementptr inbounds %struct.atm_mpoa_qos, ptr %call7.i, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %qos8, ptr %qos, i32 84)
  %7 = load ptr, ptr @qos_head, align 4
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call7.i, align 8
  store ptr %call7.i, ptr @qos_head, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then
  %retval.0 = phi ptr [ %qos.0.i, %if.then ], [ null, %do.end ], [ %call7.i, %if.end7 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @atm_mpoa_search_qos(i32 noundef %dst_ip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %qos.0.in = phi ptr [ @qos_head, %entry ], [ %qos.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %qos.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %qos.0 = load ptr, ptr %qos.0.in, align 4
  %tobool.not = icmp eq ptr %qos.0, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.cond
  %ipaddr = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.0, i32 0, i32 1
  %1 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ipaddr, align 4
  %cmp = icmp eq i32 %2, %dst_ip
  br i1 %cmp, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  ret ptr %qos.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atm_mpoa_delete_qos(ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %entry1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @qos_head, align 4
  %cmp2 = icmp eq ptr %0, %entry1
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %curr.0 = phi ptr [ %2, %while.body.while.cond_crit_edge ], [ %0, %if.end.while.cond_crit_edge ]
  %cmp5.not = icmp eq ptr %curr.0, null
  br i1 %cmp5.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %1 = ptrtoint ptr %curr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %curr.0, align 4
  %cmp7 = icmp eq ptr %2, %entry1
  br i1 %cmp7, label %while.body.cleanup.sink.split_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.body.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %curr.0.lcssa24.sink = phi ptr [ @qos_head, %if.end.cleanup.sink.split_crit_edge ], [ %curr.0, %while.body.cleanup.sink.split_crit_edge ]
  %3 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1, align 4
  %5 = ptrtoint ptr %curr.0.lcssa24.sink to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %curr.0.lcssa24.sink, align 4
  tail call void @kfree(ptr noundef nonnull %entry1) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atm_mpoa_disp_qos(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @qos_head, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4) #14
  %cmp.not38 = icmp eq ptr %0, null
  br i1 %cmp.not38, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %qos.039 = phi ptr [ %22, %while.body.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %ipaddr = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 1
  %max_pcr = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 2, i32 0, i32 1
  %1 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_pcr, align 4
  %pcr = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 2, i32 0, i32 2
  %3 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcr, align 4
  %min_pcr = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 2, i32 0, i32 3
  %5 = ptrtoint ptr %min_pcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %min_pcr, align 4
  %max_cdv = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %max_cdv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_cdv, align 4
  %max_sdu = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 2, i32 0, i32 5
  %9 = ptrtoint ptr %max_sdu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_sdu, align 4
  %max_pcr11 = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 2, i32 1, i32 1
  %11 = ptrtoint ptr %max_pcr11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_pcr11, align 4
  %pcr14 = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 2, i32 1, i32 2
  %13 = ptrtoint ptr %pcr14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcr14, align 4
  %min_pcr17 = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 2, i32 1, i32 3
  %15 = ptrtoint ptr %min_pcr17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_pcr17, align 4
  %max_cdv20 = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 2, i32 1, i32 4
  %17 = ptrtoint ptr %max_cdv20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_cdv20, align 4
  %max_sdu23 = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.039, i32 0, i32 2, i32 1, i32 5
  %19 = ptrtoint ptr %max_sdu23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_sdu23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef %ipaddr, i32 noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #14
  %21 = ptrtoint ptr %qos.039 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qos.039, align 4
  %cmp.not = icmp eq ptr %22, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msg_to_mpoad(ptr nocapture noundef readonly %mesg, ptr noundef readonly %mpc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %mpc, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %mpoad_vcc = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 3
  %0 = ptrtoint ptr %mpoad_vcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpoad_vcc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %mesg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mesg, align 4
  %conv = zext i16 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %conv) #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call ptr @__alloc_skb(i32 noundef 412, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %cmp2 = icmp eq ptr %call.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 412) #14
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = call ptr @memcpy(ptr %5, ptr %mesg, i32 412)
  %7 = ptrtoint ptr %mpoad_vcc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mpoad_vcc, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %9 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %10, ptr elementtype(i32) %sk_backlog.i) #14, !srcloc !265
  %12 = ptrtoint ptr %mpoad_vcc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mpoad_vcc, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %call.i) #14
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 77
  %14 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_data_ready, align 8
  tail call void %15(ptr noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end5 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atm_mpoa_cleanup() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mpc_proc_clean() #14
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @mpc_timer) #14
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @mpoa_notifier) #14
  tail call void @deregister_atm_ioctl(ptr noundef nonnull @atm_ioctl_ops) #14
  %0 = load ptr, ptr @mpcs, align 4
  store ptr null, ptr @mpcs, align 4
  %cmp.not41 = icmp eq ptr %0, null
  br i1 %cmp.not41, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %do.end.while.body_crit_edge, %entry.while.body_crit_edge
  %mpc.042 = phi ptr [ %2, %do.end.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %mpc.042 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mpc.042, align 4
  %dev = getelementptr inbounds %struct.mpoa_client, ptr %mpc.042, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %cmp2.not = icmp eq ptr %4, null
  br i1 %cmp2.not, label %while.body.do.end_crit_edge, label %if.then

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %while.body
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev_ops.i, align 8
  %new_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.042, i32 0, i32 16
  %cmp.not.i = icmp eq ptr %6, %new_ops.i
  br i1 %cmp.not.i, label %do.end7.i, label %if.then.stop_mpc.exit_crit_edge

if.then.stop_mpc.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop_mpc.exit

do.end7.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %old_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.042, i32 0, i32 15
  %7 = ptrtoint ptr %old_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_ops.i, align 4
  %9 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %netdev_ops.i, align 8
  store ptr null, ptr %old_ops.i, align 4
  br label %stop_mpc.exit

stop_mpc.exit:                                    ; preds = %do.end7.i, %if.then.stop_mpc.exit_crit_edge
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %lane2_ops = getelementptr i8, ptr %11, i32 2592
  %12 = ptrtoint ptr %lane2_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lane2_ops, align 4
  %cmp5.not = icmp eq ptr %13, null
  br i1 %cmp5.not, label %stop_mpc.exit.do.end_crit_edge, label %if.then6

stop_mpc.exit.do.end_crit_edge:                   ; preds = %stop_mpc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then6:                                         ; preds = %stop_mpc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %associate_indicator = getelementptr inbounds %struct.lane2_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %associate_indicator to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %associate_indicator, align 4
  br label %do.end

do.end:                                           ; preds = %if.then6, %stop_mpc.exit.do.end_crit_edge, %while.body.do.end_crit_edge
  %in_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc.042, i32 0, i32 7
  %15 = ptrtoint ptr %in_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %in_ops, align 4
  %destroy_cache = getelementptr inbounds %struct.in_cache_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %destroy_cache to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %destroy_cache, align 4
  tail call void %18(ptr noundef nonnull %mpc.042) #14
  %eg_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc.042, i32 0, i32 10
  %19 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eg_ops, align 4
  %destroy_cache9 = getelementptr inbounds %struct.eg_cache_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %destroy_cache9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %destroy_cache9, align 4
  tail call void %22(ptr noundef nonnull %mpc.042) #14
  %mps_macs = getelementptr inbounds %struct.mpoa_client, ptr %mpc.042, i32 0, i32 12
  %23 = ptrtoint ptr %mps_macs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mps_macs, align 4
  tail call void @kfree(ptr noundef %24) #14
  %25 = call ptr @memset(ptr %mpc.042, i32 0, i32 528)
  tail call void @kfree(ptr noundef nonnull %mpc.042) #14
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %26 = load ptr, ptr @qos_head, align 4
  store ptr null, ptr @qos_head, align 4
  %cmp20.not45 = icmp eq ptr %26, null
  br i1 %cmp20.not45, label %while.end.while.end26_crit_edge, label %while.end.while.body21_crit_edge

while.end.while.body21_crit_edge:                 ; preds = %while.end
  br label %while.body21

while.end.while.end26_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end26

while.body21:                                     ; preds = %while.body21.while.body21_crit_edge, %while.end.while.body21_crit_edge
  %qos.046 = phi ptr [ %28, %while.body21.while.body21_crit_edge ], [ %26, %while.end.while.body21_crit_edge ]
  %27 = ptrtoint ptr %qos.046 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qos.046, align 4
  tail call void @kfree(ptr noundef nonnull %qos.046) #14
  %cmp20.not = icmp eq ptr %28, null
  br i1 %cmp20.not, label %while.body21.while.end26_crit_edge, label %while.body21.while.body21_crit_edge

while.body21.while.body21_crit_edge:              ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body21

while.body21.while.end26_crit_edge:               ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end26

while.end26:                                      ; preds = %while.body21.while.end26_crit_edge, %while.end.while.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpc_proc_clean() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_atm_ioctl(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_mpoa_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_atm_ioctl(ptr noundef nonnull @atm_ioctl_ops) #14
  %call = tail call i32 @mpc_proc_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115) #18
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpc_cache_check(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mpc.024 = load ptr, ptr @mpcs, align 4
  %cmp.not25 = icmp eq ptr %mpc.024, null
  br i1 %cmp.not25, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %entry.while.body_crit_edge
  %mpc.026 = phi ptr [ %mpc.0, %if.end12.while.body_crit_edge ], [ %mpc.024, %entry.while.body_crit_edge ]
  %in_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc.026, i32 0, i32 7
  %0 = ptrtoint ptr %in_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_ops, align 4
  %clear_count = getelementptr inbounds %struct.in_cache_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clear_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clear_count, align 4
  tail call void %3(ptr noundef nonnull %mpc.026) #14
  %eg_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc.026, i32 0, i32 10
  %4 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eg_ops, align 4
  %clear_expired = getelementptr inbounds %struct.eg_cache_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %clear_expired to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clear_expired, align 4
  tail call void %7(ptr noundef nonnull %mpc.026) #14
  %8 = load i32, ptr @checking_time, align 4
  %9 = load i32, ptr @mpc_cache_check.previous_resolving_check_time, align 4
  %sub = sub i32 %8, %9
  %mpc_p4 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.026, i32 0, i32 14, i32 3
  %10 = ptrtoint ptr %mpc_p4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mpc_p4, align 4
  %conv = zext i16 %11 to i32
  %mul = mul nuw nsw i32 %conv, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp1 = icmp ugt i32 %sub, %mul
  br i1 %cmp1, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %in_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in_ops, align 4
  %check_resolving = getelementptr inbounds %struct.in_cache_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %check_resolving to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %check_resolving, align 4
  tail call void %15(ptr noundef nonnull %mpc.026) #14
  %16 = load i32, ptr @checking_time, align 4
  store i32 %16, ptr @mpc_cache_check.previous_resolving_check_time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %17 = load i32, ptr @checking_time, align 4
  %18 = load i32, ptr @mpc_cache_check.previous_refresh_time, align 4
  %sub4 = sub i32 %17, %18
  %mpc_p5 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.026, i32 0, i32 14, i32 4
  %19 = ptrtoint ptr %mpc_p5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mpc_p5, align 2
  %conv6 = zext i16 %20 to i32
  %mul7 = mul nuw nsw i32 %conv6, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4, i32 %mul7)
  %cmp8 = icmp ugt i32 %sub4, %mul7
  br i1 %cmp8, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %in_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in_ops, align 4
  %refresh = getelementptr inbounds %struct.in_cache_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %refresh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %refresh, align 4
  tail call void %24(ptr noundef nonnull %mpc.026) #14
  %25 = load i32, ptr @checking_time, align 4
  store i32 %25, ptr @mpc_cache_check.previous_refresh_time, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %26 = ptrtoint ptr %mpc.026 to i32
  call void @__asan_load4_noabort(i32 %26)
  %mpc.0 = load ptr, ptr %mpc.026, align 4
  %cmp.not = icmp eq ptr %mpc.0, null
  br i1 %cmp.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %27, 100
  store i32 %add.i, ptr getelementptr inbounds (%struct.timer_list, ptr @mpc_timer, i32 0, i32 1), align 4
  store i32 %add.i, ptr @checking_time, align 4
  tail call void @add_timer(ptr noundef nonnull @mpc_timer) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpoa_event_listener(ptr nocapture noundef readnone %mpoa_notifier, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.9, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end6.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %if.end6.while.cond.i84_crit_edge
    i32 1, label %if.end6.while.cond.i103_crit_edge
    i32 2, label %if.end6.while.cond.i115_crit_edge
  ]

if.end6.while.cond.i115_crit_edge:                ; preds = %if.end6
  br label %while.cond.i115

if.end6.while.cond.i103_crit_edge:                ; preds = %if.end6
  br label %while.cond.i103

if.end6.while.cond.i84_crit_edge:                 ; preds = %if.end6
  br label %while.cond.i84

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  %lane_version = getelementptr i8, ptr %1, i32 2584
  %5 = ptrtoint ptr %lane_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lane_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp slt i32 %6, 2
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end9

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  %lane2_ops = getelementptr i8, ptr %1, i32 2592
  %7 = ptrtoint ptr %lane2_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lane2_ops, align 4
  %associate_indicator = getelementptr inbounds %struct.lane2_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %associate_indicator to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @lane2_assoc_ind, ptr %associate_indicator, align 4
  %itfnum = getelementptr i8, ptr %1, i32 2588
  %10 = ptrtoint ptr %itfnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %itfnum, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end9
  %mpc.0.in.i = phi ptr [ @mpcs, %if.end9 ], [ %mpc.0.i, %while.body.i.while.cond.i_crit_edge ]
  %12 = ptrtoint ptr %mpc.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %mpc.0.i = load ptr, ptr %mpc.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mpc.0.i, null
  br i1 %cmp.not.i, label %do.end, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dev_num.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_num.i, align 4
  %cmp1.i = icmp eq i32 %14, %11
  br i1 %cmp1.i, label %while.body.i.if.end21_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

while.body.i.if.end21_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

do.end:                                           ; preds = %while.cond.i
  %call13 = tail call fastcc ptr @alloc_mpc()
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %do.end18, label %do.end.if.end21_crit_edge

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #18
  br label %cleanup

if.end21:                                         ; preds = %do.end.if.end21_crit_edge, %while.body.i.if.end21_crit_edge
  %mpc.0 = phi ptr [ %call13, %do.end.if.end21_crit_edge ], [ %mpc.0.i, %while.body.i.if.end21_crit_edge ]
  %15 = ptrtoint ptr %itfnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %itfnum, align 4
  %dev_num = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0, i32 0, i32 2
  %17 = ptrtoint ptr %dev_num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dev_num, align 4
  %dev23 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0, i32 0, i32 1
  %18 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %dev23, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end21.cleanup_crit_edge, label %do.body1.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body1.i:                                       ; preds = %if.end21
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !266
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !255) #14
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i = add i32 %31, 1
  store i32 %add13.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !267
  %and.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !268

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #14, !srcloc !269
  br label %cleanup

while.cond.i84:                                   ; preds = %while.body.i85.while.cond.i84_crit_edge, %if.end6.while.cond.i84_crit_edge
  %mpc.0.in.i81 = phi ptr [ %mpc.0.i82, %while.body.i85.while.cond.i84_crit_edge ], [ @mpcs, %if.end6.while.cond.i84_crit_edge ]
  %33 = ptrtoint ptr %mpc.0.in.i81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %mpc.0.i82 = load ptr, ptr %mpc.0.in.i81, align 4
  %cmp.not.i83 = icmp eq ptr %mpc.0.i82, null
  br i1 %cmp.not.i83, label %while.cond.i84.cleanup_crit_edge, label %while.body.i85

while.cond.i84.cleanup_crit_edge:                 ; preds = %while.cond.i84
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.i85:                                   ; preds = %while.cond.i84
  %dev1.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i82, i32 0, i32 1
  %34 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %35, %1
  br i1 %cmp2.i, label %do.end34, label %while.body.i85.while.cond.i84_crit_edge

while.body.i85.while.cond.i84_crit_edge:          ; preds = %while.body.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i84

do.end34:                                         ; preds = %while.body.i85
  %dev1.i.le = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i82, i32 0, i32 1
  %36 = ptrtoint ptr %dev1.i.le to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1.i.le, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev_ops.i, align 8
  %new_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i82, i32 0, i32 16
  %cmp.not.i87 = icmp eq ptr %39, %new_ops.i
  br i1 %cmp.not.i87, label %do.end7.i, label %do.end34.stop_mpc.exit_crit_edge

do.end34.stop_mpc.exit_crit_edge:                 ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop_mpc.exit

do.end7.i:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  %old_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i82, i32 0, i32 15
  %40 = ptrtoint ptr %old_ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %old_ops.i, align 4
  %42 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %netdev_ops.i, align 8
  store ptr null, ptr %old_ops.i, align 4
  %43 = ptrtoint ptr %dev1.i.le to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load ptr, ptr %dev1.i.le, align 4
  br label %stop_mpc.exit

stop_mpc.exit:                                    ; preds = %do.end7.i, %do.end34.stop_mpc.exit_crit_edge
  %44 = phi ptr [ %37, %do.end34.stop_mpc.exit_crit_edge ], [ %.pr, %do.end7.i ]
  %tobool.not.i88 = icmp eq ptr %44, null
  br i1 %tobool.not.i88, label %stop_mpc.exit.dev_put.exit_crit_edge, label %do.body1.i97

stop_mpc.exit.dev_put.exit_crit_edge:             ; preds = %stop_mpc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit

do.body1.i97:                                     ; preds = %stop_mpc.exit
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !266
  %pcpu_refcnt.i89 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 118
  %46 = ptrtoint ptr %pcpu_refcnt.i89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcpu_refcnt.i89, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !255) #14
  %and.i.i90 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i90 to ptr
  %cpu.i91 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i91 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i91, align 4
  %arrayidx.i92 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i92, align 4
  %add.i93 = add i32 %54, %48
  %55 = inttoptr i32 %add.i93 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add13.i94 = add i32 %57, -1
  store i32 %add13.i94, ptr %55, align 4
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !267
  %and.i.i.i95 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i95)
  %tobool24.not.i96 = icmp eq i32 %and.i.i.i95, 0
  br i1 %tobool24.not.i96, label %if.then28.i98, label %do.body1.i97.do.end30.i99_crit_edge, !prof !268

do.body1.i97.do.end30.i99_crit_edge:              ; preds = %do.body1.i97
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i99

if.then28.i98:                                    ; preds = %do.body1.i97
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end30.i99

do.end30.i99:                                     ; preds = %if.then28.i98, %do.body1.i97.do.end30.i99_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #14, !srcloc !269
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i99, %stop_mpc.exit.dev_put.exit_crit_edge
  %59 = ptrtoint ptr %dev1.i.le to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %dev1.i.le, align 4
  br label %cleanup

while.cond.i103:                                  ; preds = %while.body.i106.while.cond.i103_crit_edge, %if.end6.while.cond.i103_crit_edge
  %mpc.0.in.i100 = phi ptr [ %mpc.0.i101, %while.body.i106.while.cond.i103_crit_edge ], [ @mpcs, %if.end6.while.cond.i103_crit_edge ]
  %60 = ptrtoint ptr %mpc.0.in.i100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %mpc.0.i101 = load ptr, ptr %mpc.0.in.i100, align 4
  %cmp.not.i102 = icmp eq ptr %mpc.0.i101, null
  br i1 %cmp.not.i102, label %while.cond.i103.cleanup_crit_edge, label %while.body.i106

while.cond.i103.cleanup_crit_edge:                ; preds = %while.cond.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.i106:                                  ; preds = %while.cond.i103
  %dev1.i104 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i101, i32 0, i32 1
  %61 = ptrtoint ptr %dev1.i104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1.i104, align 4
  %cmp2.i105 = icmp eq ptr %62, %1
  br i1 %cmp2.i105, label %if.end41, label %while.body.i106.while.cond.i103_crit_edge

while.body.i106.while.cond.i103_crit_edge:        ; preds = %while.body.i106
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i103

if.end41:                                         ; preds = %while.body.i106
  %mpoad_vcc = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i101, i32 0, i32 3
  %63 = ptrtoint ptr %mpoad_vcc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mpoad_vcc, align 4
  %cmp42.not = icmp eq ptr %64, null
  br i1 %cmp42.not, label %if.end41.cleanup_crit_edge, label %if.then43

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then43:                                        ; preds = %if.end41
  %netdev_ops.i108 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %65 = ptrtoint ptr %netdev_ops.i108 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %netdev_ops.i108, align 8
  %tobool.not.i109 = icmp eq ptr %66, null
  br i1 %tobool.not.i109, label %do.end2.i, label %if.else.i

do.end2.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef %1) #18
  br label %cleanup

if.else.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %old_ops.i110 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i101, i32 0, i32 15
  %67 = ptrtoint ptr %old_ops.i110 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %old_ops.i110, align 4
  %new_ops.i111 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i101, i32 0, i32 16
  %68 = call ptr @memcpy(ptr %new_ops.i111, ptr %66, i32 336)
  %ndo_start_xmit.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i101, i32 0, i32 16, i32 4
  %69 = ptrtoint ptr %ndo_start_xmit.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @mpc_send_packet, ptr %ndo_start_xmit.i, align 4
  %70 = ptrtoint ptr %netdev_ops.i108 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %new_ops.i111, ptr %netdev_ops.i108, align 8
  br label %cleanup

while.cond.i115:                                  ; preds = %while.body.i118.while.cond.i115_crit_edge, %if.end6.while.cond.i115_crit_edge
  %mpc.0.in.i112 = phi ptr [ %mpc.0.i113, %while.body.i118.while.cond.i115_crit_edge ], [ @mpcs, %if.end6.while.cond.i115_crit_edge ]
  %71 = ptrtoint ptr %mpc.0.in.i112 to i32
  call void @__asan_load4_noabort(i32 %71)
  %mpc.0.i113 = load ptr, ptr %mpc.0.in.i112, align 4
  %cmp.not.i114 = icmp eq ptr %mpc.0.i113, null
  br i1 %cmp.not.i114, label %while.cond.i115.cleanup_crit_edge, label %while.body.i118

while.cond.i115.cleanup_crit_edge:                ; preds = %while.cond.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.i118:                                  ; preds = %while.cond.i115
  %dev1.i116 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i113, i32 0, i32 1
  %72 = ptrtoint ptr %dev1.i116 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev1.i116, align 4
  %cmp2.i117 = icmp eq ptr %73, %1
  br i1 %cmp2.i117, label %if.end49, label %while.body.i118.while.cond.i115_crit_edge

while.body.i118.while.cond.i115_crit_edge:        ; preds = %while.body.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i115

if.end49:                                         ; preds = %while.body.i118
  %mpoad_vcc50 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i113, i32 0, i32 3
  %74 = ptrtoint ptr %mpoad_vcc50 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mpoad_vcc50, align 4
  %cmp51.not = icmp eq ptr %75, null
  br i1 %cmp51.not, label %if.end49.cleanup_crit_edge, label %if.then52

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then52:                                        ; preds = %if.end49
  %dev1.i116.le = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i113, i32 0, i32 1
  %76 = ptrtoint ptr %dev1.i116.le to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1.i116.le, align 4
  %netdev_ops.i121 = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %netdev_ops.i121 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %netdev_ops.i121, align 8
  %new_ops.i122 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i113, i32 0, i32 16
  %cmp.not.i123 = icmp eq ptr %79, %new_ops.i122
  br i1 %cmp.not.i123, label %do.end7.i125, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end7.i125:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  %old_ops.i124 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i113, i32 0, i32 15
  %80 = ptrtoint ptr %old_ops.i124 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %old_ops.i124, align 4
  %82 = ptrtoint ptr %netdev_ops.i121 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %netdev_ops.i121, align 8
  store ptr null, ptr %old_ops.i124, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end7.i125, %if.then52.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %while.cond.i115.cleanup_crit_edge, %if.else.i, %do.end2.i, %if.end41.cleanup_crit_edge, %while.cond.i103.cleanup_crit_edge, %dev_put.exit, %while.cond.i84.cleanup_crit_edge, %do.end30.i, %if.end21.cleanup_crit_edge, %do.end18, %sw.bb.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lane2_assoc_ind(ptr noundef %dev, ptr nocapture noundef readonly %mac_addr, ptr noundef %tlvs, i32 noundef %sizeoftlvs) #0 align 64 {
entry:
  %mesg.i = alloca %struct.k_message, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %mpc.0.in.i = phi ptr [ @mpcs, %entry ], [ %mpc.0.i, %while.body.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mpc.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mpc.0.i = load ptr, ptr %mpc.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mpc.0.i, null
  br i1 %cmp.not.i, label %do.end6, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dev1.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i, label %if.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

do.end6:                                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %dev) #18
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  %dev1.i.le = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %tlvs, i32 %sizeoftlvs
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sizeoftlvs)
  %cmp8218 = icmp sgt i32 %sizeoftlvs, 4
  br i1 %cmp8218, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %mps_ctrl_addr.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 4
  %MPS_ctrl.i = getelementptr inbounds %struct.k_message, ptr %mesg.i, i32 0, i32 2
  %number_of_mps_macs.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 13
  %mps_macs9.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 12
  %add.ptr.i.i = getelementptr i8, ptr %mac_addr, i32 4
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %tlvs.addr.0219 = phi ptr [ %tlvs, %while.body.lr.ph ], [ %tlvs.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %arrayidx19 = getelementptr i8, ptr %tlvs.addr.0219, i32 4
  %3 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx19, align 1
  %add.ptr20 = getelementptr i8, ptr %tlvs.addr.0219, i32 5
  %conv24 = zext i8 %4 to i32
  %add.ptr25 = getelementptr i8, ptr %add.ptr20, i32 %conv24
  %cmp26 = icmp ugt ptr %add.ptr25, %add.ptr
  br i1 %cmp26, label %do.end31, label %if.end34

do.end31:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #18
  br label %cleanup

if.end34:                                         ; preds = %while.body
  %5 = ptrtoint ptr %tlvs.addr.0219 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tlvs.addr.0219, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx9 = getelementptr i8, ptr %tlvs.addr.0219, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %8 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or = or i32 %shl11, %shl
  %arrayidx12 = getelementptr i8, ptr %tlvs.addr.0219, i32 2
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %10 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or15 = or i32 %or, %shl14
  %arrayidx16 = getelementptr i8, ptr %tlvs.addr.0219, i32 3
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %12 to i32
  %or18 = or i32 %or15, %conv17
  %13 = zext i32 %or18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %or18, label %if.end34.while.cond.backedge_crit_edge [
    i32 0, label %do.end40
    i32 10501674, label %if.end51
  ]

if.end34.while.cond.backedge_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, ptr noundef %dev) #18
  br label %cleanup

if.end51:                                         ; preds = %if.end34
  %incdec.ptr = getelementptr i8, ptr %tlvs.addr.0219, i32 6
  %14 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr20, align 1
  %incdec.ptr52 = getelementptr i8, ptr %tlvs.addr.0219, i32 7
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp57 = icmp eq i8 %15, 3
  br i1 %cmp57, label %land.lhs.true, label %if.end71

land.lhs.true:                                    ; preds = %if.end51
  %conv60 = zext i8 %17 to i32
  %mul = mul nuw nsw i32 %conv60, 6
  %add = add nuw nsw i32 %mul, 42
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv24)
  %cmp61 = icmp ugt i32 %add, %conv24
  br i1 %cmp61, label %do.end66, label %if.end111

do.end66:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13, ptr noundef %dev) #18
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %copy_macs.exit.while.cond.backedge_crit_edge, %do.end122, %if.then108, %if.end93.while.cond.backedge_crit_edge, %do.end88, %if.end71.while.cond.backedge_crit_edge, %do.end66, %if.end34.while.cond.backedge_crit_edge
  %tlvs.addr.0.be = phi ptr [ %incdec.ptr52, %do.end66 ], [ %incdec.ptr52, %do.end88 ], [ %incdec.ptr52, %do.end122 ], [ %add.ptr35.i, %copy_macs.exit.while.cond.backedge_crit_edge ], [ %add.ptr25, %if.end34.while.cond.backedge_crit_edge ], [ %add.ptr109, %if.then108 ], [ %incdec.ptr52, %if.end93.while.cond.backedge_crit_edge ], [ %incdec.ptr52, %if.end71.while.cond.backedge_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %tlvs.addr.0.be to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp8 = icmp sgt i32 %sub.ptr.sub, 4
  br i1 %cmp8, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end71:                                         ; preds = %if.end51
  %.off = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true78, label %if.end71.while.cond.backedge_crit_edge

if.end71.while.cond.backedge_crit_edge:           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

land.lhs.true78:                                  ; preds = %if.end71
  %conv80 = zext i8 %17 to i32
  %mul81 = mul nuw nsw i32 %conv80, 6
  %add82 = add nuw nsw i32 %mul81, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %add82, i32 %conv24)
  %cmp83 = icmp ugt i32 %add82, %conv24
  br i1 %cmp83, label %do.end88, label %if.end93

do.end88:                                         ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #16
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13, ptr noundef %dev) #18
  br label %while.cond.backedge

if.end93:                                         ; preds = %land.lhs.true78
  %18 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %15, label %if.end93.while.cond.backedge_crit_edge [
    i8 1, label %if.end111.thread
    i8 2, label %if.then108
  ]

if.end93.while.cond.backedge_crit_edge:           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then108:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr109 = getelementptr i8, ptr %tlvs.addr.0219, i32 27
  br label %while.cond.backedge

if.end111.thread:                                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp113200 = icmp eq i8 %17, 0
  br label %do.end130

if.end111:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp113 = icmp eq i8 %17, 0
  br i1 %cmp113, label %do.end122, label %if.end111.do.end130_crit_edge

if.end111.do.end130_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end130

do.end122:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.13, ptr noundef %dev) #18
  br label %while.cond.backedge

do.end130:                                        ; preds = %if.end111.do.end130_crit_edge, %if.end111.thread
  %conv.i.pre-phi = phi i32 [ %conv80, %if.end111.thread ], [ %conv60, %if.end111.do.end130_crit_edge ]
  %cmp113204 = phi i1 [ %cmp113200, %if.end111.thread ], [ false, %if.end111.do.end130_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 412, ptr nonnull %mesg.i) #14
  %19 = call ptr @memset(ptr %mesg.i, i32 255, i32 412)
  %20 = call ptr @memcpy(ptr %mps_ctrl_addr.i, ptr %incdec.ptr52, i32 20)
  %21 = ptrtoint ptr %mesg.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 202, ptr %mesg.i, align 4
  %22 = call ptr @memcpy(ptr %MPS_ctrl.i, ptr %incdec.ptr52, i32 20)
  %call.i = call i32 @msg_to_mpoad(ptr noundef nonnull %mesg.i, ptr noundef nonnull %mpc.0.i) #14
  call void @llvm.lifetime.end.p0(i64 412, ptr nonnull %mesg.i) #14
  %23 = tail call i8 @llvm.umax.i8(i8 %17, i8 1) #14
  %24 = zext i8 %23 to i32
  %25 = ptrtoint ptr %number_of_mps_macs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %number_of_mps_macs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp3.not.i = icmp eq i32 %26, %24
  br i1 %cmp3.not.i, label %do.end130.if.end18.i_crit_edge, label %if.then.i

do.end130.if.end18.i_crit_edge:                   ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then.i:                                        ; preds = %do.end130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp6.not.i = icmp eq i32 %26, 0
  br i1 %cmp6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then8.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %mps_macs9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mps_macs9.i, align 4
  tail call void @kfree(ptr noundef %28) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i.if.end.i_crit_edge
  %29 = ptrtoint ptr %number_of_mps_macs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %number_of_mps_macs.i, align 4
  %30 = mul nuw nsw i32 %24, 6
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3264) #19
  %31 = ptrtoint ptr %mps_macs9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i, ptr %mps_macs9.i, align 4
  %cmp13.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp13.i, label %copy_macs.exit.thread, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

copy_macs.exit.thread:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %dev1.i.le to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i.le, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef %33) #18
  br label %cleanup

if.end18.i:                                       ; preds = %if.end.i.if.end18.i_crit_edge, %do.end130.if.end18.i_crit_edge
  %34 = ptrtoint ptr %mps_macs9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mps_macs9.i, align 4
  %36 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mac_addr, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %35, align 4
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %35, i32 4
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %add.ptr1.i.i, align 2
  %spec.select56.v.i = select i1 %cmp57, i32 40, i32 20
  %spec.select56.i = getelementptr i8, ptr %incdec.ptr52, i32 %spec.select56.v.i
  br i1 %cmp113204, label %if.end18.i.copy_macs.exit_crit_edge, label %if.then29.i

if.end18.i.copy_macs.exit_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_macs.exit

if.then29.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %mps_macs9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mps_macs9.i, align 4
  %mul.i = mul nuw nsw i32 %conv.i.pre-phi, 6
  %44 = call ptr @memcpy(ptr %43, ptr %spec.select56.i, i32 %mul.i)
  br label %copy_macs.exit

copy_macs.exit:                                   ; preds = %if.then29.i, %if.end18.i.copy_macs.exit_crit_edge
  %mul34.pre-phi.i = phi i32 [ %mul.i, %if.then29.i ], [ 0, %if.end18.i.copy_macs.exit_crit_edge ]
  %add.ptr35.i = getelementptr i8, ptr %spec.select56.i, i32 %mul34.pre-phi.i
  %45 = ptrtoint ptr %number_of_mps_macs.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %24, ptr %number_of_mps_macs.i, align 4
  %cmp132 = icmp eq ptr %add.ptr35.i, null
  br i1 %cmp132, label %copy_macs.exit.cleanup_crit_edge, label %copy_macs.exit.while.cond.backedge_crit_edge

copy_macs.exit.while.cond.backedge_crit_edge:     ; preds = %copy_macs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

copy_macs.exit.cleanup_crit_edge:                 ; preds = %copy_macs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end.while.end_crit_edge
  %tlvs.addr.0.lcssa = phi ptr [ %tlvs, %if.end.while.end_crit_edge ], [ %tlvs.addr.0.be, %while.cond.backedge.while.end_crit_edge ]
  %sub.ptr.sub.lcssa = phi i32 [ %sizeoftlvs, %if.end.while.end_crit_edge ], [ %sub.ptr.sub, %while.cond.backedge.while.end_crit_edge ]
  %cmp139.not = icmp eq ptr %add.ptr, %tlvs.addr.0.lcssa
  br i1 %cmp139.not, label %while.end.cleanup_crit_edge, label %do.end144

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end144:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.13, ptr noundef %dev, i32 noundef %sub.ptr.sub.lcssa) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end144, %while.end.cleanup_crit_edge, %copy_macs.exit.cleanup_crit_edge, %copy_macs.exit.thread, %do.end40, %do.end31, %do.end6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_mpc() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 528) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ingress_lock = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i, i32 0, i32 6
  tail call void @__rwlock_init(ptr noundef %ingress_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @alloc_mpc.__key) #14
  %egress_lock = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i, i32 0, i32 9
  tail call void @__rwlock_init(ptr noundef %egress_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @alloc_mpc.__key.34) #14
  %1 = load ptr, ptr @mpcs, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call7.i.i, align 8
  tail call void @atm_mpoa_init_cache(ptr noundef nonnull %call7.i.i) #14
  %parameters = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i, i32 0, i32 14
  %3 = ptrtoint ptr %parameters to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 10, ptr %parameters, align 8
  %mpc_p2 = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %mpc_p2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %mpc_p2, align 2
  %mpc_p3 = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i, i32 0, i32 14, i32 2
  %5 = ptrtoint ptr %mpc_p3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %mpc_p3, align 4
  %mpc_p4 = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i, i32 0, i32 14, i32 3
  %6 = ptrtoint ptr %mpc_p4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 5, ptr %mpc_p4, align 4
  %mpc_p5 = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i, i32 0, i32 14, i32 4
  %7 = ptrtoint ptr %mpc_p5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 40, ptr %mpc_p5, align 2
  %mpc_p6 = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i, i32 0, i32 14, i32 5
  %8 = ptrtoint ptr %mpc_p6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 160, ptr %mpc_p6, align 8
  store ptr %call7.i.i, ptr @mpcs, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_mpoa_init_cache(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc_send_packet(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %mpc.0.in.i = phi ptr [ @mpcs, %entry ], [ %mpc.0.i, %while.body.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mpc.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mpc.0.i = load ptr, ptr %mpc.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mpc.0.i, null
  br i1 %cmp.not.i, label %do.end, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dev1.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i, label %if.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

do.end:                                           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef %dev) #18
  br label %non_ip

if.end:                                           ; preds = %while.body.i
  %dev1.i.le = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %6)
  %cmp2.not = icmp eq i16 %6, 2048
  br i1 %cmp2.not, label %if.end5, label %if.end.non_ip_crit_edge

if.end.non_ip_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %non_ip

if.end5:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %8)
  %cmp6 = icmp ult i32 %8, 34
  br i1 %cmp6, label %if.end5.non_ip_crit_edge, label %if.end9

if.end5.non_ip_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %non_ip

if.end9:                                          ; preds = %if.end5
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %add.i = add i16 %conv.i.i, 14
  %11 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %add.i, ptr %network_header.i.i, align 4
  %conv.i.i56 = zext i16 %add.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i56
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = shl i8 %bf.load, 2
  %13 = and i8 %bf.clear, 60
  %narrow = add nuw nsw i8 %13, 14
  %add = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp13 = icmp ult i32 %8, %add
  %bf.clear17 = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear17)
  %cmp19 = icmp ult i8 %bf.clear17, 5
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp19
  br i1 %or.cond, label %if.end9.non_ip_crit_edge, label %while.cond.preheader

if.end9.non_ip_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %non_ip

while.cond.preheader:                             ; preds = %if.end9
  %number_of_mps_macs = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 13
  %14 = ptrtoint ptr %number_of_mps_macs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number_of_mps_macs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2369 = icmp sgt i32 %15, 0
  br i1 %cmp2369, label %while.body.lr.ph, label %while.cond.preheader.non_ip_crit_edge

while.cond.preheader.non_ip_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %non_ip

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mps_macs = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 12
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %in_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.body.lr.ph
  %i.070 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end34.while.body_crit_edge ]
  %16 = ptrtoint ptr %mps_macs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mps_macs, align 4
  %mul26 = mul i32 %i.070, 6
  %add.ptr = getelementptr i8, ptr %17, i32 %mul26
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  %xor.i = xor i32 %21, %19
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %25, %23
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then28, label %while.body.if.end34_crit_edge

while.body.if.end34_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then28:                                        ; preds = %while.body
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %dev1.i.le to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i.le, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %31 to i32
  %add.ptr.i61 = getelementptr i8, ptr %27, i32 %conv.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i61, i32 0, i32 9
  %32 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %daddr.i, align 4
  %34 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in_ops.i, align 4
  %get.i = getelementptr inbounds %struct.in_cache_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get.i, align 4
  %call.i = tail call ptr %37(i32 noundef %33, ptr noundef nonnull %mpc.0.i) #14
  %cmp.i62 = icmp eq ptr %call.i, null
  %38 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %in_ops.i, align 4
  br i1 %cmp.i62, label %if.then.i, label %if.end9.i

if.then.i:                                        ; preds = %if.then28
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call4.i = tail call ptr %41(i32 noundef %33, ptr noundef nonnull %mpc.0.i) #14
  %cmp5.not.i = icmp eq ptr %call4.i, null
  br i1 %cmp5.not.i, label %if.then.i.if.end34_crit_edge, label %if.then.i.send_via_shortcut.exit_crit_edge

if.then.i.send_via_shortcut.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_via_shortcut.exit

if.then.i.if.end34_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.end9.i:                                        ; preds = %if.then28
  %cache_hit.i = getelementptr inbounds %struct.in_cache_ops, ptr %39, i32 0, i32 6
  %42 = ptrtoint ptr %cache_hit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cache_hit.i, align 4
  %call11.i = tail call i32 %43(ptr noundef nonnull %call.i, ptr noundef nonnull %mpc.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i)
  %cmp12.not.i = icmp eq i32 %call11.i, 1
  br i1 %cmp12.not.i, label %do.end23.i, label %if.end9.i.send_via_shortcut.exit_crit_edge

if.end9.i.send_via_shortcut.exit_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_via_shortcut.exit

do.end23.i:                                       ; preds = %if.end9.i
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i61, i32 0, i32 5
  %44 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ttl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp25.i = icmp ult i8 %45, 2
  br i1 %cmp25.i, label %do.end23.i.send_via_shortcut.exit_crit_edge, label %if.end33.i

do.end23.i.send_via_shortcut.exit_crit_edge:      ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_via_shortcut.exit

if.end33.i:                                       ; preds = %do.end23.i
  %ttl.i.le = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i61, i32 0, i32 5
  %dec.i = add i8 %45, -1
  %46 = ptrtoint ptr %ttl.i.le to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %dec.i, ptr %ttl.i.le, align 4
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i61, i32 0, i32 7
  %47 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %check.i, align 2
  %48 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %add.ptr.i61, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv35.i = zext i8 %bf.clear.i to i32
  %49 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i61, i32 %conv35.i) #14, !srcloc !270
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %49, 0
  %50 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #20, !srcloc !271
  %neg.i.i.i = xor i32 %50, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %51 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i.i.i, ptr %check.i, align 2
  %tag.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i, i32 0, i32 12, i32 3
  %52 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp38.not.i = icmp eq i32 %53, 0
  br i1 %cmp38.not.i, label %if.else.i, label %do.end43.i

do.end43.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %53, ptr getelementptr inbounds (%struct.anon.153, ptr @send_via_shortcut.tagged_llc_snap_hdr, i32 0, i32 1), align 4
  %call46.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #14
  %call47.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #14
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %56 = call ptr @memcpy(ptr %55, ptr @send_via_shortcut.tagged_llc_snap_hdr, i32 12)
  br label %if.end50.i

if.else.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %call48.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #14
  %call49.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #14
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %59 = load i64, ptr @llc_snap_mpoa_data, align 8
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %58, align 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else.i, %do.end43.i
  %shortcut.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i, i32 0, i32 10
  %61 = ptrtoint ptr %shortcut.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %shortcut.i, align 4
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %63 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %truesize.i.i, align 8
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 23
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc.i.i, i32 1, i32 3, i32 1) #14
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc.i.i, ptr %sk_wmem_alloc.i.i, i32 %64, ptr elementtype(i32) %sk_wmem_alloc.i.i) #14, !srcloc !272
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end50.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !268

if.end50.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end50.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, %64
  %66 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.atm_account_tx.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !273

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.atm_account_tx.exit.i_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %atm_account_tx.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end50.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end50.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc.i.i, i32 noundef %.sink.i.i.i.i) #14
  br label %atm_account_tx.exit.i

atm_account_tx.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.atm_account_tx.exit.i_crit_edge
  %67 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %truesize.i.i, align 8
  %acct_truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %69 = ptrtoint ptr %acct_truesize.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %acct_truesize.i.i, align 8
  %atm_options.i.i = getelementptr inbounds %struct.atm_vcc, ptr %62, i32 0, i32 5
  %70 = ptrtoint ptr %atm_options.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %atm_options.i.i, align 8
  %atm_options4.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %72 = ptrtoint ptr %atm_options4.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %atm_options4.i.i, align 4
  %73 = ptrtoint ptr %shortcut.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %shortcut.i, align 4
  %send.i = getelementptr inbounds %struct.atm_vcc, ptr %74, i32 0, i32 13
  %75 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %send.i, align 4
  %call53.i = tail call i32 %76(ptr noundef %74, ptr noundef %skb) #14
  %packets_fwded.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i, i32 0, i32 5
  %77 = ptrtoint ptr %packets_fwded.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %packets_fwded.i, align 8
  %inc.i = add i32 %78, 1
  store i32 %inc.i, ptr %packets_fwded.i, align 8
  %79 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %in_ops.i, align 4
  %put.i.c = getelementptr inbounds %struct.in_cache_ops, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %put.i.c to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %put.i.c, align 4
  tail call void %82(ptr noundef nonnull %call.i) #14
  br label %cleanup

send_via_shortcut.exit:                           ; preds = %do.end23.i.send_via_shortcut.exit_crit_edge, %if.end9.i.send_via_shortcut.exit_crit_edge, %if.then.i.send_via_shortcut.exit_crit_edge
  %call4.sink.i = phi ptr [ %call4.i, %if.then.i.send_via_shortcut.exit_crit_edge ], [ %call.i, %if.end9.i.send_via_shortcut.exit_crit_edge ], [ %call.i, %do.end23.i.send_via_shortcut.exit_crit_edge ]
  %83 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %in_ops.i, align 4
  %put.i = getelementptr inbounds %struct.in_cache_ops, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %put.i, align 4
  tail call void %86(ptr noundef nonnull %call4.sink.i) #14
  br label %if.end34

if.end34:                                         ; preds = %send_via_shortcut.exit, %if.then.i.if.end34_crit_edge, %while.body.if.end34_crit_edge
  %inc = add nuw nsw i32 %i.070, 1
  %87 = ptrtoint ptr %number_of_mps_macs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %number_of_mps_macs, align 4
  %cmp23 = icmp slt i32 %inc, %88
  br i1 %cmp23, label %if.end34.while.body_crit_edge, label %if.end34.non_ip_crit_edge

if.end34.non_ip_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %non_ip

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

non_ip:                                           ; preds = %if.end34.non_ip_crit_edge, %while.cond.preheader.non_ip_crit_edge, %if.end9.non_ip_crit_edge, %if.end5.non_ip_crit_edge, %if.end.non_ip_crit_edge, %do.end
  %old_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 15
  %89 = ptrtoint ptr %old_ops to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %old_ops, align 4
  %91 = tail call i32 @llvm.read_register.i32(metadata !255) #14
  %and.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i, align 4
  %add.i63 = add i32 %96, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %97 = inttoptr i32 %add.i63 to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %97, align 1
  %ndo_start_xmit.i = getelementptr inbounds %struct.net_device_ops, ptr %90, i32 0, i32 4
  %99 = ptrtoint ptr %ndo_start_xmit.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ndo_start_xmit.i, align 4
  %call9.i = tail call i32 %100(ptr noundef %skb, ptr noundef %dev) #14
  br label %cleanup

cleanup:                                          ; preds = %non_ip, %atm_account_tx.exit.i
  %retval.0 = phi i32 [ %call9.i, %non_ip ], [ 0, %atm_account_tx.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_mpoa_ioctl(ptr nocapture noundef %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %ioc_data.i = alloca %struct.atmmpc_ioc, align 4
  %mesg.i.i = alloca %struct.k_message, align 4
  %name.i.i = alloca [16 x i8], align 1
  %empty.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk.i, align 16
  %2 = and i32 %cmd, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25048, i32 %2)
  %switch = icmp eq i32 %2, 25048
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @capable(i32 noundef 12) #14
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %cmd, label %if.end4.cleanup_crit_edge [
    i32 25048, label %sw.bb
    i32 25049, label %sw.bb9
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %4 = load ptr, ptr @mpcs, align 4
  %cmp.i = icmp eq ptr %4, null
  br i1 %cmp.i, label %if.then.i, label %sw.bb.while.cond.i.i.preheader_crit_edge

sw.bb.while.cond.i.i.preheader_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %if.then.i.while.cond.i.i.preheader_crit_edge, %sw.bb.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

if.then.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %5, 100
  store i32 %add.i.i, ptr getelementptr inbounds (%struct.timer_list, ptr @mpc_timer, i32 0, i32 1), align 4
  store i32 %add.i.i, ptr @checking_time, align 4
  tail call void @add_timer(ptr noundef nonnull @mpc_timer) #14
  %call.i = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @mpoa_notifier) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.while.cond.i.i.preheader_crit_edge

if.then.i.while.cond.i.i.preheader_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i.preheader

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = tail call i32 @del_timer(ptr noundef nonnull @mpc_timer) #14
  br label %cleanup

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %mpc.0.in.i.i = phi ptr [ %mpc.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ @mpcs, %while.cond.i.i.preheader ]
  %6 = ptrtoint ptr %mpc.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %mpc.0.i.i = load ptr, ptr %mpc.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %mpc.0.i.i, null
  br i1 %cmp.not.i.i, label %do.end.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dev_num.i.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %dev_num.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_num.i.i, align 4
  %cmp1.i.i = icmp eq i32 %8, %arg
  br i1 %cmp1.i.i, label %while.body.i.i.if.end13.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

while.body.i.i.if.end13.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

do.end.i:                                         ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 528) #17
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %do.end.i.cleanup_crit_edge, label %if.end11.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %ingress_lock.i.i = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i.i.i, i32 0, i32 6
  tail call void @__rwlock_init(ptr noundef %ingress_lock.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @alloc_mpc.__key) #14
  %egress_lock.i.i = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i.i.i, i32 0, i32 9
  tail call void @__rwlock_init(ptr noundef %egress_lock.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @alloc_mpc.__key.34) #14
  %10 = load ptr, ptr @mpcs, align 4
  %11 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call7.i.i.i.i, align 8
  tail call void @atm_mpoa_init_cache(ptr noundef nonnull %call7.i.i.i.i) #14
  %parameters.i.i = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i.i.i, i32 0, i32 14
  %12 = ptrtoint ptr %parameters.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 10, ptr %parameters.i.i, align 8
  %mpc_p2.i.i = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i.i.i, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %mpc_p2.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %mpc_p2.i.i, align 2
  %mpc_p3.i.i = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i.i.i, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %mpc_p3.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %mpc_p3.i.i, align 4
  %mpc_p4.i.i = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i.i.i, i32 0, i32 14, i32 3
  %15 = ptrtoint ptr %mpc_p4.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 5, ptr %mpc_p4.i.i, align 4
  %mpc_p5.i.i = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i.i.i, i32 0, i32 14, i32 4
  %16 = ptrtoint ptr %mpc_p5.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 40, ptr %mpc_p5.i.i, align 2
  %mpc_p6.i.i = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i.i.i, i32 0, i32 14, i32 5
  %17 = ptrtoint ptr %mpc_p6.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 160, ptr %mpc_p6.i.i, align 8
  store ptr %call7.i.i.i.i, ptr @mpcs, align 4
  %dev_num.i = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %arg, ptr %dev_num.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i.i) #14
  %19 = call ptr @memset(ptr %name.i.i, i32 255, i32 16)
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i.i, ptr noundef nonnull @.str.43, i32 noundef %arg) #14
  %call2.i.i = call ptr @dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %name.i.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i.i) #14
  %dev.i = getelementptr inbounds %struct.mpoa_client, ptr %call7.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call2.i.i, ptr %dev.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end11.i, %while.body.i.i.if.end13.i_crit_edge
  %mpc.0.i = phi ptr [ %call7.i.i.i.i, %if.end11.i ], [ %mpc.0.i.i, %while.body.i.i.if.end13.i_crit_edge ]
  %mpoad_vcc.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 3
  %21 = ptrtoint ptr %mpoad_vcc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mpoad_vcc.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %arg) #18
  br label %cleanup

if.end19.i:                                       ; preds = %if.end13.i
  %dev20.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev20.i, align 4
  %tobool21.not.i = icmp eq ptr %24, null
  br i1 %tobool21.not.i, label %if.end19.i.if.end30.i_crit_edge, label %if.then22.i

if.end19.i.if.end30.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.then22.i:                                      ; preds = %if.end19.i
  %lane_version.i = getelementptr i8, ptr %24, i32 2584
  %25 = ptrtoint ptr %lane_version.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lane_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp25.i = icmp slt i32 %26, 2
  br i1 %cmp25.i, label %do.body1.i.i, label %if.else.i

do.body1.i.i:                                     ; preds = %if.then22.i
  %27 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !266
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 118
  %28 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = call i32 @llvm.read_register.i32(metadata !255) #14
  %and.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %add.i75.i = add i32 %36, %30
  %37 = inttoptr i32 %add.i75.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add13.i.i = add i32 %39, -1
  store i32 %add13.i.i, ptr %37, align 4
  %40 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !267
  %and.i.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !268

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #14, !srcloc !269
  %41 = ptrtoint ptr %dev20.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %dev20.i, align 4
  br label %if.end30.i

if.else.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %lane2_ops.i = getelementptr i8, ptr %24, i32 2592
  %42 = ptrtoint ptr %lane2_ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lane2_ops.i, align 4
  %associate_indicator.i = getelementptr inbounds %struct.lane2_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %associate_indicator.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @lane2_assoc_ind, ptr %associate_indicator.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %dev_put.exit.i, %if.end19.i.if.end30.i_crit_edge
  %45 = ptrtoint ptr %mpoad_vcc.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %1, ptr %mpoad_vcc.i, align 4
  %dev32.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %dev32.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mpc_dev, ptr %dev32.i, align 4
  call void @vcc_insert_socket(ptr noundef %1) #14
  %flags.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 1
  call void @_set_bit(i32 noundef 8, ptr noundef %flags.i) #14
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #14
  %47 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev20.i, align 4
  %tobool36.not.i = icmp eq ptr %48, null
  br i1 %tobool36.not.i, label %if.end30.i.atm_mpoa_mpoad_attach.exit_crit_edge, label %if.then37.i

if.end30.i.atm_mpoa_mpoad_attach.exit_crit_edge:  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %atm_mpoa_mpoad_attach.exit

if.then37.i:                                      ; preds = %if.end30.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %empty.i) #14
  %49 = call ptr @memset(ptr %empty.i, i32 0, i32 20)
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 16
  %50 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev_ops.i.i, align 8
  %tobool.not.i76.i = icmp eq ptr %51, null
  br i1 %tobool.not.i76.i, label %do.end2.i.i, label %if.else.i.i

do.end2.i.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull %48) #18
  br label %start_mpc.exit.i

if.else.i.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  %old_ops.i.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 15
  %52 = ptrtoint ptr %old_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %old_ops.i.i, align 4
  %new_ops.i.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 16
  %53 = call ptr @memcpy(ptr %new_ops.i.i, ptr %51, i32 336)
  %ndo_start_xmit.i.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 16, i32 4
  %54 = ptrtoint ptr %ndo_start_xmit.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @mpc_send_packet, ptr %ndo_start_xmit.i.i, align 4
  %55 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %new_ops.i.i, ptr %netdev_ops.i.i, align 8
  br label %start_mpc.exit.i

start_mpc.exit.i:                                 ; preds = %if.else.i.i, %do.end2.i.i
  %mps_ctrl_addr.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 4
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(20) %mps_ctrl_addr.i, ptr noundef nonnull dereferenceable(20) %empty.i, i32 20) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp42.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp42.not.i, label %start_mpc.exit.i.if.end46.i_crit_edge, label %if.then43.i

start_mpc.exit.i.if.end46.i_crit_edge:            ; preds = %start_mpc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i

if.then43.i:                                      ; preds = %start_mpc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 412, ptr nonnull %mesg.i.i) #14
  %56 = call ptr @memset(ptr %mesg.i.i, i32 255, i32 412)
  %57 = ptrtoint ptr %mesg.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 202, ptr %mesg.i.i, align 4
  %MPS_ctrl.i.i = getelementptr inbounds %struct.k_message, ptr %mesg.i.i, i32 0, i32 2
  %58 = call ptr @memcpy(ptr %MPS_ctrl.i.i, ptr %mps_ctrl_addr.i, i32 20)
  %call.i78.i = call i32 @msg_to_mpoad(ptr noundef nonnull %mesg.i.i, ptr noundef nonnull %mpc.0.i) #14
  call void @llvm.lifetime.end.p0(i64 412, ptr nonnull %mesg.i.i) #14
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %start_mpc.exit.i.if.end46.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %empty.i) #14
  br label %atm_mpoa_mpoad_attach.exit

atm_mpoa_mpoad_attach.exit:                       ; preds = %if.end46.i, %if.end30.i.atm_mpoa_mpoad_attach.exit_crit_edge
  call void @__module_get(ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %arg)
  %cmp6 = icmp sgt i32 %arg, -1
  br i1 %cmp6, label %if.then7, label %atm_mpoa_mpoad_attach.exit.cleanup_crit_edge

atm_mpoa_mpoad_attach.exit.cleanup_crit_edge:     ; preds = %atm_mpoa_mpoad_attach.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %atm_mpoa_mpoad_attach.exit
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %sock, align 128
  br label %cleanup

sw.bb9:                                           ; preds = %if.end4
  %60 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ioc_data.i) #14
  %61 = ptrtoint ptr %ioc_data.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %ioc_data.i, align 4, !annotation !274
  %62 = getelementptr inbounds %struct.atmmpc_ioc, ptr %ioc_data.i, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %62, align 4, !annotation !274
  %64 = getelementptr inbounds %struct.atmmpc_ioc, ptr %ioc_data.i, i32 0, i32 2
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %64, align 4, !annotation !274
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 156) #14
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %sw.bb9.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb9.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb9
  %66 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %60, i32 12, i32 -1226833920) #20, !srcloc !275
  %asmresult.i.i.i = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !273

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ioc_data.i, i32 noundef 12) #14
  %67 = call i32 @llvm.read_register.i32(metadata !255) #14
  %and.i.i.i.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 4
  %69 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !276
  %and.i.i.i.i.i = and i32 %69, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !277
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !278
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ioc_data.i, ptr noundef %60, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #14, !srcloc !277
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !273

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb9.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %sw.bb9.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ioc_data.i, i32 %sub.i.i.i
  %70 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef %res.03.i.i.i) #18
  br label %atm_mpoa_vcc_attach.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %71 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %62, align 4
  %73 = ptrtoint ptr %ioc_data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ioc_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %74)
  %75 = icmp ugt i32 %74, 47
  br i1 %75, label %if.end.i.atm_mpoa_vcc_attach.exit_crit_edge, label %if.end.i.while.cond.i.i21_crit_edge

if.end.i.while.cond.i.i21_crit_edge:              ; preds = %if.end.i
  br label %while.cond.i.i21

if.end.i.atm_mpoa_vcc_attach.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %atm_mpoa_vcc_attach.exit

while.cond.i.i21:                                 ; preds = %while.body.i.i24.while.cond.i.i21_crit_edge, %if.end.i.while.cond.i.i21_crit_edge
  %mpc.0.in.i.i18 = phi ptr [ %mpc.0.i.i19, %while.body.i.i24.while.cond.i.i21_crit_edge ], [ @mpcs, %if.end.i.while.cond.i.i21_crit_edge ]
  %76 = ptrtoint ptr %mpc.0.in.i.i18 to i32
  call void @__asan_load4_noabort(i32 %76)
  %mpc.0.i.i19 = load ptr, ptr %mpc.0.in.i.i18, align 4
  %cmp.not.i.i20 = icmp eq ptr %mpc.0.i.i19, null
  br i1 %cmp.not.i.i20, label %while.cond.i.i21.atm_mpoa_vcc_attach.exit_crit_edge, label %while.body.i.i24

while.cond.i.i21.atm_mpoa_vcc_attach.exit_crit_edge: ; preds = %while.cond.i.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %atm_mpoa_vcc_attach.exit

while.body.i.i24:                                 ; preds = %while.cond.i.i21
  %dev_num.i.i22 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i.i19, i32 0, i32 2
  %77 = ptrtoint ptr %dev_num.i.i22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dev_num.i.i22, align 4
  %cmp1.i.i23 = icmp eq i32 %78, %74
  br i1 %cmp1.i.i23, label %if.end12.i, label %while.body.i.i24.while.cond.i.i21_crit_edge

while.body.i.i24.while.cond.i.i21_crit_edge:      ; preds = %while.body.i.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i21

if.end12.i:                                       ; preds = %while.body.i.i24
  %79 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp13.i = icmp eq i32 %80, 1
  br i1 %cmp13.i, label %if.then14.i, label %do.end44.i

if.then14.i:                                      ; preds = %if.end12.i
  %in_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i.i19, i32 0, i32 7
  %81 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %in_ops.i, align 4
  %get.i = getelementptr inbounds %struct.in_cache_ops, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %get.i, align 4
  %call15.i = call ptr %84(i32 noundef %72, ptr noundef nonnull %mpc.0.i.i19) #14
  %cmp16.i = icmp eq ptr %call15.i, null
  br i1 %cmp16.i, label %do.end23.thread.i, label %lor.lhs.false17.i

do.end23.thread.i:                                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev76.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i.i19, i32 0, i32 1
  %85 = ptrtoint ptr %dev76.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev76.i, align 4
  %call2577.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, ptr noundef %86) #18
  br label %atm_mpoa_vcc_attach.exit

lor.lhs.false17.i:                                ; preds = %if.then14.i
  %entry_state.i = getelementptr inbounds %struct.in_cache_entry, ptr %call15.i, i32 0, i32 6
  %87 = ptrtoint ptr %entry_state.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %entry_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %88)
  %cmp18.i = icmp ult i16 %88, 2
  %dev.i25 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i.i19, i32 0, i32 1
  %89 = ptrtoint ptr %dev.i25 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i25, align 4
  br i1 %cmp18.i, label %if.then28.i, label %do.end34.i

if.then28.i:                                      ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #16
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, ptr noundef %90) #18
  %91 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %in_ops.i, align 4
  %put.i = getelementptr inbounds %struct.in_cache_ops, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %put.i, align 4
  call void %94(ptr noundef nonnull %call15.i) #14
  br label %atm_mpoa_vcc_attach.exit

do.end34.i:                                       ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #16
  %in_dst_ip.i = getelementptr inbounds %struct.in_cache_entry, ptr %call15.i, i32 0, i32 12, i32 4
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.85, ptr noundef %90, ptr noundef %in_dst_ip.i) #18
  %shortcut.i = getelementptr inbounds %struct.in_cache_entry, ptr %call15.i, i32 0, i32 10
  %95 = ptrtoint ptr %shortcut.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %1, ptr %shortcut.i, align 4
  %96 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %in_ops.i, align 4
  %put41.i = getelementptr inbounds %struct.in_cache_ops, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %put41.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %put41.i, align 4
  call void %99(ptr noundef nonnull %call15.i) #14
  br label %if.end50.i

do.end44.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev46.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i.i19, i32 0, i32 1
  %100 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev46.i, align 4
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.85, ptr noundef %101) #18
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %do.end34.i
  %dev51.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i.i19, i32 0, i32 1
  %102 = ptrtoint ptr %dev51.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev51.i, align 4
  %proto_data.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 15
  %104 = ptrtoint ptr %proto_data.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %proto_data.i, align 4
  %push.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 10
  %105 = ptrtoint ptr %push.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @mpc_push, ptr %push.i, align 8
  br label %atm_mpoa_vcc_attach.exit

atm_mpoa_vcc_attach.exit:                         ; preds = %if.end50.i, %if.then28.i, %do.end23.thread.i, %while.cond.i.i21.atm_mpoa_vcc_attach.exit_crit_edge, %if.end.i.atm_mpoa_vcc_attach.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i26 = phi i32 [ -14, %if.then11.i.i.i ], [ 0, %if.end50.i ], [ -22, %if.end.i.atm_mpoa_vcc_attach.exit_crit_edge ], [ -22, %if.then28.i ], [ -22, %do.end23.thread.i ], [ -22, %while.cond.i.i21.atm_mpoa_vcc_attach.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ioc_data.i) #14
  br label %cleanup

cleanup:                                          ; preds = %atm_mpoa_vcc_attach.exit, %if.then7, %atm_mpoa_mpoad_attach.exit.cleanup_crit_edge, %do.end17.i, %do.end.i.cleanup_crit_edge, %if.then2.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -515, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %retval.0.i26, %atm_mpoa_vcc_attach.exit ], [ %arg, %if.then7 ], [ %arg, %atm_mpoa_mpoad_attach.exit.cleanup_crit_edge ], [ -12, %do.end.i.cleanup_crit_edge ], [ -98, %do.end17.i ], [ %call.i, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_insert_socket(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpoad_close(ptr noundef %vcc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %mpc.0.in.i = phi ptr [ @mpcs, %entry ], [ %mpc.0.i, %while.body.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mpc.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mpc.0.i = load ptr, ptr %mpc.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mpc.0.i, null
  br i1 %cmp.not.i, label %do.end, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %mpoad_vcc.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %mpoad_vcc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mpoad_vcc.i, align 4
  %cmp1.i = icmp eq ptr %2, %vcc
  br i1 %cmp1.i, label %if.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

do.end:                                           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #18
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  %mpoad_vcc.i.le = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %mpoad_vcc.i.le to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mpoad_vcc.i.le, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %mpoad_vcc.i.le to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %mpoad_vcc.i.le, align 4
  %dev = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end8.if.end15_crit_edge, label %if.then11

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then11:                                        ; preds = %if.end8
  %lane2_ops = getelementptr i8, ptr %7, i32 2592
  %8 = ptrtoint ptr %lane2_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lane2_ops, align 4
  %associate_indicator = getelementptr inbounds %struct.lane2_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %associate_indicator to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %associate_indicator, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev_ops.i, align 8
  %new_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 16
  %cmp.not.i45 = icmp eq ptr %14, %new_ops.i
  br i1 %cmp.not.i45, label %do.end7.i, label %if.then11.stop_mpc.exit_crit_edge

if.then11.stop_mpc.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop_mpc.exit

do.end7.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %old_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 15
  %15 = ptrtoint ptr %old_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %old_ops.i, align 4
  %17 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %netdev_ops.i, align 8
  store ptr null, ptr %old_ops.i, align 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %dev, align 4
  br label %stop_mpc.exit

stop_mpc.exit:                                    ; preds = %do.end7.i, %if.then11.stop_mpc.exit_crit_edge
  %19 = phi ptr [ %12, %if.then11.stop_mpc.exit_crit_edge ], [ %.pr, %do.end7.i ]
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %stop_mpc.exit.if.end15_crit_edge, label %do.body1.i

stop_mpc.exit.if.end15_crit_edge:                 ; preds = %stop_mpc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

do.body1.i:                                       ; preds = %stop_mpc.exit
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !266
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !255) #14
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, -1
  store i32 %add13.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !267
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !268

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #14, !srcloc !269
  br label %if.end15

if.end15:                                         ; preds = %do.end30.i, %stop_mpc.exit.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %in_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 7
  %34 = ptrtoint ptr %in_ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in_ops, align 4
  %destroy_cache = getelementptr inbounds %struct.in_cache_ops, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %destroy_cache to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %destroy_cache, align 4
  tail call void %37(ptr noundef nonnull %mpc.0.i) #14
  %eg_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 10
  %38 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eg_ops, align 4
  %destroy_cache16 = getelementptr inbounds %struct.eg_cache_ops, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %destroy_cache16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %destroy_cache16, align 4
  tail call void %41(ptr noundef nonnull %mpc.0.i) #14
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 8
  %call1849 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #14
  %tobool19.not50 = icmp eq ptr %call1849, null
  br i1 %tobool19.not50, label %if.end15.do.end22_crit_edge, label %while.body.lr.ph

if.end15.do.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

while.body.lr.ph:                                 ; preds = %if.end15
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call1851 = phi ptr [ %call1849, %while.body.lr.ph ], [ %call18, %while.body.while.body_crit_edge ]
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call1851, i32 0, i32 20
  %42 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %truesize, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #14
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %43, ptr elementtype(i32) %sk_backlog.i) #14, !srcloc !279
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1851, i32 noundef 0) #14
  %call18 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #14
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %while.body.do.end22_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.do.end22_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

do.end22:                                         ; preds = %while.body.do.end22_crit_edge, %if.end15.do.end22_crit_edge
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %tobool25.not = icmp eq ptr %46, null
  %spec.select = select i1 %tobool25.not, ptr @.str.54, ptr %46
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.47, ptr noundef nonnull %spec.select) #18
  tail call void @module_put(ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.end5, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msg_from_mpoad(ptr noundef %vcc, ptr noundef %skb) #0 align 64 {
entry:
  %tlv.i = alloca [27 x i8], align 1
  %dst_ip.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %mpc.0.in.i = phi ptr [ @mpcs, %entry ], [ %mpc.0.i, %while.body.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mpc.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mpc.0.i = load ptr, ptr %mpc.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mpc.0.i, null
  br i1 %cmp.not.i, label %while.cond.i.find_mpc_by_vcc.exit_crit_edge, label %while.body.i

while.cond.i.find_mpc_by_vcc.exit_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_mpc_by_vcc.exit

while.body.i:                                     ; preds = %while.cond.i
  %mpoad_vcc.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %mpoad_vcc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mpoad_vcc.i, align 4
  %cmp1.i = icmp eq ptr %2, %vcc
  br i1 %cmp1.i, label %while.body.i.find_mpc_by_vcc.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

while.body.i.find_mpc_by_vcc.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_mpc_by_vcc.exit

find_mpc_by_vcc.exit:                             ; preds = %while.body.i.find_mpc_by_vcc.exit_crit_edge, %while.cond.i.find_mpc_by_vcc.exit_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %5 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %truesize, align 8
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !280
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %6, ptr elementtype(i32) %sk_wmem_alloc) #14, !srcloc !281
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %6)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, %6
  br i1 %cmp.i.i, label %do.end, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %find_mpc_by_vcc.exit
  %sub.i.i = sub i32 %asmresult.i.i.i.i.i, %6
  %8 = or i32 %sub.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i, label %if.end5.i.i.if.end_crit_edge, label %if.then10.i.i, !prof !273

if.end5.i.i.if.end_crit_edge:                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef 3) #14
  br label %if.end

do.end:                                           ; preds = %find_mpc_by_vcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !282
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 913, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then10.i.i, %if.end5.i.i.if.end_crit_edge
  br i1 %cmp.not.i, label %do.end24, label %do.end30

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #18
  br label %cleanup

do.end30:                                         ; preds = %if.end
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %4, align 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.122)
  switch i16 %10, label %do.end30.sw.epilog_crit_edge [
    i16 102, label %do.end33
    i16 101, label %do.end37
    i16 103, label %do.end41
    i16 104, label %do.end45
    i16 105, label %do.end49
    i16 106, label %do.end53
    i16 107, label %do.end57
    i16 108, label %do.end61
    i16 109, label %do.end65
    i16 301, label %do.end69
    i16 110, label %do.end73
  ]

do.end30.sw.epilog_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.end33:                                         ; preds = %do.end30
  %content.i = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3
  %in_dst_ip.i = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3, i32 0, i32 0, i32 28
  %12 = ptrtoint ptr %in_dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_dst_ip.i, align 4
  %in_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 7
  %14 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in_ops.i, align 4
  %get.i = getelementptr inbounds %struct.in_cache_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get.i, align 4
  %call.i = tail call ptr %17(i32 noundef %13, ptr noundef nonnull %mpc.0.i) #14
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end7.i, label %do.end11.i

do.end7.i:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef %19) #18
  br label %sw.epilog

do.end11.i:                                       ; preds = %do.end33
  %entry_state.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %entry_state.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %entry_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %21)
  %cmp12.i = icmp eq i16 %21, 2
  br i1 %cmp12.i, label %do.end17.i, label %if.end24.i

do.end17.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev19.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev19.i, align 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, ptr noundef %23) #18
  %24 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_ops.i, align 4
  %put.i = getelementptr inbounds %struct.in_cache_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %put.i, align 4
  tail call void %27(ptr noundef nonnull %call.i) #14
  br label %sw.epilog

if.end24.i:                                       ; preds = %do.end11.i
  %ctrl_info.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i, i32 0, i32 12
  %28 = call ptr @memcpy(ptr %ctrl_info.i, ptr %content.i, i32 40)
  %call26.i = tail call i64 @ktime_get_seconds() #14
  %time.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %time.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call26.i, ptr %time.i, align 8
  %call27.i = tail call i64 @ktime_get_seconds() #14
  %reply_wait.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %reply_wait.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call27.i, ptr %reply_wait.i, align 8
  %refresh_time.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %refresh_time.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %refresh_time.i, align 4
  %32 = ptrtoint ptr %entry_state.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %entry_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %33)
  %cmp33.i = icmp eq i16 %33, 1
  br i1 %cmp33.i, label %land.lhs.true.i, label %if.end24.i.if.end41.i_crit_edge

if.end24.i.if.end41.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %shortcut.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %shortcut.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shortcut.i, align 4
  %cmp35.not.i = icmp eq ptr %35, null
  br i1 %cmp35.not.i, label %land.lhs.true.i.if.end41.i_crit_edge, label %if.then37.i

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

if.then37.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %entry_state.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2, ptr %entry_state.i, align 4
  %37 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %in_ops.i, align 4
  %put40.i = getelementptr inbounds %struct.in_cache_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %put40.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %put40.i, align 4
  tail call void %40(ptr noundef nonnull %call.i) #14
  br label %sw.epilog

if.end41.i:                                       ; preds = %land.lhs.true.i.if.end41.i_crit_edge, %if.end24.i.if.end41.i_crit_edge
  %shortcut42.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i, i32 0, i32 10
  %41 = ptrtoint ptr %shortcut42.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %shortcut42.i, align 4
  %cmp43.not.i = icmp eq ptr %42, null
  br i1 %cmp43.not.i, label %if.end56.i, label %do.end48.i

do.end48.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev50.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %43 = ptrtoint ptr %dev50.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev50.i, align 4
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.58, ptr noundef %44) #18
  %45 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %in_ops.i, align 4
  %put55.i = getelementptr inbounds %struct.in_cache_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %put55.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %put55.i, align 4
  tail call void %48(ptr noundef nonnull %call.i) #14
  br label %sw.epilog

if.end56.i:                                       ; preds = %if.end41.i
  %49 = ptrtoint ptr %in_dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %in_dst_ip.i, align 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.end56.i
  %qos.0.in.i.i.i = phi ptr [ @qos_head, %if.end56.i ], [ %qos.0.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %qos.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %qos.0.i.i.i = load ptr, ptr %qos.0.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %qos.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.atm_mpoa_search_qos.exit.i.i_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.atm_mpoa_search_qos.exit.i.i_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %atm_mpoa_search_qos.exit.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %ipaddr.i.i.i = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.0.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %ipaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ipaddr.i.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %53, %50
  br i1 %cmp.i.i.i, label %while.body.i.i.i.atm_mpoa_search_qos.exit.i.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i.i

while.body.i.i.i.atm_mpoa_search_qos.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %atm_mpoa_search_qos.exit.i.i

atm_mpoa_search_qos.exit.i.i:                     ; preds = %while.body.i.i.i.atm_mpoa_search_qos.exit.i.i_crit_edge, %while.cond.i.i.i.atm_mpoa_search_qos.exit.i.i_crit_edge
  %eg_ops.i.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 10
  %54 = ptrtoint ptr %eg_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %eg_ops.i.i, align 4
  %get_by_src_ip.i.i = getelementptr inbounds %struct.eg_cache_ops, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %get_by_src_ip.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_by_src_ip.i.i, align 4
  %call2.i.i = tail call ptr %57(i32 noundef %50, ptr noundef %mpc.0.i) #14
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %atm_mpoa_search_qos.exit.i.i.if.end48.i.i_crit_edge, label %land.lhs.true.i.i

atm_mpoa_search_qos.exit.i.i.if.end48.i.i_crit_edge: ; preds = %atm_mpoa_search_qos.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

land.lhs.true.i.i:                                ; preds = %atm_mpoa_search_qos.exit.i.i
  %shortcut.i.i = getelementptr inbounds %struct.eg_cache_entry, ptr %call2.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %shortcut.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shortcut.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %59, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.then45.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.then45.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then45.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %qos5.i.i = getelementptr inbounds %struct.atm_vcc, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %qos5.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %qos5.i.i, align 8
  %qos6.i.i = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 4
  %62 = ptrtoint ptr %qos6.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %qos6.i.i, align 4
  %and101.i.i = and i8 %63, %61
  %and.i.i = zext i8 %and101.i.i to i32
  br i1 %tobool.not.i.i.i, label %if.then.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %qos11.i.i = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.0.i.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %qos11.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %qos11.i.i, align 4
  %conv14.i.i = zext i8 %65 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv14.i.i, %cond.true.i.i ], [ 3, %if.then.i.i.cond.end.i.i_crit_edge ]
  %and15.i.i = and i32 %cond.i.i, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %cond.end.i.i.if.end36.i.i_crit_edge, label %if.then17.i.i

cond.end.i.i.if.end36.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.i

if.then17.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp.i.i104 = icmp eq i8 %61, 1
  br i1 %cmp.i.i104, label %if.then17.i.i.if.end36.i.thread.i_crit_edge, label %if.else.i.i

if.then17.i.i.if.end36.i.thread.i_crit_edge:      ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.thread.i

if.else.i.i:                                      ; preds = %if.then17.i.i
  %max_pcr.i.i = getelementptr inbounds %struct.atm_vcc, ptr %59, i32 0, i32 7, i32 0, i32 1
  %66 = ptrtoint ptr %max_pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_pcr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp30.i.i = icmp sgt i32 %67, 0
  br i1 %cmp30.i.i, label %if.else.i.i.if.end36.i.thread.i_crit_edge, label %if.else.i.i.if.end36.i.i_crit_edge

if.else.i.i.if.end36.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.i

if.else.i.i.if.end36.i.thread.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.thread.i

if.end36.i.thread.i:                              ; preds = %if.else.i.i.if.end36.i.thread.i_crit_edge, %if.then17.i.i.if.end36.i.thread.i_crit_edge
  %68 = ptrtoint ptr %shortcut42.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %59, ptr %shortcut42.i, align 4
  br label %do.end.i.i105

if.end36.i.i:                                     ; preds = %if.else.i.i.if.end36.i.i_crit_edge, %cond.end.i.i.if.end36.i.i_crit_edge
  %69 = ptrtoint ptr %shortcut42.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr.i = load ptr, ptr %shortcut42.i, align 4
  %tobool38.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %tobool38.not.i.i, label %if.end36.i.i.if.then45.i.i_crit_edge, label %if.end36.i.i.do.end.i.i105_crit_edge

if.end36.i.i.do.end.i.i105_crit_edge:             ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i105

if.end36.i.i.if.then45.i.i_crit_edge:             ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then45.i.i

do.end.i.i105:                                    ; preds = %if.end36.i.i.do.end.i.i105_crit_edge, %if.end36.i.thread.i
  %70 = ptrtoint ptr %eg_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %eg_ops.i.i, align 4
  %put.i.i = getelementptr inbounds %struct.eg_cache_ops, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %put.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %put.i.i, align 4
  tail call void %73(ptr noundef nonnull %call2.i.i) #14
  br label %check_qos_and_open_shortcut.exit.i

if.then45.i.i:                                    ; preds = %if.end36.i.i.if.then45.i.i_crit_edge, %land.lhs.true.i.i.if.then45.i.i_crit_edge
  %74 = ptrtoint ptr %eg_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %eg_ops.i.i, align 4
  %put47.i.i = getelementptr inbounds %struct.eg_cache_ops, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %put47.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %put47.i.i, align 4
  tail call void %77(ptr noundef nonnull %call2.i.i) #14
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %atm_mpoa_search_qos.exit.i.i.if.end48.i.i_crit_edge
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 209, ptr %4, align 4
  br i1 %tobool.not.i.i.i, label %if.end48.i.i.if.else68.i.i_crit_edge, label %land.lhs.true50.i.i

if.end48.i.i.if.else68.i.i_crit_edge:             ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else68.i.i

land.lhs.true50.i.i:                              ; preds = %if.end48.i.i
  %qos51.i.i = getelementptr inbounds %struct.atm_mpoa_qos, ptr %qos.0.i.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %qos51.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %qos51.i.i, align 4
  %qos55.i.i = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 4
  %81 = ptrtoint ptr %qos55.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %qos55.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %82)
  %cmp59.i.i = icmp eq i8 %80, %82
  br i1 %cmp59.i.i, label %if.then61.i.i, label %land.lhs.true50.i.i.if.else68.i.i_crit_edge

land.lhs.true50.i.i.if.else68.i.i_crit_edge:      ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else68.i.i

if.then61.i.i:                                    ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %83 = call ptr @memcpy(ptr %qos55.i.i, ptr %qos51.i.i, i32 84)
  %dev.i.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %84 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i, align 4
  %call67.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef %85) #18
  br label %if.end70.i.i

if.else68.i.i:                                    ; preds = %land.lhs.true50.i.i.if.else68.i.i_crit_edge, %if.end48.i.i.if.else68.i.i_crit_edge
  %qos69.i.i = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 4
  %86 = call ptr @memset(ptr %qos69.i.i, i32 0, i32 84)
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.else68.i.i, %if.then61.i.i
  %call71.i.i = tail call i32 @msg_to_mpoad(ptr noundef %4, ptr noundef %mpc.0.i) #14
  br label %check_qos_and_open_shortcut.exit.i

check_qos_and_open_shortcut.exit.i:               ; preds = %if.end70.i.i, %do.end.i.i105
  %87 = ptrtoint ptr %entry_state.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 2, ptr %entry_state.i, align 4
  %88 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %in_ops.i, align 4
  %put59.i = getelementptr inbounds %struct.in_cache_ops, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %put59.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %put59.i, align 4
  tail call void %91(ptr noundef nonnull %call.i) #14
  br label %sw.epilog

do.end37:                                         ; preds = %do.end30
  %content.i106 = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3
  %in_dst_ip.i107 = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3, i32 0, i32 0, i32 28
  %92 = ptrtoint ptr %in_dst_ip.i107 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %in_dst_ip.i107, align 4
  %in_ops.i108 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 7
  %94 = ptrtoint ptr %in_ops.i108 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %in_ops.i108, align 4
  %get.i109 = getelementptr inbounds %struct.in_cache_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %get.i109 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %get.i109, align 4
  %call.i110 = tail call ptr %97(i32 noundef %93, ptr noundef nonnull %mpc.0.i) #14
  %cmp.i111 = icmp eq ptr %call.i110, null
  br i1 %cmp.i111, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %in_ops.i108 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %in_ops.i108, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %call3.i = tail call ptr %101(i32 noundef %93, ptr noundef nonnull %mpc.0.i) #14
  %entry_state.i112 = getelementptr inbounds %struct.in_cache_entry, ptr %call3.i, i32 0, i32 6
  %102 = ptrtoint ptr %entry_state.i112 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %entry_state.i112, align 4
  %103 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 201, ptr %4, align 4
  %ctrl_info.i113 = getelementptr inbounds %struct.in_cache_entry, ptr %call3.i, i32 0, i32 12
  %104 = call ptr @memcpy(ptr %content.i106, ptr %ctrl_info.i113, i32 40)
  %call5.i = tail call i32 @msg_to_mpoad(ptr noundef %4, ptr noundef nonnull %mpc.0.i) #14
  %call6.i = tail call i64 @ktime_get_seconds() #14
  %reply_wait.i114 = getelementptr inbounds %struct.in_cache_entry, ptr %call3.i, i32 0, i32 3
  %105 = ptrtoint ptr %reply_wait.i114 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %call6.i, ptr %reply_wait.i114, align 8
  %106 = ptrtoint ptr %in_ops.i108 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %in_ops.i108, align 4
  %put.i115 = getelementptr inbounds %struct.in_cache_ops, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %put.i115 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %put.i115, align 4
  tail call void %109(ptr noundef %call3.i) #14
  br label %sw.epilog

if.end.i:                                         ; preds = %do.end37
  %entry_state8.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i110, i32 0, i32 6
  %110 = ptrtoint ptr %entry_state8.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %entry_state8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %cmp9.i = icmp eq i16 %111, 0
  br i1 %cmp9.i, label %if.then11.i, label %do.end.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %112 = ptrtoint ptr %entry_state8.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 1, ptr %entry_state8.i, align 4
  %113 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 201, ptr %4, align 4
  %ctrl_info15.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i110, i32 0, i32 12
  %114 = call ptr @memcpy(ptr %content.i106, ptr %ctrl_info15.i, i32 40)
  %call16.i = tail call i32 @msg_to_mpoad(ptr noundef %4, ptr noundef nonnull %mpc.0.i) #14
  %call17.i = tail call i64 @ktime_get_seconds() #14
  %reply_wait18.i = getelementptr inbounds %struct.in_cache_entry, ptr %call.i110, i32 0, i32 3
  %115 = ptrtoint ptr %reply_wait18.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %call17.i, ptr %reply_wait18.i, align 8
  %116 = ptrtoint ptr %in_ops.i108 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %in_ops.i108, align 4
  %put20.i = getelementptr inbounds %struct.in_cache_ops, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %put20.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %put20.i, align 4
  tail call void %119(ptr noundef nonnull %call.i110) #14
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i116 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %120 = ptrtoint ptr %dev.i116 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i116, align 4
  %tobool.not.i = icmp eq ptr %121, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.54, ptr %121
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull %spec.select.i) #18
  %122 = ptrtoint ptr %in_ops.i108 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %in_ops.i108, align 4
  %put25.i = getelementptr inbounds %struct.in_cache_ops, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %put25.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %put25.i, align 4
  tail call void %125(ptr noundef nonnull %call.i110) #14
  br label %sw.epilog

do.end41:                                         ; preds = %do.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_ip.i) #14
  %in_dst_ip.i117 = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3, i32 0, i32 0, i32 28
  %126 = ptrtoint ptr %in_dst_ip.i117 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %in_dst_ip.i117, align 4
  %128 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %dst_ip.i, align 4
  %ip_mask.i = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 1
  %129 = ptrtoint ptr %ip_mask.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ip_mask.i, align 4
  %in_ops.i118 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 7
  %131 = ptrtoint ptr %in_ops.i118 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %in_ops.i118, align 4
  %get_with_mask.i = getelementptr inbounds %struct.in_cache_ops, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %get_with_mask.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %get_with_mask.i, align 4
  %call.i119 = tail call ptr %134(i32 noundef %127, ptr noundef nonnull %mpc.0.i, i32 noundef %130) #14
  %cmp.i120 = icmp eq ptr %call.i119, null
  br i1 %cmp.i120, label %do.end.i122, label %do.body3.preheader.i

do.body3.preheader.i:                             ; preds = %do.end41
  %ingress_lock.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 6
  br label %do.body3.i

do.end.i122:                                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i121 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %135 = ptrtoint ptr %dev.i121 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i121, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef %136, ptr noundef nonnull %dst_ip.i) #18
  br label %ingress_purge_rcvd.exit

do.body3.i:                                       ; preds = %do.body3.i.do.body3.i_crit_edge, %do.body3.preheader.i
  %entry1.0.i = phi ptr [ %call12.i, %do.body3.i.do.body3.i_crit_edge ], [ %call.i119, %do.body3.preheader.i ]
  tail call void @_raw_write_lock_bh(ptr noundef %ingress_lock.i) #14
  %137 = ptrtoint ptr %in_ops.i118 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %in_ops.i118, align 4
  %remove_entry.i = getelementptr inbounds %struct.in_cache_ops, ptr %138, i32 0, i32 5
  %139 = ptrtoint ptr %remove_entry.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %remove_entry.i, align 4
  tail call void %140(ptr noundef nonnull %entry1.0.i, ptr noundef %mpc.0.i) #14
  tail call void @_raw_write_unlock_bh(ptr noundef %ingress_lock.i) #14
  %141 = ptrtoint ptr %in_ops.i118 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %in_ops.i118, align 4
  %put.i123 = getelementptr inbounds %struct.in_cache_ops, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %put.i123 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %put.i123, align 4
  tail call void %144(ptr noundef nonnull %entry1.0.i) #14
  %145 = ptrtoint ptr %in_ops.i118 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %in_ops.i118, align 4
  %get_with_mask11.i = getelementptr inbounds %struct.in_cache_ops, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %get_with_mask11.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %get_with_mask11.i, align 4
  %149 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dst_ip.i, align 4
  %call12.i = tail call ptr %148(i32 noundef %150, ptr noundef %mpc.0.i, i32 noundef %130) #14
  %cmp14.not.i = icmp eq ptr %call12.i, null
  br i1 %cmp14.not.i, label %do.body3.i.ingress_purge_rcvd.exit_crit_edge, label %do.body3.i.do.body3.i_crit_edge

do.body3.i.do.body3.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i

do.body3.i.ingress_purge_rcvd.exit_crit_edge:     ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ingress_purge_rcvd.exit

ingress_purge_rcvd.exit:                          ; preds = %do.body3.i.ingress_purge_rcvd.exit_crit_edge, %do.end.i122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_ip.i) #14
  br label %sw.epilog

do.end45:                                         ; preds = %do.end30
  %cache_id1.i = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3, i32 0, i32 2
  %151 = ptrtoint ptr %cache_id1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cache_id1.i, align 4
  %eg_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 10
  %153 = ptrtoint ptr %eg_ops.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %eg_ops.i, align 4
  %get_by_cache_id.i = getelementptr inbounds %struct.eg_cache_ops, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %get_by_cache_id.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %get_by_cache_id.i, align 4
  %call.i124 = tail call ptr %156(i32 noundef %152, ptr noundef nonnull %mpc.0.i) #14
  %cmp.i125 = icmp eq ptr %call.i124, null
  br i1 %cmp.i125, label %do.end45.sw.epilog_crit_edge, label %if.end.i128

do.end45.sw.epilog_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i128:                                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #16
  %egress_lock.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 9
  tail call void @_raw_write_lock_irq(ptr noundef %egress_lock.i) #14
  %157 = ptrtoint ptr %eg_ops.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %eg_ops.i, align 4
  %remove_entry.i126 = getelementptr inbounds %struct.eg_cache_ops, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %remove_entry.i126 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %remove_entry.i126, align 4
  tail call void %160(ptr noundef nonnull %call.i124, ptr noundef nonnull %mpc.0.i) #14
  tail call void @_raw_write_unlock_irq(ptr noundef %egress_lock.i) #14
  %161 = ptrtoint ptr %eg_ops.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %eg_ops.i, align 4
  %put.i127 = getelementptr inbounds %struct.eg_cache_ops, ptr %162, i32 0, i32 5
  %163 = ptrtoint ptr %put.i127 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %put.i127, align 4
  tail call void %164(ptr noundef nonnull %call.i124) #14
  br label %sw.epilog

do.end49:                                         ; preds = %do.end30
  %MPS_ctrl.i = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 2
  %mps_ctrl_addr.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(20) %MPS_ctrl.i, ptr noundef dereferenceable(20) %mps_ctrl_addr.i, i32 20) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i129 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i129, label %if.end.i132, label %do.end5.i

do.end5.i:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i130 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %165 = ptrtoint ptr %dev.i130 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev.i130, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef %166) #18
  br label %sw.epilog

if.end.i132:                                      ; preds = %do.end49
  %egress_lock.i131 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 9
  tail call void @_raw_read_lock_irq(ptr noundef %egress_lock.i131) #14
  %eg_cache.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 11
  %167 = ptrtoint ptr %eg_cache.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %entry1.021.i = load ptr, ptr %eg_cache.i, align 4
  %cmp.not22.i = icmp eq ptr %entry1.021.i, null
  br i1 %cmp.not22.i, label %if.end.i132.while.end.i_crit_edge, label %if.end.i132.while.body.i136_crit_edge

if.end.i132.while.body.i136_crit_edge:            ; preds = %if.end.i132
  br label %while.body.i136

if.end.i132.while.end.i_crit_edge:                ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i136:                                  ; preds = %while.body.i136.while.body.i136_crit_edge, %if.end.i132.while.body.i136_crit_edge
  %entry1.023.i = phi ptr [ %entry1.0.i134, %while.body.i136.while.body.i136_crit_edge ], [ %entry1.021.i, %if.end.i132.while.body.i136_crit_edge ]
  %shortcut.i133 = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.023.i, i32 0, i32 4
  %168 = ptrtoint ptr %shortcut.i133 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %shortcut.i133, align 4
  tail call fastcc void @purge_egress_shortcut(ptr noundef %169, ptr noundef nonnull %entry1.023.i) #14
  %170 = ptrtoint ptr %entry1.023.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %entry1.0.i134 = load ptr, ptr %entry1.023.i, align 4
  %cmp.not.i135 = icmp eq ptr %entry1.0.i134, null
  br i1 %cmp.not.i135, label %while.body.i136.while.end.i_crit_edge, label %while.body.i136.while.body.i136_crit_edge

while.body.i136.while.body.i136_crit_edge:        ; preds = %while.body.i136
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i136

while.body.i136.while.end.i_crit_edge:            ; preds = %while.body.i136
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i136.while.end.i_crit_edge, %if.end.i132.while.end.i_crit_edge
  tail call void @_raw_read_unlock_irq(ptr noundef %egress_lock.i131) #14
  %in_ops.i137 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 7
  %171 = ptrtoint ptr %in_ops.i137 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %in_ops.i137, align 4
  %destroy_cache.i = getelementptr inbounds %struct.in_cache_ops, ptr %172, i32 0, i32 10
  %173 = ptrtoint ptr %destroy_cache.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %destroy_cache.i, align 4
  tail call void %174(ptr noundef %mpc.0.i) #14
  %eg_ops.i138 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 10
  %175 = ptrtoint ptr %eg_ops.i138 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %eg_ops.i138, align 4
  %destroy_cache9.i = getelementptr inbounds %struct.eg_cache_ops, ptr %176, i32 0, i32 9
  %177 = ptrtoint ptr %destroy_cache9.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %destroy_cache9.i, align 4
  tail call void %178(ptr noundef %mpc.0.i) #14
  br label %sw.epilog

do.end53:                                         ; preds = %do.end30
  %eg_ops.i139 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 10
  %179 = ptrtoint ptr %eg_ops.i139 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %eg_ops.i139, align 4
  %get_by_cache_id.i140 = getelementptr inbounds %struct.eg_cache_ops, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %get_by_cache_id.i140 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %get_by_cache_id.i140, align 4
  %cache_id.i = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3, i32 0, i32 2
  %183 = ptrtoint ptr %cache_id.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %cache_id.i, align 4
  %call.i141 = tail call ptr %182(i32 noundef %184, ptr noundef nonnull %mpc.0.i) #14
  %holding_time3.i = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3, i32 0, i32 7
  %185 = ptrtoint ptr %holding_time3.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %holding_time3.i, align 4
  %cmp.i142 = icmp ne ptr %call.i141, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %tobool.not.i143 = icmp eq i16 %186, 0
  %or.cond.i = select i1 %cmp.i142, i1 true, i1 %tobool.not.i143
  br i1 %or.cond.i, label %if.end.i147, label %if.then.i146

if.then.i146:                                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #16
  %187 = ptrtoint ptr %eg_ops.i139 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %eg_ops.i139, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %call5.i144 = tail call ptr %190(ptr noundef %4, ptr noundef nonnull %mpc.0.i) #14
  %191 = ptrtoint ptr %eg_ops.i139 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %eg_ops.i139, align 4
  %put.i145 = getelementptr inbounds %struct.eg_cache_ops, ptr %192, i32 0, i32 5
  %193 = ptrtoint ptr %put.i145 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %put.i145, align 4
  tail call void %194(ptr noundef %call5.i144) #14
  br label %sw.epilog

if.end.i147:                                      ; preds = %do.end53
  br i1 %tobool.not.i143, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #16
  %195 = ptrtoint ptr %eg_ops.i139 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %eg_ops.i139, align 4
  %update.i = getelementptr inbounds %struct.eg_cache_ops, ptr %196, i32 0, i32 7
  %197 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %update.i, align 4
  tail call void %198(ptr noundef %call.i141, i16 noundef zeroext %186) #14
  br label %sw.epilog

if.end10.i:                                       ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #16
  %egress_lock.i148 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 9
  tail call void @_raw_write_lock_irq(ptr noundef %egress_lock.i148) #14
  %199 = ptrtoint ptr %eg_ops.i139 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %eg_ops.i139, align 4
  %remove_entry.i149 = getelementptr inbounds %struct.eg_cache_ops, ptr %200, i32 0, i32 6
  %201 = ptrtoint ptr %remove_entry.i149 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %remove_entry.i149, align 4
  tail call void %202(ptr noundef %call.i141, ptr noundef nonnull %mpc.0.i) #14
  tail call void @_raw_write_unlock_irq(ptr noundef %egress_lock.i148) #14
  %203 = ptrtoint ptr %eg_ops.i139 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %eg_ops.i139, align 4
  %put14.i = getelementptr inbounds %struct.eg_cache_ops, ptr %204, i32 0, i32 5
  %205 = ptrtoint ptr %put14.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %put14.i, align 4
  tail call void %206(ptr noundef %call.i141) #14
  br label %sw.epilog

do.end57:                                         ; preds = %do.end30
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %tlv.i) #14
  %207 = getelementptr inbounds [27 x i8], ptr %tlv.i, i32 0, i32 1
  %208 = getelementptr inbounds [27 x i8], ptr %tlv.i, i32 0, i32 2
  %209 = getelementptr inbounds [27 x i8], ptr %tlv.i, i32 0, i32 3
  %210 = getelementptr inbounds [27 x i8], ptr %tlv.i, i32 0, i32 4
  %211 = getelementptr inbounds [27 x i8], ptr %tlv.i, i32 0, i32 5
  %212 = getelementptr inbounds [27 x i8], ptr %tlv.i, i32 0, i32 6
  %213 = getelementptr inbounds [27 x i8], ptr %tlv.i, i32 0, i32 7
  %214 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %tlv.i, align 1
  %215 = ptrtoint ptr %207 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -96, ptr %207, align 1
  %216 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 62, ptr %208, align 1
  %217 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 42, ptr %209, align 1
  %218 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 22, ptr %210, align 1
  %219 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 2, ptr %211, align 1
  %220 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %212, align 1
  %MPS_ctrl.i150 = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 2
  %221 = call ptr @memcpy(ptr %213, ptr %MPS_ctrl.i150, i32 20)
  %our_ctrl_addr.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 5
  %222 = call ptr @memcpy(ptr %our_ctrl_addr.i, ptr %MPS_ctrl.i150, i32 20)
  %dev.i151 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %223 = ptrtoint ptr %dev.i151 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev.i151, align 4
  %tobool.not.i152 = icmp eq ptr %224, null
  br i1 %tobool.not.i152, label %do.end57.set_mpc_ctrl_addr_rcvd.exit_crit_edge, label %if.then.i153

do.end57.set_mpc_ctrl_addr_rcvd.exit_crit_edge:   ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_mpc_ctrl_addr_rcvd.exit

if.then.i153:                                     ; preds = %do.end57
  %lane2_ops.i = getelementptr i8, ptr %224, i32 2592
  %225 = ptrtoint ptr %lane2_ops.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %lane2_ops.i, align 4
  %associate_req.i = getelementptr inbounds %struct.lane2_ops, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %associate_req.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %associate_req.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %224, i32 0, i32 86
  %229 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev_addr.i, align 64
  %call21.i = call i32 %228(ptr noundef nonnull %224, ptr noundef %230, ptr noundef nonnull %tlv.i, i32 noundef 27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.i, label %do.end26.i, label %if.then.i153.if.end.i155_crit_edge

if.then.i153.if.end.i155_crit_edge:               ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i155

do.end26.i:                                       ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #16
  %231 = ptrtoint ptr %dev.i151 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev.i151, align 4
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, ptr noundef %232) #18
  br label %if.end.i155

if.end.i155:                                      ; preds = %do.end26.i, %if.then.i153.if.end.i155_crit_edge
  %233 = ptrtoint ptr %lane2_ops.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %lane2_ops.i, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %234, align 4
  %237 = ptrtoint ptr %dev.i151 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev.i151, align 4
  %call32.i = call i32 %236(ptr noundef %238, ptr noundef null, i32 noundef 1, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i154 = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i154, label %do.end37.i, label %if.end.i155.set_mpc_ctrl_addr_rcvd.exit_crit_edge

if.end.i155.set_mpc_ctrl_addr_rcvd.exit_crit_edge: ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_mpc_ctrl_addr_rcvd.exit

do.end37.i:                                       ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #16
  %239 = ptrtoint ptr %dev.i151 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev.i151, align 4
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, ptr noundef %240) #18
  br label %set_mpc_ctrl_addr_rcvd.exit

set_mpc_ctrl_addr_rcvd.exit:                      ; preds = %do.end37.i, %if.end.i155.set_mpc_ctrl_addr_rcvd.exit_crit_edge, %do.end57.set_mpc_ctrl_addr_rcvd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %tlv.i) #14
  br label %sw.epilog

do.end61:                                         ; preds = %do.end30
  %number_of_mps_macs.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 13
  %241 = ptrtoint ptr %number_of_mps_macs.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %number_of_mps_macs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool.not.i156 = icmp eq i32 %242, 0
  br i1 %tobool.not.i156, label %do.end61.if.end.i161_crit_edge, label %if.then.i157

do.end61.if.end.i161_crit_edge:                   ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i161

if.then.i157:                                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #16
  %mps_macs.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 12
  %243 = ptrtoint ptr %mps_macs.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mps_macs.i, align 4
  tail call void @kfree(ptr noundef %244) #14
  br label %if.end.i161

if.end.i161:                                      ; preds = %if.then.i157, %do.end61.if.end.i161_crit_edge
  %245 = ptrtoint ptr %number_of_mps_macs.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %number_of_mps_macs.i, align 4
  %MPS_ctrl.i158 = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 2
  %call.i159 = tail call ptr @kmemdup(ptr noundef %MPS_ctrl.i158, i32 noundef 6, i32 noundef 3264) #14
  %mps_macs2.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 12
  %246 = ptrtoint ptr %mps_macs2.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call.i159, ptr %mps_macs2.i, align 4
  %cmp.i160 = icmp eq ptr %call.i159, null
  br i1 %cmp.i160, label %do.end.i163, label %if.end6.i

do.end.i163:                                      ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #16
  %call5.i162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.83) #18
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #16
  %247 = ptrtoint ptr %number_of_mps_macs.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 1, ptr %number_of_mps_macs.i, align 4
  br label %sw.epilog

do.end65:                                         ; preds = %do.end30
  %248 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 206, ptr %4, align 4
  %egress_lock.i164 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 9
  tail call void @_raw_read_lock_irq(ptr noundef %egress_lock.i164) #14
  %eg_cache.i165 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 11
  %249 = ptrtoint ptr %eg_cache.i165 to i32
  call void @__asan_load4_noabort(i32 %249)
  %entry1.015.i = load ptr, ptr %eg_cache.i165, align 4
  %cmp.not16.i = icmp eq ptr %entry1.015.i, null
  br i1 %cmp.not16.i, label %do.end65.clean_up.exit_crit_edge, label %while.body.lr.ph.i

do.end65.clean_up.exit_crit_edge:                 ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_up.exit

while.body.lr.ph.i:                               ; preds = %do.end65
  %content.i166 = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3
  br label %while.body.i171

while.body.i171:                                  ; preds = %while.body.i171.while.body.i171_crit_edge, %while.body.lr.ph.i
  %entry1.017.i = phi ptr [ %entry1.015.i, %while.body.lr.ph.i ], [ %entry1.0.i169, %while.body.i171.while.body.i171_crit_edge ]
  %ctrl_info.i167 = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.017.i, i32 0, i32 8
  %250 = call ptr @memcpy(ptr %content.i166, ptr %ctrl_info.i167, i32 300)
  %call.i168 = tail call i32 @msg_to_mpoad(ptr noundef %4, ptr noundef %mpc.0.i) #14
  %251 = ptrtoint ptr %entry1.017.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %entry1.0.i169 = load ptr, ptr %entry1.017.i, align 4
  %cmp.not.i170 = icmp eq ptr %entry1.0.i169, null
  br i1 %cmp.not.i170, label %while.body.i171.clean_up.exit_crit_edge, label %while.body.i171.while.body.i171_crit_edge

while.body.i171.while.body.i171_crit_edge:        ; preds = %while.body.i171
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i171

while.body.i171.clean_up.exit_crit_edge:          ; preds = %while.body.i171
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_up.exit

clean_up.exit:                                    ; preds = %while.body.i171.clean_up.exit_crit_edge, %do.end65.clean_up.exit_crit_edge
  tail call void @_raw_read_unlock_irq(ptr noundef %egress_lock.i164) #14
  %252 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 207, ptr %4, align 4
  %call4.i = tail call i32 @msg_to_mpoad(ptr noundef %4, ptr noundef %mpc.0.i) #14
  br label %sw.epilog

do.end69:                                         ; preds = %do.end30
  %253 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 206, ptr %4, align 4
  %egress_lock.i173 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 9
  tail call void @_raw_read_lock_irq(ptr noundef %egress_lock.i173) #14
  %eg_cache.i174 = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 11
  %254 = ptrtoint ptr %eg_cache.i174 to i32
  call void @__asan_load4_noabort(i32 %254)
  %entry1.015.i175 = load ptr, ptr %eg_cache.i174, align 4
  %cmp.not16.i176 = icmp eq ptr %entry1.015.i175, null
  br i1 %cmp.not16.i176, label %do.end69.clean_up.exit187_crit_edge, label %while.body.lr.ph.i178

do.end69.clean_up.exit187_crit_edge:              ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_up.exit187

while.body.lr.ph.i178:                            ; preds = %do.end69
  %content.i177 = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3
  br label %while.body.i184

while.body.i184:                                  ; preds = %while.body.i184.while.body.i184_crit_edge, %while.body.lr.ph.i178
  %entry1.017.i179 = phi ptr [ %entry1.015.i175, %while.body.lr.ph.i178 ], [ %entry1.0.i182, %while.body.i184.while.body.i184_crit_edge ]
  %ctrl_info.i180 = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.017.i179, i32 0, i32 8
  %255 = call ptr @memcpy(ptr %content.i177, ptr %ctrl_info.i180, i32 300)
  %call.i181 = tail call i32 @msg_to_mpoad(ptr noundef %4, ptr noundef %mpc.0.i) #14
  %256 = ptrtoint ptr %entry1.017.i179 to i32
  call void @__asan_load4_noabort(i32 %256)
  %entry1.0.i182 = load ptr, ptr %entry1.017.i179, align 4
  %cmp.not.i183 = icmp eq ptr %entry1.0.i182, null
  br i1 %cmp.not.i183, label %while.body.i184.clean_up.exit187_crit_edge, label %while.body.i184.while.body.i184_crit_edge

while.body.i184.while.body.i184_crit_edge:        ; preds = %while.body.i184
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i184

while.body.i184.clean_up.exit187_crit_edge:       ; preds = %while.body.i184
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_up.exit187

clean_up.exit187:                                 ; preds = %while.body.i184.clean_up.exit187_crit_edge, %do.end69.clean_up.exit187_crit_edge
  tail call void @_raw_read_unlock_irq(ptr noundef %egress_lock.i173) #14
  %257 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 301, ptr %4, align 4
  %call4.i185 = tail call i32 @msg_to_mpoad(ptr noundef %4, ptr noundef %mpc.0.i) #14
  br label %sw.epilog

do.end73:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  %parameters = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 14
  %content = getelementptr inbounds %struct.k_message, ptr %4, i32 0, i32 3
  %258 = call ptr @memcpy(ptr %parameters, ptr %content, i32 18)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end73, %clean_up.exit187, %clean_up.exit, %if.end6.i, %do.end.i163, %set_mpc_ctrl_addr_rcvd.exit, %if.end10.i, %if.then8.i, %if.then.i146, %while.end.i, %do.end5.i, %if.end.i128, %do.end45.sw.epilog_crit_edge, %ingress_purge_rcvd.exit, %do.end.i, %if.then11.i, %if.then.i, %check_qos_and_open_shortcut.exit.i, %do.end48.i, %if.then37.i, %do.end17.i, %do.end7.i, %do.end30.sw.epilog_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @purge_egress_shortcut(ptr noundef %vcc, ptr noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vcc, null
  br i1 %cmp, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 412, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %cmp6 = icmp eq ptr %call.i, null
  br i1 %cmp6, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74) #18
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 412) #14
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 412)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 208, ptr %3, align 4
  %cmp16.not = icmp eq ptr %entry1, null
  br i1 %cmp16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %content = getelementptr inbounds %struct.k_message, ptr %3, i32 0, i32 3
  %ctrl_info = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1, i32 0, i32 8
  %5 = call ptr @memcpy(ptr %content, ptr %ctrl_info, i32 300)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %6 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %7, ptr elementtype(i32) %sk_backlog.i) #14, !srcloc !265
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %call.i) #14
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 77
  %9 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_data_ready, align 8
  tail call void %10(ptr noundef nonnull %vcc) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end10, %do.end4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpc_push(ptr noundef %vcc, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %proto_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 15
  %0 = ptrtoint ptr %proto_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto_data, align 4
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %entry.while.cond.i.i_crit_edge, label %if.end

entry.while.cond.i.i_crit_edge:                   ; preds = %entry
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry.while.cond.i.i_crit_edge
  %mpc.0.in.i.i = phi ptr [ %mpc.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ @mpcs, %entry.while.cond.i.i_crit_edge ]
  %2 = ptrtoint ptr %mpc.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mpc.0.i.i = load ptr, ptr %mpc.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %mpc.0.i.i, null
  br i1 %cmp.not.i.i, label %do.end.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dev1.i.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %4, %1
  br i1 %cmp2.i.i, label %do.end4.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

do.end.i:                                         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, ptr noundef %1) #18
  br label %cleanup

do.end4.i:                                        ; preds = %while.body.i.i
  %in_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in_ops.i, align 4
  %get_by_vcc.i = getelementptr inbounds %struct.in_cache_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %get_by_vcc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_by_vcc.i, align 4
  %call5.i = tail call ptr %8(ptr noundef %vcc, ptr noundef nonnull %mpc.0.i.i) #14
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %do.end4.i.if.end11.i_crit_edge, label %do.end9.i

do.end4.i.if.end11.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

do.end9.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %shortcut.i = getelementptr inbounds %struct.in_cache_entry, ptr %call5.i, i32 0, i32 10
  %9 = ptrtoint ptr %shortcut.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %shortcut.i, align 4
  %10 = ptrtoint ptr %in_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_ops.i, align 4
  %put.i = getelementptr inbounds %struct.in_cache_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %put.i, align 4
  tail call void %13(ptr noundef nonnull %call5.i) #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end9.i, %do.end4.i.if.end11.i_crit_edge
  %eg_ops.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %eg_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eg_ops.i, align 4
  %get_by_vcc12.i = getelementptr inbounds %struct.eg_cache_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %get_by_vcc12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_by_vcc12.i, align 4
  %call13.i = tail call ptr %17(ptr noundef %vcc, ptr noundef nonnull %mpc.0.i.i) #14
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end11.i.cleanup_crit_edge, label %do.end18.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %shortcut19.i = getelementptr inbounds %struct.eg_cache_entry, ptr %call13.i, i32 0, i32 4
  %18 = ptrtoint ptr %shortcut19.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %shortcut19.i, align 4
  %19 = ptrtoint ptr %eg_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eg_ops.i, align 4
  %put21.i = getelementptr inbounds %struct.eg_cache_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %put21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %put21.i, align 4
  tail call void %22(ptr noundef nonnull %call13.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %1, ptr %23, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %26, ptr noundef nonnull dereferenceable(8) @llc_snap_mpoa_ctrl, i32 8) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp4 = icmp eq i32 %bcmp, 0
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %skb) #14
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 77
  %27 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_data_ready, align 8
  tail call void %28(ptr noundef %vcc) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %29 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %30, ptr elementtype(i32) %sk_backlog.i) #14, !srcloc !279
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end10
  %mpc.0.in.i = phi ptr [ @mpcs, %if.end10 ], [ %mpc.0.i, %while.body.i.while.cond.i_crit_edge ]
  %32 = ptrtoint ptr %mpc.0.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %mpc.0.i = load ptr, ptr %mpc.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mpc.0.i, null
  br i1 %cmp.not.i, label %do.end16, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dev1.i = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %34, %1
  br i1 %cmp2.i, label %if.end19, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

do.end16:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, ptr noundef %1) #18
  br label %cleanup

if.end19:                                         ; preds = %while.body.i
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %bcmp148 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %36, ptr noundef nonnull dereferenceable(8) @llc_snap_mpoa_data_tagged, i32 8) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp148)
  %cmp22 = icmp eq i32 %bcmp148, 0
  br i1 %cmp22, label %if.end46, label %if.else

if.else:                                          ; preds = %if.end19
  %bcmp149 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %36, ptr noundef nonnull dereferenceable(8) @llc_snap_mpoa_data, i32 8) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp149)
  %cmp29 = icmp eq i32 %bcmp149, 0
  br i1 %cmp29, label %do.end33, label %do.end41

do.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99, ptr noundef %1) #18
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #14
  br label %cleanup

do.end41:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.99, ptr noundef %1) #18
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #14
  br label %cleanup

if.end46:                                         ; preds = %if.end19
  %add.ptr = getelementptr i8, ptr %36, i32 8
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr, align 4
  %eg_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc.0.i, i32 0, i32 10
  %39 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eg_ops, align 4
  %get_by_tag = getelementptr inbounds %struct.eg_cache_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %get_by_tag to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_by_tag, align 4
  %call48 = tail call ptr %42(i32 noundef %38, ptr noundef nonnull %mpc.0.i) #14
  %cmp49 = icmp eq ptr %call48, null
  br i1 %cmp49, label %do.end53, label %if.end58

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.99, ptr noundef %1, i32 noundef %38) #18
  tail call fastcc void @purge_egress_shortcut(ptr noundef %vcc, ptr noundef null)
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #14
  br label %cleanup

if.end58:                                         ; preds = %if.end46
  %shortcut = getelementptr inbounds %struct.eg_cache_entry, ptr %call48, i32 0, i32 4
  %43 = ptrtoint ptr %shortcut to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %shortcut, align 4
  %cmp59 = icmp eq ptr %44, null
  br i1 %cmp59, label %if.then60, label %if.end58.if.end69_crit_edge

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %shortcut to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %vcc, ptr %shortcut, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.99, ptr noundef %1) #18
  br label %if.end69

if.end69:                                         ; preds = %if.then60, %if.end58.if.end69_crit_edge
  %call70 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 12) #14
  %DH_length = getelementptr inbounds %struct.eg_cache_entry, ptr %call48, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %DH_length to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %DH_length, align 4
  %conv = zext i8 %47 to i32
  %call71 = tail call ptr @skb_realloc_headroom(ptr noundef nonnull %skb, i32 noundef %conv) #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #14
  %cmp72 = icmp eq ptr %call71, null
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %eg_ops, align 4
  %put = getelementptr inbounds %struct.eg_cache_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %put, align 4
  tail call void %51(ptr noundef nonnull %call48) #14
  br label %cleanup

if.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %ctrl_info = getelementptr inbounds %struct.eg_cache_entry, ptr %call48, i32 0, i32 8
  %52 = ptrtoint ptr %DH_length to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %DH_length, align 4
  %conv79 = zext i8 %53 to i32
  %call80 = tail call ptr @skb_push(ptr noundef nonnull %call71, i32 noundef %conv79) #14
  %54 = ptrtoint ptr %DH_length to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %DH_length, align 4
  %conv85 = zext i8 %55 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call71, i32 0, i32 19
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %58 = call ptr @memcpy(ptr %57, ptr %ctrl_info, i32 %conv85)
  %call86 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call71, ptr noundef %1) #14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call71, i32 0, i32 15, i32 0, i32 18
  %59 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %call86, ptr %protocol, align 8
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call71, i32 0, i32 18
  %62 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call71, i32 0, i32 15, i32 0, i32 20
  %64 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %65 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %saddr, align 4
  %latest_ip_addr = getelementptr inbounds %struct.eg_cache_entry, ptr %call48, i32 0, i32 7
  %67 = ptrtoint ptr %latest_ip_addr to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %latest_ip_addr, align 8
  %packets_rcvd = getelementptr inbounds %struct.eg_cache_entry, ptr %call48, i32 0, i32 5
  %68 = ptrtoint ptr %packets_rcvd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %packets_rcvd, align 8
  %inc = add i32 %69, 1
  store i32 %inc, ptr %packets_rcvd, align 8
  %70 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %eg_ops, align 4
  %put89 = getelementptr inbounds %struct.eg_cache_ops, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %put89 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %put89, align 4
  tail call void %73(ptr noundef nonnull %call48) #14
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call71, i32 0, i32 3
  %74 = call ptr @memset(ptr %cb, i32 0, i32 12)
  %call91 = tail call i32 @netif_rx(ptr noundef nonnull %call71) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then74, %do.end53, %do.end41, %do.end33, %do.end16, %if.then5, %do.end18.i, %if.end11.i.cleanup_crit_edge, %do.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_atm_ioctl(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpc_proc_init() local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !242, !244, !246, !248, !249, !250, !251, !253, !254}
!llvm.named.register.sp = !{!255}
!llvm.module.flags = !{!256, !257, !258, !259, !260, !261, !262, !263}
!llvm.ident = !{!264}

!0 = !{ptr @mpcs, !1, !"mpcs", i1 false, i1 false}
!1 = !{!"../net/atm/mpc.c", i32 123, i32 21}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/atm/mpc.c", i32 189, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @atm_mpoa_add_qos._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @atm_mpoa_add_qos._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/atm/mpc.c", i32 250, i32 16}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/atm/mpc.c", i32 251, i32 16}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/atm/mpc.c", i32 254, i32 17}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/atm/mpc.c", i32 981, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @msg_to_mpoad._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @msg_to_mpoad._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_mpoa__459_1532_atm_mpoa_init6, !20, !"__initcall__kmod_mpoa__459_1532_atm_mpoa_init6", i1 false, i1 false}
!20 = !{!"../net/atm/mpc.c", i32 1532, i32 1}
!21 = !{ptr @__exitcall_atm_mpoa_cleanup, !22, !"__exitcall_atm_mpoa_cleanup", i1 false, i1 false}
!22 = !{!"../net/atm/mpc.c", i32 1533, i32 1}
!23 = !{ptr @__UNIQUE_ID_file460, !24, !"__UNIQUE_ID_file460", i1 false, i1 false}
!24 = !{!"../net/atm/mpc.c", i32 1535, i32 1}
!25 = !{ptr @__UNIQUE_ID_license461, !24, !"__UNIQUE_ID_license461", i1 false, i1 false}
!26 = !{ptr @qos_head, !27, !"qos_head", i1 false, i1 false}
!27 = !{!"../net/atm/mpc.c", i32 124, i32 29}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/atm/mpc.c", i32 125, i32 8}
!30 = !{ptr @mpc_timer, !29, !"mpc_timer", i1 false, i1 false}
!31 = !{ptr @mpc_cache_check.previous_resolving_check_time, !32, !"previous_resolving_check_time", i1 false, i1 false}
!32 = !{!"../net/atm/mpc.c", i32 1423, i32 23}
!33 = !{ptr @mpc_cache_check.previous_refresh_time, !34, !"previous_refresh_time", i1 false, i1 false}
!34 = !{!"../net/atm/mpc.c", i32 1424, i32 23}
!35 = !{ptr @checking_time, !36, !"checking_time", i1 false, i1 false}
!36 = !{!"../net/atm/mpc.c", i32 1411, i32 22}
!37 = !{ptr @mpoa_notifier, !38, !"mpoa_notifier", i1 false, i1 false}
!38 = !{!"../net/atm/mpc.c", i32 117, i32 30}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/atm/mpc.c", i32 1009, i32 25}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/atm/mpc.c", i32 1023, i32 5}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mpoa_event_listener._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @mpoa_event_listener._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/atm/mpc.c", i32 388, i32 3}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @lane2_assoc_ind._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @lane2_assoc_ind._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/atm/mpc.c", i32 399, i32 4}
!53 = !{ptr @lane2_assoc_ind._entry.14, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @lane2_assoc_ind._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/atm/mpc.c", i32 404, i32 4}
!57 = !{ptr @lane2_assoc_ind._entry.17, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @lane2_assoc_ind._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/atm/mpc.c", i32 419, i32 4}
!61 = !{ptr @lane2_assoc_ind._entry.20, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @lane2_assoc_ind._entry_ptr.22, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @lane2_assoc_ind._entry.23, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../net/atm/mpc.c", i32 425, i32 4}
!65 = !{ptr @lane2_assoc_ind._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/atm/mpc.c", i32 437, i32 4}
!68 = !{ptr @lane2_assoc_ind._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @lane2_assoc_ind._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/atm/mpc.c", i32 455, i32 3}
!72 = !{ptr @lane2_assoc_ind._entry.28, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @lane2_assoc_ind._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/atm/mpc.c", i32 478, i32 4}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @copy_macs._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @copy_macs._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @alloc_mpc.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../net/atm/mpc.c", i32 288, i32 2}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @alloc_mpc.__key.34, !83, !"__key", i1 false, i1 false}
!83 = !{!"../net/atm/mpc.c", i32 289, i32 2}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/atm/mpc.c", i32 317, i32 3}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @start_mpc._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @start_mpc._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/atm/mpc.c", i32 579, i32 3}
!92 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mpc_send_packet._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @mpc_send_packet._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @send_via_shortcut.tagged_llc_snap_hdr, !96, !"tagged_llc_snap_hdr", i1 false, i1 false}
!96 = !{!"../net/atm/mpc.c", i32 502, i32 4}
!97 = !{ptr @llc_snap_mpoa_data, !98, !"llc_snap_mpoa_data", i1 false, i1 false}
!98 = !{!"../net/atm/mpc.c", i32 106, i32 28}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/netdevice.h", i32 4684, i32 2}
!101 = !{ptr @atm_ioctl_ops, !102, !"atm_ioctl_ops", i1 false, i1 false}
!102 = !{!"../net/atm/mpc.c", i32 1471, i32 25}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/atm/mpc.c", i32 823, i32 3}
!105 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @atm_mpoa_mpoad_attach._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @atm_mpoa_mpoad_attach._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/atm/mpc.c", i32 275, i32 16}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/atm/mpc.c", i32 789, i32 10}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/atm/mpc.c", i32 791, i32 10}
!114 = !{ptr @mpc_dev, !115, !"mpc_dev", i1 false, i1 false}
!115 = !{!"../net/atm/mpc.c", i32 787, i32 23}
!116 = !{ptr @mpc_ops, !117, !"mpc_ops", i1 false, i1 false}
!117 = !{!"../net/atm/mpc.c", i32 782, i32 32}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/atm/mpc.c", i32 876, i32 3}
!120 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @mpoad_close._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @mpoad_close._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/atm/mpc.c", i32 880, i32 3}
!125 = !{ptr @mpoad_close._entry.48, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @mpoad_close._entry_ptr.50, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/atm/mpc.c", i32 900, i32 2}
!129 = !{ptr @mpoad_close._entry.51, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @mpoad_close._entry_ptr.53, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/atm/mpc.c", i32 916, i32 3}
!134 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @msg_from_mpoad._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @msg_from_mpoad._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/atm/mpc.c", i32 1165, i32 3}
!139 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @MPOA_res_reply_rcvd._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @MPOA_res_reply_rcvd._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/atm/mpc.c", i32 1172, i32 3}
!144 = !{ptr @MPOA_res_reply_rcvd._entry.59, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @MPOA_res_reply_rcvd._entry_ptr.61, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/atm/mpc.c", i32 1192, i32 3}
!148 = !{ptr @MPOA_res_reply_rcvd._entry.62, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @MPOA_res_reply_rcvd._entry_ptr.64, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/atm/mpc.c", i32 1148, i32 3}
!152 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @check_qos_and_open_shortcut._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @check_qos_and_open_shortcut._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/atm/mpc.c", i32 1107, i32 2}
!157 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @MPOA_trigger_rcvd._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @MPOA_trigger_rcvd._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../net/atm/mpc.c", i32 1213, i32 3}
!162 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ingress_purge_rcvd._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @ingress_purge_rcvd._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/atm/mpc.c", i32 1291, i32 3}
!167 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @mps_death._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @mps_death._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/atm/mpc.c", i32 1255, i32 3}
!172 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @purge_egress_shortcut._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @purge_egress_shortcut._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/atm/mpc.c", i32 1261, i32 3}
!177 = !{ptr @purge_egress_shortcut._entry.75, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @purge_egress_shortcut._entry_ptr.77, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/atm/mpc.c", i32 1362, i32 4}
!181 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @set_mpc_ctrl_addr_rcvd._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @set_mpc_ctrl_addr_rcvd._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/atm/mpc.c", i32 1366, i32 4}
!186 = !{ptr @set_mpc_ctrl_addr_rcvd._entry.80, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @set_mpc_ctrl_addr_rcvd._entry_ptr.82, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/atm/mpc.c", i32 1380, i32 3}
!190 = !{ptr @set_mps_mac_addr_rcvd._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @set_mps_mac_addr_rcvd._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/atm/mpc.c", i32 615, i32 3}
!194 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @atm_mpoa_vcc_attach._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @atm_mpoa_vcc_attach._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../net/atm/mpc.c", i32 631, i32 4}
!199 = !{ptr @atm_mpoa_vcc_attach._entry.86, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @atm_mpoa_vcc_attach._entry_ptr.88, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../net/atm/mpc.c", i32 637, i32 3}
!203 = !{ptr @atm_mpoa_vcc_attach._entry.89, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @atm_mpoa_vcc_attach._entry_ptr.91, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../net/atm/mpc.c", i32 642, i32 3}
!207 = !{ptr @atm_mpoa_vcc_attach._entry.92, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @atm_mpoa_vcc_attach._entry_ptr.94, !206, !"_entry_ptr", i1 false, i1 false}
!209 = distinct !{null, !210, !"__already_done", i1 false, i1 false}
!210 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!211 = distinct !{null, !210, !"<string literal>", i1 false, i1 false}
!212 = distinct !{null, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!214 = !{ptr @.str.97, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!216 = !{ptr @.str.98, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/atm/mpc.c", i32 718, i32 3}
!218 = !{ptr @.str.99, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @mpc_push._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @mpc_push._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../net/atm/mpc.c", i32 728, i32 3}
!223 = !{ptr @mpc_push._entry.100, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @mpc_push._entry_ptr.102, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.104, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/atm/mpc.c", i32 733, i32 3}
!227 = !{ptr @mpc_push._entry.103, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @mpc_push._entry_ptr.105, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../net/atm/mpc.c", i32 743, i32 3}
!231 = !{ptr @mpc_push._entry.106, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @mpc_push._entry_ptr.108, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../net/atm/mpc.c", i32 756, i32 3}
!235 = !{ptr @mpc_push._entry.109, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @mpc_push._entry_ptr.111, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../net/atm/mpc.c", i32 662, i32 3}
!239 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @mpc_vcc_close._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @mpc_vcc_close._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @llc_snap_mpoa_ctrl, !243, !"llc_snap_mpoa_ctrl", i1 false, i1 false}
!243 = !{!"../net/atm/mpc.c", i32 101, i32 28}
!244 = !{ptr @llc_snap_mpoa_data_tagged, !245, !"llc_snap_mpoa_data_tagged", i1 false, i1 false}
!245 = !{!"../net/atm/mpc.c", i32 111, i32 28}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../net/atm/mpc.c", i32 1481, i32 3}
!248 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @atm_mpoa_init._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @atm_mpoa_init._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../net/atm/mpc.c", i32 1483, i32 2}
!253 = !{ptr @atm_mpoa_init._entry.116, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @atm_mpoa_init._entry_ptr.118, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{!"sp"}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 1, !"min_enum_size", i32 4}
!258 = !{i32 8, !"branch-target-enforcement", i32 0}
!259 = !{i32 8, !"sign-return-address", i32 0}
!260 = !{i32 8, !"sign-return-address-all", i32 0}
!261 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!262 = !{i32 7, !"uwtable", i32 1}
!263 = !{i32 7, !"frame-pointer", i32 2}
!264 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!265 = !{i64 2148246829, i64 2148246855, i64 2148246884, i64 2148246918, i64 2148246949, i64 2148246972}
!266 = !{i64 639310, i64 639371}
!267 = !{i64 642042}
!268 = !{!"branch_weights", i32 1, i32 2000}
!269 = !{i64 642327}
!270 = !{i64 6511413, i64 6511452, i64 6511478, i64 6511502, i64 6511527, i64 6511553, i64 6511578, i64 6511604, i64 6511631, i64 6511657, i64 6511696, i64 6511740, i64 6511771, i64 6511796}
!271 = !{i64 6511030}
!272 = !{i64 2148248359, i64 2148248391, i64 2148248420, i64 2148248454, i64 2148248485, i64 2148248508}
!273 = !{!"branch_weights", i32 2000, i32 1}
!274 = !{!"auto-init"}
!275 = !{i64 2152620680, i64 2152620705}
!276 = !{i64 5116235}
!277 = !{i64 5116432}
!278 = !{i64 2152601665}
!279 = !{i64 2148249294, i64 2148249320, i64 2148249349, i64 2148249383, i64 2148249414, i64 2148249437}
!280 = !{i64 2148336360}
!281 = !{i64 2148250824, i64 2148250856, i64 2148250885, i64 2148250919, i64 2148250950, i64 2148250973}
!282 = !{i64 2149904949}
