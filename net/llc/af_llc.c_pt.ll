; ModuleID = '/llk/IR_all_yes/net/llc/af_llc.c_pt.bc'
source_filename = "../net/llc/af_llc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.140, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.140 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.115, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.115 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.113, i32, %struct.spinlock }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
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
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sockaddr_llc = type { i16, i16, i8, i8, i8, i8, [6 x i8], [2 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.25 }
%union.anon.25 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.141 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.142 = type { %struct.callback_head }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.144 = type { ptr }
%struct.llc_sock = type { %struct.sock, %struct.sockaddr_llc, i8, ptr, %struct.llc_addr, %struct.llc_addr, ptr, ptr, i32, i8, i8, i8, i8, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hlist_node }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.llc_timer = type { %struct.timer_list, i32 }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.hlist_nulls_head = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.125, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.125 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.139 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.66 }
%union.anon.66 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.91 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sk_buff = type { %union.anon.26, %union.anon.29, %union.anon.30, [48 x i8], %union.anon.31, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.33, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, ptr, %union.anon.28 }
%union.anon.28 = type { ptr }
%union.anon.29 = type { ptr }
%union.anon.30 = type { i64 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { i32, ptr }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.35, i32, i32, i32, i16, i16, %union.anon.37, i32, %union.anon.38, %union.anon.39, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.35 = type { i32 }
%union.anon.37 = type { i32 }
%union.anon.38 = type { i32 }
%union.anon.39 = type { i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.123, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.102, %union.anon.103 }
%union.anon.102 = type { ptr }
%union.anon.103 = type { i64 }
%union.anon.123 = type { ptr }
%struct.llc_pktinfo = type { i32, i8, [6 x i8] }

@llc_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1328, i32 524288, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, ptr null, [32 x i8] c"LLC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_llc2__462_1276_llc2_init6 = internal global ptr @llc2_init, section ".initcall6.init", align 4
@__exitcall_llc2_exit = internal global ptr @llc2_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file463 = internal constant [23 x i8] c"llc2.file=net/llc/llc2\00", section ".modinfo", align 1
@__UNIQUE_ID_license464 = internal constant [17 x i8] c"llc2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author465 = internal constant [71 x i8] c"llc2.author=Procom 1997, Jay Schullist 2001, Arnaldo C. Melo 2001-2003\00", section ".modinfo", align 1
@__UNIQUE_ID_description466 = internal constant [43 x i8] c"llc2.description=IEEE 802.2 PF_LLC support\00", section ".modinfo", align 1
@__UNIQUE_ID_alias467 = internal constant [21 x i8] c"llc2.alias=net-pf-26\00", section ".modinfo", align 1
@llc_ui_sap_last_autoport = internal global { i16, [30 x i8] } { i16 192, [30 x i8] zeroinitializer }, align 32
@llc2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str, ptr @.str.1, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"llc2_init\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/llc/af_llc.c\00", [47 x i8] zeroinitializer }, align 32
@llc2_init._entry_ptr = internal global ptr @llc2_init._entry, section ".printk_index", align 4
@llc_proc_err_msg = internal constant [47 x i8] c"\012LLC: Unable to register the proc_fs entries\0A\00", section ".init.rodata", align 1
@llc2_init._entry.2 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str, ptr @.str.1, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@llc2_init._entry_ptr.3 = internal global ptr @llc2_init._entry.2, section ".printk_index", align 4
@llc_sysctl_err_msg = internal constant [46 x i8] c"\012LLC: Unable to register the sysctl entries\0A\00", section ".init.rodata", align 1
@llc_ui_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 26, ptr @llc_ui_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@llc2_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str, ptr @.str.1, i32 1248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@llc2_init._entry_ptr.5 = internal global ptr @llc2_init._entry.4, section ".printk_index", align 4
@llc_sock_err_msg = internal constant [46 x i8] c"\012LLC: Unable to register the network family\0A\00", section ".init.rodata", align 1
@init_net = external dso_local global %struct.net, align 128
@llc_ui_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 26, ptr null, ptr @llc_ui_release, ptr @llc_ui_bind, ptr @llc_ui_connect, ptr @sock_no_socketpair, ptr @llc_ui_accept, ptr @llc_ui_getname, ptr @datagram_poll, ptr @llc_ui_ioctl, ptr null, ptr @llc_ui_listen, ptr @llc_ui_shutdown, ptr @llc_ui_setsockopt, ptr @llc_ui_getsockopt, ptr null, ptr @llc_ui_sendmsg, ptr @llc_ui_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@llc_ui_sap_link_no_max = internal global { [256 x i16], [128 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@llc_ui_addrnull = internal global { %struct.sockaddr_llc, [16 x i8] } zeroinitializer, align 32
@llc_ui_recvmsg.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.1, ptr @.str.15, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"llc2\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"llc_ui_recvmsg\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"LLC(%s:%d): Application bug, race in MSG_PEEK\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.16 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"llc_proto\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 153, i32 21 }
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"llc_ui_sap_last_autoport\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 38, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1238, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1243, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"llc_ui_family_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1192, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1248, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"llc_ui_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1198, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 2024, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 695, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 723, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [23 x i8] c"llc_ui_sap_link_no_max\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 39, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 230, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 214, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 156, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"llc_ui_addrnull\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 40, i32 28 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [20 x i8] c"../net/llc/af_llc.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 839, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_alias467, ptr @__UNIQUE_ID_author465, ptr @__UNIQUE_ID_description466, ptr @__UNIQUE_ID_file463, ptr @__UNIQUE_ID_license464, ptr @__exitcall_llc2_exit, ptr @__initcall__kmod_llc2__462_1276_llc2_init6, ptr @llc2_exit, ptr @llc2_init._entry, ptr @llc2_init._entry.2, ptr @llc2_init._entry.4, ptr @llc2_init._entry_ptr, ptr @llc2_init._entry_ptr.3, ptr @llc2_init._entry_ptr.5, ptr @llc_proto, ptr @llc_ui_sap_last_autoport, ptr @.str, ptr @.str.1, ptr @llc_ui_family_ops, ptr @llc_ui_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @llc_ui_sap_link_no_max, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @llc_ui_addrnull, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_ui_sap_last_autoport to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc2_init._entry.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_ui_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc2_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_ui_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_ui_sap_link_no_max to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_ui_addrnull to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @llc2_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llc_station_exit() #11
  tail call void @llc_remove_pack(i32 noundef 1) #11
  tail call void @llc_remove_pack(i32 noundef 2) #11
  tail call void @sock_unregister(i32 noundef 26) #11
  tail call void @llc_proc_exit() #11
  tail call void @llc_sysctl_exit() #11
  tail call void @proto_unregister(ptr noundef nonnull @llc_proto) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_station_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_remove_pack(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_proc_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sysctl_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @llc2_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @llc_proto, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  tail call void @llc_build_offset_table() #11
  tail call void @llc_station_init() #11
  store i16 192, ptr @llc_ui_sap_last_autoport, align 2
  %call1 = tail call i32 @llc_proc_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @llc_proc_err_msg) #14
  br label %out_station

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @llc_sysctl_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @llc_sysctl_err_msg) #14
  br label %out_proc

if.end17:                                         ; preds = %if.end7
  %call18 = tail call i32 @sock_register(ptr noundef nonnull @llc_ui_family_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @llc_sock_err_msg) #14
  tail call void @llc_sysctl_exit() #11
  br label %out_proc

if.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llc_add_pack(i32 noundef 1, ptr noundef nonnull @llc_sap_handler) #11
  tail call void @llc_add_pack(i32 noundef 2, ptr noundef nonnull @llc_conn_handler) #11
  br label %out

out:                                              ; preds = %out_station, %if.end28, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %rc.2, %out_station ], [ 0, %if.end28 ]
  ret i32 %rc.0

out_proc:                                         ; preds = %do.end25, %do.end14
  %rc.1 = phi i32 [ %call8, %do.end14 ], [ %call18, %do.end25 ]
  tail call void @llc_proc_exit() #11
  br label %out_station

out_station:                                      ; preds = %out_proc, %do.end
  %rc.2 = phi i32 [ %call1, %do.end ], [ %rc.1, %out_proc ]
  tail call void @llc_station_exit() #11
  tail call void @proto_unregister(ptr noundef nonnull @llc_proto) #11
  br label %out
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_build_offset_table() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_station_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_proc_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sysctl_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_add_pack(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sap_handler(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_conn_handler(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %0 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ns, align 4
  %call = tail call zeroext i1 @ns_capable(ptr noundef %1, i32 noundef 13) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  %.off = add i16 %3, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.then11, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end3
  %call12 = tail call ptr @llc_sk_alloc(ptr noundef nonnull @init_net, i32 noundef 26, i32 noundef 3264, ptr noundef nonnull @llc_proto, i32 noundef %kern) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %if.then14

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %if.then11
  %sk1.i.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %4 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk1.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then14.llc_ui_sk_init.exit_crit_edge, label %do.end.i.i, !prof !73

if.then14.llc_ui_sk_init.exit_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_ui_sk_init.exit

do.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2024, i32 noundef 9, ptr noundef null) #11
  br label %llc_ui_sk_init.exit

llc_ui_sk_init.exit:                              ; preds = %do.end.i.i, %if.then14.llc_ui_sk_init.exit_crit_edge
  %sk_callback_lock.i.i = getelementptr inbounds %struct.sock, ptr %call12, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i.i) #11
  %wq.i.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  %6 = getelementptr inbounds %struct.sock, ptr %call12, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %wq.i.i, ptr %6, align 8
  %8 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %sk1.i.i, align 16
  %sk_socket.i.i.i = getelementptr inbounds %struct.sock, ptr %call12, i32 0, i32 71
  %9 = ptrtoint ptr %sk_socket.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sock, ptr %sk_socket.i.i.i, align 8
  %sk_uid.i.i = getelementptr inbounds %struct.sock, ptr %call12, i32 0, i32 55
  %i_uid.i.i = getelementptr inbounds %struct.socket_alloc, ptr %sock, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_uid.i.i, align 4
  %12 = ptrtoint ptr %sk_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sk_uid.i.i, align 4
  tail call void @security_sock_graft(ptr noundef nonnull %call12, ptr noundef %sock) #11
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i.i) #11
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %type, align 4
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %call12, i32 0, i32 45
  %15 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %sk_type.i, align 2
  %ops.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @llc_ui_ops, ptr %ops.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %llc_ui_sk_init.exit, %if.then11.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ], [ 0, %llc_ui_sk_init.exit ], [ -12, %if.then11.cleanup_crit_edge ], [ -94, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_release(ptr nocapture noundef readonly %sock) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end, !prof !75

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !76
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !75

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #11
  %call3 = tail call i32 @llc_send_disc(ptr noundef nonnull %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %sock_hold.exit.if.end7_crit_edge

sock_hold.exit.if.end7_crit_edge:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sk_rcvtimeo = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %4 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_rcvtimeo, align 4
  %call6 = tail call fastcc i32 @llc_ui_wait_for_disc(ptr noundef nonnull %1, i32 noundef %5)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %sock_hold.exit.if.end7_crit_edge
  %6 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %sap10 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sap10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sap10, align 4
  %refcnt.i = getelementptr inbounds %struct.llc_sap, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !76
  %asmresult.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i30)
  %tobool1.not.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i30, 0
  br i1 %tobool1.not.i.i.i.i31, label %if.then9.if.end15.sink.split.i.i.i.i36_crit_edge, label %if.else.i.i.i.i34, !prof !75

if.then9.if.end15.sink.split.i.i.i.i36_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i36

if.else.i.i.i.i34:                                ; preds = %if.then9
  %add.i.i.i.i32 = add i32 %asmresult.i.i.i.i.i.i30, 1
  %13 = or i32 %add.i.i.i.i32, %asmresult.i.i.i.i.i.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i33 = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i33, label %if.else.i.i.i.i34.llc_sap_hold.exit_crit_edge, label %if.else.i.i.i.i34.if.end15.sink.split.i.i.i.i36_crit_edge, !prof !73

if.else.i.i.i.i34.if.end15.sink.split.i.i.i.i36_crit_edge: ; preds = %if.else.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i36

if.else.i.i.i.i34.llc_sap_hold.exit_crit_edge:    ; preds = %if.else.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_sap_hold.exit

if.end15.sink.split.i.i.i.i36:                    ; preds = %if.else.i.i.i.i34.if.end15.sink.split.i.i.i.i36_crit_edge, %if.then9.if.end15.sink.split.i.i.i.i36_crit_edge
  %.sink.i.i.i.i35 = phi i32 [ 2, %if.then9.if.end15.sink.split.i.i.i.i36_crit_edge ], [ 1, %if.else.i.i.i.i34.if.end15.sink.split.i.i.i.i36_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i35) #11
  br label %llc_sap_hold.exit

llc_sap_hold.exit:                                ; preds = %if.end15.sink.split.i.i.i.i36, %if.else.i.i.i.i34.llc_sap_hold.exit_crit_edge
  %14 = ptrtoint ptr %sap10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sap10, align 4
  tail call void @llc_sap_remove_socket(ptr noundef %15, ptr noundef nonnull %1) #11
  tail call void @release_sock(ptr noundef nonnull %1) #11
  %call.i.i.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %llc_sap_hold.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i39 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i39, label %if.end5.i.i.i.i.if.end12_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end5.i.i.i.i.if.end12_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %if.end12

if.then.i:                                        ; preds = %llc_sap_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  tail call void @llc_sap_close(ptr noundef %11) #11
  br label %if.end12

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef nonnull %1) #11
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end12_crit_edge
  %dev = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end12.dev_put_track.exit_crit_edge, label %do.body1.i.i

if.end12.dev_put_track.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %if.end12
  %dev_tracker = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 7
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #11
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i.i = add i32 %31, -1
  store i32 %add13.i.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !75

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #11, !srcloc !82
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %if.end12.dev_put_track.exit_crit_edge
  %call.i.i.i.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !78
  %asmresult.i.i.i.i.i.i.i42 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i42)
  %cmp.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i42, 1
  br i1 %cmp.i.i.i.i43, label %if.then.i47, label %if.end5.i.i.i.i45

