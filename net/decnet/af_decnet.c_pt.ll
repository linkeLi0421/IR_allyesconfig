; ModuleID = '/llk/IR_all_yes/net/decnet/af_decnet.c_pt.bc'
source_filename = "../net/decnet/af_decnet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.sockaddr_dn = type { i16, i8, i8, i16, [16 x i8], %struct.dn_naddr }
%struct.dn_naddr = type { i16, [2 x i8] }
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
%struct.dn_scp = type { i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, %struct.optdata_dn, %struct.optdata_dn, %struct.optdata_dn, %struct.optdata_dn, %struct.accessdata_dn, %struct.sockaddr_dn, %struct.sockaddr_dn, i32, i32, i32, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, ptr, i32, ptr }
%struct.optdata_dn = type { i16, i16, [16 x i8] }
%struct.accessdata_dn = type { i8, [40 x i8], i8, [40 x i8], i8, [40 x i8] }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dn_dev = type { ptr, ptr, %struct.dn_dev_parms, i8, %struct.timer_list, i32, ptr, [6 x i8], ptr, ptr, i32 }
%struct.dn_dev_parms = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dn_ifaddr = type { ptr, ptr, i16, i16, i32, i8, [16 x i8], %struct.callback_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.125, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.125 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%union.anon.190 = type { i32, [120 x i8] }
%struct.linkinfo_dn = type { i16, i8 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.153, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.151 }
%union.anon.4 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.153 = type { ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.flowidn = type { %struct.flowi_common, i16, i16, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.40 = type { i16, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@dn_hash_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@dn_wild_sk = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@dn_sk_hash = internal global { [256 x %struct.hlist_head], [256 x i8] } zeroinitializer, align 32
@decnet_di_count = external dso_local local_unnamed_addr global i32, align 4
@decnet_dr_count = external dso_local local_unnamed_addr global i32, align 4
@decnet_dn_count = external dso_local local_unnamed_addr global i32, align 4
@decnet_time_wait = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%hd.%hd\00", [24 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description625 = internal constant [53 x i8] c"decnet.description=The Linux DECnet Network Protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_author626 = internal constant [40 x i8] c"decnet.author=Linux DECnet Project Team\00", section ".modinfo", align 1
@__UNIQUE_ID_file627 = internal constant [30 x i8] c"decnet.file=net/decnet/decnet\00", section ".modinfo", align 1
@__UNIQUE_ID_license628 = internal constant [19 x i8] c"decnet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias629 = internal constant [23 x i8] c"decnet.alias=net-pf-12\00", section ".modinfo", align 1
@__initcall__kmod_decnet__630_2370_decnet_init6 = internal global ptr @decnet_init, section ".initcall6.init", align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dn_hash_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@decnet_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.3, ptr @.str.4, i32 2347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decnet_init\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/decnet/af_decnet.c\00", [41 x i8] zeroinitializer }, align 32
@decnet_init._entry_ptr = internal global ptr @decnet_init._entry, section ".printk_index", align 4
@banner = internal constant [77 x i8] c"\016NET4: DECnet for Linux: V.2.5.68s (C) 1995-2003 Linux DECnet Project Team\0A\00", section ".init.rodata", align 1
@dn_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @dn_enter_memory_pressure, ptr null, ptr @decnet_memory_allocated, ptr null, ptr @dn_memory_pressure, ptr @sysctl_decnet_mem, ptr @sysctl_decnet_wmem, ptr @sysctl_decnet_rmem, i32 0, i32 0, i32 75, i8 0, ptr null, i32 1480, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.154 zeroinitializer, ptr null, [32 x i8] c"NSP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@dn_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 12, ptr @dn_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@dn_dix_packet_type = internal global %struct.packet_type { i16 24579, i8 0, ptr null, ptr null, ptr @dn_route_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@dn_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dn_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"decnet\00", [25 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@dn_socket_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dn_socket_seq_start, ptr @dn_socket_seq_stop, ptr @dn_socket_seq_next, ptr @dn_socket_seq_show }, [16 x i8] zeroinitializer }, align 32
@decnet_memory_allocated = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@dn_memory_pressure = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sysctl_decnet_mem = external dso_local global [3 x i32], align 4
@sysctl_decnet_wmem = external dso_local global [3 x i32], align 4
@sysctl_decnet_rmem = external dso_local global [3 x i32], align 4
@dn_proto_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 12, ptr null, ptr @dn_release, ptr @dn_bind, ptr @dn_connect, ptr @sock_no_socketpair, ptr @dn_accept, ptr @dn_getname, ptr @dn_poll, ptr @dn_ioctl, ptr null, ptr @dn_listen, ptr @dn_shutdown, ptr @dn_setsockopt, ptr @dn_getsockopt, ptr null, ptr @dn_sendmsg, ptr @dn_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINUX\00", [26 x i8] zeroinitializer }, align 32
@dn_destroy_sock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017DECnet: dn_destroy_sock passed socket in invalid state\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dn_destroy_sock\00", [16 x i8] zeroinitializer }, align 32
@dn_destroy_sock._entry_ptr = internal global ptr @dn_destroy_sock._entry, section ".printk_index", align 4
@dn_bind.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@dn_dev_islocal.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/net/dn_dev.h\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@dn_dev_islocal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.12, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017dn_dev_islocal: Called for non DECnet device\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dn_dev_islocal\00", [17 x i8] zeroinitializer }, align 32
@dn_dev_islocal._entry_ptr = internal global ptr @dn_dev_islocal._entry, section ".printk_index", align 4
@dn_dev_islocal.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_dev_islocal.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@port_alloc.port = internal global { i16, [30 x i8] } { i16 8192, [30 x i8] zeroinitializer }, align 32
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@decnet_no_fc_max_cwnd = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Local                                              Remote\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%6s/%04X %04d:%04d %04d:%04d %01d %-16s %6s/%04X %04d:%04d %04d:%04d %01d %-16s %4s %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IMMED\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DEFER\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OPEN\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  CR\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  DR\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DRC\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  CC\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  CI\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  NR\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  NC\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  CD\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  RJ\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" RUN\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  DI\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DIC\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  DN\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  CL\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  CN\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"????\00", [27 x i8] zeroinitializer }, align 32
@switch.table.dn_socket_seq_show = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 12, i64 14]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 512]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 21521, i64 21531, i64 35077, i64 35093, i64 35094]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.55 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 4, i64 7, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 26]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 5, i64 6, i64 11]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 5, i64 6, i64 11]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [16 x i64] [i64 14, i64 8, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 16]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 6, i64 11]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"dn_hash_lock\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"dn_wild_sk\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 150, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"dn_sk_hash\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 149, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 662, i32 15 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 148, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 729, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2347, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [9 x i8] c"dn_proto\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 452, i32 21 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"dn_family_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2308, i32 38 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"dn_dev_notifier\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2101, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2362, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"dn_socket_seq_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2300, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"decnet_memory_allocated\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 151, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"dn_memory_pressure\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 443, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"dn_proto_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2314, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 512, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 644, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 749, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 695, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 181, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"../include/net/dn_dev.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 183, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 723, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 188, i32 24 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1011, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 230, i32 6 }
@___asan_gen_.166 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 214, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 156, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1984, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2293, i32 17 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2268, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2287, i32 41 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2287, i32 51 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2204, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2220, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2222, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2224, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2226, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2228, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2230, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2232, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2234, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2236, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2238, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2240, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2242, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2244, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2246, i32 10 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2248, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2250, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [26 x i8] c"../net/decnet/af_decnet.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2253, i32 9 }
@___asan_gen_.243 = private unnamed_addr constant [32 x i8] c"switch.table.dn_socket_seq_show\00", align 1
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_alias629, ptr @__UNIQUE_ID_author626, ptr @__UNIQUE_ID_description625, ptr @__UNIQUE_ID_file627, ptr @__UNIQUE_ID_license628, ptr @__initcall__kmod_decnet__630_2370_decnet_init6, ptr @decnet_init._entry, ptr @decnet_init._entry_ptr, ptr @dn_destroy_sock._entry, ptr @dn_destroy_sock._entry_ptr, ptr @dn_dev_islocal._entry, ptr @dn_dev_islocal._entry_ptr, ptr @dn_hash_lock, ptr @dn_wild_sk, ptr @dn_sk_hash, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dn_proto, ptr @dn_family_ops, ptr @dn_dev_notifier, ptr @.str.5, ptr @dn_socket_seq_ops, ptr @decnet_memory_allocated, ptr @dn_memory_pressure, ptr @dn_proto_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @port_alloc.port, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @skb_queue_head_init.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @switch.table.dn_socket_seq_show], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_hash_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_wild_sk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_sk_hash to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_socket_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_memory_allocated to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_memory_pressure to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_proto_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_destroy_sock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_dev_islocal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_alloc.port to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dn_socket_seq_show to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dn_sockaddr2username(ptr nocapture noundef readonly %sdn, ptr nocapture noundef writeonly %buf, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %type, ptr %buf, align 1
  %1 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sdn_objnum = getelementptr inbounds %struct.sockaddr_dn, ptr %sdn, i32 0, i32 2
  %2 = ptrtoint ptr %sdn_objnum to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sdn_objnum, align 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %incdec.ptr, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr3 = getelementptr i8, ptr %buf, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %incdec.ptr, align 1
  %sdn_objnamel = getelementptr inbounds %struct.sockaddr_dn, ptr %sdn, i32 0, i32 3
  %6 = ptrtoint ptr %sdn_objnamel to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sdn_objnamel, align 2
  %8 = lshr i16 %7, 8
  %conv4 = trunc i16 %8 to i8
  %incdec.ptr5 = getelementptr i8, ptr %buf, i32 3
  %9 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %incdec.ptr3, align 1
  %sdn_objname = getelementptr inbounds %struct.sockaddr_dn, ptr %sdn, i32 0, i32 4
  %10 = load i16, ptr %sdn_objnamel, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv7 = zext i16 %11 to i32
  %12 = call ptr @memcpy(ptr %incdec.ptr5, ptr %sdn_objname, i32 %conv7)
  %13 = ptrtoint ptr %sdn_objnamel to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sdn_objnamel, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv9 = zext i16 %15 to i32
  %add = add nuw nsw i32 %conv9, 3
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %16 = call ptr @memset(ptr %incdec.ptr, i32 0, i32 5)
  %add.ptr = getelementptr i8, ptr %buf, i32 6
  %sdn_objnamel11 = getelementptr inbounds %struct.sockaddr_dn, ptr %sdn, i32 0, i32 3
  %17 = ptrtoint ptr %sdn_objnamel11 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sdn_objnamel11, align 2
  %19 = lshr i16 %18, 8
  %conv12 = trunc i16 %19 to i8
  %incdec.ptr13 = getelementptr i8, ptr %buf, i32 7
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv12, ptr %add.ptr, align 1
  %sdn_objname14 = getelementptr inbounds %struct.sockaddr_dn, ptr %sdn, i32 0, i32 4
  %21 = load i16, ptr %sdn_objnamel11, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv17 = zext i16 %22 to i32
  %23 = call ptr @memcpy(ptr %incdec.ptr13, ptr %sdn_objname14, i32 %conv17)
  %24 = ptrtoint ptr %sdn_objnamel11 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sdn_objnamel11, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv19 = zext i16 %26 to i32
  %add20 = add nuw nsw i32 %conv19, 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %len.0 = phi i32 [ 2, %entry.sw.epilog_crit_edge ], [ %add20, %sw.bb10 ], [ %add, %sw.bb2 ], [ 2, %sw.bb ]
  ret i32 %len.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dn_username2sockaddr(ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef writeonly %sdn, ptr nocapture noundef writeonly %fmt) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sdn_objnum = getelementptr inbounds %struct.sockaddr_dn, ptr %sdn, i32 0, i32 2
  %sdn_objnamel = getelementptr inbounds %struct.sockaddr_dn, ptr %sdn, i32 0, i32 3
  %sdn_objname = getelementptr inbounds %struct.sockaddr_dn, ptr %sdn, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp slt i32 %len, 2
  %0 = call ptr @memset(ptr %sdn_objnum, i32 0, i32 19)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %fmt, align 1
  %4 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %2, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 2, label %sw.bb4
    i8 4, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  %7 = ptrtoint ptr %sdn_objnum to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %sdn_objnum, align 1
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr1 = getelementptr i8, ptr %data, i32 2
  %sub = add nsw i32 %len, -2
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sub5 = add nsw i32 %len, -6
  %add.ptr = getelementptr i8, ptr %data, i32 6
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sub7 = add nsw i32 %len, -10
  %add.ptr8 = getelementptr i8, ptr %data, i32 10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %sw.bb3
  %len.addr.0 = phi i32 [ %sub7, %sw.bb6 ], [ %sub5, %sw.bb4 ], [ %sub, %sw.bb3 ]
  %data.addr.0 = phi ptr [ %add.ptr8, %sw.bb6 ], [ %add.ptr, %sw.bb4 ], [ %incdec.ptr1, %sw.bb3 ]
  %namel.0 = phi i32 [ 12, %sw.bb6 ], [ 12, %sw.bb4 ], [ 16, %sw.bb3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.0)
  %cmp10 = icmp slt i32 %len.addr.0, 1
  br i1 %cmp10, label %sw.epilog.cleanup_crit_edge, label %if.end13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog
  %8 = ptrtoint ptr %data.addr.0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.addr.0, align 1
  %conv15 = zext i8 %9 to i16
  %10 = shl nuw i16 %conv15, 8
  %11 = ptrtoint ptr %sdn_objnamel to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %sdn_objnamel, align 2
  %conv18 = zext i8 %9 to i32
  %12 = xor i32 %conv18, -1
  %sub19 = add i32 %len.addr.0, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19)
  %cmp20 = icmp slt i32 %sub19, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %namel.0, i32 %conv18)
  %cmp24 = icmp ult i32 %namel.0, %conv18
  %or.cond = or i1 %cmp24, %cmp20
  br i1 %or.cond, label %if.end13.cleanup_crit_edge, label %if.end27

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end27:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr14 = getelementptr i8, ptr %data.addr.0, i32 1
  %13 = call ptr @memcpy(ptr %sdn_objname, ptr %incdec.ptr14, i32 %conv18)
  %sub32 = sub nsw i32 %len, %sub19
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end13.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub32, %if.end27 ], [ 2, %sw.bb ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %sw.epilog.cleanup_crit_edge ], [ -1, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dn_sklist_find_listener(ptr nocapture noundef readonly %addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sdn_objnum.i = getelementptr inbounds %struct.sockaddr_dn, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %sdn_objnum.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sdn_objnum.i, align 1
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  br i1 %cmp.i, label %if.then.i, label %entry.listen_hash.exit_crit_edge

entry.listen_hash.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %listen_hash.exit

if.then.i:                                        ; preds = %entry
  %sdn_objnamel.i = getelementptr inbounds %struct.sockaddr_dn, ptr %addr, i32 0, i32 3
  %2 = ptrtoint ptr %sdn_objnamel.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sdn_objnamel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp519.not.i = icmp eq i16 %3, 0
  br i1 %cmp519.not.i, label %if.then.i.listen_hash.exit_crit_edge, label %for.body.preheader.i

if.then.i.listen_hash.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %listen_hash.exit

for.body.preheader.i:                             ; preds = %if.then.i
  %conv2.i = zext i16 %3 to i32
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #17
  %5 = tail call i16 @llvm.umax.i16(i16 %4, i16 1) #17
  %umax.i = zext i16 %5 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %hash.021.i = phi i32 [ %xor8.i, %for.body.i.for.body.i_crit_edge ], [ %conv2.i, %for.body.preheader.i ]
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.sockaddr_dn, ptr %addr, i32 0, i32 4, i32 %i.020.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv7.i = zext i8 %7 to i32
  %xor.i = xor i32 %hash.021.i, %conv7.i
  %shl.i = shl i32 %xor.i, 3
  %xor8.i = xor i32 %shl.i, %xor.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.listen_hash.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.listen_hash.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %listen_hash.exit

listen_hash.exit:                                 ; preds = %for.body.i.listen_hash.exit_crit_edge, %if.then.i.listen_hash.exit_crit_edge, %entry.listen_hash.exit_crit_edge
  %hash.1.i = phi i32 [ %conv.i, %entry.listen_hash.exit_crit_edge ], [ 0, %if.then.i.listen_hash.exit_crit_edge ], [ %xor8.i, %for.body.i.listen_hash.exit_crit_edge ]
  %and.i = and i32 %hash.1.i, 255
  %arrayidx9.i = getelementptr [256 x %struct.hlist_head], ptr @dn_sk_hash, i32 0, i32 %and.i
  tail call void @_raw_read_lock(ptr noundef nonnull @dn_hash_lock) #17
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9.i, align 4
  %tobool.not = icmp eq ptr %9, null
  %add.ptr = getelementptr i8, ptr %9, i32 -84
  %tobool2.not105108 = icmp eq ptr %add.ptr, null
  %tobool2.not105 = or i1 %tobool.not, %tobool2.not105108
  br i1 %tobool2.not105, label %listen_hash.exit.for.end_crit_edge, label %for.body.lr.ph

listen_hash.exit.for.end_crit_edge:               ; preds = %listen_hash.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %listen_hash.exit
  %sdn_objnamel23 = getelementptr inbounds %struct.sockaddr_dn, ptr %addr, i32 0, i32 3
  %sdn_objname30 = getelementptr inbounds %struct.sockaddr_dn, ptr %addr, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sk.0106 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr47, %for.inc.for.body_crit_edge ]
  %add.ptr.i = getelementptr %struct.sock, ptr %sk.0106, i32 1
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.0106, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp.not = icmp eq i8 %11, 10
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  %sdn_objnum = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 32, i32 2
  %12 = ptrtoint ptr %sdn_objnum to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sdn_objnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %sdn_objnum.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sdn_objnum.i, align 1
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp13.not = icmp eq i8 %13, %15
  br i1 %cmp13.not, label %if.then7.if.end39_crit_edge, label %if.then7.for.inc_crit_edge

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then7.if.end39_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  br i1 %tobool18.not, label %if.end20, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end20:                                         ; preds = %if.else
  %sdn_objnamel = getelementptr %struct.sock, ptr %sk.0106, i32 1, i32 6
  %16 = ptrtoint ptr %sdn_objnamel to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sdn_objnamel, align 4
  %18 = ptrtoint ptr %sdn_objnamel23 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sdn_objnamel23, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp25.not = icmp eq i16 %17, %19
  br i1 %cmp25.not, label %if.end28, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end28:                                         ; preds = %if.end20
  %sdn_objname = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 32, i32 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv33 = zext i16 %20 to i32
  %bcmp = tail call i32 @bcmp(ptr %sdn_objname, ptr %sdn_objname30, i32 %conv33) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp35.not = icmp eq i32 %bcmp, 0
  br i1 %cmp35.not, label %if.end28.if.end39_crit_edge, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.end39:                                         ; preds = %if.end28.if.end39_crit_edge, %if.then7.if.end39_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk.0106, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #17
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #17, !srcloc !149
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end39.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !150

if.end39.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end39
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup63_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !151

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup63_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup63

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end39.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end39.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #17
  br label %cleanup63

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.end20.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = getelementptr inbounds %struct.sock_common, ptr %sk.0106, i32 0, i32 15
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool43.not = icmp eq ptr %25, null
  %add.ptr47 = getelementptr i8, ptr %25, i32 -84
  %tobool2.not111 = icmp eq ptr %add.ptr47, null
  %tobool2.not = or i1 %tobool43.not, %tobool2.not111
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %listen_hash.exit.for.end_crit_edge
  %26 = load volatile ptr, ptr @dn_wild_sk, align 4
  %tobool.not.i.not.i = icmp eq ptr %26, null
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 -84
  %tobool52.not103 = icmp eq ptr %add.ptr.i.i, null
  %tobool52.not = or i1 %tobool.not.i.not.i, %tobool52.not103
  br i1 %tobool52.not, label %for.end.cleanup63_crit_edge, label %if.then53

for.end.cleanup63_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup63

if.then53:                                        ; preds = %for.end
  %skc_state55 = getelementptr i8, ptr %26, i32 -66
  %27 = ptrtoint ptr %skc_state55 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load volatile i8, ptr %skc_state55, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %28)
  %cmp57 = icmp eq i8 %28, 10
  br i1 %cmp57, label %if.then59, label %if.then53.cleanup63_crit_edge

if.then53.cleanup63_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup63

if.then59:                                        ; preds = %if.then53
  %skc_refcnt.i88 = getelementptr i8, ptr %26, i32 16
  %call.i.i.i.i.i.i89 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i88, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i88, i32 1, i32 3, i32 1) #17
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i88, ptr %skc_refcnt.i88, i32 1, ptr elementtype(i32) %skc_refcnt.i88) #17, !srcloc !149
  %asmresult.i.i.i.i.i.i90 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i90)
  %tobool1.not.i.i.i.i91 = icmp eq i32 %asmresult.i.i.i.i.i.i90, 0
  br i1 %tobool1.not.i.i.i.i91, label %if.then59.if.end15.sink.split.i.i.i.i96_crit_edge, label %if.else.i.i.i.i94, !prof !150

if.then59.if.end15.sink.split.i.i.i.i96_crit_edge: ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i96

if.else.i.i.i.i94:                                ; preds = %if.then59
  %add.i.i.i.i92 = add i32 %asmresult.i.i.i.i.i.i90, 1
  %30 = or i32 %add.i.i.i.i92, %asmresult.i.i.i.i.i.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i93 = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i93, label %if.else.i.i.i.i94.cleanup63_crit_edge, label %if.else.i.i.i.i94.if.end15.sink.split.i.i.i.i96_crit_edge, !prof !151

if.else.i.i.i.i94.if.end15.sink.split.i.i.i.i96_crit_edge: ; preds = %if.else.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i96

if.else.i.i.i.i94.cleanup63_crit_edge:            ; preds = %if.else.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup63

if.end15.sink.split.i.i.i.i96:                    ; preds = %if.else.i.i.i.i94.if.end15.sink.split.i.i.i.i96_crit_edge, %if.then59.if.end15.sink.split.i.i.i.i96_crit_edge
  %.sink.i.i.i.i95 = phi i32 [ 2, %if.then59.if.end15.sink.split.i.i.i.i96_crit_edge ], [ 1, %if.else.i.i.i.i94.if.end15.sink.split.i.i.i.i96_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i88, i32 noundef %.sink.i.i.i.i95) #17
  br label %cleanup63

cleanup63:                                        ; preds = %if.end15.sink.split.i.i.i.i96, %if.else.i.i.i.i94.cleanup63_crit_edge, %if.then53.cleanup63_crit_edge, %for.end.cleanup63_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup63_crit_edge
  %retval.2 = phi ptr [ %sk.0106, %if.end15.sink.split.i.i.i.i ], [ %sk.0106, %if.else.i.i.i.i.cleanup63_crit_edge ], [ null, %for.end.cleanup63_crit_edge ], [ null, %if.then53.cleanup63_crit_edge ], [ %add.ptr.i.i, %if.else.i.i.i.i94.cleanup63_crit_edge ], [ %add.ptr.i.i, %if.end15.sink.split.i.i.i.i96 ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dn_hash_lock) #17
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dn_find_by_skb(ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dn_hash_lock) #17
  %dst_port = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dst_port, align 2
  %2 = lshr i16 %1, 8
  %conv = zext i16 %2 to i32
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr @dn_sk_hash, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  %add.ptr = getelementptr i8, ptr %4, i32 -84
  %tobool3.not5256 = icmp eq ptr %add.ptr, null
  %tobool3.not52 = or i1 %tobool.not, %tobool3.not5256
  br i1 %tobool3.not52, label %entry.found_crit_edge, label %for.body.lr.ph

entry.found_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %found

for.body.lr.ph:                                   ; preds = %entry
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %src, align 2
  %src_port = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sk.053 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr30, %for.inc.for.body_crit_edge ]
  %add.ptr.i = getelementptr %struct.sock, ptr %sk.053, i32 1
  %peer = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 33
  %a_addr.i = getelementptr inbounds %struct.sockaddr_dn, ptr %peer, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %a_addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %a_addr.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp.not = icmp eq i16 %6, %8
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  %addrloc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %addrloc to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addrloc, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %10)
  %cmp11.not = icmp eq i16 %1, %10
  br i1 %cmp11.not, label %if.end14, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end14:                                         ; preds = %if.end
  %addrrem = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 2
  %11 = ptrtoint ptr %addrrem to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addrrem, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool16.not = icmp eq i16 %12, 0
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %land.lhs.true

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end14
  %13 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %src_port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %12)
  %cmp20.not = icmp eq i16 %14, %12
  br i1 %cmp20.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk.053, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #17
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #17, !srcloc !149
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end23.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !150

if.end23.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end23
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.found_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !151

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.found_crit_edge:                  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %found

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #17
  br label %found

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = getelementptr inbounds %struct.sock_common, ptr %sk.053, i32 0, i32 15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool26.not = icmp eq ptr %19, null
  %add.ptr30 = getelementptr i8, ptr %19, i32 -84
  %tobool3.not58 = icmp eq ptr %add.ptr30, null
  %tobool3.not = or i1 %tobool26.not, %tobool3.not58
  br i1 %tobool3.not, label %for.inc.found_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.found_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %found

found:                                            ; preds = %for.inc.found_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.found_crit_edge, %entry.found_crit_edge
  %sk.051 = phi ptr [ %sk.053, %if.end15.sink.split.i.i.i.i ], [ %sk.053, %if.else.i.i.i.i.found_crit_edge ], [ null, %entry.found_crit_edge ], [ null, %for.inc.found_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dn_hash_lock) #17
  ret ptr %sk.051
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_destroy_timer(ptr noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %call1 = tail call i32 @dn_nsp_persist(ptr noundef %sk) #17
  %persist = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %persist to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %persist, align 4
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %add.ptr.i, align 4
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %2, label %entry.sw.epilog_crit_edge [
    i8 12, label %sw.bb
    i8 3, label %sw.bb4
    i8 14, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void @dn_nsp_send_disc(ptr noundef %sk, i8 noundef zeroext 56, i16 noundef zeroext 0, i32 noundef 2592) #17
  %nsp_rxtshift = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %nsp_rxtshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nsp_rxtshift, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_di_count to i32))
  %6 = load i32, ptr @decnet_di_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp.not = icmp ult i32 %5, %6
  br i1 %cmp.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %add.ptr.i, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  tail call void @dn_nsp_send_disc(ptr noundef %sk, i8 noundef zeroext 56, i16 noundef zeroext 0, i32 noundef 2592) #17
  %nsp_rxtshift5 = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %nsp_rxtshift5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsp_rxtshift5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_dr_count to i32))
  %10 = load i32, ptr @decnet_dr_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp6.not = icmp ult i32 %9, %10
  br i1 %cmp6.not, label %sw.bb4.cleanup_crit_edge, label %if.then8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then8:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %add.ptr.i, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %nsp_rxtshift12 = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %nsp_rxtshift12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nsp_rxtshift12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_dn_count to i32))
  %14 = load i32, ptr @decnet_dn_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp13 = icmp ult i32 %13, %14
  br i1 %cmp13, label %if.then15, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dn_nsp_send_disc(ptr noundef %sk, i8 noundef zeroext 72, i16 noundef zeroext 42, i32 noundef 2592) #17
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_time_wait to i32))
  %15 = load i32, ptr @decnet_time_wait, align 4
  %mul = mul i32 %15, 100
  %16 = ptrtoint ptr %persist to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %persist, align 4
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %17 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end19, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %stamp = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %stamp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stamp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_time_wait to i32))
  %22 = load i32, ptr @decnet_time_wait, align 4
  %mul20.neg = mul i32 %22, -100
  %add.neg = sub i32 %19, %21
  %sub = add i32 %add.neg, %mul20.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp21 = icmp sgt i32 %sub, -1
  br i1 %cmp21, label %if.then23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  tail call void @_raw_write_lock(ptr noundef nonnull @dn_hash_lock) #17
  %pprev.i.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i.i.not.i.i, label %if.then23.dn_unhash_sock.exit_crit_edge, label %if.then.i.i.i

if.then23.dn_unhash_sock.exit_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_unhash_sock.exit

if.then.i.i.i:                                    ; preds = %if.then23
  %25 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %24, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.if.then.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %24, ptr %pprev14.i.i.i.i.i, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.if.then.i.i_crit_edge
  %30 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pprev.i.i.i.i.i.i, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #17
  %31 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i.i = icmp eq i32 %32, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !150

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 729, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #17
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #17, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.end.i.i.dn_unhash_sock.exit_crit_edge, !prof !150

if.end.i.i.dn_unhash_sock.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_unhash_sock.exit

if.then3.i.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #17
  br label %dn_unhash_sock.exit

dn_unhash_sock.exit:                              ; preds = %if.then3.i.i.i.i.i, %if.end.i.i.dn_unhash_sock.exit_crit_edge, %if.then23.dn_unhash_sock.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @dn_hash_lock) #17
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #17
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #17, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %dn_unhash_sock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !151

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #17
  br label %cleanup

if.then.i:                                        ; preds = %dn_unhash_sock.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !154
  tail call void @sk_free(ptr noundef %sk) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then15, %if.then8, %sw.bb4.cleanup_crit_edge, %if.then, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 1, %if.then10.i.i.i.i ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_nsp_persist(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_nsp_send_disc(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dn_addr2asc(i16 noundef zeroext %addr, ptr noundef returned writeonly %buf) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i16 %addr, 1023
  %0 = lshr i16 %addr, 10
  %conv4 = zext i16 %0 to i32
  %conv5 = zext i16 %and to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %conv4, i32 noundef %conv5)
  ret ptr %buf
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dn_mss_from_pmtu(ptr noundef %dev, i32 noundef %mtu) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.else9, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %0 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dn_ptr, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %3 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %needed_headroom, align 8
  %conv2 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv2, %conv
  %and = and i32 %add, 131056
  %use_long = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %use_long to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_long, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  %mtu.addr.0.v = select i1 %tobool4.not, i32 -6, i32 -21
  %sub = add i32 %mtu, -27
  %mtu.addr.0 = sub i32 %sub, %and
  %sub8 = add i32 %mtu.addr.0, %mtu.addr.0.v
  br label %if.end11

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sub10 = add i32 %mtu, -48
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then
  %mtu.addr.1 = phi i32 [ %sub8, %if.then ], [ %sub10, %if.else9 ]
  %8 = tail call i32 @llvm.umax.i32(i32 %mtu.addr.1, i32 219)
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @decnet_init() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @banner) #21
  %call1 = tail call i32 @proto_register(ptr noundef nonnull @dn_proto, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end3, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dn_neigh_init() #17
  tail call void @dn_dev_init() #17
  tail call void @dn_route_init() #17
  tail call void @dn_fib_init() #17
  %call4 = tail call i32 @sock_register(ptr noundef nonnull @dn_family_ops) #17
  tail call void @dev_add_pack(ptr noundef nonnull @dn_dix_packet_type) #17
  %call5 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @dn_dev_notifier) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call6 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %0, ptr noundef nonnull @dn_socket_seq_ops, i32 noundef 4, ptr noundef null) #17
  tail call void @dn_register_sysctl() #17
  br label %out