if.end5.i.i.i.i45:                                ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i42)
  %.not.i.i.i.i44 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i42, 0
  br i1 %.not.i.i.i.i44, label %if.end5.i.i.i.i45.sock_put.exit_crit_edge, label %if.then10.i.i.i.i46, !prof !73

if.end5.i.i.i.i45.sock_put.exit_crit_edge:        ; preds = %if.end5.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_put.exit

if.then10.i.i.i.i46:                              ; preds = %if.end5.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %sock_put.exit

if.then.i47:                                      ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  tail call void @sk_free(ptr noundef nonnull %1) #11
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i47, %if.then10.i.i.i.i46, %if.end5.i.i.i.i45.sock_put.exit_crit_edge
  tail call void @llc_sk_free(ptr noundef nonnull %1) #11
  br label %out

out:                                              ; preds = %sock_put.exit, %entry.out_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_bind(ptr nocapture noundef readonly %sock, ptr noundef %uaddr, i32 noundef %addrlen) #4 align 64 {
entry:
  %laddr = alloca %struct.llc_addr, align 1
  %daddr = alloca %struct.llc_addr, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addrlen)
  %cmp = icmp ne i32 %addrlen, 16
  %spec.select = or i1 %cmp, %tobool.i.not
  br i1 %spec.select, label %entry.cleanup104_crit_edge, label %if.end, !prof !75

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup104

if.end:                                           ; preds = %entry
  %sllc_arphrd = getelementptr inbounds %struct.sockaddr_llc, ptr %uaddr, i32 0, i32 1
  %6 = ptrtoint ptr %sllc_arphrd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sllc_arphrd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %sllc_arphrd to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %sllc_arphrd, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %9 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %10)
  %cmp8.not = icmp eq i16 %10, 26
  br i1 %cmp8.not, label %lor.rhs10, label %if.end7.cleanup104_crit_edge, !prof !73

if.end7.cleanup104_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup104

lor.rhs10:                                        ; preds = %if.end7
  %11 = ptrtoint ptr %sllc_arphrd to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sllc_arphrd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp13.not = icmp eq i16 %12, 1
  br i1 %cmp13.not, label %do.end, label %lor.rhs10.cleanup104_crit_edge, !prof !73

lor.rhs10.cleanup104_crit_edge:                   ; preds = %lor.rhs10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup104

do.end:                                           ; preds = %lor.rhs10
  %13 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !83
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not = icmp eq i32 %18, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %rcu_read_lock.exit
  %call28 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %18) #11
  %dev = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call28, ptr %dev, align 8
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.then25.if.end58_crit_edge, label %if.then31

if.then25.if.end58_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then31:                                        ; preds = %if.then25
  %sllc_mac = getelementptr inbounds %struct.sockaddr_llc, ptr %uaddr, i32 0, i32 6
  %20 = ptrtoint ptr %sllc_mac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sllc_mac, align 4
  %add.ptr.i = getelementptr %struct.sockaddr_llc, ptr %uaddr, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %23 to i32
  %or.i = or i32 %21, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then33, label %if.then31.if.end37_crit_edge

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %26 = call ptr @memcpy(ptr %sllc_mac, ptr %25, i32 6)
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.then31.if.end37_crit_edge
  %27 = ptrtoint ptr %sllc_arphrd to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sllc_arphrd, align 2
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 32
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %32)
  %cmp42.not = icmp eq i16 %28, %32
  br i1 %cmp42.not, label %lor.lhs.false, label %if.end37.if.then49_crit_edge

if.end37.if.then49_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

lor.lhs.false:                                    ; preds = %if.end37
  %dev_addr47 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr47, align 64
  %35 = ptrtoint ptr %sllc_mac to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sllc_mac, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 4
  %xor.i = xor i32 %38, %36
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %34, i32 4
  %41 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %42, %40
  %xor3.i = zext i16 %xor37.i to i32
  %or.i153 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i153)
  %cmp.i154 = icmp eq i32 %or.i153, 0
  br i1 %cmp.i154, label %lor.lhs.false.if.end58_crit_edge, label %lor.lhs.false.if.then49_crit_edge

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then49:                                        ; preds = %lor.lhs.false.if.then49_crit_edge, %if.end37.if.then49_crit_edge
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %dev, align 8
  br label %if.end58

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %sllc_arphrd to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sllc_arphrd, align 2
  %sllc_mac54 = getelementptr inbounds %struct.sockaddr_llc, ptr %uaddr, i32 0, i32 6
  %call56 = tail call ptr @dev_getbyhwaddr_rcu(ptr noundef nonnull @init_net, i16 noundef zeroext %45, ptr noundef %sllc_mac54) #11
  %dev57 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %dev57 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call56, ptr %dev57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then49, %lor.lhs.false.if.end58_crit_edge, %if.then25.if.end58_crit_edge
  %rc.0 = phi i32 [ -22, %if.then49 ], [ -19, %lor.lhs.false.if.end58_crit_edge ], [ -19, %if.then25.if.end58_crit_edge ], [ -19, %if.else ]
  %dev59 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev59, align 8
  %dev_tracker = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 7
  %tobool.not.i155 = icmp eq ptr %48, null
  br i1 %tobool.not.i155, label %if.end58.dev_hold_track.exit_crit_edge, label %do.body1.i.i

if.end58.dev_hold_track.exit_crit_edge:           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hold_track.exit

do.body1.i.i:                                     ; preds = %if.end58
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 118
  %50 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %58, %52
  %59 = inttoptr i32 %add.i.i to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add13.i.i = add i32 %61, 1
  store i32 %add13.i.i, ptr %59, align 4
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !75

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #11, !srcloc !82
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 2592) #11
  br label %dev_hold_track.exit

dev_hold_track.exit:                              ; preds = %dev_hold.exit.i, %if.end58.dev_hold_track.exit_crit_edge
  %call.i156 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i156, label %dev_hold_track.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i159

dev_hold_track.exit.rcu_read_unlock.exit_crit_edge: ; preds = %dev_hold_track.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i159:                               ; preds = %dev_hold_track.exit
  %call1.i157 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i157)
  %tobool.not.i158 = icmp eq i32 %call1.i157, 0
  br i1 %tobool.not.i158, label %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i161

land.lhs.true.i159.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i161:                              ; preds = %land.lhs.true.i159
  %.b4.i160 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i160, label %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, label %if.then.i162

land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i162:                                     ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i162, %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, %dev_hold_track.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  %63 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i.i.i163 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i163 to ptr
  %preempt_count.i.i.i.i164 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i164, align 4
  %sub.i.i.i = add i32 %66, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i164, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %67 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev59, align 8
  %tobool61.not = icmp eq ptr %68, null
  br i1 %tobool61.not, label %rcu_read_unlock.exit.cleanup104_crit_edge, label %if.end63

rcu_read_unlock.exit.cleanup104_crit_edge:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup104

if.end63:                                         ; preds = %rcu_read_unlock.exit
  %sllc_sap = getelementptr inbounds %struct.sockaddr_llc, ptr %uaddr, i32 0, i32 5
  %69 = ptrtoint ptr %sllc_sap to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sllc_sap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool64.not = icmp eq i8 %70, 0
  br i1 %tobool64.not, label %if.then65, label %if.end63.if.end73_crit_edge

if.end63.if.end73_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then65:                                        ; preds = %if.end63
  %call66 = tail call fastcc i32 @llc_ui_autoport()
  %conv67 = trunc i32 %call66 to i8
  %71 = ptrtoint ptr %sllc_sap to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv67, ptr %sllc_sap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv67)
  %tobool70.not = icmp eq i8 %conv67, 0
  br i1 %tobool70.not, label %if.then65.cleanup104_crit_edge, label %if.then65.if.end73_crit_edge

if.then65.if.end73_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then65.cleanup104_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup104

if.end73:                                         ; preds = %if.then65.if.end73_crit_edge, %if.end63.if.end73_crit_edge
  %72 = ptrtoint ptr %sllc_sap to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %sllc_sap, align 1
  %call75 = tail call ptr @llc_sap_find(i8 noundef zeroext %73) #11
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then77, label %if.else83

if.then77:                                        ; preds = %if.end73
  %74 = ptrtoint ptr %sllc_sap to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sllc_sap, align 1
  %call79 = tail call ptr @llc_sap_open(i8 noundef zeroext %75, ptr noundef null) #11
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %if.then77.cleanup104_crit_edge, label %if.then77.if.end94_crit_edge

if.then77.if.end94_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then77.cleanup104_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup104

if.else83:                                        ; preds = %if.end73
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %laddr) #11
  %76 = getelementptr inbounds %struct.llc_addr, ptr %laddr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %daddr) #11
  %77 = call ptr @memset(ptr %daddr, i32 0, i32 7)
  %sllc_mac85 = getelementptr inbounds %struct.sockaddr_llc, ptr %uaddr, i32 0, i32 6
  %78 = call ptr @memcpy(ptr %76, ptr %sllc_mac85, i32 6)
  %79 = ptrtoint ptr %sllc_sap to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %sllc_sap, align 1
  %81 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %laddr, align 1
  %call88 = call ptr @llc_lookup_established(ptr noundef nonnull %call75, ptr noundef nonnull %daddr, ptr noundef nonnull %laddr) #11
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %cleanup, label %if.then90

if.then90:                                        ; preds = %if.else83
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call88, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %82 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i165, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup.thread_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end5.i.i.i.i.cleanup.thread_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %cleanup.thread

if.then.i165:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  call void @sk_free(ptr noundef nonnull %call88) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i165, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %daddr) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %laddr) #11
  br label %out_put

cleanup:                                          ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %daddr) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %laddr) #11
  br label %if.end94

if.end94:                                         ; preds = %cleanup, %if.then77.if.end94_crit_edge
  %sap.0 = phi ptr [ %call75, %cleanup ], [ %call79, %if.then77.if.end94_crit_edge ]
  %83 = ptrtoint ptr %sllc_sap to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %sllc_sap, align 1
  %laddr96 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 4
  %85 = ptrtoint ptr %laddr96 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %laddr96, align 8
  %mac99 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 4, i32 1
  %sllc_mac101 = getelementptr inbounds %struct.sockaddr_llc, ptr %uaddr, i32 0, i32 6
  %86 = call ptr @memcpy(ptr %mac99, ptr %sllc_mac101, i32 6)
  %addr103 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 1
  %87 = call ptr @memcpy(ptr %addr103, ptr %uaddr, i32 16)
  call void @llc_sap_add_socket(ptr noundef nonnull %sap.0, ptr noundef %1) #11
  %88 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %2, align 4
  %and.i.i = and i32 %89, -257
  store i32 %and.i.i, ptr %2, align 4
  br label %out_put

out_put:                                          ; preds = %if.end94, %cleanup.thread
  %sap.1 = phi ptr [ %sap.0, %if.end94 ], [ %call75, %cleanup.thread ]
  %rc.1 = phi i32 [ 0, %if.end94 ], [ -98, %cleanup.thread ]
  %refcnt.i = getelementptr inbounds %struct.llc_sap, ptr %sap.1, i32 0, i32 3
  %call.i.i.i.i.i.i166 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %90 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !78
  %asmresult.i.i.i.i.i.i.i167 = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i167)
  %cmp.i.i.i.i168 = icmp eq i32 %asmresult.i.i.i.i.i.i.i167, 1
  br i1 %cmp.i.i.i.i168, label %if.then.i172, label %if.end5.i.i.i.i170

if.end5.i.i.i.i170:                               ; preds = %out_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i167)
  %.not.i.i.i.i169 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i167, 0
  br i1 %.not.i.i.i.i169, label %if.end5.i.i.i.i170.cleanup104_crit_edge, label %if.then10.i.i.i.i171, !prof !73

if.end5.i.i.i.i170.cleanup104_crit_edge:          ; preds = %if.end5.i.i.i.i170
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup104

if.then10.i.i.i.i171:                             ; preds = %if.end5.i.i.i.i170
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %cleanup104

if.then.i172:                                     ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  call void @llc_sap_close(ptr noundef nonnull %sap.1) #11
  br label %cleanup104

cleanup104:                                       ; preds = %if.then.i172, %if.then10.i.i.i.i171, %if.end5.i.i.i.i170.cleanup104_crit_edge, %if.then77.cleanup104_crit_edge, %if.then65.cleanup104_crit_edge, %rcu_read_unlock.exit.cleanup104_crit_edge, %lor.rhs10.cleanup104_crit_edge, %if.end7.cleanup104_crit_edge, %entry.cleanup104_crit_edge
  %rc.2 = phi i32 [ -22, %entry.cleanup104_crit_edge ], [ -97, %lor.rhs10.cleanup104_crit_edge ], [ -16, %if.then77.cleanup104_crit_edge ], [ -87, %if.then65.cleanup104_crit_edge ], [ %rc.0, %rcu_read_unlock.exit.cleanup104_crit_edge ], [ -97, %if.end7.cleanup104_crit_edge ], [ %rc.1, %if.end5.i.i.i.i170.cleanup104_crit_edge ], [ %rc.1, %if.then10.i.i.i.i171 ], [ %rc.1, %if.then.i172 ]
  call void @release_sock(ptr noundef %1) #11
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_connect(ptr nocapture noundef %sock, ptr noundef %uaddr, i32 noundef %addrlen, i32 noundef %flags) #4 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addrlen)
  %cmp.not = icmp eq i32 %addrlen, 16
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !73

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %3)
  %cmp3.not = icmp eq i16 %3, 26
  br i1 %cmp3.not, label %if.end12, label %if.end.out_crit_edge, !prof !73

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end12:                                         ; preds = %if.end
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp14.not = icmp eq i16 %5, 1
  br i1 %cmp14.not, label %if.end23, label %if.end12.out_crit_edge, !prof !73

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp24 = icmp eq i32 %7, 2
  br i1 %cmp24, label %if.end23.out_crit_edge, label %if.end33, !prof !75

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end33:                                         ; preds = %if.end23
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end33.if.end40_crit_edge, label %if.then35

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then35:                                        ; preds = %if.end33
  %call36 = tail call fastcc i32 @llc_ui_autobind(ptr noundef %sock, ptr noundef %uaddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.if.end40_crit_edge, label %if.then35.out_crit_edge

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.end40:                                         ; preds = %if.then35.if.end40_crit_edge, %if.end33.if.end40_crit_edge
  %sllc_sap = getelementptr inbounds %struct.sockaddr_llc, ptr %uaddr, i32 0, i32 5
  %12 = ptrtoint ptr %sllc_sap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sllc_sap, align 1
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %daddr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %daddr, align 1
  %mac = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 5, i32 1
  %sllc_mac = getelementptr inbounds %struct.sockaddr_llc, ptr %uaddr, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %mac, ptr %sllc_mac, i32 6)
  %16 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %sock, align 128
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 2, ptr %skc_state, align 2
  %sap = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sap, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %laddr, align 4
  %conv45 = zext i8 %21 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @llc_ui_sap_link_no_max, i32 0, i32 %conv45
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i, align 2
  %inc.i = add i16 %23, 1
  store i16 %inc.i, ptr %arrayidx.i, align 2
  %link = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 30
  %24 = ptrtoint ptr %link to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %link, align 4
  %dev = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr, align 64
  %29 = load i8, ptr %sllc_sap, align 1
  %call50 = tail call i32 @llc_establish_connection(ptr noundef %1, ptr noundef %28, ptr noundef %sllc_mac, i8 noundef zeroext %29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end56, label %do.end

do.end:                                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %sock, align 128
  %31 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %31)
  store volatile i8 7, ptr %skc_state, align 2
  br label %out

if.end56:                                         ; preds = %if.end40
  %32 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp60 = icmp eq i8 %33, 2
  br i1 %cmp60, label %if.then62, label %if.end56.if.end75_crit_edge

if.end56.if.end75_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then62:                                        ; preds = %if.end56
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %sock_sndtimeo.exit, label %if.then62.out_crit_edge

if.then62.out_crit_edge:                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sock_sndtimeo.exit:                               ; preds = %if.then62
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %34 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sk_sndtimeo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool65.not = icmp eq i32 %35, 0
  br i1 %tobool65.not, label %sock_sndtimeo.exit.out_crit_edge, label %lor.lhs.false

sock_sndtimeo.exit.out_crit_edge:                 ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %sock_sndtimeo.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #11
  %36 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %38 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %39 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %wait.i, align 4
  %41 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i, align 8
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %36, align 4
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @woken_wake_function, ptr %37, align 4
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %38, ptr %38, align 4
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %38, ptr %39, align 4
  %49 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %49, align 8
  call void @add_wait_queue(ptr noundef %51, ptr noundef nonnull %wait.i) #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %signal_pending.exit.i.while.cond.i_crit_edge, %lor.lhs.false
  %timeout.addr.0.i = phi i32 [ %35, %lor.lhs.false ], [ %timeout.addr.1.i, %signal_pending.exit.i.while.cond.i_crit_edge ]
  call void @release_sock(ptr noundef %1) #11
  %52 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp.not.i = icmp eq i8 %53, 2
  br i1 %cmp.not.i, label %if.then.i, label %while.cond.i.if.end.i_crit_edge

while.cond.i.if.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = call i32 @wait_woken(ptr noundef nonnull %wait.i, i32 noundef 1, i32 noundef %timeout.addr.0.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.cond.i.if.end.i_crit_edge
  %timeout.addr.1.i = phi i32 [ %timeout.addr.0.i, %while.cond.i.if.end.i_crit_edge ], [ %call6.i, %if.then.i ]
  %54 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i, align 8
  %task_state_change.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 212
  %56 = ptrtoint ptr %task_state_change.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %task_state_change.i, align 4
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %57 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %58)
  %cmp12.not.i = icmp eq i8 %58, 2
  br i1 %cmp12.not.i, label %if.end16.i, label %if.end.i.llc_ui_wait_for_conn.exit_crit_edge

if.end.i.llc_ui_wait_for_conn.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_ui_wait_for_conn.exit

if.end16.i:                                       ; preds = %if.end.i
  %59 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %stack.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %65 = and i32 %64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end16.i.llc_ui_wait_for_conn.exit_crit_edge, !prof !73

if.end16.i.llc_ui_wait_for_conn.exit_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_ui_wait_for_conn.exit

signal_pending.exit.i:                            ; preds = %if.end16.i
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %62, align 4
  %and1.i.i.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool20.not.i = icmp ne i32 %and1.i.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.addr.1.i)
  %tobool21.not.i = icmp eq i32 %timeout.addr.1.i, 0
  %or.cond.i = select i1 %tobool20.not.i, i1 true, i1 %tobool21.not.i
  br i1 %or.cond.i, label %signal_pending.exit.i.llc_ui_wait_for_conn.exit_crit_edge, label %signal_pending.exit.i.while.cond.i_crit_edge

signal_pending.exit.i.while.cond.i_crit_edge:     ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

signal_pending.exit.i.llc_ui_wait_for_conn.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_ui_wait_for_conn.exit

llc_ui_wait_for_conn.exit:                        ; preds = %signal_pending.exit.i.llc_ui_wait_for_conn.exit_crit_edge, %if.end16.i.llc_ui_wait_for_conn.exit_crit_edge, %if.end.i.llc_ui_wait_for_conn.exit_crit_edge
  %68 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %49, align 8
  call void @remove_wait_queue(ptr noundef %69, ptr noundef nonnull %wait.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.addr.1.i)
  %tobool25.i.not = icmp eq i32 %timeout.addr.1.i, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #11
  br i1 %tobool25.i.not, label %llc_ui_wait_for_conn.exit.out_crit_edge, label %if.end68

llc_ui_wait_for_conn.exit.out_crit_edge:          ; preds = %llc_ui_wait_for_conn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end68:                                         ; preds = %llc_ui_wait_for_conn.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %35)
  %cmp.i = icmp eq i32 %35, 2147483647
  %cond.i123 = select i1 %cmp.i, i32 -512, i32 -4
  %70 = call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %stack.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 4
  %78 = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end68.out_crit_edge, !prof !73

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

signal_pending.exit:                              ; preds = %if.end68
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %75, align 4
  %and1.i.i.i.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool72.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool72.not, label %signal_pending.exit.if.end75_crit_edge, label %signal_pending.exit.out_crit_edge

signal_pending.exit.out_crit_edge:                ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

signal_pending.exit.if.end75_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.end75:                                         ; preds = %signal_pending.exit.if.end75_crit_edge, %if.end56.if.end75_crit_edge
  %81 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %82)
  %cmp79 = icmp eq i8 %82, 7
  br i1 %cmp79, label %sock_error, label %if.end82

if.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %sock, align 128
  br label %out

out:                                              ; preds = %87, %if.end82, %signal_pending.exit.out_crit_edge, %if.end68.out_crit_edge, %llc_ui_wait_for_conn.exit.out_crit_edge, %sock_sndtimeo.exit.out_crit_edge, %if.then62.out_crit_edge, %do.end, %if.then35.out_crit_edge, %if.end23.out_crit_edge, %if.end12.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ -22, %entry.out_crit_edge ], [ -97, %if.end.out_crit_edge ], [ -97, %if.end12.out_crit_edge ], [ -114, %if.end23.out_crit_edge ], [ %call36, %if.then35.out_crit_edge ], [ %call50, %do.end ], [ %88, %87 ], [ 0, %if.end82 ], [ %cond.i123, %signal_pending.exit.out_crit_edge ], [ 0, %sock_sndtimeo.exit.out_crit_edge ], [ 0, %llc_ui_wait_for_conn.exit.out_crit_edge ], [ 0, %if.then62.out_crit_edge ], [ %cond.i123, %if.end68.out_crit_edge ]
  call void @release_sock(ptr noundef %1) #11
  ret i32 %rc.1

sock_error:                                       ; preds = %if.end75
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %84 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i125 = icmp eq i32 %85, 0
  br i1 %tobool.not.i125, label %sock_error.sock_error.exit.thread_crit_edge, label %sock_error.exit, !prof !73

sock_error.sock_error.exit.thread_crit_edge:      ; preds = %sock_error
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_error.exit.thread

sock_error.exit:                                  ; preds = %sock_error
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #11
  %86 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #11, !srcloc !86
  %asmresult.i.i = extractvalue { i32, i32 } %86, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  %sub.i = sub i32 0, %asmresult.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool85.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool85.not, label %sock_error.exit.sock_error.exit.thread_crit_edge, label %sock_error.exit._crit_edge

sock_error.exit._crit_edge:                       ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %87

sock_error.exit.sock_error.exit.thread_crit_edge: ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_error.exit.thread

sock_error.exit.thread:                           ; preds = %sock_error.exit.sock_error.exit.thread_crit_edge, %sock_error.sock_error.exit.thread_crit_edge
  br label %87

87:                                               ; preds = %sock_error.exit.thread, %sock_error.exit._crit_edge
  %88 = phi i32 [ -103, %sock_error.exit.thread ], [ %sub.i, %sock_error.exit._crit_edge ]
  %89 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %sock, align 128
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #4 align 64 {
entry:
  %timeo.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !73

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4.not = icmp eq i32 %5, 1
  br i1 %cmp4.not, label %lor.rhs, label %if.end.out_crit_edge, !prof !73

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.rhs:                                          ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp7.not = icmp eq i8 %7, 10
  br i1 %cmp7.not, label %if.end16, label %lor.rhs.out_crit_edge, !prof !73

lor.rhs.out_crit_edge:                            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end16:                                         ; preds = %lor.rhs
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %9, %sk_receive_queue
  br i1 %cmp.i.not, label %if.then18, label %if.end16.do.end26_crit_edge

if.end16.do.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

if.then18:                                        ; preds = %if.end16
  %sk_rcvtimeo = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %10 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_rcvtimeo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo.addr.i)
  %12 = ptrtoint ptr %timeo.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %timeo.addr.i, align 4
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end12.i.while.cond.i_crit_edge, %if.then18
  %13 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %while.cond.i.if.end.i_crit_edge, label %sock_error.exit.i, !prof !73

while.cond.i.if.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

sock_error.exit.i:                                ; preds = %while.cond.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  call void @llvm.prefetch.p0(ptr %sk_err.i.i, i32 1, i32 3, i32 1) #11
  %15 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i.i) #11, !srcloc !86
  %asmresult.i.i.i = extractvalue { i32, i32 } %15, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i, label %sock_error.exit.i.if.end.i_crit_edge, label %while.end.split.loop.exit35.i

sock_error.exit.i.if.end.i_crit_edge:             ; preds = %sock_error.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %sock_error.exit.i.if.end.i_crit_edge, %while.cond.i.if.end.i_crit_edge
  %16 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sk_shutdown.i, align 2
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.llc_wait_data.exit_crit_edge

if.end.i.llc_wait_data.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_wait_data.exit

if.end3.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %timeo.addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeo.addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i, label %if.end3.i.llc_wait_data.exit.thread_crit_edge, label %if.end6.i

if.end3.i.llc_wait_data.exit.thread_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_wait_data.exit.thread

if.end6.i:                                        ; preds = %if.end3.i
  %21 = call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stack.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i20.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i20.i, label %signal_pending.exit.i, label %while.end.split.loop.exit.i, !prof !73

signal_pending.exit.i:                            ; preds = %if.end6.i
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %and1.i.i.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool10.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %while.end.split.loop.exit29.i

if.end12.i:                                       ; preds = %signal_pending.exit.i
  %call13.i = call i32 @sk_wait_data(ptr noundef %1, ptr noundef nonnull %timeo.addr.i, ptr noundef null) #11
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.while.cond.i_crit_edge, label %if.end12.i.llc_wait_data.exit_crit_edge

if.end12.i.llc_wait_data.exit_crit_edge:          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_wait_data.exit

if.end12.i.while.cond.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.end.split.loop.exit.i:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %20)
  %cmp.i.le.i = icmp eq i32 %20, 2147483647
  %cond.i.le37.i = select i1 %cmp.i.le.i, i32 -512, i32 -4
  br label %llc_wait_data.exit.thread

while.end.split.loop.exit29.i:                    ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %20)
  %cmp.i.le39.i = icmp eq i32 %20, 2147483647
  %cond.i.le.i = select i1 %cmp.i.le39.i, i32 -512, i32 -4
  br label %llc_wait_data.exit.thread

while.end.split.loop.exit35.i:                    ; preds = %sock_error.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult.i.i.i.le = extractvalue { i32, i32 } %15, 0
  %sub.i.le.i = sub i32 0, %asmresult.i.i.i.le
  br label %llc_wait_data.exit.thread

llc_wait_data.exit.thread:                        ; preds = %while.end.split.loop.exit35.i, %while.end.split.loop.exit29.i, %while.end.split.loop.exit.i, %if.end3.i.llc_wait_data.exit.thread_crit_edge
  %rc.0.i.ph = phi i32 [ %sub.i.le.i, %while.end.split.loop.exit35.i ], [ %cond.i.le.i, %while.end.split.loop.exit29.i ], [ %cond.i.le37.i, %while.end.split.loop.exit.i ], [ -11, %if.end3.i.llc_wait_data.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.addr.i)
  br label %out

llc_wait_data.exit:                               ; preds = %if.end12.i.llc_wait_data.exit_crit_edge, %if.end.i.llc_wait_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.addr.i)
  br label %do.end26