out:                                              ; preds = %if.end3, %entry.out_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_neigh_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_dev_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_route_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_fib_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_register_sysctl() local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dn_enter_memory_pressure(ptr nocapture noundef readnone %sk) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dn_memory_pressure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  store i32 1, ptr @dn_memory_pressure, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %protocol)
  %0 = icmp ugt i32 %protocol, 255
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 4
  %conv = sext i16 %2 to i32
  %3 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %conv, label %if.end3.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 1, label %if.end3.sw.epilog_crit_edge
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %protocol)
  %cmp4.not = icmp eq i32 %protocol, 2
  br i1 %cmp4.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end3.sw.epilog_crit_edge
  %call8 = tail call fastcc ptr @dn_alloc_sock(ptr noundef nonnull @init_net, ptr noundef %sock, i32 noundef 3264, i32 noundef %kern)
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %sw.epilog.cleanup_crit_edge, label %if.end12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %conv13 = trunc i32 %protocol to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call8, i32 0, i32 46
  %4 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv13, ptr %sk_protocol, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ], [ -93, %sw.bb.cleanup_crit_edge ], [ -94, %if.end3.cleanup_crit_edge ], [ -105, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dn_alloc_sock(ptr noundef %net, ptr noundef %sock, i32 noundef %gfp, i32 noundef %kern) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 12, i32 noundef %gfp, ptr noundef nonnull @dn_proto, i32 noundef %kern) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %sock, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dn_proto_ops, ptr %ops, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #17
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 80
  %1 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dn_nsp_backlog_rcv, ptr %sk_backlog_rcv, align 4
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 82
  %2 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dn_destruct, ptr %sk_destruct, align 4
  %sk_no_check_tx = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 43
  %3 = ptrtoint ptr %sk_no_check_tx to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %sk_no_check_tx, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %sk_no_check_tx, align 8
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %skc_family to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 12, ptr %skc_family, align 8
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 46
  %5 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %sk_protocol, align 4
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 41
  %6 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %gfp, ptr %sk_allocation, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @sysctl_decnet_wmem, i32 0, i32 1) to i32))
  %7 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_decnet_wmem, i32 0, i32 1), align 4
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 21
  %8 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sk_sndbuf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x i32], ptr @sysctl_decnet_rmem, i32 0, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_decnet_rmem, i32 0, i32 1), align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 15
  %10 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sk_rcvbuf, align 8
  %add.ptr.i = getelementptr %struct.sock, ptr %call, i32 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %add.ptr.i, align 4
  %numdat = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 3
  %12 = ptrtoint ptr %numdat to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %numdat, align 2
  %numoth = getelementptr %struct.sock, ptr %call, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %numoth to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %numoth, align 4
  %ackxmt_dat = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 7
  %flowrem_sw = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 11
  %14 = ptrtoint ptr %ackxmt_dat to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %ackxmt_dat, align 2
  %15 = ptrtoint ptr %flowrem_sw to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %flowrem_sw, align 2
  %flowloc_sw = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 12
  %16 = ptrtoint ptr %flowloc_sw to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %flowloc_sw, align 1
  %flowrem_dat = getelementptr %struct.sock, ptr %call, i32 1, i32 0, i32 7
  %17 = ptrtoint ptr %flowrem_dat to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flowrem_dat, align 4
  %flowrem_oth = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 14
  %18 = ptrtoint ptr %flowrem_oth to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flowrem_oth, align 2
  %flowloc_dat = getelementptr %struct.sock, ptr %call, i32 1, i32 0, i32 7, i32 0, i32 1
  %19 = ptrtoint ptr %flowloc_dat to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flowloc_dat, align 4
  %flowloc_oth = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 16
  %20 = ptrtoint ptr %flowloc_oth to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flowloc_oth, align 2
  %services_rem = getelementptr %struct.sock, ptr %call, i32 1, i32 0, i32 8
  %21 = ptrtoint ptr %services_rem to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %services_rem, align 4
  %services_loc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 18
  %22 = ptrtoint ptr %services_loc to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %services_loc, align 1
  %info_rem = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 19
  %23 = ptrtoint ptr %info_rem to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %info_rem, align 2
  %info_loc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 20
  %24 = ptrtoint ptr %info_loc to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %info_loc, align 1
  %segsize_rem = getelementptr %struct.sock, ptr %call, i32 1, i32 0, i32 9
  %25 = ptrtoint ptr %segsize_rem to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 219, ptr %segsize_rem, align 4
  %nonagle = getelementptr %struct.sock, ptr %call, i32 1, i32 0, i32 10
  %26 = ptrtoint ptr %nonagle to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %nonagle, align 4
  %multi_ireq = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 24
  %27 = ptrtoint ptr %multi_ireq to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %multi_ireq, align 1
  %accept_mode = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 25
  %28 = ptrtoint ptr %accept_mode to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %accept_mode, align 2
  %addr = getelementptr %struct.sock, ptr %call, i32 1, i32 5
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 12, ptr %addr, align 4
  %peer = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 33
  %30 = ptrtoint ptr %peer to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 12, ptr %peer, align 2
  %accessdata = getelementptr %struct.sock, ptr %call, i32 1, i32 4, i32 0, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %accessdata to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 5, ptr %accessdata, align 4
  %acc_acc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 31, i32 1
  %32 = call ptr @memcpy(ptr %acc_acc, ptr @.str.6, i32 5)
  %max_window = getelementptr %struct.sock, ptr %call, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %max_window to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2046, ptr %max_window, align 4
  %snd_window = getelementptr %struct.sock, ptr %call, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %snd_window to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %snd_window, align 4
  %nsp_srtt = getelementptr %struct.sock, ptr %call, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 7
  %35 = ptrtoint ptr %nsp_srtt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 100, ptr %nsp_srtt, align 4
  %nsp_rttvar = getelementptr %struct.sock, ptr %call, i32 1, i32 8
  %36 = ptrtoint ptr %nsp_rttvar to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 300, ptr %nsp_rttvar, align 4
  %nsp_rxtshift = getelementptr %struct.sock, ptr %call, i32 1, i32 8, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %nsp_rxtshift to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %nsp_rxtshift, align 4
  %data_xmit_queue = getelementptr %struct.sock, ptr %call, i32 1, i32 8, i32 1
  %lock.i = getelementptr %struct.sock, ptr %call, i32 1, i32 8, i32 2, i32 0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %38 = ptrtoint ptr %data_xmit_queue to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %data_xmit_queue, ptr %data_xmit_queue, align 4
  %prev.i.i = getelementptr %struct.sock, ptr %call, i32 1, i32 8, i32 2
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %data_xmit_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.sock, ptr %call, i32 1, i32 8, i32 2, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %qlen.i.i, align 4
  %other_xmit_queue = getelementptr %struct.sock, ptr %call, i32 1, i32 9, i32 2
  %lock.i58 = getelementptr %struct.sock, ptr %call, i32 1, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i58, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %41 = ptrtoint ptr %other_xmit_queue to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %other_xmit_queue, ptr %other_xmit_queue, align 4
  %prev.i.i59 = getelementptr %struct.sock, ptr %call, i32 1, i32 9, i32 3
  %42 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %other_xmit_queue, ptr %prev.i.i59, align 4
  %qlen.i.i60 = getelementptr %struct.sock, ptr %call, i32 1, i32 10
  %43 = ptrtoint ptr %qlen.i.i60 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %qlen.i.i60, align 4
  %other_receive_queue = getelementptr %struct.sock, ptr %call, i32 1, i32 21
  %lock.i61 = getelementptr %struct.sock, ptr %call, i32 1, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i61, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %44 = ptrtoint ptr %other_receive_queue to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %other_receive_queue, ptr %other_receive_queue, align 4
  %prev.i.i62 = getelementptr %struct.sock, ptr %call, i32 1, i32 22
  %45 = ptrtoint ptr %prev.i.i62 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %other_receive_queue, ptr %prev.i.i62, align 4
  %qlen.i.i63 = getelementptr %struct.sock, ptr %call, i32 1, i32 23
  %46 = ptrtoint ptr %qlen.i.i63 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %qlen.i.i63, align 4
  %persist = getelementptr %struct.sock, ptr %call, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %persist to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %persist, align 4
  %persist_fxn = getelementptr %struct.sock, ptr %call, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %persist_fxn to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %persist_fxn, align 4
  %keepalive = getelementptr %struct.sock, ptr %call, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 7
  %49 = ptrtoint ptr %keepalive to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1000, ptr %keepalive, align 4
  %keepalive_fxn = getelementptr %struct.sock, ptr %call, i32 1, i32 27
  %50 = ptrtoint ptr %keepalive_fxn to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @dn_keepalive, ptr %keepalive_fxn, align 4
  tail call void @dn_start_slow_timer(ptr noundef nonnull %call) #17
  br label %out

out:                                              ; preds = %if.end3, %entry.out_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_nsp_backlog_rcv(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_destruct(ptr noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data_xmit_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 1
  tail call void @skb_queue_purge(ptr noundef %data_xmit_queue) #17
  %other_xmit_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 9, i32 2
  tail call void @skb_queue_purge(ptr noundef %other_xmit_queue) #17
  %other_receive_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 21
  tail call void @skb_queue_purge(ptr noundef %other_receive_queue) #17
  %sk_dst_cache = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %sk_dst_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_dst_cache, align 4
  tail call void @dst_release(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_keepalive(ptr noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %other_xmit_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 9, i32 2
  %0 = ptrtoint ptr %other_xmit_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %other_xmit_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %other_xmit_queue
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dn_nsp_send_link(ptr noundef %sk, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_start_slow_timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_release(ptr nocapture noundef readonly %sock) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #17
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %or.i.i.i = or i32 %4, 1
  store i32 %or.i.i.i, ptr %2, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %5 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sk_socket.i.i, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #17
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #17, !srcloc !149
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !150

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !151

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #17
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #17
  tail call fastcc void @dn_destroy_sock(ptr noundef nonnull %1)
  tail call void @release_sock(ptr noundef nonnull %1) #17
  %call.i.i.i.i.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #17
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #17, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i10 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i10, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !151

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #17
  br label %if.end

if.then.i:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !154
  tail call void @sk_free(ptr noundef nonnull %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %uaddr, i32 noundef %addr_len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %addr_len)
  %cmp.not = icmp eq i32 %addr_len, 26
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp2.not = icmp eq i16 %3, 12
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sdn_add = getelementptr inbounds %struct.sockaddr_dn, ptr %uaddr, i32 0, i32 5
  %4 = ptrtoint ptr %sdn_add to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sdn_add, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %5, label %if.end5.cleanup_crit_edge [
    i16 0, label %if.end5.if.end13_crit_edge
    i16 512, label %if.end5.if.end13_crit_edge127
  ]

if.end5.if.end13_crit_edge127:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %if.end5.if.end13_crit_edge, %if.end5.if.end13_crit_edge127
  %sdn_objnamel = getelementptr inbounds %struct.sockaddr_dn, ptr %uaddr, i32 0, i32 3
  %7 = ptrtoint ptr %sdn_objnamel to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sdn_objnamel, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %9)
  %cmp15 = icmp ugt i16 %9, 16
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %sdn_flags = getelementptr inbounds %struct.sockaddr_dn, ptr %uaddr, i32 0, i32 1
  %10 = ptrtoint ptr %sdn_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sdn_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %tobool20.not = icmp ult i8 %11, 2
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call zeroext i1 @capable(i32 noundef 10) #17
  br i1 %call23, label %if.end22.if.end32_crit_edge, label %land.lhs.true24

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

land.lhs.true24:                                  ; preds = %if.end22
  %sdn_objnum = getelementptr inbounds %struct.sockaddr_dn, ptr %uaddr, i32 0, i32 2
  %12 = ptrtoint ptr %sdn_objnum to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sdn_objnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool26.not = icmp eq i8 %13, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true24
  %14 = ptrtoint ptr %sdn_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sdn_flags, align 2
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool30.not = icmp eq i8 %16, 0
  br i1 %tobool30.not, label %lor.lhs.false.if.end32_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.end32:                                         ; preds = %lor.lhs.false.if.end32_crit_edge, %if.end22.if.end32_crit_edge
  %17 = ptrtoint ptr %sdn_flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sdn_flags, align 2
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool36.not = icmp eq i8 %19, 0
  br i1 %tobool36.not, label %if.then37, label %if.end32.if.end78_crit_edge

if.end32.if.end78_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.then37:                                        ; preds = %if.end32
  %20 = ptrtoint ptr %sdn_add to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sdn_add, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool40.not = icmp eq i16 %21, 0
  br i1 %tobool40.not, label %if.then37.if.end78_crit_edge, label %if.then41

if.then37.if.end78_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.then41:                                        ; preds = %if.then37
  %22 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !155
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.then41.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then41.rcu_read_lock.exit_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then41
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then41.rcu_read_lock.exit_crit_edge
  %call42 = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true44, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true44:                                  ; preds = %rcu_read_lock.exit
  %call45 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true44.do.end_crit_edge, label %land.lhs.true47

land.lhs.true44.do.end_crit_edge:                 ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %.b113 = load i1, ptr @dn_bind.__warned, align 1
  br i1 %.b113, label %land.lhs.true47.do.end_crit_edge, label %if.then49

land.lhs.true47.do.end_crit_edge:                 ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then49:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @dn_bind.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 749, ptr noundef nonnull @.str.9) #17
  br label %do.end

do.end:                                           ; preds = %if.then49, %land.lhs.true47.do.end_crit_edge, %land.lhs.true44.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn119 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp55.not120 = icmp eq ptr %.pn119, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp55.not120, label %do.end.if.then75.critedge_crit_edge, label %for.body.lr.ph

do.end.if.then75.critedge_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then75.critedge

for.body.lr.ph:                                   ; preds = %do.end
  %a_addr.i = getelementptr inbounds %struct.sockaddr_dn, ptr %uaddr, i32 0, i32 5, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn121 = phi ptr [ %.pn119, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %dn_ptr = getelementptr i8, ptr %.pn121, i32 508
  %26 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dn_ptr, align 4
  %tobool57.not = icmp eq ptr %27, null
  br i1 %tobool57.not, label %for.body.for.inc_crit_edge, label %if.end59

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end59:                                         ; preds = %for.body
  %28 = ptrtoint ptr %a_addr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %a_addr.i, align 2
  %30 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !155
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %if.end59.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end59.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end59
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end59.rcu_read_lock.exit.i_crit_edge
  %34 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %dn_ptr, align 4
  %call.i114 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool.not.i115 = icmp eq i32 %call.i114, 0
  br i1 %tobool.not.i115, label %land.lhs.true.i116, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.i

land.lhs.true.i116:                               ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i116.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i116.do.end7.i_crit_edge:           ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i116
  %.b64.i = load i1, ptr @dn_dev_islocal.__warned, align 1
  br i1 %.b64.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i117

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.i

if.then.i117:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @dn_dev_islocal.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 181, ptr noundef nonnull @.str.13) #17
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i117, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i116.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %cmp.i = icmp eq ptr %35, null
  br i1 %cmp.i, label %do.end12.i, label %if.end15.i

do.end12.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #21
  br label %out.i

if.end15.i:                                       ; preds = %do.end7.i
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %35, align 4
  %call21.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %if.end15.i.do.end31.i_crit_edge

if.end15.i.do.end31.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31.i

land.lhs.true23.i:                                ; preds = %if.end15.i
  %call24.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true23.i.do.end31.i_crit_edge, label %land.lhs.true26.i

land.lhs.true23.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31.i

land.lhs.true26.i:                                ; preds = %land.lhs.true23.i
  %.b5963.i = load i1, ptr @dn_dev_islocal.__warned.16, align 1
  br i1 %.b5963.i, label %land.lhs.true26.i.do.end31.i_crit_edge, label %if.then28.i

land.lhs.true26.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31.i

if.then28.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @dn_dev_islocal.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 187, ptr noundef nonnull @.str.13) #17
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then28.i, %land.lhs.true26.i.do.end31.i_crit_edge, %land.lhs.true23.i.do.end31.i_crit_edge, %if.end15.i.do.end31.i_crit_edge
  %cmp33.not74.i = icmp eq ptr %37, null
  br i1 %cmp33.not74.i, label %do.end31.i.out.i_crit_edge, label %do.end31.i.for.body.i_crit_edge

do.end31.i.for.body.i_crit_edge:                  ; preds = %do.end31.i
  br label %for.body.i

do.end31.i.out.i_crit_edge:                       ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

for.body.i:                                       ; preds = %do.end54.i.for.body.i_crit_edge, %do.end31.i.for.body.i_crit_edge
  %ifa.075.i = phi ptr [ %41, %do.end54.i.for.body.i_crit_edge ], [ %37, %do.end31.i.for.body.i_crit_edge ]
  %ifa_local.i = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa.075.i, i32 0, i32 2
  %38 = ptrtoint ptr %ifa_local.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ifa_local.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %29)
  %cmp35.i = icmp eq i16 %39, %29
  br i1 %cmp35.i, label %for.body.i.out.i.loopexit_crit_edge, label %for.inc.i

for.body.i.out.i.loopexit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i.loopexit

for.inc.i:                                        ; preds = %for.body.i
  %40 = ptrtoint ptr %ifa.075.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %ifa.075.i, align 4
  %call44.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %land.lhs.true46.i, label %for.inc.i.do.end54.i_crit_edge

for.inc.i.do.end54.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end54.i

land.lhs.true46.i:                                ; preds = %for.inc.i
  %call47.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true46.i.do.end54.i_crit_edge, label %land.lhs.true49.i

land.lhs.true46.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end54.i

land.lhs.true49.i:                                ; preds = %land.lhs.true46.i
  %.b6062.i = load i1, ptr @dn_dev_islocal.__warned.17, align 1
  br i1 %.b6062.i, label %land.lhs.true49.i.do.end54.i_crit_edge, label %if.then51.i

land.lhs.true49.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end54.i

if.then51.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @dn_dev_islocal.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 189, ptr noundef nonnull @.str.13) #17
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.then51.i, %land.lhs.true49.i.do.end54.i_crit_edge, %land.lhs.true46.i.do.end54.i_crit_edge, %for.inc.i.do.end54.i_crit_edge
  %cmp33.not.i = icmp eq ptr %41, null
  br i1 %cmp33.not.i, label %do.end54.i.out.i.loopexit_crit_edge, label %do.end54.i.for.body.i_crit_edge

do.end54.i.for.body.i_crit_edge:                  ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.end54.i.out.i.loopexit_crit_edge:              ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i.loopexit

out.i.loopexit:                                   ; preds = %do.end54.i.out.i.loopexit_crit_edge, %for.body.i.out.i.loopexit_crit_edge
  %42 = xor i1 %cmp35.i, true
  br label %out.i

out.i:                                            ; preds = %out.i.loopexit, %do.end31.i.out.i_crit_edge, %do.end12.i
  %tobool62.not = phi i1 [ true, %do.end31.i.out.i_crit_edge ], [ true, %do.end12.i ], [ %42, %out.i.loopexit ]
  %call.i65.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i65.i, label %out.i.dn_dev_islocal.exit_crit_edge, label %land.lhs.true.i68.i

out.i.dn_dev_islocal.exit_crit_edge:              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_dev_islocal.exit

land.lhs.true.i68.i:                              ; preds = %out.i
  %call1.i66.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66.i)
  %tobool.not.i67.i = icmp eq i32 %call1.i66.i, 0
  br i1 %tobool.not.i67.i, label %land.lhs.true.i68.i.dn_dev_islocal.exit_crit_edge, label %land.lhs.true2.i70.i

land.lhs.true.i68.i.dn_dev_islocal.exit_crit_edge: ; preds = %land.lhs.true.i68.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_dev_islocal.exit

land.lhs.true2.i70.i:                             ; preds = %land.lhs.true.i68.i
  %.b4.i69.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69.i, label %land.lhs.true2.i70.i.dn_dev_islocal.exit_crit_edge, label %if.then.i71.i

land.lhs.true2.i70.i.dn_dev_islocal.exit_crit_edge: ; preds = %land.lhs.true2.i70.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_dev_islocal.exit

if.then.i71.i:                                    ; preds = %land.lhs.true2.i70.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.18) #17
  br label %dn_dev_islocal.exit

dn_dev_islocal.exit:                              ; preds = %if.then.i71.i, %land.lhs.true2.i70.i.dn_dev_islocal.exit_crit_edge, %land.lhs.true.i68.i.dn_dev_islocal.exit_crit_edge, %out.i.dn_dev_islocal.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !156
  %43 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i.i.i72.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i72.i to ptr
  %preempt_count.i.i.i.i73.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i73.i, align 4
  %sub.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i73.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br i1 %tobool62.not, label %dn_dev_islocal.exit.for.inc_crit_edge, label %if.then63

dn_dev_islocal.exit.for.inc_crit_edge:            ; preds = %dn_dev_islocal.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then63:                                        ; preds = %dn_dev_islocal.exit
  %dev.0.le = getelementptr i8, ptr %.pn121, i32 -40
  %phi.cmp = icmp eq ptr %dev.0.le, null
  tail call fastcc void @rcu_read_unlock()
  br i1 %phi.cmp, label %if.then63.cleanup_crit_edge, label %if.then63.if.end78_crit_edge

if.then63.if.end78_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc:                                          ; preds = %dn_dev_islocal.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %47 = ptrtoint ptr %.pn121 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn = load volatile ptr, ptr %.pn121, align 4
  %cmp55.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp55.not, label %for.inc.if.then75.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.if.then75.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then75.critedge

if.then75.critedge:                               ; preds = %for.inc.if.then75.critedge_crit_edge, %do.end.if.then75.critedge_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end78:                                         ; preds = %if.then63.if.end78_crit_edge, %if.then37.if.end78_crit_edge, %if.end32.if.end78_crit_edge
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %48 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %51 = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not = icmp eq i32 %51, 0
  br i1 %tobool.i.not, label %if.end78.if.end85_crit_edge, label %if.then80

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end85

if.then80:                                        ; preds = %if.end78
  %addr = getelementptr %struct.sock, ptr %1, i32 1, i32 5
  %52 = call ptr @memcpy(ptr %addr, ptr %uaddr, i32 26)
  %and.i.i = and i32 %50, -257
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and.i.i, ptr %48, align 4
  %call81 = tail call fastcc i32 @dn_hash_sock(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then80.if.end85_crit_edge, label %if.then83

if.then80.if.end85_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end85

if.then83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %48, align 4
  %or.i.i = or i32 %55, 256
  store i32 %or.i.i, ptr %48, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then80.if.end85_crit_edge, %if.end78.if.end85_crit_edge
  %rv.0 = phi i32 [ %call81, %if.then83 ], [ 0, %if.then80.if.end85_crit_edge ], [ -22, %if.end78.if.end85_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then75.critedge, %if.then63.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %if.end85 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ -13, %lor.lhs.false.cleanup_crit_edge ], [ -13, %land.lhs.true24.cleanup_crit_edge ], [ -99, %if.then75.critedge ], [ -99, %if.then63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_connect(ptr nocapture noundef readonly %sock, ptr noundef %uaddr, i32 noundef %addrlen, i32 noundef %flags) #4 align 64 {
entry:
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #17
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_sndtimeo.exit_crit_edge

entry.sock_sndtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.false.i ], [ 0, %entry.sock_sndtimeo.exit_crit_edge ]
  %4 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %timeo, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %call2 = call fastcc i32 @__dn_connect(ptr noundef %1, ptr noundef %uaddr, i32 noundef %addrlen, ptr noundef nonnull %timeo, i32 noundef 0)
  tail call void @release_sock(ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #17
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #4 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #17
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_rcvtimeo.exit_crit_edge

entry.sock_rcvtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.false.i ], [ 0, %entry.sock_rcvtimeo.exit_crit_edge ]
  %4 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %timeo, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %cmp.not = icmp eq i8 %6, 10
  br i1 %cmp.not, label %lor.lhs.false, label %sock_rcvtimeo.exit.if.then_crit_edge

sock_rcvtimeo.exit.if.then_crit_edge:             ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %sock_rcvtimeo.exit
  %add.ptr.i = getelementptr %struct.sock, ptr %1, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp5.not = icmp eq i8 %8, 1
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sock_rcvtimeo.exit.if.then_crit_edge
  tail call void @release_sock(ptr noundef %1) #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %call7 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #17
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then10, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #17
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %wait.i, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %9, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @woken_wake_function, ptr %10, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %11, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %11, ptr %12, align 4
  %22 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %22, align 8
  call void @add_wait_queue(ptr noundef %24, ptr noundef nonnull %wait.i) #17
  %25 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %25)
  %timeo.promoted = load i32, ptr %timeo, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end21.i.for.cond.i_crit_edge, %if.then10
  %call6.i308 = phi i32 [ %call6.i, %if.end21.i.for.cond.i_crit_edge ], [ %timeo.promoted, %if.then10 ]
  call void @release_sock(ptr noundef %1) #17
  %call5.i = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #17
  %cmp.i = icmp eq ptr %call5.i, null
  br i1 %cmp.i, label %if.end.i, label %for.end.i

if.end.i:                                         ; preds = %for.cond.i
  %call6.i = call i32 @wait_woken(ptr noundef nonnull %wait.i, i32 noundef 1, i32 noundef %call6.i308) #17
  %call8.i = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #17
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %cmp9.not.i = icmp eq ptr %call8.i, null
  br i1 %cmp9.not.i, label %if.end11.i, label %for.end.thread51.i

for.end.thread51.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call6.i, ptr %timeo, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %22, align 8
  call void @remove_wait_queue(ptr noundef %28, ptr noundef nonnull %wait.i) #17
  br label %dn_wait_for_connect.exit

if.end11.i:                                       ; preds = %if.end.i
  %29 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %30)
  %cmp12.not.i = icmp eq i8 %30, 10
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end11.i.cond.true.i.loopexit_crit_edge

if.end11.i.cond.true.i.loopexit_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i.loopexit

if.end15.i:                                       ; preds = %if.end11.i
  %31 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stack.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %cond.true.split.loop.exit.i, !prof !151

signal_pending.exit.i:                            ; preds = %if.end15.i
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %34, align 4
  %and1.i.i.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end21.i, label %cond.true.split.loop.exit60.i

if.end21.i:                                       ; preds = %signal_pending.exit.i
  %tobool22.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool22.not.i, label %if.end21.i.cond.true.i.loopexit_crit_edge, label %if.end21.i.for.cond.i_crit_edge

if.end21.i.for.cond.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

if.end21.i.cond.true.i.loopexit_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i.loopexit

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call6.i308, ptr %timeo, align 4
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %41 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %22, align 8
  call void @remove_wait_queue(ptr noundef %42, ptr noundef nonnull %wait.i) #17
  br label %dn_wait_for_connect.exit

cond.true.split.loop.exit.i:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call6.i, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call6.i)
  %cmp.i.le.i = icmp eq i32 %call6.i, 2147483647
  %cond.i.le64.i = select i1 %cmp.i.le.i, i32 -512, i32 -4
  br label %cond.true.i

cond.true.split.loop.exit60.i:                    ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call6.i, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call6.i)
  %cmp.i.le66.i = icmp eq i32 %call6.i, 2147483647
  %cond.i.le.i = select i1 %cmp.i.le66.i, i32 -512, i32 -4
  br label %cond.true.i

cond.true.i.loopexit:                             ; preds = %if.end21.i.cond.true.i.loopexit_crit_edge, %if.end11.i.cond.true.i.loopexit_crit_edge
  %call6.i.lcssa323 = phi i32 [ %call6.i, %if.end11.i.cond.true.i.loopexit_crit_edge ], [ 0, %if.end21.i.cond.true.i.loopexit_crit_edge ]
  %err.1.ph.i.ph = phi i32 [ -22, %if.end11.i.cond.true.i.loopexit_crit_edge ], [ -11, %if.end21.i.cond.true.i.loopexit_crit_edge ]
  %45 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call6.i.lcssa323, ptr %timeo, align 4
  br label %cond.true.i

cond.true.i:                                      ; preds = %cond.true.i.loopexit, %cond.true.split.loop.exit60.i, %cond.true.split.loop.exit.i
  %err.1.ph.i = phi i32 [ %cond.i.le64.i, %cond.true.split.loop.exit.i ], [ %cond.i.le.i, %cond.true.split.loop.exit60.i ], [ %err.1.ph.i.ph, %cond.true.i.loopexit ]
  %46 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %22, align 8
  call void @remove_wait_queue(ptr noundef %47, ptr noundef nonnull %wait.i) #17
  %48 = inttoptr i32 %err.1.ph.i to ptr
  br label %dn_wait_for_connect.exit