do.end26:                                         ; preds = %llc_wait_data.exit, %if.end16.do.end26_crit_edge
  %call28 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #11
  %32 = getelementptr inbounds %struct.sk_buff, ptr %call28, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool29.not = icmp eq ptr %34, null
  br i1 %tobool29.not, label %do.end26.frees_crit_edge, label %if.end31

do.end26.frees_crit_edge:                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %frees

if.end31:                                         ; preds = %do.end26
  %sk1.i.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %35 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk1.i.i, align 16
  %tobool.not.i.i65 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i65, label %if.end31.llc_ui_sk_init.exit_crit_edge, label %do.end.i.i, !prof !73

if.end31.llc_ui_sk_init.exit_crit_edge:           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_ui_sk_init.exit

do.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2024, i32 noundef 9, ptr noundef null) #11
  br label %llc_ui_sk_init.exit

llc_ui_sk_init.exit:                              ; preds = %do.end.i.i, %if.end31.llc_ui_sk_init.exit_crit_edge
  %sk_callback_lock.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i.i) #11
  %wq.i.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  %37 = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 17
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %wq.i.i, ptr %37, align 8
  %39 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %34, ptr %sk1.i.i, align 16
  %sk_socket.i.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 71
  %40 = ptrtoint ptr %sk_socket.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %newsock, ptr %sk_socket.i.i.i, align 8
  %sk_uid.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 55
  %i_uid.i.i = getelementptr inbounds %struct.socket_alloc, ptr %newsock, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_uid.i.i, align 4
  %43 = ptrtoint ptr %sk_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sk_uid.i.i, align 4
  call void @security_sock_graft(ptr noundef nonnull %34, ptr noundef %newsock) #11
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i.i) #11
  %type.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 1
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %type.i, align 4
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 45
  %46 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %sk_type.i, align 2
  %ops.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 5
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @llc_ui_ops, ptr %ops.i, align 4
  %48 = getelementptr inbounds %struct.sock_common, ptr %34, i32 0, i32 13
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %and.i.i66 = and i32 %50, -257
  store i32 %and.i.i66, ptr %48, align 4
  %skc_state33 = getelementptr inbounds %struct.sock_common, ptr %34, i32 0, i32 4
  %51 = ptrtoint ptr %skc_state33 to i32
  call void @__asan_store1_noabort(i32 %51)
  store volatile i8 1, ptr %skc_state33, align 2
  %52 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %newsock, align 128
  %addr = getelementptr inbounds %struct.llc_sock, ptr %34, i32 0, i32 1
  %addr37 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 1
  %53 = call ptr @memcpy(ptr %addr, ptr %addr37, i32 16)
  %laddr = getelementptr inbounds %struct.llc_sock, ptr %34, i32 0, i32 4
  %54 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %laddr, align 8
  %conv38 = zext i8 %55 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @llc_ui_sap_link_no_max, i32 0, i32 %conv38
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i, align 2
  %inc.i = add i16 %57, 1
  store i16 %inc.i, ptr %arrayidx.i, align 2
  %link = getelementptr inbounds %struct.llc_sock, ptr %34, i32 0, i32 30
  %58 = ptrtoint ptr %link to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %link, align 4
  %59 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %59)
  store volatile i8 10, ptr %skc_state, align 2
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %60 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %61, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  br label %frees

frees:                                            ; preds = %llc_ui_sk_init.exit, %do.end26.frees_crit_edge
  %rc.0 = phi i32 [ 0, %llc_ui_sk_init.exit ], [ -22, %do.end26.frees_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %call28, i32 noundef 0) #11
  br label %out

out:                                              ; preds = %frees, %llc_wait_data.exit.thread, %lor.rhs.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ -95, %entry.out_crit_edge ], [ -22, %lor.rhs.out_crit_edge ], [ %rc.0, %frees ], [ -22, %if.end.out_crit_edge ], [ %rc.0.i.ph, %llc_wait_data.exit.thread ]
  call void @release_sock(ptr noundef %1) #11
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %if.end6, label %if.then3.out_crit_edge

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end6:                                          ; preds = %if.then3
  %dev = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 32
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %type, align 16
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %sllc.sroa.6.0 = phi i16 [ %11, %if.then8 ], [ 0, %if.end6.if.end10_crit_edge ]
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %daddr, align 1
  %mac = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 5, i32 1
  %sllc.sroa.18.8.mac.sroa_idx = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 5, i32 1, i32 1
  %sllc.sroa.19.8.mac.sroa_idx = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 5, i32 1, i32 2
  %sllc.sroa.20.8.mac.sroa_idx = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 5, i32 1, i32 3
  %sllc.sroa.21.8.mac.sroa_idx = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 5, i32 1, i32 4
  %sllc.sroa.22.8.mac.sroa_idx = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 5, i32 1, i32 5
  br label %if.end27.sink.split

if.else:                                          ; preds = %if.end
  %sap = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sap, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.else.out_crit_edge, label %if.end14

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.else
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %laddr, align 4
  %dev18 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev18, align 8
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %if.end14.if.end27_crit_edge, label %if.then20

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %type22 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 32
  %20 = ptrtoint ptr %type22 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %type22, align 16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  %sllc.sroa.18.8..sroa_idx = getelementptr inbounds i8, ptr %23, i32 1
  %sllc.sroa.19.8..sroa_idx = getelementptr inbounds i8, ptr %23, i32 2
  %sllc.sroa.20.8..sroa_idx = getelementptr inbounds i8, ptr %23, i32 3
  %sllc.sroa.21.8..sroa_idx = getelementptr inbounds i8, ptr %23, i32 4
  %sllc.sroa.22.8..sroa_idx = getelementptr inbounds i8, ptr %23, i32 5
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.then20, %if.end10
  %sllc.sroa.22.8..sroa_idx.sink = phi ptr [ %sllc.sroa.22.8..sroa_idx, %if.then20 ], [ %sllc.sroa.22.8.mac.sroa_idx, %if.end10 ]
  %sllc.sroa.6.1.ph = phi i16 [ %21, %if.then20 ], [ %sllc.sroa.6.0, %if.end10 ]
  %sllc.sroa.12.0.ph = phi i8 [ %17, %if.then20 ], [ %13, %if.end10 ]
  %sllc.sroa.15.0.ph.in = phi ptr [ %23, %if.then20 ], [ %mac, %if.end10 ]
  %sllc.sroa.18.0.ph.in = phi ptr [ %sllc.sroa.18.8..sroa_idx, %if.then20 ], [ %sllc.sroa.18.8.mac.sroa_idx, %if.end10 ]
  %sllc.sroa.19.0.ph.in = phi ptr [ %sllc.sroa.19.8..sroa_idx, %if.then20 ], [ %sllc.sroa.19.8.mac.sroa_idx, %if.end10 ]
  %sllc.sroa.20.0.ph.in = phi ptr [ %sllc.sroa.20.8..sroa_idx, %if.then20 ], [ %sllc.sroa.20.8.mac.sroa_idx, %if.end10 ]
  %sllc.sroa.21.0.ph.in = phi ptr [ %sllc.sroa.21.8..sroa_idx, %if.then20 ], [ %sllc.sroa.21.8.mac.sroa_idx, %if.end10 ]
  %24 = ptrtoint ptr %sllc.sroa.21.0.ph.in to i32
  call void @__asan_load1_noabort(i32 %24)
  %sllc.sroa.21.0.ph = load i8, ptr %sllc.sroa.21.0.ph.in, align 1
  %25 = ptrtoint ptr %sllc.sroa.20.0.ph.in to i32
  call void @__asan_load1_noabort(i32 %25)
  %sllc.sroa.20.0.ph = load i8, ptr %sllc.sroa.20.0.ph.in, align 1
  %26 = ptrtoint ptr %sllc.sroa.19.0.ph.in to i32
  call void @__asan_load1_noabort(i32 %26)
  %sllc.sroa.19.0.ph = load i8, ptr %sllc.sroa.19.0.ph.in, align 1
  %27 = ptrtoint ptr %sllc.sroa.18.0.ph.in to i32
  call void @__asan_load1_noabort(i32 %27)
  %sllc.sroa.18.0.ph = load i8, ptr %sllc.sroa.18.0.ph.in, align 1
  %28 = ptrtoint ptr %sllc.sroa.15.0.ph.in to i32
  call void @__asan_load1_noabort(i32 %28)
  %sllc.sroa.15.0.ph = load i8, ptr %sllc.sroa.15.0.ph.in, align 1
  %29 = ptrtoint ptr %sllc.sroa.22.8..sroa_idx.sink to i32
  call void @__asan_load1_noabort(i32 %29)
  %sllc.sroa.22.8.copyload45 = load i8, ptr %sllc.sroa.22.8..sroa_idx.sink, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.end14.if.end27_crit_edge
  %sllc.sroa.6.1 = phi i16 [ 0, %if.end14.if.end27_crit_edge ], [ %sllc.sroa.6.1.ph, %if.end27.sink.split ]
  %sllc.sroa.12.0 = phi i8 [ %17, %if.end14.if.end27_crit_edge ], [ %sllc.sroa.12.0.ph, %if.end27.sink.split ]
  %sllc.sroa.15.0 = phi i8 [ 0, %if.end14.if.end27_crit_edge ], [ %sllc.sroa.15.0.ph, %if.end27.sink.split ]
  %sllc.sroa.18.0 = phi i8 [ 0, %if.end14.if.end27_crit_edge ], [ %sllc.sroa.18.0.ph, %if.end27.sink.split ]
  %sllc.sroa.19.0 = phi i8 [ 0, %if.end14.if.end27_crit_edge ], [ %sllc.sroa.19.0.ph, %if.end27.sink.split ]
  %sllc.sroa.20.0 = phi i8 [ 0, %if.end14.if.end27_crit_edge ], [ %sllc.sroa.20.0.ph, %if.end27.sink.split ]
  %sllc.sroa.21.0 = phi i8 [ 0, %if.end14.if.end27_crit_edge ], [ %sllc.sroa.21.0.ph, %if.end27.sink.split ]
  %sllc.sroa.22.0 = phi i8 [ 0, %if.end14.if.end27_crit_edge ], [ %sllc.sroa.22.8.copyload45, %if.end27.sink.split ]
  %30 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 26, ptr %uaddr, align 2
  %sllc.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 2
  %31 = ptrtoint ptr %sllc.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %sllc.sroa.6.1, ptr %sllc.sroa.6.0..sroa_idx, align 2
  %sllc.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 4
  %32 = ptrtoint ptr %sllc.sroa.9.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %sllc.sroa.9.0..sroa_idx, align 2
  %sllc.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 5
  %33 = ptrtoint ptr %sllc.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %sllc.sroa.10.0..sroa_idx, align 1
  %sllc.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 6
  %34 = ptrtoint ptr %sllc.sroa.11.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %sllc.sroa.11.0..sroa_idx, align 2
  %sllc.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 7
  %35 = ptrtoint ptr %sllc.sroa.12.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %sllc.sroa.12.0, ptr %sllc.sroa.12.0..sroa_idx, align 1
  %sllc.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 8
  %36 = ptrtoint ptr %sllc.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %sllc.sroa.15.0, ptr %sllc.sroa.15.0..sroa_idx, align 2
  %sllc.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 9
  %37 = ptrtoint ptr %sllc.sroa.18.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %sllc.sroa.18.0, ptr %sllc.sroa.18.0..sroa_idx, align 1
  %sllc.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 10
  %38 = ptrtoint ptr %sllc.sroa.19.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %sllc.sroa.19.0, ptr %sllc.sroa.19.0..sroa_idx, align 2
  %sllc.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 11
  %39 = ptrtoint ptr %sllc.sroa.20.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %sllc.sroa.20.0, ptr %sllc.sroa.20.0..sroa_idx, align 1
  %sllc.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 12
  %40 = ptrtoint ptr %sllc.sroa.21.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %sllc.sroa.21.0, ptr %sllc.sroa.21.0..sroa_idx, align 2
  %sllc.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 13
  %41 = ptrtoint ptr %sllc.sroa.22.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %sllc.sroa.22.0, ptr %sllc.sroa.22.0..sroa_idx, align 1
  %sllc.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 14
  %42 = ptrtoint ptr %sllc.sroa.23.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %sllc.sroa.23.0..sroa_idx, align 2
  %sllc.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 15
  %43 = ptrtoint ptr %sllc.sroa.24.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %sllc.sroa.24.0..sroa_idx, align 1
  br label %out