dn_wait_for_connect.exit:                         ; preds = %cond.true.i, %for.end.i, %for.end.thread51.i
  %cond.i219 = phi ptr [ %48, %cond.true.i ], [ %call5.i, %for.end.i ], [ %call8.i, %for.end.thread51.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #17
  %cmp.i220 = icmp ugt ptr %cond.i219, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then13, label %dn_wait_for_connect.exit.if.end16_crit_edge

dn_wait_for_connect.exit.if.end16_crit_edge:      ; preds = %dn_wait_for_connect.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then13:                                        ; preds = %dn_wait_for_connect.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @release_sock(ptr noundef %1) #17
  %49 = ptrtoint ptr %cond.i219 to i32
  br label %cleanup

if.end16:                                         ; preds = %dn_wait_for_connect.exit.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %skb.0 = phi ptr [ %cond.i219, %dn_wait_for_connect.exit.if.end16_crit_edge ], [ %call7, %if.end.if.end16_crit_edge ]
  %cb17 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %50 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %52 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skc_net.i, align 4
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 41
  %54 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sk_allocation, align 8
  %conv20 = zext i1 %kern to i32
  %call21 = call fastcc ptr @dn_alloc_sock(ptr noundef %53, ptr noundef %newsock, i32 noundef %55, i32 noundef %conv20)
  %cmp22 = icmp eq ptr %call21, null
  call void @release_sock(ptr noundef %1) #17
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree_skb_reason(ptr noundef nonnull %skb.0, i32 noundef 0) #17
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %56 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %and.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i221 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i221, label %if.end25.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end25.skb_dst.exit_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end25
  %call.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !150

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end25.skb_dst.exit_crit_edge
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 8
  %and25.i = and i32 %60, -2
  %skc_tx_queue_mapping.i.i = getelementptr inbounds %struct.sock_common, ptr %call21, i32 0, i32 16
  %61 = ptrtoint ptr %skc_tx_queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i, align 4
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %call21, i32 0, i32 29
  %62 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %sk_dst_pending_confirm.i, align 8
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %call21, i32 0, i32 19
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !157
  call void @llvm.prefetch.p0(ptr %sk_dst_cache.i, i32 1, i32 3, i32 1) #17
  %63 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %and25.i, ptr %sk_dst_cache.i) #17, !srcloc !158
  %asmresult.i.i = extractvalue { i32, i32 } %63, 0
  %64 = inttoptr i32 %asmresult.i.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !159
  call void @dst_release(ptr noundef %64) #17
  %65 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %56, align 8
  %add.ptr.i223 = getelementptr %struct.sock, ptr %call21, i32 1
  %66 = ptrtoint ptr %add.ptr.i223 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 2, ptr %add.ptr.i223, align 4
  %src_port = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %src_port, align 4
  %addrrem = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i223, i32 0, i32 2
  %69 = ptrtoint ptr %addrrem to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %addrrem, align 4
  %services = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 10
  %70 = ptrtoint ptr %services to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %services, align 2
  %services_rem = getelementptr %struct.sock, ptr %call21, i32 1, i32 0, i32 8
  %72 = ptrtoint ptr %services_rem to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %services_rem, align 4
  %info = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 11
  %73 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %info, align 1
  %info_rem = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i223, i32 0, i32 19
  %75 = ptrtoint ptr %info_rem to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %info_rem, align 2
  %segsize = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 14
  %76 = ptrtoint ptr %segsize to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %segsize, align 2
  %segsize_rem = getelementptr %struct.sock, ptr %call21, i32 1, i32 0, i32 9
  %78 = ptrtoint ptr %segsize_rem to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %segsize_rem, align 4
  %accept_mode = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 25
  %79 = ptrtoint ptr %accept_mode to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %accept_mode, align 2
  %accept_mode35 = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i223, i32 0, i32 25
  %81 = ptrtoint ptr %accept_mode35 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %accept_mode35, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 230, i16 %77)
  %cmp39 = icmp ult i16 %77, 230
  br i1 %cmp39, label %if.then41, label %skb_dst.exit.if.end44_crit_edge

skb_dst.exit.if.end44_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then41:                                        ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  %82 = ptrtoint ptr %segsize_rem to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 230, ptr %segsize_rem, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %skb_dst.exit.if.end44_crit_edge
  %83 = ptrtoint ptr %services_rem to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %services_rem, align 4
  %85 = and i8 %84, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp49 = icmp eq i8 %85, 0
  br i1 %cmp49, label %if.then51, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_no_fc_max_cwnd to i32))
  %86 = load i32, ptr @decnet_no_fc_max_cwnd, align 4
  %max_window = getelementptr %struct.sock, ptr %call21, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 3
  %87 = ptrtoint ptr %max_window to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %max_window, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end44.if.end53_crit_edge
  %skc_state55 = getelementptr inbounds %struct.sock_common, ptr %call21, i32 0, i32 4
  %88 = ptrtoint ptr %skc_state55 to i32
  call void @__asan_store1_noabort(i32 %88)
  store volatile i8 10, ptr %skc_state55, align 2
  %addr = getelementptr %struct.sock, ptr %call21, i32 1, i32 5
  %addr58 = getelementptr %struct.sock, ptr %1, i32 1, i32 5
  %89 = call ptr @memcpy(ptr %addr, ptr %addr58, i32 26)
  %sdn_flags = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i223, i32 0, i32 32, i32 1
  %90 = ptrtoint ptr %sdn_flags to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sdn_flags, align 2
  %92 = and i8 %91, -2
  store i8 %92, ptr %sdn_flags, align 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %93 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %95 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len, align 4
  %sdn_objnum.i = getelementptr inbounds %struct.sockaddr_dn, ptr %addr, i32 0, i32 2
  %sdn_objnamel.i = getelementptr %struct.sock, ptr %call21, i32 1, i32 6
  %sdn_objname.i = getelementptr inbounds %struct.sockaddr_dn, ptr %addr, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp.i238 = icmp slt i32 %96, 2
  %97 = call ptr @memset(ptr %sdn_objnum.i, i32 0, i32 19)
  br i1 %cmp.i238, label %if.end53.dn_username2sockaddr.exit_crit_edge, label %if.end.i239

if.end53.dn_username2sockaddr.exit_crit_edge:     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_username2sockaddr.exit

if.end.i239:                                      ; preds = %if.end53
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %94, align 1
  %100 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %99, label %if.end.i239.dn_username2sockaddr.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb3.i
    i8 2, label %sw.bb4.i
    i8 4, label %sw.bb6.i
  ]

if.end.i239.dn_username2sockaddr.exit_crit_edge:  ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_username2sockaddr.exit

sw.bb.i:                                          ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr.i = getelementptr i8, ptr %94, i32 1
  %101 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %incdec.ptr.i, align 1
  %103 = ptrtoint ptr %sdn_objnum.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %sdn_objnum.i, align 1
  br label %dn_username2sockaddr.exit

sw.bb3.i:                                         ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr1.i = getelementptr i8, ptr %94, i32 2
  %sub.i240 = add nsw i32 %96, -2
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #19
  %sub5.i = add nsw i32 %96, -6
  %add.ptr.i241 = getelementptr i8, ptr %94, i32 6
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #19
  %sub7.i = add nsw i32 %96, -10
  %add.ptr8.i = getelementptr i8, ptr %94, i32 10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb4.i, %sw.bb3.i
  %len.addr.0.i = phi i32 [ %sub7.i, %sw.bb6.i ], [ %sub5.i, %sw.bb4.i ], [ %sub.i240, %sw.bb3.i ]
  %data.addr.0.i = phi ptr [ %add.ptr8.i, %sw.bb6.i ], [ %add.ptr.i241, %sw.bb4.i ], [ %incdec.ptr1.i, %sw.bb3.i ]
  %namel.0.i = phi i32 [ 12, %sw.bb6.i ], [ 12, %sw.bb4.i ], [ 16, %sw.bb3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.0.i)
  %cmp10.i = icmp slt i32 %len.addr.0.i, 1
  br i1 %cmp10.i, label %sw.epilog.i.dn_username2sockaddr.exit_crit_edge, label %if.end13.i

sw.epilog.i.dn_username2sockaddr.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_username2sockaddr.exit

if.end13.i:                                       ; preds = %sw.epilog.i
  %104 = ptrtoint ptr %data.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %data.addr.0.i, align 1
  %conv15.i = zext i8 %105 to i16
  %106 = shl nuw i16 %conv15.i, 8
  %107 = ptrtoint ptr %sdn_objnamel.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %sdn_objnamel.i, align 2
  %conv18.i = zext i8 %105 to i32
  %108 = xor i32 %conv18.i, -1
  %sub19.i = add i32 %len.addr.0.i, %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i)
  %cmp20.i = icmp slt i32 %sub19.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %namel.0.i, i32 %conv18.i)
  %cmp24.i = icmp ult i32 %namel.0.i, %conv18.i
  %or.cond.i = or i1 %cmp24.i, %cmp20.i
  br i1 %or.cond.i, label %if.end13.i.dn_username2sockaddr.exit_crit_edge, label %if.end27.i

if.end13.i.dn_username2sockaddr.exit_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_username2sockaddr.exit

if.end27.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr14.i = getelementptr i8, ptr %data.addr.0.i, i32 1
  %109 = call ptr @memcpy(ptr %sdn_objname.i, ptr %incdec.ptr14.i, i32 %conv18.i)
  %sub32.i = sub nsw i32 %96, %sub19.i
  br label %dn_username2sockaddr.exit

dn_username2sockaddr.exit:                        ; preds = %if.end27.i, %if.end13.i.dn_username2sockaddr.exit_crit_edge, %sw.epilog.i.dn_username2sockaddr.exit_crit_edge, %sw.bb.i, %if.end.i239.dn_username2sockaddr.exit_crit_edge, %if.end53.dn_username2sockaddr.exit_crit_edge
  %retval.0.i = phi i32 [ %sub32.i, %if.end27.i ], [ 2, %sw.bb.i ], [ -1, %if.end53.dn_username2sockaddr.exit_crit_edge ], [ -1, %if.end.i239.dn_username2sockaddr.exit_crit_edge ], [ -1, %sw.epilog.i.dn_username2sockaddr.exit_crit_edge ], [ -1, %if.end13.i.dn_username2sockaddr.exit_crit_edge ]
  %call67 = call ptr @skb_pull(ptr noundef nonnull %skb.0, i32 noundef %retval.0.i) #17
  %110 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data, align 4
  %112 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len, align 4
  %peer = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i223, i32 0, i32 33
  %sdn_objnum.i243 = getelementptr inbounds %struct.sockaddr_dn, ptr %peer, i32 0, i32 2
  %sdn_objnamel.i244 = getelementptr inbounds %struct.sockaddr_dn, ptr %peer, i32 0, i32 3
  %sdn_objname.i245 = getelementptr inbounds %struct.sockaddr_dn, ptr %peer, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp.i246 = icmp slt i32 %113, 2
  %114 = call ptr @memset(ptr %sdn_objnum.i243, i32 0, i32 19)
  br i1 %cmp.i246, label %dn_username2sockaddr.exit.dn_username2sockaddr.exit275_crit_edge, label %if.end.i247

dn_username2sockaddr.exit.dn_username2sockaddr.exit275_crit_edge: ; preds = %dn_username2sockaddr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_username2sockaddr.exit275

if.end.i247:                                      ; preds = %dn_username2sockaddr.exit
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %111, align 1
  %117 = zext i8 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %116, label %if.end.i247.dn_username2sockaddr.exit275_crit_edge [
    i8 0, label %sw.bb.i249
    i8 1, label %sw.bb3.i252
    i8 2, label %sw.bb4.i255
    i8 4, label %sw.bb6.i258
  ]

if.end.i247.dn_username2sockaddr.exit275_crit_edge: ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_username2sockaddr.exit275

sw.bb.i249:                                       ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr.i248 = getelementptr i8, ptr %111, i32 1
  %118 = ptrtoint ptr %incdec.ptr.i248 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %incdec.ptr.i248, align 1
  %120 = ptrtoint ptr %sdn_objnum.i243 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %sdn_objnum.i243, align 1
  br label %dn_username2sockaddr.exit275

sw.bb3.i252:                                      ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr1.i250 = getelementptr i8, ptr %111, i32 2
  %sub.i251 = add nsw i32 %113, -2
  br label %sw.epilog.i263

sw.bb4.i255:                                      ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #19
  %sub5.i253 = add nsw i32 %113, -6
  %add.ptr.i254 = getelementptr i8, ptr %111, i32 6
  br label %sw.epilog.i263

sw.bb6.i258:                                      ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #19
  %sub7.i256 = add nsw i32 %113, -10
  %add.ptr8.i257 = getelementptr i8, ptr %111, i32 10
  br label %sw.epilog.i263

sw.epilog.i263:                                   ; preds = %sw.bb6.i258, %sw.bb4.i255, %sw.bb3.i252
  %len.addr.0.i259 = phi i32 [ %sub7.i256, %sw.bb6.i258 ], [ %sub5.i253, %sw.bb4.i255 ], [ %sub.i251, %sw.bb3.i252 ]
  %data.addr.0.i260 = phi ptr [ %add.ptr8.i257, %sw.bb6.i258 ], [ %add.ptr.i254, %sw.bb4.i255 ], [ %incdec.ptr1.i250, %sw.bb3.i252 ]
  %namel.0.i261 = phi i32 [ 12, %sw.bb6.i258 ], [ 12, %sw.bb4.i255 ], [ 16, %sw.bb3.i252 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.0.i259)
  %cmp10.i262 = icmp slt i32 %len.addr.0.i259, 1
  br i1 %cmp10.i262, label %sw.epilog.i263.dn_username2sockaddr.exit275_crit_edge, label %if.end13.i270

sw.epilog.i263.dn_username2sockaddr.exit275_crit_edge: ; preds = %sw.epilog.i263
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_username2sockaddr.exit275

if.end13.i270:                                    ; preds = %sw.epilog.i263
  %121 = ptrtoint ptr %data.addr.0.i260 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %data.addr.0.i260, align 1
  %conv15.i264 = zext i8 %122 to i16
  %123 = shl nuw i16 %conv15.i264, 8
  %124 = ptrtoint ptr %sdn_objnamel.i244 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %sdn_objnamel.i244, align 2
  %conv18.i265 = zext i8 %122 to i32
  %125 = xor i32 %conv18.i265, -1
  %sub19.i266 = add i32 %len.addr.0.i259, %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i266)
  %cmp20.i267 = icmp slt i32 %sub19.i266, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %namel.0.i261, i32 %conv18.i265)
  %cmp24.i268 = icmp ult i32 %namel.0.i261, %conv18.i265
  %or.cond.i269 = or i1 %cmp24.i268, %cmp20.i267
  br i1 %or.cond.i269, label %if.end13.i270.dn_username2sockaddr.exit275_crit_edge, label %if.end27.i273

if.end13.i270.dn_username2sockaddr.exit275_crit_edge: ; preds = %if.end13.i270
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_username2sockaddr.exit275

if.end27.i273:                                    ; preds = %if.end13.i270
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr14.i271 = getelementptr i8, ptr %data.addr.0.i260, i32 1
  %126 = call ptr @memcpy(ptr %sdn_objname.i245, ptr %incdec.ptr14.i271, i32 %conv18.i265)
  %sub32.i272 = sub nsw i32 %113, %sub19.i266
  br label %dn_username2sockaddr.exit275

dn_username2sockaddr.exit275:                     ; preds = %if.end27.i273, %if.end13.i270.dn_username2sockaddr.exit275_crit_edge, %sw.epilog.i263.dn_username2sockaddr.exit275_crit_edge, %sw.bb.i249, %if.end.i247.dn_username2sockaddr.exit275_crit_edge, %dn_username2sockaddr.exit.dn_username2sockaddr.exit275_crit_edge
  %retval.0.i274 = phi i32 [ %sub32.i272, %if.end27.i273 ], [ 2, %sw.bb.i249 ], [ -1, %dn_username2sockaddr.exit.dn_username2sockaddr.exit275_crit_edge ], [ -1, %if.end.i247.dn_username2sockaddr.exit275_crit_edge ], [ -1, %sw.epilog.i263.dn_username2sockaddr.exit275_crit_edge ], [ -1, %if.end13.i270.dn_username2sockaddr.exit275_crit_edge ]
  %call72 = call ptr @skb_pull(ptr noundef nonnull %skb.0, i32 noundef %retval.0.i274) #17
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 2
  %127 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %src, align 2
  %a_addr = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i223, i32 0, i32 33, i32 5, i32 1
  %129 = ptrtoint ptr %a_addr to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %a_addr, align 2
  %130 = ptrtoint ptr %cb17 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %cb17, align 4
  %a_addr80 = getelementptr %struct.sock, ptr %call21, i32 1, i32 7, i32 2, i32 0, i32 0, i32 1
  %132 = ptrtoint ptr %a_addr80 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %a_addr80, align 2
  %133 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %134, align 1
  %call83 = call ptr @skb_pull(ptr noundef nonnull %skb.0, i32 noundef 1) #17
  %conv84 = zext i8 %136 to i32
  %and85 = and i32 %conv84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %dn_username2sockaddr.exit275.if.end89_crit_edge, label %if.then87

dn_username2sockaddr.exit275.if.end89_crit_edge:  ; preds = %dn_username2sockaddr.exit275
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

if.then87:                                        ; preds = %dn_username2sockaddr.exit275
  call void @__sanitizer_cov_trace_pc() #19
  %accessdata = getelementptr %struct.sock, ptr %call21, i32 1, i32 4, i32 0, i32 0, i32 0, i32 1
  %137 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data, align 4
  %incdec.ptr.i279 = getelementptr i8, ptr %138, i32 1
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %138, align 1
  %acc_userl.i = getelementptr inbounds %struct.accessdata_dn, ptr %accessdata, i32 0, i32 4
  %141 = ptrtoint ptr %acc_userl.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %acc_userl.i, align 1
  %acc_user.i = getelementptr inbounds %struct.accessdata_dn, ptr %accessdata, i32 0, i32 5
  %conv.i = zext i8 %140 to i32
  %142 = call ptr @memcpy(ptr %acc_user.i, ptr %incdec.ptr.i279, i32 %conv.i)
  %add.ptr.i280 = getelementptr i8, ptr %incdec.ptr.i279, i32 %conv.i
  %incdec.ptr4.i = getelementptr i8, ptr %add.ptr.i280, i32 1
  %143 = ptrtoint ptr %add.ptr.i280 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %add.ptr.i280, align 1
  %acc_passl.i = getelementptr inbounds %struct.accessdata_dn, ptr %accessdata, i32 0, i32 2
  %145 = ptrtoint ptr %acc_passl.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %acc_passl.i, align 1
  %acc_pass.i = getelementptr inbounds %struct.accessdata_dn, ptr %accessdata, i32 0, i32 3
  %conv6.i = zext i8 %144 to i32
  %146 = call ptr @memcpy(ptr %acc_pass.i, ptr %incdec.ptr4.i, i32 %conv6.i)
  %add.ptr9.i = getelementptr i8, ptr %incdec.ptr4.i, i32 %conv6.i
  %incdec.ptr10.i = getelementptr i8, ptr %add.ptr9.i, i32 1
  %147 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %add.ptr9.i, align 1
  %149 = ptrtoint ptr %accessdata to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %accessdata, align 1
  %acc_acc.i = getelementptr inbounds %struct.accessdata_dn, ptr %accessdata, i32 0, i32 1
  %conv12.i = zext i8 %148 to i32
  %150 = call ptr @memcpy(ptr %acc_acc.i, ptr %incdec.ptr10.i, i32 %conv12.i)
  %151 = load i8, ptr %acc_passl.i, align 1
  %conv16.i = zext i8 %151 to i32
  %152 = load i8, ptr %acc_userl.i, align 1
  %conv18.i281 = zext i8 %152 to i32
  %add.i = add nuw nsw i32 %conv12.i, 3
  %add19.i = add nuw nsw i32 %add.i, %conv16.i
  %add20.i = add nuw nsw i32 %add19.i, %conv18.i281
  %call.i282 = call ptr @skb_pull(ptr noundef nonnull %skb.0, i32 noundef %add20.i) #17
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %dn_username2sockaddr.exit275.if.end89_crit_edge
  %and91 = and i32 %conv84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end89.if.end95_crit_edge, label %if.then93

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

if.then93:                                        ; preds = %if.end89
  %153 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %data, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %156)
  %cmp.i285 = icmp ugt i8 %156, 16
  br i1 %cmp.i285, label %do.body4.i, label %dn_user_copy.exit, !prof !150

do.body4.i:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/decnet/af_decnet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1024, 0\0A.popsection", ""() #17, !srcloc !160
  unreachable

dn_user_copy.exit:                                ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  %conndata_in = getelementptr %struct.sock, ptr %call21, i32 1, i32 0, i32 10, i32 0, i32 0, i32 2
  %conv1.i = zext i8 %156 to i32
  %conv.i286 = zext i8 %156 to i16
  %incdec.ptr.i287 = getelementptr i8, ptr %154, i32 1
  %157 = shl nuw nsw i16 %conv.i286, 8
  %opt_optl.i = getelementptr inbounds %struct.optdata_dn, ptr %conndata_in, i32 0, i32 1
  %158 = ptrtoint ptr %opt_optl.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %opt_optl.i, align 2
  %159 = ptrtoint ptr %conndata_in to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %conndata_in, align 2
  %opt_data.i = getelementptr %struct.sock, ptr %call21, i32 1, i32 0, i32 10, i32 0, i32 0, i32 3
  %160 = call ptr @memcpy(ptr %opt_data.i, ptr %incdec.ptr.i287, i32 %conv1.i)
  %add.i288 = add nuw nsw i32 %conv1.i, 1
  %call.i289 = call ptr @skb_pull(ptr noundef nonnull %skb.0, i32 noundef %add.i288) #17
  br label %if.end95

if.end95:                                         ; preds = %dn_user_copy.exit, %if.end89.if.end95_crit_edge
  %and97 = and i32 %conv84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end95.if.end105_crit_edge, label %if.then99

if.end95.if.end105_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end105

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #19
  %sdn_flags102 = getelementptr %struct.sock, ptr %call21, i32 1, i32 7, i32 2, i32 0, i32 0, i32 2
  %161 = ptrtoint ptr %sdn_flags102 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %sdn_flags102, align 2
  %163 = or i8 %162, 2
  store i8 %163, ptr %sdn_flags102, align 2
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %if.end95.if.end105_crit_edge
  %and107 = and i32 %conv84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end105.if.end116_crit_edge, label %if.then109

if.end105.if.end116_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116

if.then109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  %sdn_flags112 = getelementptr %struct.sock, ptr %call21, i32 1, i32 7, i32 2, i32 0, i32 0, i32 2
  %164 = ptrtoint ptr %sdn_flags112 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %sdn_flags112, align 2
  %166 = or i8 %165, 4
  store i8 %166, ptr %sdn_flags112, align 2
  br label %if.end116

if.end116:                                        ; preds = %if.then109, %if.end105.if.end116_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %skb.0, i32 noundef 0) #17
  %conndata_out = getelementptr %struct.sock, ptr %call21, i32 1, i32 0, i32 11, i32 0, i32 0, i32 3
  %conndata_out119 = getelementptr %struct.sock, ptr %1, i32 1, i32 0, i32 11, i32 0, i32 0, i32 3
  %167 = call ptr @memcpy(ptr %conndata_out, ptr %conndata_out119, i32 20)
  %discdata_out = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i223, i32 0, i32 30
  %discdata_out122 = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 30
  %168 = call ptr @memcpy(ptr %discdata_out, ptr %discdata_out122, i32 20)
  call void @lock_sock_nested(ptr noundef nonnull %call21, i32 noundef 0) #17
  %call123 = call fastcc i32 @dn_hash_sock(ptr noundef nonnull %call21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %if.then126, label %if.end116.if.end136_crit_edge

if.end116.if.end136_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end136

if.then126:                                       ; preds = %if.end116
  %169 = getelementptr inbounds %struct.sock_common, ptr %call21, i32 0, i32 13
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %and.i.i296 = and i32 %171, -257
  store i32 %and.i.i296, ptr %169, align 4
  call void @dn_send_conn_ack(ptr noundef nonnull %call21) #17
  %172 = ptrtoint ptr %accept_mode35 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %accept_mode35, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %cmp130 = icmp eq i8 %173, 0
  br i1 %cmp130, label %if.then132, label %if.then126.if.end136_crit_edge

if.then126.if.end136_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end136

if.then132:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #19
  %174 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sk_allocation, align 8
  %call134 = call fastcc i32 @dn_confirm_accept(ptr noundef nonnull %call21, ptr noundef nonnull %timeo, i32 noundef %175)
  br label %if.end136

if.end136:                                        ; preds = %if.then132, %if.then126.if.end136_crit_edge, %if.end116.if.end136_crit_edge
  %err.0 = phi i32 [ %call134, %if.then132 ], [ 0, %if.then126.if.end136_crit_edge ], [ %call123, %if.end116.if.end136_crit_edge ]
  call void @release_sock(ptr noundef nonnull %call21) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end136, %if.then24, %if.then13, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %49, %if.then13 ], [ -105, %if.then24 ], [ %err.0, %if.end136 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %add.ptr.i = getelementptr %struct.sock, ptr %1, i32 1
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sock, align 128
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %if.then.if.end_crit_edge, label %land.lhs.true4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true4:                                   ; preds = %if.then
  %accept_mode = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 25
  %5 = ptrtoint ptr %accept_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %accept_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp5 = icmp eq i8 %6, 0
  br i1 %cmp5, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %if.then.if.end_crit_edge
  %peer8 = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 33
  %7 = call ptr @memcpy(ptr %uaddr, ptr %peer8, i32 26)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %addr = getelementptr %struct.sock, ptr %1, i32 1, i32 5
  %8 = call ptr @memcpy(ptr %uaddr, ptr %addr, i32 26)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %land.lhs.true4.cleanup_crit_edge ], [ 26, %if.else ], [ 26, %if.end ]
  tail call void @release_sock(ptr noundef %1) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_poll(ptr noundef %file, ptr noundef %sock, ptr noundef %wait) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %call2 = tail call i32 @datagram_poll(ptr noundef %file, ptr noundef %sock, ptr noundef %wait) #17
  %other_receive_queue = getelementptr %struct.sock, ptr %1, i32 1, i32 21
  %2 = ptrtoint ptr %other_receive_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %other_receive_queue, align 4
  %cmp.i = icmp eq ptr %3, %other_receive_queue
  %or = or i32 %call2, 128
  %spec.select = select i1 %cmp.i, i32 %call2, i32 %or
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35093, label %entry.sw.bb_crit_edge
    i32 35094, label %entry.sw.bb_crit_edge76
    i32 35077, label %sw.bb3
    i32 21521, label %sw.bb6
    i32 21531, label %sw.bb14
  ]

entry.sw.bb_crit_edge76:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge76
  %3 = inttoptr i32 %arg to ptr
  %call2 = tail call i32 @dn_dev_ioctl(i32 noundef %cmd, ptr noundef %3) #17
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr %struct.sock, ptr %1, i32 1
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %other_receive_queue = getelementptr %struct.sock, ptr %1, i32 1, i32 21
  %4 = ptrtoint ptr %other_receive_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %other_receive_queue, align 4
  %cmp.i = icmp ne ptr %5, %other_receive_queue
  %lnot.ext = zext i1 %cmp.i to i32
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %7)
  %cmp.not = icmp eq i8 %7, 11
  %spec.store.select = select i1 %cmp.not, i32 %lnot.ext, i32 -107
  tail call void @release_sock(ptr noundef %1) #17
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_sndbuf, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #17
  %10 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i.neg = add i32 %9, 1
  %sub = sub i32 %sub.i.neg, %11
  %12 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %13 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1239) #17
  %14 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #14, !srcloc !161
  %and.i = and i32 %16, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #17, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  %17 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %13, i32 %12, i32 -1226833921) #17, !srcloc !164
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #17, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %other_receive_queue15 = getelementptr %struct.sock, ptr %1, i32 1, i32 21
  %18 = ptrtoint ptr %other_receive_queue15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %other_receive_queue15, align 4
  %cmp.i70 = icmp eq ptr %19, %other_receive_queue15
  %tobool17.not71 = icmp eq ptr %19, null
  %tobool17.not = or i1 %cmp.i70, %tobool17.not71
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #19
  %len = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  br label %if.end24

if.else:                                          ; preds = %sw.bb14
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %skb.072 = load ptr, ptr %sk_receive_queue, align 4
  %cmp20.not73 = icmp eq ptr %skb.072, %sk_receive_queue
  br i1 %cmp20.not73, label %if.else.if.end24_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %skb.075 = phi ptr [ %skb.0, %for.body.for.body_crit_edge ], [ %skb.072, %if.else.for.body_crit_edge ]
  %amount.074 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %len22 = getelementptr inbounds %struct.sk_buff, ptr %skb.075, i32 0, i32 6
  %23 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len22, align 4
  %add = add i32 %24, %amount.074
  %25 = ptrtoint ptr %skb.075 to i32
  call void @__asan_load4_noabort(i32 %25)
  %skb.0 = load ptr, ptr %skb.075, align 4
  %cmp20.not = icmp eq ptr %skb.0, %sk_receive_queue
  br i1 %cmp20.not, label %for.body.if.end24_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.end24:                                         ; preds = %for.body.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.then18
  %amount.1 = phi i32 [ %21, %if.then18 ], [ 0, %if.else.if.end24_crit_edge ], [ %add, %for.body.if.end24_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #17
  %26 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1252) #17
  %27 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i66 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i66 to ptr
  %cpu_domain.i.i67 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i67) #14, !srcloc !161
  %and.i68 = and i32 %29, -13
  %or.i69 = or i32 %and.i68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i69) #17, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  %30 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %26, i32 %amount.1, i32 -1226833921) #17, !srcloc !165
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #17, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %sw.bb6, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %sw.bb3 ], [ %call2, %sw.bb ], [ %30, %if.end24 ], [ %17, %sw.bb6 ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr %struct.sock, ptr %1, i32 1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp5 = icmp eq i8 %9, 10
  br i1 %cmp5, label %lor.lhs.false.out_crit_edge, label %if.end8

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end8:                                          ; preds = %lor.lhs.false
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %10 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %11 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sk_ack_backlog, align 4
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 10, ptr %skc_state, align 2
  %sdn_flags.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 32, i32 1
  %13 = ptrtoint ptr %sdn_flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sdn_flags.i, align 2
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end.i:                                         ; preds = %if.end8
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @dn_hash_lock) #17
  %pprev.i.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %16 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i.i.not.i.i, label %if.end.i.sk_del_node_init.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.sk_del_node_init.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sk_del_node_init.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %18 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %17, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.if.then.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %17, ptr %pprev14.i.i.i.i.i, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.if.then.i.i_crit_edge
  %23 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %pprev.i.i.i.i.i.i, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #17
  %24 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !150

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 729, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #17
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #17, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.end.i.i.sk_del_node_init.exit.i_crit_edge, !prof !150

if.end.i.i.sk_del_node_init.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sk_del_node_init.exit.i

if.then3.i.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #17
  br label %sk_del_node_init.exit.i

sk_del_node_init.exit.i:                          ; preds = %if.then3.i.i.i.i.i, %if.end.i.i.sk_del_node_init.exit.i_crit_edge, %if.end.i.sk_del_node_init.exit.i_crit_edge
  %addrloc.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 1
  %27 = ptrtoint ptr %addrloc.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %addrloc.i, align 2
  %addr4.i = getelementptr %struct.sock, ptr %1, i32 1, i32 5
  %sdn_objnum.i.i = getelementptr inbounds %struct.sockaddr_dn, ptr %addr4.i, i32 0, i32 2
  %28 = ptrtoint ptr %sdn_objnum.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sdn_objnum.i.i, align 1
  %conv.i.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i13.i = icmp eq i8 %29, 0
  br i1 %cmp.i13.i, label %if.then.i14.i, label %sk_del_node_init.exit.i.listen_hash.exit.i_crit_edge

sk_del_node_init.exit.i.listen_hash.exit.i_crit_edge: ; preds = %sk_del_node_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %listen_hash.exit.i

if.then.i14.i:                                    ; preds = %sk_del_node_init.exit.i
  %sdn_objnamel.i.i = getelementptr %struct.sock, ptr %1, i32 1, i32 6
  %30 = ptrtoint ptr %sdn_objnamel.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sdn_objnamel.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp519.not.i.i = icmp eq i16 %31, 0
  br i1 %cmp519.not.i.i, label %if.then.i14.i.listen_hash.exit.i_crit_edge, label %for.body.preheader.i.i

if.then.i14.i.listen_hash.exit.i_crit_edge:       ; preds = %if.then.i14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %listen_hash.exit.i

for.body.preheader.i.i:                           ; preds = %if.then.i14.i
  %conv2.i.i = zext i16 %31 to i32
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #17
  %33 = tail call i16 @llvm.umax.i16(i16 %32, i16 1) #17
  %umax.i.i = zext i16 %33 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %hash.021.i.i = phi i32 [ %xor8.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %conv2.i.i, %for.body.preheader.i.i ]
  %i.020.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr %struct.sockaddr_dn, ptr %addr4.i, i32 0, i32 4, i32 %i.020.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i, align 1
  %conv7.i.i = zext i8 %35 to i32
  %xor.i.i = xor i32 %hash.021.i.i, %conv7.i.i
  %shl.i.i = shl i32 %xor.i.i, 3
  %xor8.i.i = xor i32 %shl.i.i, %xor.i.i
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.listen_hash.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.body.i.i.listen_hash.exit.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %listen_hash.exit.i

listen_hash.exit.i:                               ; preds = %for.body.i.i.listen_hash.exit.i_crit_edge, %if.then.i14.i.listen_hash.exit.i_crit_edge, %sk_del_node_init.exit.i.listen_hash.exit.i_crit_edge
  %hash.1.i.i = phi i32 [ %conv.i.i, %sk_del_node_init.exit.i.listen_hash.exit.i_crit_edge ], [ 0, %if.then.i14.i.listen_hash.exit.i_crit_edge ], [ %xor8.i.i, %for.body.i.i.listen_hash.exit.i_crit_edge ]
  %and.i.i = and i32 %hash.1.i.i, 255
  %arrayidx9.i.i = getelementptr [256 x %struct.hlist_head], ptr @dn_sk_hash, i32 0, i32 %and.i.i
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #17
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #17, !srcloc !149
  %asmresult.i.i.i.i.i.i.i16.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i16.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i16.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %listen_hash.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !150

listen_hash.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %listen_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %listen_hash.exit.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i16.i, 1
  %37 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !151

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %listen_hash.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %listen_hash.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #17
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %38 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %39 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx9.i.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %40, ptr %38, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i.i, label %sock_hold.exit.i.i.sk_add_node.exit.i_crit_edge, label %do.body12.i.i.i.i

sock_hold.exit.i.i.sk_add_node.exit.i_crit_edge:  ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sk_add_node.exit.i

do.body12.i.i.i.i:                                ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %38, ptr %pprev.i.i.i.i, align 4
  br label %sk_add_node.exit.i

sk_add_node.exit.i:                               ; preds = %do.body12.i.i.i.i, %sock_hold.exit.i.i.sk_add_node.exit.i_crit_edge
  %43 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %38, ptr %arrayidx9.i.i, align 4
  %44 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx9.i.i, ptr %pprev.i.i.i.i.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @dn_hash_lock) #17
  br label %out

out:                                              ; preds = %sk_add_node.exit.i, %if.end8.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ 0, %if.end8.out_crit_edge ], [ 0, %sk_add_node.exit.i ]
  tail call void @release_sock(ptr noundef %1) #17
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_shutdown(ptr nocapture noundef readonly %sock, i32 noundef %how) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sock, align 128
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %if.end5 [
    i32 1, label %entry.out_crit_edge
    i32 4, label %out.fold.split
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end5:                                          ; preds = %entry
  %add.ptr.i = getelementptr %struct.sock, ptr %1, i32 1
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp7 = icmp ne i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %how)
  %cmp11.not = icmp eq i32 %how, 2
  %or.cond = and i1 %cmp11.not, %cmp7
  br i1 %or.cond, label %if.end14, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %7 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %sk_shutdown, align 2
  tail call fastcc void @dn_destroy_sock(ptr noundef %1)
  br label %out

out.fold.split:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

out:                                              ; preds = %out.fold.split, %if.end14, %if.end5.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -107, %entry.out_crit_edge ], [ -22, %if.end5.out_crit_edge ], [ 0, %if.end14 ], [ 0, %out.fold.split ]
  tail call void @release_sock(ptr noundef %1) #17
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #4 align 64 {
entry:
  %timeo.i = alloca i32, align 4
  %u.i = alloca %union.anon.190, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  %add.ptr.i.i = getelementptr %struct.sock, ptr %3, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo.i) #17
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %u.i) #17
  %4 = call ptr @memset(ptr %u.i, i32 255, i32 124)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optlen)
  %tobool.not.i = icmp eq i32 %optlen, 0
  %.pre.i = extractvalue [2 x i32] %optval.coerce, 0
  br i1 %tobool.not.i, label %entry.if.end4.i_crit_edge, label %land.lhs.true.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %retval.0.i.i = icmp eq i32 %.pre.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 124, i32 %optlen)
  %cmp.i = icmp ugt i32 %optlen, 124
  %or.cond.i = or i1 %retval.0.i.i, %cmp.i
  br i1 %or.cond.i, label %land.lhs.true.i.__dn_setsockopt.exit.thread_crit_edge, label %land.lhs.true.i.if.end4.i_crit_edge

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i

land.lhs.true.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end4.i:                                        ; preds = %land.lhs.true.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  %5 = inttoptr i32 %.pre.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end4.i
  call void @__check_object_size(ptr noundef nonnull %u.i, i32 noundef %optlen, i1 noundef zeroext false) #17
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #17
  %call.i.i.i.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i.i.i, label %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:   ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i.i
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %optlen, i32 -1226833920) #22, !srcloc !166
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.then.i7.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, !prof !151

land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i.i.i

if.then.i7.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %u.i, i32 noundef %optlen) #17
  %7 = call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #14, !srcloc !161
  %and.i.i.i.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #17, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %u.i, ptr noundef %5, i32 noundef %optlen) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #17, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i7.i.i.i.i, %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i.i = phi i32 [ %optlen, %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge ], [ %call1.i.i.i.i.i.i, %if.then.i7.i.i.i.i ], [ %optlen, %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %res.0.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end8.i_crit_edge, label %if.then11.i.i.i.i.i, !prof !151

if.end.i.i.i.i.i.if.end8.i_crit_edge:             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i.i.i.i = sub i32 %optlen, %res.0.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %u.i, i32 %sub.i.i.i.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i.i)
  br label %__dn_setsockopt.exit.thread

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  %11 = call ptr @memcpy(ptr %u.i, ptr %5, i32 %optlen)
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.if.end8.i_crit_edge
  %12 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %optname, label %land.lhs.true [
    i32 1, label %sw.bb.i
    i32 10, label %sw.bb31.i
    i32 2, label %sw.bb51.i
    i32 4, label %sw.bb79.i
    i32 5, label %sw.bb104.i
    i32 6, label %sw.bb113.i
    i32 11, label %sw.bb122.i
    i32 12, label %sw.bb140.i
    i32 13, label %sw.bb154.i
    i32 14, label %sw.bb170.i
    i32 15, label %sw.bb186.i
  ]

sw.bb.i:                                          ; preds = %if.end8.i
  %13 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp9.i = icmp eq i32 %14, 3
  br i1 %cmp9.i, label %sw.bb.i.__dn_setsockopt.exit.thread_crit_edge, label %if.end11.i

sw.bb.i.__dn_setsockopt.exit.thread_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end11.i:                                       ; preds = %sw.bb.i
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i.i, align 4
  %.off.i = add i8 %16, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %optlen)
  %cmp22.not.i = icmp eq i32 %optlen, 20
  %or.cond1.i = and i1 %cmp22.not.i, %switch.i
  br i1 %or.cond1.i, label %if.end25.i, label %if.end11.i.__dn_setsockopt.exit.thread_crit_edge

if.end11.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end25.i:                                       ; preds = %if.end11.i
  %opt_optl.i = getelementptr inbounds %struct.optdata_dn, ptr %u.i, i32 0, i32 1
  %17 = ptrtoint ptr %opt_optl.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %opt_optl.i, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %19)
  %cmp27.i = icmp ugt i16 %19, 16
  br i1 %cmp27.i, label %if.end25.i.__dn_setsockopt.exit.thread_crit_edge, label %if.end30.i

if.end25.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end30.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  %conndata_out.i = getelementptr %struct.sock, ptr %3, i32 1, i32 0, i32 11, i32 0, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %conndata_out.i, ptr %u.i, i32 20)
  br label %__dn_setsockopt.exit.thread

sw.bb31.i:                                        ; preds = %if.end8.i
  %21 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp33.not.i = icmp eq i32 %22, 3
  br i1 %cmp33.not.i, label %sw.bb31.i.if.end40.i_crit_edge, label %land.lhs.true35.i

sw.bb31.i.if.end40.i_crit_edge:                   ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40.i

land.lhs.true35.i:                                ; preds = %sw.bb31.i
  %accept_mode.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 25
  %23 = ptrtoint ptr %accept_mode.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %accept_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp37.i = icmp eq i8 %24, 0
  br i1 %cmp37.i, label %land.lhs.true35.i.__dn_setsockopt.exit.thread_crit_edge, label %land.lhs.true35.i.if.end40.i_crit_edge

land.lhs.true35.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40.i

land.lhs.true35.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end40.i:                                       ; preds = %land.lhs.true35.i.if.end40.i_crit_edge, %sw.bb31.i.if.end40.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %optlen)
  %cmp41.not.i = icmp eq i32 %optlen, 20
  br i1 %cmp41.not.i, label %if.end44.i, label %if.end40.i.__dn_setsockopt.exit.thread_crit_edge

if.end40.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end44.i:                                       ; preds = %if.end40.i
  %opt_optl45.i = getelementptr inbounds %struct.optdata_dn, ptr %u.i, i32 0, i32 1
  %25 = ptrtoint ptr %opt_optl45.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %opt_optl45.i, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26) #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %27)
  %cmp47.i = icmp ugt i16 %27, 16
  br i1 %cmp47.i, label %if.end44.i.__dn_setsockopt.exit.thread_crit_edge, label %if.end50.i

if.end44.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end50.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  %discdata_out.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 30
  %28 = call ptr @memcpy(ptr %discdata_out.i, ptr %u.i, i32 20)
  br label %__dn_setsockopt.exit.thread

sw.bb51.i:                                        ; preds = %if.end8.i
  %29 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp53.i = icmp eq i32 %30, 3
  br i1 %cmp53.i, label %sw.bb51.i.__dn_setsockopt.exit.thread_crit_edge, label %if.end56.i

sw.bb51.i.__dn_setsockopt.exit.thread_crit_edge:  ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end56.i:                                       ; preds = %sw.bb51.i
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp59.not.i = icmp eq i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %optlen)
  %cmp63.not.i = icmp eq i32 %optlen, 123
  %or.cond2.i = and i1 %cmp63.not.i, %cmp59.not.i
  br i1 %or.cond2.i, label %if.end66.i, label %if.end56.i.__dn_setsockopt.exit.thread_crit_edge

if.end56.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end66.i:                                       ; preds = %if.end56.i
  %33 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %34)
  %cmp68.i = icmp ugt i8 %34, 40
  br i1 %cmp68.i, label %if.end66.i.__dn_setsockopt.exit.thread_crit_edge, label %lor.lhs.false.i

if.end66.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end66.i
  %acc_passl.i = getelementptr inbounds %struct.accessdata_dn, ptr %u.i, i32 0, i32 2
  %35 = ptrtoint ptr %acc_passl.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %acc_passl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %36)
  %cmp71.i = icmp ugt i8 %36, 40
  br i1 %cmp71.i, label %lor.lhs.false.i.__dn_setsockopt.exit.thread_crit_edge, label %lor.lhs.false73.i

lor.lhs.false.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

lor.lhs.false73.i:                                ; preds = %lor.lhs.false.i
  %acc_userl.i = getelementptr inbounds %struct.accessdata_dn, ptr %u.i, i32 0, i32 4
  %37 = ptrtoint ptr %acc_userl.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %acc_userl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %38)
  %cmp75.i = icmp ugt i8 %38, 40
  br i1 %cmp75.i, label %lor.lhs.false73.i.__dn_setsockopt.exit.thread_crit_edge, label %if.end78.i

lor.lhs.false73.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %lor.lhs.false73.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end78.i:                                       ; preds = %lor.lhs.false73.i
  call void @__sanitizer_cov_trace_pc() #19
  %accessdata.i = getelementptr %struct.sock, ptr %3, i32 1, i32 4, i32 0, i32 0, i32 0, i32 1
  %39 = call ptr @memcpy(ptr %accessdata.i, ptr %u.i, i32 123)
  br label %__dn_setsockopt.exit.thread

sw.bb79.i:                                        ; preds = %if.end8.i
  %40 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp81.i = icmp eq i32 %41, 3
  br i1 %cmp81.i, label %sw.bb79.i.__dn_setsockopt.exit.thread_crit_edge, label %if.end84.i

sw.bb79.i.__dn_setsockopt.exit.thread_crit_edge:  ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end84.i:                                       ; preds = %sw.bb79.i
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp87.not.i = icmp eq i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp91.not.i = icmp eq i32 %optlen, 4
  %or.cond3.i = and i1 %cmp91.not.i, %cmp87.not.i
  br i1 %or.cond3.i, label %if.end94.i, label %if.end84.i.__dn_setsockopt.exit.thread_crit_edge

if.end84.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end94.i:                                       ; preds = %if.end84.i
  %44 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %switch4.i = icmp ult i32 %45, 2
  br i1 %switch4.i, label %if.end101.i, label %if.end94.i.__dn_setsockopt.exit.thread_crit_edge

if.end94.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end101.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv102.i = trunc i32 %45 to i8
  %accept_mode103.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 25
  %46 = ptrtoint ptr %accept_mode103.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv102.i, ptr %accept_mode103.i, align 2
  br label %__dn_setsockopt.exit.thread

sw.bb104.i:                                       ; preds = %if.end8.i
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp107.not.i = icmp eq i8 %48, 2
  br i1 %cmp107.not.i, label %__dn_setsockopt.exit, label %sw.bb104.i.__dn_setsockopt.exit.thread_crit_edge

sw.bb104.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

sw.bb113.i:                                       ; preds = %if.end8.i
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp116.not.i = icmp eq i8 %50, 2
  br i1 %cmp116.not.i, label %if.end119.i, label %sw.bb113.i.__dn_setsockopt.exit.thread_crit_edge

sw.bb113.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %sw.bb113.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end119.i:                                      ; preds = %sw.bb113.i
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %add.ptr.i.i, align 4
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 66
  %52 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %sk_shutdown.i, align 2
  %sk_allocation121.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 41
  %53 = ptrtoint ptr %sk_allocation121.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sk_allocation121.i, align 8
  call void @dn_nsp_send_disc(ptr noundef %3, i8 noundef zeroext 56, i16 noundef zeroext 0, i32 noundef %54) #17
  br label %__dn_setsockopt.exit.thread

sw.bb122.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp123.not.i = icmp eq i32 %optlen, 4
  br i1 %cmp123.not.i, label %if.end126.i, label %sw.bb122.i.__dn_setsockopt.exit.thread_crit_edge

sw.bb122.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %sw.bb122.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end126.i:                                      ; preds = %sw.bb122.i
  %55 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2046, i32 %56)
  %cmp127.i = icmp ugt i32 %56, 2046
  br i1 %cmp127.i, label %if.end130.thread.i, label %if.end130.i

if.end130.thread.i:                               ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #19
  %57 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2046, ptr %u.i, align 4
  br label %if.end134.i

if.end130.i:                                      ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp131.i = icmp eq i32 %56, 0
  br i1 %cmp131.i, label %if.end130.i.__dn_setsockopt.exit.thread_crit_edge, label %if.end130.i.if.end134.i_crit_edge

if.end130.i.if.end134.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end134.i

if.end130.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end134.i:                                      ; preds = %if.end130.i.if.end134.i_crit_edge, %if.end130.thread.i
  %58 = phi i32 [ 2046, %if.end130.thread.i ], [ %56, %if.end130.i.if.end134.i_crit_edge ]
  %max_window.i = getelementptr %struct.sock, ptr %3, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 3
  %59 = ptrtoint ptr %max_window.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %max_window.i, align 4
  %snd_window.i = getelementptr %struct.sock, ptr %3, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 6
  %60 = ptrtoint ptr %snd_window.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %snd_window.i, align 4
  %62 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp135.i = icmp ugt i32 %61, %63
  br i1 %cmp135.i, label %if.then137.i, label %if.end134.i.__dn_setsockopt.exit.thread_crit_edge

if.end134.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.then137.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #19
  %64 = ptrtoint ptr %snd_window.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %snd_window.i, align 4
  br label %__dn_setsockopt.exit.thread

sw.bb140.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp141.not.i = icmp eq i32 %optlen, 4
  br i1 %cmp141.not.i, label %if.end144.i, label %sw.bb140.i.__dn_setsockopt.exit.thread_crit_edge

sw.bb140.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end144.i:                                      ; preds = %sw.bb140.i
  %nonagle.i = getelementptr %struct.sock, ptr %3, i32 1, i32 0, i32 10
  %65 = ptrtoint ptr %nonagle.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nonagle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp146.i = icmp eq i8 %66, 2
  br i1 %cmp146.i, label %if.end144.i.__dn_setsockopt.exit.thread_crit_edge, label %if.end149.i

if.end144.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end149.i:                                      ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #19
  %67 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp150.i = icmp ne i32 %68, 0
  %conv152.i = zext i1 %cmp150.i to i8
  %69 = ptrtoint ptr %nonagle.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv152.i, ptr %nonagle.i, align 4
  br label %__dn_setsockopt.exit.thread

sw.bb154.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp155.not.i = icmp eq i32 %optlen, 4
  br i1 %cmp155.not.i, label %if.end158.i, label %sw.bb154.i.__dn_setsockopt.exit.thread_crit_edge

sw.bb154.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %sw.bb154.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end158.i:                                      ; preds = %sw.bb154.i
  %nonagle159.i = getelementptr %struct.sock, ptr %3, i32 1, i32 0, i32 10
  %70 = ptrtoint ptr %nonagle159.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %nonagle159.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp161.i = icmp eq i8 %71, 1
  br i1 %cmp161.i, label %if.end158.i.__dn_setsockopt.exit.thread_crit_edge, label %if.end164.i

if.end158.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end164.i:                                      ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #19
  %72 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp165.i = icmp eq i32 %73, 0
  %conv168.i = select i1 %cmp165.i, i8 0, i8 2
  %74 = ptrtoint ptr %nonagle159.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv168.i, ptr %nonagle159.i, align 4
  br label %__dn_setsockopt.exit.thread

sw.bb170.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optlen)
  %cmp171.not.i = icmp eq i32 %optlen, 1
  br i1 %cmp171.not.i, label %if.end174.i, label %sw.bb170.i.__dn_setsockopt.exit.thread_crit_edge

sw.bb170.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %sw.bb170.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end174.i:                                      ; preds = %sw.bb170.i
  %75 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %u.i, align 4
  %conv175.i = zext i8 %76 to i32
  %and.i = and i32 %conv175.i, 243
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp176.not.i = icmp ne i32 %and.i, 1
  %and181.i = and i32 %conv175.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and181.i)
  %cmp182.i = icmp eq i32 %and181.i, 12
  %or.cond5.i = or i1 %cmp176.not.i, %cmp182.i
  br i1 %or.cond5.i, label %if.end174.i.__dn_setsockopt.exit.thread_crit_edge, label %if.end185.i

if.end174.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end185.i:                                      ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #19
  %services_loc.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 18
  %77 = ptrtoint ptr %services_loc.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %services_loc.i, align 1
  br label %__dn_setsockopt.exit.thread

sw.bb186.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optlen)
  %cmp187.not.i = icmp eq i32 %optlen, 1
  br i1 %cmp187.not.i, label %if.end190.i, label %sw.bb186.i.__dn_setsockopt.exit.thread_crit_edge

sw.bb186.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %sw.bb186.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end190.i:                                      ; preds = %sw.bb186.i
  %78 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %79)
  %tobool193.not.i = icmp ult i8 %79, 4
  br i1 %tobool193.not.i, label %if.end195.i, label %if.end190.i.__dn_setsockopt.exit.thread_crit_edge

if.end190.i.__dn_setsockopt.exit.thread_crit_edge: ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_setsockopt.exit.thread

if.end195.i:                                      ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #19
  %info_loc.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 20
  %80 = ptrtoint ptr %info_loc.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %info_loc.i, align 1
  br label %__dn_setsockopt.exit.thread

__dn_setsockopt.exit.thread:                      ; preds = %if.end195.i, %if.end190.i.__dn_setsockopt.exit.thread_crit_edge, %sw.bb186.i.__dn_setsockopt.exit.thread_crit_edge, %if.end185.i, %if.end174.i.__dn_setsockopt.exit.thread_crit_edge, %sw.bb170.i.__dn_setsockopt.exit.thread_crit_edge, %if.end164.i, %if.end158.i.__dn_setsockopt.exit.thread_crit_edge, %sw.bb154.i.__dn_setsockopt.exit.thread_crit_edge, %if.end149.i, %if.end144.i.__dn_setsockopt.exit.thread_crit_edge, %sw.bb140.i.__dn_setsockopt.exit.thread_crit_edge, %if.then137.i, %if.end134.i.__dn_setsockopt.exit.thread_crit_edge, %if.end130.i.__dn_setsockopt.exit.thread_crit_edge, %sw.bb122.i.__dn_setsockopt.exit.thread_crit_edge, %if.end119.i, %sw.bb113.i.__dn_setsockopt.exit.thread_crit_edge, %sw.bb104.i.__dn_setsockopt.exit.thread_crit_edge, %if.end101.i, %if.end94.i.__dn_setsockopt.exit.thread_crit_edge, %if.end84.i.__dn_setsockopt.exit.thread_crit_edge, %sw.bb79.i.__dn_setsockopt.exit.thread_crit_edge, %if.end78.i, %lor.lhs.false73.i.__dn_setsockopt.exit.thread_crit_edge, %lor.lhs.false.i.__dn_setsockopt.exit.thread_crit_edge, %if.end66.i.__dn_setsockopt.exit.thread_crit_edge, %if.end56.i.__dn_setsockopt.exit.thread_crit_edge, %sw.bb51.i.__dn_setsockopt.exit.thread_crit_edge, %if.end50.i, %if.end44.i.__dn_setsockopt.exit.thread_crit_edge, %if.end40.i.__dn_setsockopt.exit.thread_crit_edge, %land.lhs.true35.i.__dn_setsockopt.exit.thread_crit_edge, %if.end30.i, %if.end25.i.__dn_setsockopt.exit.thread_crit_edge, %if.end11.i.__dn_setsockopt.exit.thread_crit_edge, %sw.bb.i.__dn_setsockopt.exit.thread_crit_edge, %if.then11.i.i.i.i.i, %land.lhs.true.i.__dn_setsockopt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %if.then11.i.i.i.i.i ], [ 0, %if.end30.i ], [ 0, %if.end50.i ], [ 0, %if.end78.i ], [ 0, %if.end101.i ], [ 0, %if.end119.i ], [ 0, %if.end149.i ], [ 0, %if.end164.i ], [ 0, %if.end185.i ], [ 0, %if.end195.i ], [ 0, %if.then137.i ], [ 0, %if.end134.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end190.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %sw.bb186.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end174.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %sw.bb170.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end158.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %sw.bb154.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end144.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %sw.bb140.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end130.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %sw.bb122.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %sw.bb113.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %sw.bb104.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end94.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end84.i.__dn_setsockopt.exit.thread_crit_edge ], [ -106, %sw.bb79.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end66.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %lor.lhs.false73.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end56.i.__dn_setsockopt.exit.thread_crit_edge ], [ -106, %sw.bb51.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end44.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end40.i.__dn_setsockopt.exit.thread_crit_edge ], [ -107, %land.lhs.true35.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end25.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %if.end11.i.__dn_setsockopt.exit.thread_crit_edge ], [ -106, %sw.bb.i.__dn_setsockopt.exit.thread_crit_edge ], [ -22, %land.lhs.true.i.__dn_setsockopt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %u.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.i) #17
  call void @release_sock(ptr noundef %1) #17
  br label %if.end

__dn_setsockopt.exit:                             ; preds = %sw.bb104.i
  %sk_rcvtimeo.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 62
  %81 = ptrtoint ptr %sk_rcvtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sk_rcvtimeo.i.i, align 4
  %83 = ptrtoint ptr %timeo.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %timeo.i, align 4
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 41
  %84 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sk_allocation.i, align 8
  %call112.i = call fastcc i32 @dn_confirm_accept(ptr noundef %3, ptr noundef nonnull %timeo.i, i32 noundef %85) #17
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %u.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.i) #17
  call void @release_sock(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -92, i32 %call112.i)
  %cmp = icmp eq i32 %call112.i, -92
  br i1 %cmp, label %__dn_setsockopt.exit.if.then_crit_edge, label %__dn_setsockopt.exit.if.end_crit_edge

__dn_setsockopt.exit.if.end_crit_edge:            ; preds = %__dn_setsockopt.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

__dn_setsockopt.exit.if.then_crit_edge:           ; preds = %__dn_setsockopt.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

land.lhs.true:                                    ; preds = %if.end8.i
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %u.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.i) #17
  call void @release_sock(ptr noundef %1) #17
  %optname.off = add i32 %optname, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %optname.off)
  %switch = icmp ult i32 %optname.off, 3
  br i1 %switch, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %__dn_setsockopt.exit.if.then_crit_edge
  %call7 = call i32 @nf_setsockopt(ptr noundef %1, i8 noundef zeroext 12, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %__dn_setsockopt.exit.if.end_crit_edge, %__dn_setsockopt.exit.thread
  %err.0 = phi i32 [ %call7, %if.then ], [ %call112.i, %__dn_setsockopt.exit.if.end_crit_edge ], [ -92, %land.lhs.true.if.end_crit_edge ], [ %retval.0.i.ph, %__dn_setsockopt.exit.thread ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #4 align 64 {
entry:
  %link.i = alloca %struct.linkinfo_dn, align 4
  %val.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  %add.ptr.i.i = getelementptr %struct.sock, ptr %3, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link.i) #17
  %4 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %link.i, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #17
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !167
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1537) #17
  %6 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #14, !srcloc !161
  %and.i.i = and i32 %8, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #17, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #17, !srcloc !168
  %asmresult.i = extractvalue { i32, i32 } %9, 0
  %asmresult3.i = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #17, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__dn_getsockopt.exit.thread_crit_edge

entry.__dn_getsockopt.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_getsockopt.exit.thread

if.end.i:                                         ; preds = %entry
  %10 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %optname, label %land.lhs.true [
    i32 1, label %sw.bb.i
    i32 10, label %sw.bb7.i
    i32 2, label %sw.bb11.i
    i32 4, label %sw.bb15.i
    i32 7, label %sw.bb19.i
    i32 11, label %sw.bb29.i
    i32 12, label %sw.bb33.i
    i32 13, label %sw.bb39.i
    i32 14, label %sw.bb48.i
    i32 15, label %sw.bb53.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %11 = tail call i32 @llvm.umin.i32(i32 %asmresult3.i, i32 20) #17
  %conndata_in.i = getelementptr %struct.sock, ptr %3, i32 1, i32 0, i32 10, i32 0, i32 0, i32 2
  br label %sw.epilog60.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %12 = tail call i32 @llvm.umin.i32(i32 %asmresult3.i, i32 20) #17
  %discdata_in.i = getelementptr %struct.sock, ptr %3, i32 1, i32 0, i32 15, i32 0, i32 1
  br label %sw.epilog60.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = tail call i32 @llvm.umin.i32(i32 %asmresult3.i, i32 123) #17
  %accessdata.i = getelementptr %struct.sock, ptr %3, i32 1, i32 4, i32 0, i32 0, i32 0, i32 1
  br label %sw.epilog60.i

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i)
  %14 = icmp ne i32 %asmresult3.i, 0
  %15 = zext i1 %14 to i32
  %accept_mode.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 25
  br label %sw.epilog60.i

sw.bb19.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %16 = tail call i32 @llvm.umin.i32(i32 %asmresult3.i, i32 4) #17
  %17 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %link.i, align 4
  %18 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sock, align 128
  %switch.tableidx = add i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  %.sink.i = select i1 %20, i8 %switch.offset, i8 0
  %idn_linkstate28.i = getelementptr inbounds %struct.linkinfo_dn, ptr %link.i, i32 0, i32 1
  %21 = ptrtoint ptr %idn_linkstate28.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink.i, ptr %idn_linkstate28.i, align 2
  %segsize_rem.i = getelementptr %struct.sock, ptr %3, i32 1, i32 0, i32 9
  %22 = ptrtoint ptr %segsize_rem.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %segsize_rem.i, align 4
  %24 = ptrtoint ptr %link.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %link.i, align 4
  br label %if.then.i.i.i.i

sw.bb29.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %25 = tail call i32 @llvm.umin.i32(i32 %asmresult3.i, i32 4) #17
  %max_window.i = getelementptr %struct.sock, ptr %3, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 3
  br label %sw.epilog60.i

sw.bb33.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %26 = tail call i32 @llvm.umin.i32(i32 %asmresult3.i, i32 4) #17
  %nonagle.i = getelementptr %struct.sock, ptr %3, i32 1, i32 0, i32 10
  %27 = ptrtoint ptr %nonagle.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nonagle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp37.i = icmp eq i8 %28, 1
  %conv38.i = zext i1 %cmp37.i to i32
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv38.i, ptr %val.i, align 4
  br label %if.then.i.i.i.i

sw.bb39.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %30 = tail call i32 @llvm.umin.i32(i32 %asmresult3.i, i32 4) #17
  %nonagle44.i = getelementptr %struct.sock, ptr %3, i32 1, i32 0, i32 10
  %31 = ptrtoint ptr %nonagle44.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nonagle44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp46.i = icmp eq i8 %32, 2
  %conv47.i = zext i1 %cmp46.i to i32
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv47.i, ptr %val.i, align 4
  br label %if.then.i.i.i.i