out:                                              ; preds = %if.end27, %if.else.out_crit_edge, %if.then3.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -9, %entry.out_crit_edge ], [ -107, %if.then3.out_crit_edge ], [ 16, %if.end27 ], [ -22, %if.else.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #11
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @llc_ui_ioctl(ptr nocapture noundef readnone %sock, i32 noundef %cmd, i32 noundef %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -515
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !73

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp3.not = icmp eq i16 %5, 1
  br i1 %cmp3.not, label %if.end12, label %if.end.out_crit_edge, !prof !73

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end12:                                         ; preds = %if.end
  %6 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.end14, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backlog)
  %tobool15.not = icmp eq i32 %backlog, 0
  %spec.store.select = select i1 %tobool15.not, i32 1, i32 %backlog
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %10 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.store.select, ptr %sk_max_ack_backlog, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp19.not = icmp eq i8 %12, 10
  br i1 %cmp19.not, label %if.end14.if.end24_crit_edge, label %if.then21

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %13 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sk_ack_backlog, align 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 10, ptr %skc_state, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end14.if.end24_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %15 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk_socket, align 8
  %flags = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %or = or i32 %18, 65536
  store i32 %or, ptr %flags, align 8
  br label %out

out:                                              ; preds = %if.end24, %if.end12.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ -95, %if.end.out_crit_edge ], [ -11, %if.end12.out_crit_edge ], [ 0, %if.end24 ]
  tail call void @release_sock(ptr noundef %1) #11
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_shutdown(ptr nocapture noundef readonly %sock, i32 noundef %how) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !73

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %how)
  %cmp4.not = icmp eq i32 %how, 2
  br i1 %cmp4.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.end
  %call = tail call i32 @llc_send_disc(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then9, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %sk_rcvtimeo = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %4 = ptrtoint ptr %sk_rcvtimeo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_rcvtimeo, align 4
  %call10 = tail call fastcc i32 @llc_ui_wait_for_disc(ptr noundef %1, i32 noundef %5)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %rc.0 = phi i32 [ %call, %if.end7.if.end11_crit_edge ], [ %call10, %if.then9 ]
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %6 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_state_change, align 4
  tail call void %7(ptr noundef %1) #11
  br label %out

out:                                              ; preds = %if.end11, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ -107, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ %rc.0, %if.end11 ]
  tail call void @release_sock(ptr noundef %1) #11
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #4 align 64 {
entry:
  %opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #11
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %opt, align 4, !annotation !88
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 268, i32 %level)
  %cmp.not = icmp ne i32 %level, 268
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp2 = icmp ne i32 %optlen, 4
  %spec.select = or i1 %cmp.not, %cmp2
  br i1 %spec.select, label %entry.out_crit_edge, label %if.end, !prof !75

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #15, !srcloc !89
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i1.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i1.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !73

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #11
  %5 = call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !90
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %3, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end7_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !73

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end7_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %out

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %opt, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end7_crit_edge
  %12 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %optname, label %if.end7.out_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb15
    i32 4, label %sw.bb19
    i32 5, label %sw.bb25
    i32 6, label %sw.bb31
    i32 7, label %sw.bb37
    i32 8, label %sw.bb41
    i32 9, label %sw.bb47
  ]

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb:                                            ; preds = %if.end7
  %13 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %14)
  %cmp8 = icmp ugt i32 %14, 100
  br i1 %cmp8, label %sw.bb.out_crit_edge, label %if.end10

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end10:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %n2 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %n2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %n2, align 4
  br label %out

sw.bb11:                                          ; preds = %if.end7
  %16 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4196, i32 %17)
  %cmp12 = icmp ugt i32 %17, 4196
  br i1 %cmp12, label %sw.bb11.out_crit_edge, label %if.end14

sw.bb11.out_crit_edge:                            ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %n1 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %n1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %n1, align 8
  br label %out

sw.bb15:                                          ; preds = %if.end7
  %19 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %20)
  %cmp16 = icmp ugt i32 %20, 60
  br i1 %cmp16, label %sw.bb15.out_crit_edge, label %if.end18

sw.bb15.out_crit_edge:                            ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end18:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul nuw nsw i32 %20, 100
  %expire = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %expire to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %expire, align 8
  br label %out

sw.bb19:                                          ; preds = %if.end7
  %22 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %23)
  %cmp20 = icmp ugt i32 %23, 60
  br i1 %cmp20, label %sw.bb19.out_crit_edge, label %if.end22

sw.bb19.out_crit_edge:                            ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end22:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  %mul23 = mul nuw nsw i32 %23, 100
  %expire24 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 14, i32 1
  %24 = ptrtoint ptr %expire24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul23, ptr %expire24, align 4
  br label %out

sw.bb25:                                          ; preds = %if.end7
  %25 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %26)
  %cmp26 = icmp ugt i32 %26, 60
  br i1 %cmp26, label %sw.bb25.out_crit_edge, label %if.end28

sw.bb25.out_crit_edge:                            ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end28:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %mul29 = mul nuw nsw i32 %26, 100
  %expire30 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 15, i32 1
  %27 = ptrtoint ptr %expire30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul29, ptr %expire30, align 8
  br label %out

sw.bb31:                                          ; preds = %if.end7
  %28 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %29)
  %cmp32 = icmp ugt i32 %29, 60
  br i1 %cmp32, label %sw.bb31.out_crit_edge, label %if.end34

sw.bb31.out_crit_edge:                            ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end34:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  %mul35 = mul nuw nsw i32 %29, 100
  %expire36 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 16, i32 1
  %30 = ptrtoint ptr %expire36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul35, ptr %expire36, align 4
  br label %out

sw.bb37:                                          ; preds = %if.end7
  %31 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %32)
  %cmp38 = icmp ugt i32 %32, 127
  br i1 %cmp38, label %sw.bb37.out_crit_edge, label %if.end40

sw.bb37.out_crit_edge:                            ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end40:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %32 to i8
  %k = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 21
  %33 = ptrtoint ptr %k to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %k, align 4
  br label %out

sw.bb41:                                          ; preds = %if.end7
  %34 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %35)
  %cmp42 = icmp ugt i32 %35, 127
  br i1 %cmp42, label %sw.bb41.out_crit_edge, label %if.end45

sw.bb41.out_crit_edge:                            ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end45:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #13
  %conv46 = trunc i32 %35 to i8
  %rw = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 22
  %36 = ptrtoint ptr %rw to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv46, ptr %rw, align 1
  br label %out

sw.bb47:                                          ; preds = %if.end7
  %37 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool48.not = icmp eq i32 %38, 0
  %cmsg_flags50 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 40
  %39 = ptrtoint ptr %cmsg_flags50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmsg_flags50, align 4
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %40, 1
  %41 = ptrtoint ptr %cmsg_flags50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or, ptr %cmsg_flags50, align 4
  br label %out

if.else:                                          ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %40, -2
  %42 = ptrtoint ptr %cmsg_flags50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and, ptr %cmsg_flags50, align 4
  br label %out

out:                                              ; preds = %if.else, %if.then49, %if.end45, %sw.bb41.out_crit_edge, %if.end40, %sw.bb37.out_crit_edge, %if.end34, %sw.bb31.out_crit_edge, %if.end28, %sw.bb25.out_crit_edge, %if.end22, %sw.bb19.out_crit_edge, %if.end18, %sw.bb15.out_crit_edge, %if.end14, %sw.bb11.out_crit_edge, %if.end10, %sw.bb.out_crit_edge, %if.end7.out_crit_edge, %if.then11.i.i.i.i, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ -22, %sw.bb41.out_crit_edge ], [ -22, %sw.bb37.out_crit_edge ], [ -22, %sw.bb31.out_crit_edge ], [ -22, %sw.bb25.out_crit_edge ], [ -22, %sw.bb19.out_crit_edge ], [ -22, %sw.bb15.out_crit_edge ], [ -22, %sw.bb11.out_crit_edge ], [ -22, %sw.bb.out_crit_edge ], [ -92, %if.end7.out_crit_edge ], [ 0, %if.then49 ], [ 0, %if.else ], [ 0, %if.end45 ], [ 0, %if.end40 ], [ 0, %if.end34 ], [ 0, %if.end28 ], [ 0, %if.end22 ], [ 0, %if.end18 ], [ 0, %if.end14 ], [ 0, %if.end10 ], [ %res.03.i.i.i.i, %if.then11.i.i.i.i ]
  call void @release_sock(ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #11
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 268, i32 %level)
  %cmp.not = icmp eq i32 %level, 268
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !73

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1154) #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !90
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #11, !srcloc !93
  %asmresult = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool6.not = icmp eq i32 %asmresult, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8:                                          ; preds = %if.end
  %asmresult4 = extractvalue { i32, i32 } %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult4)
  %cmp9.not = icmp eq i32 %asmresult4, 4
  br i1 %cmp9.not, label %if.end11, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end8
  %7 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %optname, label %if.end11.out_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb13
    i32 4, label %sw.bb14
    i32 5, label %sw.bb17
    i32 6, label %sw.bb20
    i32 7, label %sw.bb23
    i32 8, label %sw.bb24
    i32 9, label %sw.bb26
  ]

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %n2 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n2, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %n1 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n1, align 8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %expire = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %expire to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %expire, align 8
  %div = udiv i32 %15, 100
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %val, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %expire15 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %expire15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %expire15, align 4
  %div16 = udiv i32 %18, 100
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div16, ptr %val, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %expire18 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 15, i32 1
  %20 = ptrtoint ptr %expire18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %expire18, align 8
  %div19 = udiv i32 %21, 100
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div19, ptr %val, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %expire21 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 16, i32 1
  %23 = ptrtoint ptr %expire21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %expire21, align 4
  %div22 = udiv i32 %24, 100
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div22, ptr %val, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %k = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %k, align 4
  %conv = zext i8 %27 to i32
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %val, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %rw = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 22
  %29 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rw, align 1
  %conv25 = zext i8 %30 to i32
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv25, ptr %val, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %cmsg_flags = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 40
  %32 = ptrtoint ptr %cmsg_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmsg_flags, align 4
  %and = and i32 %33, 1
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb24, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1185) #11
  %35 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i57 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i57 to ptr
  %cpu_domain.i.i58 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i58) #7, !srcloc !90
  %and.i59 = and i32 %37, -13
  %or.i60 = or i32 %and.i59, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i60) #11, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #11, !srcloc !94
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #11, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool38.not = icmp eq i32 %38, 0
  br i1 %tobool38.not, label %if.then.i, label %sw.epilog.if.then41_crit_edge

sw.epilog.if.then41_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

if.then.i:                                        ; preds = %sw.epilog
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.if.then41_crit_edge, label %if.end.i.i

if.then.i.if.then41_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

if.end.i.i:                                       ; preds = %if.then.i
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 4, i32 -1226833920) #15, !srcloc !95
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.if.then41_crit_edge

if.end.i.i.if.then41_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef 4) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool40.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool40.not, label %copy_to_user.exit.out_crit_edge, label %copy_to_user.exit.if.then41_crit_edge

copy_to_user.exit.if.then41_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then41:                                        ; preds = %copy_to_user.exit.if.then41_crit_edge, %if.end.i.i.if.then41_crit_edge, %if.then.i.if.then41_crit_edge, %sw.epilog.if.then41_crit_edge
  br label %out

out:                                              ; preds = %if.then41, %copy_to_user.exit.out_crit_edge, %if.end11.out_crit_edge, %if.end8.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %asmresult, %if.end.out_crit_edge ], [ -22, %if.end8.out_crit_edge ], [ -14, %if.then41 ], [ 0, %copy_to_user.exit.out_crit_edge ], [ -92, %if.end11.out_crit_edge ]
  call void @release_sock(ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #4 align 64 {
entry:
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %4 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_flags, align 4
  %and = and i32 %5, 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #11
  %6 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -22, ptr %rc, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp = icmp ult i32 %8, 16
  br i1 %cmp, label %if.then.out_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else:                                          ; preds = %entry
  %addr6 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %addr6, ptr noundef nonnull dereferenceable(16) @llc_ui_addrnull, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %if.else.out_crit_edge, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %addr.0 = phi ptr [ %3, %if.then.if.end12_crit_edge ], [ %addr6, %if.else.if.end12_crit_edge ]
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  %call15 = tail call fastcc i32 @llc_ui_autobind(ptr noundef %sock, ptr noundef %addr.0)
  %13 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call15, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then14.out_crit_edge

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %dev = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %17 to i32
  %sllc_test.i = getelementptr inbounds %struct.sockaddr_llc, ptr %addr.0, i32 0, i32 2
  %18 = ptrtoint ptr %sllc_test.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sllc_test.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i138 = icmp eq i8 %19, 0
  br i1 %tobool.not.i138, label %if.else.i, label %if.end19.llc_ui_header_len.exit_crit_edge

if.end19.llc_ui_header_len.exit_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_ui_header_len.exit

if.else.i:                                        ; preds = %if.end19
  %sllc_xid.i = getelementptr inbounds %struct.sockaddr_llc, ptr %addr.0, i32 0, i32 3
  %20 = ptrtoint ptr %sllc_xid.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sllc_xid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not.i = icmp eq i8 %21, 0
  br i1 %tobool1.not.i, label %if.else3.i, label %if.else.i.llc_ui_header_len.exit_crit_edge

if.else.i.llc_ui_header_len.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_ui_header_len.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %22 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cmp.i = icmp eq i16 %23, 1
  %phi.cast = select i1 %cmp.i, i32 4, i32 3
  br label %llc_ui_header_len.exit

llc_ui_header_len.exit:                           ; preds = %if.else3.i, %if.else.i.llc_ui_header_len.exit_crit_edge, %if.end19.llc_ui_header_len.exit_crit_edge
  %rc.0.i = phi i32 [ 3, %if.end19.llc_ui_header_len.exit_crit_edge ], [ 6, %if.else.i.llc_ui_header_len.exit_crit_edge ], [ %phi.cast, %if.else3.i ]
  %add = add nuw nsw i32 %rc.0.i, %conv
  %add22 = add i32 %add, %len
  %mtu = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 20
  %24 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %add22, i32 %25)
  %sub = sub i32 %26, %add
  %27 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -22, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp30 = icmp slt i32 %sub, 0
  br i1 %cmp30, label %llc_ui_header_len.exit.out_crit_edge, label %if.end33

llc_ui_header_len.exit.out_crit_edge:             ; preds = %llc_ui_header_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end33:                                         ; preds = %llc_ui_header_len.exit
  tail call void @release_sock(ptr noundef %1) #11
  %call34 = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %26, i32 noundef %and, ptr noundef nonnull %rc) #11
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.out_crit_edge, label %if.end37

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end37:                                         ; preds = %if.end33
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %30 = getelementptr inbounds %struct.anon.27, ptr %call34, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %30, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call34, i32 0, i32 15, i32 0, i32 18
  %32 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 4, ptr %protocol, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call34, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %add
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call34, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %36, i32 %add
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call40 = call ptr @skb_put(ptr noundef nonnull %call34, i32 noundef %sub) #11
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__check_object_size(ptr noundef %call40, i32 noundef %sub, i1 noundef zeroext false) #11
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call40, i32 noundef %sub, ptr noundef %msg_iter.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %sub)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %sub
  br i1 %cmp.i.i, label %if.end44, label %memcpy_from_msg.exit, !prof !73

memcpy_from_msg.exit:                             ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #11
  %37 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -14, ptr %rc, align 4
  br label %out