sw.bb48.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i)
  %34 = icmp ne i32 %asmresult3.i, 0
  %35 = zext i1 %34 to i32
  %services_rem.i = getelementptr %struct.sock, ptr %3, i32 1, i32 0, i32 8
  br label %sw.epilog60.i

sw.bb53.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i)
  %36 = icmp ne i32 %asmresult3.i, 0
  %37 = zext i1 %36 to i32
  %info_rem.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 19
  br label %sw.epilog60.i

sw.epilog60.i:                                    ; preds = %sw.bb53.i, %sw.bb48.i, %sw.bb29.i, %sw.bb15.i, %sw.bb11.i, %sw.bb7.i, %sw.bb.i
  %r_data.0.i = phi ptr [ %info_rem.i, %sw.bb53.i ], [ %services_rem.i, %sw.bb48.i ], [ %max_window.i, %sw.bb29.i ], [ %accept_mode.i, %sw.bb15.i ], [ %accessdata.i, %sw.bb11.i ], [ %discdata_in.i, %sw.bb7.i ], [ %conndata_in.i, %sw.bb.i ]
  %r_len.10.i = phi i32 [ %37, %sw.bb53.i ], [ %35, %sw.bb48.i ], [ %25, %sw.bb29.i ], [ %15, %sw.bb15.i ], [ %13, %sw.bb11.i ], [ %12, %sw.bb7.i ], [ %11, %sw.bb.i ]
  %tobool61.not.i = icmp eq ptr %r_data.0.i, null
  br i1 %tobool61.not.i, label %sw.epilog60.i.if.end79.i_crit_edge, label %sw.epilog60.i.if.then.i.i.i.i_crit_edge

sw.epilog60.i.if.then.i.i.i.i_crit_edge:          ; preds = %sw.epilog60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i.i

sw.epilog60.i.if.end79.i_crit_edge:               ; preds = %sw.epilog60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end79.i

if.then.i.i.i.i:                                  ; preds = %sw.epilog60.i.if.then.i.i.i.i_crit_edge, %sw.bb39.i, %sw.bb33.i, %sw.bb19.i
  %r_len.1019.i = phi i32 [ %r_len.10.i, %sw.epilog60.i.if.then.i.i.i.i_crit_edge ], [ %16, %sw.bb19.i ], [ %26, %sw.bb33.i ], [ %30, %sw.bb39.i ]
  %r_data.017.i = phi ptr [ %r_data.0.i, %sw.epilog60.i.if.then.i.i.i.i_crit_edge ], [ %link.i, %sw.bb19.i ], [ %val.i, %sw.bb33.i ], [ %val.i, %sw.bb39.i ]
  call void @__check_object_size(ptr noundef nonnull %r_data.017.i, i32 noundef %r_len.1019.i, i1 noundef zeroext true) #17
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #17
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %r_len.1019.i, i32 -1226833920) #22, !srcloc !169
  %asmresult.i.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %r_data.017.i, i32 noundef %r_len.1019.i) #17
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %r_data.017.i, i32 noundef %r_len.1019.i) #17
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %r_len.1019.i, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %r_len.1019.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool64.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %copy_to_user.exit.i.__dn_getsockopt.exit.thread_crit_edge

copy_to_user.exit.i.__dn_getsockopt.exit.thread_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_getsockopt.exit.thread

if.end66.i:                                       ; preds = %copy_to_user.exit.i
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1632) #17
  %39 = call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i10.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i10.i to ptr
  %cpu_domain.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i11.i) #14, !srcloc !161
  %and.i12.i = and i32 %41, -13
  %or.i13.i = or i32 %and.i12.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i13.i) #17, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  %42 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %r_len.1019.i, i32 -1226833921) #17, !srcloc !170
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #17, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool76.not.i = icmp eq i32 %42, 0
  br i1 %tobool76.not.i, label %if.end66.i.if.end79.i_crit_edge, label %if.end66.i.__dn_getsockopt.exit.thread_crit_edge

if.end66.i.__dn_getsockopt.exit.thread_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dn_getsockopt.exit.thread

if.end66.i.if.end79.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.end66.i.if.end79.i_crit_edge, %sw.epilog60.i.if.end79.i_crit_edge
  br label %__dn_getsockopt.exit.thread

__dn_getsockopt.exit.thread:                      ; preds = %if.end79.i, %if.end66.i.__dn_getsockopt.exit.thread_crit_edge, %copy_to_user.exit.i.__dn_getsockopt.exit.thread_crit_edge, %entry.__dn_getsockopt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %if.end66.i.__dn_getsockopt.exit.thread_crit_edge ], [ -14, %copy_to_user.exit.i.__dn_getsockopt.exit.thread_crit_edge ], [ -14, %entry.__dn_getsockopt.exit.thread_crit_edge ], [ 0, %if.end79.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link.i) #17
  call void @release_sock(ptr noundef %1) #17
  br label %cleanup27

land.lhs.true:                                    ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link.i) #17
  tail call void @release_sock(ptr noundef %1) #17
  %switch.tableidx50 = add i32 %optname, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx50)
  %43 = icmp ult i32 %switch.tableidx50, 5
  br i1 %43, label %switch.hole_check, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %switch.hole_check.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #17
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1516) #17
  %44 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #14, !srcloc !161
  %and.i = and i32 %46, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #17, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  %47 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #17, !srcloc !171
  %asmresult = extractvalue { i32, i32 } %47, 0
  %asmresult10 = extractvalue { i32, i32 } %47, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #17, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  %48 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %asmresult10, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %call13 = call i32 @nf_getsockopt(ptr noundef %1, i8 noundef zeroext 12, i32 noundef %optname, ptr noundef %optval, ptr noundef nonnull %len) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, -1
  br i1 %cmp14, label %if.then15, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1521) #17
  %51 = call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i42 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i42 to ptr
  %cpu_domain.i.i43 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i43) #14, !srcloc !161
  %and.i44 = and i32 %53, -13
  %or.i45 = or i32 %and.i44, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i45) #17, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  %54 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %50, i32 -1226833921) #17, !srcloc !172
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #17, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !163
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then15, %if.end.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %call13, %if.end.cleanup.thread_crit_edge ], [ %54, %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #17
  br label %cleanup27

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #17
  br label %cleanup27

switch.hole_check:                                ; preds = %land.lhs.true
  %switch.maskindex = trunc i32 %switch.tableidx50 to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %55 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %switch.lobit.not = icmp eq i8 %55, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then_crit_edge, label %switch.hole_check.cleanup27_crit_edge

switch.hole_check.cleanup27_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup27

switch.hole_check.if.then_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

cleanup27:                                        ; preds = %switch.hole_check.cleanup27_crit_edge, %cleanup, %cleanup.thread, %__dn_getsockopt.exit.thread
  %retval.1 = phi i32 [ -14, %cleanup ], [ %retval.0.i.ph, %__dn_getsockopt.exit.thread ], [ %err.1.ph, %cleanup.thread ], [ -92, %switch.hole_check.cleanup27_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size) #4 align 64 {
entry:
  %err = alloca i32, align 4
  %timeo = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %add.ptr.i = getelementptr %struct.sock, ptr %1, i32 1
  %data_xmit_queue = getelementptr %struct.sock, ptr %1, i32 1, i32 8, i32 1
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #17
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_namelen, align 4
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #17
  %and = and i32 %3, -49350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup162_crit_edge

entry.cleanup162_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup162

if.end:                                           ; preds = %entry
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %5, label %if.end.cleanup162_crit_edge [
    i32 0, label %if.end.if.end4_crit_edge
    i32 26, label %if.end.if.end4_crit_edge401
  ]

if.end.if.end4_crit_edge401:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.end.cleanup162_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup162

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.end.if.end4_crit_edge401
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %and5 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %cond.false.i, label %if.end4.sock_sndtimeo.exit_crit_edge

if.end4.sock_sndtimeo.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %9 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end4.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.false.i ], [ 0, %if.end4.sock_sndtimeo.exit_crit_edge ]
  %11 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %timeo, align 4
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp8 = icmp eq i16 %13, 1
  br i1 %cmp8, label %if.then10, label %sock_sndtimeo.exit.if.end15_crit_edge

sock_sndtimeo.exit.if.end15_crit_edge:            ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then10:                                        ; preds = %sock_sndtimeo.exit
  %and11 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -22, ptr %err, align 4
  br label %out

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %3, 128
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %sock_sndtimeo.exit.if.end15_crit_edge
  %flags.0 = phi i32 [ %or, %if.end14 ], [ %3, %sock_sndtimeo.exit.if.end15_crit_edge ]
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i, align 4
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %16, label %dn_check_state.exit.thread326 [
    i8 11, label %dn_check_state.exit.thread
    i8 2, label %sw.bb1.i
    i8 6, label %if.end15.sw.bb3.i_crit_edge
    i8 5, label %if.end15.sw.bb3.i_crit_edge402
    i8 1, label %sw.bb5.i
  ]

if.end15.sw.bb3.i_crit_edge402:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb3.i

if.end15.sw.bb3.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb3.i

dn_check_state.exit.thread:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %err, align 4
  br label %if.end19

sw.bb1.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 41
  %19 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_allocation.i, align 8
  %call2.i = call fastcc i32 @dn_confirm_accept(ptr noundef %1, ptr noundef nonnull %timeo, i32 noundef %20) #17
  br label %dn_check_state.exit

sw.bb3.i:                                         ; preds = %if.end15.sw.bb3.i_crit_edge, %if.end15.sw.bb3.i_crit_edge402
  %call4.i = call fastcc i32 @dn_wait_run(ptr noundef %1, ptr noundef nonnull %timeo) #17
  br label %dn_check_state.exit

sw.bb5.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %call6.i = call fastcc i32 @__dn_connect(ptr noundef %1, ptr noundef %7, i32 noundef %5, ptr noundef nonnull %timeo, i32 noundef %flags.0) #17
  br label %dn_check_state.exit

dn_check_state.exit.thread326:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -22, ptr %err, align 4
  br label %out_err

dn_check_state.exit:                              ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb1.i
  %retval.0.i = phi i32 [ %call6.i, %sw.bb5.i ], [ %call4.i, %sw.bb3.i ], [ %call2.i, %sw.bb1.i ]
  %22 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool17.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool17.not, label %dn_check_state.exit.if.end19_crit_edge, label %dn_check_state.exit.out_err_crit_edge

dn_check_state.exit.out_err_crit_edge:            ; preds = %dn_check_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

dn_check_state.exit.if.end19_crit_edge:           ; preds = %dn_check_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.end19:                                         ; preds = %dn_check_state.exit.if.end19_crit_edge, %dn_check_state.exit.thread
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %23 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sk_shutdown, align 2
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool22.not = icmp eq i8 %25, 0
  br i1 %tobool22.not, label %if.end30, label %if.then23

if.then23:                                        ; preds = %if.end19
  %26 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -32, ptr %err, align 4
  %and24 = and i32 %flags.0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %if.then23.out_err_crit_edge

if.then23.out_err_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_err

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  %27 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %call28 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %30, i32 noundef 0) #17
  br label %out_err

if.end30:                                         ; preds = %if.end19
  %and31 = and i32 %flags.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end36_crit_edge, label %land.lhs.true33

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

land.lhs.true33:                                  ; preds = %if.end30
  %sk_dst_cache = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %sk_dst_cache to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk_dst_cache, align 4
  %tobool34.not = icmp eq ptr %32, null
  br i1 %tobool34.not, label %land.lhs.true33.if.end36_crit_edge, label %if.then35

land.lhs.true33.if.end36_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @dst_negative_advice(ptr noundef %1)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %land.lhs.true33.if.end36_crit_edge, %if.end30.if.end36_crit_edge
  %services_rem = getelementptr %struct.sock, ptr %1, i32 1, i32 0, i32 8
  %33 = ptrtoint ptr %services_rem to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %services_rem, align 4
  %35 = and i8 %34, 12
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 19
  %36 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %sk_dst_cache.i.i, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.end36.__sk_dst_get.exit.i_crit_edge

if.end36.__sk_dst_get.exit.i_crit_edge:           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit.i

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end36
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %lor.lhs.false.i.i, label %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit.i

lor.lhs.false.i.i:                                ; preds = %lockdep_sock_is_held.exit.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge

lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.13) #17
  br label %__sk_dst_get.exit.i

__sk_dst_get.exit.i:                              ; preds = %if.then.i.i, %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge, %if.end36.__sk_dst_get.exit.i_crit_edge
  %segsize_loc.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 22
  %38 = ptrtoint ptr %segsize_loc.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %segsize_loc.i, align 2
  %segsize_rem.i = getelementptr %struct.sock, ptr %1, i32 1, i32 0, i32 9
  %40 = ptrtoint ptr %segsize_rem.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %segsize_rem.i, align 4
  %42 = tail call i16 @llvm.umin.i16(i16 %39, i16 %41) #17
  %cond.i265 = zext i16 %42 to i32
  %and.i266 = and i32 %flags.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i266)
  %tobool.not.i = icmp eq i32 %and.i266, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then44

if.end.i:                                         ; preds = %__sk_dst_get.exit.i
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %if.end.i.if.end49_crit_edge, label %if.then5.i

if.end.i.if.end49_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then5.i:                                       ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %37, i32 0, i32 1
  %43 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mtu.i.i, align 4
  %call.i.i = tail call i32 %46(ptr noundef nonnull %37) #17
  %47 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %37, align 4
  %tobool.not.i27.i = icmp eq ptr %48, null
  br i1 %tobool.not.i27.i, label %if.else9.i.i, label %if.then.i29.i

if.then.i29.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #19
  %dn_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 79
  %49 = ptrtoint ptr %dn_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %dn_ptr.i.i, align 4
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 19
  %51 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hard_header_len.i.i, align 2
  %conv.i.i = zext i16 %52 to i32
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 21
  %53 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %needed_headroom.i.i, align 8
  %conv2.i.i = zext i16 %54 to i32
  %add.i.i = add nuw nsw i32 %conv2.i.i, %conv.i.i
  %and.i.i = and i32 %add.i.i, 131056
  %use_long.i.i = getelementptr inbounds %struct.dn_dev, ptr %50, i32 0, i32 3
  %55 = ptrtoint ptr %use_long.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %use_long.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool4.not.i28.i = icmp eq i8 %56, 0
  %mtu.addr.0.v.i.i = select i1 %tobool4.not.i28.i, i32 -6, i32 -21
  %sub.i.i = add i32 %call.i.i, -27
  %mtu.addr.0.i.i = sub i32 %sub.i.i, %and.i.i
  %sub8.i.i = add i32 %mtu.addr.0.i.i, %mtu.addr.0.v.i.i
  br label %dn_mss_from_pmtu.exit.i

if.else9.i.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub10.i.i = add i32 %call.i.i, -48
  br label %dn_mss_from_pmtu.exit.i

dn_mss_from_pmtu.exit.i:                          ; preds = %if.else9.i.i, %if.then.i29.i
  %mtu.addr.1.i.i = phi i32 [ %sub8.i.i, %if.then.i29.i ], [ %sub10.i.i, %if.else9.i.i ]
  %57 = tail call i32 @llvm.umax.i32(i32 %mtu.addr.1.i.i, i32 219) #17
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 %cond.i265) #17
  br label %if.end49

if.then44:                                        ; preds = %__sk_dst_get.exit.i
  %other_xmit_queue = getelementptr %struct.sock, ptr %1, i32 1, i32 9, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp45 = icmp ugt i32 %size, 16
  br i1 %cmp45, label %if.then47, label %if.then44.if.end49_crit_edge

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #19
  %59 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -90, ptr %err, align 4
  br label %out

if.end49:                                         ; preds = %if.then44.if.end49_crit_edge, %dn_mss_from_pmtu.exit.i, %if.end.i.if.end49_crit_edge
  %retval.0.i267330 = phi i32 [ 16, %if.then44.if.end49_crit_edge ], [ %cond.i265, %if.end.i.if.end49_crit_edge ], [ %58, %dn_mss_from_pmtu.exit.i ]
  %queue.0 = phi ptr [ %other_xmit_queue, %if.then44.if.end49_crit_edge ], [ %data_xmit_queue, %if.end.i.if.end49_crit_edge ], [ %data_xmit_queue, %dn_mss_from_pmtu.exit.i ]
  %persist_fxn = getelementptr %struct.sock, ptr %1, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 6
  %60 = ptrtoint ptr %persist_fxn to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @dn_nsp_xmit_timeout, ptr %persist_fxn, align 4
  %61 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %61)
  %timeo.promoted = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp50355.not = icmp eq i32 %size, 0
  br i1 %cmp50355.not, label %if.end49.out.loopexit_crit_edge, label %while.body.lr.ph

if.end49.out.loopexit_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.loopexit

while.body.lr.ph:                                 ; preds = %if.end49
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue.0, i32 0, i32 1
  %snd_window.i = getelementptr %struct.sock, ptr %1, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 6
  %flowrem_oth.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 14
  %flowrem_dat.i = getelementptr %struct.sock, ptr %1, i32 1, i32 0, i32 7
  %62 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %63 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %64 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %65 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %and76 = and i32 %flags.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %66 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %67 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp115.not = icmp eq i8 %35, 0
  %seg_total = getelementptr %struct.sock, ptr %1, i32 1, i32 0, i32 10, i32 0, i32 0, i32 1
  %and134 = and i32 %flags.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  %trunc = trunc i8 %35 to i4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %35)
  %cmp150 = icmp eq i8 %35, 4
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 41
  %persist = getelementptr %struct.sock, ptr %1, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %68 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %sent.0358 = phi i32 [ 0, %while.body.lr.ph ], [ %sent.0.be, %while.cond.backedge.while.body_crit_edge ]
  %call85351356 = phi i32 [ %timeo.promoted, %while.body.lr.ph ], [ %call85349, %while.cond.backedge.while.body_crit_edge ]
  %69 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i268 = icmp eq i32 %70, 0
  br i1 %tobool.not.i268, label %sock_error.exit.thread, label %sock_error.exit, !prof !151

sock_error.exit.thread:                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %71 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %err, align 4
  br label %if.end55

sock_error.exit:                                  ; preds = %while.body
  %call.i.i269 = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #17
  %72 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #17, !srcloc !158
  %asmresult.i.i = extractvalue { i32, i32 } %72, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !174
  %sub.i = sub i32 0, %asmresult.i.i
  %73 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool53.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool53.not, label %sock_error.exit.if.end55_crit_edge, label %sock_error.exit.out.loopexit_crit_edge

sock_error.exit.out.loopexit_crit_edge:           ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.loopexit

sock_error.exit.if.end55_crit_edge:               ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55

if.end55:                                         ; preds = %sock_error.exit.if.end55_crit_edge, %sock_error.exit.thread
  %74 = call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i272 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i272 to ptr
  %task57 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task57, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %stack.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  %82 = and i32 %81, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i273 = icmp eq i32 %82, 0
  br i1 %tobool.not.i273, label %signal_pending.exit, label %if.end55.if.then60_crit_edge, !prof !151

if.end55.if.then60_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then60

signal_pending.exit:                              ; preds = %if.end55
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %79, align 4
  %and1.i.i.i.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool59.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool59.not, label %if.end62, label %signal_pending.exit.if.then60_crit_edge

signal_pending.exit.if.then60_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then60

if.then60:                                        ; preds = %signal_pending.exit.if.then60_crit_edge, %if.end55.if.then60_crit_edge
  %85 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call85351356, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call85351356)
  %cmp.i = icmp eq i32 %call85351356, 2147483647
  %cond.i276 = select i1 %cmp.i, i32 -512, i32 -4
  %86 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %cond.i276, ptr %err, align 4
  br label %out

if.end62:                                         ; preds = %signal_pending.exit
  %sub = sub i32 %size, %sent.0358
  %87 = call i32 @llvm.umin.i32(i32 %sub, i32 %retval.0.i267330)
  %88 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qlen.i.i, align 4
  %90 = ptrtoint ptr %snd_window.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %snd_window.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp.not.i = icmp ult i32 %89, %91
  br i1 %cmp.not.i, label %if.end.i277, label %if.end62.if.then69_crit_edge

if.end62.if.then69_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then69

if.end.i277:                                      ; preds = %if.end62
  %92 = ptrtoint ptr %services_rem to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %services_rem, align 4
  %94 = and i8 %93, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp4.not.i = icmp eq i8 %94, 0
  br i1 %cmp4.not.i, label %if.end.i277.if.end95_crit_edge, label %if.then6.i

if.end.i277.if.end95_crit_edge:                   ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

if.then6.i:                                       ; preds = %if.end.i277
  br i1 %tobool.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then6.i
  %95 = ptrtoint ptr %flowrem_oth.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %flowrem_oth.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %cmp10.i = icmp eq i16 %96, 0
  br i1 %cmp10.i, label %if.then8.i.if.then69_crit_edge, label %if.then8.i.if.end95_crit_edge

if.then8.i.if.end95_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

if.then8.i.if.then69_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then69

if.else.i:                                        ; preds = %if.then6.i
  %97 = ptrtoint ptr %flowrem_dat.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %flowrem_dat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp15.i = icmp eq i16 %98, 0
  br i1 %cmp15.i, label %if.else.i.if.then69_crit_edge, label %if.else.i.if.end95_crit_edge

if.else.i.if.end95_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

if.else.i.if.then69_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then69

if.then69:                                        ; preds = %if.else.i.if.then69_crit_edge, %if.then8.i.if.then69_crit_edge, %if.end62.if.then69_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #17
  %99 = call ptr @memset(ptr %68, i32 255, i32 16)
  %100 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %wait, align 4
  %101 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task57, align 8
  %103 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %62, align 4
  %104 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @woken_wake_function, ptr %63, align 4
  %105 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %64, ptr %64, align 4
  %106 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %64, ptr %65, align 4
  br i1 %tobool77.not, label %if.end79, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #19
  %107 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call85351356, ptr %timeo, align 4
  %108 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -11, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #17
  br label %out

if.end79:                                         ; preds = %if.then69
  %109 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %66, align 8
  call void @add_wait_queue(ptr noundef %110, ptr noundef nonnull %wait) #17
  %111 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %67, align 4
  %113 = and i32 %112, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.i.not.i = icmp eq i32 %113, 0
  br i1 %tobool.i.not.i, label %if.end79.sk_set_bit.exit_crit_edge, label %if.end.i280

if.end79.sk_set_bit.exit_crit_edge:               ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #19
  br label %sk_set_bit.exit

if.end.i280:                                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #19
  %114 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %66, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %115, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #17
  br label %sk_set_bit.exit

sk_set_bit.exit:                                  ; preds = %if.end.i280, %if.end79.sk_set_bit.exit_crit_edge
  call void @release_sock(ptr noundef %1) #17
  %116 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %qlen.i.i, align 4
  %118 = ptrtoint ptr %snd_window.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %snd_window.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp.not.i283 = icmp ult i32 %117, %119
  br i1 %cmp.not.i283, label %if.end.i286, label %sk_set_bit.exit.if.then84_crit_edge

sk_set_bit.exit.if.then84_crit_edge:              ; preds = %sk_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then84

if.end.i286:                                      ; preds = %sk_set_bit.exit
  %120 = ptrtoint ptr %services_rem to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %services_rem, align 4
  %122 = and i8 %121, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp4.not.i285 = icmp eq i8 %122, 0
  br i1 %cmp4.not.i285, label %if.end.i286.if.end86_crit_edge, label %if.then6.i289

if.end.i286.if.end86_crit_edge:                   ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end86

if.then6.i289:                                    ; preds = %if.end.i286
  br i1 %tobool.not.i, label %if.else.i295, label %if.then8.i292

if.then8.i292:                                    ; preds = %if.then6.i289
  %123 = ptrtoint ptr %flowrem_oth.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %flowrem_oth.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %cmp10.i291 = icmp eq i16 %124, 0
  br i1 %cmp10.i291, label %if.then8.i292.if.then84_crit_edge, label %if.then8.i292.if.end86_crit_edge

if.then8.i292.if.end86_crit_edge:                 ; preds = %if.then8.i292
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end86

if.then8.i292.if.then84_crit_edge:                ; preds = %if.then8.i292
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then84

if.else.i295:                                     ; preds = %if.then6.i289
  %125 = ptrtoint ptr %flowrem_dat.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %flowrem_dat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %cmp15.i294 = icmp eq i16 %126, 0
  br i1 %cmp15.i294, label %if.else.i295.if.then84_crit_edge, label %if.else.i295.if.end86_crit_edge

if.else.i295.if.end86_crit_edge:                  ; preds = %if.else.i295
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end86

if.else.i295.if.then84_crit_edge:                 ; preds = %if.else.i295
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then84

if.then84:                                        ; preds = %if.else.i295.if.then84_crit_edge, %if.then8.i292.if.then84_crit_edge, %sk_set_bit.exit.if.then84_crit_edge
  %call85 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %call85351356) #17
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.else.i295.if.end86_crit_edge, %if.then8.i292.if.end86_crit_edge, %if.end.i286.if.end86_crit_edge
  %call85350 = phi i32 [ %call85351356, %if.else.i295.if.end86_crit_edge ], [ %call85351356, %if.then8.i292.if.end86_crit_edge ], [ %call85351356, %if.end.i286.if.end86_crit_edge ], [ %call85, %if.then84 ]
  %127 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task57, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 212
  %129 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %130 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %67, align 4
  %132 = and i32 %131, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.i.not.i317 = icmp eq i32 %132, 0
  br i1 %tobool.i.not.i317, label %if.end86.cleanup_crit_edge, label %if.end.i319

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i319:                                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #19
  %133 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %66, align 8
  %flags.i318 = getelementptr inbounds %struct.socket_wq, ptr %134, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i318) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i319, %if.end86.cleanup_crit_edge
  %135 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile ptr, ptr %66, align 8
  call void @remove_wait_queue(ptr noundef %136, ptr noundef nonnull %wait) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #17
  br label %while.cond.backedge

if.end95:                                         ; preds = %if.else.i.if.end95_crit_edge, %if.then8.i.if.end95_crit_edge, %if.end.i277.if.end95_crit_edge
  %add96 = add i32 %87, 75
  %call.i = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add96, i32 noundef %and76, ptr noundef nonnull %err) #17
  %tobool.not.i320 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i320, label %dn_alloc_send_pskb.exit, label %dn_alloc_send_pskb.exit.thread

dn_alloc_send_pskb.exit:                          ; preds = %if.end95
  %137 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool99.not = icmp eq i32 %138, 0
  br i1 %tobool99.not, label %dn_alloc_send_pskb.exit.while.cond.backedge_crit_edge, label %dn_alloc_send_pskb.exit.out.loopexit_crit_edge

dn_alloc_send_pskb.exit.out.loopexit_crit_edge:   ; preds = %dn_alloc_send_pskb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.loopexit

dn_alloc_send_pskb.exit.while.cond.backedge_crit_edge: ; preds = %dn_alloc_send_pskb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

dn_alloc_send_pskb.exit.thread:                   ; preds = %if.end95
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %139 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 24579, ptr %protocol.i, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %140 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -32768
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %141 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool99.not342 = icmp eq i32 %142, 0
  br i1 %tobool99.not342, label %if.end104, label %dn_alloc_send_pskb.exit.thread.out.loopexit_crit_edge

dn_alloc_send_pskb.exit.thread.out.loopexit_crit_edge: ; preds = %dn_alloc_send_pskb.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.loopexit

if.end104:                                        ; preds = %dn_alloc_send_pskb.exit.thread
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %143 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data.i, align 4
  %add.ptr.i322 = getelementptr i8, ptr %144, i32 75
  store ptr %add.ptr.i322, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %145 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %146, i32 75
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call106 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %87) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp9.i.i.i.i = icmp slt i32 %87, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end104
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !151

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 230, i32 noundef 9, ptr noundef null) #17
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  call void @__check_object_size(ptr noundef %call106, i32 noundef %87, i1 noundef zeroext false) #17
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call106, i32 noundef %87, ptr noundef %msg_iter.i) #17
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %87)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %87
  br i1 %cmp.i.i, label %if.end110, label %if.then109, !prof !151

if.then109:                                       ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %147 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call85351356, ptr %timeo, align 4
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #17
  %148 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -14, ptr %err, align 4
  br label %out

if.end110:                                        ; preds = %copy_from_iter.exit.i.i
  %nsp_flags119 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 13
  br i1 %tobool.not.i, label %if.else, label %if.then113

if.then113:                                       ; preds = %if.end110
  %149 = ptrtoint ptr %nsp_flags119 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 48, ptr %nsp_flags119, align 1
  br i1 %cmp115.not, label %if.then113.if.end156_crit_edge, label %if.then117

if.then113.if.end156_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156

if.then117:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #19
  %150 = ptrtoint ptr %flowrem_oth.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %flowrem_oth.i, align 2
  %dec = add i16 %151, -1
  store i16 %dec, ptr %flowrem_oth.i, align 2
  br label %if.end156

if.else:                                          ; preds = %if.end110
  %152 = ptrtoint ptr %nsp_flags119 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %nsp_flags119, align 1
  %153 = ptrtoint ptr %seg_total to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %seg_total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp120 = icmp eq i32 %154, 0
  %spec.store.select = select i1 %cmp120, i8 32, i8 0
  %155 = ptrtoint ptr %nsp_flags119 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %spec.store.select, ptr %nsp_flags119, align 1
  %156 = ptrtoint ptr %seg_total to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %seg_total, align 4
  %add129 = add i32 %157, %87
  store i32 %add129, ptr %seg_total, align 4
  %add130 = add i32 %87, %sent.0358
  call void @__sanitizer_cov_trace_cmp4(i32 %add130, i32 %size)
  %cmp131 = icmp ne i32 %add130, %size
  %or.cond = or i1 %tobool135.not, %cmp131
  br i1 %or.cond, label %if.end148, label %if.then136

if.then136:                                       ; preds = %if.else
  %158 = ptrtoint ptr %nsp_flags119 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %nsp_flags119, align 1
  %160 = or i8 %159, 64
  store i8 %160, ptr %nsp_flags119, align 1
  %161 = ptrtoint ptr %seg_total to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %seg_total, align 4
  %162 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.58)
  switch i4 %trunc, label %if.then136.if.end156_crit_edge [
    i4 -8, label %if.end148.thread
    i4 4, label %if.then136.if.then152_crit_edge
  ]

if.then136.if.then152_crit_edge:                  ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then152

if.then136.if.end156_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156

if.end148.thread:                                 ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #19
  %163 = ptrtoint ptr %flowrem_dat.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %flowrem_dat.i, align 4
  %dec146 = add i16 %164, -1
  store i16 %dec146, ptr %flowrem_dat.i, align 4
  br label %if.end156

if.end148:                                        ; preds = %if.else
  br i1 %cmp150, label %if.end148.if.then152_crit_edge, label %if.end148.if.end156_crit_edge

if.end148.if.end156_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156

if.end148.if.then152_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then152

if.then152:                                       ; preds = %if.end148.if.then152_crit_edge, %if.then136.if.then152_crit_edge
  %165 = ptrtoint ptr %flowrem_dat.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %flowrem_dat.i, align 4
  %dec154 = add i16 %166, -1
  store i16 %dec154, ptr %flowrem_dat.i, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %if.end148.if.end156_crit_edge, %if.end148.thread, %if.then136.if.end156_crit_edge, %if.then117, %if.then113.if.end156_crit_edge
  %add157 = add i32 %87, %sent.0358
  %167 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sk_allocation, align 8
  call void @dn_nsp_queue_xmit(ptr noundef %1, ptr noundef nonnull %call.i, i32 noundef %168, i32 noundef %and.i266) #17
  %call159 = call i32 @dn_nsp_persist(ptr noundef %1) #17
  %169 = ptrtoint ptr %persist to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %call159, ptr %persist, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end156, %dn_alloc_send_pskb.exit.while.cond.backedge_crit_edge, %cleanup
  %call85349 = phi i32 [ %call85350, %cleanup ], [ %call85351356, %if.end156 ], [ %call85351356, %dn_alloc_send_pskb.exit.while.cond.backedge_crit_edge ]
  %sent.0.be = phi i32 [ %sent.0358, %cleanup ], [ %add157, %if.end156 ], [ %sent.0358, %dn_alloc_send_pskb.exit.while.cond.backedge_crit_edge ]
  %cmp50 = icmp ult i32 %sent.0.be, %size
  br i1 %cmp50, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.out.loopexit_crit_edge

while.cond.backedge.out.loopexit_crit_edge:       ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.loopexit

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

out.loopexit:                                     ; preds = %while.cond.backedge.out.loopexit_crit_edge, %dn_alloc_send_pskb.exit.thread.out.loopexit_crit_edge, %dn_alloc_send_pskb.exit.out.loopexit_crit_edge, %sock_error.exit.out.loopexit_crit_edge, %if.end49.out.loopexit_crit_edge
  %call85352 = phi i32 [ %timeo.promoted, %if.end49.out.loopexit_crit_edge ], [ %call85351356, %sock_error.exit.out.loopexit_crit_edge ], [ %call85351356, %dn_alloc_send_pskb.exit.out.loopexit_crit_edge ], [ %call85349, %while.cond.backedge.out.loopexit_crit_edge ], [ %call85351356, %dn_alloc_send_pskb.exit.thread.out.loopexit_crit_edge ]
  %sent.0.lcssa = phi i32 [ 0, %if.end49.out.loopexit_crit_edge ], [ %sent.0358, %sock_error.exit.out.loopexit_crit_edge ], [ %sent.0358, %dn_alloc_send_pskb.exit.out.loopexit_crit_edge ], [ %sent.0.be, %while.cond.backedge.out.loopexit_crit_edge ], [ %sent.0358, %dn_alloc_send_pskb.exit.thread.out.loopexit_crit_edge ]
  %skb.1.ph = phi ptr [ null, %if.end49.out.loopexit_crit_edge ], [ null, %sock_error.exit.out.loopexit_crit_edge ], [ null, %dn_alloc_send_pskb.exit.out.loopexit_crit_edge ], [ null, %while.cond.backedge.out.loopexit_crit_edge ], [ %call.i, %dn_alloc_send_pskb.exit.thread.out.loopexit_crit_edge ]
  %170 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %call85352, ptr %timeo, align 4
  br label %out

out:                                              ; preds = %out.loopexit, %if.then109, %cleanup.thread, %if.then60, %if.then47, %if.then13
  %sent.1 = phi i32 [ 0, %if.then13 ], [ 0, %if.then47 ], [ %sent.0358, %if.then60 ], [ %sent.0358, %if.then109 ], [ %sent.0358, %cleanup.thread ], [ %sent.0.lcssa, %out.loopexit ]
  %skb.1 = phi ptr [ null, %if.then13 ], [ null, %if.then47 ], [ null, %if.then60 ], [ %call.i, %if.then109 ], [ null, %cleanup.thread ], [ %skb.1.ph, %out.loopexit ]
  call void @kfree_skb_reason(ptr noundef %skb.1, i32 noundef 0) #17
  call void @release_sock(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sent.1)
  %tobool160.not = icmp eq i32 %sent.1, 0
  br i1 %tobool160.not, label %cond.false, label %out.cleanup162_crit_edge

out.cleanup162_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup162

cond.false:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  %171 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %err, align 4
  br label %cleanup162

out_err:                                          ; preds = %if.then26, %if.then23.out_err_crit_edge, %dn_check_state.exit.out_err_crit_edge, %dn_check_state.exit.thread326
  %173 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %err, align 4
  %call161 = tail call i32 @sk_stream_error(ptr noundef %1, i32 noundef %flags.0, i32 noundef %174) #17
  tail call void @release_sock(ptr noundef %1) #17
  br label %cleanup162

cleanup162:                                       ; preds = %out_err, %cond.false, %out.cleanup162_crit_edge, %if.end.cleanup162_crit_edge, %entry.cleanup162_crit_edge
  %retval.0 = phi i32 [ %call161, %out_err ], [ -95, %entry.cleanup162_crit_edge ], [ -22, %if.end.cleanup162_crit_edge ], [ %172, %cond.false ], [ %sent.1, %out.cleanup162_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #4 align 64 {
entry:
  %timeo = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %add.ptr.i = getelementptr %struct.sock, ptr %1, i32 1
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp = icmp ugt i32 %size, 1
  %cond = zext i1 %cmp to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #17
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_rcvtimeo.exit_crit_edge

entry.sock_rcvtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.false.i ], [ 0, %entry.sock_rcvtimeo.exit_crit_edge ]
  %4 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %timeo, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %5 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %sock_rcvtimeo.exit.if.end163_crit_edge

sock_rcvtimeo.exit.if.end163_crit_edge:           ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end163

if.end:                                           ; preds = %sock_rcvtimeo.exit
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %9 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sk_shutdown, align 2
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.if.then149_crit_edge

if.end.if.then149_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then149

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 4
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %13, label %if.end7.if.end163_crit_edge [
    i8 11, label %if.end7.if.end11_crit_edge
    i8 2, label %sw.bb1.i
    i8 6, label %if.end7.sw.bb3.i_crit_edge
    i8 5, label %if.end7.sw.bb3.i_crit_edge441
    i8 1, label %sw.bb5.i
  ]

if.end7.sw.bb3.i_crit_edge441:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb3.i

if.end7.sw.bb3.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb3.i

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.end7.if.end163_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end163

sw.bb1.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 41
  %15 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_allocation.i, align 8
  %call2.i = call fastcc i32 @dn_confirm_accept(ptr noundef %1, ptr noundef nonnull %timeo, i32 noundef %16) #17
  br label %dn_check_state.exit

sw.bb3.i:                                         ; preds = %if.end7.sw.bb3.i_crit_edge, %if.end7.sw.bb3.i_crit_edge441
  %call4.i = call fastcc i32 @dn_wait_run(ptr noundef %1, ptr noundef nonnull %timeo) #17
  br label %dn_check_state.exit

sw.bb5.i:                                         ; preds = %if.end7
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %17 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_socket.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 128
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %20, label %if.end22.i [
    i32 3, label %sw.bb5.i.if.end163_crit_edge
    i32 2, label %if.then18.i
  ]

sw.bb5.i.if.end163_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end163

if.then18.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %18, align 128
  br label %if.end163

if.end22.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end163

dn_check_state.exit:                              ; preds = %sw.bb3.i, %sw.bb1.i
  %retval.0.i = phi i32 [ %call4.i, %sw.bb3.i ], [ %call2.i, %sw.bb1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool9.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool9.not, label %dn_check_state.exit.if.end11_crit_edge, label %dn_check_state.exit.if.end156_crit_edge

dn_check_state.exit.if.end156_crit_edge:          ; preds = %dn_check_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156

dn_check_state.exit.if.end11_crit_edge:           ; preds = %dn_check_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.end11:                                         ; preds = %dn_check_state.exit.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %and12 = and i32 %flags, -16708
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.if.end163_crit_edge

if.end11.if.end163_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end163

if.end15:                                         ; preds = %if.end11
  %and16 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %other_receive_queue = getelementptr %struct.sock, ptr %1, i32 1, i32 21
  %spec.select = select i1 %tobool17.not, ptr %sk_receive_queue, ptr %other_receive_queue
  %and20 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %target.0 = select i1 %tobool21.not, i32 %cond, i32 %size
  %23 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %27 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %27)
  %timeo.promoted = load i32, ptr %timeo, align 4
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %other_report = getelementptr %struct.sock, ptr %1, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool13.not.i = icmp ne i32 %and20, 0
  %28 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %29 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %for.cond

for.cond:                                         ; preds = %cleanup.for.cond_crit_edge, %if.end15
  %call69334 = phi i32 [ %timeo.promoted, %if.end15 ], [ %call69332, %cleanup.for.cond_crit_edge ]
  %rv.0 = phi i32 [ 0, %if.end15 ], [ %rv.1, %cleanup.for.cond_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #17
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %wait, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %36 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %23, align 4
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @woken_wake_function, ptr %24, align 4
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %25, ptr %25, align 4
  %39 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %25, ptr %26, align 4
  %40 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool29.not = icmp eq i32 %41, 0
  br i1 %tobool29.not, label %if.end31, label %for.cond.cleanup.thread.loopexit_crit_edge

for.cond.cleanup.thread.loopexit_crit_edge:       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.loopexit

if.end31:                                         ; preds = %for.cond
  %42 = ptrtoint ptr %other_receive_queue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %other_receive_queue, align 4
  %cmp.i.not = icmp ne ptr %43, %other_receive_queue
  %44 = and i1 %tobool17.not, %cmp.i.not
  br i1 %44, label %if.then38, label %if.end31.if.end44_crit_edge

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then38:                                        ; preds = %if.end31
  %45 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_flags, align 4
  %or = or i32 %46, 1
  store i32 %or, ptr %msg_flags, align 4
  %47 = ptrtoint ptr %other_report to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %other_report, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool39.not = icmp eq i32 %48, 0
  br i1 %tobool39.not, label %if.then40, label %if.then38.if.end44_crit_edge

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call69334, ptr %timeo, align 4
  %50 = ptrtoint ptr %other_report to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %other_report, align 4
  br label %cleanup.thread

if.end44:                                         ; preds = %if.then38.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %52)
  %cmp46.not = icmp eq i8 %52, 11
  br i1 %cmp46.not, label %if.end49, label %if.end44.cleanup.thread.loopexit_crit_edge

if.end44.cleanup.thread.loopexit_crit_edge:       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.loopexit

if.end49:                                         ; preds = %if.end44
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %stack.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %59 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end49.if.then54_crit_edge, !prof !151

if.end49.if.then54_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then54

signal_pending.exit:                              ; preds = %if.end49
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %56, align 4
  %and1.i.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool53.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool53.not, label %if.end56, label %signal_pending.exit.if.then54_crit_edge

signal_pending.exit.if.then54_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then54

if.then54:                                        ; preds = %signal_pending.exit.if.then54_crit_edge, %if.end49.if.then54_crit_edge
  %62 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call69334, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call69334)
  %cmp.i262 = icmp eq i32 %call69334, 2147483647
  %cond.i263 = select i1 %cmp.i262, i32 -512, i32 -4
  br label %cleanup.thread

if.end56:                                         ; preds = %signal_pending.exit
  %63 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %63)
  %skb.034.i = load ptr, ptr %spec.select, align 4
  br i1 %tobool17.not, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %if.end56
  %cmp.not35.i = icmp eq ptr %skb.034.i, %spec.select
  br i1 %cmp.not35.i, label %for.cond.preheader.i.dn_data_ready.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.dn_data_ready.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_data_ready.exit

if.then.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  %cmp.i.i = icmp ne ptr %skb.034.i, %spec.select
  %cond.i266 = zext i1 %cmp.i.i to i32
  br label %dn_data_ready.exit

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %skb.037.i = phi ptr [ %skb.0.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %skb.034.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %len.036.i = phi i32 [ %add.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %len3.i = getelementptr inbounds %struct.sk_buff, ptr %skb.037.i, i32 0, i32 6
  %64 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len3.i, align 4
  %add.i = add i32 %65, %len.036.i
  %nsp_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb.037.i, i32 0, i32 3, i32 13
  %66 = ptrtoint ptr %nsp_flags.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %nsp_flags.i, align 1
  %68 = and i8 %67, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool5.not.i = icmp eq i8 %68, 0
  br i1 %tobool5.not.i, label %if.end16.i, label %if.then6.i

if.then6.i:                                       ; preds = %for.body.i
  %69 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %70)
  %cmp8.i = icmp ne i16 %70, 5
  %or.cond.not.i = and i1 %tobool13.not.i, %cmp8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %target.0)
  %cmp17.not.i = icmp slt i32 %add.i, %target.0
  %or.cond33.i = select i1 %or.cond.not.i, i1 %cmp17.not.i, i1 false
  br i1 %or.cond33.i, label %if.then6.i.for.cond.backedge.i_crit_edge, label %if.then6.i.cleanup.thread295_crit_edge

if.then6.i.cleanup.thread295_crit_edge:           ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread295

if.then6.i.for.cond.backedge.i_crit_edge:         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge.i

if.end16.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %target.0)
  %cmp17.not.old.i = icmp slt i32 %add.i, %target.0
  br i1 %cmp17.not.old.i, label %if.end16.i.for.cond.backedge.i_crit_edge, label %if.end16.i.cleanup.thread295_crit_edge

if.end16.i.cleanup.thread295_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread295

if.end16.i.for.cond.backedge.i_crit_edge:         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %if.end16.i.for.cond.backedge.i_crit_edge, %if.then6.i.for.cond.backedge.i_crit_edge
  %71 = ptrtoint ptr %skb.037.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %skb.0.i = load ptr, ptr %skb.037.i, align 4
  %cmp.not.i = icmp eq ptr %skb.0.i, %spec.select
  br i1 %cmp.not.i, label %for.cond.backedge.i.dn_data_ready.exit_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.backedge.i.dn_data_ready.exit_crit_edge: ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_data_ready.exit

cleanup.thread295:                                ; preds = %if.end16.i.cleanup.thread295_crit_edge, %if.then6.i.cleanup.thread295_crit_edge
  %72 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call69334, ptr %timeo, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #17
  br label %for.end

dn_data_ready.exit:                               ; preds = %for.cond.backedge.i.dn_data_ready.exit_crit_edge, %if.then.i, %for.cond.preheader.i.dn_data_ready.exit_crit_edge
  %retval.2.i = phi i32 [ %cond.i266, %if.then.i ], [ 0, %for.cond.preheader.i.dn_data_ready.exit_crit_edge ], [ 0, %for.cond.backedge.i.dn_data_ready.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool58.not.not = icmp eq i32 %retval.2.i, 0
  %73 = or i32 %retval.2.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %.not = icmp eq i32 %73, 0
  %rv.0.mux = select i1 %tobool58.not.not, i32 -11, i32 %rv.0
  %.mux = select i1 %tobool58.not.not, i32 2, i32 3
  br i1 %.not, label %if.end64, label %dn_data_ready.exit.cleanup_crit_edge

dn_data_ready.exit.cleanup_crit_edge:             ; preds = %dn_data_ready.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end64:                                         ; preds = %dn_data_ready.exit
  %74 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %28, align 8
  call void @add_wait_queue(ptr noundef %75, ptr noundef nonnull %wait) #17
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %5, align 4
  %78 = and i32 %77, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.i.not.i = icmp eq i32 %78, 0
  br i1 %tobool.i.not.i, label %if.end64.sk_set_bit.exit_crit_edge, label %if.end.i267

if.end64.sk_set_bit.exit_crit_edge:               ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %sk_set_bit.exit

if.end.i267:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  %79 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %28, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %80, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #17
  br label %sk_set_bit.exit

sk_set_bit.exit:                                  ; preds = %if.end.i267, %if.end64.sk_set_bit.exit_crit_edge
  call void @release_sock(ptr noundef %1) #17
  %call66 = call fastcc i32 @dn_data_ready(ptr noundef %1, ptr noundef %spec.select, i32 noundef %flags, i32 noundef %target.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %sk_set_bit.exit.if.end70_crit_edge

sk_set_bit.exit.if.end70_crit_edge:               ; preds = %sk_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end70

if.then68:                                        ; preds = %sk_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call69 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %call69334) #17
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %sk_set_bit.exit.if.end70_crit_edge
  %call69333 = phi i32 [ %call69, %if.then68 ], [ %call69334, %sk_set_bit.exit.if.end70_crit_edge ]
  %81 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 212
  %83 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #17
  %call73 = call fastcc i32 @dn_data_ready(ptr noundef %1, ptr noundef %spec.select, i32 noundef %flags, i32 noundef %target.0)
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %5, align 4
  %86 = and i32 %85, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i.not.i268 = icmp eq i32 %86, 0
  br i1 %tobool.i.not.i268, label %if.end70.sk_clear_bit.exit_crit_edge, label %if.end.i270

if.end70.sk_clear_bit.exit_crit_edge:             ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #19
  br label %sk_clear_bit.exit

if.end.i270:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #19
  %87 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %28, align 8
  %flags.i269 = getelementptr inbounds %struct.socket_wq, ptr %88, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i269) #17
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i270, %if.end70.sk_clear_bit.exit_crit_edge
  %89 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %28, align 8
  call void @remove_wait_queue(ptr noundef %90, ptr noundef nonnull %wait) #17
  br label %cleanup

cleanup.thread.loopexit:                          ; preds = %if.end44.cleanup.thread.loopexit_crit_edge, %for.cond.cleanup.thread.loopexit_crit_edge
  %91 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call69334, ptr %timeo, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.loopexit, %if.then54, %if.then40
  %rv.1.ph = phi i32 [ %rv.0, %if.then40 ], [ %cond.i263, %if.then54 ], [ %rv.0, %cleanup.thread.loopexit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #17
  br label %out

cleanup:                                          ; preds = %sk_clear_bit.exit, %dn_data_ready.exit.cleanup_crit_edge
  %call69332 = phi i32 [ %call69333, %sk_clear_bit.exit ], [ %call69334, %dn_data_ready.exit.cleanup_crit_edge ]
  %rv.1 = phi i32 [ %rv.0, %sk_clear_bit.exit ], [ %rv.0.mux, %dn_data_ready.exit.cleanup_crit_edge ]
  %cleanup.dest.slot.0 = phi i32 [ 0, %sk_clear_bit.exit ], [ %.mux, %dn_data_ready.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #17
  %92 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %cleanup.dest.slot.0, label %cleanup.cleanup164_crit_edge [
    i32 0, label %cleanup.for.cond_crit_edge
    i32 3, label %for.end.loopexit
    i32 2, label %out.loopexit322
  ]

cleanup.for.cond_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

cleanup.cleanup164_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup164

for.end.loopexit:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  %93 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call69332, ptr %timeo, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %cleanup.thread295
  %94 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %spec.select, align 4
  %cmp78.not341 = icmp eq ptr %95, %spec.select
  br i1 %cmp78.not341, label %for.end.if.then149_crit_edge, label %for.body.lr.ph

for.end.if.then149_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then149

for.body.lr.ph:                                   ; preds = %for.end
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %and90 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %flowloc_sw = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 12
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %tobool17.not.not259 = xor i1 %tobool17.not, true
  br label %for.body

for.body:                                         ; preds = %if.end126.for.body_crit_edge, %for.body.lr.ph
  %eor.0344 = phi i8 [ 0, %for.body.lr.ph ], [ %103, %if.end126.for.body_crit_edge ]
  %skb.0343 = phi ptr [ %95, %for.body.lr.ph ], [ %n.0345, %if.end126.for.body_crit_edge ]
  %copied.0342 = phi i32 [ 0, %for.body.lr.ph ], [ %add89, %if.end126.for.body_crit_edge ]
  %96 = ptrtoint ptr %skb.0343 to i32
  call void @__asan_load4_noabort(i32 %96)
  %n.0345 = load ptr, ptr %skb.0343, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0343, i32 0, i32 6
  %97 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len, align 4
  %add = add i32 %98, %copied.0342
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp81 = icmp ugt i32 %add, %size
  %sub = sub i32 %size, %copied.0342
  %spec.select256 = select i1 %cmp81, i32 %sub, i32 %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select256)
  %cmp9.i.i.i = icmp slt i32 %spec.select256, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %for.body
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge, label %if.then27.i.i.i, !prof !151

land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge:    ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %memcpy_to_msg.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 230, i32 noundef 9, ptr noundef null) #17
  br label %memcpy_to_msg.exit

if.then.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0343, i32 0, i32 19
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data, align 4
  call void @__check_object_size(ptr noundef %100, i32 noundef %spec.select256, i1 noundef zeroext true) #17
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef %100, i32 noundef %spec.select256, ptr noundef %msg_iter.i) #17
  br label %memcpy_to_msg.exit

memcpy_to_msg.exit:                               ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %spec.select256)
  %cmp.i271 = icmp eq i32 %retval.0.i.i, %spec.select256
  br i1 %cmp.i271, label %if.end88, label %memcpy_to_msg.exit.for.end135_crit_edge

memcpy_to_msg.exit.for.end135_crit_edge:          ; preds = %memcpy_to_msg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end135

if.end88:                                         ; preds = %memcpy_to_msg.exit
  %add89 = add i32 %spec.select256, %copied.0342
  br i1 %tobool91.not, label %if.then92, label %if.end88.if.end94_crit_edge

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end94

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  %call93 = call ptr @skb_pull(ptr noundef %skb.0343, i32 noundef %spec.select256) #17
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end88.if.end94_crit_edge
  %nsp_flags = getelementptr inbounds %struct.sk_buff, ptr %skb.0343, i32 0, i32 3, i32 13
  %101 = ptrtoint ptr %nsp_flags to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %nsp_flags, align 1
  %103 = and i8 %102, 64
  %104 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp99 = icmp eq i32 %105, 0
  br i1 %cmp99, label %if.then101, label %if.end94.if.end110_crit_edge

if.end94.if.end110_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end110

if.then101:                                       ; preds = %if.end94
  call void @skb_unlink(ptr noundef %skb.0343, ptr noundef %spec.select) #17
  call void @kfree_skb_reason(ptr noundef %skb.0343, i32 noundef 0) #17
  %106 = ptrtoint ptr %flowloc_sw to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %flowloc_sw, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %107)
  %cmp103 = icmp eq i8 %107, 1
  br i1 %cmp103, label %land.lhs.true, label %if.then101.if.end110_crit_edge

if.then101.if.end110_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end110

land.lhs.true:                                    ; preds = %if.then101
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #17
  %108 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %sk_backlog.i, align 4
  %110 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sk_rcvbuf.i, align 8
  %shr.i = ashr i32 %111, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %shr.i)
  %cmp.i273.not = icmp sgt i32 %109, %shr.i
  br i1 %cmp.i273.not, label %land.lhs.true.if.end110_crit_edge, label %if.then107

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end110

if.then107:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %112 = ptrtoint ptr %flowloc_sw to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 2, ptr %flowloc_sw, align 1
  call void @dn_nsp_send_link(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0) #17
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %land.lhs.true.if.end110_crit_edge, %if.then101.if.end110_crit_edge, %if.end94.if.end110_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool111.not = icmp eq i8 %103, 0
  br i1 %tobool111.not, label %if.end122, label %if.then112

if.then112:                                       ; preds = %if.end110
  %113 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %114)
  %cmp114 = icmp eq i16 %114, 5
  %brmerge258 = or i1 %tobool21.not, %cmp114
  %brmerge260 = or i1 %brmerge258, %tobool17.not.not259
  br i1 %brmerge260, label %if.then112.land.lhs.true138_crit_edge, label %if.then112.if.end126_crit_edge

if.then112.if.end126_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end126

if.then112.land.lhs.true138_crit_edge:            ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true138

if.end122:                                        ; preds = %if.end110
  br i1 %tobool17.not, label %if.end122.if.end126_crit_edge, label %if.end122.out_crit_edge

if.end122.out_crit_edge:                          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end122.if.end126_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end126

if.end126:                                        ; preds = %if.end122.if.end126_crit_edge, %if.then112.if.end126_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add89, i32 %target.0)
  %cmp127.not = icmp uge i32 %add89, %target.0
  %cmp78.not = icmp eq ptr %n.0345, %spec.select
  %or.cond = select i1 %cmp127.not, i1 true, i1 %cmp78.not
  br i1 %or.cond, label %if.end126.for.end135_crit_edge, label %if.end126.for.body_crit_edge

if.end126.for.body_crit_edge:                     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end126.for.end135_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end135

for.end135:                                       ; preds = %if.end126.for.end135_crit_edge, %memcpy_to_msg.exit.for.end135_crit_edge
  %copied.2 = phi i32 [ %copied.0342, %memcpy_to_msg.exit.for.end135_crit_edge ], [ %add89, %if.end126.for.end135_crit_edge ]
  %eor.2 = phi i8 [ %eor.0344, %memcpy_to_msg.exit.for.end135_crit_edge ], [ %103, %if.end126.for.end135_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %eor.2)
  %tobool137.not = icmp eq i8 %eor.2, 0
  br i1 %tobool137.not, label %for.end135.out_crit_edge, label %land.lhs.true138thread-pre-split

for.end135.out_crit_edge:                         ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

land.lhs.true138thread-pre-split:                 ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #19
  %115 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %.pr = load i16, ptr %sk_type.i, align 2
  br label %land.lhs.true138

land.lhs.true138:                                 ; preds = %land.lhs.true138thread-pre-split, %if.then112.land.lhs.true138_crit_edge
  %116 = phi i16 [ %.pr, %land.lhs.true138thread-pre-split ], [ %114, %if.then112.land.lhs.true138_crit_edge ]
  %copied.2318 = phi i32 [ %copied.2, %land.lhs.true138thread-pre-split ], [ %add89, %if.then112.land.lhs.true138_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %116)
  %cmp141 = icmp eq i16 %116, 5
  br i1 %cmp141, label %if.then143, label %land.lhs.true138.out_crit_edge

land.lhs.true138.out_crit_edge:                   ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then143:                                       ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #19
  %117 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %msg_flags, align 4
  %or145 = or i32 %118, 128
  store i32 %or145, ptr %msg_flags, align 4
  br label %out

out.loopexit322:                                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  %119 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call69332, ptr %timeo, align 4
  br label %out

out:                                              ; preds = %out.loopexit322, %if.then143, %land.lhs.true138.out_crit_edge, %for.end135.out_crit_edge, %if.end122.out_crit_edge, %cleanup.thread
  %rv.2 = phi i32 [ %copied.2318, %if.then143 ], [ %copied.2318, %land.lhs.true138.out_crit_edge ], [ %copied.2, %for.end135.out_crit_edge ], [ %rv.1.ph, %cleanup.thread ], [ %rv.1, %out.loopexit322 ], [ %add89, %if.end122.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.2)
  %cmp147 = icmp eq i32 %rv.2, 0
  br i1 %cmp147, label %out.if.then149_crit_edge, label %out.if.end156_crit_edge

out.if.end156_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156

out.if.then149_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then149

if.then149:                                       ; preds = %out.if.then149_crit_edge, %for.end.if.then149_crit_edge, %if.end.if.then149_crit_edge
  %and150 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %120 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sk_err.i, align 4
  br i1 %tobool151.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #19
  %sub153 = sub i32 0, %121
  br label %if.end156

cond.false:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i275 = icmp eq i32 %121, 0
  br i1 %tobool.not.i275, label %cond.false.land.lhs.true159_crit_edge, label %if.end.i276, !prof !151

cond.false.land.lhs.true159_crit_edge:            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true159

if.end.i276:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #17
  %122 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #17, !srcloc !158
  %asmresult.i.i = extractvalue { i32, i32 } %122, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !174
  %sub.i = sub i32 0, %asmresult.i.i
  br label %if.end156

if.end156:                                        ; preds = %if.end.i276, %cond.true, %out.if.end156_crit_edge, %dn_check_state.exit.if.end156_crit_edge
  %rv.3 = phi i32 [ %rv.2, %out.if.end156_crit_edge ], [ %sub153, %cond.true ], [ %sub.i, %if.end.i276 ], [ %retval.0.i, %dn_check_state.exit.if.end156_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rv.3)
  %cmp157 = icmp sgt i32 %rv.3, -1
  br i1 %cmp157, label %if.end156.land.lhs.true159_crit_edge, label %if.end156.if.end163_crit_edge

if.end156.if.end163_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end163

if.end156.land.lhs.true159_crit_edge:             ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true159

land.lhs.true159:                                 ; preds = %if.end156.land.lhs.true159_crit_edge, %cond.false.land.lhs.true159_crit_edge
  %rv.3310 = phi i32 [ %rv.3, %if.end156.land.lhs.true159_crit_edge ], [ 0, %cond.false.land.lhs.true159_crit_edge ]
  %123 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %msg, align 8
  %tobool160.not = icmp eq ptr %124, null
  br i1 %tobool160.not, label %land.lhs.true159.if.end163_crit_edge, label %do.end

land.lhs.true159.if.end163_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end163

do.end:                                           ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #19
  %peer = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 33
  %125 = call ptr @memcpy(ptr %124, ptr %peer, i32 26)
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %126 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 26, ptr %msg_namelen, align 4
  br label %if.end163

if.end163:                                        ; preds = %do.end, %land.lhs.true159.if.end163_crit_edge, %if.end156.if.end163_crit_edge, %if.end11.if.end163_crit_edge, %if.end22.i, %if.then18.i, %sw.bb5.i.if.end163_crit_edge, %if.end7.if.end163_crit_edge, %sock_rcvtimeo.exit.if.end163_crit_edge
  %rv.3309 = phi i32 [ %rv.3310, %do.end ], [ %rv.3310, %land.lhs.true159.if.end163_crit_edge ], [ %rv.3, %if.end156.if.end163_crit_edge ], [ -22, %if.end7.if.end163_crit_edge ], [ -106, %sw.bb5.i.if.end163_crit_edge ], [ -111, %if.then18.i ], [ -22, %if.end22.i ], [ -99, %sock_rcvtimeo.exit.if.end163_crit_edge ], [ -95, %if.end11.if.end163_crit_edge ]
  call void @release_sock(ptr noundef %1) #17
  br label %cleanup164