if.end44:                                         ; preds = %if.end37
  %38 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %rc, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %39 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %40)
  %cmp46 = icmp eq i16 %40, 2
  br i1 %cmp46, label %if.end44.if.then50_crit_edge, label %lor.lhs.false

if.end44.if.then50_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

lor.lhs.false:                                    ; preds = %if.end44
  %sllc_ua = getelementptr inbounds %struct.sockaddr_llc, ptr %addr.0, i32 0, i32 4
  %41 = ptrtoint ptr %sllc_ua to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sllc_ua, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool49.not = icmp eq i8 %42, 0
  br i1 %tobool49.not, label %if.end52, label %lor.lhs.false.if.then50_crit_edge

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %if.end44.if.then50_crit_edge
  %sap = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sap, align 4
  %sllc_mac = getelementptr inbounds %struct.sockaddr_llc, ptr %addr.0, i32 0, i32 6
  %sllc_sap = getelementptr inbounds %struct.sockaddr_llc, ptr %addr.0, i32 0, i32 5
  %45 = ptrtoint ptr %sllc_sap to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sllc_sap, align 1
  %call51 = call i32 @llc_build_and_send_ui_pkt(ptr noundef %44, ptr noundef nonnull %call34, ptr noundef %sllc_mac, i8 noundef zeroext %46) #11
  br label %out

if.end52:                                         ; preds = %lor.lhs.false
  %47 = ptrtoint ptr %sllc_test.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sllc_test.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool53.not = icmp eq i8 %48, 0
  br i1 %tobool53.not, label %if.end59, label %if.then54

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %sap55 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %sap55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sap55, align 4
  %sllc_mac56 = getelementptr inbounds %struct.sockaddr_llc, ptr %addr.0, i32 0, i32 6
  %sllc_sap58 = getelementptr inbounds %struct.sockaddr_llc, ptr %addr.0, i32 0, i32 5
  %51 = ptrtoint ptr %sllc_sap58 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sllc_sap58, align 1
  call void @llc_build_and_send_test_pkt(ptr noundef %50, ptr noundef nonnull %call34, ptr noundef %sllc_mac56, i8 noundef zeroext %52) #11
  br label %out

if.end59:                                         ; preds = %if.end52
  %sllc_xid = getelementptr inbounds %struct.sockaddr_llc, ptr %addr.0, i32 0, i32 3
  %53 = ptrtoint ptr %sllc_xid to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sllc_xid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool60.not = icmp eq i8 %54, 0
  br i1 %tobool60.not, label %if.end66, label %if.then61

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %sap62 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %sap62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sap62, align 4
  %sllc_mac63 = getelementptr inbounds %struct.sockaddr_llc, ptr %addr.0, i32 0, i32 6
  %sllc_sap65 = getelementptr inbounds %struct.sockaddr_llc, ptr %addr.0, i32 0, i32 5
  %57 = ptrtoint ptr %sllc_sap65 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sllc_sap65, align 1
  call void @llc_build_and_send_xid_pkt(ptr noundef %56, ptr noundef nonnull %call34, ptr noundef %sllc_mac63, i8 noundef zeroext %58) #11
  br label %out

if.end66:                                         ; preds = %if.end59
  %59 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -92, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %40)
  %cmp69 = icmp eq i16 %40, 1
  br i1 %cmp69, label %if.end74, label %if.end66.out_crit_edge

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %call75 = call fastcc i32 @llc_ui_send_data(ptr noundef %1, ptr noundef nonnull %call34, i32 noundef %and)
  %60 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call75, ptr %rc, align 4
  br label %out

out:                                              ; preds = %if.end74, %if.end66.out_crit_edge, %if.then61, %if.then54, %if.then50, %memcpy_from_msg.exit, %if.end33.out_crit_edge, %llc_ui_header_len.exit.out_crit_edge, %if.then14.out_crit_edge, %if.else.out_crit_edge, %if.then.out_crit_edge
  %skb.0 = phi ptr [ null, %if.then.out_crit_edge ], [ null, %if.then14.out_crit_edge ], [ null, %llc_ui_header_len.exit.out_crit_edge ], [ %call34, %memcpy_from_msg.exit ], [ null, %if.then50 ], [ null, %if.then54 ], [ null, %if.then61 ], [ null, %if.end74 ], [ %call34, %if.end66.out_crit_edge ], [ null, %if.end33.out_crit_edge ], [ null, %if.else.out_crit_edge ]
  %copied.0 = phi i32 [ 0, %if.then.out_crit_edge ], [ 0, %if.then14.out_crit_edge ], [ %sub, %llc_ui_header_len.exit.out_crit_edge ], [ %sub, %memcpy_from_msg.exit ], [ %sub, %if.then50 ], [ %sub, %if.then54 ], [ %sub, %if.then61 ], [ %sub, %if.end74 ], [ %sub, %if.end66.out_crit_edge ], [ %sub, %if.end33.out_crit_edge ], [ 0, %if.else.out_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb.0, i32 noundef 0) #11
  call void @release_sock(ptr noundef %1) #11
  %61 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool82.not = icmp eq i32 %62, 0
  %spec.select137 = select i1 %tobool82.not, i32 %copied.0, i32 %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #11
  ret i32 %spec.select137
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_ui_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #4 align 64 {
entry:
  %info.i = alloca %struct.llc_pktinfo, align 4
  %peek_seq = alloca i32, align 4
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 8
  %and = and i32 %flags, 64
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %peek_seq)
  %4 = ptrtoint ptr %peek_seq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %peek_seq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #11
  %5 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %timeo, align 4, !annotation !88
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #11
  %sk_type = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp = icmp eq i16 %7, 1
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp4 = icmp eq i8 %9, 10
  br i1 %cmp4, label %land.rhs.out_crit_edge, label %land.rhs.if.end_crit_edge, !prof !75

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %cond.false.i, label %if.end.sock_rcvtimeo.exit_crit_edge

if.end.sock_rcvtimeo.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 62
  %10 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.end.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %11, %cond.false.i ], [ 0, %if.end.sock_rcvtimeo.exit_crit_edge ]
  %12 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i, ptr %timeo, align 4
  %copied_seq = getelementptr inbounds %struct.llc_sock, ptr %3, i32 0, i32 8
  %and9 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %sock_rcvtimeo.exit.if.end13_crit_edge, label %if.then11

sock_rcvtimeo.exit.if.end13_crit_edge:            ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %copied_seq, align 8
  %15 = ptrtoint ptr %peek_seq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %peek_seq, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %sock_rcvtimeo.exit.if.end13_crit_edge
  %seq.0 = phi ptr [ %peek_seq, %if.then11 ], [ %copied_seq, %sock_rcvtimeo.exit.if.end13_crit_edge ]
  %and14 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not.i = icmp eq i32 %and14, 0
  br i1 %tobool.not.i, label %cond.false.i273, label %if.end13.sock_rcvlowat.exit_crit_edge

if.end13.sock_rcvlowat.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_rcvlowat.exit

cond.false.i273:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %sk_rcvlowat.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %sk_rcvlowat.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sk_rcvlowat.i, align 8
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %len) #11
  br label %sock_rcvlowat.exit

sock_rcvlowat.exit:                               ; preds = %cond.false.i273, %if.end13.sock_rcvlowat.exit_crit_edge
  %cond5.i = phi i32 [ %18, %cond.false.i273 ], [ %len, %if.end13.sock_rcvlowat.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond5.i)
  %tobool6.not.i = icmp eq i32 %cond5.i, 0
  %..i = select i1 %tobool6.not.i, i32 1, i32 %cond5.i
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8
  %and135 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %tail = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 9, i32 3
  %sk_err = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %skc_state44 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 66
  %19 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  br label %do.body16

do.body16:                                        ; preds = %do.cond167.do.body16_crit_edge, %sock_rcvlowat.exit
  %copied.0 = phi i32 [ 0, %sock_rcvlowat.exit ], [ %copied.3299, %do.cond167.do.body16_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %sock_rcvlowat.exit ], [ %len.addr.1301, %do.cond167.do.body16_crit_edge ]
  %20 = call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i274 = icmp eq i32 %28, 0
  br i1 %tobool.not.i274, label %signal_pending.exit, label %do.body16.if.then20_crit_edge, !prof !73

do.body16.if.then20_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

signal_pending.exit:                              ; preds = %do.body16
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool19.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool19.not, label %if.end26, label %signal_pending.exit.if.then20_crit_edge

signal_pending.exit.if.then20_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %signal_pending.exit.if.then20_crit_edge, %do.body16.if.then20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool21.not = icmp eq i32 %copied.0, 0
  br i1 %tobool21.not, label %if.end23, label %if.then20.out_crit_edge

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23:                                         ; preds = %if.then20
  %31 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool24.not = icmp eq i32 %32, 0
  br i1 %tobool24.not, label %if.end23.out_crit_edge, label %cond.true

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

cond.true:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %32)
  %cmp.i = icmp eq i32 %32, 2147483647
  %cond.i276 = select i1 %cmp.i, i32 -512, i32 -4
  br label %out

if.end26:                                         ; preds = %signal_pending.exit
  %33 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i277 = icmp eq ptr %34, %sk_receive_queue
  %tobool28.not309 = icmp eq ptr %34, null
  %tobool28.not = or i1 %cmp.i277, %tobool28.not309
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  %35 = ptrtoint ptr %seq.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seq.0, align 4
  %len129 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 6
  %37 = ptrtoint ptr %len129 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len129, align 4
  %sub = sub i32 %38, %36
  %39 = call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %sub)
  br i1 %tobool136.not, label %if.then137, label %if.then29.if.end145_crit_edge

if.then29.if.end145_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.0, i32 %..i)
  %cmp31.not = icmp ult i32 %copied.0, %..i
  br i1 %cmp31.not, label %if.end30.if.end39_crit_edge, label %do.end35

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.end35:                                         ; preds = %if.end30
  %40 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %tail, align 4
  %tobool37.not = icmp eq ptr %41, null
  br i1 %tobool37.not, label %do.end35.out_crit_edge, label %do.end35.if.end39_crit_edge

do.end35.if.end39_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.end35.out_crit_edge:                           ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end39:                                         ; preds = %do.end35.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool40.not = icmp eq i32 %copied.0, 0
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end39
  %42 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool42.not = icmp eq i32 %43, 0
  br i1 %tobool42.not, label %lor.lhs.false, label %if.then41.out_crit_edge

if.then41.out_crit_edge:                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %if.then41
  %44 = ptrtoint ptr %skc_state44 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load volatile i8, ptr %skc_state44, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %45)
  %cmp46 = icmp eq i8 %45, 7
  br i1 %cmp46, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false48

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %46 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sk_shutdown, align 2
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool51.not = icmp eq i8 %48, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %lor.lhs.false48.out_crit_edge

lor.lhs.false48.out_crit_edge:                    ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %49 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool53.not = icmp ne i32 %50, 0
  %51 = and i1 %tobool10.not, %tobool53.not
  br i1 %51, label %lor.lhs.false52.if.end91_crit_edge, label %lor.lhs.false52.out_crit_edge

lor.lhs.false52.out_crit_edge:                    ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false52.if.end91_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.else:                                          ; preds = %if.end39
  %52 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %19, align 4
  %54 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.not = icmp eq i32 %54, 0
  br i1 %tobool.i.not, label %if.end61, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end61:                                         ; preds = %if.else
  %55 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool63.not = icmp eq i32 %56, 0
  br i1 %tobool63.not, label %if.end66, label %sock_error.exit

sock_error.exit:                                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #11
  %57 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #11, !srcloc !86
  %asmresult.i.i = extractvalue { i32, i32 } %57, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  %sub.i = sub i32 0, %asmresult.i.i
  br label %out

if.end66:                                         ; preds = %if.end61
  %58 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sk_shutdown, align 2
  %60 = and i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool70.not = icmp eq i8 %60, 0
  br i1 %tobool70.not, label %if.end72, label %if.end66.out_crit_edge

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end72:                                         ; preds = %if.end66
  %61 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %62)
  %cmp75 = icmp eq i16 %62, 1
  br i1 %cmp75, label %land.lhs.true77, label %if.end72.if.end87_crit_edge

if.end72.if.end87_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

land.lhs.true77:                                  ; preds = %if.end72
  %63 = ptrtoint ptr %skc_state44 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load volatile i8, ptr %skc_state44, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %64)
  %cmp81 = icmp eq i8 %64, 7
  br i1 %cmp81, label %if.then83, label %land.lhs.true77.if.end87_crit_edge

land.lhs.true77.if.end87_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then83:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %19, align 4
  %67 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.i281.not = icmp eq i32 %67, 0
  %. = select i1 %tobool.i281.not, i32 -107, i32 0
  br label %out

if.end87:                                         ; preds = %land.lhs.true77.if.end87_crit_edge, %if.end72.if.end87_crit_edge
  %68 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool88.not = icmp eq i32 %69, 0
  br i1 %tobool88.not, label %if.end87.out_crit_edge, label %if.end87.if.end91_crit_edge

if.end87.if.end91_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.end87.out_crit_edge:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end91:                                         ; preds = %if.end87.if.end91_crit_edge, %lor.lhs.false52.if.end91_crit_edge
  br i1 %cmp31.not, label %if.else95, label %if.then94

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  call void @release_sock(ptr noundef %3) #11
  call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #11
  br label %if.end97

if.else95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %call96 = call i32 @sk_wait_data(ptr noundef %3, ptr noundef nonnull %timeo, ptr noundef null) #11
  br label %if.end97

if.end97:                                         ; preds = %if.else95, %if.then94
  br i1 %tobool10.not, label %if.end97.do.cond167_crit_edge, label %land.lhs.true100

if.end97.do.cond167_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond167

land.lhs.true100:                                 ; preds = %if.end97
  %70 = ptrtoint ptr %peek_seq to i32
  call void @__asan_load4_noabort(i32 %70)
  %peek_seq.0.peek_seq.0.peek_seq.0. = load i32, ptr %peek_seq, align 4
  %71 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %copied_seq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %peek_seq.0.peek_seq.0.peek_seq.0., i32 %72)
  %cmp102.not = icmp eq i32 %peek_seq.0.peek_seq.0.peek_seq.0., %72
  br i1 %cmp102.not, label %land.lhs.true100.do.cond167_crit_edge, label %do.body105

land.lhs.true100.do.cond167_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond167

do.body105:                                       ; preds = %land.lhs.true100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_ui_recvmsg.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_ui_recvmsg, %land.lhs.true115)) #11
          to label %do.end126 [label %land.lhs.true115], !srcloc !96

land.lhs.true115:                                 ; preds = %do.body105
  %call116 = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %land.lhs.true115.do.end126_crit_edge, label %if.then118

land.lhs.true115.do.end126_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end126

if.then118:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 68
  %75 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_ui_recvmsg.descriptor, ptr noundef nonnull @.str.15, ptr noundef %comm, i32 noundef %76) #11
  br label %do.end126

do.end126:                                        ; preds = %if.then118, %land.lhs.true115.do.end126_crit_edge, %do.body105
  %77 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %copied_seq, align 8
  %79 = ptrtoint ptr %peek_seq to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %peek_seq, align 4
  br label %do.cond167

if.then137:                                       ; preds = %if.then29
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %34, i32 noundef %36, ptr noundef %msg_iter.i, i32 noundef %39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool139.not = icmp eq i32 %call.i, 0
  br i1 %tobool139.not, label %if.then137.if.end145_crit_edge, label %out.loopexit.split.loop.exit336

if.then137.if.end145_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.end145:                                        ; preds = %if.then137.if.end145_crit_edge, %if.then29.if.end145_crit_edge
  %80 = ptrtoint ptr %seq.0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %seq.0, align 4
  %add = add i32 %81, %39
  store i32 %add, ptr %seq.0, align 4
  %add146 = add i32 %39, %copied.0
  %sub147 = sub i32 %len.addr.0, %39
  %82 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %83)
  %cmp150.not = icmp eq i16 %83, 1
  br i1 %cmp150.not, label %if.end153, label %copy_uaddr

if.end153:                                        ; preds = %if.end145
  br i1 %tobool10.not, label %if.then156, label %if.end153.do.cond167_crit_edge

if.end153.do.cond167_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond167

if.then156:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_unlink(ptr noundef nonnull %34, ptr noundef %sk_receive_queue) #11
  call void @kfree_skb_reason(ptr noundef nonnull %34, i32 noundef 0) #11
  %84 = ptrtoint ptr %seq.0 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %seq.0, align 4
  br label %do.cond167

do.cond167:                                       ; preds = %if.then156, %if.end153.do.cond167_crit_edge, %do.end126, %land.lhs.true100.do.cond167_crit_edge, %if.end97.do.cond167_crit_edge
  %len.addr.1301 = phi i32 [ %len.addr.0, %if.end97.do.cond167_crit_edge ], [ %len.addr.0, %land.lhs.true100.do.cond167_crit_edge ], [ %len.addr.0, %do.end126 ], [ %sub147, %if.then156 ], [ %sub147, %if.end153.do.cond167_crit_edge ]
  %copied.3299 = phi i32 [ %copied.0, %if.end97.do.cond167_crit_edge ], [ %copied.0, %land.lhs.true100.do.cond167_crit_edge ], [ %copied.0, %do.end126 ], [ %add146, %if.then156 ], [ %add146, %if.end153.do.cond167_crit_edge ]
  %cmp168.not = icmp eq i32 %len.addr.1301, 0
  br i1 %cmp168.not, label %do.cond167.out_crit_edge, label %do.cond167.do.body16_crit_edge

do.cond167.do.body16_crit_edge:                   ; preds = %do.cond167
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.cond167.out_crit_edge:                         ; preds = %do.cond167
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out.loopexit.split.loop.exit336:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool141.not.le = icmp eq i32 %copied.0, 0
  %spec.store.select.le = select i1 %tobool141.not.le, i32 -14, i32 %copied.0
  br label %out

out:                                              ; preds = %if.then184, %if.end181.out_crit_edge, %out.loopexit.split.loop.exit336, %do.cond167.out_crit_edge, %if.end87.out_crit_edge, %if.then83, %if.end66.out_crit_edge, %sock_error.exit, %if.else.out_crit_edge, %lor.lhs.false52.out_crit_edge, %lor.lhs.false48.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then41.out_crit_edge, %do.end35.out_crit_edge, %cond.true, %if.end23.out_crit_edge, %if.then20.out_crit_edge, %land.rhs.out_crit_edge
  %copied.4 = phi i32 [ -107, %land.rhs.out_crit_edge ], [ %add146, %if.end181.out_crit_edge ], [ %add146, %if.then184 ], [ %., %if.then83 ], [ -11, %if.end23.out_crit_edge ], [ %cond.i276, %cond.true ], [ %copied.0, %if.then20.out_crit_edge ], [ %sub.i, %sock_error.exit ], [ %spec.store.select.le, %out.loopexit.split.loop.exit336 ], [ %copied.3299, %do.cond167.out_crit_edge ], [ %copied.0, %do.end35.out_crit_edge ], [ %copied.0, %lor.lhs.false52.out_crit_edge ], [ %copied.0, %lor.lhs.false48.out_crit_edge ], [ %copied.0, %lor.lhs.false.out_crit_edge ], [ %copied.0, %if.then41.out_crit_edge ], [ 0, %if.else.out_crit_edge ], [ 0, %if.end66.out_crit_edge ], [ -11, %if.end87.out_crit_edge ]
  call void @release_sock(ptr noundef %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %peek_seq)
  ret i32 %copied.4

copy_uaddr:                                       ; preds = %if.end145
  %cmp171.not = icmp eq ptr %1, null
  br i1 %cmp171.not, label %copy_uaddr.if.end177_crit_edge, label %if.then176

copy_uaddr.if.end177_crit_edge:                   ; preds = %copy_uaddr
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

if.then176:                                       ; preds = %copy_uaddr
  call void @__sanitizer_cov_trace_pc() #13
  %cb = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3
  %85 = call ptr @memcpy(ptr %1, ptr %cb, i32 16)
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %86 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 16, ptr %msg_namelen, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %copy_uaddr.if.end177_crit_edge
  %cmsg_flags = getelementptr inbounds %struct.llc_sock, ptr %3, i32 0, i32 40
  %87 = ptrtoint ptr %cmsg_flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cmsg_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool179.not = icmp eq i32 %88, 0
  br i1 %tobool179.not, label %if.end177.if.end181_crit_edge, label %if.then180

if.end177.if.end181_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.then180:                                       ; preds = %if.end177
  %89 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %cmsg_flags.i = getelementptr inbounds %struct.llc_sock, ptr %91, i32 0, i32 40
  %92 = ptrtoint ptr %cmsg_flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cmsg_flags.i, align 4
  %and.i282 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i282)
  %tobool.not.i283 = icmp eq i32 %and.i282, 0
  br i1 %tobool.not.i283, label %if.then180.if.end181_crit_edge, label %if.then.i

if.then180.if.end181_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.then.i:                                        ; preds = %if.then180
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info.i) #11
  %94 = getelementptr inbounds i8, ptr %info.i, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 0, ptr %94, align 4
  %dev.i = getelementptr inbounds %struct.llc_sock, ptr %91, i32 0, i32 6
  %96 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 17
  %98 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ifindex.i, align 4
  %100 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %info.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 18
  %101 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 15, i32 0, i32 20
  %103 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %104 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %102, i32 %conv.i.i.i.i
  %105 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %107 = and i8 %106, -2
  store i8 %107, ptr %94, align 4
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 15, i32 0, i32 18
  %108 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %109)
  %cmp.i.i = icmp eq i16 %109, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.llc_pdu_decode_da.exit.i_crit_edge

if.then.i.llc_pdu_decode_da.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_pdu_decode_da.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %lpi_mac.i = getelementptr inbounds %struct.llc_pktinfo, ptr %info.i, i32 0, i32 2
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 15, i32 0, i32 21
  %110 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i7.i = zext i16 %111 to i32
  %add.ptr.i.i.i8.i = getelementptr i8, ptr %102, i32 %conv.i.i.i7.i
  %112 = call ptr @memcpy(ptr %lpi_mac.i, ptr %add.ptr.i.i.i8.i, i32 6)
  br label %llc_pdu_decode_da.exit.i

llc_pdu_decode_da.exit.i:                         ; preds = %if.then.i.i, %if.then.i.llc_pdu_decode_da.exit.i_crit_edge
  %call2.i = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 268, i32 noundef 9, i32 noundef 12, ptr noundef nonnull %info.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info.i) #11
  br label %if.end181

if.end181:                                        ; preds = %llc_pdu_decode_da.exit.i, %if.then180.if.end181_crit_edge, %if.end177.if.end181_crit_edge
  br i1 %tobool10.not, label %if.then184, label %if.end181.out_crit_edge

if.end181.out_crit_edge:                          ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then184:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_unlink(ptr noundef nonnull %34, ptr noundef %sk_receive_queue) #11
  call void @kfree_skb_reason(ptr noundef nonnull %34, i32 noundef 0) #11
  %113 = ptrtoint ptr %seq.0 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %seq.0, align 4
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_send_disc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llc_ui_wait_for_disc(ptr noundef %sk, i32 noundef %timeout) unnamed_addr #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !63) #11
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
  %13 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  call void @add_wait_queue(ptr noundef %15, ptr noundef nonnull %wait) #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end22.while.cond_crit_edge, %entry
  %timeout.addr.0 = phi i32 [ %timeout, %entry ], [ %timeout.addr.1, %if.end22.while.cond_crit_edge ]
  call void @release_sock(ptr noundef %sk) #11
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %17)
  %cmp = icmp eq i8 %17, 7
  br i1 %cmp, label %while.cond.if.end_crit_edge, label %if.then

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeout.addr.0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %while.cond.if.end_crit_edge
  %timeout.addr.1 = phi i32 [ %timeout.addr.0, %while.cond.if.end_crit_edge ], [ %call6, %if.then ]
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #11
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp12 = icmp eq i8 %22, 7
  br i1 %cmp12, label %if.end.while.end_crit_edge, label %if.end16

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end16:                                         ; preds = %if.end
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stack.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end16.while.end_crit_edge, !prof !73

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

signal_pending.exit:                              ; preds = %if.end16
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %and1.i.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool20.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool20.not, label %if.end22, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end22:                                         ; preds = %signal_pending.exit
  %tobool23.not = icmp eq i32 %timeout.addr.1, 0
  br i1 %tobool23.not, label %if.end22.while.end_crit_edge, label %if.end22.while.cond_crit_edge