cleanup164:                                       ; preds = %if.end163, %cleanup.cleanup164_crit_edge
  %retval.0 = phi i32 [ %rv.3309, %if.end163 ], [ undef, %cleanup.cleanup164_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_destroy_sock(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %nsp_rxtshift = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %nsp_rxtshift to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nsp_rxtshift, align 4
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %1 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %2, align 128
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 7, ptr %skc_state, align 2
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %8, label %do.end [
    i8 14, label %sw.bb
    i8 2, label %if.end5.disc_reject.sink.split_crit_edge
    i8 11, label %sw.bb10
    i8 12, label %if.end5.disc_reject_crit_edge
    i8 3, label %if.end5.disc_reject_crit_edge40
    i8 8, label %if.end5.sw.bb14_crit_edge
    i8 7, label %if.end5.sw.bb14_crit_edge41
    i8 10, label %if.end5.sw.bb14_crit_edge42
    i8 13, label %if.end5.sw.bb14_crit_edge43
    i8 16, label %if.end5.sw.bb14_crit_edge44
    i8 4, label %if.end5.sw.bb14_crit_edge45
    i8 6, label %if.end5.sw.bb14_crit_edge46
    i8 9, label %if.end5.sw.bb14_crit_edge47
    i8 1, label %if.end5.sw.bb19_crit_edge
  ]

if.end5.sw.bb19_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb19

if.end5.sw.bb14_crit_edge47:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14

if.end5.sw.bb14_crit_edge46:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14

if.end5.sw.bb14_crit_edge45:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14

if.end5.sw.bb14_crit_edge44:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14

if.end5.sw.bb14_crit_edge43:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14

if.end5.sw.bb14_crit_edge42:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14

if.end5.sw.bb14_crit_edge41:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14

if.end5.sw.bb14_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14

if.end5.disc_reject_crit_edge40:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %disc_reject

if.end5.disc_reject_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %disc_reject

if.end5.disc_reject.sink.split_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %disc_reject.sink.split

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %10 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_allocation, align 8
  tail call void @dn_nsp_send_disc(ptr noundef %sk, i8 noundef zeroext 72, i16 noundef zeroext 42, i32 noundef %11) #17
  %persist_fxn = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %persist_fxn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dn_destroy_timer, ptr %persist_fxn, align 4
  %call7 = tail call i32 @dn_nsp_persist(ptr noundef %sk) #17
  %persist = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %persist to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call7, ptr %persist, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %disc_reject.sink.split

disc_reject.sink.split:                           ; preds = %sw.bb10, %if.end5.disc_reject.sink.split_crit_edge
  %.sink = phi i8 [ 12, %sw.bb10 ], [ 3, %if.end5.disc_reject.sink.split_crit_edge ]
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %add.ptr.i, align 4
  br label %disc_reject

disc_reject:                                      ; preds = %disc_reject.sink.split, %if.end5.disc_reject_crit_edge, %if.end5.disc_reject_crit_edge40
  %sk_allocation13 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %15 = ptrtoint ptr %sk_allocation13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_allocation13, align 8
  tail call void @dn_nsp_send_disc(ptr noundef %sk, i8 noundef zeroext 56, i16 noundef zeroext 0, i32 noundef %16) #17
  br label %sw.bb14

sw.bb14:                                          ; preds = %disc_reject, %if.end5.sw.bb14_crit_edge, %if.end5.sw.bb14_crit_edge41, %if.end5.sw.bb14_crit_edge42, %if.end5.sw.bb14_crit_edge43, %if.end5.sw.bb14_crit_edge44, %if.end5.sw.bb14_crit_edge45, %if.end5.sw.bb14_crit_edge46, %if.end5.sw.bb14_crit_edge47
  %persist_fxn15 = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 6
  %17 = ptrtoint ptr %persist_fxn15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dn_destroy_timer, ptr %persist_fxn15, align 4
  %call16 = tail call i32 @dn_nsp_persist(ptr noundef %sk) #17
  %persist17 = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %persist17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call16, ptr %persist17, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #21
  br label %sw.bb19

sw.bb19:                                          ; preds = %do.end, %if.end5.sw.bb19_crit_edge
  tail call void @dn_stop_slow_timer(ptr noundef %sk) #17
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @dn_hash_lock) #17
  %pprev.i.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %19 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pprev.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i.i.not.i.i, label %sw.bb19.dn_unhash_sock_bh.exit_crit_edge, label %if.then.i.i.i

sw.bb19.dn_unhash_sock_bh.exit_crit_edge:         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_unhash_sock_bh.exit

if.then.i.i.i:                                    ; preds = %sw.bb19
  %21 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %20, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.if.then.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %20, ptr %pprev14.i.i.i.i.i, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.if.then.i.i_crit_edge
  %26 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %pprev.i.i.i.i.i.i, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #17
  %27 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !150

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 729, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #17
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #17, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.end.i.i.dn_unhash_sock_bh.exit_crit_edge, !prof !150

if.end.i.i.dn_unhash_sock_bh.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_unhash_sock_bh.exit

if.then3.i.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #17
  br label %dn_unhash_sock_bh.exit

dn_unhash_sock_bh.exit:                           ; preds = %if.then3.i.i.i.i.i, %if.end.i.i.dn_unhash_sock_bh.exit_crit_edge, %sw.bb19.dn_unhash_sock_bh.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @dn_hash_lock) #17
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #17
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #17, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %dn_unhash_sock_bh.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !151

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #17
  br label %sw.epilog

if.then.i:                                        ; preds = %dn_unhash_sock_bh.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !154
  tail call void @sk_free(ptr noundef %sk) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge, %sw.bb14, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_stop_slow_timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.18) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !156
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_hash_sock(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.not, label %do.end8, label %do.body3, !prof !151

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/decnet/af_decnet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 212, 0\0A.popsection", ""() #17, !srcloc !175
  unreachable

do.end8:                                          ; preds = %entry
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @dn_hash_lock) #17
  %addrloc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 1
  %2 = ptrtoint ptr %addrloc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addrloc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool9.not = icmp eq i16 %3, 0
  br i1 %tobool9.not, label %land.lhs.true, label %do.end8.if.end13_crit_edge

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

land.lhs.true:                                    ; preds = %do.end8
  %4 = load i16, ptr @port_alloc.port, align 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %land.lhs.true
  %5 = load i16, ptr @port_alloc.port, align 2
  %inc.i = add i16 %5, 1
  store i16 %inc.i, ptr @port_alloc.port, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %inc.i) #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc.i)
  %cmp.i.i = icmp eq i16 %inc.i, 0
  br i1 %cmp.i.i, label %while.cond.i.while.body.i_crit_edge, label %if.end.i.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

if.end.i.i:                                       ; preds = %while.cond.i
  %7 = lshr i16 %6, 8
  %conv2.i.i = zext i16 %7 to i32
  %arrayidx.i.i = getelementptr [256 x %struct.hlist_head], ptr @dn_sk_hash, i32 0, i32 %conv2.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  %add.ptr.i6.i = getelementptr i8, ptr %9, i32 -84
  %tobool4.not3336.i.i = icmp eq ptr %add.ptr.i6.i, null
  %tobool4.not33.i.i = or i1 %tobool.not.i.i, %tobool4.not3336.i.i
  br i1 %tobool4.not33.i.i, label %if.end.i.i.port_alloc.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.port_alloc.exit_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %port_alloc.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %sk.034.i.i = phi ptr [ %add.ptr17.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i6.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.sock, ptr %sk.034.i.i, i32 1
  %addrloc.i.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %addrloc.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addrloc.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %6)
  %cmp7.i.i = icmp eq i16 %11, %6
  br i1 %cmp7.i.i, label %for.body.i.i.while.body.i_crit_edge, label %for.inc.i.i

for.body.i.i.while.body.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %12 = getelementptr inbounds %struct.sock_common, ptr %sk.034.i.i, i32 0, i32 15
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool13.not.i.i = icmp eq ptr %14, null
  %add.ptr17.i.i = getelementptr i8, ptr %14, i32 -84
  %tobool4.not37.i.i = icmp eq ptr %add.ptr17.i.i, null
  %tobool4.not.i.i = or i1 %tobool13.not.i.i, %tobool4.not37.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.port_alloc.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.port_alloc.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %port_alloc.exit

while.body.i:                                     ; preds = %for.body.i.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %cmp3.i = icmp eq i16 %inc.i, %4
  br i1 %cmp3.i, label %while.body.i.out_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

port_alloc.exit:                                  ; preds = %for.inc.i.i.port_alloc.exit_crit_edge, %if.end.i.i.port_alloc.exit_crit_edge
  %15 = ptrtoint ptr %addrloc to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %6, ptr %addrloc, align 2
  br label %if.end13

if.end13:                                         ; preds = %port_alloc.exit, %do.end8.if.end13_crit_edge
  %sdn_flags.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 32, i32 1
  %16 = ptrtoint ptr %sdn_flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sdn_flags.i, align 2
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %dn_find_list.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end13
  %19 = load volatile ptr, ptr @dn_wild_sk, align 4
  %tobool.not.i.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.not.i, label %if.then.i.if.end16_crit_edge, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then.i.if.end16_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

dn_find_list.exit:                                ; preds = %if.end13
  %20 = ptrtoint ptr %addrloc to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addrloc, align 2
  %22 = lshr i16 %21, 8
  %conv3.i = zext i16 %22 to i32
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr @dn_sk_hash, i32 0, i32 %conv3.i
  %cmp = icmp eq ptr %arrayidx.i, null
  br i1 %cmp, label %dn_find_list.exit.out_crit_edge, label %dn_find_list.exit.if.end16_crit_edge

dn_find_list.exit.if.end16_crit_edge:             ; preds = %dn_find_list.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

dn_find_list.exit.out_crit_edge:                  ; preds = %dn_find_list.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end16:                                         ; preds = %dn_find_list.exit.if.end16_crit_edge, %if.then.i.if.end16_crit_edge
  %retval.0.i2333 = phi ptr [ %arrayidx.i, %dn_find_list.exit.if.end16_crit_edge ], [ @dn_wild_sk, %if.then.i.if.end16_crit_edge ]
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #17
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #17, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end16.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !150

if.end16.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end16
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !151

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end16.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end16.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #17
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %25 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %26 = ptrtoint ptr %retval.0.i2333 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %retval.0.i2333, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %25, align 4
  %tobool.not.i.i.i24 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i24, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %pprev.i.i.i25 = getelementptr inbounds %struct.hlist_node, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %pprev.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %pprev.i.i.i25, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  %30 = ptrtoint ptr %retval.0.i2333 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %25, ptr %retval.0.i2333, align 4
  %31 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %retval.0.i2333, ptr %pprev.i.i.i, align 4
  br label %out

out:                                              ; preds = %sk_add_node.exit, %dn_find_list.exit.out_crit_edge, %if.then.i.out_crit_edge, %while.body.i.out_crit_edge
  %rv.0 = phi i32 [ -98, %dn_find_list.exit.out_crit_edge ], [ 0, %sk_add_node.exit ], [ -98, %if.then.i.out_crit_edge ], [ -87, %while.body.i.out_crit_edge ]
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @dn_hash_lock) #17
  ret i32 %rv.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dn_connect(ptr noundef %sk, ptr noundef readonly %addr, i32 noundef %addrlen, ptr nocapture noundef %timeo, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  %fld = alloca %struct.flowidn, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %0 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_socket, align 8
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fld) #17
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 128
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %if.end22 [
    i32 3, label %entry.cleanup_crit_edge
    i32 2, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %entry
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %6, label %if.then18 [
    i8 11, label %if.then7
    i8 6, label %if.then3.if.end20_crit_edge
    i8 5, label %if.then3.if.end20_crit_edge113
  ]

if.then3.if.end20_crit_edge113:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then3.if.end20_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %1, align 128
  br label %cleanup

if.then18:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %1, align 128
  br label %cleanup

if.end20:                                         ; preds = %if.then3.if.end20_crit_edge, %if.then3.if.end20_crit_edge113
  %call21 = tail call fastcc i32 @dn_wait_run(ptr noundef %sk, ptr noundef %timeo)
  br label %cleanup

if.end22:                                         ; preds = %entry
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp25.not = icmp eq i8 %11, 1
  %cmp29 = icmp ne ptr %addr, null
  %or.cond.not = and i1 %cmp29, %cmp25.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %addrlen)
  %cmp31.not = icmp eq i32 %addrlen, 26
  %or.cond105 = and i1 %cmp31.not, %or.cond.not
  br i1 %or.cond105, label %if.end34, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %13)
  %cmp36.not = icmp eq i16 %13, 12
  br i1 %cmp36.not, label %if.end39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %sdn_flags = getelementptr inbounds %struct.sockaddr_dn, ptr %addr, i32 0, i32 1
  %14 = ptrtoint ptr %sdn_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sdn_flags, align 2
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end42, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end42:                                         ; preds = %if.end39
  %17 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %if.end42.if.end50_crit_edge, label %if.then44

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then44:                                        ; preds = %if.end42
  %sk1.i = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk1.i, align 16
  %add.ptr.i.i = getelementptr %struct.sock, ptr %22, i32 1
  %23 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %and.i.i.i = and i32 %25, -257
  store i32 %and.i.i.i, ptr %23, align 4
  %sdn_flags.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 32, i32 1
  %26 = ptrtoint ptr %sdn_flags.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %sdn_flags.i, align 2
  %sdn_objnum.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 32, i32 2
  %27 = ptrtoint ptr %sdn_objnum.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %sdn_objnum.i, align 1
  %accessdata.i = getelementptr %struct.sock, ptr %22, i32 1, i32 4, i32 0, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %accessdata.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %accessdata.i, align 4
  %30 = add i8 %29, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %30)
  %31 = icmp ult i8 %30, 12
  br i1 %31, label %if.then.i, label %if.then44.if.end.i_crit_edge

if.then44.if.end.i_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #19
  %conv11.i = zext i8 %29 to i16
  %32 = shl nuw nsw i16 %conv11.i, 8
  %sdn_objnamel.i = getelementptr %struct.sock, ptr %22, i32 1, i32 6
  %33 = ptrtoint ptr %sdn_objnamel.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %sdn_objnamel.i, align 4
  %sdn_objname.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 32, i32 4
  %acc_acc.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 31, i32 1
  %conv18.i = zext i8 %29 to i32
  %34 = call ptr @memcpy(ptr %sdn_objname.i, ptr %acc_acc.i, i32 %conv18.i)
  %35 = call ptr @memset(ptr %accessdata.i, i32 0, i32 41)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then44.if.end.i_crit_edge
  %sdn_add.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 32, i32 5
  %36 = ptrtoint ptr %sdn_add.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 512, ptr %sdn_add.i, align 2
  %a_addr.i = getelementptr %struct.sock, ptr %22, i32 1, i32 7, i32 2, i32 0, i32 0, i32 1
  %call28.i = tail call i32 @dn_dev_bind_default(ptr noundef %a_addr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then31.i:                                      ; preds = %if.end.i
  %call32.i = tail call fastcc i32 @dn_hash_sock(ptr noundef %22) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool.not.i, label %if.then31.i.if.end50_crit_edge, label %if.then33.i

if.then31.i.if.end50_crit_edge:                   ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then33.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %23, align 4
  %or.i.i.i = or i32 %38, 256
  store i32 %or.i.i.i, ptr %23, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.then31.i.if.end50_crit_edge, %if.end42.if.end50_crit_edge
  %peer = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 33
  %39 = call ptr @memcpy(ptr %peer, ptr %addr, i32 26)
  %40 = call ptr @memset(ptr %fld, i32 0, i32 40)
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %41 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %skc_bound_dev_if, align 4
  %43 = ptrtoint ptr %fld to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fld, align 8
  %a_addr.i106 = getelementptr inbounds %struct.sockaddr_dn, ptr %peer, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %a_addr.i106 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %a_addr.i106, align 2
  %daddr = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 1
  %46 = ptrtoint ptr %daddr to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %daddr, align 8
  %a_addr.i107 = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %a_addr.i107 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %a_addr.i107, align 2
  %saddr = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 2
  %49 = ptrtoint ptr %saddr to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %saddr, align 2
  %addrloc.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 1
  %50 = ptrtoint ptr %addrloc.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addrloc.i, align 2
  %uli.i = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 3
  %sport.i = getelementptr inbounds %struct.anon.40, ptr %uli.i, i32 0, i32 1
  %52 = ptrtoint ptr %sport.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %sport.i, align 2
  %addrrem.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 2
  %53 = ptrtoint ptr %addrrem.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %addrrem.i, align 4
  %55 = ptrtoint ptr %uli.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %uli.i, align 4
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fld, i32 0, i32 5
  %56 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %flowic_proto, align 2
  %sk_dst_cache = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %call56 = call i32 @dn_route_output_sock(ptr noundef %sk_dst_cache, ptr noundef nonnull %fld, ptr noundef %sk, i32 noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end50.cleanup_crit_edge, label %if.end60

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  %call61 = call fastcc ptr @__sk_dst_get(ptr noundef %sk)
  %57 = ptrtoint ptr %call61 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call61, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 23
  %59 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %features, align 16
  %sk_route_caps = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 38
  %61 = ptrtoint ptr %sk_route_caps to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %sk_route_caps, align 8
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %1, align 128
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 6, ptr %add.ptr.i, align 4
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %call61, i32 0, i32 2
  %64 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %65, -4
  %66 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %66, i32 7
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i108 = icmp eq i32 %68, 0
  br i1 %tobool.not.i108, label %if.then.i109, label %if.end60.dst_metric_advmss.exit_crit_edge

if.end60.dst_metric_advmss.exit_crit_edge:        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_metric_advmss.exit

if.then.i109:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call61, i32 0, i32 1
  %69 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i, align 4
  %default_advmss.i = getelementptr inbounds %struct.dst_ops, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %default_advmss.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %default_advmss.i, align 16
  %call1.i = call i32 %72(ptr noundef %call61) #17
  br label %dst_metric_advmss.exit

dst_metric_advmss.exit:                           ; preds = %if.then.i109, %if.end60.dst_metric_advmss.exit_crit_edge
  %advmss.0.i = phi i32 [ %68, %if.end60.dst_metric_advmss.exit_crit_edge ], [ %call1.i, %if.then.i109 ]
  %conv65 = trunc i32 %advmss.0.i to i16
  %segsize_loc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 22
  %73 = ptrtoint ptr %segsize_loc to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv65, ptr %segsize_loc, align 2
  call void @dn_nsp_send_conninit(ptr noundef %sk, i8 noundef zeroext 24) #17
  %74 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool66.not = icmp eq i32 %75, 0
  br i1 %tobool66.not, label %dst_metric_advmss.exit.cleanup_crit_edge, label %if.then67

dst_metric_advmss.exit.cleanup_crit_edge:         ; preds = %dst_metric_advmss.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then67:                                        ; preds = %dst_metric_advmss.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call68 = call fastcc i32 @dn_wait_run(ptr noundef %sk, ptr noundef %timeo)
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %dst_metric_advmss.exit.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then33.i, %if.end.i.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end20, %if.then18, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ -106, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ -111, %if.then18 ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %if.end34.cleanup_crit_edge ], [ -22, %if.end39.cleanup_crit_edge ], [ -113, %if.end50.cleanup_crit_edge ], [ %call68, %if.then67 ], [ -115, %dst_metric_advmss.exit.cleanup_crit_edge ], [ %call28.i, %if.end.i.cleanup_crit_edge ], [ %call32.i, %if.then33.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fld) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_wait_run(ptr noundef %sk, ptr nocapture noundef %timeo) unnamed_addr #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #17
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %14)
  %cmp = icmp eq i8 %14, 11
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %17 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 8
  call void @add_wait_queue(ptr noundef %19, ptr noundef nonnull %wait) #17
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  br label %for.cond

for.cond:                                         ; preds = %if.end36.for.cond_crit_edge, %if.end7
  call void @release_sock(ptr noundef %sk) #17
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i, align 4
  %.off = add i8 %21, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then17, label %for.cond.if.end19_crit_edge

for.cond.if.end19_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then17:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timeo, align 4
  %call18 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %23) #17
  %24 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call18, ptr %timeo, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.cond.if.end19_crit_edge
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #17
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %26)
  %cmp22 = icmp eq i8 %26, 11
  br i1 %cmp22, label %out, label %if.end25

if.end25:                                         ; preds = %if.end19
  %27 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end25.if.end29_crit_edge, label %sock_error.exit, !prof !151

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

sock_error.exit:                                  ; preds = %if.end25
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #17
  %29 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #17, !srcloc !158
  %asmresult.i.i = extractvalue { i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool27.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool27.not, label %sock_error.exit.if.end29_crit_edge, label %if.else.split.loop.exit94

sock_error.exit.if.end29_crit_edge:               ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.end29:                                         ; preds = %sock_error.exit.if.end29_crit_edge, %if.end25.if.end29_crit_edge
  %30 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timeo, align 4
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stack.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i80 = icmp eq i32 %38, 0
  br i1 %tobool.not.i80, label %signal_pending.exit, label %if.else.split.loop.exit, !prof !151

signal_pending.exit:                              ; preds = %if.end29
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %35, align 4
  %and1.i.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool34.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool34.not, label %if.end36, label %if.else.split.loop.exit96

if.end36:                                         ; preds = %signal_pending.exit
  %tobool37.not = icmp eq i32 %31, 0
  br i1 %tobool37.not, label %if.end36.if.else_crit_edge, label %if.end36.for.cond_crit_edge

if.end36.for.cond_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

if.end36.if.else_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

out:                                              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %17, align 8
  call void @remove_wait_queue(ptr noundef %42, ptr noundef nonnull %wait) #17
  br label %cleanup.sink.split

if.else.split.loop.exit:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %31)
  %cmp.i.le = icmp eq i32 %31, 2147483647
  %cond.i.le100 = select i1 %cmp.i.le, i32 -512, i32 -4
  br label %if.else

if.else.split.loop.exit94:                        ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #19
  %asmresult.i.i.le = extractvalue { i32, i32 } %29, 0
  %sub.i.le = sub i32 0, %asmresult.i.i.le
  br label %if.else

if.else.split.loop.exit96:                        ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %31)
  %cmp.i.le103 = icmp eq i32 %31, 2147483647
  %cond.i.le = select i1 %cmp.i.le103, i32 -512, i32 -4
  br label %if.else

if.else:                                          ; preds = %if.else.split.loop.exit96, %if.else.split.loop.exit94, %if.else.split.loop.exit, %if.end36.if.else_crit_edge
  %err.0.ph = phi i32 [ %cond.i.le100, %if.else.split.loop.exit ], [ %sub.i.le, %if.else.split.loop.exit94 ], [ %cond.i.le, %if.else.split.loop.exit96 ], [ -110, %if.end36.if.else_crit_edge ]
  %43 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %17, align 8
  call void @remove_wait_queue(ptr noundef %44, ptr noundef nonnull %wait) #17
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i, align 4
  %.off78 = add i8 %46, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off78)
  %switch79 = icmp ult i8 %.off78, 2
  br i1 %switch79, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %out, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 3, %entry.cleanup.sink.split_crit_edge ], [ 3, %out ], [ 1, %if.else.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %entry.cleanup.sink.split_crit_edge ], [ 0, %out ], [ %err.0.ph, %if.else.cleanup.sink.split_crit_edge ]
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %47 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sk_socket, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %48, align 128
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -114, %if.end.cleanup_crit_edge ], [ %err.0.ph, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_route_output_sock(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__sk_dst_get(ptr noundef %sk) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %sk_dst_cache = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %sk_dst_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_dst_cache, align 4
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lockdep_sock_is_held.exit, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8

lockdep_sock_is_held.exit:                        ; preds = %entry
  %dep_map2.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool4.i.not = icmp eq i32 %call.i6.i, 0
  br i1 %tobool4.i.not, label %lor.lhs.false, label %lockdep_sock_is_held.exit.do.end8_crit_edge

lockdep_sock_is_held.exit.do.end8_crit_edge:      ; preds = %lockdep_sock_is_held.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8

lor.lhs.false:                                    ; preds = %lockdep_sock_is_held.exit
  %call2 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end8_crit_edge

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.13) #17
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %lor.lhs.false.do.end8_crit_edge, %lockdep_sock_is_held.exit.do.end8_crit_edge, %entry.do.end8_crit_edge
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_nsp_send_conninit(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_dev_bind_default(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_send_conn_ack(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_confirm_accept(ptr noundef %sk, ptr nocapture noundef %timeo, i32 noundef %allocation) unnamed_addr #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #17
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !139) #17
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.not = icmp eq i8 %14, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %add.ptr.i, align 4
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %16 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %if.end.__sk_dst_get.exit_crit_edge

if.end.__sk_dst_get.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %if.end
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__sk_dst_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.13) #17
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %if.end.__sk_dst_get.exit_crit_edge
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %19, -4
  %20 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %20, i32 7
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i72 = icmp eq i32 %22, 0
  br i1 %tobool.not.i72, label %if.then.i73, label %__sk_dst_get.exit.dst_metric_advmss.exit_crit_edge

__sk_dst_get.exit.dst_metric_advmss.exit_crit_edge: ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_metric_advmss.exit

if.then.i73:                                      ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %default_advmss.i = getelementptr inbounds %struct.dst_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %default_advmss.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %default_advmss.i, align 16
  %call1.i = call i32 %26(ptr noundef %17) #17
  br label %dst_metric_advmss.exit

dst_metric_advmss.exit:                           ; preds = %if.then.i73, %__sk_dst_get.exit.dst_metric_advmss.exit_crit_edge
  %advmss.0.i = phi i32 [ %22, %__sk_dst_get.exit.dst_metric_advmss.exit_crit_edge ], [ %call1.i, %if.then.i73 ]
  %conv9 = trunc i32 %advmss.0.i to i16
  %segsize_loc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 22
  %27 = ptrtoint ptr %segsize_loc to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv9, ptr %segsize_loc, align 2
  call void @dn_send_conn_conf(ptr noundef %sk, i32 noundef %allocation) #17
  %28 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %28, align 8
  call void @add_wait_queue(ptr noundef %30, ptr noundef nonnull %wait) #17
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  br label %for.cond

for.cond:                                         ; preds = %if.end33.for.cond_crit_edge, %dst_metric_advmss.exit
  call void @release_sock(ptr noundef %sk) #17
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %32)
  %cmp13 = icmp eq i8 %32, 5
  br i1 %cmp13, label %if.then15, label %for.cond.if.end17_crit_edge

for.cond.if.end17_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then15:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timeo, align 4
  %call16 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %34) #17
  %35 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call16, ptr %timeo, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.cond.if.end17_crit_edge
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #17
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %37)
  %cmp20 = icmp eq i8 %37, 11
  br i1 %cmp20, label %if.then40, label %if.end23

if.end23:                                         ; preds = %if.end17
  %38 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i74 = icmp eq i32 %39, 0
  br i1 %tobool.not.i74, label %if.end23.if.end26_crit_edge, label %sock_error.exit, !prof !151

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

sock_error.exit:                                  ; preds = %if.end23
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !173
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #17
  %40 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #17, !srcloc !158
  %asmresult.i.i = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %sock_error.exit.if.end26_crit_edge, label %if.else.split.loop.exit85

sock_error.exit.if.end26_crit_edge:               ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.end26:                                         ; preds = %sock_error.exit.if.end26_crit_edge, %if.end23.if.end26_crit_edge
  %41 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %timeo, align 4
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stack.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %49 = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i75 = icmp eq i32 %49, 0
  br i1 %tobool.not.i75, label %signal_pending.exit, label %if.else.split.loop.exit, !prof !151

signal_pending.exit:                              ; preds = %if.end26
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %46, align 4
  %and1.i.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool31.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool31.not, label %if.end33, label %if.else.split.loop.exit87

if.end33:                                         ; preds = %signal_pending.exit
  %tobool34.not = icmp eq i32 %42, 0
  br i1 %tobool34.not, label %if.end33.if.else_crit_edge, label %if.end33.for.cond_crit_edge

if.end33.for.cond_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then40:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %28, align 8
  call void @remove_wait_queue(ptr noundef %53, ptr noundef nonnull %wait) #17
  br label %cleanup.sink.split

if.else.split.loop.exit:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %42)
  %cmp.i.le = icmp eq i32 %42, 2147483647
  %cond.i.le91 = select i1 %cmp.i.le, i32 -512, i32 -4
  br label %if.else

if.else.split.loop.exit85:                        ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #19
  %asmresult.i.i.le = extractvalue { i32, i32 } %40, 0
  %sub.i.le = sub i32 0, %asmresult.i.i.le
  br label %if.else

if.else.split.loop.exit87:                        ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %42)
  %cmp.i.le94 = icmp eq i32 %42, 2147483647
  %cond.i.le = select i1 %cmp.i.le94, i32 -512, i32 -4
  br label %if.else

if.else:                                          ; preds = %if.else.split.loop.exit87, %if.else.split.loop.exit85, %if.else.split.loop.exit, %if.end33.if.else_crit_edge
  %err.0.ph = phi i32 [ %cond.i.le91, %if.else.split.loop.exit ], [ %sub.i.le, %if.else.split.loop.exit85 ], [ %cond.i.le, %if.else.split.loop.exit87 ], [ -11, %if.end33.if.else_crit_edge ]
  %54 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %28, align 8
  call void @remove_wait_queue(ptr noundef %55, ptr noundef nonnull %wait) #17
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %57)
  %cmp44.not = icmp eq i8 %57, 5
  br i1 %cmp44.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then40
  %.sink = phi i32 [ 3, %if.then40 ], [ 1, %if.else.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.then40 ], [ %err.0.ph, %if.else.cleanup.sink.split_crit_edge ]
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %58 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk_socket, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink, ptr %59, align 128
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %err.0.ph, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_send_conn_conf(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_dev_ioctl(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_setsockopt(ptr noundef, i8 noundef zeroext, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_getsockopt(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dst_negative_advice(ptr noundef %sk) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %sk_txhash.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 42
  %0 = ptrtoint ptr %sk_txhash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_txhash.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.sk_rethink_txhash.exit_crit_edge, label %if.then.i

entry.sk_rethink_txhash.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sk_rethink_txhash.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = tail call i32 @prandom_u32() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  %..i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 %call.i.i.i
  %2 = ptrtoint ptr %sk_txhash.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %..i.i.i, ptr %sk_txhash.i, align 4
  br label %sk_rethink_txhash.exit

sk_rethink_txhash.exit:                           ; preds = %if.then.i, %entry.sk_rethink_txhash.exit_crit_edge
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %3 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %sk_dst_cache.i.i, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i2 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i2, label %lockdep_sock_is_held.exit.i.i, label %sk_rethink_txhash.exit.__sk_dst_get.exit.i_crit_edge

sk_rethink_txhash.exit.__sk_dst_get.exit.i_crit_edge: ; preds = %sk_rethink_txhash.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit.i

lockdep_sock_is_held.exit.i.i:                    ; preds = %sk_rethink_txhash.exit
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %lor.lhs.false.i.i, label %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit.i

lor.lhs.false.i.i:                                ; preds = %lockdep_sock_is_held.exit.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge

lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__sk_dst_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2068, ptr noundef nonnull @.str.13) #17
  br label %__sk_dst_get.exit.i

__sk_dst_get.exit.i:                              ; preds = %if.then.i.i, %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge, %sk_rethink_txhash.exit.__sk_dst_get.exit.i_crit_edge
  %tobool.not.i3 = icmp eq ptr %4, null
  br i1 %tobool.not.i3, label %__sk_dst_get.exit.i.__dst_negative_advice.exit_crit_edge, label %land.lhs.true.i

__sk_dst_get.exit.i.__dst_negative_advice.exit_crit_edge: ; preds = %__sk_dst_get.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dst_negative_advice.exit

land.lhs.true.i:                                  ; preds = %__sk_dst_get.exit.i
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %negative_advice.i = getelementptr inbounds %struct.dst_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %negative_advice.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %negative_advice.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.__dst_negative_advice.exit_crit_edge, label %if.then.i4

land.lhs.true.i.__dst_negative_advice.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dst_negative_advice.exit

if.then.i4:                                       ; preds = %land.lhs.true.i
  %call4.i = tail call ptr %8(ptr noundef nonnull %4) #17
  %cmp.not.i = icmp eq ptr %call4.i, %4
  br i1 %cmp.not.i, label %if.then.i4.__dst_negative_advice.exit_crit_edge, label %do.body.i

if.then.i4.__dst_negative_advice.exit_crit_edge:  ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #19
  br label %__dst_negative_advice.exit

do.body.i:                                        ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !176
  %9 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call4.i, ptr %sk_dst_cache.i.i, align 4
  %skc_tx_queue_mapping.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %10 = ptrtoint ptr %skc_tx_queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i, align 4
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %11 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sk_dst_pending_confirm.i, align 8
  br label %__dst_negative_advice.exit

__dst_negative_advice.exit:                       ; preds = %do.body.i, %if.then.i4.__dst_negative_advice.exit_crit_edge, %land.lhs.true.i.__dst_negative_advice.exit_crit_edge, %__sk_dst_get.exit.i.__dst_negative_advice.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_nsp_xmit_timeout(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_nsp_queue_xmit(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_data_ready(ptr nocapture noundef readonly %sk, ptr noundef readonly %q, i32 noundef %flags, i32 noundef %target) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.034 = load ptr, ptr %q, align 4
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %cmp.not35 = icmp eq ptr %skb.034, %q
  br i1 %cmp.not35, label %for.cond.preheader.cleanup22_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup22_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup22

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %and12 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp ne i32 %and12, 0
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %cmp.i = icmp ne ptr %skb.034, %q
  %cond = zext i1 %cmp.i to i32
  br label %cleanup22

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %skb.037 = phi ptr [ %skb.034, %for.body.lr.ph ], [ %skb.0, %for.cond.backedge.for.body_crit_edge ]
  %len.036 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.backedge.for.body_crit_edge ]
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb.037, i32 0, i32 6
  %1 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len3, align 4
  %add = add i32 %2, %len.036
  %nsp_flags = getelementptr inbounds %struct.sk_buff, ptr %skb.037, i32 0, i32 3, i32 13
  %3 = ptrtoint ptr %nsp_flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nsp_flags, align 1
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end16, label %if.then6

if.then6:                                         ; preds = %for.body
  %6 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %7)
  %cmp8 = icmp ne i16 %7, 5
  %or.cond.not = and i1 %tobool13.not, %cmp8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %target)
  %cmp17.not = icmp slt i32 %add, %target
  %or.cond33 = select i1 %or.cond.not, i1 %cmp17.not, i1 false
  br i1 %or.cond33, label %if.then6.for.cond.backedge_crit_edge, label %if.then6.cleanup22_crit_edge

if.then6.cleanup22_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup22

if.then6.for.cond.backedge_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge

if.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %target)
  %cmp17.not.old = icmp slt i32 %add, %target
  br i1 %cmp17.not.old, label %if.end16.for.cond.backedge_crit_edge, label %if.end16.cleanup22_crit_edge

if.end16.cleanup22_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup22

if.end16.for.cond.backedge_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end16.for.cond.backedge_crit_edge, %if.then6.for.cond.backedge_crit_edge
  %8 = ptrtoint ptr %skb.037 to i32
  call void @__asan_load4_noabort(i32 %8)
  %skb.0 = load ptr, ptr %skb.037, align 4
  %cmp.not = icmp eq ptr %skb.0, %q
  br i1 %cmp.not, label %for.cond.backedge.cleanup22_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.backedge.cleanup22_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup22

cleanup22:                                        ; preds = %for.cond.backedge.cleanup22_crit_edge, %if.end16.cleanup22_crit_edge, %if.then6.cleanup22_crit_edge, %if.then, %for.cond.preheader.cleanup22_crit_edge
  %retval.2 = phi i32 [ %cond, %if.then ], [ 0, %for.cond.preheader.cleanup22_crit_edge ], [ 1, %if.end16.cleanup22_crit_edge ], [ 0, %for.cond.backedge.cleanup22_crit_edge ], [ 1, %if.then6.cleanup22_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_nsp_send_link(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_route_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dn_dev_up(ptr noundef %1) #17
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dn_dev_down(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_dev_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_dev_down(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dn_socket_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %entry
  %sub = add i64 %1, -1
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @dn_hash_lock) #17
  %private.i.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %2 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %storemerge9.i.i.i, 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i.i.i, ptr %3, align 4
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 256
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.then.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

for.cond.i.i.i.if.then.i_crit_edge:               ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %cond.true
  %storemerge9.i.i.i = phi i32 [ 0, %cond.true ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [256 x %struct.hlist_head], ptr @dn_sk_hash, i32 0, i32 %storemerge9.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %7, null
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %7, i32 -84
  %tobool.not8.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  %tobool.not.i.i.i = or i1 %tobool.not.i.not.i.i.i.i, %tobool.not8.i.i.i
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i, label %dn_socket_get_first.exit.i.i

dn_socket_get_first.exit.i.i:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %tobool1.not25.i.i = icmp eq i64 %sub, 0
  br i1 %tobool1.not25.i.i, label %dn_socket_get_first.exit.i.i.cond.end_crit_edge, label %dn_socket_get_first.exit.i.i.land.rhs.i.i_crit_edge

dn_socket_get_first.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %dn_socket_get_first.exit.i.i
  br label %land.rhs.i.i

dn_socket_get_first.exit.i.i.cond.end_crit_edge:  ; preds = %dn_socket_get_first.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %dn_socket_get_first.exit.i.i.land.rhs.i.i_crit_edge
  %pos.addr.0.i = phi i64 [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %sub, %dn_socket_get_first.exit.i.i.land.rhs.i.i_crit_edge ]
  %sk.026.i.i = phi ptr [ %n.addr.0.lcssa.i.ph.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i, %dn_socket_get_first.exit.i.i.land.rhs.i.i_crit_edge ]
  %8 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i.i.i, align 8
  %10 = getelementptr inbounds %struct.sock_common, ptr %sk.026.i.i, i32 0, i32 15
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %12, null
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 -84
  %tobool.not912.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  %tobool.not9.i.i.i = or i1 %tobool.not.i.i.i.i, %tobool.not912.i.i.i
  br i1 %tobool.not9.i.i.i, label %land.rhs.i.i.while.body.i.i.i_crit_edge, label %land.rhs.i.i.while.body.i.i_crit_edge

land.rhs.i.i.while.body.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

land.rhs.i.i.while.body.i.i.i_crit_edge:          ; preds = %land.rhs.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %land.rhs.i.i.while.body.i.i.i_crit_edge
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %9, align 4
  %inc.i11.i.i = add i32 %14, 1
  store i32 %inc.i11.i.i, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc.i11.i.i)
  %cmp.i.i.i = icmp sgt i32 %inc.i11.i.i, 255
  br i1 %cmp.i.i.i, label %while.body.i.i.i.if.then.i_crit_edge, label %if.end.i.i.i

while.body.i.i.i.if.then.i_crit_edge:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %arrayidx.i12.i.i = getelementptr [256 x %struct.hlist_head], ptr @dn_sk_hash, i32 0, i32 %inc.i11.i.i
  %15 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i12.i.i, align 4
  %tobool.not.i.not.i.i13.i.i = icmp eq ptr %16, null
  %add.ptr.i.i.i14.i.i = getelementptr i8, ptr %16, i32 -84
  %tobool.not13.i.i.i = icmp eq ptr %add.ptr.i.i.i14.i.i, null
  %tobool.not.i15.i.i = or i1 %tobool.not.i.not.i.i13.i.i, %tobool.not13.i.i.i
  br i1 %tobool.not.i15.i.i, label %if.end.i.i.i.while.body.i.i.i_crit_edge, label %if.end.i.i.i.while.body.i.i_crit_edge

if.end.i.i.i.while.body.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.i.while.body.i.i_crit_edge, %land.rhs.i.i.while.body.i.i_crit_edge
  %n.addr.0.lcssa.i.ph.i.i = phi ptr [ %add.ptr.i.i.i.i, %land.rhs.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i.i.i14.i.i, %if.end.i.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i64 %pos.addr.0.i, -1
  %tobool1.not.i.i = icmp eq i64 %dec.i.i, 0
  br i1 %tobool1.not.i.i, label %while.body.i.i.cond.end_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i

while.body.i.i.cond.end_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i:                                        ; preds = %while.body.i.i.i.if.then.i_crit_edge, %for.cond.i.i.i.if.then.i_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @dn_hash_lock) #17
  br label %cond.end

cond.end:                                         ; preds = %if.then.i, %while.body.i.i.cond.end_crit_edge, %dn_socket_get_first.exit.i.i.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ], [ null, %if.then.i ], [ %add.ptr.i.i.i.i.i, %dn_socket_get_first.exit.i.i.cond.end_crit_edge ], [ %n.addr.0.lcssa.i.ph.i.i, %while.body.i.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_socket_seq_stop(ptr nocapture noundef readnone %seq, ptr noundef %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %switch = icmp ult ptr %v, inttoptr (i32 2 to ptr)
  br i1 %switch, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @dn_hash_lock) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dn_socket_seq_next(ptr nocapture noundef readonly %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @dn_hash_lock) #17
  %private.i.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %storemerge9.i.i.i, 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %inc.i.i.i, ptr %1, align 4
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 256
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.out.sink.split_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

for.cond.i.i.i.out.sink.split_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.then
  %storemerge9.i.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [256 x %struct.hlist_head], ptr @dn_sk_hash, i32 0, i32 %storemerge9.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %5, null
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %5, i32 -84
  %tobool.not8.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  %tobool.not.i.i.i = or i1 %tobool.not.i.not.i.i.i.i, %tobool.not8.i.i.i
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.out_crit_edge

for.body.i.i.i.out_crit_edge:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 8
  %8 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 15
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -84
  %tobool.not912.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not9.i = or i1 %tobool.not.i.i, %tobool.not912.i
  br i1 %tobool.not9.i, label %if.end.while.body.i_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc.i)
  %cmp.i = icmp sgt i32 %inc.i, 255
  br i1 %cmp.i, label %while.body.i.out.sink.split_crit_edge, label %if.end.i

while.body.i.out.sink.split_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split

if.end.i:                                         ; preds = %while.body.i
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr @dn_sk_hash, i32 0, i32 %inc.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %14, null
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -84
  %tobool.not13.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i = or i1 %tobool.not.i.not.i.i, %tobool.not13.i
  br i1 %tobool.not.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

out.sink.split:                                   ; preds = %while.body.i.out.sink.split_crit_edge, %for.cond.i.i.i.out.sink.split_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @dn_hash_lock) #17
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.i.out_crit_edge, %if.end.out_crit_edge, %for.body.i.i.i.out_crit_edge
  %rc.0 = phi ptr [ %add.ptr.i.i, %if.end.out_crit_edge ], [ null, %out.sink.split ], [ %add.ptr.i.i.i.i.i, %for.body.i.i.i.out_crit_edge ], [ %add.ptr.i.i.i, %if.end.i.out_crit_edge ]
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pos, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_socket_seq_show(ptr noundef %seq, ptr noundef readonly %v) #4 align 64 {
entry:
  %buf1.i = alloca [9 x i8], align 1
  %buf2.i = alloca [9 x i8], align 1
  %local_object.i = alloca [19 x i8], align 1
  %remote_object.i = alloca [19 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.24) #17
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sock, ptr %v, i32 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf1.i) #17
  %0 = call ptr @memset(ptr %buf1.i, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf2.i) #17
  %1 = call ptr @memset(ptr %buf2.i, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %local_object.i) #17
  %2 = call ptr @memset(ptr %local_object.i, i32 255, i32 19)
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %remote_object.i) #17
  %addr.i = getelementptr %struct.sock, ptr %v, i32 1, i32 5
  %sdn_objnamel.i.i = getelementptr %struct.sock, ptr %v, i32 1, i32 6
  %3 = call ptr @memset(ptr %remote_object.i, i32 255, i32 19)
  %4 = ptrtoint ptr %sdn_objnamel.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sdn_objnamel.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cond.i.i = icmp eq i16 %5, 0
  br i1 %cond.i.i, label %sw.bb.i.i, label %for.body.i.preheader.i

for.body.i.preheader.i:                           ; preds = %if.else
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #17
  %7 = tail call i16 @llvm.umax.i16(i16 %6, i16 1) #17
  %umax.i = zext i16 %7 to i32
  br label %for.body.i.i

sw.bb.i.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %sdn_objnum.i.i = getelementptr inbounds %struct.sockaddr_dn, ptr %addr.i, i32 0, i32 2
  %8 = ptrtoint ptr %sdn_objnum.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sdn_objnum.i.i, align 1
  %conv1.i.i = zext i8 %9 to i32
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %local_object.i, ptr noundef nonnull @.str.28, i32 noundef %conv1.i.i) #17
  br label %dn_printable_object.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.033.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr %struct.sockaddr_dn, ptr %addr.i, i32 0, i32 4, i32 %i.033.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx5.i.i = getelementptr i8, ptr %local_object.i, i32 %i.033.i.i
  %12 = add i8 %11, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %12)
  %13 = icmp ult i8 %12, -95
  %spec.store.select.i.i = select i1 %13, i8 46, i8 %11
  %14 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.store.select.i.i, ptr %arrayidx5.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx15.i.i = getelementptr i8, ptr %local_object.i, i32 %umax.i
  %15 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx15.i.i, align 1
  br label %dn_printable_object.exit.i

dn_printable_object.exit.i:                       ; preds = %for.end.i.i, %sw.bb.i.i
  %peer.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 33
  %sdn_objnamel.i43.i = getelementptr inbounds %struct.sockaddr_dn, ptr %peer.i, i32 0, i32 3
  %16 = ptrtoint ptr %sdn_objnamel.i43.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sdn_objnamel.i43.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cond.i44.i = icmp eq i16 %17, 0
  br i1 %cond.i44.i, label %sw.bb.i50.i, label %for.body.i58.preheader.i

for.body.i58.preheader.i:                         ; preds = %dn_printable_object.exit.i
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #17
  %19 = tail call i16 @llvm.umax.i16(i16 %18, i16 1) #17
  %umax69.i = zext i16 %19 to i32
  br label %for.body.i58.i

sw.bb.i50.i:                                      ; preds = %dn_printable_object.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %sdn_objnum.i47.i = getelementptr inbounds %struct.sockaddr_dn, ptr %peer.i, i32 0, i32 2
  %20 = ptrtoint ptr %sdn_objnum.i47.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sdn_objnum.i47.i, align 1
  %conv1.i48.i = zext i8 %21 to i32
  %call.i49.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %remote_object.i, ptr noundef nonnull @.str.28, i32 noundef %conv1.i48.i) #17
  br label %dn_printable_object.exit62.i

for.body.i58.i:                                   ; preds = %for.body.i58.i.for.body.i58.i_crit_edge, %for.body.i58.preheader.i
  %i.033.i51.i = phi i32 [ %inc.i55.i, %for.body.i58.i.for.body.i58.i_crit_edge ], [ 0, %for.body.i58.preheader.i ]
  %arrayidx.i52.i = getelementptr %struct.sockaddr_dn, ptr %peer.i, i32 0, i32 4, i32 %i.033.i51.i
  %22 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i52.i, align 1
  %arrayidx5.i53.i = getelementptr i8, ptr %remote_object.i, i32 %i.033.i51.i
  %24 = add i8 %23, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %24)
  %25 = icmp ult i8 %24, -95
  %spec.store.select.i54.i = select i1 %25, i8 46, i8 %23
  %26 = ptrtoint ptr %arrayidx5.i53.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.store.select.i54.i, ptr %arrayidx5.i53.i, align 1
  %inc.i55.i = add nuw nsw i32 %i.033.i51.i, 1
  %exitcond70.not.i = icmp eq i32 %inc.i55.i, %umax69.i
  br i1 %exitcond70.not.i, label %for.end.i61.i, label %for.body.i58.i.for.body.i58.i_crit_edge

for.body.i58.i.for.body.i58.i_crit_edge:          ; preds = %for.body.i58.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i58.i

for.end.i61.i:                                    ; preds = %for.body.i58.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx15.i60.i = getelementptr i8, ptr %remote_object.i, i32 %umax69.i
  %27 = ptrtoint ptr %arrayidx15.i60.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx15.i60.i, align 1
  br label %dn_printable_object.exit62.i

dn_printable_object.exit62.i:                     ; preds = %for.end.i61.i, %sw.bb.i50.i
  %a_addr.i.i = getelementptr %struct.sock, ptr %v, i32 1, i32 7, i32 2, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %a_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %a_addr.i.i, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #17
  %and.i.i = and i16 %30, 1023
  %31 = lshr i16 %30, 10
  %conv4.i.i = zext i16 %31 to i32
  %conv5.i.i = zext i16 %and.i.i to i32
  %call.i63.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf1.i, ptr noundef nonnull @.str, i32 noundef %conv4.i.i, i32 noundef %conv5.i.i) #17
  %addrloc.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %addrloc.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addrloc.i, align 2
  %numdat.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %numdat.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %numdat.i, align 2
  %numoth.i = getelementptr %struct.sock, ptr %v, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %numoth.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %numoth.i, align 4
  %ackxmt_dat.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %ackxmt_dat.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ackxmt_dat.i, align 2
  %ackxmt_oth.i = getelementptr %struct.sock, ptr %v, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %ackxmt_oth.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ackxmt_oth.i, align 4
  %flowloc_sw.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 12
  %42 = ptrtoint ptr %flowloc_sw.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flowloc_sw.i, align 1
  %a_addr.i64.i = getelementptr inbounds %struct.sockaddr_dn, ptr %peer.i, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %a_addr.i64.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %a_addr.i64.i, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #17
  %and.i65.i = and i16 %46, 1023
  %47 = lshr i16 %46, 10
  %conv4.i66.i = zext i16 %47 to i32
  %conv5.i67.i = zext i16 %and.i65.i to i32
  %call.i68.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf2.i, ptr noundef nonnull @.str, i32 noundef %conv4.i66.i, i32 noundef %conv5.i67.i) #17
  %addrrem.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %addrrem.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %addrrem.i, align 4
  %numdat_rcv.i = getelementptr %struct.sock, ptr %v, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %numdat_rcv.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %numdat_rcv.i, align 4
  %numoth_rcv.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %numoth_rcv.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %numoth_rcv.i, align 2
  %ackrcv_dat.i = getelementptr %struct.sock, ptr %v, i32 1, i32 0, i32 4
  %54 = ptrtoint ptr %ackrcv_dat.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ackrcv_dat.i, align 2
  %ackrcv_oth.i = getelementptr %struct.sock, ptr %v, i32 1, i32 0, i32 6
  %56 = ptrtoint ptr %ackrcv_oth.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ackrcv_oth.i, align 4
  %flowrem_sw.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 11
  %58 = ptrtoint ptr %flowrem_sw.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %flowrem_sw.i, align 2
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i.i, align 4
  %switch.tableidx = add i8 %61, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %switch.tableidx)
  %62 = icmp ult i8 %switch.tableidx, 16
  br i1 %62, label %switch.lookup, label %dn_printable_object.exit62.i.dn_socket_format_entry.exit_crit_edge

dn_printable_object.exit62.i.dn_socket_format_entry.exit_crit_edge: ; preds = %dn_printable_object.exit62.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dn_socket_format_entry.exit

switch.lookup:                                    ; preds = %dn_printable_object.exit62.i
  call void @__sanitizer_cov_trace_pc() #19
  %63 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.dn_socket_seq_show, i32 0, i32 %63
  %64 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dn_socket_format_entry.exit

dn_socket_format_entry.exit:                      ; preds = %switch.lookup, %dn_printable_object.exit62.i.dn_socket_format_entry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.45, %dn_printable_object.exit62.i.dn_socket_format_entry.exit_crit_edge ]
  %conv21.i = zext i8 %59 to i32
  %conv20.i = zext i16 %57 to i32
  %conv19.i = zext i16 %55 to i32
  %conv18.i = zext i16 %53 to i32
  %conv17.i = zext i16 %51 to i32
  %conv16.i = zext i16 %49 to i32
  %conv10.i = zext i8 %43 to i32
  %conv9.i = zext i16 %41 to i32
  %conv8.i = zext i16 %39 to i32
  %conv7.i = zext i16 %37 to i32
  %conv6.i = zext i16 %35 to i32
  %conv.i = zext i16 %33 to i32
  %accept_mode.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i, i32 0, i32 25
  %65 = ptrtoint ptr %accept_mode.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %accept_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp.i = icmp eq i8 %66, 0
  %cond.i = select i1 %cmp.i, ptr @.str.26, ptr @.str.27
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef nonnull %buf1.i, i32 noundef %conv.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %conv10.i, ptr noundef nonnull %local_object.i, ptr noundef nonnull %buf2.i, i32 noundef %conv16.i, i32 noundef %conv17.i, i32 noundef %conv18.i, i32 noundef %conv19.i, i32 noundef %conv20.i, i32 noundef %conv21.i, ptr noundef nonnull %remote_object.i, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull %cond.i) #17
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %remote_object.i) #17
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %local_object.i) #17
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf2.i) #17
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf1.i) #17
  br label %if.end

if.end:                                           ; preds = %dn_socket_format_entry.exit, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nobuiltin }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !71, !73, !75, !77, !79, !80, !82, !84, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137}
!llvm.named.register.sp = !{!139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/decnet/af_decnet.c", i32 662, i32 15}
!2 = !{ptr @__UNIQUE_ID_description625, !3, !"__UNIQUE_ID_description625", i1 false, i1 false}
!3 = !{!"../net/decnet/af_decnet.c", i32 2335, i32 1}
!4 = !{ptr @__UNIQUE_ID_author626, !5, !"__UNIQUE_ID_author626", i1 false, i1 false}
!5 = !{!"../net/decnet/af_decnet.c", i32 2336, i32 1}
!6 = !{ptr @__UNIQUE_ID_file627, !7, !"__UNIQUE_ID_file627", i1 false, i1 false}
!7 = !{!"../net/decnet/af_decnet.c", i32 2337, i32 1}
!8 = !{ptr @__UNIQUE_ID_license628, !7, !"__UNIQUE_ID_license628", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias629, !10, !"__UNIQUE_ID_alias629", i1 false, i1 false}
!10 = !{!"../net/decnet/af_decnet.c", i32 2338, i32 1}
!11 = !{ptr @__initcall__kmod_decnet__630_2370_decnet_init6, !12, !"__initcall__kmod_decnet__630_2370_decnet_init6", i1 false, i1 false}
!12 = !{!"../net/decnet/af_decnet.c", i32 2370, i32 1}
!13 = !{ptr @dn_sk_hash, !14, !"dn_sk_hash", i1 false, i1 false}
!14 = !{!"../net/decnet/af_decnet.c", i32 149, i32 26}
!15 = !{ptr @dn_wild_sk, !16, !"dn_wild_sk", i1 false, i1 false}
!16 = !{!"../net/decnet/af_decnet.c", i32 150, i32 26}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/decnet/af_decnet.c", i32 148, i32 8}
!19 = !{ptr @dn_hash_lock, !18, !"dn_hash_lock", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/net/sock.h", i32 729, i32 3}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/decnet/af_decnet.c", i32 2347, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @decnet_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @decnet_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/decnet/af_decnet.c", i32 2362, i32 26}
!29 = !{ptr @banner, !30, !"banner", i1 false, i1 false}
!30 = !{!"../net/decnet/af_decnet.c", i32 2340, i32 19}
!31 = !{ptr @dn_proto, !32, !"dn_proto", i1 false, i1 false}
!32 = !{!"../net/decnet/af_decnet.c", i32 452, i32 21}
!33 = !{ptr @decnet_memory_allocated, !34, !"decnet_memory_allocated", i1 false, i1 false}
!34 = !{!"../net/decnet/af_decnet.c", i32 151, i32 22}
!35 = !{ptr @dn_memory_pressure, !36, !"dn_memory_pressure", i1 false, i1 false}
!36 = !{!"../net/decnet/af_decnet.c", i32 443, i32 22}
!37 = !{ptr @dn_family_ops, !38, !"dn_family_ops", i1 false, i1 false}
!38 = !{!"../net/decnet/af_decnet.c", i32 2308, i32 38}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/decnet/af_decnet.c", i32 512, i32 34}
!41 = !{ptr @dn_proto_ops, !42, !"dn_proto_ops", i1 false, i1 false}
!42 = !{!"../net/decnet/af_decnet.c", i32 2314, i32 31}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/decnet/af_decnet.c", i32 644, i32 3}
!45 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dn_destroy_sock._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @dn_destroy_sock._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/decnet/af_decnet.c", i32 749, i32 4}
!50 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!53 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/net/dn_dev.h", i32 181, i32 10}
!57 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/net/dn_dev.h", i32 183, i32 3}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dn_dev_islocal._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @dn_dev_islocal._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/net/dn_dev.h", i32 187, i32 13}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/net/dn_dev.h", i32 189, i32 13}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!70 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @port_alloc.port, !72, !"port", i1 false, i1 false}
!72 = !{!"../net/decnet/af_decnet.c", i32 188, i32 24}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/net/sock.h", i32 2067, i32 9}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!79 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../net/decnet/af_decnet.c", i32 440, i32 14}
!86 = !{ptr @skb_queue_head_init.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!88 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @dn_dix_packet_type, !90, !"dn_dix_packet_type", i1 false, i1 false}
!90 = !{!"../net/decnet/af_decnet.c", i32 2105, i32 27}
!91 = !{ptr @dn_dev_notifier, !92, !"dn_dev_notifier", i1 false, i1 false}
!92 = !{!"../net/decnet/af_decnet.c", i32 2101, i32 30}
!93 = !{ptr @dn_socket_seq_ops, !94, !"dn_socket_seq_ops", i1 false, i1 false}
!94 = !{!"../net/decnet/af_decnet.c", i32 2300, i32 36}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/decnet/af_decnet.c", i32 2293, i32 17}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/decnet/af_decnet.c", i32 2268, i32 6}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/decnet/af_decnet.c", i32 2287, i32 41}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/decnet/af_decnet.c", i32 2287, i32 51}
!103 = !{ptr @.str.28, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/decnet/af_decnet.c", i32 2204, i32 16}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/decnet/af_decnet.c", i32 2220, i32 10}
!107 = !{ptr @.str.30, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/decnet/af_decnet.c", i32 2222, i32 10}
!109 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/decnet/af_decnet.c", i32 2224, i32 10}
!111 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/decnet/af_decnet.c", i32 2226, i32 10}
!113 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/decnet/af_decnet.c", i32 2228, i32 10}
!115 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/decnet/af_decnet.c", i32 2230, i32 10}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/decnet/af_decnet.c", i32 2232, i32 10}
!119 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/decnet/af_decnet.c", i32 2234, i32 10}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/decnet/af_decnet.c", i32 2236, i32 10}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/decnet/af_decnet.c", i32 2238, i32 10}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/decnet/af_decnet.c", i32 2240, i32 10}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/decnet/af_decnet.c", i32 2242, i32 10}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/decnet/af_decnet.c", i32 2244, i32 10}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/decnet/af_decnet.c", i32 2246, i32 10}
!133 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/decnet/af_decnet.c", i32 2248, i32 10}
!135 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/decnet/af_decnet.c", i32 2250, i32 10}
!137 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/decnet/af_decnet.c", i32 2253, i32 9}
!139 = !{!"sp"}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i64 2148393695, i64 2148393727, i64 2148393756, i64 2148393790, i64 2148393821, i64 2148393844}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2148481720}
!153 = !{i64 2148396160, i64 2148396192, i64 2148396221, i64 2148396255, i64 2148396286, i64 2148396309}
!154 = !{i64 2149357834}
!155 = !{i64 2149408324}
!156 = !{i64 2149408590}
!157 = !{i64 2156844838}
!158 = !{i64 898933, i64 898950, i64 898974, i64 899000, i64 899018}
!159 = !{i64 2156845183}
!160 = !{i64 2158818362, i64 2158818850, i64 2158818399, i64 2158818455, i64 2158818489, i64 2158818513, i64 2158818554, i64 2158818575, i64 2158818603, i64 2158818637}
!161 = !{i64 5134731}
!162 = !{i64 5134928}
!163 = !{i64 2152620161}
!164 = !{i64 2158826305, i64 2158826585, i64 2158826919, i64 2158827253}
!165 = !{i64 2158835330, i64 2158835610, i64 2158835944, i64 2158836278}
!166 = !{i64 2152639176, i64 2152639201}
!167 = !{!"auto-init"}
!168 = !{i64 2158868402, i64 2158868682, i64 2158869016, i64 2158869350}
!169 = !{i64 2152639857, i64 2152639882}
!170 = !{i64 2158877930, i64 2158878210, i64 2158878544, i64 2158878878}
!171 = !{i64 2158847406, i64 2158847686, i64 2158848020, i64 2158848354}
!172 = !{i64 2158856891, i64 2158857171, i64 2158857505, i64 2158857839}
!173 = !{i64 2156865619}
!174 = !{i64 2156865962}
!175 = !{i64 2158758349, i64 2158758836, i64 2158758386, i64 2158758442, i64 2158758476, i64 2158758500, i64 2158758541, i64 2158758562, i64 2158758590, i64 2158758624}
!176 = !{i64 2156832359}