if.end22.while.cond_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end16.while.end_crit_edge, %if.end.while.end_crit_edge
  %rc.1 = phi i32 [ 0, %if.end.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -11, %if.end22.while.end_crit_edge ], [ -512, %if.end16.while.end_crit_edge ]
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %13, align 8
  call void @remove_wait_queue(ptr noundef %33, ptr noundef nonnull %wait) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sap_remove_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sap_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_getbyhwaddr_rcu(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llc_ui_autoport() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.pr = load i16, ptr @llc_ui_sap_last_autoport, align 2
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %entry
  %0 = phi i16 [ %.pr, %entry ], [ 192, %for.end.while.body_crit_edge ]
  %tries.015 = phi i32 [ 0, %entry ], [ %inc, %for.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 222, i16 %0)
  %cmp113 = icmp ult i16 %0, 222
  br i1 %cmp113, label %for.body.preheader, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %while.body
  %conv = zext i16 %0 to i32
  br label %for.body

for.body:                                         ; preds = %llc_sap_put.exit.for.body_crit_edge, %for.body.preheader
  %i.014 = phi i32 [ %add5, %llc_sap_put.exit.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %conv3 = trunc i32 %i.014 to i8
  %call = tail call ptr @llc_sap_find(i8 noundef zeroext %conv3) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %1 = trunc i32 %i.014 to i16
  %conv4 = add nuw nsw i16 %1, 2
  store i16 %conv4, ptr @llc_ui_sap_last_autoport, align 2
  br label %out

if.end:                                           ; preds = %for.body
  %refcnt.i = getelementptr inbounds %struct.llc_sap, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.llc_sap_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end5.i.i.i.i.llc_sap_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_sap_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %llc_sap_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  tail call void @llc_sap_close(ptr noundef nonnull %call) #11
  br label %llc_sap_put.exit

llc_sap_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.llc_sap_put.exit_crit_edge
  %add5 = add nuw nsw i32 %i.014, 2
  %cmp1 = icmp ult i32 %i.014, 220
  br i1 %cmp1, label %llc_sap_put.exit.for.body_crit_edge, label %llc_sap_put.exit.for.end_crit_edge

llc_sap_put.exit.for.end_crit_edge:               ; preds = %llc_sap_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

llc_sap_put.exit.for.body_crit_edge:              ; preds = %llc_sap_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %llc_sap_put.exit.for.end_crit_edge, %while.body.for.end_crit_edge
  store i16 192, ptr @llc_ui_sap_last_autoport, align 2
  %inc = add nuw nsw i32 %tries.015, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end.out_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.end.out_crit_edge, %if.then
  %i.1 = phi i32 [ %i.014, %if.then ], [ 0, %for.end.out_crit_edge ]
  ret i32 %i.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_sap_find(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_sap_open(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_lookup_established(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sap_add_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llc_ui_autobind(ptr nocapture noundef readonly %sock, ptr nocapture noundef %addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %sllc_arphrd = getelementptr inbounds %struct.sockaddr_llc, ptr %addr, i32 0, i32 1
  %6 = ptrtoint ptr %sllc_arphrd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sllc_arphrd, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %7, label %if.end.out_crit_edge [
    i16 0, label %if.end5.thread
    i16 1, label %if.end.if.end9_crit_edge
  ]

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %sllc_arphrd to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %sllc_arphrd, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.end5.thread, %if.end.if.end9_crit_edge
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call14 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %11) #11
  %dev = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14, ptr %dev, align 8
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.then11.if.end30_crit_edge, label %land.lhs.true

if.then11.if.end30_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true:                                    ; preds = %if.then11
  %13 = ptrtoint ptr %sllc_arphrd to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sllc_arphrd, align 2
  %type = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 32
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp21.not = icmp eq i16 %14, %16
  br i1 %cmp21.not, label %land.lhs.true.if.end30_crit_edge, label %do.body1.i

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

do.body1.i:                                       ; preds = %land.lhs.true
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 118
  %18 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcpu_refcnt.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %26, %20
  %27 = inttoptr i32 %add.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add13.i = add i32 %29, -1
  store i32 %add13.i, ptr %27, align 4
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !75

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #11, !srcloc !82
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %dev, align 8
  br label %if.end30

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call ptr @dev_getfirstbyhwtype(ptr noundef nonnull @init_net, i16 noundef zeroext 1) #11
  %dev29 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %dev29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call28, ptr %dev29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %dev_put.exit, %land.lhs.true.if.end30_crit_edge, %if.then11.if.end30_crit_edge
  %dev31 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev31, align 8
  %tobool32.not = icmp eq ptr %34, null
  br i1 %tobool32.not, label %if.end30.out_crit_edge, label %if.end34

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end34:                                         ; preds = %if.end30
  %dev_tracker = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 7
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 119
  %call.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %dev_tracker, i32 noundef 3264) #11
  %call36 = tail call fastcc i32 @llc_ui_autoport()
  %conv37 = trunc i32 %call36 to i8
  %laddr = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv37, ptr %laddr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv37)
  %tobool40.not = icmp eq i8 %conv37, 0
  br i1 %tobool40.not, label %if.end34.out_crit_edge, label %if.end42

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end42:                                         ; preds = %if.end34
  %call45 = tail call ptr @llc_sap_open(i8 noundef zeroext %conv37, ptr noundef null) #11
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end42.out_crit_edge, label %if.end48

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %mac = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev31, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr, align 64
  %40 = call ptr @memcpy(ptr %mac, ptr %39, i32 6)
  %addr51 = getelementptr inbounds %struct.llc_sock, ptr %1, i32 0, i32 1
  %41 = call ptr @memcpy(ptr %addr51, ptr %addr, i32 16)
  tail call void @llc_sap_add_socket(ptr noundef nonnull %call45, ptr noundef %1) #11
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %2, align 4
  %and.i.i78 = and i32 %43, -257
  store i32 %and.i.i78, ptr %2, align 4
  br label %out

out:                                              ; preds = %if.end48, %if.end42.out_crit_edge, %if.end34.out_crit_edge, %if.end30.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end48 ], [ -16, %if.end42.out_crit_edge ], [ -87, %if.end34.out_crit_edge ], [ -19, %if.end30.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_establish_connection(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_getfirstbyhwtype(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_wait_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_build_and_send_ui_pkt(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_build_and_send_test_pkt(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_build_and_send_xid_pkt(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llc_ui_send_data(ptr noundef %sk, ptr noundef %skb, i32 noundef %noblock) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  %call1 = tail call zeroext i8 @llc_data_accept_state(i8 noundef zeroext %1) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1)
  %tobool.not = icmp eq i8 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge, !prof !73

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  %2 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %remote_busy_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.rhs, label %lor.lhs.false.if.then_crit_edge, !prof !73

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.rhs:                                          ; preds = %lor.lhs.false
  %p_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %4 = ptrtoint ptr %p_flag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %lor.rhs.if.end14_crit_edge, label %lor.rhs.if.then_crit_edge, !prof !73

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.rhs.if.end14_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %noblock)
  %tobool8.not = icmp eq i32 %noblock, 0
  br i1 %tobool8.not, label %cond.false.i, label %if.then.sock_sndtimeo.exit_crit_edge

if.then.sock_sndtimeo.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %6 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.then.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %7, %cond.false.i ], [ 0, %if.then.sock_sndtimeo.exit_crit_edge ]
  %call10 = tail call fastcc i32 @llc_ui_wait_for_busy_core(ptr noundef %sk, i32 noundef %cond.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %sock_sndtimeo.exit.if.end14_crit_edge, label %if.then12

sock_sndtimeo.exit.if.end14_crit_edge:            ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup16

if.end14:                                         ; preds = %sock_sndtimeo.exit.if.end14_crit_edge, %lor.rhs.if.end14_crit_edge
  %call15 = tail call i32 @llc_build_and_send_pkt(ptr noundef %sk, ptr noundef %skb) #11
  br label %cleanup16

cleanup16:                                        ; preds = %if.end14, %if.then12
  %retval.1 = phi i32 [ %call15, %if.end14 ], [ %call10, %if.then12 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @llc_data_accept_state(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llc_ui_wait_for_busy_core(ptr noundef %sk, i32 noundef %timeout) unnamed_addr #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !63) #11
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
  %13 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  call void @add_wait_queue(ptr noundef %15, ptr noundef nonnull %wait) #11
  %p_flag26 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %state = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  br label %while.cond

while.cond:                                       ; preds = %if.end40.while.cond_crit_edge, %entry
  %timeout.addr.0 = phi i32 [ %timeout, %entry ], [ %timeout.addr.1, %if.end40.while.cond_crit_edge ]
  call void @release_sock(ptr noundef %sk) #11
  %16 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sk_shutdown, align 2
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %lor.rhs, label %while.cond.if.end_crit_edge

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.rhs:                                          ; preds = %while.cond
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %state, align 8
  %call6 = call zeroext i8 @llc_data_accept_state(i8 noundef zeroext %20) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call6)
  %tobool7.not = icmp eq i8 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %lor.rhs.if.then_crit_edge

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true:                                    ; preds = %lor.rhs
  %21 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %remote_busy_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool8.not = icmp eq i8 %22, 0
  br i1 %tobool8.not, label %land.rhs, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.rhs:                                         ; preds = %land.lhs.true
  %23 = ptrtoint ptr %p_flag26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %p_flag26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not = icmp eq i8 %24, 0
  br i1 %tobool9.not, label %land.rhs.if.end_crit_edge, label %land.rhs.if.then_crit_edge

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.rhs.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %lor.rhs.if.then_crit_edge
  %call11 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeout.addr.0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %while.cond.if.end_crit_edge
  %timeout.addr.1 = phi i32 [ %timeout.addr.0, %land.rhs.if.end_crit_edge ], [ %call11, %if.then ], [ %timeout.addr.0, %while.cond.if.end_crit_edge ]
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #11
  %28 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sk_shutdown, align 2
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not = icmp eq i8 %30, 0
  br i1 %tobool17.not, label %lor.rhs18, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

lor.rhs18:                                        ; preds = %if.end
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %state, align 8
  %call20 = call zeroext i8 @llc_data_accept_state(i8 noundef zeroext %32) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20)
  %tobool21.not = icmp eq i8 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %lor.rhs18.if.end34_crit_edge

lor.rhs18.if.end34_crit_edge:                     ; preds = %lor.rhs18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true22:                                  ; preds = %lor.rhs18
  %33 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %remote_busy_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool24.not = icmp eq i8 %34, 0
  br i1 %tobool24.not, label %land.rhs25, label %land.lhs.true22.if.end34_crit_edge

land.lhs.true22.if.end34_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.rhs25:                                       ; preds = %land.lhs.true22
  %35 = ptrtoint ptr %p_flag26 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %p_flag26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool27.not = icmp eq i8 %36, 0
  br i1 %tobool27.not, label %land.rhs25.while.end_crit_edge, label %land.rhs25.if.end34_crit_edge

land.rhs25.if.end34_crit_edge:                    ; preds = %land.rhs25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.rhs25.while.end_crit_edge:                   ; preds = %land.rhs25
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end34:                                         ; preds = %land.rhs25.if.end34_crit_edge, %land.lhs.true22.if.end34_crit_edge, %lor.rhs18.if.end34_crit_edge
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stack.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end34.while.end_crit_edge, !prof !73

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

signal_pending.exit:                              ; preds = %if.end34
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %40, align 4
  %and1.i.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool38.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool38.not, label %if.end40, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end40:                                         ; preds = %signal_pending.exit
  %tobool41.not = icmp eq i32 %timeout.addr.1, 0
  br i1 %tobool41.not, label %if.end40.while.end_crit_edge, label %if.end40.while.cond_crit_edge

if.end40.while.cond_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end34.while.end_crit_edge, %land.rhs25.while.end_crit_edge, %if.end.while.end_crit_edge
  %rc.0 = phi i32 [ 0, %land.rhs25.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -11, %if.end40.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ], [ -512, %if.end34.while.end_crit_edge ]
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %13, align 8
  call void @remove_wait_queue(ptr noundef %47, ptr noundef nonnull %wait) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_build_and_send_pkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !49, !50, !52, !54, !56, !58, !59, !60, !61}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_llc2__462_1276_llc2_init6, !1, !"__initcall__kmod_llc2__462_1276_llc2_init6", i1 false, i1 false}
!1 = !{!"../net/llc/af_llc.c", i32 1276, i32 1}
!2 = !{ptr @__exitcall_llc2_exit, !3, !"__exitcall_llc2_exit", i1 false, i1 false}
!3 = !{!"../net/llc/af_llc.c", i32 1277, i32 1}
!4 = !{ptr @__UNIQUE_ID_file463, !5, !"__UNIQUE_ID_file463", i1 false, i1 false}
!5 = !{!"../net/llc/af_llc.c", i32 1279, i32 1}
!6 = !{ptr @__UNIQUE_ID_license464, !5, !"__UNIQUE_ID_license464", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author465, !8, !"__UNIQUE_ID_author465", i1 false, i1 false}
!8 = !{!"../net/llc/af_llc.c", i32 1280, i32 1}
!9 = !{ptr @__UNIQUE_ID_description466, !10, !"__UNIQUE_ID_description466", i1 false, i1 false}
!10 = !{!"../net/llc/af_llc.c", i32 1281, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias467, !12, !"__UNIQUE_ID_alias467", i1 false, i1 false}
!12 = !{!"../net/llc/af_llc.c", i32 1282, i32 1}
!13 = !{ptr @llc_proto, !14, !"llc_proto", i1 false, i1 false}
!14 = !{!"../net/llc/af_llc.c", i32 153, i32 21}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/llc/af_llc.c", i32 1238, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @llc2_init._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @llc2_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @llc2_init._entry.2, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../net/llc/af_llc.c", i32 1243, i32 3}
!22 = !{ptr @llc2_init._entry_ptr.3, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @llc2_init._entry.4, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../net/llc/af_llc.c", i32 1248, i32 3}
!25 = !{ptr @llc2_init._entry_ptr.5, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @llc_ui_sap_last_autoport, !27, !"llc_ui_sap_last_autoport", i1 false, i1 false}
!27 = !{!"../net/llc/af_llc.c", i32 38, i32 12}
!28 = !{ptr @llc_proc_err_msg, !29, !"llc_proc_err_msg", i1 false, i1 false}
!29 = !{!"../net/llc/af_llc.c", i32 1219, i32 19}
!30 = !{ptr @llc_sysctl_err_msg, !31, !"llc_sysctl_err_msg", i1 false, i1 false}
!31 = !{!"../net/llc/af_llc.c", i32 1221, i32 19}
!32 = !{ptr @llc_ui_family_ops, !33, !"llc_ui_family_ops", i1 false, i1 false}
!33 = !{!"../net/llc/af_llc.c", i32 1192, i32 38}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/net/sock.h", i32 2024, i32 2}
!36 = !{ptr @llc_ui_ops, !37, !"llc_ui_ops", i1 false, i1 false}
!37 = !{!"../net/llc/af_llc.c", i32 1198, i32 31}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @llc_ui_sap_link_no_max, !46, !"llc_ui_sap_link_no_max", i1 false, i1 false}
!46 = !{!"../net/llc/af_llc.c", i32 39, i32 12}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!49 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!54 = !{ptr @llc_ui_addrnull, !55, !"llc_ui_addrnull", i1 false, i1 false}
!55 = !{!"../net/llc/af_llc.c", i32 40, i32 28}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/llc/af_llc.c", i32 839, i32 4}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @llc_ui_recvmsg.descriptor, !57, !"descriptor", i1 false, i1 false}
!61 = !{ptr @llc_sock_err_msg, !62, !"llc_sock_err_msg", i1 false, i1 false}
!62 = !{!"../net/llc/af_llc.c", i32 1223, i32 19}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2156842857}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2148241950, i64 2148241982, i64 2148242011, i64 2148242045, i64 2148242076, i64 2148242099}
!77 = !{i64 2148329951}
!78 = !{i64 2148244415, i64 2148244447, i64 2148244476, i64 2148244510, i64 2148244541, i64 2148244564}
!79 = !{i64 2149336399}
!80 = !{i64 632901, i64 632962}
!81 = !{i64 635633}
!82 = !{i64 635918}
!83 = !{i64 2149386889}
!84 = !{i64 2149387155}
!85 = !{i64 2156899640}
!86 = !{i64 747188, i64 747205, i64 747229, i64 747255, i64 747273}
!87 = !{i64 2156899983}
!88 = !{!"auto-init"}
!89 = !{i64 2153091175, i64 2153091200}
!90 = !{i64 5586730}
!91 = !{i64 5586927}
!92 = !{i64 2153072160}
!93 = !{i64 2156981211, i64 2156981491, i64 2156981825, i64 2156982159}
!94 = !{i64 2156990738, i64 2156991018, i64 2156991352, i64 2156991686}
!95 = !{i64 2153091856, i64 2153091881}
!96 = !{i64 2148722235, i64 2148722240, i64 2148722253, i64 2148722297, i64 2148722331, i64 2148722352}
